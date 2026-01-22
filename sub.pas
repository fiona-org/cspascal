PROGRAM sub;
VAR
  s1, s2 : STRING;
  i, j : INTEGER;

FUNCTION substring(s : STRING; start, length : INTEGER) : STRING;
  VAR
    i : INTEGER;
    temps : STRING;
  BEGIN
    FOR i := 1 TO length DO
      temps[i] := s[i + start - 1];
    temps[0] := chr(length);
    substring := temps;
  END;

BEGIN
  s1 := substring('MurryFrrySlurry', 6, 5);
  Writeln(s1);
  Readln(i);
END.
