%% This script will generate an example figure and it will export the figure in jpg, png and pdf format
% Jouni Ritvanen, 2023

close all
clear

fs=18;               % Font size
fc=[0.79 0.79 0.79]; % marker face color (light grey)

x=0:pi/9:3*pi;   % creating x-vector

figure  % create figure
fplot(@sin,[0,3*pi],'k','LineWidth',1.5)    % plotting sin(x) function
hold on % this allows to add next plot into the figure
grid on % adding grid
plot(x,sin(x),'o',...         % plotting discrete sin(x) points
    'MarkerSize',8,...        % setting marker size to 8
    'MarkerEdgeColor','k',... % setting marker edge color to black
    MarkerFaceColor=fc)       % setting marker face color to fc'

set(gca,'fontname','times')   % setting font to Times
set(gca,'fontsize',fs)        % setting font size to fs
ylim([-1.1 1.1])              % setting y-axes limits
xlabel('x-label Times 18pt')  % setting x-axes label
ylabel('y-label Times 18pt')  % setting y-axes label
xticks(0:pi/2:3*pi)           % setting x-ticks every pi/2
% setting x-ticks labels
xticklabels({'0','\pi/2','\pi','3\pi/2','2\pi','5\pi/2','3\pi'})
%% this section will adjust the paper size to correspond the figure size
% i.e. the output will be the size of Matlab figure, not e.g. A4
pps=get(gcf,'paperposition');   % gets figure size and position
set(gcf,'papersize',pps(3:4));  % sets paper size to correspond figure size
set(gcf,'paperposition',[0 0 pps(3:4)]);    % sets figure to fill paper
%% this section will save the figure in jpeg and pdf formats
print -djpeg -r600 example_name % output will in resolution of 600
print -dpng -r600 example_name  % png resoluutiolla 600
print -dpdf example_name        % vector pdf output


