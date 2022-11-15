function open_local_mlx(mlxname, lineNum)
    whence = mfilename('fullpath');
    [filedir, basename] = fileparts(whence);
    mlxname = fullfile(filedir, [mlxname '.mlx']);
    matlab.desktop.editor.openAndGoToLine(mlxname, lineNum);
end