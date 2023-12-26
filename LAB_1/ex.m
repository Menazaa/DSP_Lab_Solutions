ex_num = input("Enter the Exercise Number: ");

switch ex_num

    case 1
        output = ([150 150 150 160] + 10)*1.1
    case 2
        v = [2 8 7 3 1 0 8 9];
        output = ~mod(v,2) - mod(v,2)
    case 3
        v = [2 8 7 3 1 0 8 9];
        v([end-2:end]) = v([end-2:end]) + 2
        v([end-3:end]) = wrev(v([end-3:end]))
        v([2:2:end]) = v([1:2:end]) + v([2:2:end])
    case 4
        output = [(1:9).^2 wrev((1:8).^2)]
    case 5
        M = [1 2 3 4; -1 -2 -3 -4; 1 2 3 4; -1 -2 -3 -4];
        M(:,[4 3 2 1])
        M([4 3 2 1],:)
        M(:,[3 2])
        M([4 1],:)
        M([1 3 4 2],:)
        M(:,[3 2 4 1])
    case 6
        x = [(1:5)' zeros(5,3) ((1:5).*(-1))']
        y = x'
        z = y;
        z(1,4) = z(1,4) -2;
        z(1,5) = z(1,5) -4;
        z(5,4) = z(5,4) +2;
        z(5,5) = z(5,5) +4
        w = abs(x);
        w(:, [2:4]) = 100;
        w(:,1) = w(:,1).*2; 
        w(:,5) = w(:,5)./10
    case 7
        A = [
            2 3 5 6 21;
            5 0 2 2 0;
            6 7 8 9 11;
            0 13 17 5 6;
            1 4 0 3 9
                ];
        B = [152;19;135;127;66];
        S = rank(A) == length(B)
        output = (inv(A))*B
end
