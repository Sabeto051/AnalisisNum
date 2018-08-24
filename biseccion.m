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
## @deftypefn {} {@var{retval} =} biseccion (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: SantiagoBedoya <santiagobedoya@santiagobedoya-Lenovo-G40-80>
## Created: 2018-08-24

function [resultados] = biseccion (a,b, nmax, delta, tole)

format long

i=0;
h=delta+1;
xant = b;
error = tole+1;

while i<nmax && h>delta && error>tole
  x= (a+b)/2;
  y=fun(x);
  h=abs(y);
  error = abs(x-xant);
  
  
  if fun(a)*y<0
    b=x;
   else
    a=x;
   endif
   
   i+=1;
   xant=x;
   
   resultados(i,1)=i;
   resultados(i,2)=x;
   resultados(i,3)=y;
   resultados(i,4)=error;
   
endwhile

endfunction
