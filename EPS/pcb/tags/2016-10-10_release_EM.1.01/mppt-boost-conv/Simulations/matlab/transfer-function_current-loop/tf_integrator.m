## Transfer function of an integratior circuit
## Resources:
## http://www.aholme.co.uk/Ethernet/PLLQA.htm

function [transferFunction] = tf_integrator (resistorValue, capacitorValue)
  kGain = 1/(resistorValue*capacitorValue);
  transferFunction = tf(kGain,[0,1,0])
endfunction
