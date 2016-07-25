module mypack.greeting;

public import std.stdio;
/**
The function to which control is passed from DRuntime.
This implementation prints to stdout the command used to execute this 
program. It ignores errors.

*/
void sayHello() {
	writeln("Hello!");
}