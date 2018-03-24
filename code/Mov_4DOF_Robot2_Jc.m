close all;
clear;


ToDeg = 180/pi;
ToRad = pi/180;
L1=50;
L2=100;
L3=100;


th1=0;
th2=0;
th3=0;
th4=0;
DHfk4Dof_Jc(th1,th2,th3,th4,0);
view(134,12);
pause;
stp=30;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Joint1
for i=-90:stp:90
   DHfk4Dof_Jc(th1+i,th2,th3,th4,1); 
end
for i=90:-stp:-90
    if i==0
      DHfk4Dof_Jc(th1+i,th2,th3,th4,0);  
    else
      DHfk4Dof_Jc(th1+i,th2,th3,th4,1);
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Joint2


for i=-180:stp:180
   DHfk4Dof_Jc(th1,th2+i,th3,th4,1); 
end
for i=180:-stp:-180
    if i==0
      DHfk4Dof_Jc(th1,th2+i,th3,th4,0);  
    else
      DHfk4Dof_Jc(th1,th2+i,th3,th4,1); 
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Joint3


for i=-180:stp:180
  DHfk4Dof_Jc(th1,th2,th3+i,th4,1); 
end
for i=180:-stp:-180
    if i==0
      DHfk4Dof_Jc(th1,th2,th3+i,th4,0);  
    else
      DHfk4Dof_Jc(th1,th2,th3+i,th4,1); 
    end 
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Joint4


for i=0:stp:180
  DHfk4Dof_Jc(th1,th2,th3,th4+i,1); 
end
for i=180:-stp:0
    if i==0
      DHfk4Dof_Jc(th1,th2,th3,th4+i,0);  
    else
      DHfk4Dof_Jc(th1,th2,th3,th4+i,1); 
    end 
end

