program mozgkigyo;

uses crt;

const max=100;

var c: char;
var x, y:integer;
var i, j, k:integer;
var xt: array[2..max] of integer;
var yt: array[2..max] of integer;
var memx: array[1..max] of integer;
var memy: array[1..max] of integer;
var maxx, maxy:integer;
var xcsill, ycsill:integer;

procedure over;
var i:integer;
begin
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
end;



BEGIN	
x:=10;
y:=10;
memx[1]:=x;
memy[1]:=y;
gotoxy(x, y);
write('*');
j:=1;
for i:=2 to max do
	begin
	xt[i]:=10;
	yt[i]:=10;
	end;
c:=readkey;

maxx:=2;
maxy:=2;
randomize;
xcsill:=random(79)+1;
ycsill:=random(24)+1;
gotoxy(xcsill, ycsill);
write('*');

gotoxy(x, y);

repeat

//xxxxxxxxx
	
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
	
for j:=max downto 2 do
begin
memx[j]:=memx[j-1];
memy[j]:=memy[j-1];
end;
memx[1]:=x;
memy[1]:=y;


	
	if (x<1) or (x>80) or (y<1) or(y>25)
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
		
		xcsill:=random(79)+1;
		ycsill:=random(24)+1;
		gotoxy(xcsill, ycsill);
		write('*');
		
		gotoxy(x, y);
		xt[maxx]:=x;
		yt[maxy]:=y;
		 end
	else begin 
		 for k:=2 to max do
			begin
			if (xt[k]=memx[maxx]) and (yt[k]=memy[maxy])
				then begin
					 gotoxy(xt[k], yt[k]);
					 write(' ');
					 xt[k]:=x;
					 yt[k]:=y;
					 
					 end;
		 end;
			end;
		 

		 
		 end;
	
	if x < 1 then x:=1;
	if x > 80 then x:=80;
	if y < 1 then y:=1;
	if y > 25 then y:=25;
	
	
	gotoxy(x, y);
	write('*');
	
	delay(100);
	
	if keypressed 
		then begin
			 c:=readkey 
			 end;
	
	until (c in['v', 'V']); 
	
END.
