function varargout = startMenu(varargin)
% STARTMENU MATLAB code for startMenu.fig
%      STARTMENU, by itself, creates a new STARTMENU or raises the existing
%      singleton*.
%
%      H = STARTMENU returns the handle to a new STARTMENU or the handle to
%      the existing singleton*.
%
%      STARTMENU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in STARTMENU.M with the given input arguments.
%
%      STARTMENU('Property','Value',...) creates a new STARTMENU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before startMenu_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to startMenu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help startMenu

% Last Modified by GUIDE v2.5 03-Dec-2017 20:39:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @startMenu_OpeningFcn, ...
                   'gui_OutputFcn',  @startMenu_OutputFcn, ...
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


% --- Executes just before startMenu is made visible.
function startMenu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to startMenu (see VARARGIN)

% Choose default command line output for startMenu

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes startMenu wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = startMenu_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in user.
function user_Callback(hObject, eventdata, handles)
% hObject    handle to user (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all
userInput


% --- Executes on button press in rand.
function rand_Callback(hObject, eventdata, handles)
% hObject    handle to rand (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gridX;
global pauseV;
global gridSize;
pauseV=1;
gridX=randGen(gridSize);
disp(gridSize);
close all
menuRun
 


% --- Executes on slider movement.
function gridNumSlider_Callback(hObject, eventdata, handles)
global gridSize;
% hObject    handle to gridNumSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
handles.sizeDisp.String=round(hObject.Value);
gridSize=round(hObject.Value);
disp(hObject.Value);
%sizeDisp
% --- Executes during object creation, after setting all properties.
function gridNumSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gridNumSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
