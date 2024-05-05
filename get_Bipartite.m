function [Z]=get_Bipartite(X,cls_num,meth)
%%
disp('--------------Anchor Selection and Bipartite graph Construction----------');
tic;
opt1. style = meth;
opt1. IterMax =50;
opt1. toy = 0;
[centers] = Bipartite_Con(X',cls_num, opt1);
Z=centers';
toc;
end