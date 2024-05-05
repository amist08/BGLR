function [centers] = Bipartite_Con(X,m,opts)
   [n,~]=size(X);
   if (~exist('opts','var'))
    opts. style = 1;
    opts. toy = 0;
    opts. IterMax = 50;
   end
  %%==============Anchor Selection=========%%
    if opts. style == 1 % VDA
        [centers,~,~] = VDA(X,m);
    elseif opts. style == 2 % rand sample
        vec = randperm(n);
        ind = vec(1:m);
        centers=X(ind,:);
        
    elseif opts. style == 3 % KNP
        [~, ~, ~, ~, dis] = litekmeans(X, m);
        [~,ind] = min(dis,[],1);
        ind = sort(ind,'ascend');
        centers=X(ind,:);
    elseif opts. style == 4 % kmeans sample
        [~, centers, ~, ~, ~] = litekmeans(X, m);
    end
%     D = L2_distance_1(X, centers);
%     [~, idx] = sort(D, 2); % sort each row
%     B = zeros(n,m);
%     for ii = 1:n
%         id = idx(ii,1:k+1);
%         di = D(ii, id);
%         B(ii,id) = (di(k+1)-di)/(k*di(k+1)-sum(di(1:k))+eps);
%     end
end