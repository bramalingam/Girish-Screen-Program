%Name: slideloader_new
%Date: 12/11/08
%To load the slide to be tested from entire dataset

function [dist1 dist2 dist3]=slideloader_new(slidenum)

switch(slidenum)
    case(1)
        load('D:\analyzer files 7-0\slide001a01112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide001b01112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\slide001c02112008.mat')
        dist3=welldatamat;
    case(2)
        load('D:\analyzer files 7-0\slide002a02112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide002b02112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\slide002c02112008.mat')
        dist3=welldatamat;
    case(3)
        load('D:\analyzer files 7-0\slide003a01112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide003b01112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\slide003c01112008.mat')
        dist3=welldatamat;
    case(4)
        load('D:\analyzer files 7-0\slide004a01112008.mat')        
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide004b01112008.mat')        
        dist2=welldatamat;
        load('D:\analyzer files 7-0\slide004c02112008.mat')        
        dist3=welldatamat;
    case(5)
        load('D:\analyzer files 7-0\slide005a02112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide005b02112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\slide005c02112008.mat')
        dist3=welldatamat;
    case(6)
        load('D:\analyzer files 7-0\slide006a02112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide006b02112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\slide006c02112008.mat')
        dist3=welldatamat;
    case(7)
        load('D:\analyzer files 7-0\slide007a02112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide007b02112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\slide007c02112008.mat')
        dist3=welldatamat;
    case(8)
        load('D:\analyzer files 7-0\slide008a03112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide008b03112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\slide008c03112008.mat')
        dist3=welldatamat;
    case(9)
        load('D:\analyzer files 7-0\slide009a07112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide009b03112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\slide009c04112008.mat')
        dist3=welldatamat;
    case(10)
        load('D:\analyzer files 7-0\slide010a04112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide010b04112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\slide010c04112008.mat')
        dist3=welldatamat;
    case(11)
        load('D:\analyzer files 7-0\slide011a04112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide011b04112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\slide011c04112008.mat')
        dist3=welldatamat;
    case(12)
        load('D:\analyzer files 7-0\slide012a04112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide012b04112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\slide012c04112008.mat')
        dist3=welldatamat;
    case(13)
        load('D:\analyzer files 7-0\slide013a05112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide013b05112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\slide013c05112008.mat')
        dist3=welldatamat;
    case(14)
        load('D:\analyzer files 7-0\slide014a05112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide014b05112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\slide014c06112008.mat')
        dist3=welldatamat;
    case(15)
        load('D:\analyzer files 7-0\slide015a05112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide015b05112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\slide015c05112008.mat')
        dist3=welldatamat;
    case(16)
        load('D:\analyzer files 7-0\slide016a06112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide016b06112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\slide016c06112008.mat')
        dist3=welldatamat;
    case(17)
        load('D:\analyzer files 7-0\slide017a11112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide017b06112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\slide017c05112008.mat')
        dist3=welldatamat;
    case(18)
        load('D:\analyzer files 7-0\slide018a06112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide018b06112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\slide018c06112008.mat')
        dist3=welldatamat;
    case(19)
        load('D:\analyzer files 7-0\slide019a11112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide019b08112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\replacement\slide019c12112008.mat')
        dist3=welldatamat;
    case(20)
        load('D:\analyzer files 7-0\replacement\slide020a12112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide020b11112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\slide020c06112008.mat')
        dist3=welldatamat;
    case(21)
        load('D:\analyzer files 7-0\slide021a07112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide021b07112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\slide021c06112008.mat')
        dist3=welldatamat;
    case(22)
        load('D:\analyzer files 7-0\slide022a06112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide022b06112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\slide022c06112008.mat')
        dist3=welldatamat;
    case(23)
        load('D:\analyzer files 7-0\replacement\slide023a13112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\replacement\slide023b12112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\replacement\slide023c12112008.mat')
        dist3=welldatamat;
    case(24)
        load('D:\analyzer files 7-0\slide024a07112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide024b07112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\slide024c07112008.mat')
        dist3=welldatamat;
    case(25)
        load('D:\analyzer files 7-0\slide025a07112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide025b07112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\slide025c07112008.mat')
        dist3=welldatamat;
    case(26)
        load('D:\analyzer files 7-0\slide026a07112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide026b07112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\slide026c07112008.mat')
        dist3=welldatamat;
    case(27)
        load('D:\analyzer files 7-0\slide027a08112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\slide027b08112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\slide027c08112008.mat')
        dist3=welldatamat;
    case(28)
        load('D:\analyzer files 7-0\replacement\slide028a13112008.mat')
        dist1=welldatamat;
        load('D:\analyzer files 7-0\replacement\slide028b13112008.mat')
        dist2=welldatamat;
        load('D:\analyzer files 7-0\replacement\slide028c13112008.mat')
        dist3=welldatamat;
end

dist1=dist1(1:300);
dist2=dist2(1:300);
dist3=dist3(1:300);

clear welldatamat