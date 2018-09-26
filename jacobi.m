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
## @deftypefn {} {@var{retval} =} jacobi (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: SantiagoBedoya <santiagobedoya@santiagobedoya-Lenovo-G40-80>
## Created: 2018-09-26

function [] = jacobi (vecini,nmax,delta,tole)
  
  format long
  
  A= matriz();
  b= vectorb();
  [D,L,U]=tresbloques();
  
  T= D^(-1) * (L+U);
  C= D^(-1)*b;
  
  i= 0;
  h= delta+1; 
  error= tole+1;
  while i<nmax && h>delta && error>tole
    i+= 1
    X= T * vecini + C
    h= norm(A*X-b) ##  h= || AX1-b ||
    error= norm(X-vecini) ## error = || X1-X0 ||
    display('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
    
    vecini= X;
  endwhile
  
  
endfunction
