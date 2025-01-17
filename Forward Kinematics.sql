create database KUKAROBOT;
create table KUKAROBOT.DHPARAMETER
(
	SlNo int, 
	LinkAngle varchar(50),
    LinkLength varchar(50),
    Offsets varchar(50),
    OffsetsAngle varchar(50)
);

insert into KUKAROBOT.DHPARAMETER(SlNo,LinkAngle,LinkLength,Offsets,OffsetsAngle) values(1,'0','0','0','O1');
insert into KUKAROBOT.DHPARAMETER(SlNo,LinkAngle,LinkLength,Offsets,OffsetsAngle) values(2,'0','0','d2','O');
insert into KUKAROBOT.DHPARAMETER(SlNo,LinkAngle,LinkLength,Offsets,OffsetsAngle) values(3,'90','a2','d3','O');

select * from KUKAROBOT.DHPARAMETER;
create table KUKAROBOT.MATRICESFORMULAE
(
	ROWSS varchar(50), 
	Col1 varchar(50),
    Col2 varchar(50),
    Col3 varchar(50),
    Col4 varchar(50)
);
insert into KUKAROBOT.MATRICESFORMULAE(ROWSS,Col1,Col2,Col3,Col4) values('Row1','C0(i)','-S0(i)','0','0');
insert into KUKAROBOT.MATRICESFORMULAE(ROWSS,Col1,Col2,Col3,Col4) values('Row2','S0(i)CA(i-1)','C0(i)CA(i-1)','-SA(i-1)','SA(i-1)Di');
insert into KUKAROBOT.MATRICESFORMULAE(ROWSS,Col1,Col2,Col3,Col4) values('Row3','S0(i)SA(i-1)','C0(i)SA(i-1)','CA(i-1)','CA(i-1)Di');
insert into KUKAROBOT.MATRICESFORMULAE(ROWSS,Col1,Col2,Col3,Col4) values('Row4','0','0','0','1');
select * from KUKAROBOT.MATRICESFORMULAE;
create table KUKAROBOT.OTI
(
	ROWSS varchar(50), 
	Col1 varchar(50),
    Col2 varchar(50),
    Col3 varchar(50),
    Col4 varchar(50)
);
create table KUKAROBOT.IT2
(
	ROWSS varchar(50), 
	Col1 varchar(50),
    Col2 varchar(50),
    Col3 varchar(50),
    Col4 varchar(50)
);
create table KUKAROBOT.I2T3
(
	ROWSS varchar(50), 
	Col1 varchar(50),
    Col2 varchar(50),
    Col3 varchar(50),
    Col4 varchar(50)
);
create table KUKAROBOT.OT2
(
	ROWSS varchar(50), 
	Col1 varchar(50),
    Col2 varchar(50),
    Col3 varchar(50),
    Col4 varchar(50)
);
create table KUKAROBOT.OT3
(
	ROWSS varchar(50), 
	Col1 varchar(50),
    Col2 varchar(50),
    Col3 varchar(50),
    Col4 varchar(50)
);
insert into KUKAROBOT.OTI(ROWSS,Col1,Col2,Col3,Col4) values('Row1','C0(1)','-S0(1)','0','0');
insert into KUKAROBOT.OTI(ROWSS,Col1,Col2,Col3,Col4) values('Row2','S0(1)','C0(1)','-SA(i-1)','SA(i-1)Di');
insert into KUKAROBOT.OTI(ROWSS,Col1,Col2,Col3,Col4) values('Row3','0','0','1','0');
insert into KUKAROBOT.OTI(ROWSS,Col1,Col2,Col3,Col4) values('Row4','0','0','0','1');
insert into KUKAROBOT.IT2(ROWSS,Col1,Col2,Col3,Col4) values('Row1','1','0','0','0');
insert into KUKAROBOT.IT2(ROWSS,Col1,Col2,Col3,Col4) values('Row2','0','1','0','0');
insert into KUKAROBOT.IT2(ROWSS,Col1,Col2,Col3,Col4) values('Row3','0','0','1','d2');
insert into KUKAROBOT.IT2(ROWSS,Col1,Col2,Col3,Col4) values('Row4','0','0','0','1');
insert into KUKAROBOT.I2T3(ROWSS,Col1,Col2,Col3,Col4) values('Row1','1','0','0','a2');
insert into KUKAROBOT.I2T3(ROWSS,Col1,Col2,Col3,Col4) values('Row2','0','0','-1','-d3');
insert into KUKAROBOT.I2T3(ROWSS,Col1,Col2,Col3,Col4) values('Row3','0','1','0','0');
insert into KUKAROBOT.I2T3(ROWSS,Col1,Col2,Col3,Col4) values('Row4','0','0','0','1');
insert into KUKAROBOT.OT2(ROWSS,Col1,Col2,Col3,Col4) values('Row1','C0(1)','-S0(1)','0','0');
insert into KUKAROBOT.OT2(ROWSS,Col1,Col2,Col3,Col4) values('Row2','S0(1)','C0(1)','0','0');
insert into KUKAROBOT.OT2(ROWSS,Col1,Col2,Col3,Col4) values('Row3','0','0','1','d2');
insert into KUKAROBOT.OT2(ROWSS,Col1,Col2,Col3,Col4) values('Row4','0','0','0','1');
insert into KUKAROBOT.OT3(ROWSS,Col1,Col2,Col3,Col4) values('Row1','C0(1)','0','S0(1)','a2C0(1)+d3S0(1)');
insert into KUKAROBOT.OT3(ROWSS,Col1,Col2,Col3,Col4) values('Row2','0','1','0','a2S0(1)-d3C0(1)');
insert into KUKAROBOT.OT3(ROWSS,Col1,Col2,Col3,Col4) values('Row3','-S0(1)','0','C0(1)','d2');
insert into KUKAROBOT.OT3(ROWSS,Col1,Col2,Col3,Col4) values('Row4','0','0','0','1');
select * from KUKAROBOT.DHPARAMETER;
select * from KUKAROBOT.MATRICESFORMULAE;
select * from KUKAROBOT.OTI;
select * from KUKAROBOT.IT2;
select * from KUKAROBOT.I2T3;
select * from KUKAROBOT.OT2;
select * from KUKAROBOT.OT3;
delete from KUKAROBOT.MATRICESFORMULAE where Col2='-S0(i)';
update KUKAROBOT.MATRICESFORMULAE set Col2= '-S0(i)'  where Col2='S0(i)';
select * from KUKAROBOT.MATRICESFORMULAE;
create table KUKAROBOT.FORWARDKINEMATICS
(
	Variable varchar(50), 
	ForwardVal varchar(50)
);
insert into KUKAROBOT.FORWARDKINEMATICS(Variable,ForwardVal) values('x','a2C0(1)+d3S0(1)');
insert into KUKAROBOT.FORWARDKINEMATICS(Variable,ForwardVal) values('y','a2S0(1)-d3C0(1)');
insert into KUKAROBOT.FORWARDKINEMATICS(Variable,ForwardVal) values('z','d2');
select * from KUKAROBOT.FORWARDKINEMATICS;