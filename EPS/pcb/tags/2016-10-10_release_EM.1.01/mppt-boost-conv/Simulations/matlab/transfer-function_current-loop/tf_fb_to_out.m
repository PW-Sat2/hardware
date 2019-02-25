## Transfer function of an low-pass amplifier

function [transferFunction] = tf_fb_to_out ()
  DCgain = 0.000589;
  transferFunction = DCgain * tf(1,[0,(13e3*100e-9),1])
endfunction
