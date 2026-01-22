PROGRAM strings;
VAR
  name , msg: STRING;
  len , i, count : INTEGER;
  money : REAL;
BEGIN
  { Ask the user for their name, age, and how much money they have }
  { Write out their results with a nice message }
  Write('What is your name? ');
  Readln(name);
  msg := 'Hello ' + name + '. ';
  len := length(msg);
  Writeln('Your msg is ', len, ' long');
  msg := msg + ' It is nice to meet you.';
  len := length(msg);
  Writeln('Your msg is ', len, ' long');
  Writeln(msg);
  count := 0;
  FOR i := 1 TO length(msg) DO
  BEGIN
    IF (msg[i] >= 'A') AND (msg[i] <= 'Z') THEN count := count + 1
  END;
  Writeln('There are ', count, ' uppercase letters in your message.');
  Readln(name);
END.