// main.c
// Copyright 2020 Roie R. Black

#include <stdio.h>
#include "ArgParse.h"
#include "version.h"

int main(int argc, char *argv[]) {
    int error_code = 0;

    printf("%s", "NIM C Compiler");
    printf(" version %s\n", VERSION);

    error_code = ArgParse(argc, argv);
    if (error_code == 0) {
        printf("%s\n", "processing input file: ");
    }
    return 0;
}

