PROGRAM circles; { Draw 10 circles in random spots }
USES graph;
CONST
  RAD = 120;
VAR
  x, y, r, i, gm, gd : INTEGER;
BEGIN
  Randomize; { Setup random number generator } { Screen size 640 x 480 }
  gd := Detect;
  InitGraph(gd, gm, 'C:\TPWDB\BGI'); { Setup for graphics }

  FOR i := 1 TO 10 DO
   BEGIN
     r := Random(RAD);
     x := Random(640);
     y := Random(480);
     SetColor(Random(16));
     Circle(x, y, r );
   END;

  Readln(x);
  CloseGraph;
END.
