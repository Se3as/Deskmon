# CXX = g++
# CXXFLAGS = -Wall -std=c++20 -IC:/SFML/SFML-3.0.0/include

# BIN = main.exe
# SRC = src/main.cpp
# OBJ = main.o

# all: $(BIN)

# $(BIN): $(OBJ)
# 	$(CXX) $(CXXFLAGS) -o $@ $^ -Wl,-subsystem,console -LC:/SFML/SFML-3.0.0/lib -lsfml-graphics -lsfml-window -lsfml-system

# main.o: src/main.cpp
# 	$(CXX) $(CXXFLAGS) -c $< -o $@

# run: main.exe
# 	@echo "Digitizing..."
# 	@./main.exe

# clean:
# 	del /Q *.o 2>nul
# 	del /Q $(BIN) 2>nul


# VERSION NUEVA ABAJO / VERSION VIEJA ARRIBA


# Compilador y flags
CXX = g++
CXXFLAGS = -Wall -std=c++20 -Iinclude -IC:/SFML/SFML-3.0.0/include

# Directorios
SRC_DIR = src
INC_DIR = include
OBJ_DIR = digiobj
BIN = main.exe

# Encuentra todos los .cpp dentro de src/ y subcarpetas
SRCS := $(wildcard $(SRC_DIR)/**/*.cpp) $(wildcard $(SRC_DIR)/*.cpp)

# Cambia cada .cpp por su .o correspondiente en la carpeta digiobj
OBJS := $(patsubst $(SRC_DIR)/%.cpp,$(OBJ_DIR)/%.o,$(SRCS))

# Regla principal
all: $(BIN)

# Linkeo final
$(BIN): $(OBJS)
	@echo "Linking..."
	$(CXX) $(CXXFLAGS) -o $@ $^ -Wl,-subsystem,console -LC:/SFML/SFML-3.0.0/lib -lsfml-graphics -lsfml-window -lsfml-system

# Compila cada .cpp a .o en digiobj/
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	@if not exist "$(subst /,\,$(dir $@))" mkdir $(subst /,\,$(dir $@))
	$(CXX) $(CXXFLAGS) -c $< -o $@


# Ejecutar
run: $(BIN)
	@echo "Digitizing..."
	@./$(BIN)

# Limpiar
clean:
	del /Q /S $(OBJ_DIR)\*.o 2>nul
	del /Q $(BIN) 2>nul
