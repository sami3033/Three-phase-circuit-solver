function varargout = wyetowye(varargin)
% WYETOWYE MATLAB code for wyetowye.fig
%      WYETOWYE, by itself, creates a new WYETOWYE or raises the existing
%      singleton*.
%
%      H = WYETOWYE returns the handle to a new WYETOWYE or the handle to
%      the existing singleton*.
%
%      WYETOWYE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WYETOWYE.M with the given input arguments.
%
%      WYETOWYE('Property','Value',...) creates a new WYETOWYE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before wyetowye_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to wyetowye_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help wyetowye

% Last Modified by GUIDE v2.5 21-Feb-2022 03:21:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @wyetowye_OpeningFcn, ...
                   'gui_OutputFcn',  @wyetowye_OutputFcn, ...
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


% --- Executes just before wyetowye is made visible.
function wyetowye_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to wyetowye (see VARARGIN)

% Choose default command line output for wyetowye
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes wyetowye wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = wyetowye_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

ha = axes('units','normalized', ...
            'position',[0 0 1 1]);
% Move the background axes to the bottom
uistack(ha,'bottom');
% Load in a background image and display it using the correct colors
% The image used below, is in the Image Processing Toolbox.  If you do not have %access to this toolbox, you can use another image file instead.
I=imread('wyewye.png');
hi = imagesc(I);
colormap gray
% Turn the handlevisibility off so that we don't inadvertently plot into the axes again
% Also, make the axes invisible
set(ha,'handlevisibility','off','visible','off')



% --- Executes on button press in run.
function run_Callback(hObject, eventdata, handles)
% hObject    handle to run (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

vp1 = str2double(get(handles.VPhase1,'string'));
vp2 = str2double(get(handles.VPhase2,'string'));
vp3 = str2double(get(handles.VPhase3,'string'));

 zl1 = str2double(get(handles.ZLine1,'string'));
  zl2 = str2double(get(handles.ZLine2,'string'));
 zl3 = str2double(get(handles.ZLine3,'string'));

%zl1 = getappdata(0,'LINE1');
%zl2 = getappdata(0,'LINE2');
%zl3 = getappdata(0,'LINE3');

 ld1 = str2double(get(handles.Load1,'string'));
  ld2 = str2double(get(handles.Load2,'string'));
 ld3 = str2double(get(handles.Load3,'string'));

%ld1 = getappdata(0,'LOAD1');
%ld2 = getappdata(0,'LOAD2');
%ld3 = getappdata(0,'LOAD3');


[a b c d e] = wyewyeCon(vp1,vp2,vp3,zl1,zl2,zl3,ld1,ld2,ld3);

set(handles.ILine1,'string',num2str(a(1,1)));
set(handles.ILine2,'string',num2str(a(1,2)));
set(handles.ILine3,'string',num2str(a(1,3)));

set(handles.ILoad1,'string',num2str(b(1,1)));
set(handles.ILoad2,'string',num2str(b(1,2)));
set(handles.ILoad3,'string',num2str(b(1,3)));

set(handles.VLoad1,'string',num2str(c(1,1)));
set(handles.VLoad2,'string',num2str(c(1,2)));
set(handles.VLoad3,'string',num2str(c(1,3)));

set(handles.VLine1,'string',num2str(d(1,1)));
set(handles.VLine2,'string',num2str(d(1,2)));
set(handles.VLine3,'string',num2str(d(1,3)));

set(handles.tp,'string',num2str(e(1,1)));
set(handles.rp,'string',num2str(e(1,2)));
set(handles.cp,'string',num2str(e(1,3)));
set(handles.pf,'string',num2str(e(1,4)));


if( (e(1,3)) < 0)
    set(handles.param,'string','Leading');
elseif( num2str(e(1,3)) == 0)
    set(handles.param,'string','Unity');
else
    set(handles.param,'string','Lagging');
end

figure;
phase_diagram(d,a,c,b);


function ZLine1_Callback(hObject, eventdata, handles)
% hObject    handle to ZLine1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ZLine1 as text
%        str2double(get(hObject,'String')) returns contents of ZLine1 as a double


% --- Executes during object creation, after setting all properties.
function ZLine1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ZLine1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Load1_Callback(hObject, eventdata, handles)
% hObject    handle to Load1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Load1 as text
%        str2double(get(hObject,'String')) returns contents of Load1 as a double


% --- Executes during object creation, after setting all properties.
function Load1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Load1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Load2_Callback(hObject, eventdata, handles)
% hObject    handle to Load2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Load2 as text
%        str2double(get(hObject,'String')) returns contents of Load2 as a double


% --- Executes during object creation, after setting all properties.
function Load2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Load2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Load3_Callback(hObject, eventdata, handles)
% hObject    handle to Load3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Load3 as text
%        str2double(get(hObject,'String')) returns contents of Load3 as a double


% --- Executes during object creation, after setting all properties.
function Load3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Load3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ZLine2_Callback(hObject, eventdata, handles)
% hObject    handle to ZLine2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ZLine2 as text
%        str2double(get(hObject,'String')) returns contents of ZLine2 as a double


% --- Executes during object creation, after setting all properties.
function ZLine2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ZLine2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ZLine3_Callback(hObject, eventdata, handles)
% hObject    handle to ZLine3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ZLine3 as text
%        str2double(get(hObject,'String')) returns contents of ZLine3 as a double


% --- Executes during object creation, after setting all properties.
function ZLine3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ZLine3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function VPhase1_Callback(hObject, eventdata, handles)
% hObject    handle to VPhase1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of VPhase1 as text
%        str2double(get(hObject,'String')) returns contents of VPhase1 as a double


% --- Executes during object creation, after setting all properties.
function VPhase1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to VPhase1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function VPhase3_Callback(hObject, eventdata, handles)
% hObject    handle to VPhase3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of VPhase3 as text
%        str2double(get(hObject,'String')) returns contents of VPhase3 as a double


% --- Executes during object creation, after setting all properties.
function VPhase3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to VPhase3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function VPhase2_Callback(hObject, eventdata, handles)
% hObject    handle to VPhase2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of VPhase2 as text
%        str2double(get(hObject,'String')) returns contents of VPhase2 as a double


% --- Executes during object creation, after setting all properties.
function VPhase2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to VPhase2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
