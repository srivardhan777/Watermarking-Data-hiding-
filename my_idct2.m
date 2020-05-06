function a = my_idct2(arg1)

[m, n] = size(arg1);
% Basic algorithm.
if (nargin == 1)
  if (m > 1) && (n > 1)
    a = idct(idct(arg1).').';
    return;
  else
    mrows = m;
    ncols = n;
  end
end

% Padding for vector input.

b = arg1;
if nargin==2
    ncols = mrows(2); 
    mrows = mrows(1); 
end

mpad = mrows; npad = ncols;
if m == 1 && mpad > m, b(2, 1) = 0; m = 2; end
if n == 1 && npad > n, b(1, 2) = 0; n = 2; end
if m == 1, mpad = npad; npad = 1; end   % For row vector.

% Transform.

a = idct(b, mpad);
if m > 1 && n > 1, a = idct(a.', npad).'; end
