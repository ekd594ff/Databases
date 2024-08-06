insert into CAR_INFORMATION values
('CI_01', '현대'),
('CI_02', '기아'),
('CI_03', '쉐보레'),
('CI_04', 'BMW'),
('CI_05', '벤츠');

insert into YEARS values
('YEAR_01', '2020'),
('YEAR_02', '2018'),
('YEAR_03', '2019'),
('YEAR_04', '2017'),
('YEAR_05', '2021');

insert into CAR_NAME values
('CN_01', '소나타'),
('CN_02', '쏘렌토'),
('CN_03', '카마로'),
('CN_04', '3시리즈'),
('CN_05', 'E클래스');

insert into OPTIONS values
('OPT_01', '네비게이션'),
('OPT_02', '후방카메라'),
('OPT_03', '가죽시트'),
('OPT_04', '스마트키'),
('OPT_05', '크루즈컨트롤'),
('OPT_06', '블루투스'),
('OPT_07', '후방감지센서'),
('OPT_08', '헤드업디스플레이'),
('OPT_09', '전자식 메모리 시트'),
('OPT_10', '어댑티브 크루즈 컨트롤');

insert into CAR_INFOR_NAME_YEAR values
('CI_YEAR_01', 'CI_01', 'CN_01', 'YEAR_01'),
('CI_YEAR_02', 'CI_02', 'CN_02', 'YEAR_02'),
('CI_YEAR_03', 'CI_03', 'CN_03', 'YEAR_03'),
('CI_YEAR_04', 'CI_04', 'CN_04', 'YEAR_04'),
('CI_YEAR_05', 'CI_05', 'CN_05', 'YEAR_05'),
('CI_YEAR_06', 'CI_03', 'CN_03', 'YEAR_05'),
('CI_YEAR_07', 'CI_01', 'CN_01', 'YEAR_02');

insert into YEAR_OPTION values
('CI_OPT_01', 'CI_YEAR_01', 'OPT_01'),
('CI_OPT_02', 'CI_YEAR_01', 'OPT_02'),
('CI_OPT_03', 'CI_YEAR_02', 'OPT_03'),
('CI_OPT_04', 'CI_YEAR_02', 'OPT_04'),
('CI_OPT_05', 'CI_YEAR_03', 'OPT_05'),
('CI_OPT_06', 'CI_YEAR_03', 'OPT_06'),
('CI_OPT_07', 'CI_YEAR_04', 'OPT_07'),
('CI_OPT_08', 'CI_YEAR_04', 'OPT_08'),
('CI_OPT_09', 'CI_YEAR_05', 'OPT_09'),
('CI_OPT_10', 'CI_YEAR_05', 'OPT_10'),
('CI_OPT_11', 'CI_YEAR_06', 'OPT_06'),
('CI_OPT_12', 'CI_YEAR_07', 'OPT_07'),
('CI_OPT_13', 'CI_YEAR_07', 'OPT_02');
