#include <stdio.h>

void called_fct(){}

char *str = "#include <stdio.h>%c%cvoid called_fct(){}%c%cchar *str = %c%s%c;%c%cint main ()%c{%c%cprintf(str,10,10,10,10,34,str,34,10,10,10,10,9,10,9,10,9,10,10,10,10,10);%c%c//comment 1%c%ccalled_fct();%c}%c%c// comment 2%c";

int main ()
{
	printf(str,10,10,10,10,34,str,34,10,10,10,10,9,10,9,10,9,10,10,10,10,10);
	//comment 1
	called_fct();
}

// comment 2
