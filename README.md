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
- **Close Window**: Exit game

## Assets

The game requires the following assets in the `assets/` folder:
- `background.jpg` - Background image
- `04b03.ttf` - Font file
- `bgm_old.mp3` - Background music
- `match.mp3` - Match sound effect

## License

This project is open source and available for personal use.

