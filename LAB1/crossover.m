%crossover function-------------------------------------------------------
function xoverKids  = crossover(parents,options,NVARS, FitnessFcn,thisScore,thisPopulation) 
    nKids = length(parents)/2; 
    xoverKids = cell(nKids,1);%empty array
    index = 1; 
%Genetic algorithms slideset for labs have duplicate entries in this
%function... Not needed.------------------------------------------------
    for i=1:nKids 

        parent = thisPopulation{parents(index)}; 
        index = index + 2; 
        %add boundaries +5 and +10, again we use ceil to round to positive inf.-
        %random positions( range 1 through 15).
        p1 = ceil(5*rand);
        p2 = ceil(5*rand)+5;
        p3 = ceil(5*rand)+10;

        %shuffling takes place here---------------------------------------
        TBShuffled = [p1 p2 p3];%create an array of the 3 random positions(say 3 5 8)
        TBShuffled = TBShuffled(randperm(3));%shuffle array elements(say 5 8 3)

        child = parent; %not sure about this
        %shuffled cards
        child(p1) = parent(TBShuffled(1));
        child(p2) = parent(TBShuffled(2));
        child(p3) = parent(TBShuffled(3));

        xoverKids{i} = child; 
    end

end