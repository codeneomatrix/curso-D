import std.stdio;

int main(){
	string s = "soufflé";
	wstring ws = "soufflé"w;
	dstring ds = "soufflé"d;

	auto s1 = " Hi
	I
	am a multi-line
	string";
	writeln(s1);

	auto s2 = "I am" " a string which is"
	" composed of multiple strings"
	" on multiple lines.";

	writeln(s2);

	auto balance = "Hello ընկեր!";
	writeln(balance);

	import std.conv : to;
	int x = 10;
	auto sa = to!string(x);
	writeln(sa);

	writeln(r"I'm a WYSIWYG string'```'\t\n");
	writeln(`me, too!\n\r"'''""`);


	auto aa3 = ["x":22.0, "y":3.0f, "z":5.0f, "w":1.0];
	writeln(aa3["x"]);
	return 0;
}