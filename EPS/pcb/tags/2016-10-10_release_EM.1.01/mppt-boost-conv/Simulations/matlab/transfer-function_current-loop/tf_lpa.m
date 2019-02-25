## Transfer function of an low-pass amplifier
## Resources:
## https://focus.ti.com/lit/ml/sloa088/sloa088.pdf

function [transferFunction] = tf_lpa (feedbackResistorsValue, inputResistorsValue, feedbackCapacitorsValue)
  DCgain = feedbackResistorsValue/inputResistorsValue;
  transferFunction = DCgain * tf(1,[0,inputResistorsValue*feedbackCapacitorsValue,1])
endfunction
