#include <stdio.h>
#include <fcntl.h>
int main()
{

char lol[] = "sdsd%1$ssdf %3$c fsdfsdfsdfc %4$c %2$c";

FILE * flol = fopen("test.txt", "w");
fprintf(flol, lol, 10, 34, 9);

}
