program mozgkigyo;

uses crt;

const max=10000;

var harveg, opt:boolean;
var c, p, b, omozg: char;
var otart, oel:integer;
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
randomize;
cursoroff;
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
gotoxy(3, 7);
write('Snake length   < 5 >');
gotoxy(3, 9);
write('Speed   < normal >');

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

if (otart>4) then otart:=4;
if (otart<1) then otart:=1;


if otart<>oel
	then begin
		 if oel=1 	//töröl
			then begin
				 gotoxy(1, 5);
				 write(' ');
				 end;
		 if oel=2
			then begin
				 gotoxy(1, 7);
				 write(' ');
				 end;
		 if oel=3 
			then begin
				 gotoxy(1, 9);
				 write(' ');
				 end;
		 if oel=4 
			then begin
				 gotoxy(1, 23);
				 write(' ');
				 end;	//töröl
		 
		 
		 if otart=1 	//ír
			then begin
				 gotoxy(1, 5);
				 write('>');
				 end;
		 if otart=2
			then begin
				 gotoxy(1, 7);
				 write('>');
				 end;
		 if otart=3 
			then begin
				 gotoxy(1, 9);
				 write('>');
				 end;
		 if otart=4 
			then begin
				 gotoxy(1, 23);
				 write('>');
				 end;	//ír
		 		 
		 end;

if (ord(omozg)=13) and (otart=4)
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
opt:=false
end;		//beállítások-----------------------------------------------



if (fo=1) then
begin		//alap------------------------------------------------------
palya;
x:=10;
y:=10;
memx[1]:=x;
memy[1]:=y;
gotoxy(x, y);
write('*');

maxx:=5;
maxy:=5;

c:=readkey;

repeat
xcsill:=random(36)+2;
ycsill:=random(23)+2;
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


if (fo=1) then
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
fo:=3;
end;		//várakozás-------------------------------------------------

until fo=10;


gotoxy(1, 25);
END.
