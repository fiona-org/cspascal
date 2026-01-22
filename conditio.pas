PROGRAM Conditionals;
VAR
  a, b , i : INTEGER;
BEGIN
  Randomize;
  b := Random(10);
  Writeln('You have 3 guesses');

  REPEAT
    Write('Guess a number between 0 and 10: ');
    Readln(a);
    IF a < b THEN Writeln('Too low')
    ELSE IF a > b THEN Writeln('Too high')
    ELSE Writeln('That is correct');
  UNTIL a = b;
  Writeln('Thanks for playing.');
  Readln(a);
END.