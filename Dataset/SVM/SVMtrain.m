%suara raphael
H1 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7R\cutx1mfcc.txt');
H2 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7R\cutx2mfcc.txt');
H3 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7R\cutx3mfcc.txt');
H4 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7R\cutx4mfcc.txt');
H5 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7R\cutx5mfcc.txt');
H6 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7R\cutx6mfcc.txt');
H7 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7R\cutx7mfcc.txt');
H8 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7R\cutx8mfcc.txt');
H9 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7R\cutx9mfcc.txt');
H10 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7R\cutx10mfcc.txt');
H11 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7R\cutx11mfcc.txt');
H12 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7R\cutx12mfcc.txt');
H13 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7R\cutx13mfcc.txt');
H14 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7R\cutx14mfcc.txt');
H15 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7R\cutx15mfcc.txt');

xappH = [H1; H2; H3; H4; H5; H6; H7; H8; H9; H10; H11; H12; H13; H14; H15];

% Testing data for speaker H
H16 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7R\cutx16mfcc.txt');
H17 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7R\cutx17mfcc.txt');
H18 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7R\cutx18mfcc.txt');
H19 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7R\cutx19mfcc.txt');
H20 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7R\cutx20mfcc.txt');


%J = suara pak Zener
J1 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7\cut1mfcc.txt');
J2 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7\cut2mfcc.txt');
J3 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7\cut3mfcc.txt');
J4 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7\cut4mfcc.txt');
J5 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7\cut5mfcc.txt');
J6 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7\cut6mfcc.txt');
J7 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7\cut7mfcc.txt');
J8 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7\cut8mfcc.txt');
J9 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7\cut9mfcc.txt');
J10 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7\cut10mfcc.txt');
J11 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7\cut11mfcc.txt');
J12 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7\cut12mfcc.txt');
J13 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7\cut13mfcc.txt');
J14 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7\cut14mfcc.txt');
J15 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7\cut15mfcc.txt');

% Concatenate training data
xappJ = [J1; J2; J3; J4; J5; J6; J7; J8; J9; J10; J11; J12; J13; J14; J15];

J16 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7\cut16mfcc.txt');
J17 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7\cut17mfcc.txt');
J18 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7\cut18mfcc.txt');
J19 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7\cut19mfcc.txt');
J20 = load('C:\Users\Lenovo\Downloads\Dsp Lab Semua\LAB_8\LAB7\cut20mfcc.txt');

%susunan training data-input
xapp=[xappH;xappJ];

%susunan training data-output 
o1=1*ones(length(xappH),1);
o2=2*ones(length(xappJ),1);

%penyusunan data output training
yapp=[o1;o2];

%penentuan parameter SVM
c = 1000;
lambda = 1e-7;
kernel='gaussian';
kerneloption= 3;
verbose = 1;
nbclass=2;
%-------------------------------------------------------
% Solving SVM training system
%-------------------------------------------------------
[xsup,w,b,nbsv]=svmmulticlassoneagainstall(xapp,yapp,nbclass,c,lambda,kernel,kerneloption,verbose);

% Testing for the training data-training accuracy
xtrain=xapp;

[ypred,maxi] = svmmultival(xtrain,xsup,w,b,nbsv,kernel,kerneloption);

fprintf( '\nRate of correct class in training data : %2.2f \n',100*sum(ypred==yapp)/length(yapp)); 


%xtest=xapp testing for the testing data;
xtest=H16;%%%%%%%%%%%%%%
[ypred,maxi] = svmmultival(xtest,xsup,w,b,nbsv,kernel,kerneloption);

%fprintf( '\nRate of correct class in testing data : %2.2f \n',100*sum(ypred==yapp)/length(yapp)); 
jk=100*sum(ypred==1)/length(ypred);%%%%%%%%%%
% a1 = length(find(ypred==1));
% v1 = length(find(ypred==2));
% if (a1>v1)
%     fprintf('kelas 1');
% else
%     fprintf('kelas2');
% end
fprintf( '\nRate of correct class in testing data : %2.2f \n',jk); 
%training akurasi 100%

% if (jk>50)
%  fprintf( '\nkelas =1 %2.2f \n'); 
% else
%   fprintf( '\nkelas =2 %2.2f \n');    
% end

a1 = length(find(ypred==1));
v1 = length(find(ypred==2));
if (a1>v1)
    fprintf('kelas 1');
else
    fprintf('kelas2');
end
