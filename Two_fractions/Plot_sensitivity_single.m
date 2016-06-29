%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%  PLOT the Results of Sensitivity study

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [] = Plot_sensitivity_singleParameter(Results, ind, range, NameVar, xaxis)


% for i=1:length(k1)
%     if(abs(Results(i,7))>0.1)
%         Results(i,7)=0.0;
%     end
% end

    figure
    % F_O2
    subplot(3,3,1)
    plot(ind, Results(:,2),'.')            
    hold on            
    axis ([range(1) range(2) -Inf Inf])
%    xlabel ('log(k_1) [yr^{-1}]')
    ylabel('F_{O_2}')

    % F_NO3
    subplot(3,3,2)
    plot(ind, Results(:,3),'.')            
    hold on            
    axis ([range(1) range(2) -Inf Inf])
%    xlabel ('log(k_1) [yr^{-1}]')
    ylabel('F_{NO_3}')

    % F_SO4
    subplot(3,3,3)
    plot(ind, Results(:,4),'.')            
    hold on            
    axis ([range(1) range(2) -Inf Inf])
%    xlabel ('log(k_1) [yr^{-1}]')
    ylabel('F_{SO_4}')

    % F_PO4
    subplot(3,3,4)
    plot(ind, Results(:,7),'.')            
    hold on            
    axis ([range(1) range(2) -Inf Inf])
%    xlabel ('log(k_1) [yr^{-1}]')
    ylabel('F_{PO_4}')

    % F_NH4
    subplot(3,3,5)
    plot(ind, Results(:,5),'.')            
    hold on            
    axis ([range(1) range(2) -Inf Inf])
%    xlabel ('log(k_1) [yr^{-1}]')
    ylabel('F_{NH_4}')

    % F_H2S
    subplot(3,3,6)
    plot(ind, Results(:,6),'.')            
    hold on            
    axis ([range(1) range(2) -Inf Inf])
%    xlabel ('log(k_1) [yr^{-1}]')
    ylabel('F_{H_2S}')
    
    % zox
    subplot(3,3,7)
    plot(ind, Results(:,8),'.')            
    hold on            
    axis ([range(1) range(2) -Inf Inf])
    xlabel (xaxis)
    ylabel('z_{O_2}')

    % zNO3
    subplot(3,3,8)
    plot(ind, Results(:,9),'.')            
    hold on            
    axis ([range(1) range(2) -Inf Inf])
    xlabel (xaxis)
    ylabel('z_{NO_3}')

    % zox
    subplot(3,3,9)
    plot(ind, Results(:,10),'.')            
    hold on            
    axis ([range(1) range(2) -Inf Inf])
    xlabel (xaxis)
    ylabel('z_{SO_4}')
    
%	ha = axes('Position',[0 0 1 1],'Xlim',[0 1],'Ylim',[0 1],'Box','off','Visible','off','Units','normalized', 'clipping' , 'off');
%	text(0.5, 1,'\bf Test 4\_1: 500m anoxic (no Mn, Fe)','HorizontalAlignment','center','VerticalAlignment', 'top')
	print('-dpsc2', ['1_' NameVar '_Sensitivity.ps']);
end

function [] = Plot_sensitivity_singleOutput(Results, NameVar, yaxis)


    figure
    % k1
    subplot(3,3,1)
    plot(log10(k1), Results(:,2),'.')            
    hold on            
    axis ([range_k1(1) range_k1(2) -Inf Inf])
    xlabel ('log(k_1) [yr^{-1}]')
    ylabel(yaxis)

    % f1
    subplot(3,3,2)
    plot(f1, Results(:,2),'.')            
    hold on            
    axis ([0 1 -Inf Inf])
    xlabel ('labile fraction')
%    ylabel('F_{O_2}')

    % KNH4
    subplot(3,3,3)
    plot(KNH4, Results(:,2),'.')            
    hold on            
    axis ([range_KNH4(1) range_KNH4(2) -Inf Inf])
    xlabel ('KNH4 [-]')
%    ylabel('F_{O_2}')

    % KPO4ox
    subplot(3,3,4)
    plot(KPO4ox, Results(:,2),'.')            
    hold on            
    axis ([range_KPO4ox(1) range_KPO4ox(2) -Inf Inf])
    xlabel ('KPO4ox [-]')
    ylabel(yaxis)

    % KPO4anox
    subplot(3,3,5)
    plot(KPO4anox, Results(:,2),'.')            
    hold on            
    axis ([range_KPO4anox(1) range_KPO4anox(2) -Inf Inf])
    xlabel ('KPO4anox [-]')
 %   ylabel(yaxis)

    % ksPO4
    subplot(3,3,6)
    plot(ksPO4, Results(:,2),'.')            
    hold on            
    axis ([range_ksPO4(1) range_ksPO4(2) -Inf Inf])
    xlabel ('ksPO4 [yr^{-1}]')
 %   ylabel(yaxis)
    
    % kmPO4
    subplot(3,3,7)
    plot(kmPO4, Results(:,2),'.')            
    hold on            
    axis ([range_kmPO4(1) range_kmPO4(2) -Inf Inf])
    xlabel ('kmPO4 [yr^{-1}]')
    ylabel(yaxis)

    % kaPO4
    subplot(3,3,8)
    plot(log10(kaPO4), Results(:,2),'.')            
    hold on            
    axis ([range_kaPO4(1) range_kaPO4(2) -Inf Inf])
    xlabel ('log(kaPO4) [yr^{-1}]')
 %   ylabel(yaxis)

    % gammaNH4 gammaH2S
    subplot(3,3,9)
    plot(gammaNH4, Results(:,2),'.', gammaH2S, Results(:,2),'.', 'r')            
    hold on            
    axis ([range_gammaNH4(1) range_gammaNH4(2) -Inf Inf])
    xlabel ('gammaNH4 gammaH2S [-]')
 %   ylabel(yaxis)
    
%	ha = axes('Position',[0 0 1 1],'Xlim',[0 1],'Ylim',[0 1],'Box','off','Visible','off','Units','normalized', 'clipping' , 'off');
%	text(0.5, 1,'\bf Test 4\_1: 500m anoxic (no Mn, Fe)','HorizontalAlignment','center','VerticalAlignment', 'top')
	print('-dpsc2', ['2_' NameVar '_Sensitivity.ps']);
end