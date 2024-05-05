function [Samples2]=normalize(Samples)
[M,N] = size(Samples);

Samples2 = zeros(M,N); %��ʼ��Samples2���飨M*N��
for i=1:N
    allAtr = Samples(:,i);
    %STD = std(allAtr);    % ���׼��
    MEAN = mean(allAtr);  % ���ֵ
    %x = (allAtr-MEAN)/STD;
    x = allAtr-MEAN;
    Samples2(:,i)=x;
end
end
