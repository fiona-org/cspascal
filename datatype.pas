PROGRAM datatype;
USES CRT;
VAR
  s : SHORTINT;
  i : INTEGER;
  l : LONGINT;
  b : BYTE;
  w : WORD;
  c : CHAR;
BEGIN
  s := $7F;
  Writeln('s = ', s);
  s := s + 3;
  Writeln('s = ', s);
  b := $FF;
  WRiteln('b = ', b);
  b := b + 1;
  Writeln('b = ', b);
  i := $7FFF;
  WRiteln('i = ', i);
  i := i + 1;
  Writeln('i = ', i);
  l := $7FFFFFFF;
  Writeln('l = ', l);
  l := l + 1;
  Writeln('l = ', l);
  w := $FFFF;
  Writeln('w = ', w);
  w := w + 1;
  Writeln('w = ', w);
  c := 'a';
  Writeln('c = ', c);
  Writeln('ord(c) = ', ord(c));
  FOR i := 0 TO 255 DO
  BEGIN
    Writeln(i, ' = ', chr(i));
    c := ReadKey;
  END;
  Readln(i);
END.