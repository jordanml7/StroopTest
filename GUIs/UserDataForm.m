function varargout = UserDataForm(varargin)

% Last Modified by GUIDE v2.5 09-May-2017 20:59:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @UserDataForm_OpeningFcn, ...
                   'gui_OutputFcn',  @UserDataForm_OutputFcn, ...
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

function UserDataForm_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

guidata(hObject, handles);

function varargout = UserDataForm_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;

% ---------------------------Initializations----------------------------- %

function Name_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Age_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function tvhrs_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function sleephrs_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function hwhrs_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function phonehrs_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function school_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function grade_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function internethrs_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% -----------------------------Callbacks--------------------------------- %


function Name_Callback(hObject, eventdata, handles)

handles.name = get(hObject,'String');
guidata(hObject, handles);

function Age_Callback(hObject, eventdata, handles)

handles.age = str2double(get(hObject,'String'));
guidata(hObject, handles);

function grade_Callback(hObject, eventdata, handles)

handles.grade = str2double(get(hObject,'String'));
guidata(hObject, handles);

function tvhrs_Callback(hObject, eventdata, handles)

handles.tvhrs = str2double(get(hObject,'String'));
guidata(hObject, handles);

function sleephrs_Callback(hObject, eventdata, handles)

handles.sleephrs = str2double(get(hObject,'String'));
guidata(hObject, handles);

function hwhrs_Callback(hObject, eventdata, handles)

handles.hwhrs = str2double(get(hObject,'String'));
guidata(hObject, handles);

function internethrs_Callback(hObject, eventdata, handles)

handles.internethrs = str2double(get(hObject,'String'));
guidata(hObject, handles);

function phonehrs_Callback(hObject, eventdata, handles)

handles.phonehrs = str2double(get(hObject,'String'));
guidata(hObject, handles);

function school_Callback(hObject, eventdata, handles)

handles.school = str2double(get(hObject,'String'));
guidata(hObject, handles);

function execute_Callback(hObject, eventdata, handles)

Data.names = handles.name;
Data.ages = handles.age;
Data.grades = handles.grade;
Data.tvhrs = handles.tvhrs;
Data.sleephrs = handles.sleephrs;
Data.internethrs = handles.internethrs;
Data.hwhrs = handles.hwhrs;
Data.phonehrs = handles.phonehrs;
Data.school = handles.school;

assignin('base','FormData',Data);

close all;