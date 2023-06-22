eigvectors_plot = nan(size(eigvectors_array,1)+1,size(eigvectors_array,2),size(eigvectors_array,3));
eigvectors_plot(1:end-1,:,:) = eigvectors_array;

p = pcolor(B_e_array,1:size(eigvectors_plot,1),reshape(eigvectors_plot(:,8,:),[size(eigvectors_plot,1) size(eigvectors_plot,3)]));
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude')
caxis([-1 1])
xlabel('Magnetic field strength / Gauss');
title('F = 4, m_F = +3');

p = pcolor(B_e_array,1:size(F1mp1_array,1),F1mp1_array);
set(p,'linestyle','none')
set(gca,'ytick',1.5:1:24.5);
set(gca,'yticklabel',ytlabel);
cc = colorbar;
ylabel(cc,'State amplitude')
caxis([-1 1])
xlabel('Magnetic field strength / Gauss');
title('F = 1, m_F = 1');

for h = 2:size(eigvectors_array,3)
    for hh = 1:size(eigvectors_array,2)
        if h==2
            eigvector_sign_flip = FStates(:,hh)'*eigvectors_array(:,hh,h);
        else
            eigvector_sign_flip = eigvectors_array(:,hh,h-1)'*eigvectors_array(:,hh,h);
        end
        eigvectors_array(:,hh,h) = sign(eigvector_sign_flip).*eigvectors_array(:,hh,h);
    end
end

ytlabel = {'m_I = -3/2, m_J = -5/2';'m_I = -3/2, m_J = -3/2';...
    'm_I = -3/2, m_J = -1/2';'m_I = -3/2, m_J = 1/2';'m_I = -3/2, m_J = 3/2';...
    'm_I = -3/2, m_J = 5/2';'m_I = -1/2, m_J = -5/2';'m_I = -1/2, m_J = -3/2';...
    'm_I = -1/2, m_J = -1/2';'m_I = -1/2, m_J = 1/2';'m_I = -1/2, m_J = 3/2';...
    'm_I = -1/2, m_J = 5/2';'m_I = 1/2, m_J = -5/2';'m_I = 1/2, m_J = -3/2';...
    'm_I = 1/2, m_J = -1/2';'m_I = 1/2, m_J = 1/2';'m_I = 1/2, m_J = 3/2';...
    'm_I = 1/2, m_J = 5/2';'m_I = 3/2, m_J = -5/2';'m_I = 3/2, m_J = -3/2';...
    'm_I = 3/2, m_J = -1/2';'m_I = 3/2, m_J = 1/2';'m_I = 3/2, m_J = 3/2';...
    'm_I = 3/2, m_J = 5/2';};

ytlabel = {'F = 4, m_F = -4';'F = 4, m_F = -3';...
    'F = 4, m_F = -2';'F = 4, m_F = -1';'F = 4, m_F = 0';...
    'F = 4, m_F = 1';'F = 4, m_F = 2';'F = 4, m_F = 3';...
    'F = 4, m_F = 4';'F = 3, m_F = -3';'F = 3, m_F = -2';...
    'F = 3, m_F = -1';'F = 3, m_F = 0';'F = 3, m_F = 1';...
    'F = 3, m_F = 2';'F = 3, m_F = 3';'F = 2, m_F = -2';...
    'F = 2, m_F = -1';'F = 2, m_F = 0';'F = 2, m_F = 1';...
    'F = 2, m_F = 2';'F = 1, m_F = -1';'F = 1, m_F = 0';...
    'F = 1, m_F = 1';};

ytlabel = {'m_I = -3/2, m_J = -1/2';'m_I = -3/2, m_J = 1/2';...
    'm_I = -1/2, m_J = -1/2';'m_I = -1/2, m_J = 1/2';...
    'm_I = 1/2, m_J = -1/2';'m_I = 1/2, m_J = 1/2';...
    'm_I = 3/2, m_J = -1/2';'m_I = 3/2, m_J = 1/2';};

F_D52 = nan(1,24);
F_D52(1:9) = 4;
F_D52(10:16) = 3;
F_D52(17:21) = 2;
F_D52(22:24) = 1;
m_D52 = nan(1,24);
m_D52(1:9) = -4:1:4;
m_D52(10:16) = -3:1:3;
m_D52(17:21) = -2:1:2;
m_D52(22:24) = -1:1:1;

F_S12 = nan(1,8);
F_S12(1:3) = 1;
F_S12(4:8) = 2;
m_S12 = nan(1,8);
m_S12(1:3) = 1:-1:-1;
m_S12(4:8) = -2:1:2;

aa = abs(NotWigner6j(2,3,1/2,5/2,3/2,2)*A(M1_index==2 & M2_index==1-1,J_index==3 & Jm_index==3-1)*(eigvectors_array(:,16-1,2)'*eigvectors_array(:,16-1,8351)));
bb = abs(NotWigner6j(2,4,1/2,5/2,3/2,2)*A(M1_index==2 & M2_index==1-1,J_index==4 & Jm_index==3-1)*(eigvectors_array(:,8-1,2)'*eigvectors_array(:,16-1,8351)));

cc = abs(NotWigner6j(2,3,1/2,5/2,3/2,2)*A(M1_index==2 & M2_index==1-1,J_index==3 & Jm_index==3-1)*(eigvectors_array(:,16-1,2)'*eigvectors_array(:,8-1,8351)));
dd = abs(NotWigner6j(2,4,1/2,5/2,3/2,2)*A(M1_index==2 & M2_index==1-1,J_index==4 & Jm_index==3-1)*(eigvectors_array(:,8-1,2)'*eigvectors_array(:,8-1,8351)));
ee = abs(NotWigner6j(2,2,1/2,5/2,3/2,2)*A(M1_index==2 & M2_index==1-1,J_index==2 & Jm_index==3-1)*(eigvectors_array(:,21,2)'*eigvectors_array(:,8-1,8351)));

FStates = [F4mn4 F4mn3 F4mn2 F4mn1 F4m0 F4mp1 F4mp2 F4mp3 F4mp4...
    F3mn3 F3mn2 F3mn1 F3m0 F3mp1 F3mp2 F3mp3...
    F2mn2 F2mn1 F2m0 F2mp1 F2mp2...
    F1mn1 F1m0 F1mp1];

F4mn4_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F4mn4_array(1:24,h)=FStates'*eigvectors_array(:,1,h);
end

F4mn3_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F4mn3_array(1:24,h)=FStates'*eigvectors_array(:,2,h);
end

F4mn2_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F4mn2_array(1:24,h)=FStates'*eigvectors_array(:,3,h);
end

F4mn1_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F4mn1_array(1:24,h)=FStates'*eigvectors_array(:,4,h);
end

F4m0_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F4m0_array(1:24,h)=FStates'*eigvectors_array(:,5,h);
end

F4mp1_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F4mp1_array(1:24,h)=FStates'*eigvectors_array(:,6,h);
end

F4mp2_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F4mp2_array(1:24,h)=FStates'*eigvectors_array(:,7,h);
end

F4mp3_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F4mp3_array(1:24,h)=FStates'*eigvectors_array(:,8,h);
end

F4mp4_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F4mp4_array(1:24,h)=FStates'*eigvectors_array(:,9,h);
end

F3mn3_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F3mn3_array(1:24,h)=FStates'*eigvectors_array(:,10,h);
end

F3mn2_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F3mn2_array(1:24,h)=FStates'*eigvectors_array(:,11,h);
end

F3mn1_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F3mn1_array(1:24,h)=FStates'*eigvectors_array(:,12,h);
end

F3m0_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F3m0_array(1:24,h)=FStates'*eigvectors_array(:,13,h);
end

F3mp1_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F3mp1_array(1:24,h)=FStates'*eigvectors_array(:,14,h);
end

F3mp2_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F3mp2_array(1:24,h)=FStates'*eigvectors_array(:,15,h);
end

F3mp3_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F3mp3_array(1:24,h)=FStates'*eigvectors_array(:,16,h);
end

F2mn2_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F2mn2_array(1:24,h)=FStates'*eigvectors_array(:,17,h);
end

F2mn1_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F2mn1_array(1:24,h)=FStates'*eigvectors_array(:,18,h);
end

F2m0_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F2m0_array(1:24,h)=FStates'*eigvectors_array(:,19,h);
end

F2mp1_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F2mp1_array(1:24,h)=FStates'*eigvectors_array(:,20,h);
end

F2mp2_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F2mp2_array(1:24,h)=FStates'*eigvectors_array(:,21,h);
end

F1mn1_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F1mn1_array(1:24,h)=FStates'*eigvectors_array(:,22,h);
end

F1m0_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F1m0_array(1:24,h)=FStates'*eigvectors_array(:,23,h);
end

F1mp1_array = nan(size(eigvectors_array,1)+1,size(eigvectors_array,3));
for h = 1:size(eigvectors_array,3)
    F1mp1_array(1:24,h)=FStates'*eigvectors_array(:,24,h);
end
