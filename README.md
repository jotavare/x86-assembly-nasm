<p align="center">
	<img src="https://img.shields.io/badge/status-finished-success?color=%2312bab9&style=flat-square"/>
	<img src="https://img.shields.io/github/languages/top/jotavare/x86-assembly-nasm?color=%2312bab9&style=flat-square"/>
	<img src="https://img.shields.io/github/last-commit/jotavare/x86-assembly-nasm?color=%2312bab9&style=flat-square"/>
	<a href='https://www.linkedin.com/in/jotavare' target="_blank"><img alt='Linkedin' src='https://img.shields.io/badge/LinkedIn-blue?style=flat-square'/></a>
</p>

<p align="center">
	<a href="#about">About</a> •
	<a href="#usage">Usage</a> •
	<a href="#contents">Contents</a> •
	<a href="#contributing">Contributing</a> •
	<a href="#license">License</a>
</p>

## ABOUT

Having previously learned `C` and `C++`, I've always been intrigued by `Assembly`.

Here, I will upload my `x86 Assembly` files but, for a clearer and more organized view of my documentation progress, thoughts and references, check my project [documentation](https://jotavare.github.io/x86_assembly_nasm).

A follow-on idea is to redo my [Libft](https://github.com/jotavare/libft), converting its functions from `C` to `x86 Assembly`.

## USAGE

Most files assemble and link on their own. These examples use 32-bit
interrupts, so assemble them as `elf32` and link with `-m elf_i386`:

```bash
nasm -f elf32 source/first_program/first_program.asm -o first_program.o
ld -m elf_i386 first_program.o -o first_program
./first_program
echo $?          # 1, which is the status this example sets on purpose
```

`calling_c_functions` and `passing_data_to_functions_stack` are 32-bit only.
The three projects under `source/building_my_os/` each carry a Makefile that
assembles a flat binary into a floppy image, and need `mtools` and
`dosfstools`.

## CONTENTS

| Directory | What it covers |
| :-- | :-- |
| `first_program` | The smallest working program: write a string, exit cleanly |
| `data_and_memory` | Variables, strings, initialised and uninitialised data |
| `operations` | Arithmetic, comparisons, jumps, loops, shifts, floating point |
| `procedures` | Calling conventions, the stack, and calling into C |
| `file_management` | Opening, reading, writing and seeking |
| `building_my_os` | A bootloader, BIOS printing, and a FAT12 floppy image |

## CONTRIBUTING

This repository holds finished notes and exercises and is not open to changes.

## LICENSE

This project is available under the MIT License. For further details, please refer to the [LICENSE](https://github.com/jotavare/x86-assembly-nasm/blob/main/LICENSE) file.

