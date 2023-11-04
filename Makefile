# Compiler and compiler options
CC := gcc
CFLAGS := -Wall -Wextra

# Source code files and output binary
SRCS := main.c file1.c file2.c
OBJS := $(SRCS:.c=.o)
TARGET := myprogram

# Targets and rules
all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: all clean
