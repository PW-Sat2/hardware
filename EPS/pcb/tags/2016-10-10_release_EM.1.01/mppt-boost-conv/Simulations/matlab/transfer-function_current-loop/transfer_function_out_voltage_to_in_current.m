clc
close all
clear all

# Octave compatibility
# http://wiki.octave.org/Control_package
pkg load control

# Transfer function from fb to out
transferFunction = tf_out_voltage_to_in_current();

frequencyVector = logspace(0, 7, 1e5);
[tf_mag, tf_phase] = bode(transferFunction, frequencyVector * (2*pi));
tf_mag = mag2db(abs(tf_mag));

# LTSpice simulation plotting
tf_ltspice = load('setup_ch0_transfer_function_out_to_input_current.txt');
tf_ltspice_frequency = tf_ltspice(:,1);
tf_ltspice_magnitude = tf_ltspice(:,2);
tf_ltspice_phase = tf_ltspice(:,3);

subplot(2, 1, 1)
semilogx(tf_ltspice_frequency, tf_ltspice_magnitude)

hold on

subplot(2, 1, 2)
semilogx(tf_ltspice_frequency, tf_ltspice_phase)

hold on

# Matlab simulation plotting
subplot(2, 1, 1)
semilogx(frequencyVector, tf_mag, 'r')
grid on
title('Bode plot for low-pass differential amplifier')
ylabel('Magnitude [dB]')

subplot(2, 1, 2)
semilogx(frequencyVector, tf_phase, 'r')
grid on
ylabel('Phase [deg]')
xlabel('Frequency [Hz]')

