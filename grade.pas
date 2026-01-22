PROGRAM gradeClassify;
VAR
  grade : INTEGER;
  letter : CHAR;

PROCEDURE PrintLetter(letter : CHAR);
  BEGIN
  IF letter = 'A' THEN Writeln('Your letter grade is A')
  ELSE IF letter = 'B' THEN Writeln('Your letter grade is B')
  ELSE IF letter = 'C' THEN Writeln('Your letter grade is C')
  ELSE IF letter = 'D' THEN Writeln('Your letter grade is D')
  ELSE Write('Your letter grade is F');
  END;

FUNCTION ClassifyGrade(grade : INTEGER) : CHAR;
  BEGIN
  IF grade >= 90 THEN ClassifyGrade := 'A'
  ELSE IF grade >= 80 THEN ClassifyGrade := 'B'
  ELSE IF grade >= 70 THEN ClassifyGrade := 'C'
  ELSE IF grade >= 60 THEN ClassifyGrade := 'D'
  ELSE ClassifyGrade := 'F';
  END;

FUNCTION GetGrade : INTEGER;
  VAR
   grade : INTEGER;
  BEGIN
  REPEAT
    Write('Enter your grade ');
    Read(grade);
    IF (grade < 0) OR (grade > 100) THEN Writeln('That grade is out of range.')
    UNTIL (grade >= 0) AND (grade <= 100);
  GetGrade := grade;
  END;

BEGIN
  grade := GetGrade;
  letter := ClassifyGrade(grade);
  PrintLetter(letter);
  Readln(grade);

END.