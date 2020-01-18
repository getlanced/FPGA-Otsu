b=imread('cat.bmp'); % 24-bit BMP image RGB888 

k=1;
% image is written from the last row to the first row
for i=512:-1:1 %height
for j=1:768    %width
a(k)=b(i,j,1);
a(k+1)=b(i,j,2);
a(k+2)=b(i,j,3);
k=k+3;
end
end
fid = fopen('cat.hex', 'wt');
fprintf(fid, '%x\n', a);
disp('Text file write done');disp(' ');
fclose(fid);