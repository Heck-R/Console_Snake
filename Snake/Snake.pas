program mozgkigyo;

uses crt;

const max=10000;

var harveg, opt:boolean;
var c, b, omozg, nul:char;
var otart, oel, gyor:integer;
var ohosz:integer;
var mag, szel:integer;
var x, y:integer;
var m, m2:integer;
var mozg:char;
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


procedure palya(mag:integer; szel:integer);
var i:integer;
begin		//Palya-----------------------------------------------------
gotoxy(1, 1);
for i:=1 to szel do
	begin
	write('%');
	end;

gotoxy(1, 1);
for i:=1 to mag do
	begin
	gotoxy(1, i);
	write('%');
	end;

for i:=1 to szel-1 do
	begin
	write('%');
	end;

for i:=1 to mag-1 do
	begin
	gotoxy(szel, i);
	write('%');
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
end;		//Nyil------------------------------------------------------


procedure nyilur(startx:integer; starty:integer);
begin		//Nyilur----------------------------------------------------
gotoxy(startx, starty);
write('  ');
gotoxy(startx+1, starty+1);
write('  ');
gotoxy(startx+2, starty+2);
write('  ');
gotoxy(startx+1, starty+3);
write('  ');
gotoxy(startx, starty+4);
write('  ');
end;		//Nyilur----------------------------------------------------


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
end;		//START-----------------------------------------------------


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
end;		//OPTIONS---------------------------------------------------


procedure exit(startx:integer; starty:integer);
begin		//EXIT------------------------------------------------------
//E
gotoxy(startx, starty);
write('****');
gotoxy(startx, starty+1);
write('*');
gotoxy(startx, starty+2);
write('****');
gotoxy(startx, starty+3);
write('*');
gotoxy(startx, starty+4);
write('****');
//X
gotoxy(startx+5, starty);
write('*');
gotoxy(startx+9, starty);
write('*');
gotoxy(startx+5, starty+1);
write('**');
gotoxy(startx+8, starty+1);
write('**');
gotoxy(startx+6, starty+2);
write('***');
gotoxy(startx+5, starty+3);
write('**');
gotoxy(startx+8, starty+3);
write('**');
gotoxy(startx+5, starty+4);
write('*');
gotoxy(startx+9, starty+4);
write('*');
//I
gotoxy(startx+11, starty);
write('***');
gotoxy(startx+12, starty+1);
write('*');
gotoxy(startx+12, starty+2);
write('*');
gotoxy(startx+12, starty+3);
write('*');
gotoxy(startx+11, starty+4);
write('***');
//T
gotoxy(startx+15, starty);
write('*****');
gotoxy(startx+17, starty+1);
write('*');
gotoxy(startx+17, starty+2);
write('*');
gotoxy(startx+17, starty+3);
write('*');
gotoxy(startx+17, starty+4);
write('*');
end;		//EXIT------------------------------------------------------




BEGIN
begin		//rögzítés--------------------------------------------------
randomize;
cursoroff;
gyor:=3;
mag:=25;
szel:=38;
ohosz:=6;
memx[1]:=mag+1;
memy[1]:=mag+1;

end;		//rögzítés--------------------------------------------------
repeat
begin		//előkészítés-----------------------------------------------
clrscr;
fo:=3;
end;		//előkészítés-----------------------------------------------




if (fo=3) then
begin		//MAIN MENU-------------------------------------------------
clrscr;
m:=1;
mozg:='a';
start(27, 4);
options(22, 11);
exit(31, 18);
nyil(21, 4);
harveg:=false;

repeat

if keypressed 
	then begin
		 mozg:=readkey;
		 end;
if (ord(mozg)=13) then harveg:=true;
m2:=m;

case ord(mozg) of
72: m:=m-1;	(*fel*)
80: m:=m+1;	(*le*)
end;

if m=0 then m:=1;
if m=4 then m:=3;

if m<>m2
	then begin
		 if m2=1 then nyilur(21, 4);
		 if m2=2 then nyilur(16, 11);
		 if m2=3 then nyilur(25, 18);
		 
		 if m=1 then nyil(21, 4);
		 if m=2 then nyil(16, 11);
		 if m=3 then nyil(25, 18);
		 end;


if (m=1) and (ord(mozg)=13) then fo:=1;
if (m=2) and (ord(mozg)=13) then fo:=2;
if (m=3) and (ord(mozg)=13) then fo:=10;

mozg:='a';

if keypressed 
	then begin
		 mozg:=readkey;
		 end;


until harveg;

clrscr;
end;		//MAIN MENU-------------------------------------------------








if (fo=2) then
begin		//beállítások-----------------------------------------------
clrscr;
omozg:='a';
otart:=1;
oel:=otart;

gotoxy(1, 1);
write('Options|');
gotoxy(1, 2);
write('--------');

gotoxy(1, 5);
write('> Field size');
begin

end;
gotoxy(3, 7);
write('Start poz');
begin

end;
gotoxy(3, 9);
write('Snake length   < 5 >');
begin
gotoxy(20, 9);
write(ohosz, ' >');
end;
gotoxy(3, 11);
write('Speed   < normal >');
begin
if gyor=1
	then begin
		 gotoxy(13, 11);
		 write('very slow >');
		 end;
 
if gyor=2
	then begin
		 gotoxy(13, 11);
		 write('slow >      ');
		 end;
 
if gyor=3
	then begin
		 gotoxy(13, 11);
		 write('normal >      ');
		 end;
 
if gyor=4
	then begin
		 gotoxy(13, 11);
		 write('fast >      ');
		 end;
 
if gyor=5
	then begin
		 gotoxy(13, 11);
		 write('very fast >');
		 end;
end;
gotoxy(3, 21);
write('reset');
gotoxy(3, 23);
write('MAIN MENU');


repeat
if keypressed 
	then begin
		 omozg:=readkey;
		 end;

case ord(omozg) of
72: otart:=otart-1;	(*fel*)
80: otart:=otart+1;	(*le*)
end;

if (otart>6) then otart:=6;
if (otart<1) then otart:=1;


if otart<>oel
	then begin
		 gotoxy(1, 5);
		 writeln(' ');
		 gotoxy(1, 7);
		 writeln(' ');
		 gotoxy(1, 9);
		 write(' ');
		 gotoxy(1, 11);
		 write(' ');
		 gotoxy(1, 21);
		 write(' ');
		 gotoxy(1, 23);
		 write(' ');

		 if (otart=1) or (otart=2) or (otart=3) or (otart=4)
			then begin
				 gotoxy(1, 3+(otart*2));
				 write('>');
				 end;

		 if otart=5
			then begin
				 gotoxy(1, 21);
				 write('>');
				 end;
		 if otart=6
			then begin
				 gotoxy(1, 23);
				 write('>');
				 end;
		 		 
		 end;

if (ord(omozg)=13) and (otart=1)
	then begin
		 ////////////////////////////////////
		 end;

if (ord(omozg)=13) and (otart=2)
	then begin
		 ///////////////////////////////////
		 end;

if ((ord(omozg)=77) or (ord(omozg)=75)) and (otart=3)
	then begin
		 case ord(omozg) of
		 77: ohosz:=ohosz+1;	(*jobb*)
		 75: ohosz:=ohosz-1;	(*bal*)
		 end;
		 if ohosz<1 then ohosz:=(((szel-2)*(mag-2))-1);
		 if ohosz>((szel-2)*(mag-2)) then ohosz:=1;
		 
				 begin
				 gotoxy(20, 9);
				 write(ohosz-1, ' >  ');
				 end;
		 end;

if ((ord(omozg)=77) or (ord(omozg)=75)) and (otart=4)
	then begin
		 case ord(omozg) of
		 77: gyor:=gyor+1;	(*jobb*)
		 75: gyor:=gyor-1;	(*bal*)
		 end;
		 
		 if gyor<1 then gyor:=1;
		 if gyor>5 then gyor:=5;
		 
		 if gyor=1
			then begin
				 gotoxy(13, 11);
				 write('very slow >');
				 end;
		 
		 if gyor=2
			then begin
				 gotoxy(13, 11);
				 write('slow >      ');
				 end;
		 
		 if gyor=3
			then begin
				 gotoxy(13, 11);
				 write('normal >      ');
				 end;
		 
		 if gyor=4
			then begin
				 gotoxy(13, 11);
				 write('fast >      ');
				 end;
		 
		 if gyor=5
			then begin
				 gotoxy(13, 11);
				 write('very fast >');
				 end;
		 end;

if (ord(omozg)=13) and (otart=5)
	then begin
		 ///////////////////////////////////////
		 end;

if (ord(omozg)=13) and (otart=6)
	then begin
		 opt:=true;
		 fo:=3;
		 end;

oel:=otart;
omozg:='a';

if keypressed 
	then begin
		 omozg:=readkey;
		 end;

until opt;
opt:=false;
end;		//beállítások-----------------------------------------------



if (fo=1) then
begin		//alap------------------------------------------------------
palya(mag, szel);
x:=(szel div 2);
y:=(mag div 2);
memx[1]:=x;
memy[1]:=y;
gotoxy(x, y);
write('*');

maxx:=ohosz;
maxy:=ohosz;

for i:=2 to ohosz do
	begin
	memx[i]:=x;
	memy[i]:=y;
	end;

repeat
c:=readkey;
until(ord(c)=80) or (ord(c)=77) or (ord(c)=75) or (ord(c)=72);

repeat
xcsill:=random(szel-2)+2;
ycsill:=random(mag-2)+2;
until (xcsill<>x) and (ycsill<>y);
gotoxy(xcsill, ycsill);
write('@');

gotoxy(x, y);
end;		//alap------------------------------------------------------




if (fo=1) then
begin		//mozgás----------------------------------------------------

REPEAT
if keypressed 
	then begin
		 nul:=readkey;
		 
		 if (ord(nul)=0) 
			then begin
				 c:=readkey;
				 end;
		 if (nul='p')
			then begin
				 readkey;
				 end;
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
			 y:=1;
			 end;
	end;


if (x<2) or (x>szel-1) or (y<2) or(y>mag-1)
	then begin
		 clrscr;
		 over;
		 c:='v';
		 for i:=1 to max do
		 begin
		 memx[i]:=szel+1;
		 memy[i]:=mag+1;
		 end;
		 end
	else begin;
		 if (x=xcsill) and (y=ycsill)
			then begin
				 maxx:=maxx+1;
				 maxy:=maxy+1;
				 repeat
				 h:=1;
				 for i:=1 to maxx do
					begin
					if (xcsill=memx[i]) and (ycsill=memy[i])
						then begin
							 h:=0;
							 xcsill:=random(szel-2)+2;
							 ycsill:=random(mag-2)+2;
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


if not (x<2) and not (y<2) and not (x>szel-1) and not (y>mag-1)
	then begin
		 gotoxy(x, y);
		 write('*');
		 
		 if (gyor=1) then delay(500);
		 if (gyor=2) then delay(200);
		 if (gyor=3) then delay(100);
		 if (gyor=4) then delay(50);
		 if (gyor=5) then delay(25);
		 end;


if not (c in ['v', 'V'])
then begin
	 if keypressed 
		then begin
			 nul:=readkey;
			 if (ord(nul)=0)
				then begin
					 c:=readkey; 
					 end;
			 if (nul='p')
				then begin
					 readkey;
					 end;
			 end;
	 end;
UNTIL (c in['v', 'V']); 
end;		//mozgás----------------------------------------------------


if (fo=1) then
begin		//várakozás-------------------------------------------------
gotoxy(1, mag);
if keypressed 
	then begin
		 repeat
		 b:=readkey;
		 b:=b;
		 until (not keypressed);
		 end;
b:=readkey;
fo:=3;
end;		//várakozás-------------------------------------------------

until fo=10;


gotoxy(1, mag);
END.
