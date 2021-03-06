X(1) = 1;
r(1) = 0.994;
p(1) = 1;
p(2) = 0.497;
q(1) = 1;
q(2) = 0.497;

n = 10;
for i = 2:n
    X(i) = 1.0 / (2^i);
    r(i) = r(i - 1) * (1/2.0);
end

for i = 3:n
    p(i) = 3/2.0 * p(i - 1) - p(i - 2);
    q(i) = 5/2.0 * q(i - 1) - q(i - 2);
end

[1:n; X; r; p; q]'

[1:n; X - r; X - p; X - q]'



