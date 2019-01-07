## Copyright (C) 2018 Nicolas Perez
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
## @deftypefn {Function File} {@var{retval} =} importante (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Nicolas Perez <nicolasperez@nicolasperez-GL62-6QF>
## Created: 2018-11-18

function [retval] = importante (input1, input2)

  SPLINES CUBICOS
  6 de las ecuaciones sale de evaluar cada x en una ecuacion cubica e igualarla a la y
  la 7 y 8 salen de igualar las pendientes (primera derivada) de la ecuacion a1 con la a2 evaluada en el primer punto medio y la a2 con la a3 evualada en el segundo punto medio 
  (los puntos medios son los que no son extremos)
  la 9 y 10 salen de igualar las concavidades (segunda derivada) de la ecuacion a1 con la a2 evualada en el primero punto medio y la a2 con la a3 evualada en el segundo punto medio
  si no dan condiciones iniciales, las ultimas dos salen de igualar las concavidades del primer y ultimo punto a 0
  si me dan condiciones iniciales, se usan esas
  
  INTEGRACION NUMERICA
  metodo simpson simple h/3 * (y0 + 4y1 + y2)
  metodo simpson compuesto: h/3 * (y0 + 4sum(yi impares) + 2sum(yi pares) + yn)
  metodo trapecio simple (y0 + y1)  * (x1 - x0)
                         ---------  
                            2 
  metodo traprecio compuesto h/2 * (y0 + 2sum(yi hasta n-1) + yn
  
  SOLUCION ED
  Euler: yi+1 es aprox = yi + h f(ti, yi)
  RK: yi+1 es aprox = yi + h(k1 + 2k2 + 2k3 + k4)/6
  k1 = f(ti, yi)
  k2 = f(ti + h/2 , yi + hk1/2)
  k3 = f(ti + h/2 , yi + hk2/2)
  k4 = f(ti + h, yi + hk3)
  
  LAGRANGE
  Para el termino de cada punto es y0 que multiplica a todas las x menos las otras coordenas x de los otros puntos todo sobre x0 - cada uno de las otras equis
  y0(x-x1)(x-x2)(x-x3)      y1(x-x0)(x-x2)(x-x3)
  -------------------- +    -------------------- + ...
  (x0-x1)(x0-x2)(x0-x3)     (x1-x0)(x1-x2)(x1-x3)
  
  GAUSSIANA
  (n-1)n(4n+1)    , siendo n el numero de filas
  ------------
       6
       
  ED PARABOLICAS
  dU              d^2U          alfa^2 * k
  --- = alfa^2 * ------   con  ------------  <= 1/2
  dt              dx^2             h^2
  
               alfa^2*k                 2 * alfa^2 * k            alfa^2 * k
  Ui+1, j  =   -------- Ui, j-1 + (1 - ----------------) Ui, j + ----------- Ui , j+1     me tienen que dar el primer renglon y todos los extremos como una funucion
                  h^2                        h^2                      h^2 
       
       
  ED HIPERBOLICAS
  d^2U              d^2U         
  --- = alfa^2 *   ------                         me tienen que dar el primer renglon y todos los extremos como una funcion
  d^2t              dx^2                          ademas, la derivada del primer renglon como una funcion
  
  para hallar el segundo renglon
  
  U(ti, xj) = k * g4(xj) + U(0, xj)
  
  para el resto
  
                alfa^2*k^2                     alfa^2 * k^2            alfa^2 * k^2
  Ui+1, j  =   ---------- Ui, j-1 + 2*(1 - ------------------) Ui, j + ----------- Ui , j+1 - Ui-1, j     me tienen que dar el primer renglon y todos los extremos como una funucion
                    h^2                         h^2                        h^2 
       
       
       
  
  
  ANTES DEL PARCIAL
  serie de taylor: nesima derivada de f evaluada en a * (x-a)^n todo sobre n!
  error absoluto de suma eax + eay
  error relativo suma abs(x/(x+y))erx + abs(y/(x+y))ery
  ea resta eax + eay
  er resta abs(x/(x-y))erx + abs(y/(x-y))ery
  ea multi abs(x)*eay + abs(y)eax
  er multi erx + ery
  ea divi 1/abs(y) * eax + abs(x)/y^2 * eay
  er divi erx+ ery
  ea funcion abs(f'(x)*ea)
  er funcion abs((x*f'(x))/f(x))*er
  regla falsa x=b-(fun(b)*(b-a))/(fun(b)-fun(a))
  biseccion (a+b)/2
  error absoluto: |x-ñ|
  error relativo: |x-ñ|/|x|
  cifras signif: er<5*10^-k
  






endfunction
