#include <stdio.h>
#include <stdlib.h>

// Fungsi utama SaX
int main(int argc, char *argv[]) {
    if (argc < 2) {
        printf("Usage: sax <program.sx>\n");
        return 1;
    }

    printf("Menjalankan program SaX: %s\n", argv[1]);
    // Di sini bisa diproses lebih lanjut, seperti memparsing dan menjalankan kode SaX
    return 0;
}

