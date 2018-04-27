% Auther: Shervin Shoai-Naini
% Purpose: Final project for data science class
% Ground vehicle driving cycles in Atlanta, GA

%%


clear all

for i =1:548
    m=num2str(i);

ftoread = [' ',m,'.csv'];
fid = fopen(ftoread);
fgetl(fid); %reads line but does nothing with it
M = textscan(fid, '%D %f %f %f  %f', 'Delimiter',',','HeaderLines', 1); % you will need to change the number   of values to match your file %f for numbers and %s for strings.
fclose(fid);


if i==1
    length_dep1=0;
end
temp=datevec(M{1});
Matrix(length_dep1+1:length(M{1})+length_dep1,1:3)=temp(:,4:6);
Matrix(length_dep1+1:length(M{1})+length_dep1,4)=M{4};
Matrix(length_dep1+1:length(M{1})+length_dep1,5)=M{5};
Matrix(length_dep1+1:length(M{1})+length_dep1,6)=i;


length_dep1=length(M{1});


%M1 = M(1,1)
%M2 = M(1,2)
%M3 = M(1,3)
%M4 = cell2mat(M(1,7))


end

DC(:,1)=3600*Matrix(:,1)+60*Matrix(:,2)+Matrix(:,3);
DC(:,2)=Matrix(:,4);
DC(:,3)=Matrix(:,5);
DC(:,4)=Matrix(:,6);


sorted_DC=sortrows(DC,1);
csvwrite('Sorted vehicles.csv',sorted_DC)