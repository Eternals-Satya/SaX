# Makefile untuk SaX

# Direktori tujuan instalasi
PREFIX ?= /usr/local

# Tentukan compiler dan opsi build
CC = gcc
CFLAGS = -Wall -O2

# Sumber dan target executable
SRC = src/sax.c
OBJ = $(SRC:.c=.o)
EXEC = sax

# Target utama untuk build
all: $(EXEC)

# Membuat executable SaX dari kode sumber
$(EXEC): $(OBJ)
	$(CC) $(CFLAGS) -o $(EXEC) $(OBJ)

# Instalasi SaX
install: $(EXEC)
	install -D $(EXEC) $(PREFIX)/bin/$(EXEC)

# Instalasi manual modul-modul
install-modules:
	@echo "Menginstal modul SaX..."
	install -m 644 modules/* $(PREFIX)/lib/sax/

# Menghapus file build
clean:
	rm -f $(OBJ) $(EXEC)

# Menyediakan petunjuk penggunaan
help:
	@echo "Perintah yang tersedia:"
	@echo "  make        - Membangun SaX"
	@echo "  make install - Menginstal SaX ke dalam sistem"
	@echo "  make install-modules - Menginstal modul SaX ke dalam sistem"
	@echo "  make clean    - Membersihkan file build"
