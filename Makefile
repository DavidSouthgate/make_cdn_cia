CC = gcc
CFLAGS = -O2 -Wall
TARGET = bin/make_cdn_cia
OBJS = chunkio.o cia.o main.o

all: $(TARGET)

$(TARGET): $(OBJS)
	mkdir bin
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -f $(OBJS) $(TARGET)
	rm -f bin
