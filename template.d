import std.stdio : writeln;

template MyTemplate(T) {
	T val;
	void printVal() {
		
		writeln("The type is ", typeid(T));
		writeln("The value is ", val);
	}
}

T sum(T)(T lhs, T rhs) {
	return lhs + rhs;
}

mixin template Mixalot() {
	int count = 10;
	int increase(int x) {
		return x + count;
	}
}

void printArgs(T...)() if(T.length != 0) {
	foreach(sym; T)
	writeln(sym.stringof);
}
struct Numbers(T) {
	T[] _values;
	T[] opIndex() {
		return _values[];
	}
}
void main()
{
	MyTemplate!(int).val = 20;
	MyTemplate!int.printVal();
	alias mtf = MyTemplate!float;
	mtf.printVal();

	auto doubles = sum!double(2.0, 3.0);
	auto floats = sum(2.0f, 3.0f);
	writeln(typeid(doubles));
	writeln(typeid(floats));

	int count = 100;
	mixin Mixalot;
	writeln(increase(20));
	writeln(count);

	printArgs!(int, "Pizza!", 5.0, writeln);

	//auto tup2 = tuple!("name", "x", "y")("Position", 3.0f, 2.0f);

	auto nums = Numbers!int([10, 20, 30, 40]);
	foreach(n; nums[]) {
		writeln(n);
	}

}
