# Match-3 Game (C + raylib)

A classic Match-3 puzzle game written in C using raylib.

A classic **Match-3 puzzle game** written in **C** using the **raylib** graphics and audio library.
The game features smooth tile animations, score effects, background music, and sound effects.

This project includes a **pre-built macOS (Apple Silicon)** release and can also be built from source.

---

## 🎮 Gameplay Overview

* 8×8 grid-based Match-3 board
* Match **3 or more tiles** horizontally or vertically
* Cascading tile fall animations after matches
* Animated score popups and score scaling
* Background music and sound effects
* Mouse-based tile selection and swapping

---

## 🕹️ Controls

* **Left Click** → Select a tile
* **Left Click on adjacent tile** → Swap tiles
* **ESC** → Quit the game
* **Close Window** → Exit

---

## 📦 Download & Run (Recommended)

Go to the **Releases** section of this repository and download:

```
Match3-macOS.zip
```

### Run Instructions

```bash
unzip Match3-macOS.zip
cd Match3-macOS
./match3
```

⚠️ **Platform Support**

* macOS (Apple Silicon / arm64)
* Windows & Linux are **not supported yet**

---

## 🛠️ Build From Source (Developers)

### Requirements

* macOS
* GCC or Clang
* Homebrew
* raylib
* pkg-config

### Install Dependencies

```bash
brew install raylib pkg-config
```

### Build

From the project root directory:

```bash
gcc src/main.c -o match3 \
$(pkg-config --cflags raylib) \
$(pkg-config --libs raylib) \
-framework OpenGL \
-framework Cocoa \
-framework IOKit \
-framework CoreVideo
```

### Run

```bash
./match3
```

---

## 📁 Project Structure

```
Match3-Game-with-raylib/
├── src/
│   └── main.c
├── assets/
│   ├── background.jpg
│   ├── 04b03.ttf
│   ├── bgm_old.mp3
│   └── match.mp3
├── README.md
└── .gitignore
```

---

## 🔊 Assets

The game requires the following files inside the `assets/` directory:

* `background.jpg` — Background image
* `04b03.ttf` — Pixel font
* `bgm_old.mp3` — Background music
* `match.mp3` — Match sound effect

> Asset paths are **relative to the executable’s working directory**.

---

## 🚀 Release Process (Maintainers)

1. Build the executable
2. Create release folder:

   ```bash
   mkdir Match3-macOS
   cp match3 Match3-macOS/
   cp -r assets Match3-macOS/
   ```
3. Zip it:

   ```bash
   zip -r Match3-macOS.zip Match3-macOS
   ```
4. Create a GitHub Release
5. Tag version (example: `v1.0.0`)
6. Upload `Match3-macOS.zip`

---

## 📸 Screenshot

![Match-3 Gameplay](./screenshots/gameplay.png)

---

## 🧩 Known Limitations

* macOS-only (Apple Silicon)
* No Windows/Linux builds yet
* No save/load system
* No settings menu

---

## 🛣️ Roadmap

* Windows build support
* Sound & music toggle
* High-score persistence
* Improved animations
* UI polish

---

## 📄 License

MIT License
Free to use, modify, and distribute with attribution.
