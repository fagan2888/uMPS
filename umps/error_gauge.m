function err = gauge_error(A,A_left,A_right,C_left,C_right)
% Computes the errors |A*C - A_left|^2, |A*C - C*A|^2, |C*A - A_right|^2
% in Frobenius norm
if nargin < 5
	C_right = C_left;
end
AC = [];
CA = [];
if ~isempty(A_left)
	AC = ncon({A_left,C_right},{[-1,1,-3],[1,-2]});
end
if ~isempty(A_right)
	CA = ncon({C_left,A_right},{[-1,1],[1,-2,-3]});
else
	error('A_left and A_right cannot be both empty.');
end
err_vec = zeros(1,3);
if ~isempty(A_left) & ~isempty(A)
	err_vec(1) = norm(AC(:) - A(:))^2;
end
if ~isempty(A_left) & ~isempty(A_right)
	err_vec(2) = norm(AC(:) - CA(:))^2;
end
if ~isempty(A_right) & ~isempty(A)
	err_vec(3) = norm(CA(:) - A(:))^2;
end
err = max(err_vec);
end

