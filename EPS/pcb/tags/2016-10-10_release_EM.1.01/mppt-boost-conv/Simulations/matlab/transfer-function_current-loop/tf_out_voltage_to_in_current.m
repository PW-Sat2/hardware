## Transfer function from output voltage to input current

function [transferFunction] = tf_out_voltage_to_in_current ()
  transferFunction = -(tf(1,[3e-13,(7.3e3*10e-9),0.067]) + tf([1.7e-13,(1.2e4*2e-11),0.087],1))
endfunction
