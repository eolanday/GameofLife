function varargout = menuRun(varargin)
% MENURUN MATLAB code for menuRun.fig
%      MENURUN, by itself, creates a new MENURUN or raises the existing
%      singleton*.
%
%      H = MENURUN returns the handle to a new MENURUN or the handle to
%      the existing singleton*.
%
%      MENURUN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MENURUN.M with the given input arguments.
%
%      MENURUN('Property','Value',...) creates a new MENURUN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before menuRun_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to menuRun_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help menuRun

% Last Modified by GUIDE v2.5 03-Dec-2017 07:41:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @menuRun_OpeningFcn, ...
                   'gui_OutputFcn',  @menuRun_OutputFcn, ...
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


% --- Executes just before menuRun is made visible.
function menuRun_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to menuRun (see VARARGIN)

% Choose default command line output for menuRun
handles.output = hObject;
global gridX
handles.gridX=gridX;
gridDraw(handles.gridX);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes menuRun wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = menuRun_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pauseplay.
function pauseplay_Callback(hObject, eventdata, handles)
% hObject    handle to pauseplay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of pauseplay
if(hObject.Value)
    hObject.BackgroundColor=[0 1 0];
    hObject.String='PAUSE';
else
    hObject.BackgroundColor=[1 0 0];
    hObject.String='PLAY';
end
while(hObject.Value)
    gridDraw(handles.gridX);
    handles.gridX=checkAdj(handles.gridX);
    pause(1/10);
    if(hObject.Value)
        cla;
    end
end

guidata(hObject,handles);

% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear
close all
masterScript

% --- Executes on button press in close.
function close_Callback(hObject, eventdata, handles)
% hObject    handle to close (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all
