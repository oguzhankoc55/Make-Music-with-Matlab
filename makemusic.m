% 190201184-Oğuzhan Koç-190201183-Yusuf Arslan
function Sarkical()

fs = 44100;
do = key(52,8,fs); 
re = key(54,8,fs); 
mi = key(56,8,fs); 
fa = key(57,8,fs);  
sol = key(59,8,fs); 
la = key(61,8,fs); 
si = key(63,8,fs);  
fa_4 = key(57,4,fs);
% Godfather Theme Notes
line1 = [re sol si la sol si sol];
line2 = [la fa mi fa re];
line3 = [re sol si la sol si sol];
line4 = [la fa mi re do];
line5 = [do re mi sol];
line6 = [si re fa mi re];
line7 = [fa mi mi re];
line8 = [re fa_4 sol];
line9 = [sol sol fa_4 fa];
line10 = [fa sol fa mi re re];
line11 = [re fa re re do do];
line12 = [si do re];
song = [line1 line2 line3 line4 line5 line6 line7 line8 line9 line10 line11 line12 line1 line2 line3 line4 line5 line6 line7 line8 line9 line10 line11 line12];
sound(song,fs,24);
function wave = key(p, n, fs)
    t = 0:1/fs:4/n;
    idx = 440*2^((p-49)/12);
    wave = (sin(2*pi*idx*t));

function wave = rest(n,fs)
    t = 0:1/fs:4/n;
    tt = 4/n:-1/fs:0;
    wave = 0*sin(2*pi*t).*exp(tt);
