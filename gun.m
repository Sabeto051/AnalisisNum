## Copyright (C) 2018 SantiagoBedoya
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} gun (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: SantiagoBedoya <santiagobedoya@santiagobedoya-Lenovo-G40-80>
## Created: 2018-08-31

function [y] = gun (x)
  
  %y= asin((4*x^2-exp(3*x)+7*x-8)/(17));
  y = x - (exp(3*x)-4*x^2+17*sin(x)-7*x+8)/(3*exp(e*x)-8*x+17*cos(x)-7);
  %y = cos(x);

endfunction
