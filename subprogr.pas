PROGRAM subprogram;
VAR
  a, b, c : INTEGER;
PROCEDURE print3(x : INTEGER);
BEGIN
  Writeln('1st: ', x);
  Writeln('2nd: ', x);
  Writeln('3rd: ', x);
END;

FUNCTION domath(a, b : INTEGER): INTEGER;
BEGIN
  domath := 2*a - b;
END;

BEGIN
  a := -10;
  b := 2*a;
  c := 2*b + a;
  Writeln(c);

  a := 2*Abs(c) + 1;
  Writeln(a);

  print3(b);

  c := domath(a, b);

  print3(a + c);

  Readln(a);

END.