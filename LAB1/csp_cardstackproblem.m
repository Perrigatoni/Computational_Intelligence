%starting with clc,clear to clear the Command window------------------
clear; clc;
%number of cards------------------------------------------------------
numocards = 15;
%initialize the values of cards(matrix filled with 1 through 15)------
cards = (1:numocards);
%functions----------------------------------------------------
type create_permutations.m 
type crossover.m 
type mutate.m 
type stack_fitness.m 
type card_plot.m 
%call fitness function------------------------------------------------
FitnessFcn = @(x)stack_fitness(x); 

options = gaoptimset('PopulationType', 'custom','PopInitRange',[1;numocards]); 
%set the options as per the documentation of gaoptimset
options = gaoptimset(options,'CreationFcn',@create_permutations, ... 
                             'CrossoverFcn',@crossover, ... 
                             'MutationFcn',@mutate, ... 
                             'PlotFcn', @card_plot, ...
                             'FitnessLimit',0,...
                             'Generations',1000,'PopulationSize',100, ... 
                             'StallGenLimit',800,'Vectorized','on'); 
numberOfVariables = numocards; 
[x,fval,reason,output] = ga(FitnessFcn, numberOfVariables, options);

%notes==================================================================
%cannot plot without card_plot... can we find another way of displaying
%the results in the ga?

