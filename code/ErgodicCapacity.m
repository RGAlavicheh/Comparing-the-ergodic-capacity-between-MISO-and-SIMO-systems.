%% 3.9 Hampton | RezaGhasemi |
function [C, Nr_vec] = ErgodicCapacity(SNRdB,Nt,Nr,Niter)
flag = 0;
if Nt>Nr
    temp = Nt;
    Nt = Nr;
    Nr = temp;

    flag =1;

end
if Nt == Nr
    flag =2;
end

count = Niter;
Nr_vec = 1:1:Nr ;
if flag == 2
    Nt_vec = Nr_vec;
end
% C = zeros(length(Nr_vec),2);
C_data = zeros(length(Nr_vec),count);
SNRw = 10^(SNRdB/10);

for iter = [1:1:count] % Monte Carlo iterations
    % generate random elemnt each iteration

    for i = [1:1:length(Nr_vec)]
        if flag
            H = randn(Nt, Nr_vec(i)) + 1i * randn(Nt, Nr_vec(i));
            H = sqrt(0.5).*H;
            %                 H = sqrt(SNRw).*H; %normalize values
        end
        if flag == 0
            H = randn(Nr_vec(i), Nt) + 1i * randn(Nr_vec(i), Nt);
            H = sqrt(0.5).*H;
            %             H = sqrt(SNRw).*H;
            %             H = normalize(H);
        end
        if flag == 2
            H = randn(Nr_vec(i), Nr_vec(i)) + 1i * randn(Nr_vec(i), Nr_vec(i));
            H = sqrt(0.5).*H;
        end

        % compute ergoodic capacity

        if flag == 1
            C_data(i,iter) = log2(det(eye(Nt)+(SNRw/Nr_vec(i))*(H*H')));
        end
        if flag == 0
            C_data(i,iter) = log2(det(eye(Nr_vec(i))+(SNRw/Nt)*(H*H')));
        end
        if flag == 2
            C_data(i,iter) = log2(det(eye(Nr_vec(i))+(SNRw/Nt_vec(i))*(H*H')));
        end
    end



end

C = sum(C_data,2)./count ;


%
% for iter = [1:1:count]
%     h_w = (randn(4,4)+1i*randn(Nt,Nr));
%         for i = [1:1:length(ro)]
%
%             R_r = zeros(4,4) + ro(i);
%             R_r = R_r - diag(diag(R_r)) + eye(Nt,Nr);
%             h = (R_r)^0.5 *h_w*(R_t)^0.5 ;
%
%             C_data(i,iter) = log2(det(eye(4)+(SNRdBvec(2)/4)*(h*h')));
%
%         end
% end
%
% C_final = sum(C_data,2)./count ; %final results of Monte Carlo
%
% C(:,2) = C_final;
%
% end
