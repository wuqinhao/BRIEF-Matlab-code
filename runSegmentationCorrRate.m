CorrectRate = zeros(40,50);
code_number = ['01';'02';'08';'10';'16';'19';'24'];
code_number = cellstr(code_number);
k=1;
for a = 4:4
    for b = 7:7
        for c = 1:1:15
            %eval(['CorrectRate',num2str(c),'=zeros(40,40);']);
            for i = 0:39
            %Name = ['corr_rate_',num2str(i)];
            Name2 = ['T',code_number{a},code_number{b},'_',num2str(c),'_',num2str(i)];
            %Name2 = ['T',code_number{a},code_number{b},'_',num2str(i)];
   % eval([Name,'=error_segmentation(',Name2,');']);
            eval(['CorrectRate(',num2str(i+1),',',num2str(k),')=1-error_segmentation(',Name2,');']);
            end
        k=k+1;
        end
    end
end