import std.stdio;

union One {
	int a = 10;
	double b;
}

struct MyStruct {
	int a, b;
	int calculate() { return a + b; }
}
class MyClass {
	int a, b;
	int calculate() { return a + b; }
}
void modMS(MyStruct ms1, ref MyStruct ms2, MyStruct* ms3) {
	ms1.a = 1; // Modifies local copy
	ms2.a = 2; // Modifies original
	ms3.a = 3; // Ditto.
}

void modMC(MyClass mc) {
	mc.a = 1; // Modifies original.
}

int main(){
	One o2 = { b:22.0 };


	writeln(o2.b);
	MyStruct ms;
	auto mc = new MyClass;



	return 0;
}