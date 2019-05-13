function varargout = DataCorrelations(varargin)

% Last Modified by GUIDE v2.5 10-May-2017 11:45:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DataCorrelations_OpeningFcn, ...
                   'gui_OutputFcn',  @DataCorrelations_OutputFcn, ...
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


function DataCorrelations_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DataCorrelations (see VARARGIN)

load('TotalData.mat');

[~,n] = size(TotalData);
for k = 1:n
    handles.ages(k) = TotalData(k).ages;
    handles.grades(k) = TotalData(k).grades;
    handles.tvhrs(k) = TotalData(k).tvhrs;
    handles.sleephrs(k) = TotalData(k).sleephrs;
    handles.internethrs(k) = TotalData(k).internethrs;
    handles.hwhrs(k) = TotalData(k).hwhrs;
    handles.phonehrs(k) = TotalData(k).phonehrs;
    handles.school(k) = TotalData(k).school;
    handles.timings(k) = mean(TotalData(k).timings);
end

handles.polyOrder = 1;

% Choose default command line output for DataCorrelations
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DataCorrelations wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% OUTPUT FUNCTIONS %

function varargout = DataCorrelations_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;

% INITIALIZATION FUNCTIONS %

function var1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function var2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function polyOrder_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% CALLBACK FUNCTIONS %

function var1_Callback(hObject, eventdata, handles)

val1 = get(hObject,'Value');
str = cellstr(get(hObject,'String'));
handles.xaxis = str{val1};
switch str{val1}
    case 'Age'
        handles.var1 = handles.ages;
    case 'Grade'
        handles.var1 = handles.grades;
    case 'TV Hours'
        handles.var1 = handles.tvhrs;
    case 'Sleep Hours'
        handles.var1 = handles.sleephrs;
    case 'Internet Hours'
        handles.var1 = handles.internethrs;
    case 'Homework Hours'
        handles.var1 = handles.hwhrs;
    case 'Phone Hours'
        handles.var1 = handles.phonehrs;
    case 'School Valuation'
        handles.var1 = handles.school;
    case 'Reaction Times'
        handles.var1 = handles.timings;
    case 'Select Variable'
        handles.var1 = 0;
end

guidata(hObject, handles);


function var2_Callback(hObject, eventdata, handles)

val2 = get(hObject,'Value');
str = cellstr(get(hObject,'String'));
handles.yaxis = str{val2};
switch str{val2}
    case 'Age'
        handles.var2 = handles.ages;
    case 'Grade'
        handles.var2 = handles.grades;
    case 'TV Hours'
        handles.var2 = handles.tvhrs;
    case 'Sleep Hours'
        handles.var2 = handles.sleephrs;
    case 'Internet Hours'
        handles.var2 = handles.internethrs;
    case 'Homework Hours'
        handles.var2 = handles.hwhrs;
    case 'Phone Hours'
        handles.var2 = handles.phonehrs;
    case 'School Valuation'
        handles.var2 = handles.school;
    case 'Reaction Times'
        handles.var2 = handles.timings;
    case 'Select Variable'
        handles.var1 = 0;
end

guidata(hObject, handles);

function scatplot_Callback(hObject, eventdata, handles)

mat = [handles.var1' handles.var2'];
[~,I] = sort(mat(:,1));
matsort = mat(I,:);
xvar = matsort(:,1);
yvar = matsort(:,2);

scatter(xvar,yvar,'r');
xlabel(handles.xaxis);
ylabel(handles.yaxis);

function semilogx_Callback(hObject, eventdata, handles)

mat = [handles.var1' handles.var2'];
[~,I] = sort(mat(:,1));
matsort = mat(I,:);
xvar = matsort(:,1);
yvar = matsort(:,2);

semilogx(xvar,yvar,'g o');
xlabel(['Log ' handles.xaxis]);
ylabel(handles.yaxis);

function semilogy_Callback(hObject, eventdata, handles)

mat = [handles.var1' handles.var2'];
[~,I] = sort(mat(:,1));
matsort = mat(I,:);
xvar = matsort(:,1);
yvar = matsort(:,2);

semilogy(xvar,yvar,'b o');
xlabel(handles.xaxis);
ylabel(['Log ' handles.yaxis]);

function loglog_Callback(hObject, eventdata, handles)

mat = [handles.var1' handles.var2'];
[~,I] = sort(mat(:,1));
matsort = mat(I,:);
xvar = matsort(:,1);
yvar = matsort(:,2);

loglog(xvar,yvar,'m o');
xlabel(['Log ' handles.xaxis]);
ylabel(['Log ' handles.yaxis]);

function lineFit_Callback(hObject, eventdata, handles)

if (get(hObject,'Value') == get(hObject,'Max'))
    myPolyfit(handles.var1,handles.var2,1);
    xlabel(handles.xaxis);
    ylabel(handles.yaxis);
end

function polyFit_Callback(hObject, eventdata, handles)

if (get(hObject,'Value') == get(hObject,'Max'))
	myPolyfit(handles.var1,handles.var2,handles.polyOrder);
    xlabel(handles.xaxis);
    ylabel(handles.yaxis);
end

function expFit_Callback(hObject, eventdata, handles)

if (get(hObject,'Value') == get(hObject,'Max'))
	myExpFit(handles.var1,handles.var2);
    xlabel(handles.xaxis);
    ylabel(handles.yaxis);
end

function powFit_Callback(hObject, eventdata, handles)

if (get(hObject,'Value') == get(hObject,'Max'))
	myPowFit(handles.var1,handles.var2);
    xlabel(handles.xaxis);
    ylabel(handles.yaxis);
end

function polyOrder_Callback(hObject, eventdata, handles)

handles.polyOrder = str2double(get(hObject,'String'));
guidata(hObject, handles);

function exitbutton_Callback(hObject, eventdata, handles)

close all;