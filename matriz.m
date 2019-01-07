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
## @deftypefn {} {@var{retval} =} matriz (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: SantiagoBedoya <santiagobedoya@santiagobedoya-Lenovo-G40-80>
## Created: 2018-09-26

function [y] = matriz ()
  
  %y=[17 8 -5;-3 20 -6;1 -3 14];
  
%  for i=1 : 10
%    for j=1 : 10
%      if j==i
%        y(i,j)=55;
%      else
%        y(i,j)=i;
%      endif
%    endfor
%  endfor


y=[1	16	256	4096	0	0	0	0	0	0	0	0;
1	20	400	8000	0	0	0	0	0	0	0	0;
0	-1	-32	-768	0	1	32	768	0	0	0	0;
0	0	-2	-96	0	0	2	96	0	0	0	0;
0	0	0	0	1	4	16	64	0	0	0	0;
0	0	0	0	1	16	256	4096	0	0	0	0;
0	0	0	0	0	0	-2	-24	0	0	2	24;
0	0	0	0	0	-1	-8	-48	0	1	8	48;
0	0	0	0	0	0	0	0	1	0	0	0;
0	0	0	0	0	0	0	0	1	4	16	64;
0	0	0	0	0	0	0	0	0	0	2	0;
0	0	2	120	0	0	0	0	0	0	0	0];

endfunction
