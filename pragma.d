version(Windows)
pragma(msg, "We are compiling on Windows.");
else version(OSX)
pragma(msg, "We are compiling on a Mac OS X system.");
else version(Posix)
pragma(msg, "We are compiling on a Posix system.");

void main()
{
	
}