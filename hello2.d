import mypack.greeting;

int d1 = 1000000;
int d2 = 1_000_000;
int h1 = 0x000000FF; // Hexadecimal for 255
int h2 = 0X00_00_00_FF; // Ditto
int h3 = 0xFF; // Ditto
int b1 = 0b01010101; // Binary for 85
int b2 = 0B0101_0101; // Ditto
int b3 = 0b101_0101; // Ditto

char c1 = 'a'; // OK: one code unit
wchar wc = 'é'; // OK: one code unit

void main() {
	sayHello();

	writeln(typeid(2_147_483_647));
	writeln(typeid(2_147_483_648));
	writeln(typeid(2_147_483_648U));
	writeln(typeid(9_223_372_036_854_775_808UL));
	writeln(typeid(10));
	writeln(typeid(10U));
	writeln(typeid(10L));
	writeln(typeid(10UL));
	writeln(typeid(3.0));
	writeln(typeid(3.0f));
	writeln(typeid(3.0F));
	writeln(typeid(3.0L));
	writeln(typeid(3f));

	writeln(int.sizeof);
	writeln(3.sizeof);
	int a;
	writeln(a.sizeof);


	writeln(!false);
	writeln(3==3.0);   //prueba evaluando un struct
	writeln(3 is 3.0); //prueba evaluando un struct
	writeln(false && true || true && false);
	auto y = cast(double)b1;
	writeln(y);


	int* p;
	writeln("p's value is ", p);
	writeln("p's type is ", typeid(p));
	writeln("p's size is ", p.sizeof);


	auto num = 1;
	auto numPtr = &num;
	writefln("The value at address %s is %s", numPtr, *numPtr);
	num = 2;
	writefln("The value at address %s is %s", numPtr, *numPtr);
}