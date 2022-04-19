function [fp2pf,fp3pf,fp3pm,fp5pf,fp5pm] = SemenenkoNumDiff(x0,h)
if h>0    % forward diff formula
    fp2pf = (f(x0+h)-f(x0))/(h); % Two point forward-difference
    fp3pf = (-3*f(x0)+4*f(x0+h)-f(x0+2*h))/(2*h); % Three point forward-difference
    fp3pm = (f(x0+h)-f(x0-h))/(2*h); % Three point midpoint-difference
    fp5pf = (-25*f(x0)+48*f(x0+h)-36*f(x0+2*h)+16*f(x0+3*h)-3*f(x0+4*h))/(12*h); % Five point forward-difference
    fp5pm = (f(x0-2*h)-8*f(x0-h)+8*f(x0+h)-f(x0+2*h))/(12*h); % Five point midpoint-difference
elseif h<0    % backward diff formula
    fp2pf = (f(x0)-f(x0-h))/(h); % Two point backward-difference
    fp3pf = (f(x0-2*h)-4*f(x0-h)+3*f(x0))/(2*h); % Three point backward-difference
    fp3pm = (f(x0+h)-f(x0-h))/(2*h); % Three point midpoint-difference
    fp5pf = (3*f(x0-4*h)-16*f(x0-3*h)+36*f(x0-2*h)-48*f(x0-h)+25*f(x0))/(12*h); % Five point backward-difference
    fp5pm = (f(x0-2*h)-8*f(x0-h)+8*f(x0+h)-f(x0+2*h))/(12*h); % Five point midpoint-difference
else
    fprinf('invalid h')
end
end