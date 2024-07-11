function state = card_plot(options,state,flag,cards) 

    [unused,i] = min(state.Score); 
    chromosome = state.Population{i};
    
    stack49 = abs(sum(chromosome(1:5))-49);
    stack33 = abs(sum(chromosome(6:10))-33);
    productstack = log(1+abs(prod(chromosome(11:15))-12600)*5);
    
    disp(['Stack 1(sum 49).               ', 'Deviation']);
    disp([chromosome(1:5), stack49]);
    
    disp(['Stack 2(sum 33).               ', 'Deviation']);
    disp([chromosome(6:10), stack33]);
    
    disp(['Stack 3(product 12600).        ', 'Deviation']);
    disp([chromosome(11:15), productstack]);

end
