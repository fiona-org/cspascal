PROGRAM graphics;
USES Graph;
VAR
  gd, gm : INTEGER;
BEGIN
  gd := Detect;
  InitGraph(gd, gm, 'C:\TPWDB\BGI');

  SetColor(9);
  Line(200, 200, 300, 100); { roof left line }
  Line(300, 100, 400, 200); { roof right line }

  { lines to windows }
  SetColor(3);
  Line(225, 225, 260, 275);
  Line(260, 225, 225, 275);
  Line(340, 225, 375, 275);
  Line(375, 225, 340, 275);

  SetColor(13);
  Rectangle(200, 200, 400, 400);  { body of house }
  SetColor(10);
  Rectangle(275, 290, 325, 400);  { Door }
  SetColor(15);
  Rectangle(225, 225, 260, 275);  { left window }
  Rectangle(340, 225, 375, 275);  { right window }

  Readln(gd);
  CloseGraph;  { CloseGraph is a procedure with 0 inputs }
END.