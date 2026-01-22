PROGRAM RandList;
USES csp;
VAR
  myList : List;
  i, n : INTEGER;
BEGIN
  Randomize;
  Writeln('How many elements do you want in your list?');
  n := 10;

  FOR i := 1 TO n DO
    Append(myList, Random(100));

  PrintList(myList);
  Readln;

END.