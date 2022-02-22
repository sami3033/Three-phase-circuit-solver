function varargout = GUI_Equiv_Imp(varargin)
% GUI_EQUIV_IMP MATLAB code for GUI_Equiv_Imp.fig
%      GUI_EQUIV_IMP, by itself, creates a new GUI_EQUIV_IMP or raises the existing
%      singleton*.
%
%      H = GUI_EQUIV_IMP returns the handle to a new GUI_EQUIV_IMP or the handle to
%      the existing singleton*.
%
%      GUI_EQUIV_IMP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_EQUIV_IMP.M with the given input arguments.
%
%      GUI_EQUIV_IMP('Property','Value',...) creates a new GUI_EQUIV_IMP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_Equiv_Imp_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_Equiv_Imp_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_Equiv_Imp

% Last Modified by GUIDE v2.5 21-Feb-2022 11:27:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_Equiv_Imp_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_Equiv_Imp_OutputFcn, ...
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


% --- Executes just before GUI_Equiv_Imp is made visible.
function GUI_Equiv_Imp_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_Equiv_Imp (see VARARGIN)

% Choose default command line output for GUI_Equiv_Imp
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_Equiv_Imp wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_Equiv_Imp_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in MatLoad1.
function MatLoad1_Callback(hObject, eventdata, handles)
% hObject    handle to MatLoad1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns MatLoad1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from MatLoad1


% --- Executes during object creation, after setting all properties.
function MatLoad1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MatLoad1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in MatLoad2.
function MatLoad2_Callback(hObject, eventdata, handles)
% hObject    handle to MatLoad2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns MatLoad2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from MatLoad2


% --- Executes during object creation, after setting all properties.
function MatLoad2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MatLoad2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in MatLoad3.
function MatLoad3_Callback(hObject, eventdata, handles)
% hObject    handle to MatLoad3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns MatLoad3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from MatLoad3


% --- Executes during object creation, after setting all properties.
function MatLoad3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MatLoad3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in equivalentmaker.
function equivalentmaker_Callback(hObject, eventdata, handles)
% hObject    handle to equivalentmaker (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% matrixLoad1 = str2double(get(handles.MatLoad1,'string'));
% matrixLoad2 = str2double(get(handles.MatLoad2,'string'));
% matrixLoad3 = str2double(get(handles.MatLoad3,'string'));
% 
% simpLoad1 = equivalent(matrixLoad1);
% simpLoad2 = equivalent(matrixLoad2);
% simpLoad3 = equivalent(matrixLoad3);
% 
% set(handles.Load1,'String',num2str(simLoad1));
% set(handles.ln3,'String',num2str(simLoad2));
% set(handles.ln2,'String',num2str(simLoad3));



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



function Load3_Callback(hObject, eventdata, handles)
% hObject    handle to ln2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ln2 as text
%        str2double(get(hObject,'String')) returns contents of ln2 as a double


% --- Executes during object creation, after setting all properties.
function ln2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ln2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Load2_Callback(hObject, eventdata, handles)
% hObject    handle to ln3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ln3 as text
%        str2double(get(hObject,'String')) returns contents of ln3 as a double


% --- Executes during object creation, after setting all properties.
function ln3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ln3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
menu;
% close(GUI_Equiv_Imp);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


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
I=imread('userinput.jpeg');
hi = imagesc(I);
colormap gray
% Turn the handlevisibility off so that we don't inadvertently plot into the axes again
% Also, make the axes invisible
set(ha,'handlevisibility','off','visible','off')


% --- Executes during object creation, after setting all properties.
function text10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

a1 = handles.matLoad1;
simLoad1 = equivalent(a1,handles.sld1,handles.eld1);
set(handles.ld1,'string',num2str(simLoad1));
setappdata(0,'LOAD1',simLoad1);

a2 = handles.matLoad2;
simLoad2 = equivalent(a2,handles.sld2,handles.eld2);
set(handles.ld2,'string',num2str(simLoad2));
setappdata(0,'LOAD2',simLoad2);

a3 = handles.matLoad3;
simLoad3 = equivalent(a3,handles.sld3,handles.eld3);
set(handles.ld3,'string',num2str(simLoad3));
setappdata(0,'LOAD3',simLoad3);

b1 = handles.matLine1;
simLine1 = equivalent(b1,handles.sln1,handles.eln1);
set(handles.ln1,'string',num2str(simLine1));
setappdata(0,'LINE1',simLine1);

b2 = handles.matLine2;
simLine2 = equivalent(b2,handles.sln2,handles.eln2);
set(handles.ln2,'string',num2str(simLine2));
setappdata(0,'LINE2',simLine2);

b3 = handles.matLine3;
simLine3 = equivalent(b3,handles.sln3,handles.eln3);
set(handles.ln3,'string',num2str(simLine3));
setappdata(0,'LINE3',simLine3);


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[fn pn] = uigetfile;
matLoad1 = dlmread(fn);
handles.matLoad1 = matLoad1;

sld1 = str2num(get(handles.sld1,'string'));
eld1 = str2num(get(handles.eld1,'string'));

handles.sld1 = sld1;
handles.eld1 = eld1;

guidata(hObject,handles);


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[fn pn] = uigetfile;
matLine1 = dlmread(fn);
handles.matLine1 = matLine1;

sln1 = str2num(get(handles.sln1,'string'));
eln1 = str2num(get(handles.eln1,'string'));

handles.sln1 = sln1;
handles.eln1 = eln1;

guidata(hObject,handles);



% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[fn pn] = uigetfile;
matLoad2 = dlmread(fn);
handles.matLoad2 = matLoad2;

sld2 = str2num(get(handles.sld2,'string'));
eld2 = str2num(get(handles.eld2,'string'));

handles.sld2 = sld2;
handles.eld2 = eld2;

guidata(hObject,handles);


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[fn pn] = uigetfile;
matLoad3 = dlmread(fn);
handles.matLoad3 = matLoad3;

sld3 = str2num(get(handles.sld3,'string'));
eld3 = str2num(get(handles.eld3,'string'));

handles.sld3 = sld3;
handles.eld3 = eld3;

guidata(hObject,handles);


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[fn pn] = uigetfile;
matLine2 = dlmread(fn);
handles.matLine2 = matLine2;

sln2 = str2num(get(handles.sln2,'string'));
eln2 = str2num(get(handles.eln2,'string'));

handles.sln2 = sln2;
handles.eln2 = eln2;

guidata(hObject,handles);


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[fn pn] = uigetfile;
matLine3 = dlmread(fn);
handles.matLine3 = matLine3;

sln3 = str2num(get(handles.sln3,'string'));
eln3 = str2num(get(handles.eln3,'string'));

handles.sln3 = sln3;
handles.eln3 = eln3;

guidata(hObject,handles);


function sld1_Callback(hObject, eventdata, handles)
% hObject    handle to sld1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sld1 as text
%        str2double(get(hObject,'String')) returns contents of sld1 as a double


% --- Executes during object creation, after setting all properties.
function sld1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sld1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sld2_Callback(hObject, eventdata, handles)
% hObject    handle to sld2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sld2 as text
%        str2double(get(hObject,'String')) returns contents of sld2 as a double


% --- Executes during object creation, after setting all properties.
function sld2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sld2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sld3_Callback(hObject, eventdata, handles)
% hObject    handle to sld3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sld3 as text
%        str2double(get(hObject,'String')) returns contents of sld3 as a double


% --- Executes during object creation, after setting all properties.
function sld3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sld3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sln3_Callback(hObject, eventdata, handles)
% hObject    handle to sln3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sln3 as text
%        str2double(get(hObject,'String')) returns contents of sln3 as a double


% --- Executes during object creation, after setting all properties.
function sln3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sln3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sln2_Callback(hObject, eventdata, handles)
% hObject    handle to sln2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sln2 as text
%        str2double(get(hObject,'String')) returns contents of sln2 as a double


% --- Executes during object creation, after setting all properties.
function sln2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sln2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sln1_Callback(hObject, eventdata, handles)
% hObject    handle to sln1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sln1 as text
%        str2double(get(hObject,'String')) returns contents of sln1 as a double


% --- Executes during object creation, after setting all properties.
function sln1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sln1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eld1_Callback(hObject, eventdata, handles)
% hObject    handle to eld1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eld1 as text
%        str2double(get(hObject,'String')) returns contents of eld1 as a double


% --- Executes during object creation, after setting all properties.
function eld1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eld1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eld2_Callback(hObject, eventdata, handles)
% hObject    handle to eld2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eld2 as text
%        str2double(get(hObject,'String')) returns contents of eld2 as a double


% --- Executes during object creation, after setting all properties.
function eld2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eld2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eld3_Callback(hObject, eventdata, handles)
% hObject    handle to eld3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eld3 as text
%        str2double(get(hObject,'String')) returns contents of eld3 as a double


% --- Executes during object creation, after setting all properties.
function eld3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eld3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eln3_Callback(hObject, eventdata, handles)
% hObject    handle to eln3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eln3 as text
%        str2double(get(hObject,'String')) returns contents of eln3 as a double


% --- Executes during object creation, after setting all properties.
function eln3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eln3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eln2_Callback(hObject, eventdata, handles)
% hObject    handle to eln2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eln2 as text
%        str2double(get(hObject,'String')) returns contents of eln2 as a double


% --- Executes during object creation, after setting all properties.
function eln2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eln2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eln1_Callback(hObject, eventdata, handles)
% hObject    handle to eln1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eln1 as text
%        str2double(get(hObject,'String')) returns contents of eln1 as a double


% --- Executes during object creation, after setting all properties.
function eln1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eln1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
