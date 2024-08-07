INSERT INTO HOBBY VALUES
('HB_1', '등산'),
('HB_2', '요리'),
('HB_3', '음악감상'),
('HB_4', '수영'),
('HB_5', '영화감상'),
('HB_6', '자전거'),
('HB_7', '요가'),
('HB_8', '그림 그리기'),
('HB_9', '독서'),
('HB_10', '공원산책');

INSERT INTO ADDRESS VALUES
('ADDR_1','서울특별시 강남구'),
('ADDR_2','경기도 수원시'),
('ADDR_3','인천광역시 부평구'),
('ADDR_4','대전광역시 서구'),
('ADDR_5','경상북도 포항시 북구');

INSERT INTO MEMBER VALUES
('M_1', '홍길동', '30', '남', '010-1234-5678', 'hong@example.com'),
('M_2', '김영희', '25', '여', '010-1234-5678', 'kim@example.com'),
('M_3', '이철수', '35', '남', '010-2468-1357', 'lee@example.com'),
('M_4', '박민준', '28', '남', '010-8642-9137', 'park@example.com'),
('M_5', '임지영', '32', '여', '010-5793-6241', 'lim@example.com');

INSERT INTO MEMBER_HOBBY VALUES
('MH_1', 'M_1', 'HB_1'),
('MH_2', 'M_1', 'HB_2'),
('MH_3', 'M_2', 'HB_3'),
('MH_4', 'M_2', 'HB_4'),
('MH_5', 'M_3', 'HB_5'),
('MH_6', 'M_3', 'HB_6'),
('MH_7', 'M_4', 'HB_7');

INSERT INTO MEMBER_ADDRESS VALUES
('MA_1', 'M_1', 'ADDR_1'),
('MA_2', 'M_1', 'ADDR_2'),
('MA_3', 'M_2', 'ADDR_2'),
('MA_4', 'M_3', 'ADDR_3'),
('MA_5', 'M_4', 'ADDR_4'),
('MA_6', 'M_5', 'ADDR_5'),
('MA_7', 'M_5', 'ADDR_4');
