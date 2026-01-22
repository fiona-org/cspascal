PROGRAM TestRandom;
USES csp;

VAR
  myList : LIST;
  i, n : INTEGER;

FUNCTION Smallest(aList :  LIST) : INTEGER;
VAR
  i, min : INTEGER;
BEGIN
  { Start by setting min to aList[1] }
  min := aList[1];
  FOR i := 2 TO aList[0] DO
    IF min > aList[i] THEN min := aList[i];

  Smallest := min;

END;

BEGIN
  REPEAT
    Writeln('How many elements?');
    Readln(n);
    IF (n <= 0) OR (n > SIZE) THEN
      Writeln('Pick a number between 1 and ', SIZE);
  UNTIL (n > 0) AND (n <= SIZE);

  RandomList(myList, n);
  PrintList(myList);

  Writeln('Smallest number is ', Smallest(myList));
  Readln;
END.