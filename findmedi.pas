PROGRAM FindMedian;
USES csp;
VAR
  myList : LIST;
  n : INTEGER;

FUNCTION Median(aList : LIST) : REAL;
VAR
  med : REAL;

BEGIN
  { even }
  IF (Length(aList) MOD 2 = 0) THEN
    BEGIN
      med := aList[Length(aList) DIV 2] + aList[(Length(aList) DIV 2 + 1)];
      med := med/2;
    END;
  { odd }
  IF (Length(aList) MOD 2 = 1) THEN
    med := aList[Length(aList) DIV 2 + 1];

    Median := med;
END;

BEGIN
  REPEAT
    Writeln('How many random numbers?');
    Readln(n);
    IF (n <= 0) OR (n > SIZE) THEN
      Writeln('n should be positive and less than', SIZE);
  UNTIL (n > 0) AND (n <= SIZE);

  RandomList(myList, n);
  PrintList(myList);
  Writeln('Avg of myList = ', Average(myList):3:2);
  BubbleSort(myList);
  PrintList(myList);
  Writeln('Median = ', Median(myList):3:2);
  Readln;
END.