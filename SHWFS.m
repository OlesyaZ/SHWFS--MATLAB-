%Bubble recognition for SHWFS method
clear all;
close all;
clc;
 
calib_frame_full_name = 'seqcalib.bmp';
 
for frame_name =0:1:199
    frame_full_name = ['seq' num2str(frame_name) '.bmp'];
    HB=imread(frame_full_name);
    HD=imread(calib_frame_full_name);
    IN=abs(HD-HB);
    threshold=80;
    threshold_babble=130;
    IN(IN<threshold)=0;
%     mesh(double(IN));
    if(any(any(IN>threshold_babble,1), 2))
        frame_name
    end
end

