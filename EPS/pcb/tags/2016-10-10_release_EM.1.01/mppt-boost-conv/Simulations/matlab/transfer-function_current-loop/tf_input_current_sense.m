## Transfer function for input current sense amplifier
## Resources:
## http://datasheets.maximintegrated.com/en/ds/MAX4372-MAX4372T.pdf

function [transferFunction] = tf_input_current_sense ()
  shuntResistor = 0.068;
  voltageGain = 50;
  oneAmpToOneVolt = shuntResistor * 1 * voltageGain;
  transferFunction = oneAmpToOneVolt * tf(1,[0,(10e3*75e-12),1])
endfunction
