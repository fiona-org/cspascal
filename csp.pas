UNIT csp;

INTERFACE

CONST
  SIZE = 255;

TYPE
  LIST = ARRAY[0..SIZE] OF INTEGER;

{ List Functions/Procedures }
FUNCTION Length(aList : LIST) : INTEGER;
PROCEDURE Append(VAR aList : LIST; value : INTEGER);
PROCEDURE Insert(VAR aList : LIST; i, value : INTEGER);
PROCEDURE Remove(VAR aList : LIST; i : INTEGER);
PROCEDURE PrintList(aList : LIST);
PROCEDURE RandomList(VAR aList : LIST; n : INTEGER);

{ List Data Functions/Procedures }
FUNCTION Sum(aList : LIST) : INTEGER;
FUNCTION Average(aList : LIST) : REAL;
FUNCTION Median(aList : LIST) : REAL;
FUNCTION Smallest(aList :  LIST) : INTEGER;

FUNCTION LinearSearch(aList : LIST; value : INTEGER) : BOOLEAN;
FUNCTION BinarySearch(aList : LIST; value : INTEGER) : BOOLEAN;
PROCEDURE Swap(VAR a, b : INTEGER);
PROCEDURE BubbleSort(VAR aList: LIST);
PROCEDURE SelectionSort(VAR aList : LIST);
PROCEDURE InsertionSort(VAR aList : LIST);

{ List Miscellaneous }
FUNCTION IsIncreasing(aList : LIST) : BOOLEAN;

{ String Functions/Procedures }
FUNCTION Len(s : STRING) : INTEGER;
FUNCTION concat(s1, s2 : STRING) : STRING;
FUNCTION reverse(s1 : STRING) : STRING;
FUNCTION prefix(s1 : STRING; n : INTEGER) : STRING;
FUNCTION substring(s1 : STRING; start, l : INTEGER) : STRING;

IMPLEMENTATION

{ List Functions/Procedures }

FUNCTION Length(aList : LIST) : INTEGER;
BEGIN
  Length := aList[0];
END;


PROCEDURE Append(VAR aList : LIST; value : INTEGER);
BEGIN

  IF aList[0] <= SIZE THEN
  BEGIN
    aList[0] := Length(aLIst) + 1;
    aList[Length(aList)] := value;
  END;

END;


PROCEDURE Insert(VAR aList : LIST; i, value : INTEGER);
VAR
  index : INTEGER;
BEGIN
  aList[0] := aList[0] + 1;
  IF i > Length(aList) THEN aList[aList[0]] := value
   ELSE IF i > 0 THEN
   BEGIN
     FOR index := Length(aList) DOWNTO i + 1 DO
        aList[index] := aList[index - 1];
     aList[i] := value;
   END
   ELSE IF i < 0 THEN aList[0] := aList[0] - 1;

END;


PROCEDURE Remove(VAR aList : LIST; i : INTEGER);
VAR
  index : INTEGER;
BEGIN
  IF (i > 0) AND (i <= aList[0]) THEN
    BEGIN
      FOR index := i TO length(aList) DO
        aList[index] := aList[index + 1];
        aList[0] := aList[0] - 1;
    END;

END;


PROCEDURE PrintList(aList : LIST);
VAR
  i : INTEGER;
BEGIN
     FOR i := 1 TO Length(aList) DO
      Writeln('Element at index ', i,' = ', aList[i]);
END;


PROCEDURE RandomList(VAR aList : LIST; n : INTEGER);
VAR
  i : INTEGER;
BEGIN
  Randomize;
  FOR i := 1 TO n DO
    Append(aList, Random(100));
END;


FUNCTION Sum(aList : LIST) : INTEGER;
VAR
  i, total : INTEGER;
BEGIN
  total := 0;

  FOR i := 1 TO Length(aList) DO
    total := aList[i] + total;
  Sum := total;
END;

FUNCTION Average(aList : LIST) : REAL;
VAR
  Avg : REAL;
BEGIN
  Avg := Sum(aList);
  Avg := Avg/Length(aList);
  Average := Avg;
 END;


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


FUNCTION LinearSearch(aList : LIST; value : INTEGER) : BOOLEAN;
VAR
  i : INTEGER;
  found : BOOLEAN;
BEGIN

  found := FALSE;

  FOR i := 1 TO aList[0] DO
    IF aList[i] = value THEN
    BEGIN
      found := TRUE;
      break;
    END;
  LinearSearch := found;

END;


FUNCTION BinarySearch(aList : LIST; value : INTEGER) : BOOLEAN;
VAR
  i, l, r, mid: INTEGER;
  Found : BOOLEAN;
BEGIN
  Found := FALSE;
  l := 1;
  r := Length(aList);

  REPEAT
    mid := (l + r) DIV 2;
    IF aList[mid] = value THEN
    BEGIN
      Found := TRUE;
      Break;
    END
    ELSE IF aList[mid] > value THEN l := mid
    ELSE r := mid;
  UNTIL l + 1 >= r;
  BinarySearch := Found;
END;


PROCEDURE Swap(VAR a, b : INTEGER);
VAR
  temp : INTEGER;
BEGIN
  temp := a;
  a := b;
  b := temp;
END;


PROCEDURE BubbleSort(VAR aList : LIST);
VAR
  i, j, temp : INTEGER;
BEGIN
  FOR i := 1 TO aList[0] - 1 DO
    FOR j := 1 TO aList[0] - i DO
      IF aList[j] > aList[j + 1] THEN
        Swap(aList[j], aList[j + 1]);
END;


PROCEDURE SelectionSort(VAR aList : LIST);
VAR
  i, j, min : INTEGER;
BEGIN
  FOR i := 1 TO Length(aList) - 1 DO
  BEGIN
    min := i;
    FOR j := i + 1 TO Length(aList) DO
      IF aList[j] < aList[min] THEN min := j;
    Swap(aList[i], aList[min]);
  END;

END;


PROCEDURE InsertionSort(VAR aList : LIST);
VAR
  i, j : INTEGER;
BEGIN
{  loop 2 through length and find where to insert that element }
{loop downwards and swap nuntil the elemnt is in the right spot}
  {Check if aList[j] is less than aList[j - 1], the swap }
  { If not, break }
  FOR i := 1 TO aList[0] - 1 DO
    BEGIN
      FOR j := 1 TO aList[0] DO
        IF aList[j] < aList[j - 1] THEN Swap(aList[j], aList[j - 1])
        ELSE
    END;

END;


{ List Miscellaneous }
FUNCTION IsIncreasing(aList : LIST) : BOOLEAN;
VAR
  i : INTEGER;
BEGIN
  IsIncreasing := TRUE;
  FOR i := 1 TO aList[0] - 1 DO
      IF aList[i] >= aList[i + 1] THEN
        IsIncreasing := FALSE;

END;


{ String Functions/Procedures }

FUNCTION Len(s : STRING) : INTEGER;
  BEGIN
    Len := ord(s[0]);
  END;


FUNCTION concat(s1, s2 : STRING) : STRING;
VAR
  temps : STRING;
  i : INTEGER;
  BEGIN
    temps[0] := chr(len(s1) + len(s2));
    FOR i := 1 TO len(s1) DO temps[i] := s1[i];
    FOR i := 1 TO len(s2) DO temps[i + len(s1)] := s2[i];
    concat := temps;
  END;


FUNCTION reverse(s1 : STRING) : STRING;
  VAR
  i : INTEGER;
  temps : STRING;

BEGIN
  temps[0] := chr(len(s1));
    FOR i := 1 TO len(s1) DO
      temps[i] := s1[len(s1) -i + 1];
  reverse := temps;
  END;


FUNCTION prefix(s1 : STRING; n : INTEGER) : STRING;
VAR
  temps : STRING;
  i : INTEGER;
BEGIN

  IF (n > len(s1)) OR (n < 0) THEN n := len(s1)
    ELSE n := n;
  temps[0] := chr(n);

  FOR i := 1 TO n DO
    temps[i] := s1[i];
  prefix := temps;
END;



FUNCTION substring(s1 : STRING; start, l : INTEGER) : STRING;
VAR
  i : INTEGER;
  temps : STRING;
BEGIN
  IF l > Len(s1) - start + 1 THEN l := Len(s1) - start + 1;
  IF start > Len(s1) THEN substring := ''
  ELSE
    BEGIN
      FOR i := 1 TO l DO
       temps[i] := s1[start + i - 1];
      temps[0] := chr(l);
      substring := temps;
    END;

END;


END.
