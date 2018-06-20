function varargout = line_approx(varargin)
% LINE_APPROX MATLAB code for line_approx.fig
%      LINE_APPROX, by itself, creates a new LINE_APPROX or raises the existing
%      singleton*.
%
%      H = LINE_APPROX returns the handle to a new LINE_APPROX or the handle to
%      the existing singleton*.
%
%      LINE_APPROX('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LINE_APPROX.M with the given input arguments.
%
%      LINE_APPROX('Property','Value',...) creates a new LINE_APPROX or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before line_approx_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to line_approx_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help line_approx

% Last Modified by GUIDE v2.5 16-Jun-2018 10:34:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @line_approx_OpeningFcn, ...
                   'gui_OutputFcn',  @line_approx_OutputFcn, ...
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


% --- Executes just before line_approx is made visible.
function line_approx_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to line_approx (see VARARGIN)

% Choose default command line output for line_approx
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes line_approx wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = line_approx_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
