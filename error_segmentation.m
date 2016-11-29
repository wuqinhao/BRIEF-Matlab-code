function err_rate = error_segmentation(sample)
err = 0;
[rows, cols] = size(sample);
msk=[ones(rows,cols/2),ones(rows,cols/2+2)*2];
for i =1:rows
    for j = 1:cols
        if (sample(i,j)~= msk(i,j))
            err = err+1;
        end
    end
end
err_rate = err/(rows*cols);
end