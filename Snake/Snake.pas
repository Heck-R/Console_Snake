program mozgkigyo;

uses crt;

const max=10000;
const szemely=10;
const sckod='cheat';

type lead = record
			nev:string;
			pont:integer;
			end;

var sccommand, setnev:string;
var setscore, setszam:integer;
var neve:string;
var tart:file of lead;
var harveg, opt, jump:boolean;
var omozg, pmozg, spmozg, sckey:char;
var cel, pel:char;
var c, b, nul:char;
var score, coll, rank:integer;
var otart, oel, gyor:integer;
var ohosz, lepes:integer;
var mag, szel:integer;
var x, y, xel, yel:integer;
var xarany, yarany:real;
var m, m2, sz, sz2:integer;
var mozg:char;
var i, h, fo:integer;
var maxx, maxy:integer;
var xcsill, ycsill:integer;
var memx: array[1..max] of integer;
var memy: array[1..max] of integer;
var leader: array[1..szemely] of lead;




procedure won;
begin       //WON-------------------------------------------------------
delay(300);
gotoxy(3, 13);
write('****  ****  ******   **      **    ****  ****  ****  ******   ***    **  **');
delay(100);
gotoxy(3, 14);
write(' **    **  ********  **      **     **    **    **  ********  ****   **  **');
delay(100);
gotoxy(3, 15);
write('  **  **  ***    *** **      **     **    **    ** ***    *** ****   **  **');
delay(100);
gotoxy(3, 16);
write('   ****   **      ** **      **      **  ****  **  **      ** ** **  **  **');
delay(100);
gotoxy(3, 17);
write('    **    **      ** **      **      **  ****  **  **      ** ** **  **  **');
delay(100);
gotoxy(3, 18);
write('    **    **      ** **      **      **  ****  **  **      ** **  ** **  **');
delay(100);
gotoxy(3, 19);
write('    **    **      ** ***    ***       ****  ****   **      ** **  ** **  **');
delay(100);
gotoxy(3, 20);
write('    **    ***    ***  ***  ***        ****  ****   ***    **  **   ****    ');
delay(100);
gotoxy(3, 21);
write('    **     ********   ********         **    **     ********  **   ****  **');
delay(100);
gotoxy(3, 22);
write('   ****     ******      ****           **    **      ******   **    ***  **');
end;        //WON-------------------------------------------------------


procedure over;
begin		//GAME OVER-------------------------------------------------
//1. szó
delay(100);
gotoxy(17, 7);
write('**********       *       ****   ****  **********');
delay(100);
gotoxy(17, 8);
write('**********      ***      ***** *****  **********');
delay(100);
gotoxy(17, 9);
write('***      *     *****     ** ** ** **  **');
delay(100);
gotoxy(17, 10);
write('**             ** **     **  ***  **  **');
delay(100);
gotoxy(17, 11);
write('**            **   **    **   *   **  *********');
delay(100);
gotoxy(17, 12);
write('**    ****    *******    **       **  *********');
delay(100);
gotoxy(17, 13);
write('**     ***   *********   **       **  **');
delay(100);
gotoxy(17, 14);
write('**      **   **     **   **       **  **');
delay(100);
gotoxy(17, 15);
write('**********  **       **  **       **  **********');
delay(100);
gotoxy(17, 16);
write('**********  **       **  **       **  **********');
//szó vége
delay(400);
//2. szó
delay(100);
gotoxy(17, 21);
write('  *******    **       **  **********  ********');
delay(100);
gotoxy(17, 22);
write(' *********   **       **  **********  *********');
delay(100);
gotoxy(17, 23);
write('***     ***   **     **   **          ***   ****');
delay(100);
gotoxy(17, 24);
write('**       **   **     **   **          ***   *** ');
delay(100);
gotoxy(17, 25);
write('**       **    **   **    *********   ********  ');
delay(100);
gotoxy(17, 26);
write('**       **    **   **    *********   *******   ');
delay(100);
gotoxy(17, 27);
write('**       **     ** **     **          *** ***   ');
delay(100);
gotoxy(17, 28);
write('***     ***     *****     **          ***  ***  ');
delay(100);
gotoxy(17, 29);
write(' *********       ***      **********  ***   *** ');
delay(100);
gotoxy(17, 30);
write('  *******         *       **********  ***    ***');
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
gotoxy(startx, starty);
write('**** *****   *   ***  *****');
gotoxy(startx, starty+1);
write('*      *    ***  * **   *  ');
gotoxy(startx, starty+2);
write('****   *    * *  ***    *  ');
gotoxy(startx, starty+3);
write('   *   *   ***** * *    *  ');
gotoxy(startx, starty+4);
write('****   *   *   * *  *   *  ');
end;		//START-----------------------------------------------------


procedure options(startx:integer; starty:integer);
begin		//OPTIONS---------------------------------------------------
gotoxy(startx, starty);
write(' ***  ***  ***** ***  ***  **  * ****');
gotoxy(startx, starty+1);
write('** ** * **   *    *  ** ** *** * *   ');
gotoxy(startx, starty+2);
write('*   * ***    *    *  *   * * * * ****');
gotoxy(startx, starty+3);
write('** ** *      *    *  ** ** * ***    *');
gotoxy(startx, starty+4);
write(' ***  *      *   ***  ***  *  ** ****');
end;		//OPTIONS---------------------------------------------------


procedure scores(startx:integer; starty:integer);
begin		//SCORES----------------------------------------------------
gotoxy(startx, starty);
write('****  ***   ***  ***  **** ****');
gotoxy(startx, starty+1);
write('*    ** ** ** ** * ** *    *');
gotoxy(startx, starty+2);
write('**** *     *   * ***  **** ****');
gotoxy(startx, starty+3);
write('   * ** ** ** ** * *  *       *');
gotoxy(startx, starty+4);
write('****  ***   ***  *  * **** ****');
end;        //SCORES----------------------------------------------------


procedure exit(startx:integer; starty:integer);
begin		//EXIT------------------------------------------------------
gotoxy(startx, starty);
write('**** *   * *** *****');
gotoxy(startx, starty+1);
write('*    ** **  *    *');
gotoxy(startx, starty+2);
write('****  ***   *    *');
gotoxy(startx, starty+3);
write('*    ** **  *    *');
gotoxy(startx, starty+4);
write('**** *   * ***   *');
end;		//EXIT------------------------------------------------------


procedure minigame(x:integer; y:integer);
begin       //MINIGAME--------------------------------------------------
gotoxy(x, y);
write('*****   *   *   * ****');
gotoxy(x, y+1);
write('** **  ***  ** ** *');
gotoxy(x, y+2);
write('*      * *  * * * ***');
gotoxy(x, y+3);
write('*  ** ***** *   * ***');
gotoxy(x, y+4);
write('**  * *   * *   * *');
gotoxy(x, y+5);
write('***** *   * *   * ****');
end;        //MINIGAME--------------------------------------------------


procedure miniscores(startx:integer; starty:integer);
begin		//MINISCORES------------------------------------------------
gotoxy(startx, starty);
write('*** *** *** **  *** ***');
gotoxy(startx, starty+1);
write('*   *   * * * * *   *  ');
gotoxy(startx, starty+2);
write('*** *   * * **  *** ***');
gotoxy(startx, starty+3);
write('  * *   * * * * *     *');
gotoxy(startx, starty+4);
write('*** *** *** * * *** ***');

gotoxy(startx, starty+10);
write('*** *** *** **  *** ***');
gotoxy(startx, starty+11);
write('*   *   * * * * *   *  ');
gotoxy(startx, starty+12);
write('*** *   * * **  *** ***');
gotoxy(startx, starty+13);
write('  * *   * * * * *     *');
gotoxy(startx, starty+14);
write('*** *** *** * * *** ***');

gotoxy(startx, starty+20);
write('*** *** *** **  *** ***');
gotoxy(startx, starty+21);
write('*   *   * * * * *   *  ');
gotoxy(startx, starty+22);
write('*** *   * * **  *** ***');
gotoxy(startx, starty+23);
write('  * *   * * * * *     *');
gotoxy(startx, starty+24);
write('*** *** *** * * *** ***');

for i:=1 to 35 do
	begin
	gotoxy(32, i);
	write('#');
	end;
end;        //MINISCORES------------------------------------------------


procedure keret(startx:integer; starty:integer);
begin       //KERET-----------------------------------------------------
gotoxy(startx, starty);
write('* * *   * * * *   * * *');
gotoxy(startx, starty+1);
write('*****   *******   *****');
gotoxy(startx, starty+2);
write('*****   *******   *****');

gotoxy(startx, starty+4);
write('* * *             * * *');
gotoxy(startx, starty+5);
write('*****             *****');
gotoxy(startx, starty+6);
write('*****             *****');

gotoxy(startx, starty+8);
write('* * *   * * * *   * * *');
gotoxy(startx, starty+9);
write('*****   *******   *****');
gotoxy(startx, starty+10);
write('*****   *******   *****');
end;        //KERET-----------------------------------------------------


procedure keret2(startx:integer; starty:integer);
var i:integer;
begin		//KERET2----------------------------------------------------
gotoxy(startx, starty);
write('***********************');
gotoxy(startx, starty+1);
write('***********************');

for i:=1 to 9 do
begin
gotoxy(startx, starty+1+i);
write('**                   **');
end;

gotoxy(startx, starty+11);
write('***********************');
gotoxy(startx, starty+12);
write('***********************');
end;		//KERET2----------------------------------------------------



procedure pause(x:integer; y:integer);
begin       //PAUSE-----------------------------------------------------
gotoxy(x, y);
write('*** *** * * *** ***');
gotoxy(x, y+1);
write('* * * * * * *   *  ');
gotoxy(x, y+2);
write('*** *** * * *** ***');
gotoxy(x, y+3);
write('*   * * * *   * *  ');
gotoxy(x, y+4);
write('*   * * *** *** ***');
end;        //PAUSE-----------------------------------------------------


procedure crown(x:integer; y:integer);
begin       //CROWN-----------------------------------------------------
gotoxy(x, y);
write('*     *     *');
gotoxy(x, y+1);
write('**   ***   **');
gotoxy(x, y+2);
write('*** ***** ***');
gotoxy(x, y+3);
write('*************');
gotoxy(x, y+4);
write('*************');
gotoxy(x, y+5);
write('*************');
gotoxy(x, y+6);
write('*************');
end;        //CROWN-----------------------------------------------------


procedure nevjegy(startx:integer; starty:integer; neve:string; pontja:integer; hely:integer);
begin       //NEVJEGY---------------------------------------------------
gotoxy(startx, starty);
write('    ', neve);
gotoxy(startx, starty+1);
write(hely, '.:');
gotoxy(startx, starty+2);
write('    ', pontja)
end;       


procedure congratulation(startx:integer; starty:integer);
begin       //CONGRATULATIONS-------------------------------------------
gotoxy(startx, starty);
write(' **   **  *  *  *** ***   **  *** *  * *    **  *** ***  **  *  *  ***');
gotoxy(startx, starty+1);
write('*  * *  * ** * *    *  * *  *  *  *  * *   *  *  *   *  *  * ** * *   ');
gotoxy(startx, starty+2);
write('*    *  * **** * ** ***  ****  *  *  * *   ****  *   *  *  * ****  ** ');
gotoxy(startx, starty+3);
write('*  * *  * * ** *  * * ** *  *  *  *  * *   *  *  *   *  *  * * **    *');
gotoxy(startx, starty+4);
write(' **   **  *  *  *** *  * *  *  *   **  *** *  *  *  ***  **  *  * *** ');
end;        //CONGRATULATIONS-------------------------------------------


procedure kori(startx:integer; starty:integer);
begin       //KORI------------------------------------------------------
gotoxy(startx, starty);
write('* * * *     * * * *      * * * *      * * * *      * * * *     * * * *');
gotoxy(startx, starty+1);
write('*******     *******      *******      *******      *******     *******');
gotoxy(startx, starty+2);
write('*******     *******      *******      *******      *******     *******');
gotoxy(startx, starty+3);
write('*******     *******      *******      *******      *******     *******');
end;        //KORI------------------------------------------------------


procedure kori2(startx:integer; starty:integer);
begin       //KORI2-----------------------------------------------------
gotoxy(startx, starty);
write('* * * *    * * * *                                  * * * *    * * * *');
gotoxy(startx, starty+1);
write('*******    *******                                  *******    *******');
gotoxy(startx, starty+2);
write('*******    *******                                  *******    *******');
gotoxy(startx, starty+3);
write('*******    *******                                  *******    *******');
end;        //KORI2-----------------------------------------------------







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
jump:=false;

begin   (*pontozas*)
assign(tart, 'scores.dat');
{$I-}
reset(tart);
{$I+}
if ioresult<>0 then begin
					rewrite(tart);
					for i:=1 to szemely do
						begin
						leader[i].nev:='Master';
						leader[i].pont:=330-(30*(i));
						end;
					for i:=1 to szemely do
						begin
						write(tart, leader[i]);
						end;
					end
			   else begin
					for i:=1 to szemely do
						begin
						read(tart, leader[i]);
						end;
					end;
close(tart);
end     (*pontozas*)

end;		//rögzítés--------------------------------------------------





repeat
begin		//előkészítés-----------------------------------------------
clrscr;
if (not jump)
then fo:=5;

jump:=false;
end;		//előkészítés-----------------------------------------------










if (fo=5) then
begin		//MAIN MENU-------------------------------------------------
clrscr;
m:=1;
sz:=1;
mozg:='a';
start(8, 10);
scores(46, 10);
options(8, 22);
exit(57, 22);
nyil(3, 10);
harveg:=false;

repeat
mozg:=readkey;

if (ord(mozg)=13) then harveg:=true;
m2:=m;
sz2:=sz;

case ord(mozg) of
72: m:=m-1;	(*fel*)
80: m:=m+1;	(*le*)
77: sz:=sz+1;	(*jobb*)
75: sz:=sz-1;	(*bal*)
end;

if m=0 then m:=1;
if m=3 then m:=2;
if sz=0 then sz:=1;
if sz=3 then sz:=2;

if (m<>m2) or (sz<>sz2)
	then begin
		 if (m2=1) and (sz2=1) then nyilur(3, 10);
		 if (m2=1) and (sz2=2) then nyilur(41, 10);
		 if (m2=2) and (sz2=1) then nyilur(3, 22);
		 if (m2=2) and (sz2=2) then nyilur(52, 22);
		 
		 if (m=1) and (sz=1) then nyil(3, 10);
		 if (m=1) and (sz=2) then nyil(41, 10);
		 if (m=2) and (sz=1) then nyil(3, 22);
		 if (m=2) and (sz=2) then nyil(52, 22);
		 end;


if (m=1) and (sz=1) and (ord(mozg)=13) then fo:=1;
if (m=1) and (sz=2) and (ord(mozg)=13) then fo:=3;
if (m=2) and (sz=1) and (ord(mozg)=13) then fo:=2;
if (m=2) and (sz=2) and (ord(mozg)=13) then fo:=10;

mozg:='a';

until harveg;

clrscr;
end;		//MAIN MENU-------------------------------------------------









if (fo=3) then
begin       //SCORES----------------------------------------------------

miniscores(5, 6);

keret(45, 3);

repeat
keret(45, 3);
begin
nevjegy(51, 7, leader[1].nev, leader[1].pont, 1);

nevjegy(36, 16, leader[2].nev, leader[2].pont, 2);
nevjegy(36, 23, leader[3].nev, leader[3].pont, 3);
nevjegy(36, 30, leader[4].nev, leader[4].pont, 4);

nevjegy(51, 16, leader[5].nev, leader[5].pont, 5);
nevjegy(51, 23, leader[6].nev, leader[6].pont, 6);
nevjegy(51, 30, leader[7].nev, leader[7].pont, 7);

nevjegy(66, 16, leader[8].nev, leader[8].pont, 8);
nevjegy(66, 23, leader[9].nev, leader[9].pont, 9);
nevjegy(66, 30, leader[10].nev, leader[10].pont, 10);
end;

i:=0;
repeat
sckey:=readkey;
i:=i+1;
until (sckey<>sckod[i]) or (i=length(sckod));

if sckey<>sckod[length(sckod)] then i:=i-1;

if i=length(sckod)
	then begin
		 keret2(5, 12);
		 gotoxy(8, 15);
		 cursoron;
		 
		 readln(sccommand);
		 
		 if sccommand='add'
			then begin
				 (*adatok*)
				 begin
				 gotoxy(8, 18);
				 readln(setnev);
				 
				 gotoxy(8, 21);
				 readln(setscore);
				 end;
				 (*adatok*)

				 (*helyezés ker*)
				 begin
		 		 rank:=11;
		 		 
		 		 for i:=10 downto 1 do
				 	begin
				 	if (setscore>leader[i].pont) then rank:=i;
				 	end;
		 
		 		 for i:=10 downto rank+1 do
				 	begin
				 	leader[i].nev:= leader[i-1].nev;
				 	leader[i].pont:= leader[i-1].pont;
				 	end;
		 		 
		 		 if rank<>11 then
		 		 begin
		 		 leader[rank].nev:=setnev;
				 leader[rank].pont:=setscore;
				 end;
		 		 end;
		 		 (*helyezés ker*)
				 
				 (*mentés*)
				 begin
				 assign(tart, 'scores.dat');
				 rewrite(tart);
				 for i:=1 to szemely do
					 begin
					 write(tart, leader[i]);
					 end;
				 close(tart);
				 end;
				 (*mentés*)
				 
				 clrscr;
				 
				 miniscores(5, 6);
				 end;
		 
		 if sccommand='delete'
			then begin
				 (*adatok*)
				 begin
				 gotoxy(8, 19);
				 readln(setszam);
				 end;
				 (*adatok*)
				 
				 (*helyezés átrendezés*)
				 begin
		 		 for i:=setszam to 9 do
				 	begin
				 	leader[i].nev:= leader[i+1].nev;
				 	leader[i].pont:= leader[i+1].pont;
				 	end;
		 		 
		 		 leader[10].nev:='Master';
				 leader[10].pont:=(leader[10].pont)-(leader[10].pont mod 30);
		 		 end;
		 		 (*helyezés átrendezés*)
				 
				 (*mentés*)
				 begin
				 assign(tart, 'scores.dat');
				 rewrite(tart);
				 for i:=1 to szemely do
					 begin
					 write(tart, leader[i]);
					 end;
				 close(tart);
				 end;
				 (*mentés*)
				 
				 clrscr;
				 
				 miniscores(5, 6);
				 end;
		 
		 if sccommand='rename'
			then begin
				 (*adatok*)
				 begin
				 gotoxy(8, 18);
				 readln(setszam);
				 
				 gotoxy(8, 21);
				 readln(setnev);
				 end;
				 (*adatok*)
				 
				 (*átírás*)
				 begin
		 		 leader[setszam].nev:=setnev;
		 		 end;
		 		 (*átírás*)
				 
				 (*mentés*)
				 begin
				 assign(tart, 'scores.dat');
				 rewrite(tart);
				 for i:=1 to szemely do
					 begin
					 write(tart, leader[i]);
					 end;
				 close(tart);
				 end;
				 (*mentés*)
				 
				 clrscr;
				 
				 miniscores(5, 6);
				 end;
		 
		 if sccommand='reset'
			then begin
				 (*átírás*)
				 begin
				 for i:=1 to szemely do
						begin
						leader[i].nev:='Master';
						leader[i].pont:=330-(30*(i));
						end;
				 end;
				 (*átírás*)
				 
				 (*mentés*)
				 begin
				 assign(tart, 'scores.dat');
				 rewrite(tart);
				 for i:=1 to szemely do
					 begin
					 write(tart, leader[i]);
					 end;
				 close(tart);
				 end;
				 (*mentés*)
				 
				 clrscr;
				 
				 miniscores(5, 6);
				 end;
		 
		 
		 cursoroff;
		 end;

until (ord(sckey)=13);
end;        //SCORES----------------------------------------------------









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
gotoxy(16, 5);
write(mag, 'x', szel, '     ');

gotoxy(3, 7);
write('Start poz');

gotoxy(3, 9);
write('Snake length  < 5 >');
gotoxy(19, 9);
write(ohosz-1, ' >');

gotoxy(3, 11);
write('Speed  < normal >');
begin
if gyor=1
	then begin
		 gotoxy(12, 11);
		 write('very slow >');
		 end;
 
if gyor=2
	then begin
		 gotoxy(12, 11);
		 write('slow >      ');
		 end;
 
if gyor=3
	then begin
		 gotoxy(12, 11);
		 write('normal >      ');
		 end;
 
if gyor=4
	then begin
		 gotoxy(12, 11);
		 write('fast >      ');
		 end;
 
if gyor=5
	then begin
		 gotoxy(12, 11);
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
		 
		 if ohosz>(((szel-1)*(mag-1))-2) then ohosz:=(((szel-1)*(mag-1))-2);
		 
		 begin
		 clrscr;
		 
		 gotoxy(1, 1);
		 write('Options|');
		 gotoxy(1, 2);
		 write('--------');
		 
		 gotoxy(1, 5);
		 write('> Field size:  25x38     ');
		 gotoxy(16, 5);
		 write(mag, 'x', szel, '     ');
		 
		 gotoxy(3, 7);
		 write('Start poz');
		 
		 gotoxy(3, 9);
		 write('Snake length  < 5 >');
		 gotoxy(19, 9);
		 write(ohosz-1, ' >     ');
		 
		 gotoxy(3, 11);
		 write('Speed  < normal >');
		 begin
		 if gyor=1
		 	then begin
		 		gotoxy(12, 11);
		 		write('very slow >');
		 		end;
		 
		 if gyor=2
		 	then begin
		 		gotoxy(12, 11);
		 		write('slow >      ');
		 		end;
		 
		 if gyor=3
		 	then begin
		 		gotoxy(12, 11);
		 		write('normal >      ');
		 		end;
		 
		 if gyor=4
		 	then begin
		 		gotoxy(12, 11);
		 		write('fast >      ');
		 		end;
		 
		 if gyor=5
		 	then begin
		 		gotoxy(12, 11);
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
		 gotoxy(16, 5);
		 write(mag, 'x', szel, '     ');
		 
		 gotoxy(1, 7);
		 write('> Start poz');
		 
		 gotoxy(3, 9);
		 write('Snake length  < 5 >');
		 gotoxy(19, 9);
		 write(ohosz-1, ' >     ');
		 
		 gotoxy(3, 11);
		 write('Speed  < normal >');
		 begin
		 if gyor=1
		 	then begin
		 		gotoxy(12, 11);
		 		write('very slow >');
		 		end;
		 
		 if gyor=2
		 	then begin
		 		gotoxy(12, 11);
		 		write('slow >      ');
		 		end;
		 
		 if gyor=3
		 	then begin
		 		gotoxy(12, 11);
		 		write('normal >      ');
		 		end;
		 
		 if gyor=4
		 	then begin
		 		gotoxy(12, 11);
		 		write('fast >      ');
		 		end;
		 
		 if gyor=5
		 	then begin
		 		gotoxy(12, 11);
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
		 if ohosz<2 then ohosz:=(((szel-1)*(mag-1))-2);
		 if ohosz>(((szel-1)*(mag-1))-2) then ohosz:=2;
		 
				 begin
				 gotoxy(19, 9);
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
				 gotoxy(12, 11);
				 write('very slow >');
				 end;
		 
		 if gyor=2
			then begin
				 gotoxy(12, 11);
				 write('slow >      ');
				 end;
		 
		 if gyor=3
			then begin
				 gotoxy(12, 11);
				 write('normal >      ');
				 end;
		 
		 if gyor=4
			then begin
				 gotoxy(12, 11);
				 write('fast >      ');
				 end;
		 
		 if gyor=5
			then begin
				 gotoxy(12, 11);
				 write('very fast >');
				 end;
		 end;

if (ord(omozg)=13) and (otart=5) (*reset*)
	then begin
		 gotoxy(16, 5);
		 write('25x38');
		 mag:=25;
		 szel:=38;
		 
		 x:=((szel div 2)+1);
		 y:=((mag div 2)+1);
		 
		 gotoxy(17, 9);
		 write('< 5 >   ');
		 ohosz:=6;
		 
		 gotoxy(10, 11);
		 write('< normal >     ');
		 gyor:=3;
		 end;

if (ord(omozg)=13) and (otart=6) (*main menu*)
	then begin
		 opt:=true;
		 fo:=5;
		 end;

oel:=otart;
omozg:='a';

until opt;

opt:=false;
end;		//beállítások-----------------------------------------------









if (fo=1) then
begin		//alap------------------------------------------------------
(*start*)
begin
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
(*start*)

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

gotoxy(57, 28);
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
nul:='a';

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
				 pause(59, 30);
				 repeat
				 
				 repeat
				 i:=0;
				 
				 if not (keypressed)
				 then begin
					  repeat
					  delay(10);
					  gotoxy(x, y);
					  write(' ');
					  i:=i+1;
					  until (keypressed) or (i=20);
					  i:=0;
					  
					  repeat
					  delay(10);
					  gotoxy(x, y);
					  write('*');
					  i:=i+1;
					  until (keypressed) or (i=20);
					  end;
				 
				 until keypressed;
				 nul:=readkey;
				 
				 until (ord(nul)=0) or (nul='p') or (nul='e');
				 
				 window(59, 29, 79, 34);
				 clrscr;
				 window(1, 1, 80, 35);
				 
				 if (ord(nul)=0) then c:=readkey
				 end;
				 
				 
		 if (nul='e')
			then begin
				 c:='v';
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
				 4:score:=score+5;
				 5:score:=score+10;
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
				 
				 if maxx=(((szel-1)*(mag-1))-1)
					then begin
						 clrscr;
						 won;//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!You won
						 c:='v';
						 for i:=1 to max do
						 begin
						 memx[i]:=szel+1;
						 memy[i]:=mag+1;
						 end;
						 x:=1;
						 end;
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
end;		//várakozás-------------------------------------------------










if (fo=1) then
begin       //Pontozás--------------------------------------------------
if (score>leader[10].pont)
	then begin
		 clrscr;
		 cursoron;
		 
		 (*helyezés ker*)
		 begin
		 rank:=10;
		 
		 for i:=9 downto 1 do
			begin
			if (score>leader[i].pont) then rank:=i;
			end;
		 
		 for i:=10 downto rank+1 do
			begin
			leader[i].nev:= leader[i-1].nev;
			leader[i].pont:= leader[i-1].pont;
			end;
		 end;
		 (*helyezés ker*)
		 
		 
		 (*adatok*)
		 begin
		 if rank=1 then
		 begin
		 kori(6, 3);
		 congratulation(6, 8);
		 kori2(6, 15);
		 
		 gotoxy(25, 15);
		 write('           Score: ', score);
		 
		 gotoxy(25, 17);
		 write('You are the NUMBER ONE player!!!');
		 
		 gotoxy(25, 24);
		 write('Please enter your name: ');
		 gotoxy(25, 26);
		 write('   (max 7 letters)');
		 gotoxy(49, 24);
		 readln(neve);
		 
		 leader[rank].nev:=neve;
		 leader[rank].pont:=score;
		 end;
		 
		 
		 if rank<>1 then
		 begin
		 congratulation(6, 8);
		 
		 gotoxy(25, 15);
		 write('           Score: ', score);
		 
		 gotoxy(25, 17);
		 write('Your score is the ', rank, '. highest!');
		 
		 gotoxy(25, 24);
		 write('Please enter your name: ');
		 gotoxy(25, 26);
		 write('   (max 7 letters)');
		 gotoxy(49, 24);
		 readln(neve);
		 
		 leader[rank].nev:=neve;
		 leader[rank].pont:=score;
		 end;
		 end;
		 (*adatok*)
		 
		 
		 (*mentés*)
		 begin
		 assign(tart, 'scores.dat');
		 rewrite(tart);
		 for i:=1 to szemely do
			begin
			write(tart, leader[i]);
			end;
		 close(tart);
		 end;
		 (*mentés*)
		 
		 
		 cursoroff;
		 fo:=3;
		 jump:=true;
		 end;

end;		//Pontozás--------------------------------------------------

until fo=10;


gotoxy(1, 35);
END.
