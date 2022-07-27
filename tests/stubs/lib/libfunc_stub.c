// 1658929735000000000
// Please, do not change the line above

/*
 * This file is automatically generated by UnitTestBot. For further information seehttps://unittestbot.org
 */

#ifdef KLEE_MODE
extern void klee_make_symbolic(void *addr, unsigned long long nbytes, const char *name);
#endif
#include "libfunc_stub.h"

#define NULL ((void*)0)

int libfunc_symbolic[10];
int _libfunc_symbolic[10];
int libfunc(int a) {
    static int firstTimeCall = 1;
    static int cntCall = 0;
    #ifdef KLEE_MODE
        if (firstTimeCall == 1) {
            firstTimeCall = 0;
            klee_make_symbolic(&_libfunc_symbolic, sizeof(_libfunc_symbolic), "_libfunc_symbolic");
            for (int it_1_0 = 0; it_1_0 < 10; it_1_0 ++) {
                klee_prefer_cex(_libfunc_symbolic, _libfunc_symbolic[it_1_0] >= -10  & _libfunc_symbolic[it_1_0] <= 10);
            }
        }
    #endif
    if (cntCall == 10) {
        cntCall--;
    }
    return _libfunc_symbolic[cntCall++];
}


