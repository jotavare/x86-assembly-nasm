# Compiler
ASM=nasm

# Directories
SRC_DIR=src
BUILD_DIR=build

# Targets
$(BUILD_DIR)/main.img: $(BUILD_DIR)/main.bin
	cp $(BUILD_DIR)/main.bin $(BUILD_DIR)/main.img
	truncrate -s 1440k $(BUILD_DIR)/main.img

# Build
$(BUILD_DIR)/main.bin: $(SRC_DIR)/main.asm
	$(ASM) $(SRC_DIR)/main.asm -f bin -o $(BUILD_DIR)/main.bin