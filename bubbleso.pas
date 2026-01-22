PROGRAM BubbleSort;
USES csp;
VAR
  myList : LIST;
  i, j, temp : INTEGER;
BEGIN
  RandomList(myList, 10);
  PrintList(myList);
  FOR i := 1 TO myList[0] - 1 DO
    FOR j := 1 TO myList[0] - i DO
      IF myList[j] > myList[j + 1] THEN
      BEGIN
        temp := myList[j + 1];
        myList[j + 1] := myList[j];
        myList[j] := temp;
      END;

  PrintList(myList);
  Readln;
END.