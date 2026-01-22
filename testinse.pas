PROGRAM testlist;
USES csp;
VAR
  myList : List;
  i : INTEGER;
BEGIN
  RandomList(myList, 5);
  PrintList(myList);
  IF LinearSearch(myList, 10) = TRUE THEN Writeln('Found')
    ELSE Writeln('Not found');
  Readln;
END.