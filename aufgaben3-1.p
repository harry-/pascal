program testeFeldZweitMax (input, output);
{ testet die Funktion FeldZweitMax }

  const
  FELDGROESSE = 5;

  type
  tIndex = 1..FELDGROESSE;
  tFeld = array [tIndex] of integer;

  var 
  Feld : tFeld;
  i : integer;

  function FeldZweitMax (var inFeld : tFeld) : integer;
  { ermittelt das zweitgroesste Element eines gegebenen Ganzzahlfeldes }

  var
  GroessteZahl, 
  ZweitgroessteZahl : integer;
  i : integer;
    
  begin
    GroessteZahl := -1000;
    ZweitgroessteZahl := -1000;

    { ich wollte statt FELDGROESSE length(inFeld) verwenden, aber das akzeptiert der Fernuni-Compiler nicht. Mir ist nicht ganz klar, warum Feld uebergeben wird, wenn die Funktion Zugriff auf den Namensraum von program zu haben scheint *question }
    for i := 1 to FELDGROESSE do
    begin 
      if(inFeld[i] > GroessteZahl) then
      begin
        ZweitgroessteZahl := GroessteZahl;
        GroessteZahl := inFeld[i]
      end
      else if inFeld[i] > ZweitgroessteZahl then
        ZweitgroessteZahl := inFeld[i]
    end; 
    FeldZweitMax := ZweitgroessteZahl
  end;

begin

  for i := 1 to FELDGROESSE do
  begin
    readln(Feld[i]); 
  end; { for-Schleife }

  writeln('Die zweitgroesste Zahl lautet: ', FeldZweitMax(Feld));

  for i := 1 to FELDGROESSE do
    write(Feld[i], ' ')
end.
