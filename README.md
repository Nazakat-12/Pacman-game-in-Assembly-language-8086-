# Pacman-game-in-Assembly-language-8086-
# Pac-Man Coal Project

Welcome to the **Pac-Man Coal Project**, an assembly language implementation of the classic Pac-Man game! This project is a maze game where players navigate Pac-Man through a maze, collecting coins, avoiding ghosts, and advancing through levels.

## Features

- **Classic Gameplay**: Navigate through a maze, collect coins, and avoid enemies.
- **Multilevel Design**: Progress through increasingly challenging levels.
- **Dynamic Ghost Movement**: Ghosts pursue the player in real time.
- **Randomized Fruit Positions**: Collect bonus fruits for extra points.
- **High Scores Tracking**: Record and display player high scores.
- **Player Input**: Interactive menu and gameplay controlled via keyboard input.

## Controls

- **`W`**: Move Up
- **`S`**: Move Down
- **`A`**: Move Left
- **`D`**: Move Right
- **`P`**: Pause the game
- **`R`**: Resume the game
- **`X`**: Exit the game

## How to Play

1. **Start the Game**:
   - Run the program and enter your username to begin.
2. **Objective**:
   - Collect all the coins in the maze while avoiding ghosts.
3. **Advance Levels**:
   - Clear all coins in a level to progress to the next.
4. **Lives**:
   - Avoid ghosts to preserve your lives. The game ends when all lives are lost.
5. **Score**:
   - Earn points by collecting coins and bonus fruits.

## Instructions

### Build and Run

1. Install [MASM32 SDK](http://www.masm32.com/) or any assembler that supports Irvine32 library.
2. Ensure the `Irvine32.inc` and required libraries are available in your project directory.
3. Compile and link the `Pacman.asm` file using:
   ```bash
   ml /c /coff Pacman.asm
   link /subsystem:console Pacman.obj Irvine32.lib
