PROGRAM AgeClassifier(Input, Output);
VAR
  age , i : INTEGER;
  class : CHAR;

PROCEDURE PrintClass(class : CHAR);
  BEGIN
  IF class = 'c' THEN Writeln('You are a child')
  ELSE IF class = 't' THEN Writeln('Your are a teenager')
  ELSE Writeln('Your classification is adult');
  END;

FUNCTION ClassifyAge(age : INTEGER) : CHAR;
  BEGIN
  IF age > 19 THEN ClassifyAge := 'a'
  ELSE IF age >= 13 THEN ClassifyAge := 't'
  ELSE IF age >= 0 THEN ClassifyAge := 'c'
  ELSE ClassifyAge := 'i';
  END;

FUNCTION GetAge : INTEGER;
  VAR
    age : INTEGER;
  BEGIN;
  REPEAT
    Write('Enter your age ');
    Read(age);
    IF (age < 0) OR (age > 120) THEN Writeln('That age is out of range')
    UNTIL (age >= 0) AND (age <= 120);
 GetAge := age
 END;

BEGIN
  age := GetAge;
  class := ClassifyAge(age);
  PrintClass(class);
  Readln(age);
END.