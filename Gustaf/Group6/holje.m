function [newmatris] = holje(grannmatris)
    k = size(grannmatris, 1);
    newmatris = zeros(k,k);
    for i=1:k
        % J coord iteration
        for j=1:k
            if i == j
                continue
            end
            % Sum iteration
            for m=1:k
                iter = grannmatris^m;
                if iter(i,j) > 0
                    newmatris(i,j) = 1;
                    break
                end
            end
        end
        
    end
end

