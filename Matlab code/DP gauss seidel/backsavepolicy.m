% This is one of eight savepolicy scripts. These scripts iterate over the
% discrete state space and call the function rolloutpolicy, which updates
% value and policy of the respective discrete state.

% This script iterates left on the upper side

global policy
global consts

for xi=(consts.nx-1):-1:2
    for yi=250:(consts.ny-1)
        for thetai=1:consts.ntheta
            x=consts.rangex(xi);
            y=consts.rangey(yi);
            theta=consts.rangetheta(thetai);
            [ v,radius ] = rolloutpolicy( x,y,theta);
            policy(xi,yi,thetai)=radius;
        end
    end
end

    