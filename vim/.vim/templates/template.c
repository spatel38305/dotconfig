#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define Red printf( "\033[0;31m" )
#define BoldRed printf( "\033[1;31m" )
#define Green printf( "\033[0;32m" )
#define BoldGreen printf( "\033[1;32m" )
#define Yellow printf( "\033[0;33m" )
#define BoldYellow printf( "\033[1;33m" )
#define Blue printf( "\033[0;34m" )
#define BoldBlue printf( "\033[1;34m" )
#define Magenta printf( "\033[0;35m" )
#define BoldMagenta printf( "\033[1;35m" )
#define Cyan printf( "\033[0;36m" )
#define BoldCyan printf( "\033[1;36m" )
#define White printf( "\033[0m" )

int main( int argc, char *argv[] )
{
	Green;
	printf( "Hello World!\n" );

	return 0;
}
