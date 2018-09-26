## Copyright (C) 2018 Personal
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} fun (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Personal <Personal@SANTIAGOBEDOYAP>
## Created: 2018-07-18

function [y] = fun (x)

%y = (5*x^2+ exp(3*x))/(sin(2*x)+3);

%y= exp(3*x)-4*x^2+17*sin(x)-7*x+8;

%y = x^2 - exp(x) + sin(x) + 2*x - 4;


  %y = 1000000*exp(x) + 435000*(exp(x)-1)/x - 1564000;
  y = 2*x - 0.5 + cos(x);
endfunction
