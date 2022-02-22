function phase_diagram(Line_Voltage,Line_Current,Load_Voltage,Load_Current)

%compass is used for better understanding
tiledlayout(1,2)

% Left plot for Line and Load Voltage
ax1 = nexttile;

compass(ax1,Line_Voltage,'r')
hold on
compass(ax1,Load_Voltage,'b')
title('Comparison between Load and Line Voltage')
legend(ax1,{'Line Voltage','','','Load Voltage'})


% Right plot Line and Load Current
ax2 = nexttile;

compass(ax2,Line_Current,'r')
hold on
compass(ax2,Load_Current,'b')
title('Comparison between Load and Line Current')
legend(ax2,{'Line Current','','','Load Current'})

end
