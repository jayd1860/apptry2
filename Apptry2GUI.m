function varargout = Apptry2GUI(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Apptry2GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Apptry2GUI_OutputFcn, ...
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


% ---------------------------------------------------------------------
function Apptry2GUI_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);
setNamespace('Apptry2GUI');
set(handles.figure1, 'name', sprintf('%s - %s', get(handles.figure1, 'name'), getAppDir()));


% --------------------------------------------------------------------
function varargout = Apptry2GUI_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;


% --------------------------------------------------------------------
function pushbuttonID_Callback(hObject, eventdata, handles)
set(handles.editID, 'string', num2str(func21(16)));


% --------------------------------------------------------------------
function editID_Callback(hObject, eventdata, handles)
x = 7;

% --------------------------------------------------------------------
function figure1_CloseRequestFcn(hObject, eventdata, handles)
delete(hObject);
deleteNamespace('Apptry2GUI');


% --------------------------------------------------------------------
function figure1_DeleteFcn(hObject, eventdata, handles)
deleteNamespace('Apptry2GUI');
