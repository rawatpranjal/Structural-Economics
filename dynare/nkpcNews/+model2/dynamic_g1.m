function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = model2.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(20, 35);
g1(1,16)=(-T(3));
g1(1,20)=1;
g1(1,32)=(-params(2));
g1(2,16)=1;
g1(2,31)=(-1);
g1(2,17)=T(2);
g1(2,19)=(-T(2));
g1(2,32)=T(2);
g1(3,11)=(-1);
g1(3,14)=1;
g1(3,21)=(-(1-params(1)));
g1(4,13)=(-params(5));
g1(4,21)=(-params(6));
g1(4,22)=1;
g1(5,13)=(-1);
g1(5,14)=1;
g1(6,1)=(-params(3));
g1(6,11)=1;
g1(6,33)=(-1);
g1(6,10)=(-1);
g1(7,2)=(-params(4));
g1(7,12)=1;
g1(7,35)=(-1);
g1(8,11)=(-((1-params(3))*T(1)*(-params(5))));
g1(8,12)=(-(1-params(4)));
g1(8,17)=1;
g1(9,18)=1;
g1(9,19)=(-1);
g1(9,32)=1;
g1(10,11)=(-T(1));
g1(10,15)=1;
g1(11,14)=(-1);
g1(11,15)=1;
g1(11,16)=1;
g1(12,16)=(-params(10));
g1(12,17)=(-1);
g1(12,19)=1;
g1(12,20)=(-params(9));
g1(13,34)=(-1);
g1(13,23)=1;
g1(14,3)=(-1);
g1(14,24)=1;
g1(15,4)=(-1);
g1(15,25)=1;
g1(16,5)=(-1);
g1(16,26)=1;
g1(17,6)=(-1);
g1(17,27)=1;
g1(18,7)=(-1);
g1(18,28)=1;
g1(19,8)=(-1);
g1(19,29)=1;
g1(20,9)=(-1);
g1(20,30)=1;

end
