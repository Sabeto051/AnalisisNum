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
## @deftypefn {} {@var{retval} =} tresbloques (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: SantiagoBedoya <santiagobedoya@santiagobedoya-Lenovo-G40-80>
## Created: 2018-09-26

function [D,L,U] = tresbloques ()
  
  A=matriz();
  [m,n]=size(A);
  
  for i=1 : n
    D(i,i)=A(i,i);
  endfor
  
  for i=1 : m
    for j=1 : n
      if i>j
        L(i,j)= -A(i,j);
      elseif j>i
        U(i,j)= -A(i,j);
      endif
    endfor
  endfor
  
  L(n,n)=0;
  U(n,n)=0;
  
endfunction
