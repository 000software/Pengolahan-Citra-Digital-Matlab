function varargout = kelompok6(varargin)
% KELOMPOK6 MATLAB code for kelompok6.fig
%      KELOMPOK6, by itself, creates a new KELOMPOK6 or raises the existing
%      singleton*.
%
%      H = KELOMPOK6 returns the handle to a new KELOMPOK6 or the handle to
%      the existing singleton*.
%
%      KELOMPOK6('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KELOMPOK6.M with the given input arguments.
%
%      KELOMPOK6('Property','Value',...) creates a new KELOMPOK6 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before kelompok6_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to kelompok6_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help kelompok6

% Last Modified by GUIDE v2.5 11-Jun-2017 04:36:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @kelompok6_OpeningFcn, ...
                   'gui_OutputFcn',  @kelompok6_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT

   

% --- Executes just before kelompok6 is made visible.
function kelompok6_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to kelompok6 (see VARARGIN)

% Choose default command line output for kelompok6
handles.output = hObject;

Img = imread('ariel.jpg');
   
axes(handles.axes1)
imshow(Img)
handles.Img = Img;

axes(handles.axes20)
imshow(Img)
handles.Img2 = Img;

axes(handles.axes21)
imshow(Img)
handles.Img3 = Img;
% Update handles structure


set(handles.bg2,'visible','off')
set(handles.bg3,'visible','off')
set(handles.bg4,'visible','off')
set(handles.bg5,'visible','off')
set(handles.bg6,'visible','off')
set(handles.bg7,'visible','off')

guidata(hObject, handles);

% UIWAIT makes kelompok6 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = kelompok6_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function bersihkan(handles)


cla(handles.axes2,'reset');
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');

% --- Executes on button press in agungrrumk1.
function agungrrumk1_Callback(hObject, eventdata, handles)
% hObject    handle to agungrrumk1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname] = uigetfile('*.*');
 
if ~isequal(filename,0)
 
    Img = imread(fullfile(pathname,filename));
    [~,~,m] = size(Img);
        axes(handles.axes1)
        imshow(Img)
        handles.Img = Img;
        guidata(hObject, handles)
else
    return
end

% --- Executes on button press in agungrrumk4.
function agungrrumk4_Callback(hObject, eventdata, handles)
% hObject    handle to agungrrumk4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);

% --- Executes on button press in agungrrumk2.
function agungrrumk2_Callback(hObject, eventdata, handles)
% hObject    handle to agungrrumk2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname] = uigetfile('*.*');
 
if ~isequal(filename,0)
 
    Img = imread(fullfile(pathname,filename));
    [~,~,m] = size(Img);
        axes(handles.axes20)
        imshow(Img)
        handles.Img2 = Img;
        guidata(hObject, handles)
else
    return
end

% --- Executes on button press in agungrrumk3.
function agungrrumk3_Callback(hObject, eventdata, handles)
% hObject    handle to agungrrumk3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname] = uigetfile('*.*');
 
if ~isequal(filename,0)
 
    Img = imread(fullfile(pathname,filename));
    [~,~,m] = size(Img);
        axes(handles.axes21)
        imshow(Img)
        handles.Img3 = Img;
        guidata(hObject, handles)
else
    return
end

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.bg1,'visible','on')
set(handles.bg2,'visible','off')
set(handles.bg3,'visible','off')
set(handles.bg4,'visible','off')
set(handles.bg5,'visible','off')
set(handles.bg6,'visible','off')
set(handles.bg7,'visible','off')

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.bg1,'visible','off')
set(handles.bg2,'visible','on')
set(handles.bg3,'visible','off')
set(handles.bg4,'visible','off')
set(handles.bg5,'visible','off')
set(handles.bg6,'visible','off')
set(handles.bg7,'visible','off')

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.bg1,'visible','off')
set(handles.bg2,'visible','off')
set(handles.bg3,'visible','on')
set(handles.bg4,'visible','off')
set(handles.bg5,'visible','off')
set(handles.bg6,'visible','off')
set(handles.bg7,'visible','off')

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.bg1,'visible','off')
set(handles.bg2,'visible','off')
set(handles.bg3,'visible','off')
set(handles.bg4,'visible','on')
set(handles.bg5,'visible','off')
set(handles.bg6,'visible','off')
set(handles.bg7,'visible','off')

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.bg1,'visible','off')
set(handles.bg2,'visible','off')
set(handles.bg3,'visible','off')
set(handles.bg4,'visible','off')
set(handles.bg5,'visible','on')
set(handles.bg6,'visible','off')
set(handles.bg7,'visible','off')

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.bg1,'visible','off')
set(handles.bg2,'visible','off')
set(handles.bg3,'visible','off')
set(handles.bg4,'visible','off')
set(handles.bg5,'visible','off')
set(handles.bg6,'visible','on')
set(handles.bg7,'visible','off')

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.bg1,'visible','off')
set(handles.bg2,'visible','off')
set(handles.bg3,'visible','off')
set(handles.bg4,'visible','off')
set(handles.bg5,'visible','off')
set(handles.bg6,'visible','off')
set(handles.bg7,'visible','on')


% --- Executes on button press in p11.
function p11_Callback(hObject, eventdata, handles)
% hObject    handle to p11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;

folder = mfilename('fullpath');
asli = mfilename();
newChr = strrep(folder,asli,'')
outfile = fullfile(newChr, 'output.jpg');
imwrite(A, outfile, 'jpg');

newfile=strcat(newChr, 'output.jpg');
B=imread(newfile);


axes(handles.axes2); imshow(A);
axes(handles.axes3); imshow(B);

% --- Executes on button press in p12.
function p12_Callback(hObject, eventdata, handles)
% hObject    handle to p12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
axes(handles.axes2);
imshow(A);
imagesc(A);
axis image;
axis off;
colormap(gray);

% --- Executes on button press in p13.
function p13_Callback(hObject, eventdata, handles)
% hObject    handle to p13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
B=rand(256).*1000
imshow(B);
imagesc(B);
axis image;axis off;
colormap(gray);colorbar;
axes(handles.axes2);
imshow(B,[0 1000]);

% --- Executes on button press in p14.
function p14_Callback(hObject, eventdata, handles)
% hObject    handle to p14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
B=handles.Img;
C=handles.Img2;
D=handles.Img3;

axes(handles.axes2);
imagesc(B); axis image; axis off; colormap(gray);

axes(handles.axes3);
imagesc(C);axis image; axis off;colormap(jet);

axes(handles.axes4);
imshow(D);

% --- Executes on button press in p15.
function p15_Callback(hObject, eventdata, handles)
% hObject    handle to p15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
B=handles.Img;
B(25,50);
B(25,50)=225;
axes(handles.axes2);
imshow(B);
axes(handles.axes3);
imshow(B);

D=handles.Img2;
D(25,50,1)
D(25,50,:)=[255,255,255];
axes(handles.axes4);
imshow(D);
axes(handles.axes5);
imshow(D);

% --- Executes on button press in p16.
function p16_Callback(hObject, eventdata, handles)
% hObject    handle to p16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
D=handles.Img;
Dgray=rgb2gray(D);

axes(handles.axes2);
imshow(D); axis image;
axes(handles.axes3);
imshow(Dgray);

% --- Executes on button press in p17.
function p17_Callback(hObject, eventdata, handles)
% hObject    handle to p17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
D=handles.Img;
Dred=D(:,:,1);
Dgreen=D(:,:,2);
Dblue=D(:,:,3);

axes(handles.axes2); 
imshow (D); axis image;
axes(handles.axes3); 
imshow (Dred); title 'red';
axes(handles.axes4); 
imshow (Dgreen); title 'green';
axes(handles.axes5); 
imshow (Dblue); title 'blue';


% --- Executes on button press in p21.
function p21_Callback(hObject, eventdata, handles)
% hObject    handle to p21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
b = imadd(A,255);




axes(handles.axes2); imshow(A);
axes(handles.axes3); imshow(b);


% --- Executes on button press in p22.
function p22_Callback(hObject, eventdata, handles)
% hObject    handle to p22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
B=handles.Img2;

out1 = imsubtract(A,B);

axes(handles.axes2); imshow(A);
axes(handles.axes3); imshow(B);
axes(handles.axes4);imshow(out1); title('imsubtract');

% --- Executes on button press in p23.
function p23_Callback(hObject, eventdata, handles)
% hObject    handle to p23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
B=handles.Img2;


out2 = imabsdiff(A,B);
axes(handles.axes2); imshow(A);
axes(handles.axes3); imshow(B);
axes(handles.axes4);imshow(out2); title('imabsdiff');



% --- Executes on button press in p24.
function p24_Callback(hObject, eventdata, handles)
% hObject    handle to p24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
B=handles.Img2;

out3 = immultiply(A,B);


out4 = imdivide(A,B);

axes(handles.axes2); imshow(A);
axes(handles.axes3); imshow(B);
axes(handles.axes4);imshow(out3); title('immultiply');
axes(handles.axes5);imshow(out4); title('imdivide');



% --- Executes on button press in p25.
function p25_Callback(hObject, eventdata, handles)
% hObject    handle to p25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
b = imcomplement(A);

axes(handles.axes2); imshow(A); 
axes(handles.axes3); imshow(b); title('imcomplement');


% --- Executes on button press in p26.
function p26_Callback(hObject, eventdata, handles)
% hObject    handle to p26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
B=handles.Img2;
abw=im2bw(A);
bbw=im2bw(B);

out = xor(abw, bbw);

axes(handles.axes2); imshow(A); 
axes(handles.axes3); imshow(B); 
axes(handles.axes4); imshow(abw); 
axes(handles.axes5); imshow(bbw); 
axes(handles.axes6); imshow(out); 



% --- Executes on button press in p27.
function p27_Callback(hObject, eventdata, handles)
% hObject    handle to p27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
b = im2bw(A,0.1);

axes(handles.axes2); imshow(A); 
axes(handles.axes3); imshow(b); title('bw 0.1');


% --- Executes on button press in p28.
function p28_Callback(hObject, eventdata, handles)
% hObject    handle to p28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
b = im2double(A);

b1= 2*log(1+b);
b2= 3*log(1+b);
b3= 5*log(1+b);
b4= 9*log(1+b);
axes(handles.axes2); imshow(A); 
axes(handles.axes3); imshow(b1); 
axes(handles.axes4); imshow(b2); 
axes(handles.axes5); imshow(b3); 
axes(handles.axes6); imshow(b4); 

% --- Executes on button press in p29.
function p29_Callback(hObject, eventdata, handles)
% hObject    handle to p29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
b = im2double(A);

c1 = 4*(((1+0.3).^(b)) - 1);
c2 = 4*(((1+0.4).^(b)) - 1);
c3 = 4*(((1+0.6).^(b)) - 1);
c4 = 4*(((1+0.9).^(b)) - 1);
axes(handles.axes2); imshow(A); 
axes(handles.axes3); imshow(c1); 
axes(handles.axes4); imshow(c2); 
axes(handles.axes5); imshow(c3); 
axes(handles.axes6); imshow(c4); 


% --- Executes on button press in p210.
function p210_Callback(hObject, eventdata, handles)
% hObject    handle to p210 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
b = im2double(A);

d1 = 2*(b.^0.5);
d2 = 2*(b.^1.5);
d3 = 2*(b.^3);
d4 = 2*(b.^5);
axes(handles.axes2); imshow(A); 
axes(handles.axes3); imshow(d1); 
axes(handles.axes4); imshow(d2); 
axes(handles.axes5); imshow(d3); 
axes(handles.axes6); imshow(d4); 

% --- Executes on button press in p211.
function p211_Callback(hObject, eventdata, handles)
% hObject    handle to p211 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
e = imadjust(A,[0 1],[0 1],1./3);

axes(handles.axes2); imshow(A); 
axes(handles.axes3); imshow(e); 


% --- Executes on button press in p212.
function p212_Callback(hObject, eventdata, handles)
% hObject    handle to p212 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
b=rgb2gray(A);
axes(handles.axes2); imshow(A);
axes(handles.axes3); imhist(b);

% --- Executes on button press in p213.
function p213_Callback(hObject, eventdata, handles)
% hObject    handle to p213 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
b=rgb2gray(A);
[counts,bins] = imhist(b)

axes(handles.axes2); imshow(A);
axes(handles.axes3); counts(10);

% --- Executes on button press in p214.
function p214_Callback(hObject, eventdata, handles)
% hObject    handle to p214 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
level = graythresh(A);
t = im2bw(A,level);
axes(handles.axes2); imshow(A); title('Original');
axes(handles.axes3); imshow(t); title('Otsu');

b = im2bw(A,0.3);
axes(handles.axes4); imshow(b); title('Uji');

% --- Executes on button press in p215.
function p215_Callback(hObject, eventdata, handles)
% hObject    handle to p215 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in p216.
function p216_Callback(hObject, eventdata, handles)
% hObject    handle to p216 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in p217.
function p217_Callback(hObject, eventdata, handles)
% hObject    handle to p217 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
b = imadjust(A,stretchlim(A,[0.05 0.95]),[]);

axes(handles.axes2); imshow(A);
axes(handles.axes3); imshow(b);



% --- Executes on button press in p218.
function p218_Callback(hObject, eventdata, handles)
% hObject    handle to p218 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
A=rgb2gray(A);
b = imadjust(A,stretchlim(A,[0.05 0.95]),[]);
c = histeq(A);
axes(handles.axes2); imshow(A);
axes(handles.axes3); imshow(b);
axes(handles.axes4); imshow(c);


% --- Executes on button press in p219.
function p219_Callback(hObject, eventdata, handles)
% hObject    handle to p219 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
A=rgb2gray(A);
b = imadjust(A,stretchlim(A,[0.05 0.95]),[]);
c = histeq(A);
axes(handles.axes2); imhist(A);
axes(handles.axes3);imhist(b);
axes(handles.axes4);imhist(c);

% --- Executes on button press in p220.
function p220_Callback(hObject, eventdata, handles)
% hObject    handle to p220 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
A=rgb2gray(A);
pz=0:255;
im=histeq(A,pz);

axes(handles.axes2);imshow(A);
axes(handles.axes3);imshow(im);
axes(handles.axes4);plot(pz);
axes(handles.axes5);imhist(A);
axes(handles.axes6);imhist(im);


% --- Executes on button press in p221.
function p221_Callback(hObject, eventdata, handles)
% hObject    handle to p221 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
A=rgb2gray(A);
b1 = adapthisteq(A,'cliplimit',0.01,'Distribution','rayleigh');
b2 = adapthisteq(A,'cliplimit',0.05,'Distribution','rayleigh');
b3 = adapthisteq(A,'cliplimit',0.08,'Distribution','rayleigh');

c1 = adapthisteq(A,'cliplimit',0.01,'Distribution','exponential');
c2 = adapthisteq(A,'cliplimit',0.05,'Distribution','exponential');
c3 = adapthisteq(A,'cliplimit',0.08,'Distribution','exponential');

d1 = adapthisteq(A,'cliplimit',0.01,'Distribution','uniform');
d2 = adapthisteq(A,'cliplimit',0.05,'Distribution','uniform');
d3 = adapthisteq(A,'cliplimit',0.08,'Distribution','uniform');
%---------------------------------------
level = graythresh(A);
e = im2bw(A,level);
f = imadjust(A,stretchlim(A,[0.05 0.95]),[]);
g = histeq(A);



axes(handles.axes2);imshow(b1); title('Rayleigh 0.01');
axes(handles.axes3);imshow(c1); title('Exponential 0.01');
axes(handles.axes4);imshow(d1); title('Uniform 0.01');

axes(handles.axes5);imshow(c1); imshow(e); title('Otsu');
axes(handles.axes6);imshow(c1); imshow(f); title('Stretchlim');
axes(handles.axes7);imshow(c1); imshow(g); title('Histeq');


% --- Executes on button press in p222.
function p222_Callback(hObject, eventdata, handles)
% hObject    handle to p222 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;

ih=rgb2hsv(A);
v=histeq(ih(:,:,3));
ih(:,:,3)=v;
io=hsv2rgb(ih);

axes(handles.axes2);imshow(A);
axes(handles.axes3);imshow(io);




% --- Executes on button press in pushbutton56.
function pushbutton56_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton57.
function pushbutton57_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton58.
function pushbutton58_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton58 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton59.
function pushbutton59_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton59 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton60.
function pushbutton60_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton60 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton61.
function pushbutton61_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton62.
function pushbutton62_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton63.
function pushbutton63_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton64.
function pushbutton64_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton65.
function pushbutton65_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton66.
function pushbutton66_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton67.
function pushbutton67_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton67 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton68.
function pushbutton68_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton68 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton69.
function pushbutton69_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton69 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton70.
function pushbutton70_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton70 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton71.
function pushbutton71_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton71 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton72.
function pushbutton72_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton72 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton73.
function pushbutton73_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton73 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton74.
function pushbutton74_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton74 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton75.
function pushbutton75_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton75 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton76.
function pushbutton76_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton76 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton77.
function pushbutton77_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton77 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in p31.
function p31_Callback(hObject, eventdata, handles)
% hObject    handle to p31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
A=rgb2gray(A);
axes(handles.axes2);
imshow(A);
func=@(X) max(X(:));
B=nlfilter(A,[3 3],func);
axes(handles.axes3);
imshow(B);


% --- Executes on button press in p32.
function p32_Callback(hObject, eventdata, handles)
% hObject    handle to p32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
axes(handles.axes2);
imshow(A);
B=fspecial('motion',50,54);
C=imfilter(A, B, 'symmetric');
axes(handles.axes3);
imshow(C);


% --- Executes on button press in p33.
function p33_Callback(hObject, eventdata, handles)
% hObject    handle to p33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
axes(handles.axes2);
imshow(A);
Fb=imnoise(A,'salt & pepper',0.03);
axes(handles.axes3); imshow(Fb);
Ig=imnoise(A,'gaussian',0.02);
axes(handles.axes4); imshow(Ig);



% --- Executes on button press in p34.
function p34_Callback(hObject, eventdata, handles)
% hObject    handle to p34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
k=ones(3,3)/9;
Am=imfilter(A,k);
Aspm=imfilter(Am,k);
Agm=imfilter(Aspm,k);
axes(handles.axes2);
imshow(Am);
axes(handles.axes3);
imshow(Aspm);
axes(handles.axes4);
imshow(Agm);


% --- Executes on button press in p35.
function p35_Callback(hObject, eventdata, handles)
% hObject    handle to p35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
im = rgb2gray(A);
Im=medfilt2(im,[3 3]);
Ispm=medfilt2(Im,[3 1]);
Igm=medfilt2(Ispm,[3 9]);
axes(handles.axes2); imshow(A);
axes(handles.axes3); imshow(Im);
axes(handles.axes4); imshow(Ispm);
axes(handles.axes5); imshow(Igm);


% --- Executes on button press in p36.
function p36_Callback(hObject, eventdata, handles)
% hObject    handle to p36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
im = rgb2gray(A);
Im=ordfilt2(im,25,ones(5,5));
Ispm=ordfilt2(Im,25,ones(5,5));
Igm=ordfilt2(Ispm,25,ones(5,5));
axes(handles.axes2); imshow(A);
axes(handles.axes3); imshow(Im);
axes(handles.axes4); imshow(Ispm);
axes(handles.axes5); imshow(Igm);


% --- Executes on button press in p37.
function p37_Callback(hObject, eventdata, handles)
% hObject    handle to p37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
k1=fspecial('gaussian',[5 5],2);
Ig=imfilter(A,k1);
Ispg=imfilter(Ig,k1);
Igg=imfilter(Ispg,k1);
axes(handles.axes2); imshow(A);
axes(handles.axes3); imshow(k1);
axes(handles.axes4); imshow(Ig);
axes(handles.axes5); imshow(Ispg);
axes(handles.axes6); imshow(Igg);


% --- Executes on button press in p38.
function p38_Callback(hObject, eventdata, handles)
% hObject    handle to p38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
im = rgb2gray(A);
IEr = edge(im,'roberts');
IEp = edge(im,'prewitt');
IEs = edge(im,'sobel');
axes(handles.axes2); imshow(A);
axes(handles.axes3); imshow(IEr);
axes(handles.axes4); imshow(IEp);
axes(handles.axes5); imshow(IEs);


% --- Executes on button press in p39.
function p39_Callback(hObject, eventdata, handles)
% hObject    handle to p39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
K=fspecial('laplacian');
IE1=imfilter(double(A),K,'symmetric');
axes(handles.axes2); imagesc(A);
axes(handles.axes3); imagesc(IE1);

colormap('gray');

% --- Executes on button press in p310.
function p310_Callback(hObject, eventdata, handles)
% hObject    handle to p310 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
im = rgb2gray(A);
k=fspecial('log',[10 10],3.0);
IEzc=edge(im,'zerocross',[],k);
axes(handles.axes2); imagesc(A);
axes(handles.axes3); imagesc(IEzc);


% --- Executes on button press in p311.
function p311_Callback(hObject, eventdata, handles)
% hObject    handle to p311 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
A=handles.Img;
h=fspecial('laplacian', 1.0);
B=imfilter(A,h);
C=imsubtract(A,B);
axes(handles.axes2); imshow(A);
axes(handles.axes3); imagesc(B);axis image;axis off
axes(handles.axes4); imshow(C);


% --- Executes on button press in p312.
function p312_Callback(hObject, eventdata, handles)
% hObject    handle to p312 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
Iorig=handles.Img;
g=fspecial('gaussian',[5 5],1.5);
Is=imfilter(Iorig,g);
c=(Iorig-Is);
axes(handles.axes2); imshow(Iorig);
axes(handles.axes3); imshow(c);
Iout=Iorig+(0.3).*c;
axes(handles.axes4); imshow(Iout);
Iout=Iorig+(0.5).*c;
axes(handles.axes5); imshow(Iout);
Iout=Iorig+(0.7).*c;
axes(handles.axes6); imshow(Iout);
Iout=Iorig+(2.0).*c;
axes(handles.axes7); imshow(Iout);


% --- Executes on button press in p41.
function p41_Callback(hObject, eventdata, handles)
% hObject    handle to p41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
a=handles.Img;
a=rgb2gray(a);
b = fft2(a);
b = fftshift(b);
c = fspecial('gaussian', size(a), 6);
d = fft2(c);
d = fftshift(d);
e = ifft(d.*b);
e = fftshift(e);


axes(handles.axes2); imshow(a), colormap('gray');
axes(handles.axes3); imagesc(log(1+(c))); axis image; axis off;
axes(handles.axes4); imagesc(log(1+abs(d))); axis image; axis off;
axes(handles.axes5); imagesc(abs(e)); axis image; axis off;

% --- Executes on button press in p42.
function p42_Callback(hObject, eventdata, handles)
% hObject    handle to p42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
a = handles.Img;
FT = fft2(a); FTcenter = fftshift(FT);


axes(handles.axes2); imshow(a);
axes(handles.axes3); imshow(log(1+abs(FT)),[]);
axes(handles.axes4); imshow(log(1+abs(FTcenter)),[]);


Im1 = abs(ifft2(FT));

axes(handles.axes5);  imshow(Im1,[]);
Im2 = abs(ifft2(FTcenter));

axes(handles.axes6);  imshow(Im2,[]);

% --- Executes on button press in p43.
function p43_Callback(hObject, eventdata, handles)
% hObject    handle to p43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
a = handles.Img;
a=rgb2gray(a);
hp1 = [1 -2 1; -2 5 -2; 1 -2 1];
hp2 = [0 -1 0; -1 5 -1; 0 -1 0];
hp3 = [-1 -1 -1; -1 9 -1; -1 -1 -1];

b1 = uint8(conv2(double(a), hp1,'same'));
b2 = uint8(conv2(double(a), hp2,'same'));
b3 = uint8(conv2(double(a), hp3,'same'));


axes(handles.axes2);imshow(a); title('Original');
axes(handles.axes3); imshow(b1); title('HP1');
axes(handles.axes4); imshow(b2); title('HP2');
axes(handles.axes5); imshow(b3); title('HP3');


% --- Executes on button press in p44.
function p44_Callback(hObject, eventdata, handles)
% hObject    handle to p44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
a = handles.Img;
a=rgb2gray(a);
a= double(a);
b = fft2(a);
whos b;
m_high = handles.Img2;
m_high=rgb2gray(m_high);
m_high= double(m_high);
whos m_high;
m_low = not(m_high);


c1 = b .* m_high;
c2 = b .* m_low;


d1 = abs(ifft2(c1));
d2 = abs(ifft2(c2));


axes(handles.axes2);imagesc(a), colormap('gray'), colorbar('vert');
axes(handles.axes3); imagesc(log(abs(b)),[0 17]), colormap('hot'), colorbar('vert');
axes(handles.axes4); imagesc(d1), colormap('gray'), colorbar('vert');
axes(handles.axes5); imagesc(log(abs(c1)),[0 17]), colormap('hot'), colorbar('vert');
axes(handles.axes6); imagesc(d2), colormap('gray'), colorbar('vert');
axes(handles.axes7); imagesc(log(abs(c2)),[0 17]), colormap('hot'), colorbar('vert');


% --- Executes on button press in p45.
function p45_Callback(hObject, eventdata, handles)
% hObject    handle to p45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
a = handles.Img;
a=rgb2gray(a);
a= double(a);

psf = fspecial('gaussian', [5 5], 2);
h=fspecial('motion', 20, 45);
b=conv2(psf, a);
c=imfilter(a, h, 'replicate');
d=conv2(a,a);

axes(handles.axes2); imshow(a);
axes(handles.axes3); imshow(b, []);
axes(handles.axes4); imshow(c, []);
axes(handles.axes5); imshow(d, []);


% --- Executes on button press in p51.
function p51_Callback(hObject, eventdata, handles)
% hObject    handle to p51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
a = handles.Img;
b = fft2(a); b = fftshift(b);
PSF = fspecial('gaussian',100,5);
H=psf2otf(PSF,size(a)); H=fftshift(H);
c=ifft2(b.*H); c=abs(c);

d=fft2(c); d=fftshift(d);
indice = find(H>1e-6);
F = zeros(size(d)); F(indice)=d(indice)./H(indice);
f = ifft2(F); f = abs(f);

axes(handles.axes2); imshow(a);
axes(handles.axes3);  imagesc(PSF); axis square; axis off;
axes(handles.axes4); imagesc(abs(H)); axis square; axis off;
axes(handles.axes5); imagesc(f); axis square; axis tight; axis off;


% --- Executes on button press in p52.
function p52_Callback(hObject, eventdata, handles)
% hObject    handle to p52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
a = imread('kotak.png');
a= rgb2gray(a);
b = fft2(a); b = fftshift(b);
[x y] = size(a); [X Y]= meshgrid(1:x, 1:y);
h = exp((X-x/2).^2./48).*exp((Y-y/2).^2./48);
%PSF  = fspecial('gaussian',13,1);

%H=psf2otf(h); 
H=psf2otf(a);

H=fftshift(H);
c=ifft2(b.*H); c=mat2gray(abs(c));
c = imnoise(c,'gaussian',0,0.002);

d=fft2(c); d=fftshift(d);
indice = find(H>1e-6);
F = zeros(size(d)); F(indice)=d(indice)./H(indice);
f = ifft2(F); f = abs(f);


axes(handles.axes2);imshow(c,[min(min(c)) max(max(c))]);
axes(handles.axes3); imagesc(h); axis square; axis off;
axes(handles.axes4);imagesc(abs(H)); axis square; axis off;
axes(handles.axes5); imagesc(f); axis square; axis tight; axis off;


% --- Executes on button press in p53.
function p53_Callback(hObject, eventdata, handles)
% hObject    handle to p53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
a = handles.Img;
a = double(a);
noise = 15.*rand(size(a));
PSF = fspecial('motion',21,11);
blur = imfilter(a,PSF,'circular');
blurnoisy = blur+noise;
NSR = sum(noise(:).^2)/sum(a(:).^2);
NP = abs(fftn(noise)).^2;
NPOW = sum(NP(:))/prod(size(noise));
NCOR = fftshift(real(ifftn(NP)));

IP = abs(fftn(a)).^2;
IPOW = sum(IP(:))/prod(size(a));
ICOR = fftshift(real(ifftn(IP)));

NSR = NPOW./IPOW;


axes(handles.axes2); imshow(blurnoisy);
axes(handles.axes3); imshow(deconvwnr(blurnoisy,PSF,NSR),[]);
axes(handles.axes4); imshow(deconvwnr(blurnoisy,PSF,NCOR,ICOR),[]);


% --- Executes on button press in p54.
function p54_Callback(hObject, eventdata, handles)
% hObject    handle to p54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
a = handles.Img;
PSF = fspecial('gaussian',7,10);
V = .01;
blur = imnoise(imfilter(a,PSF),'gaussian',0,V);
NP = V.*prod(size(a));
[J LARGE_J] = deconvreg(blur,PSF,NP);
[K LARGE_K] = deconvreg(blur,PSF,[],LARGE_J.*10);


axes(handles.axes2); imshow(blur);
axes(handles.axes3); imshow(J);
axes(handles.axes4); imshow(K);

% --- Executes on button press in p55.
function p55_Callback(hObject, eventdata, handles)
% hObject    handle to p55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
a = handles.Img;

a=mat2gray(double(a));
psf=fspecial('gaussian',7,10);
v=.0001;
j0=imnoise(imfilter(a,psf),'gaussian',0,v);
wt=zeros(size(a));
wt(5:end-4, 5:end-4)=1;
j1=deconvlucy(j0,psf,10);
j2=deconvlucy(j0,psf,20,sqrt(v));
j3=deconvlucy(j0,psf,20,sqrt(v),wt);


axes(handles.axes2); imshow(j0);
axes(handles.axes3); imshow(j1);
axes(handles.axes4); imshow(j2);
axes(handles.axes5); imshow(j3);


% --- Executes on button press in p61.
function p61_Callback(hObject, eventdata, handles)
% hObject    handle to p61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
a = handles.Img;

se = [0 1 0; 1 1 1; 0 1 0];
bwout = imdilate(a,se);


axes(handles.axes2); imshow(a);
axes(handles.axes3); imshow(bwout);


% --- Executes on button press in p62.
function p62_Callback(hObject, eventdata, handles)
% hObject    handle to p62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
a = handles.Img;

se = ones(6,1);
bwout = imerode(a,se);

axes(handles.axes2); imshow(a);
axes(handles.axes3); imshow(bwout);


% --- Executes on button press in p63.
function p63_Callback(hObject, eventdata, handles)
% hObject    handle to p63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
a = handles.Img;

se1 = strel('square', 4);
se2 = strel('line', 5, 45);
bw1 = imdilate(a, se1);
bw2 = imerode(a,se2);



axes(handles.axes2); imshow(bw1);
axes(handles.axes3); imshow(bw2);


% --- Executes on button press in p64.
function p64_Callback(hObject, eventdata, handles)
% hObject    handle to p64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
a = handles.Img;
length = 18; tlevel = 0.2;
b = im2bw(a,tlevel); 

se = ones(3,length); bw1=imerode(~b,se);

bw2 = imerode(bw1, se); 
bw3= imdilate(bw2,se); 
bw4=imdilate(bw3,se);
boun = bwperim(bw4); 
[i j] = find(boun);

axes(handles.axes2); imshow(a);
axes(handles.axes3);  imshow(~b);
axes(handles.axes4); imshow(bw1);
axes(handles.axes5); imshow(bw2);
axes(handles.axes6); imshow(bw3);
axes(handles.axes7); imshow(bw4);

% --- Executes on button press in p66.
function p66_Callback(hObject, eventdata, handles)
% hObject    handle to p66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
a = handles.Img;
a=rgb2gray(a);
a = ~logical(a);

se = strel('disk',3); bw1 = imopen(a,se);
bw2 = imclose(a,se);
axes(handles.axes2);imshow(bw1); 
axes(handles.axes3); imshow(bw2);

se = strel('disk',6); bw1 = imopen(a,se);
bw2 = imclose(a,se);

axes(handles.axes4);imshow(bw1); 
axes(handles.axes5); imshow(bw2);

se = strel('disk',15); bw1 = imopen(a,se);
bw2 = imclose(a,se);

axes(handles.axes6);imshow(bw1); 
axes(handles.axes7); imshow(bw2);


% --- Executes on button press in p67.
function p67_Callback(hObject, eventdata, handles)
% hObject    handle to p67 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
a = handles.Img;
a= rgb2gray(a);
bw=bwperim(a);
se = strel('disk',15); bw1 = a-imerode(a,se);

axes(handles.axes2); imshow(a);
axes(handles.axes3);  imshow(bw);
axes(handles.axes4); imshow(bw1);

% --- Executes on button press in p68.
function p68_Callback(hObject, eventdata, handles)
% hObject    handle to p68 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
bw = handles.Img;
bw= rgb2gray(bw);
[L num] = bwlabel(bw);

axes(handles.axes2);
imagesc(bw); axis image; axis off; colorbar('North');
axes(handles.axes3);
imagesc(L); axis image; axis off; colormap(jet); colorbar('North');

% --- Executes on button press in p69.
function p69_Callback(hObject, eventdata, handles)
% hObject    handle to p69 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
a = handles.Img;

b = imcrop(a);
se1 = b; se2 = ~b;
bw = bwhitmiss(a,se1,se2);
[i j] = find(bw==1);

axes(handles.axes2); imshow(a);
axes(handles.axes3); imagesc(b); axis image; axis off;
axes(handles.axes4); imshow(a); hold on; plot(j, i, 'r*');

% --- Executes on button press in p611.
function p611_Callback(hObject, eventdata, handles)
% hObject    handle to p611 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
a = handles.Img;
axes(handles.axes2); imshow(a); title('Original');
se=strel('disk',10); bw=imopen(a,se);
axes(handles.axes3); imshow(bw); title('Opening disk radius=10');
se=strel('square',25); bw=imopen(a,se);
axes(handles.axes4); imshow(bw); title('Opening square side=25');




% --- Executes on button press in p614.
function p614_Callback(hObject, eventdata, handles)
% hObject    handle to p614 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
a = handles.Img;

se=strel(ones(3));
amax=imdilate(a,se);
amin=imerode(a,se);
mgrad=amax-amin;

axes(handles.axes2); imagesc(amax); axis image; axis off;
axes(handles.axes3);  imagesc(amin); axis image; axis off;
axes(handles.axes4); imagesc(mgrad); axis image; axis off; colormap(gray);

% --- Executes on button press in p615.
function p615_Callback(hObject, eventdata, handles)
% hObject    handle to p615 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
a = handles.Img;

back=imopen(a, strel('disk', 15));

a2=imsubtract(a,back);
a2= rgb2gray(a2);
a3=imadjust(a2);
axes(handles.axes2);
imshow(a);
axes(handles.axes3);
imshow(back);
axes(handles.axes4);
imshow(a2);
axes(handles.axes5);
imshow(a3);

% --- Executes on button press in p616.
function p616_Callback(hObject, eventdata, handles)
% hObject    handle to p616 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
a = handles.Img;
se=strel('disk',12);
atophat=imtophat(a,se);
axes(handles.axes2);
imshow(a);
axes(handles.axes3);
imshow(atophat);
atophat= rgb2gray(atophat);
b=imadjust(atophat);
axes(handles.axes4);
imshow(b);


% --- Executes on button press in p71.
function p71_Callback(hObject, eventdata, handles)
% hObject    handle to p71 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
a = handles.Img;
a= rgb2gray(a);
[counts,X]=imhist(a);
P = polyfit(X,counts,6); Y = polyval(P,X);
[V,ind]=sort(abs(diff(Y))); thresh=ind(3)./255;

level = graythresh(a);

axes(handles.axes2); imshow(a);
axes(handles.axes3);  im2bw(a,0.35);
axes(handles.axes4); im2bw(a,thresh);
axes(handles.axes5); im2bw(a,level);

% --- Executes on button press in p72.
function p72_Callback(hObject, eventdata, handles)
% hObject    handle to p72 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);


i = imread('kotak.png');

i= rgb2gray(i);

s=qtdecomp(i);

block=repmat(uint8(0),size(s));
for dim=[512 256 128 64 32 16 8 4 2 1];

numblock=length(find(s==dim));
	if(numblock>0)
	values=repmat(uint8(1),[dim dim numblock]);
	values(2:dim,2:dim,:)=0;
	block=qtsetblk(block,s,dim,values);
	end
end
block(end,1:end)=1;
block(1:end,end)=1;

k=find(block==1);
a=i; a(k)=255;


axes(handles.axes2); imshow(i);
axes(handles.axes3);  imshow(a);


% --- Executes on button press in p73.
function p73_Callback(hObject, eventdata, handles)
% hObject    handle to p73 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
a = handles.Img;
a=rgb2gray(a);
axes(handles.axes2); imshow(a,[]);
h1=fspecial('gaussian',[15 15],6);
h2=fspecial('gaussian',[30 30],12);

[bw,thresh]=edge(a,'log');
axes(handles.axes3); imshow(bw,[]);
[bw,thresh]=edge(a,'canny');
axes(handles.axes4); imshow(bw,[]);
[bw,thresh]=edge(imfilter(a,h1),'log');
axes(handles.axes5); imshow(bw,[]);
[bw,thresh]=edge(imfilter(a,h1),'canny');
axes(handles.axes6); imshow(bw,[]);
[bw,thresh]=edge(imfilter(a,h2),'log');
axes(handles.axes7); imshow(bw,[]);
[bw,thresh]=edge(imfilter(a,h2),'canny');


% --- Executes on button press in p74.
function p74_Callback(hObject, eventdata, handles)
% hObject    handle to p74 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bersihkan(handles);
i = handles.Img;

i=double(rgb2gray(i));
wdth=5; sdvn=2;
k=0.04;
hsmall=fspecial('gaussian',[wdth wdth],sdvn);
[fx,fy]=gradient(i);
fxsq=fx.^2; fysq=fy.^2; fxfy=fx.*fy;
fxsq=filter2(hsmall,fxsq);
fysq=filter2(hsmall,fysq);
fxfy=filter2(hsmall,fxfy);
r=(1-2.*k).*fxsq.*fysq-k.*(fxsq.^2+fysq.^2)-fxfy.^2;
s=ordfilt2(r,wdth.^2,ones(wdth));

[j,k]=find(r>max(r(:))./12 & r==s);

bw=zeros(size(r)); bw([j,k])=1;
bw=logical(bw);

axes(handles.axes2); imagesc(r); axis image; axis off; colormap(gray);
axes(handles.axes3); imshow(i,[]); hold on; plot(k,j,'r*');
