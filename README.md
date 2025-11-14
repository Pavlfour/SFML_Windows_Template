# SFML 3.0.0 Static Template  

A minimal and fully-portable ready-to-use **SFML 3.0.0** project template for windows only using the following MinGW-w64 toolchain:

**GCC 15.2.0 (POSIX threads) + MinGW-w64 13.0.0 (UCRT) – release 3 — Win64**  
(without LLVM/Clang/LLD/LLDB)

This project uses **static linking**, producing a single `Main.exe` with **no DLL dependencies**, ideal for sharing, packaging, game prototypes, or small standalone projects.

---

## ✨ Features
- ✔ **Fully static SFML 3.0.0 build** (no DLLs required)
- ✔ Runs on **any Windows machine** (I hope so!)
- ✔ Includes the entire **MinGW-w64 toolchain**
- ✔ Simple and clean project structure
- ✔ Automatic source detection via Makefile
- ✔ Debug symbols enabled (`-g`)
- ✔ `clean`, `rebuild`, and `run` Makefile targets
- ✔ Optional GUI-only mode (`-mwindows` flag in Makefile)

---

## 📂 Project Structure

```text
project/
│
├── Dependencies/
│   ├── SFML-3.0.0/        # SFML include + static .a libraries
│   └── mingw64/           # MinGW-w64 compiler toolchain
│
├── src/
│   ├── headers/           # Your header files (.hpp/.h)
│   └── *.cpp              # All .cpp files compiled automatically
│
├── Makefile               # Build system
├── build.bat              # Double-click build script
└── Main.exe               # Output executable (after building)
```
---

## 🚀 Building the Project

### **Using the batch file**
Simply double-click:
- `build.bat`

---

## 📦 Additional Static Libraries

The SFML `lib/` folder also includes:
- `libjpeg.a`
- `libopenal.a`

which i found them from msys2 ucrt64 lib

## 🔗 Credits
- https://www.sfml-dev.org
- https://winlibs.com/
- https://www.msys2.org/
