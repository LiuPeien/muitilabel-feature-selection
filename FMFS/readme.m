% FMFS����ѡ��
% ����Դ��tfidf���ݺͱ�ǩ
train_data = csvread('E:\DataProcess\text\����ѡ��\TextWordVector.csv');
train_target = csvread('E:\DataProcess\text\����ѡ��\TagVector.csv');

FAST_MI = wordfilter(train_data, train_target);

[~, numfea]=size(train_data);

outfile = 'E:\DataProcess\text\fmfsall.csv';
fid = fopen(outfile, 'w');
for i = 1 : numfea
    fprintf(fid, '%d', FAST_MI(1, i));
    fprintf(fid, '\r\n');
end