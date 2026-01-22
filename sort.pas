PROGRAM Sort;
USES csp;
VAR
  myList : LIST;
  i, j, temp : INTEGER;
BEGIN
  RandomList(myList, 10);
  PrintList(myList);
  Readln;

  BubbleSort(myList);

  Writeln('Sorted: ');
  PrintList(myList);
  Readln;
END.