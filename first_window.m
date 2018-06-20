function varargout = first_window(varargin)
% FIRST_WINDOW MATLAB code for first_window.fig
%      FIRST_WINDOW, by itself, creates a new FIRST_WINDOW or raises the existing
%      singleton*.
%
%      H = FIRST_WINDOW returns the handle to a new FIRST_WINDOW or the handle to
%      the existing singleton*.
%
%      FIRST_WINDOW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FIRST_WINDOW.M with the given input arguments.
%
%      FIRST_WINDOW('Property','Value',...) creates a new FIRST_WINDOW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before first_window_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to first_window_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help first_window

% Last Modified by GUIDE v2.5 16-Jun-2018 01:37:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @first_window_OpeningFcn, ...
                   'gui_OutputFcn',  @first_window_OutputFcn, ...
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


% --- Executes just before first_window is made visible.
function first_window_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to first_window (see VARARGIN)

% Choose default command line output for first_window
handles.output = hObject;
%这块很重要，这是将程序模块化的过程中所必须的，不然文件夹里的东西太不好管理了%
addpath(genpath(pwd)); % 添加当前路径下的所有子目录
%................................%
movegui(hObject,'center');
%将加载出来的窗体显示在屏幕的正中间%
movegui(hObject,'center');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes first_window wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = first_window_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(first_window);


% --------------------------------------------------------------------
function interpolation_Callback(hObject, eventdata, handles)
% hObject    handle to interpolation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
interpolation;

% --------------------------------------------------------------------
function line_approx_Callback(hObject, eventdata, handles)
% hObject    handle to line_approx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function integration_Callback(hObject, eventdata, handles)
% hObject    handle to integration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
integration_s;

% --------------------------------------------------------------------
function differential_Callback(hObject, eventdata, handles)
% hObject    handle to differential (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function athor_Callback(hObject, eventdata, handles)
% hObject    handle to athor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h_about=dialog('name','关于','position',[500 200 600 200]);  %【区域左下点的横坐标，左下点纵坐标，宽，高】
uicontrol('parent',h_about,'style','text','string','【课程作业】 数值分析操作界面','position',[60 150 500 20],'fontsize',14); 
uicontrol('parent',h_about,'style','text','string','【学生】 司皓 2017111003','position',[-17 70 400 20],'fontsize',14);  
uicontrol('parent',h_about,'style','text','string','【任课教师】 江老师','position',[0 110 300 20],'fontsize',14); 
uicontrol('parent',h_about,'style','text','string','【时间】 2018年6月         ','position',[30 30 300 20],'fontsize',14); 
movegui(h_about,'center');

% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
cData=imread('numerical analysis1.jpg');
image(cData);
 axis off;%关掉网格
% Hint: place code in OpeningFcn to populate axes1
