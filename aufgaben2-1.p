program Maximum (input, output);
{ bestimmt das Maximum einer Folge von
  einzulesenden integer-Eingabeen }

  const
  INITIALWERT = -10000;
  
  var
  Eingabe,
  Max : integer;

begin
  Max := INITIALWERT;
  writeln ('Geben Sie beliebig viele ganze Zahlen ein,');
  writeln ('deren Maximum bestimmt werden soll.');
  writeln ('Geben Sie 0 ein, um die Eingabe zu beenden.');
  repeat
    write ('Wert: ');
    readln (Eingabe);
    if (Eingabe > Max) and (Eingabe <> 0) then
       Max := Eingabe
  until Eingabe = 0;
  
  if (Max <> INITIALWERT) then
    writeln ('Das Maximum ist: ', Max,'.')
  else
    writeln ('Leere Eingabefolge!');
end. { Maximum }       
