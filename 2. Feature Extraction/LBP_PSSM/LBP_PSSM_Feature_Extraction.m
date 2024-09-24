clc
clear all

n_protein = 3;
spoints = [1, 0; 1, -1; 0, -1; -1, -1; -1, 0; -1, 1; 0, 1; 1, 1];

fileFolder=fullfile('F:\DeepAIP\AIP-Train-PSSM');
dirOutput=dir(fullfile(fileFolder,'*.txt'));
PSSM_XXXX={dirOutput.name}';
PSSM_XXXX = natsortfiles(PSSM_XXXX);
fileNames_PSSM = [];
for i=1:3
    i
	path_way = [fileFolder '\' cell2mat(PSSM_XXXX(i))];
	lujing=cellstr(path_way);
	fileNames_PSSM = [fileNames_PSSM;lujing];
end


%%%%%%%%%%% Features extraction from PSSM %%%%%%%%%%%%%%%% 

for i=1:n_protein
	files_name = cell2mat(fileNames_PSSM(i));

	PSSM_Matrix = Read_Text_files_PSSM(files_name);
    
    %%%%%%%%%%% LBP-PSSM %%%%%%%%%%%%%%%%
    PSSM_IMG = uint8(255 * mat2gray(PSSM_Matrix));
%     imshow(PSSM_IMG);
    lbpfeat=lbp(PSSM_IMG,spoints,0,'h');
    LBP_PSSM_Features-training(i,:)=lbpfeat;
    
    

%%%%%%%%%%%%%%%%%%%%%%%% SAVE FILES %%%%%%%%%%%%%%%%%%%%%%%%%

save LBP_PSSM_Features-training LBP_PSSM_Features-training;


%%%% To Create CSV sheet for the data %%%%%%%%%
   
     csvwrite('LBP_PSSM_Features-training.csv',LBP_PSSM_Features-training);
      
      
  
