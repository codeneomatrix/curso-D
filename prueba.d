import std.stdio;


int dato(int x)
	in {
		assert(x>= 1);
	}
	out(result) {
		assert(result > 10);
	}
	body {
		return x+10;
	}

int addInts(int a, int b) { return a + b; }

unittest {
		assert(addInts(10, 1) == 11);
		assert(addInts(int.max, 1) == int.min);
}

void main(){

	//assert(10 == 10);
	//assert(1 > 0, "You've done the impossible!");
	int a= dato(1);
	writeln(a);	
}