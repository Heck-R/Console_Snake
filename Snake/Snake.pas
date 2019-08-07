program funkcio;
uses crt;
var c: char;
var x, y:integer;
var x2, x3, x4, x5, x6:integer;
var y2, y3, y4, y5, y6:integer;

begin	
x:=20;
y:=10;
gotoxy(x, y);
write('*');
x2:=20;
x3:=20;
x4:=20;
x5:=20;
x6:=20;
y2:=10;
y3:=10;
y4:=10;
y5:=10;
y6:=10;


	repeat
		
		c:=readkey;
		clrscr;
		
		if ord(c)=0
			then begin
				 c:=readkey;
				 case ord(c) of
				 72: y:=y-1;	//fel
				 80: y:=y+1;	//le
				 77: x:=x+1;	//jobb
				 75: x:=x-1;	//bal
				 end;
				 end;
		
		if (x<1) or (x>80) or (y<1) or(y>25)
		then begin
			 
			 end
		else begin;
			 x6:=x5;
			 x5:=x4;
			 x4:=x3;
			 x3:=x2;
			 x2:=x;
			 
			 y6:=y5;
			 y5:=y4;
			 y4:=y3;
			 y3:=y2;
			 y2:=y;
			 end;
		
		if x < 1 then x:=1;
		if x > 80 then x:=80;
		if y < 1 then y:=1;
		if y > 25 then y:=25;
		
		gotoxy(x6, y6);
		write('*');
		
		gotoxy(x5, y5);
		write('*');
		
		gotoxy(x4, y4);
		write('*');
		
		gotoxy(x3, y3);
		write('*');
		
		gotoxy(x2, y2);
		write('*');
		
		gotoxy(x, y);
		write('*');
		
		
		
	until (c in['v', 'V']); 
	
end.
