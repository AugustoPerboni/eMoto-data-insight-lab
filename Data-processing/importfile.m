function data = importfile(filename, dataLines)
%IMPORTFILE1 Import data from a text file
%  PRIMEIRASAIDA = IMPORTFILE1(FILENAME) reads data from text file
%  FILENAME for the default selection.  Returns the data as a table.
%
%  PRIMEIRASAIDA = IMPORTFILE1(FILE, DATALINES) reads data for the
%  specified row interval(s) of text file FILENAME. Specify DATALINES as
%  a positive scalar integer or a N-by-2 array of positive scalar
%  integers for dis-contiguous row intervals.
%
%  Example:
%  PrimeiraSaida = importfile1("C:\Users\augus\Documents\MATLAB\MyAPP - Telemetria\MyApp\Primeira_Saida.txt", [1, Inf]);
%
%  See also READTABLE.
%
% Auto-generated by MATLAB on 11-Oct-2022 02:45:34

%% Input handling

% If dataLines is not specified, define defaults
if nargin < 2
    dataLines = [1, Inf];
end

%% Set up the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 16);

% Specify range and delimiter
opts.DataLines = dataLines;
opts.Delimiter = [" ", ","];

% Specify column names and types
opts.VariableNames = ["x1", "x2", "x3", "x4", "x5", "x6", "x7", "x8", "x9", "x10", "x11", "x12", "x13", "x14", "x15", "x16"];
opts.VariableTypes = ["string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Specify variable properties
opts = setvaropts(opts, ["x1", "x2", "x3", "x4", "x5", "x6", "x7", "x8", "x9", "x10", "x11", "x12", "x13", "x14", "x15", "x16"], "WhitespaceRule", "preserve");
opts = setvaropts(opts, ["x1", "x2", "x3", "x4", "x5", "x6", "x7", "x8", "x9", "x10", "x11", "x12", "x13", "x14", "x15", "x16"], "EmptyFieldRule", "auto");

% Import the data
data = readtable(filename, opts);

end