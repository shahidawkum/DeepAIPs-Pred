# DeepAIPs-Pred
Prediction of Anti-inflammatory Peptides using Multi-perspective vector and Self-normalized Deep learning The code is the implementation of our method described in DeepAIPs-Pred model

(I) 1.Datasets

There are one training and two indpendent datasets in the data Folder:

(1) Train dataset

The benchmark training dataset "Training dataset", which contains 1451 positive and 2339 negative peptides samples.

(2) Independent datasets

The "Ind-1" dataset contains 420 positive sequences and 629 negetive peptide samples .

The "Ind-2" dataset contains 172 positive sequences and 253 negetive peptide samples .

(II)2. Feature Extraction for individual feature extraction methods run the following

  a. LBP_PSSM_Feature_Extraction.m

  b. LBP_SMR_Feature_Extraction.m

  c. ProtBERT_BFD.py

  d. extract_QLC.m
(III) 3. Feature Fusion

  FeatureFusion folder includes the following file

  (1) DE.py

the Python file "DE.py" is the code that learns the best weights for feature sets. It is used to weightedly integrate all the feature sets.

(IV)  SMOTE Tomek-LINKS

  SMOTE T0mek_lINKS.py

(V)  Two_layer Feature selection

  this folder includes the following file.

  (1) Layer_1 MRMD.py

  (2) Layer_2 Main_BTG.m

(VI) ClassificationCode

  ClassificationCode folder includes all the libraries for the SnBiTCN classifier netowrk.

NOTE: For Feature integration and Classification, please directly run them from their corresponding folders.
