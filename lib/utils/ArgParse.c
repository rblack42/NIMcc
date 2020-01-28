// Copyright 2020 Roie R. Black
#include "ArgParse.h"

#include <stdio.h>

int ArgParse(int argc, char *argv[]) {
    int debug = 0;
    int compile_only = 0;
    int error_code = 0;
    char * fname = "";

    for (int i=0; i < argc; i++) {
        if (argv[i][0] == '-') {
	    switch(argv[i][1]) {
	        case 'd':
		    debug = 1;
		    break;
		case 'c':
		    compile_only = 1;
		    break;
		default:
		    error_code = 1;
	    }
	    if (error_code > 0) break;
	} else {
	    fname = argv[i];
    	}
    }
    if (debug) {
        printf("error_code: %d\n", error_code);
	printf("compile_only: %d\n", compile_only);
	printf("file name: %s", fname);
    }
    return 0;
}

