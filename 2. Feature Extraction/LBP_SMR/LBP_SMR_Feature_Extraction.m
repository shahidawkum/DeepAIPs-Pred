clc
clear all
load('energy_20.mat');

feature_train=[];


[data, sequence] = fastaread('AIP-Training.txt');

Total_Seq_train=size(sequence,2);
for i=1:(Total_Seq_train)
     i
    SEQ=sequence(i);
    SEQ=cell2mat(SEQ);
    P=SMR(SEQ,energy_20);
	P=P';
    P = uint8(255 * mat2gray(P));
	FF=lbp(P);
    features(i,:)=FF;
end

%%%%%%%%%%%%%%%%%%%%%%%% SAVE FILES %%%%%%%%%%%%%%%%%%%%%%%%%

LBP_SMR_Features-Training=[features];
save LBP_SMR_Features-Training  LBP_SMR_Features-Training;

%%%% To Create CSV sheet for the data %%%%%%%%%
   
      csvwrite('LBP_SMR_Features-Training.csv',LBP_SMR_Features-Training);
     


