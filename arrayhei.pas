PROGRAM softballheights(input, output);

CONST
  MAXTEAM = 22;
TYPE
  List = ARRAY[1..MAXTEAM] OF INTEGER;
VAR
  heights : List;
  teamNum : INTEGER;
  Avg : REAL;
  i : INTEGER;

FUNCTION AverageHeight(heightList : List; num : INTEGER) : REAL;
  VAR sum, i : INTEGER;

  BEGIN
    sum := 0;
    FOR i := 1 TO num DO sum := sum + heightList[i];
    AverageHeight := sum/num;
  END;

BEGIN
  Write('How many players on the team? ');
  Readln(teamNum);
  FOR i := 1 TO teamNum DO
    BEGIN
     Write('Please enter the height of player #', i,' : ');
     Readln(heights[i]);
    END;


  Avg := AverageHeight(heights, teamNum);
  Writeln('Average = ', avg);


END.