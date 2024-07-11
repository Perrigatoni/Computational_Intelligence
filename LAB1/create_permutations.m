%create initial population-----------------------------------------------
function pop = create_permutations(NVARS, FitnessFcn, options) 
    totalPopulationSize = sum(options.PopulationSize); 
    n = NVARS; 
    pop = cell(totalPopulationSize,1);%declare population matrix size, empty cells 
    for i = 1:totalPopulationSize 
        pop{i} = randperm(n);%p = randperm(n) returns a row vector containing a random permutation of the integers from 1 to n without repeating elements 
    end
end