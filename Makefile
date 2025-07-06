CXX = g++
CXXFLAGS = -Wall -std=c++20 -IC:/SFML/SFML-3.0.0/include

BIN = main.exe
SRC = src/main.cpp
OBJ = main.o

all: $(BIN)

$(BIN): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $^ -Wl,-subsystem,console -LC:/SFML/SFML-3.0.0/lib -lsfml-graphics -lsfml-window -lsfml-system

main.o: src/main.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

run: main.exe
	@echo "Digitizing..."
	@./main.exe

clean:
	del /Q *.o 2>nul
	del /Q $(BIN) 2>nul
