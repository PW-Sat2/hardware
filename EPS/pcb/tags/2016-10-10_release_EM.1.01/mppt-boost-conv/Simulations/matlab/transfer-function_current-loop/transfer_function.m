clc
close all
clear all

# Octave compatibility
# http://wiki.octave.org/Control_package
pkg load control

# Open-loop transfer function
tf_total = tf_input_current_sense() * tf_lpa(220e3,10e3,100e-9) * tf_integrator(220e3,1e-9) * tf_integrator_to_fb () * tf_fb_to_out() * tf_out_voltage_to_in_current();

frequencyVector = logspace(0, 6, 1e5);
[tf_mag, tf_phase] = bode(tf_total, frequencyVector * (2*pi));
tf_mag = mag2db(abs(tf_mag));

# Simulation plotting
figure
subplot(2, 1, 1)
semilogx(frequencyVector, tf_mag, 'b');
grid on
title('Bode plot for current loop')
ylabel('Magnitude [dB]')

subplot(2, 1, 2)
semilogx(frequencyVector, tf_phase, 'r')
grid on
ylabel('Phase [deg]')
xlabel('Frequency [Hz]')

figure
impulse(tf_total, 1e-2)

closedLoop = feedback(-tf_total, 1);

figure
initial(closedLoop, [0 1e-4 0 0 0], 0.05)