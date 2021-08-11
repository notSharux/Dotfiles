//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"   ", "/home/tobi/.config/dwmblocks/memory_gb",	5,		1},

	/*	{"", "/home/tobi/.config/dwmblocks/memory_percentage",	5,		0}, */

	{"|   ", "/home/tobi/.config/dwmblocks/cpu_percentage",	2,		1},
	{"|    ", "/home/tobi/.config/dwmblocks/packages",  2,		25},
	{"|     ", "/home/tobi/.config/dwmblocks/pacupdate",  2,		25},

	/*{"", "/home/tobi/.config/dwmblocks/cpu_bars",	2,		0},      */
	/*{"| ",     "/home/mb/.config/dwmblocks/arch_upt",	120,		0},*/

	{"|   ",     "/home/tobi/.config/dwmblocks/kernel",	360,		360},
	{"| ",     "/home/tobi/.config/dwmblocks/clock",	15,		1},
	{" ",     "",	                                 0,		0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " ";
static unsigned int delimLen = 5;
