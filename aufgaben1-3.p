program aufgaben1_3;
var
        a, b, c, d, e, f, g: integer;
begin
        a:=4;
        b:=2;
        c:=4;
        d:=1;
        e:=0;
        g:=100;
        f:=50;
        if(a<b) and (c<d) then
                e:=f
        else
                e:=g;
        WriteLn(e);
	e := f;
	if not (a < b) then
	  e := g;
	if not (c < d) then
	  e := g;
	WriteLn(e);
	if (a >= b) or (c >= d) then
	  e := g
	else
	  e := f;
	WriteLn(e);
	e := g;
	if a < b then
	  e := f;
	if c < d then
	  e := f;
	WriteLn(e);
	if a < b then
	  if c < d then
	    e := f
	  else
	    e := g;		
	WriteLn(e);
	e := g;
	if not (a >= b) then
	  e := f;
	if c < d then
	  e := f;
	WriteLn(e)
end.
