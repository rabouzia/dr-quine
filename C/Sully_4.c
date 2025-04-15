#define _GNU_SOURCE
#define STR "#define _GNU_SOURCE%1$c#define STR %5$c%4$s%5$c%1$c#include <stdio.h>%1$c#include <unistd.h>%1$c#include <stdlib.h>%1$c#include <fcntl.h>%1$c%1$cint main()%1$c{%1$c%3$cint i = %2$d;%1$c%3$cif (i <= 0)%1$c%3$c%3$creturn 0;%1$c%3$cif (access(%5$cSully_5.c%5$c, R_OK) != -1)%1$c%3$c%3$ci--;%1$c%3$cchar *filename;%1$c%3$cchar *cmd;%1$c%3$casprintf(&filename, %5$cSully_%%d.c%5$c, i);%1$c%3$cFILE * tmpname = fopen(filename, %5$cw%5$c);%1$c%3$cfprintf(tmpname, STR, 10, i, 9, STR, 34, 38);%1$c%3$cfclose(tmpname);%1$c%3$cfree(filename);%1$c%3$casprintf(&cmd, %5$ccc -Wall -Wextra -Werror Sully_%%d.c -o Sully_%%d && ./Sully_%%d %6$c%5$c, i, i, i);%1$c%3$csystem(cmd);%1$c%3$cfree(cmd);%1$c}"
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>

int main()
{
	int i = 4;
	if (i <= 0)
		return 0;
	if (access("Sully_5.c", R_OK) != -1)
		i--;
	char *filename;
	char *cmd;
	asprintf(&filename, "Sully_%d.c", i);
	FILE * tmpname = fopen(filename, "w");
	fprintf(tmpname, STR, 10, i, 9, STR, 34, 38);
	fclose(tmpname);
	free(filename);
	asprintf(&cmd, "cc -Wall -Wextra -Werror Sully_%d.c -o Sully_%d && ./Sully_%d &", i, i, i);
	system(cmd);
	free(cmd);
}