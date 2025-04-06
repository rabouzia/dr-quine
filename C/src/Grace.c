#include <stdio.h>
#define M(x) int main() { FILE *f=fopen("Grace_kid.c","w");fprintf(f,"#include <stdio.h>\n#define M(x) " x "\n#define X(s) S(s)\n/*\n Comment\n*/\n#define S(s) #s\nM(X(M(x)))"); }
#define X(s) S(s)
/*
 Comment
*/
#define S(s) #s
M(X(M(x)))