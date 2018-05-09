{$R+}
{$B+}
program TesteSortiereListe(input, output);
{ sortiert eine Liste durch Einfügen }
 
  type
  tNatZahl = 0..maxint;
  tRefListe = ^tListe;
  tListe = record
             wert : tNatZahl;
             next : tRefListe;
           end;

  var
  RefListe : tRefListe;

  procedure SortiereListe (var ioRefListe : tRefListe);
  { sortiert eine nicht-leere lineare Liste aufsteigend }

    var
    EinfuegePosition,
    WirdJetztSortiert,
    IstSchonSortiert : tRefListe;

    istEingefuegt : boolean;

  begin
    { die einelementige Liste ist immer sortiert }
    IstSchonSortiert := ioRefListe;
    { wir beginnen das zweite Element zu sortieren }
    WirdJetztSortiert := ioRefListe^.next;
    { solange es noch etwas zu sortieren gibt }
    while IstSchonSortiert^.next <> nil do
    begin
      istEingefuegt := false;
    
      { Fall 1: WirdJetztSortiert ist das neue kleinste Element }

      if WirdJetztSortiert^.wert < ioRefListe^.wert then
      begin
        IstSchonSortiert^.next := WirdJetztSortiert^.next;
        WirdJetztSortiert^.next := ioRefListe;
        ioRefListe := WirdJetztSortiert ;         
      end
        
      { Fall 2: WirdJetztSortiert bleibt wo es ist }

      else if WirdJetztSortiert^.wert >= IstSchonSortiert^.wert then
        IstSchonSortiert := IstSchonSortiert^.next
        
      { Fall 3: richtige EinfuegePosition im sortieten Teil suchen und verschieben }

      else 
        if WirdJetztSortiert^.wert < IstSchonSortiert^.wert then
        begin
          EinfuegePosition := ioRefListe; 
          if WirdJetztSortiert^.next = nil then
            IstSchonSortiert^.next := nil
          else
            IstSchonSortiert^.next := WirdJetztSortiert^.next

          repeat 
            if WirdJetztSortiert^.wert <= EinfuegePosition^.wert then
            begin
              WirdJetztSortiert^.next := EinfuegePosition;

              EinfuegePosition := ioRefListe;
              
              while EinfuegePosition^.next <> WirdJetztSortiert^.next do
              begin
                EinfuegePosition := EinfuegePosition^.next
              end;
              EinfuegePosition^.next := WirdJetztSortiert;
              istEingefuegt := true;
            end; { repeat-Schleife }

            EinfuegePosition := EinfuegePosition^.next; 
          until istEingefuegt = true;
        end;
      WirdJetztSortiert := IstSchonSortiert^.next

    end
  end;

  procedure Anhaengen(inZahl : tNatZahl; var ioListe : tRefListe);
  { Haengt inZahl an ioListe an }
  
    var
    Zeiger : tRefListe;
    
  begin
    Zeiger := ioListe;
    if Zeiger = nil then
    begin
      new(ioListe);
      ioListe^.wert := inZahl;
      ioListe^.next := nil;
    end
    else
    begin
      while Zeiger^.next <> nil do
        Zeiger := Zeiger^.next;
      new(Zeiger^.next);
      Zeiger := Zeiger^.next;
      Zeiger^.wert := inZahl;
      Zeiger^.next := nil;
    end;
  end;

  procedure ListeEinlesen(var outListe:tRefListe);
  { liest eine Folge von Zahlen ein }
  
    var
    Liste : tRefListe;
    Zahl : integer;
    
  begin
    Liste := nil;
    read(Zahl);
    while Zahl<>-1 do
    begin
      Anhaengen(Zahl, Liste);
      read(Zahl)
    end;
    outListe := Liste
  end;

  procedure GibListeAus(inListe : tRefListe);
  { Gibt die eine nicht-leere Liste aus }
  
    var 
    Zeiger : tRefListe;
    
  begin
    Zeiger := inListe;
    write(Zeiger^.wert);
    Zeiger := Zeiger^.next;
    while Zeiger <> nil do
    begin
      write(', ');
      write(Zeiger^.wert);
      Zeiger := Zeiger^.next
    end;
    writeln('')  
  end;

begin
  ListeEinlesen(RefListe);
  SortiereListe(RefListe);

  GibListeAus(RefListe)
end.
