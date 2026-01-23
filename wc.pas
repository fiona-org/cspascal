PROGRAM wc;
USES CopyUnit;
VAR
  c : CHARACTER;
  nc, nl, nw: INTEGER;
  inword : BOOLEAN;
BEGIN
  nc := 0;
  nl := 0;
  nw := 0;
  inword := FALSE;
  WHILE (getc(c) <> ENDFILE) DO
  BEGIN
    nc := nc + 1;

    IF c = NEWLINE THEN nl := nl + 1;

    IF (c = BLANK) OR (c = TAB) OR (c = NEWLINE) THEN inword := FALSE
    ELSE IF inword = FALSE THEN
    BEGIN
       inword := TRUE;
       nw := nw + 1;
    END;
  END;
  IF (nc <> 0) AND (nl = 0) THEN nl := 1;
  Writeln('Number of characters: ', nc);
  Writeln('Number of lines:      ', nl);
  Writeln('Number of words:      ', nw);
END.
