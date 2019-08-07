program mozgkigyo;

uses crt;

const max=10000;

var harveg, opt:boolean;
var omozg, pmozg, spmozg:char;
var cel, pel:char;
var c, b, nul:char;
var score, coll:integer;
var otart, oel, gyor:integer;
var ohosz, lepes:integer;
var mag, szel:integer;
var x, y, xel, yel:integer;
var xarany, yarany:real;
var m, m2:integer;
var mozg:char;
var i, h, fo:integer;
var memx: array[1..max] of integer;
var memy: array[1..max] of integer;
var maxx, maxy:integer;
var xcsill, ycsill:integer;

procedure over;
begin		//GAME OVER-------------------------------------------------
//1. sor
delay(100);
gotoxy(17, 7);
write('**********');
gotoxy(34, 7);
write('*');
gotoxy(42, 7);
write('****');
gotoxy(49, 7);
write('****');
gotoxy(55, 7);
write('**********');
//2. sor
delay(100);
gotoxy(17, 8);
write('**********');
gotoxy(33, 8);
write('***');
gotoxy(42, 8);
write('*****');
gotoxy(48, 8);
write('*****');
gotoxy(55, 8);
write('**********');
//3. sor
delay(100);
gotoxy(17, 9);
write('***');
gotoxy(26, 9);
write('*');
gotoxy(32, 9);
write('*****');
gotoxy(42, 9);
write('**');
gotoxy(45, 9);
write('**');
gotoxy(48, 9);
write('**');
gotoxy(51, 9);
write('**');
gotoxy(55, 9);
write('**');
//4. sor
delay(100);
gotoxy(17, 10);
write('**');
gotoxy(32, 10);
write('**');
gotoxy(35, 10);
write('**');
gotoxy(42, 10);
write('**');
gotoxy(46, 10);
write('***');
gotoxy(51, 10);
write('**');
gotoxy(55, 10);
write('**');
//5.sor
delay(100);
gotoxy(17, 11);
write('**');
gotoxy(31, 11);
write('**');
gotoxy(36, 11);
write('**');
gotoxy(42, 11);
write('**');
gotoxy(47, 11);
write('*');
gotoxy(51, 11);
write('**');
gotoxy(55, 11);
write('*********');
//6. sor
delay(100);
gotoxy(17, 12);
write('**');
gotoxy(23, 12);
write('****');
gotoxy(31, 12);
write('*******');
gotoxy(42, 12);
write('**');
gotoxy(51, 12);
write('**');
gotoxy(55, 12);
write('*********');
//7. sor
delay(100);
gotoxy(17, 13);
write('**');
gotoxy(24, 13);
write('***');
gotoxy(30, 13);
write('**');
gotoxy(32, 13);
write('*****');
gotoxy(37, 13);
write('**');
gotoxy(42, 13);
write('**');
gotoxy(51, 13);
write('**');
gotoxy(55, 13);
write('**');
//8. sor
delay(100);
gotoxy(17, 14);
write('**');
gotoxy(25, 14);
write('**');
gotoxy(30, 14);
write('**');
gotoxy(37, 14);
write('**');
gotoxy(42, 14);
write('**');
gotoxy(51, 14);
write('**');
gotoxy(55, 14);
write('**');
//9. sor
delay(100);
gotoxy(17, 15);
write('**********');
gotoxy(29, 15);
write('**');
gotoxy(38, 15);
write('**');
gotoxy(42, 15);
write('**');
gotoxy(51, 15);
write('**');
gotoxy(55, 15);
write('**********');
//10. sor
delay(100);
gotoxy(17, 16);
write('**********');
gotoxy(29, 16);
write('**');
gotoxy(38, 16);
write('**');
gotoxy(42, 16);
write('**');
gotoxy(51, 16);
write('**');
gotoxy(55, 16);
write('**********');
//szó vége

//2. szó
//1. sor
delay(500);
gotoxy(18, 20);
write('*******');
gotoxy(29, 20);
write('**');
gotoxy(38, 20);
write('**');
gotoxy(42, 20);
write('**********');
gotoxy(54, 20);
write('********');
//2. sor
delay(100);
gotoxy(17, 21);
write('*********');
gotoxy(29, 21);
write('**');
gotoxy(38, 21);
write('**');
gotoxy(42, 21);
write('**********');
gotoxy(54, 21);
write('*********');
//3. sor
delay(100);
gotoxy(16, 22);
write('***');
gotoxy(24, 22);
write('***');
gotoxy(30, 22);
write('**');
gotoxy(37, 22);
write('**');
gotoxy(42, 22);
write('**');
gotoxy(54, 22);
write('***');
gotoxy(60, 22);
write('****');
//4. sor
delay(100);
gotoxy(16, 23);
write('**');
gotoxy(25, 23);
write('**');
gotoxy(30, 23);
write('**');
gotoxy(37, 23);
write('**');
gotoxy(42, 23);
write('**');
gotoxy(54, 23);
write('***');
gotoxy(60, 23);
write('***');
//5. sor
delay(100);
gotoxy(16, 24);
write('**');
gotoxy(25, 24);
write('**');
gotoxy(31, 24);
write('**');
gotoxy(36, 24);
write('**');
gotoxy(42, 24);
write('*********');
gotoxy(54, 24);
write('********');
//6. sor
delay(100);
gotoxy(16, 25);
write('**');
gotoxy(25, 25);
write('**');
gotoxy(31, 25);
write('**');
gotoxy(36, 25);
write('**');
gotoxy(42, 25);
write('*********');
gotoxy(54, 25);
write('*******');
//7. sor
delay(100);
gotoxy(16, 26);
write('**');
gotoxy(25, 26);
write('**');
gotoxy(32, 26);
write('**');
gotoxy(35, 26);
write('**');
gotoxy(42, 26);
write('**');
gotoxy(54, 26);
write('***');
gotoxy(58, 26);
write('***');
//8. sor
delay(100);
gotoxy(16, 27);
write('***');
gotoxy(24, 27);
write('***');
gotoxy(32, 27);
write('*****');
gotoxy(42, 27);
write('**');
gotoxy(54, 27);
write('***');
gotoxy(60, 27);
write('***');
//9. sor
delay(100);
gotoxy(17, 28);
write('*********');
gotoxy(33, 28);
write('***');
gotoxy(42, 28);
write('**********');
gotoxy(54, 28);
write('***');
gotoxy(61, 28);
write('***');
//10. sor
gotoxy(18, 29);
write('*******');
gotoxy(34, 29);
write('*');
gotoxy(42, 29);
write('**********');
gotoxy(54, 29);
write('***');
gotoxy(62, 29);
write('***');
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


procedure minigame(x:integer; y:integer);
begin       //MINIGAME--------------------------------------------------
//G
gotoxy(x, y);
write('*****');
gotoxy(x, y+1);
write('** **');
gotoxy(x, y+2);
write('*');
gotoxy(x, y+3);
write('*  **');
gotoxy(x, y+4);
write('**  *');
gotoxy(x, y+5);
write('*****');
//A
gotoxy(x+6, y);
write('  *  ');
gotoxy(x+6, y+1);
write(' *** ');
gotoxy(x+6, y+2);
write(' * * ');
gotoxy(x+6, y+3);
write('*****');
gotoxy(x+6, y+4);
write('*   *');
gotoxy(x+6, y+5);
write('*   *');
//M
gotoxy(x+12, y);
write('*   *');
gotoxy(x+12, y+1);
write('** **');
gotoxy(x+12, y+2);
write('* * *');
gotoxy(x+12, y+3);
write('*   *');
gotoxy(x+12, y+4);
write('*   *');
gotoxy(x+12, y+5);
write('*   *');
//E
gotoxy(x+18, y);
write('****');
gotoxy(x+18, y+1);
write('*');
gotoxy(x+18, y+2);
write('***');
gotoxy(x+18, y+3);
write('***');
gotoxy(x+18, y+4);
write('*');
gotoxy(x+18, y+5);
write('****');
end;        //MINIGAME--------------------------------------------------



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
x:=((szel div 2)+1);
y:=((mag div 2)+1);
xel:=x;
yel:=y;
xarany:=2;
yarany:=2;
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
start(27, 8);
options(22, 16);
exit(31, 24);
nyil(21, 8);
harveg:=false;

repeat
mozg:=readkey;

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
		 if m2=1 then nyilur(21, 8);
		 if m2=2 then nyilur(16, 16);
		 if m2=3 then nyilur(25, 24);
		 
		 if m=1 then nyil(21, 8);
		 if m=2 then nyil(16, 16);
		 if m=3 then nyil(25, 24);
		 end;


if (m=1) and (ord(mozg)=13) then fo:=1;
if (m=2) and (ord(mozg)=13) then fo:=2;
if (m=3) and (ord(mozg)=13) then fo:=10;

mozg:='a';

until harveg;

clrscr;
end;		//MAIN MENU-------------------------------------------------









if (fo=2) then
begin		//beállítások-----------------------------------------------
clrscr;
pmozg:='a';
pel:=pmozg;
omozg:='a';
otart:=1;
oel:=otart;

gotoxy(1, 1);
write('Options|');
gotoxy(1, 2);
write('--------');

gotoxy(1, 5);
write('> Field size:  25x38     ');
begin
gotoxy(16, 5);
write(mag, 'x', szel, '     ');
end;
gotoxy(3, 7);
write('Start poz');
begin

end;
gotoxy(3, 9);
write('Snake length   < 5 >');
begin
gotoxy(20, 9);
write(ohosz-1, ' >');
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
omozg:=readkey;

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

if (ord(omozg)=13) and (otart=1) (*field size*)
	then begin
		 clrscr;
		 palya(mag, szel);
		 gotoxy((((szel-4) div 2)+1), (((mag-1) div 2)+1));
		 write(szel, 'x', mag);
		 pmozg:='a';
		 pel:=pmozg;
		 
		 repeat
		 pmozg:=readkey;
		 
		 
		 case ord(pmozg) of
		 72: mag:=mag-1;	(*fel*)
		 80: mag:=mag+1;	(*le*)
		 77: szel:=szel+1;	(*jobb*)
		 75: szel:=szel-1;	(*bal*)
		 end;
		 
		 if mag<7 then mag:=7;
		 if mag>35 then mag:=35;
		 if szel<11 then szel:=11;
		 if szel>55 then szel:=55;
		 
		 if pmozg<>pel
			then begin
				 clrscr;
				 palya(mag, szel);
				 gotoxy((((szel-4) div 2)+1), (((mag-1) div 2)+1));
				 write(szel, 'x', mag);
				 
				 end;
		 
		 if (ord(pmozg)<>13)
		 then begin 
			  pmozg:='a';
			  pel:=pmozg;
			  end;
		 
		 until (ord(pmozg)=13);
		 
		 
		 begin
		 clrscr;
		 
		 gotoxy(1, 1);
		 write('Options|');
		 gotoxy(1, 2);
		 write('--------');
		 
		 gotoxy(1, 5);
		 write('> Field size:  25x38     ');
		 begin
		 gotoxy(16, 5);
		 write(mag, 'x', szel, '     ');
		 end;
		 gotoxy(3, 7);
		 write('Start poz');
		 begin
		 
		 end;
		 gotoxy(3, 9);
		 write('Snake length   < 5 >');
		 begin
		 gotoxy(20, 9);
		 write(ohosz-1, ' >     ');
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
		 end;
		 
		 
		 for i:=2 to szel-1 do
			begin
			if (abs((szel/i)-xarany))<(abs((szel/x)-xarany))
				then begin
					 x:=i;
					 end;
			end;
		 for i:=2 to mag-1 do
			begin
			if (abs((mag/i)-yarany))<(abs((mag/y)-yarany))
				then begin
					 y:=i;
					 end;
			end;
		 
		 
		 end;

if (ord(omozg)=13) and (otart=2) (*start poz*)
	then begin
		 clrscr;
		 palya(mag, szel);
		 gotoxy(x, y);
		 write('*');
		 
		 repeat
		 spmozg:=readkey;
		 
		 case ord(spmozg) of
		 72: y:=y-1;	(*fel*)
		 80: y:=y+1;	(*le*)
		 77: x:=x+1;	(*jobb*)
		 75: x:=x-1;	(*bal*)
		 end;
		 
		 if x<2 then x:=2;
		 if x>szel-1 then x:=szel-1;
		 if y<2 then y:=2;
		 if y>mag-1 then y:=mag-1;
		 
		 gotoxy(x, y);
		 write('*');
		 
		 if (xel<>x) or (yel<>y)
			then begin
				 gotoxy(xel, yel);
				 write(' ');
				 xel:=x;
				 yel:=y;
				 end;
		 
		 if (ord(spmozg)<>13)
		 then begin 
			  spmozg:='a';
			  end;
		 until (ord(spmozg)=13);
		 
		 
		 xarany:= (szel/x);
		 yarany:= (mag/y);
		 
		 
		 begin
		 clrscr;
		 
		 gotoxy(1, 1);
		 write('Options|');
		 gotoxy(1, 2);
		 write('--------');
		 
		 gotoxy(1, 5);
		 write('  Field size:  25x38     ');
		 begin
		 gotoxy(16, 5);
		 write(mag, 'x', szel, '     ');
		 end;
		 gotoxy(1, 7);
		 write('> Start poz');
		 begin
		 
		 end;
		 gotoxy(3, 9);
		 write('Snake length   < 5 >');
		 begin
		 gotoxy(20, 9);
		 write(ohosz-1, ' >     ');
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
		 end;
		 end;

if ((ord(omozg)=77) or (ord(omozg)=75)) and (otart=3) (*length*)
	then begin
		 case ord(omozg) of
		 77: ohosz:=ohosz+1;	(*jobb*)
		 75: ohosz:=ohosz-1;	(*bal*)
		 end;
		 if ohosz<2 then ohosz:=(((szel-2)*(mag-2)));
		 if ohosz>((szel-2)*(mag-2)) then ohosz:=2;
		 
				 begin
				 gotoxy(20, 9);
				 write(ohosz-1, ' >    ');
				 end;
		 end;

if ((ord(omozg)=77) or (ord(omozg)=75)) and (otart=4) (*speed*)
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

if (ord(omozg)=13) and (otart=5) (*reset*)
	then begin
		 gotoxy(3, 5);
		 write('Field size:  25x38');
		 begin
		 mag:=25;
		 szel:=38;
		 end;
		 gotoxy(3, 7);
		 write('Start poz');
		 gotoxy(3, 9);
		 write('Snake length   < 5 >   ');
		 begin
		 ohosz:=6;
		 end;
		 gotoxy(3, 11);
		 write('Speed   < normal >     ');
		 begin
		 gyor:=3;
		 end;
		 gotoxy(3, 21);
		 write('reset');
		 gotoxy(3, 23);
		 write('MAIN MENU');
		 end;

if (ord(omozg)=13) and (otart=6) (*main menu*)
	then begin
		 opt:=true;
		 fo:=3;
		 end;

oel:=otart;
omozg:='a';

until opt;

opt:=false;
end;		//beállítások-----------------------------------------------









if (fo=1) then
begin		//alap------------------------------------------------------
for i:=2 to szel-1 do
	begin
	if (abs((szel/i)-xarany))<(abs((szel/x)-xarany))
		then begin
			 x:=i;
			 end;
	end;
for i:=2 to mag-1 do
	begin
	if (abs((mag/i)-yarany))<(abs((mag/y)-yarany))
		then begin
			 y:=i;
			 end;
	end;

(*side bar*)
begin
for i:=1 to 35 do
	begin
	gotoxy(56, i);
	write('%');
	end;

gotoxy(57, 9);
write('%%%%%%%%%%%%%%%%%%%%%%%%');
minigame(58, 2);

gotoxy(57, 17);
write('%%%%%%%%%%%%%%%%%%%%%%%%');

gotoxy(65, 12);
write('Score: 0');

gotoxy(63, 14);
write('Collected: 0');

gotoxy(62, 18);
write('|Instructions|');

gotoxy(62, 19);
write('--------------');

gotoxy(62, 21);
write('Move - Arrows');

gotoxy(59, 24);
write('p - Pause');

gotoxy(59, 26);
write('e - End');

end;
(*side bar*)

score:=0;
coll:=0;
lepes:=1;
palya(mag, szel);
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
cel:=c;

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
				 repeat
				 nul:=readkey;
				 until (ord(nul)=0) or (nul='p');
				 
				 if (ord(nul)=0) then c:=readkey
				 end;
		 
		 if ((ord(c)=72) and (ord(cel)=80)) or ((ord(cel)=72) and (ord(c)=80)) or
		 	((ord(c)=77) and (ord(cel)=75)) or ((ord(c)=75) and (ord(cel)=77))
			then c:=cel;
		 end;
cel:=c;

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
				 
				 coll:=coll+1;
				 case gyor of
				 1:score:=score+1;
				 2:score:=score+2;
				 3:score:=score+3;
				 4:score:=score+4;
				 5:score:=score+5;
				 end;
				 gotoxy(72, 12);
				 write(score);
				 gotoxy(74, 14);
				 write(coll);
				 
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
				 if (lepes+1>=maxx)
				 then begin
					  gotoxy(memx[maxx], memy[maxy]);
					  write(' ');
					  end;
				 end;
		 end;


if not (x<2) and not (y<2) and not (x>szel-1) and not (y>mag-1)
	then begin
		 gotoxy(x, y);
		 write('*');
		 lepes:=lepes+1;
		 
		 if (gyor=1) then delay(500);
		 if (gyor=2) then delay(200);
		 if (gyor=3) then delay(100);
		 if (gyor=4) then delay(50);
		 if (gyor=5) then delay(25);
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


gotoxy(1, 35);
END.
