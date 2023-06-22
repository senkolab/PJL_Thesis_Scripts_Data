files = dir([Filepath 'TOF_Radio_7o20x_6o10y_800uJ_553laser80uWCB_550LP_trap_off*'])
files = dir([Filepath 'Ion_Direct_Trap_TOF_4VRF_*']);
A = importdata([Filepath files(1).name]);
B = nan(numel(A),numel(files));
for h = 1:numel(files)
    A = importdata([Filepath files(h).name]);
    for hh = 1:numel(A)
        endindex = find(A{hh} == ']');
        endindex = endindex(1);
        B(hh,h) = mean(str2num(A{hh}(8:endindex)));
    end
end
figure
plot(t,B,'linewidth',2)
hold on

figure
files = dir([Filepath 'Ion-Direct_trap_Efficiency_PMT_98uJ_001'])
A = importdata([Filepath files(1).name]);
endindex = find(A{1} == ']');
endindex = endindex(1);
B = nan(numel(A),numel(files));
for h = 1:numel(files)
    A = importdata([Filepath files(h).name]);
    for hh = 1:numel(A)
        endindex = find(A{hh} == ']');
        endindex = endindex(1);
        B_dum = str2num(A{hh}(8:endindex));
        B_dum = max(B_dum);
        B_dum = B_dum(1);
        B(hh,h) = B_dum;
    end
end
B(1) = nan;
plot(B,'linewidth',2)
title('98 uJ, Direct-ion Trap, natural target')
xlabel('Attempt')
ylabel('Photon count')

files = dir([Filepath 'Ion-Direct_trap_rad_scan_400uJ_*'])
A = importdata([Filepath files(1).name]);
B = nan(numel(A),numel(files));
for h = 1:numel(files)
    A = importdata([Filepath files(h).name]);
    for hh = 1:numel(A)
        endindex = find(A{hh} == ']');
        endindex = endindex(1);
        B_dum = str2num(A{hh}(8:endindex));
        if h == 1 && hh == 1
            B_dum(1) = [];
        end
        B_dum = sum(B_dum > 38);
        B(hh,h) = B_dum;
    end
end
figure
%B(1,:) = nan;
plot(t,B,'o');
hold on
plot(t,mean(B,2),'k','linewidth',4)
title('125 uJ, rad target ion direct trap')
xlabel('time / \mus')
ylabel('Number of times trapped ions')
axis([138 156 0 6])

files = dir([Filepath 'Ion-Direct_Trap_nat_125uJ_trapRFoff_002*'])
A = importdata([Filepath files(1).name]);
B = nan(numel(A),numel(files));
for h = 1:numel(files)
    A = importdata([Filepath files(h).name]);
    for hh = 1:numel(A)
        endindex = find(A{hh} == ']');
        endindex = endindex(1);
        B_dum = max(str2num(A{hh}(8:endindex)));
        B_dum = B_dum(1)
        B(hh,h) = B_dum
    end
end
figure
B(1) = nan;
plot(t,B)
hold on
plot(t,mean(B,2),'k','linewidth',4)
title('125 uJ, nat target trap off')
xlabel('time / \mus')
ylabel('Average photon count')
axis([138 156 0 6])

files = dir([Filepath 'TOF_Nat_7o245x_6o105y_800uJ_nolaser80uWCB_noLP_trap_off*'])
A = importdata([Filepath files(1).name]);
B = nan(numel(A),numel(files));
for h = 1:numel(files)
    A = importdata([Filepath files(h).name]);
    for hh = 1:numel(A)
        endindex = find(A{hh} == ']');
        endindex = endindex(1);
        B(hh,h) = mean(str2num(A{hh}(8:endindex)));
    end
end
figure
plot(t,B)
hold on
plot(t,mean(B,2),'k','linewidth',4)
title('800 uJ, 550 nm longpass filter, 553 nm laser off')
xlabel('time / \mus')
ylabel('Photon count')

files = dir([Filepath 'TOF_Radio_7o25x_6o10y_800uJ_with493_with650*'])
A = importdata([Filepath files(1).name]);
B = nan(numel(A),numel(files));
for h = 1:numel(files)
    A = importdata([Filepath files(h).name]);
    for hh = 1:numel(A)
        endindex = find(A{hh} == ']');
        endindex = endindex(1);
        B(hh,h) = mean(str2num(A{hh}(8:endindex)));
    end
end
figure
plot(t,B)
hold on
plot(t,mean(B,2),'k','linewidth',4)
title('800 uJ, old spot, with 493 with 650')
xlabel('time / \mus')
ylabel('Photon count')

Filepath = 'C:\Users\Pei Jiang\Documents\2020_10_01\Trap on off\';

files = dir([Filepath 'TOF_Radio_7o20x_6o10y_800uJ_no493_no650_trap_off*'])
A = importdata([Filepath files(1).name]);
B = nan(numel(A),numel(files));
for h = 1:numel(files)
    A = importdata([Filepath files(h).name]);
    for hh = 1:numel(A)
        endindex = find(A{hh} == ']');
        endindex = endindex(1);
        B(hh,h) = mean(str2num(A{hh}(8:endindex)));
    end
end
figure
plot(t,B)
hold on
plot(t,mean(B,2),'k','linewidth',4)
title('800 uJ, new spot, trap off')
xlabel('time / \mus')
ylabel('Photon count')

files = dir([Filepath 'TOF_Radio_7o20x_6o10y_800uJ_no493_no650_trap_on*'])
A = importdata([Filepath files(1).name]);
B = nan(numel(A),numel(files));
for h = 1:numel(files)
    A = importdata([Filepath files(h).name]);
    for hh = 1:numel(A)
        endindex = find(A{hh} == ']');
        endindex = endindex(1);
        B(hh,h) = mean(str2num(A{hh}(8:endindex)));
    end
end
figure
plot(t,B)
hold on
plot(t,mean(B,2),'k','linewidth',4)
title('800 uJ, new spot, trap on')
xlabel('time / \mus')
ylabel('Photon count')

A = importdata([Filepath 'PMTCount169us_rad_7o18734x_5o9006y.txt']);
B = A(:,1)-A(:,5);
E = A(:,1);
C = (B > 4*A(:,6));
maxind = max(A(:,7));
minind = min(A(:,7));
D = nan(1,maxind-minind+1);
for h = minind:maxind
    B = A(:,1)-A(:,5);
    D(h-minind+1) = sum(C(A(:,7)==h));
    if mean(E(A(:,7)==h))<30
        D(h-minind+1) = nan;
    end
end
