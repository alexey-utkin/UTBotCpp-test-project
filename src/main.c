#include <stdlib.h>
#include "../lib/libfunc.h"



int foo12(int x) {
    return 1/x;
}


int opp(int x) {
    return foo12(x);
}


int main(int argc, char* argv[]) {
    foo12(0);
    if (argc == 2) {
        int k = atoi(argv[1]);
        if (k == 1) {
            return libfunc(k);
        }
    } else {
        return 1;
    }
}
