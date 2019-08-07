program mozgkigyo;

uses crt;

const max=20;

var c: char;
var x, y:integer;
var i, j, k:integer;
var xt: array[2..max] of integer;
var yt: array[2..max] of integer;

begin	
x:=10;
y:=10;
gotoxy(x, y);
write('*');
for i:=2 to max do
	begin
	xt[i]:=10;
	yt[i]:=10;
	end;
c:=readkey;

	repeat
		
		
		clrscr;
		
		if keypressed 
			then begin
				 c:=readkey 
				 end;
		
				 case ord(c) of
				 72: y:=y-1;	//fel
				 80: y:=y+1;	//le
				 77: x:=x+1;	//jobb
				 75: x:=x-1;	//bal
				 end;
		
		
		
		if (x<1) or (x>80) or (y<1) or(y>25)
		then begin
			 
			 end
		else begin;
			 
			 for j:=max downto 3 do
			 begin
			 xt[j]:=xt[j-1];
			 yt[j]:=yt[j-1];
			 end;
			 
			 xt[2]:=x;
			 
			 yt[2]:=y;
			 end;
		
		if x < 1 then x:=1;
		if x > 80 then x:=80;
		if y < 1 then y:=1;
		if y > 25 then y:=25;
		
		for k:=max downto 2 do
		begin
		gotoxy(xt[k], yt[k]);
		write('*');
		end;

		gotoxy(x, y);
		write('*');
		
		delay(100);
		
		if keypressed 
			then begin
				 c:=readkey 
				 end;
		
	until (c in['v', 'V']); 
	
end.
