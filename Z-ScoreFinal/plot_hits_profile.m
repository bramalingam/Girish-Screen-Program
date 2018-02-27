dirname = '36_hours_results';
mkdir(dirname)
parameters = {'Average_Cell_Intensity', 'Total_Cell_Intensity', 'Average_Aggregate_Intensity', 'Total_Aggregate_Intensity', 'Fraction_Of_CellularArea_Occupied_By_Aggregates', 'Number_Of_Aggregates_Per_Cell'};
for i=1:6
    
    hitsvec(i) = length(hits1{i+4,1});
    val = hits1{i+4,2};
    if isempty(val)
        val = -0.01;
    end
    val1 = hits1{i+4,3};
    if isempty(val1)
        val1 = -0.01;
    end
    posvec(i) = val;
    negvec(i) = val1;

    hits2 = hits1{i+4,1};
    fid = fopen([dirname '/' parameters{i} '.csv'], 'w') ;
    fprintf(fid, '%s,', ['False Negative Rate:']) ;
    fprintf(fid, '%s\n', num2str(hits1{i+4,2})) ;
    fprintf(fid, '%s,', ['False Positive Rate:']) ;
    fprintf(fid, '%s\n', num2str(hits1{i+4,3})) ;
    fprintf(fid, '%s\n', ['Hits']) ;
    for j=1:length(hits2)    
        fprintf(fid, '%s\n', hits1{i+4,1}{j,:}) ;
    end
    fclose(fid) ;
    
end

% bar(hitsvec(1:6));xlabel('parameters');ylabel('number of hits');title('Hits')
% figure
% bar(posvec(1:6));xlabel('parameters');ylabel('inferred false negative rate');title('positive controls')
% figure
% bar(negvec(1:6));xlabel('parameters');ylabel('inferred false positive rate');title('negative controls')