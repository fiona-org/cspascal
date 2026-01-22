PROGRAM randarray(output);
{ Create an array type and variable }
CONST
  SIZE = 10;
TYPE
  List = ARRAY[1..SIZE] OF INTEGER;
VAR
  arr : List;
  i, sum : INTEGER;
BEGIN
  Randomize;

  FOR i := 1 TO SIZE DO arr[i] := Random(100);

  { Write a FOR loop to print each element of the array }
  { FOR i := 1 TO SIZE DO Writeln(arr[i]); }

  { FOR i := SIZE DOWNTO 1 DO Writeln(arr[i]); }

  FOR i:= SIZE DOWNTO round(SIZE/2)+1 DO Writeln('arr[', i, '] =', arr[i]);

  { Sum up all elements of array }
  sum := 0;
  FOR i := i TO SIZE DO sum := sum + arr[i];

  Writeln('Sum = ', sum);

  Read(arr[1]);
END.