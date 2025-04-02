#include <stdio.h>
#include <stdlib.h>
#define STR "#include <stdio.h>%1$c#include <stdlib.h>%1$c#define STR %5$c%4$s%5$c %1$c%1$cint main()%1$c{%1$c%3$cint i = %2$d;%1$c%3$cif (i == 0)%1$c%3$c%3$creturn 0;%1$c%3$cchar *filename;i--;%1$c%3$cchar *cmd;%1$c%3$casprintf(&filename, %5$cSully_%%d.c%5$c, i);%1$c%3$cFILE * tmpname = fopen(filename, %5$cw%5$c);%1$c%3$cfprintf(filename, STR,10,i , 9, STR, 34);%1$c%3$c%1$c%3$casprintf(&cmd, %5$ccc -Wall -Wextra -Werror Sully_%%d.c -o Sully_%%d && ./Sully_%%d%5$c, i ,i , i);%1$c%3$csystem(cmd);%1$c}" 

int main()
{
	int i = 5;
	if (i == 0)
		return 0;
	char *filename;i--;
	char *cmd;
	asprintf(&filename, "Sully_%d.c", i);
	FILE * tmpname = fopen(filename, "w");
	fprintf(filename, STR,10,i , 9, STR, 34);
	
	asprintf(&cmd, "cc -Wall -Wextra -Werror Sully_%d.c -o Sully_%d && ./Sully_%d", i ,i , i);
	system(cmd);
}