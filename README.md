# Match3 Game with Raylib

A classic Match-3 puzzle game built with C and Raylib.

## Features

- 8x8 game board with colorful ASCII tiles
- Match 3 or more tiles horizontally or vertically
- Score system with animated score popups
- Background music and sound effects
- Smooth tile falling animations
- Visual feedback for matched tiles

## Requirements

- macOS (tested on arm64)
- GCC compiler
- [Raylib](https://www.raylib.com/) library (install via Homebrew: `brew install raylib`)

## Installation

### Clone the repository

```bash
git clone https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
cd YOUR_REPO_NAME
```

### Install dependencies and build

**Option 1: Use the setup script (easiest)**
```bash
./setup.sh
```

**Option 2: Manual setup**
```bash
brew install raylib
make
```

## Building

```bash
make
```

Or build and run in one command:

```bash
make run
```

## Running

```bash
./main
```

Or use the run script:

```bash
./run.sh
```

## Controls

- **Left Click**: Select a tile
- **Left Click (adjacent tile)**: Swap tiles
- **ESC Key**: Quit game
- **Close Window**: Exit game

## Assets

The game requires the following assets in the `assets/` folder:
- `background.jpg` - Background image
- `04b03.ttf` - Font file
- `bgm_old.mp3` - Background music
- `match.mp3` - Match sound effect

## Deployment / Distribution

### Creating a GitHub Release

To distribute your game to others:

1. Build the game: `make`
2. Create a release on GitHub:
   - Go to your repository on GitHub
   - Click "Releases" → "Create a new release"
   - Tag version (e.g., `v1.0.0`)
   - Upload the compiled `main` binary
   - Add release notes
   - Publish

### For Users to Run

Users can either:
- **Option 1**: Clone and build (recommended)
  ```bash
  git clone https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
  cd YOUR_REPO_NAME
  brew install raylib
  make
  ./main
  ```

- **Option 2**: Download pre-built binary from Releases (if you provide one)

## License

This project is open source and available for personal use.

