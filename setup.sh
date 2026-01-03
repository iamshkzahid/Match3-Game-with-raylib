#!/bin/bash

echo "🎮 Match3 Game Setup"
echo "==================="
echo ""

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "❌ Homebrew is not installed."
    echo "   Please install it from https://brew.sh"
    exit 1
fi

# Check if raylib is installed
if ! brew list raylib &> /dev/null; then
    echo "📦 Installing raylib..."
    brew install raylib
else
    echo "✅ raylib is already installed"
fi

# Build the game
echo ""
echo "🔨 Building the game..."
make clean
make

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Build successful!"
    echo ""
    echo "To run the game:"
    echo "  ./main"
    echo "  or"
    echo "  make run"
else
    echo ""
    echo "❌ Build failed. Please check the error messages above."
    exit 1
fi

