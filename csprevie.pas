PROGRAM cspreveiw;
CONST
  SIZE = 20;

TYPE
  LIST = ARRAY[0..SIZE] OF INTEGER;

VAR
  list1, list2 : LIST;
  i, j, n : INTEGER;

BEGIN
  Randomize;
  FOR i := 1 TO SIZE DO
    list1[i] := Random(50);
  list1[0] := SIZE;

  FOR i := 1 TO SIZE DO
    Writeln('list1[', i,'] = ', list1[i]);


  FOR i :- 1 TO SIZE DO
    n := n + 1;

  n := 0;
  FOR i := 1 TO SIZE DO
    IF list1[i];
  Writeln(n/SIZE);

  n :=

  n := list1[1];
  FOR i := 2 TO SIZE DO
    IF list1[i] < n THEN n := list1[i];

  Writeln(n);

  Readln;

END.