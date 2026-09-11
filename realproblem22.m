%% MATLAB Problem 22 - Motor Speed Sensor

%time = 0:1:10;

%speed = [0 120 230 340 430 500 540 560 570 575 580];

% A motor is considered to have reached its target speed
% when its speed is 550 RPM or higher.

% TASK:
%
% 1. Find the average motor speed.
%
% 2. Find the maximum motor speed.
%
% 3. Find all speed measurements >= 550 RPM.
%
% 4. Find the INDEX of the first measurement >= 550 RPM.
%
% 5. Find the TIME when the motor first reached 550 RPM.
%
% 6. Plot Speed vs Time.
%
% 7. Add a suitable title, axis labels, and grid.
%
% 8. Display the first time at which the motor reached
%    the target speed.

% <---------------------SOLUTION-------------------------->


time = 0:1:10;
speed = [0 120 230 340 430 500 540 560 570 575 580];

avg_motor_speed = mean(speed);
[max_speed, ind_max_speed] = max(speed);

speed_moreThan_550 = speed(speed > 550);
ind_550 = find(speed >= 550,1);
time_550 = time(int_550);
plot(time, speed);
title("Speed vs Time");
xlabel("Time(sec)");
ylabel("Speed (RPM)");
grid on
fprintf("First target speed reached at %d seconds\n", time_550);