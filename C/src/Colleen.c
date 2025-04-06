#include <stdio.h>

void called_fct(){}

char *str = "#include <stdio.h>%1$c%1$cvoid called_fct(){}%1$c%1$cchar *str = %3$c%4$s%3$c;%1$c%1$cint main ()%1$c{%1$c%2$cprintf(str,10,9,34,str);%1$c%2$c/*%1$c%2$c%2$ccomment in%1$c%2$c*/%1$c%2$ccalled_fct();%1$c}%1$c/*%1$c%2$ccomment out%1$c*/";

int main ()
{
	printf(str,10,9,34,str);
	/*
		comment in
	*/
	called_fct();
}
/*
	comment out
*/