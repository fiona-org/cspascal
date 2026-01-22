PROGRAM proc;
VAR
  m, n : INTEGER;
FUNCTION fplus1(num : INTEGER) : INTEGER;
  BEGIN
    num := 8;
    fplus1 := num + 1;
  END;
PROCEDURE pplus1(VAR num : INTEGER);
  BEGIN
    num := num + 1;
  END;
FUNCTION fpplus1(VAR num : INTEGER) : BOOLEAN;
  BEGIN
    IF num < 0 THEN ffplus 1 := false;
    ELSE num := num + 1;
BEGIN
  n := 5;
  m := fplus1(n);
  WRiteln('m = 1', m);
  Writeln('n = ', n);
  pplus1(n);
  Writeln('n = ', n);
  Readln(m);
END.