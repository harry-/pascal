program aufgabe27(input, ouput);
{ hier soll immer etwas stehen }

  const
  GRENZE = 10;

  type      
  tIndex = 1..GRENZE;
  tFeld = array [tIndex] of integer;

  var
  Feld : tFeld;
  i,
  w,
  w1,
  w2 : integer;


  function max (
             ParFeld: tFeld;
             von, bis: tIndex): integer;
  { bestimmt das Maximum im Teilfeld von ParFeld[von] 
    bis ParFeld[bis] }
  var
    Wert : integer;
    i : tIndex;
  begin
    Wert := ParFeld[von];
    for i := von + 1 to bis do
      if ParFeld[i] > Wert then
        Wert := ParFeld[i];
    max := Wert
  end; { max }    

begin

  for i := 1 to GRENZE do
    readln(Feld[i]);
  writeln('----');

  w := max (Feld, Feld[1], Feld[GRENZE]);
  writeln(w);
	
  w := max (Feld, (GRENZE-1) div 2, (GRENZE-1) div 2);
  writeln(w);

  if max (Feld, 1, (GRENZE-1) div 2) >
      max (Feld, (GRENZE+1) div 2, GRENZE)
  then
    w := max (Feld, 1, (GRENZE-1) div 2)
  else
    w := max (Feld, (GRENZE+1) div 2, GRENZE);
  writeln(w);

	
  w := max (Feld, 1, GRENZE);
  if w <= GRENZE then
    write (max (Feld, w, w));
  writeln(w);

  w1 := max (Feld, 1, GRENZE);
  w2 := max (Feld, 4, GRENZE-1);
  if (0 < w2) and (w1 <= GRENZE) then
  begin
    w := max (Feld, 2, GRENZE);
    w := max (Feld, 1, w)
  end; 
  writeln(w)

end.  
