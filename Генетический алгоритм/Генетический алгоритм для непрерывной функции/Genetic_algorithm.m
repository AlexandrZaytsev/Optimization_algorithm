
function [funct_value, coords, num_op] = Genetic_algorithm(M, MC, L, dim) 
    gens = unifrnd(-1, 1, dim, M);
    num_op = 0;
    while num_op < L
        new_gen = ones(dim, M);
        num_op = num_op + 1;
        adaptation = ones(1, M)./(ones(1, M)+Genetic_function(gens));
        sort_adaptation = sort(adaptation, 'descend');
        [~, refidx] = sort(adaptation, 'descend');
        gens = gens(:,refidx);
        coords = gens(:, 1);
        funct_value = Genetic_function(coords);
        sort_adaptation = sort_adaptation(:, 3:M-MC);
        prob = sort_adaptation./sum(sort_adaptation);
        gens_2_M_MC = gens(:, 3:M-MC);
        new_gen_2_M_MC = gens_2_M_MC;

        for i = 1:size(new_gen_2_M_MC, 1)
            new_gen_2_M_MC(i, :) = randsample(gens_2_M_MC(i,:), size(gens_2_M_MC, 2), true, prob);

        end
        new_gen(:, 2:M-MC-1) = new_gen_2_M_MC;
        new_gen(:, M-MC:M) = unifrnd(-1, 1, dim, MC+1);
        new_gen(:, 1:2) = gens(:, 1:2);
        gens = new_gen;
    end
end



        
        
        









