PROGRAM testrev;
USES CSP;
VAR
  s : STRING;

BEGIN
  Writeln(substring('hello', 3, 10));
  Writeln(substring('hello', 7, 3));

  Readln(s);
END.