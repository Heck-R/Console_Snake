program mozgkigyo;

uses crt;

const max=10000;

var c, p, b: char;
var x, y:integer;
var i, h, fo:integer;
var memx: array[1..max] of integer;
var memy: array[1..max] of integer;
var maxx, maxy:integer;
var xcsill, ycsill:integer;

procedure over;
var i:integer;
begin		//GAME OVER-------------------------------------------------
//1. sor
delay(100);
for i:=17 to 26 do
	begin
	gotoxy(i, 2);
	write('*');
	end;
for i:=34 to 34 do
	begin
	gotoxy(i, 2);
	write('*');
	end;
for i:=42 to 45 do
	begin
	gotoxy(i, 2);
	write('*');
	end;
for i:=49 to 52 do
	begin
	gotoxy(i, 2);
	write('*');
	end;
for i:=55 to 64 do
	begin
	gotoxy(i, 2);
	write('*');
	end;
//2. sor
delay(100);
for i:=17 to 26 do
	begin
	gotoxy(i, 3);
	write('*');
	end;
for i:=33 to 35 do
	begin
	gotoxy(i, 3);
	write('*');
	end;
for i:=42 to 46 do
	begin
	gotoxy(i, 3);
	write('*');
	end;
for i:=48 to 52 do
	begin
	gotoxy(i, 3);
	write('*');
	end;
for i:=55 to 64 do
	begin
	gotoxy(i, 3);
	write('*');
	end;
//3. sor
delay(100);
for i:=17 to 19 do
	begin
	gotoxy(i, 4);
	write('*');
	end;
for i:=26 to 26 do
	begin
	gotoxy(i, 4);
	write('*');
	end;
for i:=32 to 36 do
	begin
	gotoxy(i, 4);
	write('*');
	end;
for i:=42 to 43 do
	begin
	gotoxy(i, 4);
	write('*');
	end;
for i:=45 to 46 do
	begin
	gotoxy(i, 4);
	write('*');
	end;
for i:=48 to 49 do
	begin
	gotoxy(i, 4);
	write('*');
	end;
for i:=51 to 52 do
	begin
	gotoxy(i, 4);
	write('*');
	end;
for i:=55 to 56 do
	begin
	gotoxy(i, 4);
	write('*');
	end;
//4. sor
delay(100);
for i:=17 to 18 do
	begin
	gotoxy(i, 5);
	write('*');
	end;
for i:=32 to 33 do
	begin
	gotoxy(i, 5);
	write('*');
	end;
for i:=35 to 36 do
	begin
	gotoxy(i, 5);
	write('*');
	end;
for i:=42 to 43 do
	begin
	gotoxy(i, 5);
	write('*');
	end;
for i:=46 to 48 do
	begin
	gotoxy(i, 5);
	write('*');
	end;
for i:=51 to 52 do
	begin
	gotoxy(i, 5);
	write('*');
	end;
for i:=55 to 56 do
	begin
	gotoxy(i, 5);
	write('*');
	end;
//5.sor
delay(100);
for i:=17 to 18 do
	begin
	gotoxy(i, 6);
	write('*');
	end;
for i:=31 to 32 do
	begin
	gotoxy(i, 6);
	write('*');
	end;
for i:=36 to 37 do
	begin
	gotoxy(i, 6);
	write('*');
	end;
for i:=42 to 43 do
	begin
	gotoxy(i, 6);
	write('*');
	end;
for i:=47 to 47 do
	begin
	gotoxy(i, 6);
	write('*');
	end;
for i:=51 to 52 do
	begin
	gotoxy(i, 6);
	write('*');
	end;
for i:=55 to 63 do
	begin
	gotoxy(i, 6);
	write('*');
	end;
//6. sor
delay(100);
for i:=17 to 18 do
	begin
	gotoxy(i, 7);
	write('*');
	end;
for i:=23 to 26 do
	begin
	gotoxy(i, 7);
	write('*');
	end;
for i:=31 to 37 do
	begin
	gotoxy(i, 7);
	write('*');
	end;
for i:=42 to 43 do
	begin
	gotoxy(i, 7);
	write('*');
	end;
for i:=51 to 52 do
	begin
	gotoxy(i, 7);
	write('*');
	end;
for i:=55 to 63 do
	begin
	gotoxy(i, 7);
	write('*');
	end;
//7. sor
delay(100);
for i:=17 to 18 do
	begin
	gotoxy(i, 8);
	write('*');
	end;
for i:=24 to 26 do
	begin
	gotoxy(i, 8);
	write('*');
	end;
for i:=30 to 31 do
	begin
	gotoxy(i, 8);
	write('*');
	end;
for i:=32 to 36 do
	begin
	gotoxy(i, 8);
	write('*');
	end;
for i:=37 to 38 do
	begin
	gotoxy(i, 8);
	write('*');
	end;
for i:=42 to 43 do
	begin
	gotoxy(i, 8);
	write('*');
	end;
for i:=51 to 52 do
	begin
	gotoxy(i, 8);
	write('*');
	end;
for i:=55 to 56 do
	begin
	gotoxy(i, 8);
	write('*');
	end;
//8. sor
delay(100);
for i:=17 to 18 do
	begin
	gotoxy(i, 9);
	write('*');
	end;
for i:=25 to 26 do
	begin
	gotoxy(i, 9);
	write('*');
	end;
for i:=30 to 31 do
	begin
	gotoxy(i, 9);
	write('*');
	end;
for i:=37 to 38 do
	begin
	gotoxy(i, 9);
	write('*');
	end;
for i:=42 to 43 do
	begin
	gotoxy(i, 9);
	write('*');
	end;
for i:=51 to 52 do
	begin
	gotoxy(i, 9);
	write('*');
	end;
for i:=55 to 56 do
	begin
	gotoxy(i, 9);
	write('*');
	end;
//9. sor
delay(100);
for i:=17 to 26 do
	begin
	gotoxy(i, 10);
	write('*');
	end;
for i:=29 to 30 do
	begin
	gotoxy(i, 10);
	write('*');
	end;
for i:=38 to 39 do
	begin
	gotoxy(i, 10);
	write('*');
	end;
for i:=42 to 43 do
	begin
	gotoxy(i, 10);
	write('*');
	end;
for i:=51 to 52 do
	begin
	gotoxy(i, 10);
	write('*');
	end;
for i:=55 to 64 do
	begin
	gotoxy(i, 10);
	write('*');
	end;
//10. sor
delay(100);
for i:=17 to 26 do
	begin
	gotoxy(i, 11);
	write('*');
	end;
for i:=29 to 30 do
	begin
	gotoxy(i, 11);
	write('*');
	end;
for i:=38 to 39 do
	begin
	gotoxy(i, 11);
	write('*');
	end;
for i:=42 to 43 do
	begin
	gotoxy(i, 11);
	write('*');
	end;
for i:=51 to 52 do
	begin
	gotoxy(i, 11);
	write('*');
	end;
for i:=55 to 64 do
	begin
	gotoxy(i, 11);
	write('*');
	end;
//szó vége

//2. szó
//1. sor
delay(500);
for i:=18 to 24 do
	begin
	gotoxy(i, 15);
	write('*');
	end;
for i:=29 to 30 do
	begin
	gotoxy(i, 15);
	write('*');
	end;
for i:=38 to 39 do
	begin
	gotoxy(i, 15);
	write('*');
	end;
for i:=42 to 51 do
	begin
	gotoxy(i, 15);
	write('*');
	end;
for i:=54 to 61 do
	begin
	gotoxy(i, 15);
	write('*');
	end;
//2. sor
delay(100);
for i:=17 to 25 do
	begin
	gotoxy(i, 16);
	write('*');
	end;
for i:=29 to 30 do
	begin
	gotoxy(i, 16);
	write('*');
	end;
for i:=38 to 39 do
	begin
	gotoxy(i, 16);
	write('*');
	end;
for i:=42 to 51 do
	begin
	gotoxy(i, 16);
	write('*');
	end;
for i:=54 to 62 do
	begin
	gotoxy(i, 16);
	write('*');
	end;
//3. sor
delay(100);
for i:=16 to 18 do
	begin
	gotoxy(i, 17);
	write('*');
	end;
for i:=24 to 26 do
	begin
	gotoxy(i, 17);
	write('*');
	end;
for i:=30 to 31 do
	begin
	gotoxy(i, 17);
	write('*');
	end;
for i:=37 to 38 do
	begin
	gotoxy(i, 17);
	write('*');
	end;
for i:=42 to 43 do
	begin
	gotoxy(i, 17);
	write('*');
	end;
for i:=54 to 56 do
	begin
	gotoxy(i, 17);
	write('*');
	end;
for i:=60 to 63 do
	begin
	gotoxy(i, 17);
	write('*');
	end;
//4. sor
delay(100);
for i:=16 to 17 do
	begin
	gotoxy(i, 18);
	write('*');
	end;
for i:=25 to 26 do
	begin
	gotoxy(i, 18);
	write('*');
	end;
for i:=30 to 31 do
	begin
	gotoxy(i, 18);
	write('*');
	end;
for i:=37 to 38 do
	begin
	gotoxy(i, 18);
	write('*');
	end;
for i:=42 to 43 do
	begin
	gotoxy(i, 18);
	write('*');
	end;
for i:=54 to 56 do
	begin
	gotoxy(i, 18);
	write('*');
	end;
for i:=60 to 62 do
	begin
	gotoxy(i, 18);
	write('*');
	end;
//5. sor
delay(100);
for i:=16 to 17 do
	begin
	gotoxy(i, 19);
	write('*');
	end;
for i:=25 to 26 do
	begin
	gotoxy(i, 19);
	write('*');
	end;
for i:=31 to 32 do
	begin
	gotoxy(i, 19);
	write('*');
	end;
for i:=36 to 37 do
	begin
	gotoxy(i, 19);
	write('*');
	end;
for i:=42 to 50 do
	begin
	gotoxy(i, 19);
	write('*');
	end;
for i:=54 to 61 do
	begin
	gotoxy(i, 19);
	write('*');
	end;
//6. sor
delay(100);
for i:=16 to 17 do
	begin
	gotoxy(i, 20);
	write('*');
	end;
for i:=25 to 26 do
	begin
	gotoxy(i, 20);
	write('*');
	end;
for i:=31 to 32 do
	begin
	gotoxy(i, 20);
	write('*');
	end;
for i:=36 to 37 do
	begin
	gotoxy(i, 20);
	write('*');
	end;
for i:=42 to 50 do
	begin
	gotoxy(i, 20);
	write('*');
	end;
for i:=54 to 60 do
	begin
	gotoxy(i, 20);
	write('*');
	end;
//7. sor
delay(100);
for i:=16 to 17 do
	begin
	gotoxy(i, 21);
	write('*');
	end;
for i:=25 to 26 do
	begin
	gotoxy(i, 21);
	write('*');
	end;
for i:=32 to 33 do
	begin
	gotoxy(i, 21);
	write('*');
	end;
for i:=35 to 36 do
	begin
	gotoxy(i, 21);
	write('*');
	end;
for i:=42 to 43 do
	begin
	gotoxy(i, 21);
	write('*');
	end;
for i:=54 to 56 do
	begin
	gotoxy(i, 21);
	write('*');
	end;
for i:=58 to 61 do
	begin
	gotoxy(i, 21);
	write('*');
	end;
//8. sor
delay(100);
for i:=16 to 18 do
	begin
	gotoxy(i, 22);
	write('*');
	end;
for i:=24 to 26 do
	begin
	gotoxy(i, 22);
	write('*');
	end;
for i:=24 to 26 do
	begin
	gotoxy(i, 22);
	write('*');
	end;
for i:=32 to 36 do
	begin
	gotoxy(i, 22);
	write('*');
	end;
for i:=42 to 43 do
	begin
	gotoxy(i, 22);
	write('*');
	end;
for i:=54 to 56 do
	begin
	gotoxy(i, 22);
	write('*');
	end;
for i:=60 to 62 do
	begin
	gotoxy(i, 22);
	write('*');
	end;
//9. sor
delay(100);
for i:=17 to 25 do
	begin
	gotoxy(i, 23);
	write('*');
	end;
for i:=33 to 35 do
	begin
	gotoxy(i, 23);
	write('*');
	end;
for i:=42 to 51 do
	begin
	gotoxy(i, 23);
	write('*');
	end;
for i:=54 to 56 do
	begin
	gotoxy(i, 23);
	write('*');
	end;
for i:=61 to 63 do
	begin
	gotoxy(i, 23);
	write('*');
	end;
//10. sor
for i:=18 to 24 do
	begin
	gotoxy(i, 24);
	write('*');
	end;
for i:=34 to 34 do
	begin
	gotoxy(i, 24);
	write('*');
	end;
for i:=42 to 51 do
	begin
	gotoxy(i, 24);
	write('*');
	end;
for i:=54 to 56 do
	begin
	gotoxy(i, 24);
	write('*');
	end;
for i:=62 to 64 do
	begin
	gotoxy(i, 24);
	write('*');
	end;
//vége
writeln;
end;		//GAME OVER-------------------------------------------------


procedure palya;
var i:integer;
begin		//Palya-----------------------------------------------------
for i:=1 to 38 do
	begin
	write('%');
	end;

gotoxy(1, 1);

for i:=1 to 24 do
	begin
	writeln('%');
	end;
write('%');

for i:=1 to 38 do
	begin
	write('%');
	end;

for i:=1 to 24 do
	begin
	gotoxy(39, i);
	writeln('%');
	end;

end;		//Palya-----------------------------------------------------


procedure nyil(startx:integer; starty:integer);
begin		//Nyil------------------------------------------------------
gotoxy(startx, starty);
write('**');
gotoxy(startx+1, starty+1);
write('**');
gotoxy(startx+2, starty+2);
write('**');
gotoxy(startx+1, starty+3);
write('**');
gotoxy(startx, starty+4);
write('**');
end;


procedure start(startx:integer; starty:integer);
begin		//START-----------------------------------------------------
//S
gotoxy(startx, starty);
write('*****');
gotoxy(startx, starty+1);
write('*');
gotoxy(startx, starty+2);
write('*****');
gotoxy(startx+4, starty+3);
write('*');
gotoxy(startx, starty+4);
write('*****');
//T
gotoxy(startx+6, starty);
write('*****');
gotoxy(startx+8, starty+1);
write('*');
gotoxy(startx+8, starty+2);
write('*');
gotoxy(startx+8, starty+3);
write('*');
gotoxy(startx+8, starty+4);
write('*');
//A
gotoxy(startx+14, starty);
write('*');
gotoxy(startx+13, starty+1);
write('***');
gotoxy(startx+13, starty+2);
write('*');
gotoxy(startx+15, starty+2);
write('*');
gotoxy(startx+12, starty+3);
write('*****');
gotoxy(startx+12, starty+4);
write('*');
gotoxy(startx+16, starty+4);
write('*');
//R
gotoxy(startx+18, starty);
write('***');
gotoxy(startx+18, starty+1);
write('*');
gotoxy(startx+20, starty+1);
write('**');
gotoxy(startx+18, starty+2);
write('***');
gotoxy(startx+18, starty+3);
write('*');
gotoxy(startx+20, starty+3);
write('*');
gotoxy(startx+18, starty+4);
write('*');
gotoxy(startx+21, starty+4);
write('*');
//T
gotoxy(startx+23, starty);
write('*****');
gotoxy(startx+25, starty+1);
write('*');
gotoxy(startx+25, starty+2);
write('*');
gotoxy(startx+25, starty+3);
write('*');
gotoxy(startx+25, starty+4);
write('*');
end;


procedure options(startx:integer; starty:integer);
begin		//OPTIONS---------------------------------------------------
//O
gotoxy(startx+1, starty);
write('***');
gotoxy(startx, starty+1);
write('**');
gotoxy(startx+3, starty+1);
write('**');
gotoxy(startx, starty+2);
write('*');
gotoxy(startx+4, starty+2);
write('*');
gotoxy(startx, starty+3);
write('**');
gotoxy(startx+3, starty+3);
write('**');
gotoxy(startx+1, starty+4);
write('***');
//P
gotoxy(startx+6, starty);
write('***');
gotoxy(startx+6, starty+1);
write('*');
gotoxy(startx+8, starty+1);
write('**');
gotoxy(startx+6, starty+2);
write('***');
gotoxy(startx+6, starty+3);
write('*');
gotoxy(startx+6, starty+4);
write('*');
//T
gotoxy(startx+11, starty);
write('*****');
gotoxy(startx+13, starty+1);
write('*');
gotoxy(startx+13, starty+2);
write('*');
gotoxy(startx+13, starty+3);
write('*');
gotoxy(startx+13, starty+4);
write('*');
//I
gotoxy(startx+17, starty);
write('***');
gotoxy(startx+18, starty+1);
write('*');
gotoxy(startx+18, starty+2);
write('*');
gotoxy(startx+18, starty+3);
write('*');
gotoxy(startx+17, starty+4);
write('***');
//O
gotoxy(startx+22, starty);
write('***');
gotoxy(startx+21, starty+1);
write('**');
gotoxy(startx+24, starty+1);
write('**');
gotoxy(startx+21, starty+2);
write('*');
gotoxy(startx+25, starty+2);
write('*');
gotoxy(startx+21, starty+3);
write('**');
gotoxy(startx+24, starty+3);
write('**');
gotoxy(startx+22, starty+4);
write('***');
//N
gotoxy(startx+27, starty);
write('**');
gotoxy(startx+31, starty);
write('*');
gotoxy(startx+27, starty+1);
write('***');
gotoxy(startx+31, starty+1);
write('*');
gotoxy(startx+27, starty+2);
write('*');
gotoxy(startx+29, starty+2);
write('*');
gotoxy(startx+31, starty+2);
write('*');
gotoxy(startx+27, starty+3);
write('*');
gotoxy(startx+29, starty+3);
write('***');
gotoxy(startx+27, starty+4);
write('*');
gotoxy(startx+30, starty+4);
write('**');
//S
gotoxy(startx+33, starty);
write('*****');
gotoxy(startx+33, starty+1);
write('*');
gotoxy(startx+33, starty+2);
write('*****');
gotoxy(startx+37, starty+3);
write('*');
gotoxy(startx+33, starty+4);
write('*****');
end;




BEGIN
repeat
begin		//alap------------------------------------------------------
clrscr;
randomize;

fo:=2;
palya;
x:=10;
y:=10;
memx[1]:=x;
memy[1]:=y;
gotoxy(x, y);
write('*');

c:=readkey;

maxx:=5;
maxy:=5;

repeat
xcsill:=random(36)+2;
ycsill:=random(23)+2;
until (xcsill<>x) and (ycsill<>y);
gotoxy(xcsill, ycsill);
write('@');

gotoxy(x, y);
end;		//alap------------------------------------------------------









if (fo=1) then
begin		//beállítások-----------------------------------------------

end;		//beállítások-----------------------------------------------








if (fo=2) then
begin		//mozgás----------------------------------------------------
REPEAT
if keypressed 
	then begin
		 c:=readkey;
		 if (c<>'p') then p:=c;
		 end;


if c='p' 
	then begin
		 readkey;
		 c:=p
		 end;


case ord(c) of
72: y:=y-1;	(*fel*)
80: y:=y+1;	(*le*)
77: x:=x+1;	(*jobb*)
75: x:=x-1;	(*bal*)
end;


for i:=max downto 2 do
begin
memx[i]:=memx[i-1];
memy[i]:=memy[i-1];
end;
memx[1]:=x;
memy[1]:=y;


for i:=2 to maxx do
	begin
	if (x=memx[i]) and (y=memy[i])
		then begin
			 x:=1;
			 y:=25;
			 end;
	end;


if (x<2) or (x>38) or (y<2) or(y>24)
	then begin
		 clrscr;
		 over;
		 c:='v';
		 end
	else begin;
		 if (x=xcsill) and (y=ycsill)
			then begin
				 maxx:=maxx+1;
				 maxy:=maxy+1;
				 repeat
				 for i:=1 to maxx do
					begin
					h:=1;
					if (xcsill=memx[i]) and (ycsill=memy[i])
						then begin
							 h:=0;
							 xcsill:=random(36)+2;
							 ycsill:=random(23)+2;
							 end;
					end;
				 until h=1;
				 gotoxy(xcsill, ycsill);
				 write('@');
				 gotoxy(x, y);
				 end
			else begin 
				 gotoxy(memx[maxx], memy[maxy]);
				 write(' ');
				 end;
		 end;

if not (x<2) and not (y<2) and not (x>38) and not (y>24)
	then begin
		 gotoxy(x, y);
		 write('*');
		 delay(100);
		 end;


if not (c in ['v', 'V'])
then begin
	 if keypressed 
		then begin
			 c:=readkey 
			 end;
	 end;
UNTIL (c in['v', 'V']); 
end;		//mozgás----------------------------------------------------


if (fo=2) then
begin		//várakozás-------------------------------------------------
gotoxy(1, 25);
if keypressed 
	then begin
		 repeat
		 b:=readkey;
		 b:=b;
		 until (not keypressed);
		 end;
b:=readkey;
end;		//várakozás-------------------------------------------------

until fo=10;


gotoxy(1, 25);
END.
