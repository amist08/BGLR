Unsupervised feature selection based on bipartite graph and low-redundant regularization
A novel UFS method is proposed to solve these problems through bipartite graph learning with low-redundant regularization (\textcolor{blue}{BGLR}). 
Firstly, \textcolor{blue}{BGLR} uses a variance-based de-correlation anchor selection method to ensure that selected anchors can be evenly distributed across classes. Secondly, \textcolor{blue}{BGLR} builds an adaptive bipartite graph by using selected anchors and original data in the projection space. $ L_{2,0} $-norm constraint is applied to the projection matrix. Thus, the feature subset can be obtained directly. Finally, a regularization term is applied to control the redundancy of selected features. Moreover, \textcolor{blue}{BGLR} is solved by an iterative method, which can converge quickly. Experiments are performed on public datasets in comparison with some relevant methods. The experimental results demonstrate the \textcolor{blue}{BGLR}'s effectiveness.