This mini project demonstrates how to draw shapes, straight and diagonal lines using **x86 Assembly (real mode)** with BIOS video interrupts (`INT 10h`). Perfect for students and hobbyists exploring low-level graphics programming.

## 📌 What You'll Learn

- How to draw pixels using `AH=0Ch` in mode `0x12` (640x480, 16 colors)
- Drawing:
  - Rectangles
  - Vertical/Horizontal lines
  - Diagonal lines (simple slope-based logic)
- Basic arithmetic: calculating area and perimeter

## 🖥 Requirements

You can run this in:
- [Emu8086](https://emu8086-microprocessor-emulator.en.softonic.com) – easiest way to test
- [DOSBox](https://www.dosbox.com/) + TASM/MASM – more authentic
- Any other real-mode x86 emulator

## 📦 Files

- `x86_assembly_house.asm` – main source code
- `README.md` – this file
