
CC=gcc # define the compiler to use
TARGET=androfetch # define the name of the executable
SOURCES=androfetch.c

# define list of objects

build:
	$(CC) $(SOURCES) -o $(TARGET)

install:
	$(CC) $(SOURCES) -o $(TARGET)
	cp $(TARGET) /data/data/com.termux/files/usr/bin
	mkdir -p /data/data/com.termux/files/usr/share/androfetch
	cp LICENSE /data/data/com.termux/files/usr/share/androfetch

all: build install

purge: clean
	rm -f $(TARGET)

clean:
	rm -f $(TARGET)

