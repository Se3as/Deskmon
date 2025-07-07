# Compilador y flags
CXX = g++
CXXFLAGS = -Wall -std=c++17 -Iinclude -IC:/SFML/SFML-2.6.2/include

# Directorios
SRC_DIR = src
INC_DIR = include
OBJ_DIR = digiobj
BIN = main.exe

# Archivos fuente y objetos
SRCS := $(wildcard $(SRC_DIR)/**/*.cpp) $(wildcard $(SRC_DIR)/*.cpp)
OBJS := $(patsubst $(SRC_DIR)/%.cpp,$(OBJ_DIR)/%.o,$(SRCS))

# Regla principal
all: $(BIN)

# Linkeo final
$(BIN): $(OBJS)
	@echo "Linking..."
	$(CXX) $(CXXFLAGS) -o $@ $^ -Wl,-subsystem,console -LC:/SFML/SFML-2.6.2/lib -lsfml-graphics -lsfml-window -lsfml-system -lgdi32 -luser32

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
