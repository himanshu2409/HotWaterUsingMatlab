%% Temperature Control in a Shower
% There are two inputs to the fuzzy controller: the water temperature and
% the flow rate. The controller uses these inputs to manipulate the hot and
% cold valves.
open_system('shower');
%% Simulation
% Simulate controller response with periodic changes in the setpoints of
% the water temperature and flow rate.
set_param('shower/flow scope','Open','on','Ymin','0','Ymax','1');
set_param('shower/temp scope','Open','on','Ymin','0','Ymax','30');
sim('shower',1000);
bdclose('shower');
figure
plotmf(fisMatrix,'input',1)
figure
plotmf(fisMatrix,'output',1)
