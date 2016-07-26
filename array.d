import std.stdio;


int main(){
	int[3] stat1;
	writeln("array1: ",stat1);

	int[] dynArray2;
	dynArray2.reserve(20);
	writef("Array 2:  %s, %s  ", dynArray2.length, dynArray2.capacity);
	dynArray2 ~= 2;
	dynArray2 ~= 10;
	writeln("datos: ",dynArray2);
	dynArray2.length += 10;
	writef("Array 2:  %s, %s  ", dynArray2.length, dynArray2.capacity);
	writeln("datos: ",dynArray2);

	auto dynArray3 = dynArray2 ~ stat1;
	writeln("Array3: ",dynArray3);

	writeln(dynArray3[0]); // Print the first element
	writeln(dynArray3[$-1]); // Print the last element


	//matrices como arreglo de arreglos
	int[][3] ra2 = [
	[0, 1],
	[2, 3, 4, 5],
	[6, 7, 8]
	];
	writeln("ra2[0].length: ",ra2[0].length);
	writeln("ra2[1].length: ",ra2[1].length);
	writeln("ra2[2].length: ",ra2[2].length);
	writeln("ra2: ",ra2);

	//el sliced es como en python
	//el sliced se actualiza automaticamente respecto a los satos del arreglo original
	auto tenArray = [5,10,15,20,25,30,35,40,45,50];
	auto sliced = tenArray[0 .. 5];
	writeln(tenArray);
	writeln(sliced);

	tenArray[0] = 10;
	writeln(tenArray);	
	writeln(sliced);	
	//se pueden agregar datos al sliced pero estos no se reflejan en el original
	sliced ~= 55;
	writeln(tenArray);	
	writeln(sliced);


	auto shrink = [10, 20, 30, 40, 50];
	shrink = shrink[0 .. $-1];
	writeln(shrink);

	import std.algorithm : remove;
	shrink = shrink.remove(2);
	writeln(shrink);


	int[] a1 = new int[10];
	writeln(a1.ptr);    //1DB2080
	int[] a2 = [0,1,2,3,4,5,6,7,8,9];
	a1[] = a2;			
	writeln(a1.ptr);	//1DB2080
	a1 = a2.dup;
	writeln(a1.ptr);    //1DB2100

	int[] a = [2,3,4];
	a[] ^^= 2;         //eleva al cuadrado los elementos del arreglo
	writeln(a);
	int[] b = [5,6,7];
	int[3] c = a[] + b[];
	writeln(c);


	writeln(a is null);

	return 0;
}