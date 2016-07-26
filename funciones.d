import std.stdio;

void swap(ref int x, ref int y) {
	auto tmp = x;
	x = y;
	y = tmp;
}

auto inc(int x) { return ++x; }

int main(){

	for(int i=0; i<10; ++i) {
		void innerNumber3() {
			writeln(i);
		}
	innerNumber3();
	}


	auto n1 = 2.inc;
	auto n2 = n1.inc();
	auto n3 = inc(n2);

	writeln("n1: ",n1); 
	writeln("n2: ",n2);
	writeln("n3: ",n3);  

	int x = 10;
	int y = 20;
	swap(x, y);
	writeln(x, ", ", y);

	return 0;
}