%Name: slideloader
%Date: 11/08/07
%To load the slide to be tested from entire dataset

function [dist1 dist2 dist3]=slideloader(slidenum)

switch(slidenum)
    case(1)        
        load 'E:/screendata/analysis 4-0/1a/histdata_20071127140.mat'        
        dist1=avgdist;         
        load 'E:/screendata/analysis 4-0/1b/histdata_20071127215.mat'
        dist2=avgdist;             
        load 'E:/screendata/analysis 4-0/1c/histdata_20071127022.mat'
        dist3=avgdist;
    case(2)       
        load 'E:/screendata/analysis 4-0/2a/histdata_20071127011.mat'
        dist1=avgdist;      
        load 'E:/screendata/analysis 4-0/2b/histdata_200711272050.mat'
        dist2=avgdist;       
        load 'E:/screendata/analysis 4-0/2c/histdata_200711272048.mat'
        dist3=avgdist;
    case(3)       
        load 'E:/screendata/analysis 4-0/3a/histdata_20071127222.mat'
        dist1=avgdist;       
        load 'E:/screendata/analysis 4-0/3b/histdata_200711272138.mat'
        dist2=avgdist;       
        load 'E:/screendata/analysis 4-0/3c/histdata_20071127225.mat'
        dist3=avgdist;
    case(4)       
        load 'E:/screendata/analysis 4-0/4a/histdata_20071127217.mat'
        dist1=avgdist;      
        load 'E:/screendata/analysis 4-0/4b/histdata_20071128186.mat'
        dist2=avgdist;      
        load 'E:/screendata/analysis 4-0/4c/histdata_200711281820.mat'
        dist3=avgdist;
    case(5)       
        load 'E:/screendata/analysis 4-0/5a/histdata_20071128515.mat'
        dist1=avgdist;      
        load 'E:/screendata/analysis 4-0/5b/histdata_20071128459.mat'
        dist2=avgdist;       
        load 'E:/screendata/analysis 4-0/5c/histdata_20071128446.mat'
        dist3=avgdist;
    case(6)       
        load 'E:/screendata/analysis 4-0/6a/histdata_20071128513.mat'
        dist1=avgdist;       
        load 'E:/screendata/analysis 4-0/6b/histdata_20071128535.mat'
        dist2=avgdist;        
        load 'E:/screendata/analysis 4-0/6c/histdata_20071128551.mat'
        dist3=avgdist;
    case(7)        
        load 'E:/screendata/analysis 4-0/7a/histdata_20071127854.mat'
        dist1=avgdist;        
        load 'E:/screendata/analysis 4-0/7b/histdata_200711271125.mat'
        dist2=avgdist;      
        load 'E:/screendata/analysis 4-0/7c/histdata_20071127814.mat'
        dist3=avgdist;        
    case(8)        
        load 'E:/screendata/analysis 4-0/8a/histdata_20071127813.mat'
        dist1=avgdist;     
        load 'E:/screendata/analysis 4-0/8b/histdata_20071128143.mat'
        dist2=avgdist;       
        load 'E:/screendata/analysis 4-0/8c/histdata_20071128128.mat'
        dist3=avgdist;    
    case(9)
        load 'E:/screendata/analysis 4-0/9a/histdata_200711261620.mat'
        dist1=avgdist;        
        load 'E:/screendata/analysis 4-0/9b/histdata_20071127224.mat'
        dist2=avgdist;       
        load 'E:/screendata/analysis 4-0/9c/histdata_20071127854.mat'
        dist3=avgdist;
    case(10)       
        load 'E:/screendata/analysis 4-0/10a/histdata_20071129855.mat'
        dist1=avgdist;      
        load 'E:/screendata/analysis 4-0/10b/histdata_20071129854.mat'
        dist2=avgdist;      
        load 'E:/screendata/analysis 4-0/10c/histdata_20071129925.mat'
        dist3=avgdist;
    case(11)       
        load 'E:/screendata/analysis 4-0/11a/histdata_2007112996.mat'
        dist1=avgdist;       
        load 'E:/screendata/analysis 4-0/11b/histdata_2007122929.mat'
        dist2=avgdist;        
        load 'E:/screendata/analysis 4-0/11c/histdata_20071221054.mat'
        dist3=avgdist;
    case(12)       
        load 'E:/screendata/analysis 4-0/12a/histdata_200711291630.mat'
        dist1=avgdist;       
        load 'E:/screendata/analysis 4-0/12b/histdata_200711291622.mat'
        dist2=avgdist;      
        load 'E:/screendata/analysis 4-0/12c/histdata_200711291854.mat'
        dist3=avgdist;
    case(13)      
        load 'E:/screendata/analysis 4-0/13a/histdata_200711291912.mat'
        dist1=avgdist;       
        load 'E:/screendata/analysis 4-0/13b/histdata_20071130239.mat'
        dist2=avgdist;        
        load 'E:/screendata/analysis 4-0/13c/histdata_20071130316.mat'
        dist3=avgdist;
    case(14)        
        load 'E:/screendata/analysis 4-0/14a/histdata_20071130253.mat'
        dist1=avgdist;       
        load 'E:/screendata/analysis 4-0/14b/histdata_20071251427.mat'
        dist2=avgdist;      
        load 'E:/screendata/analysis 4-0/14c/histdata_20071212043.mat'
        dist3=avgdist;
    case(15)       
        load 'E:/screendata/analysis 4-0/15a/histdata_20071212011.mat'
        dist1=avgdist;        
        load 'E:/screendata/analysis 4-0/15b/histdata_20071211051.mat'
        dist2=avgdist;      
        load 'E:/screendata/analysis 4-0/15c/histdata_20071211059.mat'
        dist3=avgdist;
    case(16)       
        load 'E:/screendata/analysis 4-0/16a/histdata_2007121356.mat'
        dist1=avgdist;      
        load 'E:/screendata/analysis 4-0/16b/histdata_2007121210.mat'
        dist2=avgdist;        
        load 'E:/screendata/analysis 4-0/16c/histdata_20071211259.mat'
        dist3=avgdist;
    case(17)       
        load 'D:/slide17a/histdata_20085162057.mat'
        dist1=avgdist;        
        load 'E:/screendata/analysis 4-0/17b/histdata_2007123513.mat'
        dist2=avgdist;        
        load 'E:/screendata/analysis 4-0/17c/histdata_2007123438.mat'
        dist3=avgdist;
    case(18)        
        load 'E:/screendata/analysis 4-0/18a/histdata_2007123728.mat'
        dist1=avgdist;        
        load 'E:/screendata/analysis 4-0/18b/histdata_2007123730.mat'
        dist2=avgdist;      
        load 'E:/screendata/analysis 4-0/18c/histdata_20071221028.mat'
        dist3=avgdist;
    case(19)       
        load 'E:/screendata/analysis 4-0/19a/histdata_20071221114.mat'
        dist1=avgdist;        
        load 'E:/screendata/analysis 4-0/19b/histdata_2007124924.mat'
        dist2=avgdist;       
        load 'E:/screendata/analysis 4-0/19c/histdata_2007124828.mat'
        dist3=avgdist;
    case(20)
        load 'E:/screendata/analysis 4-0/20a/histdata_20071231911.mat'
        dist1=avgdist;       
        load 'E:/screendata/analysis 4-0/20b/histdata_20071231716.mat'
        dist2=avgdist;      
        load 'E:/screendata/analysis 4-0/20c/histdata_2007123163.mat'
        dist3=avgdist;
    case(21)     
        load 'E:/screendata/analysis 4-0/21a/histdata_20071231748.mat'
        dist1=avgdist;      
        load 'E:/screendata/analysis 4-0/21b/histdata_2007125219.mat'
        dist2=avgdist;       
        load 'E:/screendata/analysis 4-0/21c/histdata_2007125228.mat'
        dist3=avgdist;
    case(22)     
        load 'E:/screendata/analysis 4-0/22a/histdata_20071241511.mat'
        dist1=avgdist;      
        load 'E:/screendata/analysis 4-0/22b/histdata_2007124156.mat'
        dist2=avgdist;
        load 'E:/screendata/analysis 4-0/22c/histdata_20071242059.mat'
        dist3=avgdist;
    case(23)       
        %load 'E:/screendata/analysis 4-0/23a/histdata_20071242131.mat'
        load('D:\secslides\23a2\histdata_20088112033.mat')
        dist1=avgdist;      
        %load 'E:/screendata/analysis 4-0/23b/histdata_2007126619.mat'
        load('D:\secslides\23b2\histdata_2008812549.mat')
        dist2=avgdist;      
        %load 'E:/screendata/analysis 4-0/23c/histdata_2007126614.mat'
        load('D:\secslides\23c\histdata_2008814716.mat')
        dist3=avgdist;
    case(24)       
        load 'E:/screendata/analysis 4-0/24a/histdata_2007125177.mat'
        dist1=avgdist;       
        load 'E:/screendata/analysis 4-0/24b/histdata_20071251641.mat'
        dist2=avgdist;       
        load 'E:/screendata/analysis 4-0/24c/histdata_2007126554.mat'
        dist3=avgdist;    
    case(25)      
        load 'E:/screendata/analysis 4-0/25a/histdata_200712665.mat'
        dist1=avgdist;       
        load 'E:/screendata/analysis 4-0/25b/histdata_2007127124.mat'
        dist2=avgdist;       
        load 'E:/screendata/analysis 4-0/25c/histdata_2007127153.mat'
        dist3=avgdist;
    case(26)        
        load 'E:/screendata/analysis 4-0/26a/histdata_2007126815.mat'
        dist1=avgdist;       
        load 'E:/screendata/analysis 4-0/26b/histdata_2007126759.mat'
        dist2=avgdist;      
        load 'E:/screendata/analysis 4-0/26c/histdata_2007127115.mat'
        dist3=avgdist;
    case(27)      
        load 'E:/screendata/analysis 4-0/27a/histdata_200712723.mat'
        dist1=avgdist;   
        load 'E:/screendata/analysis 4-0/27b/histdata_2007127645.mat'
        dist2=avgdist;     
        load 'E:/screendata/analysis 4-0/27c/histdata_2007127952.mat'
        dist3=avgdist;
    case(28)      
        load('D:\secslides\28a\histdata_20088141022.mat')
        %load 'E:/screendata/analysis 4-0/28a/histdata_2007127634.mat'
        dist1=avgdist;      
        %load 'E:/screendata/analysis 4-0/28b/histdata_2007127525.mat'
        load('D:\secslides\28b\histdata_2008821232.mat')
        dist2=avgdist;     
        %load 'E:/screendata/analysis 4-0/28c/histdata_200712752.mat'
        load('D:\secslides\28c\primaryslide_c_28_1_140808\histdata_200882169.mat')
        dist3=avgdist;
end

clear avgdist