import std.stdio;

int main(){

	auto items = [10,20,30,40,50];

	writeln("for: ");
	for(int i=0; i<items.length; ++i)
		writeln(items[i]);
	
	writeln("while:");
	int k = 0;
	while(k < items.length)
		writeln(items[k++]);
	
	writeln("do while: ");
	k = 0;
	do {
		writeln(items[k++]);
	} while(k < items.length);

	writeln("usando EXIT_LOOPS");
	auto array = [10,20,30,40,50];
	EXIT_LOOPS: for(int i=0; i<array.length; ++i) {
		for(int j=array.length - 1; j>=0; --j) {
			auto val = array[i] + array[j];
			if(val == 100) break EXIT_LOOPS;
			writeln(val);
		}
	}


	writeln("foreach");
	foreach(elem; items)
		writeln(elem);

	foreach(ref elem; items)
		elem += 10;
	
	auto aa = ["One":1, "Two":2, "Three":3];
	foreach(key,val; aa)
		writefln("%s = %s", key, val);


	string isFour = (2 + 2 == 4) ? "It's a 4!" : "It's not a 4!";
	writeln(isFour);

	//volvieron los gotos!!!
	writeln("regresaron los gotos!!!");
	int x;
	INC: writeln(x++);
	if( x < 10) goto INC;

	return 0;
}