sensor_name = "Thermal_Alpha";
senaor_id = int32(105.8);

disp(['the class name of sensor_name is : ',class(sensor_name)])
disp(['the class name of sensor_id is : ',num2str(class(senaor_id))])
RwoData = [10 20 30;40 50 60;70 80 90]

ROI_Data = RwoData([1 2],[2 end])


Squ = ROI_Data .^ 2;
Calibrated_Data = Squ./10


pad_val = [5 5];
PadMatrix = repmat(pad_val,2,1)

TransmissionData = horzcat(Calibrated_Data,PadMatrix)

A = [1 2; 2 2];
B = [2; 6];

inV = inv(A)
x = inV*B
Trace =trace(A)