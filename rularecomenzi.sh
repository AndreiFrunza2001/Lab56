#!/bin/bash
lex l56.l
bison -d s56.y
gcc -Wall -g lex.yy.c sspascal.tab.c -o rezultat