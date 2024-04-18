%% RSA (enc with ISI)
load('ERPs_smoth_down_encISI_Exp1')
load('ERPs_smoth_down_enc_Exp1')
load ('reject_index_Exp1.mat')
load ('reject_index_ISI_Exp1.mat')
load ( 'beh_Exp1.mat')

for simi=1
    elc=1:28; % exclude eye channel
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%% S11 with afterS11 %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    tic
    for s=1:25
        display (['S11 with afterS11 Subject Number: ' int2str(s) '/' int2str(25)]);
        m=0;n=0;
        for i=1:99 % all trials
            switch reject_index_S11(s,i)+reject_index_afterS11(s,i)
                case 2 % trials are not excluded (Run similarity)
                    switch rf_index(s,i)
                        case 1
                            m=m+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS11(elc,:,i),DATA_study1_SIMIdown(s).S11(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS22 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS11(elc,:,i),DATA_study1_SIMIdown(s).S11(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS22fc
                            % third step: combine the matrix
                            SIMIitem_for_study1(s).S11_S11fc(:,:,m)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                        case 2
                            n=n+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS11(elc,:,i),DATA_study1_SIMIdown(s).S11(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS22 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS11(elc,:,i),DATA_study1_SIMIdown(s).S11(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS22fc
                            % third step: combine the matrix
                            SIMIitem_rem_study1(s).S11_S11fc(:,:,n)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                    end
                otherwise
                    
            end
            
        end
        clearvars j k m
        
        
    end
    toc
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%% S11 with afterS22 %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    tic
    for s=1:25
        display (['S11 with afterS22 Subject Number: ' int2str(s) '/' int2str(25)]);
        m=0;n=0;
        for i=1:99 % all trials
            switch reject_index_S11(s,i)+reject_index_afterS22(s,i)
                case 2 % trials are not excluded (Run similarity)
                    switch rf_index(s,i)
                        case 1
                            m=m+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS22(elc,:,i),DATA_study1_SIMIdown(s).S11(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS22 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS22(elc,:,i),DATA_study1_SIMIdown(s).S11(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS22fc
                            % third step: combine the matrix
                            SIMIitem_for_study1(s).S11_S22fc(:,:,m)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                        case 2
                            n=n+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS22(elc,:,i),DATA_study1_SIMIdown(s).S11(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS22 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS22(elc,:,i),DATA_study1_SIMIdown(s).S11(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS22fc
                            % third step: combine the matrix
                            SIMIitem_rem_study1(s).S11_S22fc(:,:,n)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                    end
                otherwise
                    
            end
            
        end
        clearvars j k m
        
        
    end
    toc
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%% S11 with afterS33 %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for s=1:25
        display (['S11 with afterS33 Subject Number: ' int2str(s) '/' int2str(25)]);
        m=0;n=0;
        for i=1:99 % all trials
            switch reject_index_S11(s,i)+reject_index_afterS33(s,i)
                case 2 % trials are not excluded (Run similarity)
                    switch rf_index(s,i)
                        case 1
                            m=m+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS33(elc,:,i),DATA_study1_SIMIdown(s).S11(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS33 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS33(elc,:,i),DATA_study1_SIMIdown(s).S11(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS33fc
                            % third step: combine the matrix
                            SIMIitem_for_study1(s).S11_S33fc(:,:,m)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                        case 2
                            n=n+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS33(elc,:,i),DATA_study1_SIMIdown(s).S11(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS33 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS33(elc,:,i),DATA_study1_SIMIdown(s).S11(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS33fc
                            % third step: combine the matrix
                            SIMIitem_rem_study1(s).S11_S33fc(:,:,n)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                    end
                otherwise
                    
            end
            
        end
        clearvars j k m
        
        
    end
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%% S11 with afterS44 %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for s=1:25
        display (['S11 with afterS44 Subject Number: ' int2str(s) '/' int2str(25)]);
        m=0;n=0;
        for i=1:99 % all trials
            switch reject_index_S11(s,i)+reject_index_afterS44(s,i)
                case 2 % trials are not excluded (Run similarity)
                    switch rf_index(s,i)
                        case 1
                            m=m+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS44(elc,:,i),DATA_study1_SIMIdown(s).S11(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS44 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS44(elc,:,i),DATA_study1_SIMIdown(s).S11(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS44fc
                            % third step: combine the matrix
                            SIMIitem_for_study1(s).S11_S44fc(:,:,m)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                        case 2
                            n=n+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS44(elc,:,i),DATA_study1_SIMIdown(s).S11(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS44 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS44(elc,:,i),DATA_study1_SIMIdown(s).S11(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS44fc
                            % third step: combine the matrix
                            SIMIitem_rem_study1(s).S11_S44fc(:,:,n)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                    end
                otherwise
                    
            end
            
        end
        clearvars j k m
        
        
    end
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%% S11 with afterS55 %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for s=1:25
        display (['S11 with afterS55 Subject Number: ' int2str(s) '/' int2str(25)]);
        m=0;n=0;
        for i=1:99 % all trials
            switch reject_index_S11(s,i)+reject_index_afterS55(s,i)
                case 2 % trials are not excluded (Run similarity)
                    switch rf_index(s,i)
                        case 1
                            m=m+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS55(elc,:,i),DATA_study1_SIMIdown(s).S11(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS55 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS55(elc,:,i),DATA_study1_SIMIdown(s).S11(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS55fc
                            % third step: combine the matrix
                            SIMIitem_for_study1(s).S11_S55fc(:,:,m)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                        case 2
                            n=n+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS55(elc,:,i),DATA_study1_SIMIdown(s).S11(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS55 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS55(elc,:,i),DATA_study1_SIMIdown(s).S11(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS55fc
                            % third step: combine the matrix
                            SIMIitem_rem_study1(s).S11_S55fc(:,:,n)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                    end
                otherwise
                    
            end
            
        end
        clearvars j k m
        
        
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%% S22 with afterS22 %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for s=1:25
        display (['S22 with afterS22 Subject Number: ' int2str(s) '/' int2str(25)]);
        m=0;n=0;
        for i=1:99 % all trials
            switch reject_index_S22(s,i)+reject_index_afterS22(s,i)
                case 2 % trials are not excluded (Run similarity)
                    switch rf_index(s,i)
                        case 1
                            m=m+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS22(elc,:,i),DATA_study1_SIMIdown(s).S22(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS33 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS22(elc,:,i),DATA_study1_SIMIdown(s).S22(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS33fc
                            % third step: combine the matrix
                            SIMIitem_for_study1(s).S22_S22fc(:,:,m)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                        case 2
                            n=n+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS22(elc,:,i),DATA_study1_SIMIdown(s).S22(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS33 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS22(elc,:,i),DATA_study1_SIMIdown(s).S22(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS33fc
                            % third step: combine the matrix
                            SIMIitem_rem_study1(s).S22_S22fc(:,:,n)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                    end
                otherwise
                    
            end
            
        end
        clearvars j k m
        
        
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%% S22 with afterS33 %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for s=1:25
        display (['S22 with afterS33 Subject Number: ' int2str(s) '/' int2str(25)]);
        m=0;n=0;
        for i=1:99 % all trials
            switch reject_index_S22(s,i)+reject_index_afterS33(s,i)
                case 2 % trials are not excluded (Run similarity)
                    switch rf_index(s,i)
                        case 1
                            m=m+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS33(elc,:,i),DATA_study1_SIMIdown(s).S22(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS33 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS33(elc,:,i),DATA_study1_SIMIdown(s).S22(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS33fc
                            % third step: combine the matrix
                            SIMIitem_for_study1(s).S22_S33fc(:,:,m)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                        case 2
                            n=n+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS33(elc,:,i),DATA_study1_SIMIdown(s).S22(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS33 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS33(elc,:,i),DATA_study1_SIMIdown(s).S22(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS33fc
                            % third step: combine the matrix
                            SIMIitem_rem_study1(s).S22_S33fc(:,:,n)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                    end
                otherwise
                    
            end
            
        end
        clearvars j k m
        
        
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%% S22 with afterS44 %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for s=1:25
        display (['S22 with afterS44 Subject Number: ' int2str(s) '/' int2str(25)]);
        m=0;n=0;
        for i=1:99 % all trials
            switch reject_index_S22(s,i)+reject_index_afterS44(s,i)
                case 2 % trials are not excluded (Run similarity)
                    switch rf_index(s,i)
                        case 1
                            m=m+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS44(elc,:,i),DATA_study1_SIMIdown(s).S22(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS44 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS44(elc,:,i),DATA_study1_SIMIdown(s).S22(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS44fc
                            % third step: combine the matrix
                            SIMIitem_for_study1(s).S22_S44fc(:,:,m)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                        case 2
                            n=n+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS44(elc,:,i),DATA_study1_SIMIdown(s).S22(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS44 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS44(elc,:,i),DATA_study1_SIMIdown(s).S22(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS44fc
                            % third step: combine the matrix
                            SIMIitem_rem_study1(s).S22_S44fc(:,:,n)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                    end
                otherwise
                    
            end
            
        end
        clearvars j k m
        
        
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%% S22 with afterS55 %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for s=1:25
        display (['S22 with afterS55 Subject Number: ' int2str(s) '/' int2str(25)]);
        m=0;n=0;
        for i=1:99 % all trials
            switch reject_index_S22(s,i)+reject_index_afterS55(s,i)
                case 2 % trials are not excluded (Run similarity)
                    switch rf_index(s,i)
                        case 1
                            m=m+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS55(elc,:,i),DATA_study1_SIMIdown(s).S22(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS55 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS55(elc,:,i),DATA_study1_SIMIdown(s).S22(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS55fc
                            % third step: combine the matrix
                            SIMIitem_for_study1(s).S22_S55fc(:,:,m)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                        case 2
                            n=n+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS55(elc,:,i),DATA_study1_SIMIdown(s).S22(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS55 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS55(elc,:,i),DATA_study1_SIMIdown(s).S22(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS55fc
                            % third step: combine the matrix
                            SIMIitem_rem_study1(s).S22_S55fc(:,:,n)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                    end
                otherwise
                    
            end
            
        end
        clearvars j k m
        
        
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%% S33 with afterS33 %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for s=1:25
        display (['S33 with afterS33 Subject Number: ' int2str(s) '/' int2str(25)]);
        m=0;n=0;
        for i=1:99 % all trials
            switch reject_index_S33(s,i)+reject_index_afterS33(s,i)
                case 2 % trials are not excluded (Run similarity)
                    switch rf_index(s,i)
                        case 1
                            m=m+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS33(elc,:,i),DATA_study1_SIMIdown(s).S33(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS44 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS33(elc,:,i),DATA_study1_SIMIdown(s).S33(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS44fc
                            % third step: combine the matrix
                            SIMIitem_for_study1(s).S33_S33fc(:,:,m)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                        case 2
                            n=n+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS33(elc,:,i),DATA_study1_SIMIdown(s).S33(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS44 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS33(elc,:,i),DATA_study1_SIMIdown(s).S33(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS44fc
                            % third step: combine the matrix
                            SIMIitem_rem_study1(s).S33_S33fc(:,:,n)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                    end
                otherwise
                    
            end
            
        end
        clearvars j k m
        
        
    end
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%% S33 with afterS44 %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for s=1:25
        display (['S33 with afterS44 Subject Number: ' int2str(s) '/' int2str(25)]);
        m=0;n=0;
        for i=1:99 % all trials
            switch reject_index_S33(s,i)+reject_index_afterS44(s,i)
                case 2 % trials are not excluded (Run similarity)
                    switch rf_index(s,i)
                        case 1
                            m=m+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS44(elc,:,i),DATA_study1_SIMIdown(s).S33(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS44 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS44(elc,:,i),DATA_study1_SIMIdown(s).S33(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS44fc
                            % third step: combine the matrix
                            SIMIitem_for_study1(s).S33_S44fc(:,:,m)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                        case 2
                            n=n+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS44(elc,:,i),DATA_study1_SIMIdown(s).S33(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS44 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS44(elc,:,i),DATA_study1_SIMIdown(s).S33(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS44fc
                            % third step: combine the matrix
                            SIMIitem_rem_study1(s).S33_S44fc(:,:,n)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                    end
                otherwise
                    
            end
            
        end
        clearvars j k m
        
        
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%% S33 with afterS55 %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for s=1:25
        display (['S33 with afterS55 Subject Number: ' int2str(s) '/' int2str(25)]);
        m=0;n=0;
        for i=1:99 % all trials
            switch reject_index_S33(s,i)+reject_index_afterS55(s,i)
                case 2 % trials are not excluded (Run similarity)
                    switch rf_index(s,i)
                        case 1
                            m=m+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS55(elc,:,i),DATA_study1_SIMIdown(s).S33(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS55 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS55(elc,:,i),DATA_study1_SIMIdown(s).S33(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS55fc
                            % third step: combine the matrix
                            SIMIitem_for_study1(s).S33_S55fc(:,:,m)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                        case 2
                            n=n+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS55(elc,:,i),DATA_study1_SIMIdown(s).S33(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS55 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS55(elc,:,i),DATA_study1_SIMIdown(s).S33(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS55fc
                            % third step: combine the matrix
                            SIMIitem_rem_study1(s).S33_S55fc(:,:,n)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                    end
                otherwise
                    
            end
            
        end
        clearvars j k m
        
        
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%% S44 with afterS44 %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for s=1:25
        display (['S44 with afterS44 Subject Number: ' int2str(s) '/' int2str(25)]);
        m=0;n=0;
        for i=1:99 % all trials
            switch reject_index_S44(s,i)+reject_index_afterS44(s,i)
                case 2 % trials are not excluded (Run similarity)
                    switch rf_index(s,i)
                        case 1
                            m=m+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS44(elc,:,i),DATA_study1_SIMIdown(s).S44(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS55 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS44(elc,:,i),DATA_study1_SIMIdown(s).S44(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS55fc
                            % third step: combine the matrix
                            SIMIitem_for_study1(s).S44_S44fc(:,:,m)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                        case 2
                            n=n+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS44(elc,:,i),DATA_study1_SIMIdown(s).S44(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS55 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS44(elc,:,i),DATA_study1_SIMIdown(s).S44(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS55fc
                            % third step: combine the matrix
                            SIMIitem_rem_study1(s).S44_S44fc(:,:,n)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                    end
                otherwise
                    
            end
            
        end
        clearvars j k m
        
        
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%% S44 with afterS55 %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for s=1:25
        display (['S44 with afterS55 Subject Number: ' int2str(s) '/' int2str(25)]);
        m=0;n=0;
        for i=1:99 % all trials
            switch reject_index_S44(s,i)+reject_index_afterS55(s,i)
                case 2 % trials are not excluded (Run similarity)
                    switch rf_index(s,i)
                        case 1
                            m=m+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS55(elc,:,i),DATA_study1_SIMIdown(s).S44(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS55 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS55(elc,:,i),DATA_study1_SIMIdown(s).S44(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS55fc
                            % third step: combine the matrix
                            SIMIitem_for_study1(s).S44_S55fc(:,:,m)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                        case 2
                            n=n+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS55(elc,:,i),DATA_study1_SIMIdown(s).S44(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS55 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS55(elc,:,i),DATA_study1_SIMIdown(s).S44(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS55fc
                            % third step: combine the matrix
                            SIMIitem_rem_study1(s).S44_S55fc(:,:,n)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                    end
                otherwise
                    
            end
            
        end
        clearvars j k m
        
        
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%% S55 with afterS55 %%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for s=1:25
        display (['S55 with afterS55 Subject Number: ' int2str(s) '/' int2str(25)]);
        m=0;n=0;
        for i=1:99 % all trials
            switch reject_index_S55(s,i)+reject_index_afterS55(s,i)
                case 2 % trials are not excluded (Run similarity)
                    switch rf_index(s,i)
                        case 1
                            m=m+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS55(elc,:,i),DATA_study1_SIMIdown(s).S55(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS55 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS55(elc,:,i),DATA_study1_SIMIdown(s).S55(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS55fc
                            % third step: combine the matrix
                            SIMIitem_for_study1(s).S55_S55fc(:,:,m)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                        case 2
                            n=n+1;
                            % first step (100:250 enc with 1:150 for fc)
                            A1=corr_matrix(DATA_study1_fcdown(s).afterS55(elc,:,i),DATA_study1_SIMIdown(s).S55(elc,101:end,i)); % upper part of simi, 1s to 2.5s of enc with all afterS55 fc
                            % second step (1:150 for both)
                            A2=corr_matrix(DATA_study1_fcdown(s).afterS55(elc,:,i),DATA_study1_SIMIdown(s).S55(elc,1:150,i)); % lower part of simi, 0s to 1.5s of enc with all afterS55fc
                            % third step: combine the matrix
                            SIMIitem_rem_study1(s).S55_S55fc(:,:,n)=[A1(1:100,:); A2]; % cambine both to have whole 0-2.5s lenghtof enc
                            clearvars A1 A2
                    end
                otherwise
                    
            end
            
        end
        clearvars j k m
        
        
    end
    
end


%% Analysis (High vs Low)

subj_15 = [2:3,5:6,11, 13:21, 23:25]; % least 15 trials each condition, only for ISI

s=1;
for i=subject_min15
    

    rem_S11afterS11(:,:,s)=mean(SIMIitem_rem_study1(i).S11_S11fc,3);
    for_S11afterS11(:,:,s)=mean(SIMIitem_for_study1(i).S11_S11fc,3);

    

    rem_S11afterS22(:,:,s)=mean(SIMIitem_rem_study1(i).S11_S22fc,3);
    for_S11afterS22(:,:,s)=mean(SIMIitem_for_study1(i).S11_S22fc,3);

    

    rem_S11afterS33(:,:,s)=mean(SIMIitem_rem_study1(i).S11_S33fc,3);
    for_S11afterS33(:,:,s)=mean(SIMIitem_for_study1(i).S11_S33fc,3);


    rem_S11afterS44(:,:,s)=mean(SIMIitem_rem_study1(i).S11_S44fc,3);
    for_S11afterS44(:,:,s)=mean(SIMIitem_for_study1(i).S11_S44fc,3);


    rem_S11afterS55(:,:,s)=mean(SIMIitem_rem_study1(i).S11_S55fc,3);
    for_S11afterS55(:,:,s)=mean(SIMIitem_for_study1(i).S11_S55fc,3);
  

    rem_S22afterS22(:,:,s)=mean(SIMIitem_rem_study1(i).S22_S22fc,3);
    for_S22afterS22(:,:,s)=mean(SIMIitem_for_study1(i).S22_S22fc,3);

    

    rem_S22afterS33(:,:,s)=mean(SIMIitem_rem_study1(i).S22_S33fc,3);
    for_S22afterS33(:,:,s)=mean(SIMIitem_for_study1(i).S22_S33fc,3);

    

    rem_S22afterS44(:,:,s)=mean(SIMIitem_rem_study1(i).S22_S44fc,3);
    for_S22afterS44(:,:,s)=mean(SIMIitem_for_study1(i).S22_S44fc,3);

    

    rem_S22afterS55(:,:,s)=mean(SIMIitem_rem_study1(i).S22_S55fc,3);
    for_S22afterS55(:,:,s)=mean(SIMIitem_for_study1(i).S22_S55fc,3);

    

    rem_S33afterS33(:,:,s)=mean(SIMIitem_rem_study1(i).S33_S33fc,3);
    for_S33afterS33(:,:,s)=mean(SIMIitem_for_study1(i).S33_S33fc,3);

    

    rem_S33afterS44(:,:,s)=mean(SIMIitem_rem_study1(i).S33_S44fc,3);
    for_S33afterS44(:,:,s)=mean(SIMIitem_for_study1(i).S33_S44fc,3);

    

    rem_S33afterS55(:,:,s)=mean(SIMIitem_rem_study1(i).S33_S55fc,3);
    for_S33afterS55(:,:,s)=mean(SIMIitem_for_study1(i).S33_S55fc,3);


    rem_S44afterS44(:,:,s)=mean(SIMIitem_rem_study1(i).S44_S44fc,3);
    for_S44afterS44(:,:,s)=mean(SIMIitem_for_study1(i).S44_S44fc,3);

    

    rem_S44afterS55(:,:,s)=mean(SIMIitem_rem_study1(i).S44_S55fc,3);
    for_S44afterS55(:,:,s)=mean(SIMIitem_for_study1(i).S44_S55fc,3);

    

    rem_S55afterS55(:,:,s)=mean(SIMIitem_rem_study1(i).S55_S55fc,3);
    for_S55afterS55(:,:,s)=mean(SIMIitem_for_study1(i).S55_S55fc,3);

    s=s+1;
    
end
clearvars s

rem_mean_4_5thoffset = (rem_S11afterS55 + rem_S22afterS55 + rem_S33afterS55 + rem_S44afterS55 + rem_S55afterS55 + rem_S11afterS44 + rem_S22afterS44 + rem_S33afterS44 + rem_S44afterS44)./9;
for_mean_4_5thoffset = (for_S11afterS55 + for_S22afterS55 + for_S33afterS55 + for_S44afterS55 + for_S55afterS55 + for_S11afterS44 + for_S22afterS44 + for_S33afterS44 + for_S44afterS44)./9;
clearvars -except   rem_mean_4_5thoffset for_mean_4_5thoffset

nPer = 1000;
[Cluster_4_5thoffset,T_Cluster_4_5thoffset,T_per_4_5thoffset]=xb_cluster2D_perm(rem_mean_4_5thoffset,for_mean_4_5thoffset,nPer,'within','two',0.05);


%% Analysis (compare Episodic(High) vs ISI)
for RSA_Exp1 = 1
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

% average 
s=1;
for subject = subject_min15'
    S11_high(:,:,s)=mean(SIMI_all_study1(subject).S11off(:,:,ind_trial_S11off(subject,:)==2),3);
    S22_high(:,:,s)=mean(SIMI_all_study1(subject).S22off(:,:,ind_trial_S22off(subject,:)==2),3);
    S33_high(:,:,s)=mean(SIMI_all_study1(subject).S33off(:,:,ind_trial_S33off(subject,:)==2),3);
    S44_high(:,:,s)=mean(SIMI_all_study1(subject).S44off(:,:,ind_trial_S44off(subject,:)==2),3);
    S55_high(:,:,s)=mean(SIMI_all_study1(subject).S55off(:,:,ind_trial_S55off(subject,:)==2),3);
    S66_high(:,:,s)=mean(SIMI_all_study1(subject).S66off(:,:,ind_trial_S66off(subject,:)==2),3);

    s=s+1;
end 


% mean across condition then cluster
high_mean_all = (S11_high+S22_high+S33_high+S44_high+S55_high+S66_high)./6;
end 
clearvars -except high_mean_all  rem_mean_4_5thoffset


nPer = 1000;
[Cluster_mean,T_Cluster_mean,T_per_mean,p_Cluster_mean]=xb_cluster2D_perm(high_mean_all(:,1:150,:),rem_mean_4_5thoffset,nPer,'within','two');

