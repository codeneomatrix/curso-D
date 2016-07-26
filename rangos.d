import std.stdio;
import std.range : recurrence, sequence, take, dropOne,iota,roundRobin,transposed,zip;
import std.algorithm : map,filter,reduce;

void main()
{
	// Prints all even numbers from 2 - 20
	foreach(i; iota(2, 21, 2)) writeln(i);
	auto r1 = recurrence!("a[n-1] + a[n-2]")(0, 1).take(20); //funcion recursiva interna
	writeln(r1);//[0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181]
	auto r2 = recurrence!((a,n) => a[n-1] + 2)(2).take(10);
	writeln(r2); // mismo resultado que iota(2,21,2)

	auto r = sequence!("n*2").dropOne.take(10);
	writeln(r);  // mismo resultado que iota(2,21,2)

	auto rr = roundRobin(iota(3), iota(3, 6), iota(6, 9));
	foreach(i; rr) writeln(i); //entra [0,1,2],[3,4,5],and [6,7,8] e imprime 0, 3, 6, 1, 4, 7, 2, 5, 8

	auto arr = [[1, 2, 3], [4, 5, 6]];
	auto r3 = transposed(arr);
	foreach(a; r3) writeln(a); //[[1, 4], [2, 5], [3, 6]]

	auto r4 = zip(iota(1, 11), iota(11, 21))
	.filter!(t => (t[0] & 1) == 0); //se ignoran los elemtos impares del lado izquierdo
	foreach(i; r4) writeln(i);
	/*
		salida:
		Tuple!(int, int)(2, 12)
		Tuple!(int, int)(4, 14)
		Tuple!(int, int)(6, 16)
		Tuple!(int, int)(8, 18)
		Tuple!(int, int)(10, 20)
	*/

	
	writeln("map");

	auto ma = iota(1, 21).map!(x => x * 2);
	foreach(n; ma) writeln(n);

	writeln("map multiple");
	auto r5 = iota(100, 111).map!("a", "a * 2", "a / 2");
	foreach(t; r5 ) {
	writefln("%s * 2 = %s", t[0], t[1]);
	writefln("%s / 2 = %s", t[0], t[2]);


	
	auto sal=iota(6).reduce!("a + b");
	writeln("reduce  ",sal);

	//assert(iota(50).any!("(a * 2) > 50"));
}

}