program MatrixTransponieren(output);
{ iwas }

  const
  GROESSE = 5;

  type
  tMatrix = array [1..GROESSE,1..GROESSE] of integer;

  var
  A, B : tMatrix;
  tauschPuffer,
  i,
  j : integer;

  procedure MatrixAnzeigen (Matrix : tMatrix; Groesse : integer);
  { gibt die uebergebene Matrix am Bildschirm aus }
  begin
    for i := 1 to Groesse do
    begin
      writeln();
      for j := 1 to Groesse do
        write(Matrix[i,j], ' ')
    end;
    writeln()
  end;

begin
{ Lesen der Matrixwerte in A: }
  for i := 1 to GROESSE do
    for j := 1 to GROESSE do
      readln (A[i,j]);
  B := A;

  MatrixAnzeigen(A, GROESSE);

  for i := 1 to GROESSE-1 do
    for j := i+1 to GROESSE do
    begin
      tauschPuffer := A[i,j];
      A[i,j] := A[j,i];
      A[j,i] := tauschPuffer
    end;
  MatrixAnzeigen(A, GROESSE);

  A := B;

  for i := 1 to GROESSE do
    for j := 1 to i do
    begin
      tauschPuffer := A[i,j];
      A[i,j] := A[j,i];
      A[j,i] := tauschPuffer
    end;
  MatrixAnzeigen(A, GROESSE);

  A := B;

  for i := 1 to GROESSE do
    for j := 1 to GROESSE do
    begin
      tauschPuffer := A[i,j];
      A[i,j] := A[j,i];
      A[j,i] := tauschPuffer
    end;
  MatrixAnzeigen(A, GROESSE);

  A := B;


        
  for i := 1 to GROESSE do
    for j := 1 to GROESSE-i do
    begin
      tauschPuffer := A[i,j];
      A[i,j] := A[j,i];
      A[j,i] := tauschPuffer
    end;
  MatrixAnzeigen(A, GROESSE);

  A := B;

  for i := 1 to GROESSE-1 do
    for j := i+1 to GROESSE do
    begin
      tauschPuffer := A[i,j];
      A[j,i] := A[i,j];
      A[j,i] := tauschPuffer
    end;
  MatrixAnzeigen(A, GROESSE);

end.
