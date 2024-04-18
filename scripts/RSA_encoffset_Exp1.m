
%% RSA
load ('ERPs_smoth_down_enc_Exp1.mat')

for simi=1
    
    elc=1:28; % exclude eye channel
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%% S11 with offset %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for s=1:25
        display (['S11 Subject Number: ' int2str(s) '/' int2str(25)]);
        for i=1:99 % all trials
            % first step(1:250 for both)
            A1=corr_matrix(DATA_study1_SIMIdown(s).off(elc,1:250,i),DATA_study1_SIMIdown(s).S11(elc,:,i));
            % second step (1:250 enc with 151:400 for off)
            A2=corr_matrix(DATA_study1_SIMIdown(s).off(elc,151:400,i),DATA_study1_SIMIdown(s).S11(elc,:,i));          
            % third step: combine the matrix
            SIMI_all_study1(s).S11off(:,:,i)=[A1 A2(:,101:250)];        
        end      
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%% S22 with offset %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for s=1:25
        display (['S22 Subject Number: ' int2str(s) '/' int2str(25)]);
        for i=1:99 % all trials
            % first step(1:250 for both)
            A1=corr_matrix(DATA_study1_SIMIdown(s).off(elc,1:250,i),DATA_study1_SIMIdown(s).S22(elc,:,i));
            % second step (1:250 enc with 151:400 for off)
            A2=corr_matrix(DATA_study1_SIMIdown(s).off(elc,151:400,i),DATA_study1_SIMIdown(s).S22(elc,:,i));          
            % third step: combine the matrix
            SIMI_all_study1(s).S22off(:,:,i)=[A1 A2(:,101:250)];        
        end      
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%% S33 with offset %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for s=1:25
        display (['S33 Subject Number: ' int2str(s) '/' int2str(25)]);
        for i=1:99 % all trials
            % first step(1:250 for both)
            A1=corr_matrix(DATA_study1_SIMIdown(s).off(elc,1:250,i),DATA_study1_SIMIdown(s).S33(elc,:,i));
            % second step (1:250 enc with 151:400 for off)
            A2=corr_matrix(DATA_study1_SIMIdown(s).off(elc,151:400,i),DATA_study1_SIMIdown(s).S33(elc,:,i));          
            % third step: combine the matrix
            SIMI_all_study1(s).S33off(:,:,i)=[A1 A2(:,101:250)];        
        end      
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%% S44 with offset %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for s=1:25
        display (['S44 Subject Number: ' int2str(s) '/' int2str(25)]);
        for i=1:99 % all trials
            % first step(1:250 for both)
            A1=corr_matrix(DATA_study1_SIMIdown(s).off(elc,1:250,i),DATA_study1_SIMIdown(s).S44(elc,:,i));
            % second step (1:250 enc with 151:400 for off)
            A2=corr_matrix(DATA_study1_SIMIdown(s).off(elc,151:400,i),DATA_study1_SIMIdown(s).S44(elc,:,i));          
            % third step: combine the matrix
            SIMI_all_study1(s).S44off(:,:,i)=[A1 A2(:,101:250)];        
        end      
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%% S55 with offset %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for s=1:25
        display (['S55 Subject Number: ' int2str(s) '/' int2str(25)]);
        for i=1:99 % all trials
            % first step(1:250 for both)
            A1=corr_matrix(DATA_study1_SIMIdown(s).off(elc,1:250,i),DATA_study1_SIMIdown(s).S55(elc,:,i));
            % second step (1:250 enc with 151:400 for off)
            A2=corr_matrix(DATA_study1_SIMIdown(s).off(elc,151:400,i),DATA_study1_SIMIdown(s).S55(elc,:,i));          
            % third step: combine the matrix
            SIMI_all_study1(s).S55off(:,:,i)=[A1 A2(:,101:250)];        
        end      
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%% S66 with offset %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for s=1:25
        display (['S66 Subject Number: ' int2str(s) '/' int2str(25)]);
        for i=1:99 % all trials
            % first step(1:250 for both)
            A1=corr_matrix(DATA_study1_SIMIdown(s).off(elc,1:250,i),DATA_study1_SIMIdown(s).S66(elc,:,i));
            % second step (1:250 enc with 151:400 for off)
            A2=corr_matrix(DATA_study1_SIMIdown(s).off(elc,151:400,i),DATA_study1_SIMIdown(s).S66(elc,:,i));          
            % third step: combine the matrix
            SIMI_all_study1(s).S66off(:,:,i)=[A1 A2(:,101:250)];        
        end      
    end
    clearvars simi
end

%% Analysis

load ('reject_index_Exp1.mat')
load ( 'beh_Exp1.mat')

% clean trials sum up 
for hide =1
ind_trial_S11off = rf_index.*reject_index_S11.*reject_index_off4s;
ind_trial_S22off = rf_index.*reject_index_S22.*reject_index_off4s;
ind_trial_S33off = rf_index.*reject_index_S33.*reject_index_off4s;
ind_trial_S44off = rf_index.*reject_index_S44.*reject_index_off4s;
ind_trial_S55off = rf_index.*reject_index_S55.*reject_index_off4s;
ind_trial_S66off = rf_index.*reject_index_S66.*reject_index_off4s;

n_trial_high = zeros(25,6);
n_trial_low = zeros(25,6);

n_trial_high(:,1)=sum(ind_trial_S11off==2,2);
n_trial_high(:,2)=sum(ind_trial_S22off==2,2);
n_trial_high(:,3)=sum(ind_trial_S33off==2,2);
n_trial_high(:,4)=sum(ind_trial_S44off==2,2);
n_trial_high(:,5)=sum(ind_trial_S55off==2,2);
n_trial_high(:,6)=sum(ind_trial_S66off==2,2);

n_trial_low(:,1)=sum(ind_trial_S11off==1,2);
n_trial_low(:,2)=sum(ind_trial_S22off==1,2);
n_trial_low(:,3)=sum(ind_trial_S33off==1,2);
n_trial_low(:,4)=sum(ind_trial_S44off==1,2);
n_trial_low(:,5)=sum(ind_trial_S55off==1,2);
n_trial_low(:,6)=sum(ind_trial_S66off==1,2);

clearvars hide 
end 

subject_min15 = find(min(n_trial_high,[],2)>14 & min(n_trial_low,[],2)>14);

% seperating trial condition 
S11_high = zeros(250,400,length(subject_min15));S22_high = zeros(250,400,length(subject_min15));
S33_high = zeros(250,400,length(subject_min15));S44_high = zeros(250,400,length(subject_min15));
S55_high = zeros(250,400,length(subject_min15));S66_high = zeros(250,400,length(subject_min15));
S11_low = zeros(250,400,length(subject_min15));S22_low = zeros(250,400,length(subject_min15));
S33_low = zeros(250,400,length(subject_min15));S44_low = zeros(250,400,length(subject_min15));
S55_low = zeros(250,400,length(subject_min15));S66_low = zeros(250,400,length(subject_min15));

% average 
s=1;
for subject = subject_min15'
    S11_high(:,:,s)=mean(SIMI_all_study1(subject).S11off(:,:,ind_trial_S11off(subject,:)==2),3);
    S22_high(:,:,s)=mean(SIMI_all_study1(subject).S22off(:,:,ind_trial_S22off(subject,:)==2),3);
    S33_high(:,:,s)=mean(SIMI_all_study1(subject).S33off(:,:,ind_trial_S33off(subject,:)==2),3);
    S44_high(:,:,s)=mean(SIMI_all_study1(subject).S44off(:,:,ind_trial_S44off(subject,:)==2),3);
    S55_high(:,:,s)=mean(SIMI_all_study1(subject).S55off(:,:,ind_trial_S55off(subject,:)==2),3);
    S66_high(:,:,s)=mean(SIMI_all_study1(subject).S66off(:,:,ind_trial_S66off(subject,:)==2),3);
    
    S11_low(:,:,s)=mean(SIMI_all_study1(subject).S11off(:,:,ind_trial_S11off(subject,:)==1),3);
    S22_low(:,:,s)=mean(SIMI_all_study1(subject).S22off(:,:,ind_trial_S22off(subject,:)==1),3);
    S33_low(:,:,s)=mean(SIMI_all_study1(subject).S33off(:,:,ind_trial_S33off(subject,:)==1),3);
    S44_low(:,:,s)=mean(SIMI_all_study1(subject).S44off(:,:,ind_trial_S44off(subject,:)==1),3);
    S55_low(:,:,s)=mean(SIMI_all_study1(subject).S55off(:,:,ind_trial_S55off(subject,:)==1),3);
    S66_low(:,:,s)=mean(SIMI_all_study1(subject).S66off(:,:,ind_trial_S66off(subject,:)==1),3);
    s=s+1;
end 


% mean across condition then cluster
high_mean_all = (S11_high+S22_high+S33_high+S44_high+S55_high+S66_high)./6;
low_mean_all = (S11_low+S22_low+S33_low+S44_low+S55_low+S66_low)./6;

% find cluster (each of 6 stim conditions) using xb_cluster2D
nPer = 1000;
[Cluster_mean,T_Cluster_mean,T_per_mean,p_Cluster_mean]=xb_cluster2D_perm(high_mean_all,low_mean_all,nPer,'within','two');

