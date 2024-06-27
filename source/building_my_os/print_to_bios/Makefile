# Assembler
ASM=nasm

# Directories
SRC_DIR=src
BUILD_DIR=build

all: $(BUILD_DIR)/main.img

# A 1440k floppy image holding the flat binary
$(BUILD_DIR)/main.img: $(BUILD_DIR)/main.bin
	cp $(BUILD_DIR)/main.bin $(BUILD_DIR)/main.img
	truncate -s 1440k $(BUILD_DIR)/main.img

# Build
$(BUILD_DIR)/main.bin: $(SRC_DIR)/print_to_bios.asm | $(BUILD_DIR)
	$(ASM) $(SRC_DIR)/print_to_bios.asm -f bin -o $(BUILD_DIR)/main.bin

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all clean
