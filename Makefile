CC = gcc
CFLAGS = -Isrc/CControl/Sources/Optimization -Isrc/CControl/Headers -lm
SOURCES = src/Main.c src/CControl/Sources/Optimization/linprog.c src/CControl/Sources/Miscellaneous/print.c src/CControl/Sources/LinearAlgebra/tran.c
TARGET = linprog

$(TARGET): $(SOURCES)
	$(CC) $(SOURCES) -o $(TARGET) $(CFLAGS)

clean:
	rm -f $(TARGET)
