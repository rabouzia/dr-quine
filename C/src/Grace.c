#include <stdio.h>
#define B(x) int main() { printf("#include <stdio.h>\n#define B(x) " x "\n#define X(s) S(s)\n#define S(s) #s\nB(X(B(x)))"); }
#define X(s) S(s)
#define S(s) #s
B(X(B(x)))