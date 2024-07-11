%mutation function--------------------------------------------------------
%  mutationChildren is the output of this function named cards_mutate-----
function mutationChildren = mutate(parents ,options,NVARS, FitnessFcn, state, thisScore,thisPopulation,mutationRate) 
%create empty cells-------------------------------------------------------
    mutationChildren = cell(length(parents),1);
    
    for i=1:length(parents) 
        parent = thisPopulation{parents(i)}; 
        p = ceil(length(parent) * rand(1,2)); %use ceil to round to positive inf because of rand
        child = parent; 
        %create mutated chromosome
        child(p(1)) = parent(p(2)); 
        child(p(2)) = parent(p(1)); 
        mutationChildren{i} = child; 
    end

end