PROGRAM Graphics;
uses  graph. Crt;
BEGIN
  Gd :- Detect;
  InitGraph(Gd, Gm, 'C:\TPWDB\BGI');
  SetColor(Red);
  x := 0
  y := 0;
  Circle(150, 150, 50);
  Repeat
    IF KeyPressed THEN
    BEGIN
      c := ReadKey;
      IF c = 's' THEN y := y + 5;
      IF c = 'w' THEN y := y - 5;
      IF c = 'a' THEN x := x - 5;
      IF c = 'd' THEN x := x + 5;
      Circle(x + 150, y + 150, 50);
   END;
  Until c = 'q';
  CloseGraph;

END.