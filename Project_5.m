RwoData=[10 20 30;40 50 60;70 80 90];
ROI_Data=RwoData([1 2],[2 end]);
Squ=ROI_Data .^ 2;
Calibrated_Data=x./10;


pad_val = [5 5];
PadMatrix = repmat(pad_val,2,1);

TransmissionData=horzcat(Calibrated_Data,PadMatrix)