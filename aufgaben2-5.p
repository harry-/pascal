program BinaeresSuchen(input, output);
{ mahct iwas }

        const
        FELDGROESSE = 10;

        var
        unten, oben, Mitte, Durchlaeufe : integer;
        Feld : array[1..FELDGROESSE] of integer = (1,2,3,4,5,6,7,8,9,10);
        Suchwert : integer;
        gefunden : boolean;

begin
        unten := 1;
        oben := FELDGROESSE;
	Durchlaeufe := 0;
	readln(Suchwert);
        repeat
	  Durchlaeufe := Durchlaeufe + 1;	
          Mitte := (oben + unten) div 2;
          if Suchwert > Feld[Mitte] then
            unten := Mitte + 1;
          if Suchwert < Feld[Mitte] then
            oben := Mitte - 1;
          gefunden := (Suchwert = Feld[Mitte]) 
        until gefunden or (unten > oben);
        
	writeln (gefunden);
	writeln ('Durchlaeufe: ', Durchlaeufe);

	{	Durchlaeufe := 0;
	gefunden := FALSE;
        unten := 1;
        oben := FELDGROESSE;
	repeat
	  Durchlaeufe := Durchlaeufe + 1;	
	  Mitte := (oben + unten) div 2;
	  if Suchwert > Feld[Mitte] then
	    unten := Mitte
	  else
	    oben := Mitte;
	  gefunden := (Feld[Mitte] = Suchwert) 
	until gefunden or (unten >= oben);
	writeln (gefunden);
	writeln ('Durchlaeufe: ', Durchlaeufe);
	}

	gefunden := false;
	unten := 1;
	Durchlaeufe := 0;
	oben := FELDGROESSE;
	while (unten < oben) and not gefunden do
	begin
	  Durchlaeufe := Durchlaeufe + 1;	
	  Mitte := (oben + unten) div 2;
	  if Suchwert = Feld[Mitte] then
	    gefunden := true
	  else
	    if Suchwert < Feld[Mitte] then
	      oben := Mitte - 1
	    else
	      unten := Mitte + 1
	end; 
	writeln (gefunden);
	writeln ('Durchlaeufe: ', Durchlaeufe);

	gefunden := false;
	Durchlaeufe := 0;
	unten := 1;
	oben := FELDGROESSE;
	while (unten <= oben) and not gefunden do
	begin
	  Durchlaeufe := Durchlaeufe + 1;	
	  Mitte := (oben + unten) div 2;
	  if Suchwert = Feld[Mitte] then
	    gefunden := true
	  else
	    if Suchwert < Feld[Mitte] then
	      oben := Mitte - 1
	    else
	      unten := Mitte + 1
	end; 
	writeln (gefunden);
	writeln ('Durchlaeufe: ', Durchlaeufe);

	unten := 1;
	Durchlaeufe := 0;
	oben := FELDGROESSE;
	repeat
	  Durchlaeufe := Durchlaeufe + 1;	
	  Mitte := (oben + unten) div 2;
	  if Suchwert <= Feld[Mitte] then
	    oben := Mitte - 1;
	  if Feld[Mitte] <= Suchwert then
	    unten := Mitte + 1;
	until (unten > oben);
	gefunden := (Feld[Mitte] = Suchwert);
	writeln (gefunden);
	writeln ('Durchlaeufe: ', Durchlaeufe)

end.
