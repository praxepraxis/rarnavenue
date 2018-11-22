## Copyright (C) 2018 root
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
## @deftypefn {} {@var{retval} =} binstring (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: root <root@phillidor>
## Created: 2018-11-03

## -----------------------------------------------------------------------------

## ***RECURSIVE VERSION TRIAL*** ###
##function retval = binstring (A,k)
##  n = length(A);
##  if n != k
##    
##  endif
##  i = 0;
##  while n <= k
##    i = i + 1;
##    c = horzcat(A(1,:)(i))
##  endwhile
##  for i = 1:n
##    C = horzcat(A(1,:)(i))
##  endfor
##
##endfunction

## -----------------------------------------------------------------------------

## **SECOND TRIAL NONRECURSIVE** ##
##function retval = binstring (A)
##  n = length(A);
##  for i = 1:n
##    c = horzcat(A(1,:)(i))
##  endfor
##
##endfunction

## -----------------------------------------------------------------------------

function retval = binstring (A)
  n = length(A);
  o = zeros(n,1);
  for i = 1:n
    o(i,1) = base2dec(num2str(A(i,:)),10);
  endfor
  retval = o;
endfunction










