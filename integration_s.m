function varargout = integration_s(varargin)
% INTEGRATION_S MATLAB code for integration_s.fig
%      INTEGRATION_S, by itself, creates a new INTEGRATION_S or raises the existing
%      singleton*.
%
%      H = INTEGRATION_S returns the handle to a new INTEGRATION_S or the handle to
%      the existing singleton*.
%
%      INTEGRATION_S('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTEGRATION_S.M with the given input arguments.
%
%      INTEGRATION_S('Property','Value',...) creates a new INTEGRATION_S or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before integration_s_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to integration_s_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help integration_s

% Last Modified by GUIDE v2.5 17-Jun-2018 18:39:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @integration_s_OpeningFcn, ...
                   'gui_OutputFcn',  @integration_s_OutputFcn, ...
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


% --- Executes just before integration_s is made visible.
function integration_s_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to integration_s (see VARARGIN)

% Choose default command line output for integration_s
handles.output = hObject;
movegui(hObject,'center');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes integration_s wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = integration_s_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
integration_set1 = get(handles.radiobutton1,'value');
integration_set2 = get(handles.radiobutton2,'value');
integration_set3 = get(handles.radiobutton3,'value');
integration_set4 = get(handles.radiobutton4,'value');
integration_uf= get(handles.edit1,'string');%要求的函数
str = ['@(x)',integration_uf];
integration_f=str2func(str);
integration_ux= get(handles.edit2,'string');%积分范围
integration_ux1 = str2num(integration_ux);
if integration_set3==1
    integration_uorder=get(handles.edit5,'string');%积分范围
    integration_order = str2num(integration_uorder);
end
integration_X=[integration_ux1(1),integration_ux1(2)];%积分区间
integration_real = quadgk(integration_f,integration_ux1(1),integration_ux1(2));
integration_simu;
integration_fstring = num2str(integration_if);
set(handles.edit3,'string',integration_real);
set(handles.edit4,'string',integration_fstring);
set(handles.edit3,'enable','off');
set(handles.edit4,'enable','off');
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(integration_s);


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
cData=imread('numerical analysis1.jpg');
image(cData);
 axis off;%关掉网格
% Hint: place code in OpeningFcn to populate axes1



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tString=get(hObject,'tag');
switch tString
    case 'radiobutton1'
          set(handles.edit1,'string','sqrt(x)');
          set(handles.edit2,'string','1 2');
          set(handles.edit6,'string',{'是牛顿-寇次公式的特殊形式，梯形公式会把函数图像梯形公式当作成梯形并估算它的面积 ';''});
          map=imread('tixing.jpg');
          axes(handles.axes2);image(map);axis off;
          set(handles.edit3,'string','');
          set(handles.edit4,'string','');
          set(handles.edit5,'visible','off');
          set(handles.text7,'visible','off');
    case 'radiobutton2'
          set(handles.edit1,'string','sqrt(x)');
          set(handles.edit2,'string','1 2');
          set(handles.edit6,'string',{'是牛顿-寇次公式的特殊形式，以二次曲线逼近的方式取代矩形或梯形积分公式，以求得定积分的数值近似解。 ';''});
          map=imread('simpson.jpg');
          axes(handles.axes2);image(map);axis off;
          set(handles.edit3,'string','');
          set(handles.edit4,'string','');
          set(handles.edit5,'visible','off');
          set(handles.text7,'visible','off');
    case 'radiobutton3'
        set(handles.edit6,'string',{'-已知f(x1),……,f(xn)的值';'-以n+1点进行插值，求得对应f(x)的拉格朗日多项式。';'-对n次的多项式求积 ';''});
          map=imread('newton-cotes.jpg');
          axes(handles.axes2);image(map);axis off;
         set(handles.edit1,'string','sqrt(x)');
          set(handles.edit2,'string','1 2');
          set(handles.edit3,'string','');
          set(handles.edit4,'string','');
          set(handles.edit5,'visible','on');
          set(handles.text7,'visible','on');
    case 'radiobutton4'
          set(handles.edit1,'string','sqrt(x)');
          set(handles.edit2,'string','1 2');
          set(handles.edit6,'string',{'-勒让德多项式是区间[-1,1]上的正交多项式';'因此勒让德多项式的零点就是求积公式的高斯点';'若积分区间不在[-1,1]上，则需要将其化到[-1,1]上'});
          map=imread('gauss-legendre.jpg');
          axes(handles.axes2);image(map);axis off;
          set(handles.edit3,'string','');
          set(handles.edit4,'string','');
          set(handles.edit5,'visible','off');
          set(handles.text7,'visible','off');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1,'string','');
set(handles.edit2,'string','');
set(handles.edit3,'string','');
set(handles.edit4,'string','');
set(handles.edit5,'string','');



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
