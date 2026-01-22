PROGRAM arrays;
TYPE
  List = array [1..10] of INTEGER;
VAR
  max, min, i : INTEGER;
  myList : List;
FUNCTION Listmin(aList : List) : INTEGER;
  VAR min, i : INTEGER;
  BEGIN
    min := aList[1];
    FOR i := 2 TO 10 DO
      IF aList[i] < min THEN min := aList[1];
    Listmin := min;
  END;

BEGIN
  Randomize;
  FOR i := 1 TO 10 DO
    Readln(myList[i]);

  max := myList[1];
  min := myList[1];

  FOR i := 2 TO 10 DO
  BEGIN
    IF myList[i] > max THEN max := myList[i];
    Write(myList[i], ' ');
  END;
  Writeln(' ');
  Writeln('Max of list = ', max);
  Writeln('Min of list = ', Listmin(myList) );

  Readln(i);
END.