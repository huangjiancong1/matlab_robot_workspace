close all;
% A(1:90)=struct('cdata',[],'colormap',[]);
clear;

global Link
DH_4DOF_Jc_Robot2;

th=[0,0,0,0,0,0];

num=1;

for th1=-90:20:90
    for th2= -180:30:180
        for th3=-180:30:180
            for th4=0:60:180
                        fprintf('%d %d %d %d  \n',[th1,th2,th3,th4]');
                        DHfk4Dof_Jc(th1,th2,th3,th4,1); 
                        x(num)=Link(5).p(1);
                        y(num)=Link(5).p(2);
                        z(num)=Link(5).p(3);
                        num=num+1;
                        plot3(x,y,z,'r*');hold on;
            end
        end
    end
end
