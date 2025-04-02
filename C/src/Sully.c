#define _GNU_SOURCE
#define STR "#define _GNU_SOURCE%1$c#include <stdio.h>%1$c#include <unistd.h>%1$c"\
"#include <stdlib.h>%1$c#define STR %5$c%4$s%5$c %1$c"\
"%1$cint main()%1$c{%1$c%3$cint i = %2$d;%1$c%3$cif (i == 0)"\
"%1$c%3$c%3$creturn 0;%1$c%3$cchar *filename;i--;"\
"%1$c%3$cchar *cmd;%1$c%3$casprintf(&filename, %5$cSully_%%d.c%5$c, i);"\
"%1$c%3$cFILE * tmpname = fopen(filename, %5$cw%5$c);"\
"%1$c%3$cfprintf(tmpname, STR,10,i , 9, STR, 34, 38);%1$c%3$c"\
"%1$c%3$casprintf(&cmd, %5$ccc -Wall -Wextra -Werror Sully_%%d.c -o Sully_%%d && ./Sully_%%d  %6$c%5$c, i ,i , i);"\
"%1$c%3$csystem(cmd);%1$c}"

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>

int main()
{
	int i = 20;
	if (i == 0)
		return 0;
	char *filename;
	char *cmd;
	printf("sully %d 1\n", i);
	// printf("1\n");
	asprintf(&filename, "Sully_%d.c", i);
	// printf("2\n");
	printf("STR = [%s]\n", STR);
	FILE * tmpname = fopen(filename, "w");
	fprintf(tmpname, STR,10,i, 9, STR, 34, 38);
	printf("3\n");
	asprintf(&cmd, "gcc -Wall -Wextra -Werror Sully_%d.c -o Sully_%d && ./Sully_%d &", i,i ,i);
	printf("cmd = %s\n", cmd);
	system(cmd);


}