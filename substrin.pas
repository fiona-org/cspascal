PROGRAM sub;
VAR
  s1, s2 : STRING;
  i, j : INTEGER;

FUNCTION substring(s : STRING; start, len : INTEGER) : STRING;
  VAR
    i, stop : INTEGER;
    temps : STRING;

  BEGIN
    IF len > length(s) - start + 1 THEN stop := length(s) - start + 1
    ELSE  stop := len;
    FOR i := 1 TO stop DO
      temps[i] := s[i + start - 1];
    temps[0] := chr(stop);
    substring := temps;
  END;

FUNCTION reverse( s : string) : STRING;
  VAR
    i, stop : INTEGER;
    temps : STRING;
    tempc : CHAR;
  BEGIN
    stop := round(length(s)/2);
    FOR i := 1 TO stop DO
     BEGIN
      tempc := temps[i];
      temps[i] := s[length(s) - i -1];
      temps[length(s) - i] := tempc;
     END;
    Temps[0] := chr(length(s));
    reverse := temps;
  END;
BEGIN
  Write('Enter a string: ');
  Readln(s1);
  Write('Enter the start: ');
  Readln(i);
  Write('Enter the length: ');
  Readln(j);
  s2 := substring(s1, i, j);
  Writeln('Your substring is : ', s2);
  Writeln('The floor of half the substring is : ', trunc( length(s2)/2 ) );
  Write('Your reverse is: ', reverse
  Readln(i);
END.
