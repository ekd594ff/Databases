insert into Writers values('WI_01', '관리자');
insert into Writers values('WI_02', '마케팅팀');

insert into Notice values('NOT01', 'WI_01', '서비스 점검 안내');
insert into Notice values('NOT02', 'WI_02', '이벤트 안내');

insert into Visitors values('VI_01', 'NOT01', 'WI_01', '홍길동');
insert into Visitors values('VI_02', 'NOT01', 'WI_01', '김영희');
insert into Visitors values('VI_03', 'NOT02', 'WI_02', '백지영');
insert into Visitors values('VI_04', 'NOT02', 'WI_02', '최민호');
insert into Visitors values('VI_05', 'NOT02', 'WI_02', '송지현');
