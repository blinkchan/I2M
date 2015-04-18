clear all; close all; clc;
darkFigure();
catImage = im2double(imread('github_icon.png'));
[h, w, ~] = size(catImage);
imshow(catImage);
load('ctrlPoints.mat');

%% Mouse input
xlabel ('Select at most 200 points along the outline', 'FontName', '�L�n������', 'FontSize', 14);
[ ctrlPointX, ctrlPointY ] = ginput(200);
ctrlPointList = [ctrlPointX ctrlPointY];
clickedN = size(ctrlPointList,1);

promptStr = sprintf('%d points selected', clickedN);
xlabel (promptStr, 'FontName', '�L�n������', 'FontSize', 14);

%% Calculate B����zier curve (Your efforts here)
outlineVertexList = ctrlPointList; 


%% Draw and fill the polygon
drawAndFillPolygon( catImage, ctrlPointList, outlineVertexList, true, true, true ); %ctrlPointScattered, polygonPlotted, filled

%% Save my precious ctrlPointList
save('ctrlPoints.mat', 'ctrlPointList')