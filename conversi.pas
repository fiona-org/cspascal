PROGRAM Conversion;
VAR
  l : CHAR;
  i, k : INTEGER;
  num : STRING;
  value : INTEGER;
FUNCTION ctoi(c : CHAR) : INTEGER;
BEGIN
  IF (c >= '0') AND (c <= '9') THEN
    ctoi := Ord(c) - 48
  ELSE
    ctoi := -1;
END;

FUNCTION atoi(s : STRING) : INTEGER;
  VAR
    i, val : INTEGER;
  FUNCTION isDigit(c : CHAR) : BOOLEAN;
   BEGIN
     isDigit := (s[i] >= '0') AND (s[i] <= '9');
   END;
  BEGIN
    i := 1;
    WHILE NOT isDigit(s[i]) AND (i <= Length(s)) DO
      i := i + 1;

    val := 0;
    WHILE isDigit(s[i]) AND NOT (i > Length(s)) DO
    BEGIN
      val := ctoi(s[i]) + 10*val;
      i := i + 1;
    END;
    atoi := val;

  END;

FUNCTION itoa(val : INTEGER) : STRING;
  VAR
  s : STRING;
  BEGIN
    s := '';
    { Loop repeat until}
    REPEAT
      s := chr(val MOD 10 + 48) + s;
      val := val DIV 10;
    UNTIL val = 0;
    itoa := s;

  END;

FUNCTION itbs(value : INTEGER) : STRING;
  VAR
  s : STRING;
  num, i : INTEGER;
BEGIN

END;


BEGIN
  Writeln('Enter an integer : ');
  Writeln(chr(2 MOD 2));

  Readln;
END.