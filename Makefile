CC = gcc
CFLAGS = -I src/dri/ -I src/lib/

SRC_DIR = src
BUILD_DIR = build
TARGET_DIR = bin

SRC_FILES = $(SRC_DIR)/main.c $(SRC_DIR)/dri/driver.c $(SRC_DIR)/lib/math.c $(SRC_DIR)/lib/utils.c
OBJ_FILES = $(patsubst $(SRC_DIR)/%.c, $(BUILD_DIR)/%.o, $(SRC_FILES))
TARGET = $(TARGET_DIR)/main

all: $(TARGET)

$(TARGET): $(OBJ_FILES)
	@mkdir -p $(TARGET_DIR)
	$(CC) $(OBJ_FILES) -o $@

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(dir $@)
	$(CC) -c $< $(CFLAGS) -o $@

run:
	./$(TARGET)

clean:
	rm -rf $(BUILD_DIR)/lib/*.o $(BUILD_DIR)/dri/*.o $(BUILD_DIR)/*.o $(TARGET)
.PHONY: all clean run
