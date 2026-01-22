PROGRAM tax;

VAR
  owe : BOOLEAN;
  income : INTEGER;
  taxes : REAL;
  source : CHAR;

PROCEDURE PrintTax(tax : REAL; owe : BOOLEAN);
  BEGIN
  IF owe AND (tax > 100) THEN
    BEGIN
    Writeln('The tax owed is ', tax, '.');
    Writeln('Please send a check to the local tax office.')
    END
  ELSE IF NOT owe THEN
    Writeln('Taxes are not owed on tips.')
  ELSE
    Writeln('Tax bill is too low, no tax due.')
  END;

FUNCTION CalcTaxes(taxable : INTEGER; sourceType : CHAR) : REAL;
  BEGIN
  IF sourceType = 'w' THEN
    CalcTaxes := 0.35*REAL(taxable)
  ELSE IF sourcetype = 'd' THEN
    CalcTaxes := 0.15*REAL(taxable)
  ELSE
    CalcTaxes := REAL(taxable)
  END;

BEGIN
  REPEAT
  Write('Please enter your wages: ');
  Readln(income);
  Write('Enter the source of your income: (w)ages, (d)ividends, (t)ips: ');
  Readln(source);

  IF source = 't' THEN
    BEGIN
    owe := false;
    taxes := 0.0
    END
  ELSE
    BEGIN
    owe := true;
    taxes := CalcTaxes(income, source)
    END;
  UNTIL source = 's'
  PrintTax(taxes, owe);
  Readln(income)
END.
