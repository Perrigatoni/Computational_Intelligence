%function name: stack_fitness
%function input: x
%function output: scores
function scores = stack_fitness(x) 

    scores = zeros(size(x,1),1); %documentation suggested size(x,1) even though the array was of one row -\0/-
    %%scores = zeros(size(x),1);  ===testline===                                                            
    for i = 1:size(x,1)
    %%for i = 1:size(x)           ===testline=== 
       
        a = x{i};
        
        stack49 = a(1:5);
        stack33 = a(6:10);
        productstack = a(11:15);
        
        f = abs(sum(stack49)-49);
        f = f+abs(sum(stack33)-33);
        f = f+abs(prod(productstack)-12600);
        
        scores(i) = f;
    end 
end