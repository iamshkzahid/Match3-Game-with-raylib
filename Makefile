CC = gcc
CFLAGS = -Wall -std=c99
LDFLAGS = -framework IOKit -framework Cocoa -framework OpenGL -framework CoreVideo

# Find raylib installation - prefer native arm64 Homebrew
RAYLIB_PATH = $(shell /opt/homebrew/bin/brew --prefix raylib 2>/dev/null || brew --prefix raylib 2>/dev/null || echo "/opt/homebrew/opt/raylib")
INCLUDE_PATH = $(RAYLIB_PATH)/include
LIB_PATH = $(RAYLIB_PATH)/lib

# Verify raylib is found
RAYLIB_CHECK = $(shell test -f $(LIB_PATH)/libraylib.dylib -o -f $(LIB_PATH)/libraylib.a && echo "found" || echo "not found")

# Add include and library paths
CFLAGS += -I$(INCLUDE_PATH)
LDFLAGS += -L$(LIB_PATH) -rpath $(LIB_PATH) -lraylib

TARGET = main
SOURCE = src/main.c

all: $(TARGET)

$(TARGET): $(SOURCE)
	@if [ "$(RAYLIB_CHECK)" != "found" ]; then \
		echo "Error: raylib not found at $(LIB_PATH)"; \
		echo "Please install raylib: brew install raylib"; \
		exit 1; \
	fi
	@echo "Building with raylib from: $(RAYLIB_PATH)"
	@echo "Include path: $(INCLUDE_PATH)"
	@echo "Library path: $(LIB_PATH)"
	$(CC) $(CFLAGS) $(SOURCE) -o $(TARGET) $(LDFLAGS)

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET)

.PHONY: all clean run

