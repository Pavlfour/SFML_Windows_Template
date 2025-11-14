# === COMPILER ===
CXX := Dependencies/mingw64/bin/x86_64-w64-mingw32-g++.exe

# === DIRECTORIES ===
SRC_DIR := src
INC_DIR := $(SRC_DIR)/headers

# Automatically find all .cpp files in src/
SRCS := $(wildcard $(SRC_DIR)/*.cpp)
OBJS := $(SRCS:.cpp=.o)

# === EXECUTABLE ===
EXE := Main.exe

# === INCLUDES & LIBS ===
INC := -I"Dependencies/SFML-3.0.0/include" -I"$(INC_DIR)"
LIB := -L"Dependencies/SFML-3.0.0/lib"

# === FLAGS ===
CXXFLAGS := -g -DSFML_STATIC -static -static-libgcc -static-libstdc++ -fdiagnostics-color=always $(INC)

# Add this to remove console : -mwindows

LDFLAGS := $(LIB) \
    -lsfml-graphics-s -lsfml-window-s -lsfml-audio-s -lsfml-network-s -lsfml-system-s \
    -lopengl32 -lfreetype -ljpeg -lopenal -lflac -lvorbisenc -lvorbisfile -lvorbis -logg \
    -lwinmm -lgdi32 -ldsound -luser32 -lkernel32 \
	-lws2_32 -lbcrypt -ladvapi32
	

# === BUILD TARGETS ===
all: $(EXE)

$(EXE): $(OBJS)
	$(CXX) $(OBJS) -o $(EXE) $(CXXFLAGS) $(LDFLAGS)
	-del /Q $(SRC_DIR)\*.o 2>nul

$(SRC_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) -c $< -o $@ $(CXXFLAGS)

# === CLEAN ===
clean:
	-del /Q $(SRC_DIR)\*.o 2>nul
	-del /Q $(EXE) 2>nul

rebuild:
	$(MAKE) clean
	$(MAKE) all

run: all
	./$(EXE)