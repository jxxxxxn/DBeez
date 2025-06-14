SET NAMES utf8mb4;

-- 고객
INSERT INTO Customers (customer_id, customer_name, address, phone_number, email) VALUES
(1, '김민준', '서울시 강남구 테헤란로 123', '010-1111-2222', 'kim.mj@example.com'),
(2, '박서연', '서울시 서초구 서초대로 456', '010-3333-4444', 'park.sy@example.com'),
(3, '이도현', '부산시 해운대구 마린시티1로 78', '010-5555-6666', 'lee.dh@example.com'),
(4, '정수빈', '대구시 수성구 동대구로 90', '010-7777-8888', 'jung.sb@example.com'),
(5, '최예나', '인천시 연수구 송도동 101', '010-9999-0000', 'choi.yn@example.com'),
(6, '강지훈', '광주시 서구 상무대로 202', '010-2222-1111', 'kang.jh@example.com'),
(7, '윤아린', '대전시 유성구 대학로 303', '010-4444-3333', 'yoon.ar@example.com'),
(8, '조우진', '울산시 남구 삼산로 404', '010-6666-5555', 'jo.wj@example.com'),
(9, '장혜수', '경기도 수원시 팔달구 효원로 505', '010-8888-7777', 'jang.hs@example.com'),
(10, '한승우', '강원도 춘천시 강원대학길 606', '010-0000-9999', 'han.sw@example.com'),
(11, '오채은', '충청북도 청주시 서원구 충대로 707', '010-1234-5678', 'oh.ce@example.com'),
(12, '김태형', '전라북도 전주시 덕진구 백제로 808', '010-9876-5432', 'kim.th@example.com');

-- 케이크
INSERT INTO Cakes (cake_id, cake_name, price) VALUES
	('001', 'Chocolate Cake', 35000),
	('002', 'Vanilla Cake', 32000),
	('003', 'Red Velvet Cake', 27000),
	('004', 'Lemon Cake', 24000),
	('005', 'Salted Caramel Cake', 28000),
	('006', 'Cheese Cake', 25000),
	('007', 'Matcha Cake', 28000),
	('008', 'Blueberry Cake', 33000),
	('009', 'Cherry Cake', 26500),
	('010', 'Peach Cake', 34500);

-- 지점
INSERT INTO Stores (store_id, store_name, manager_name, store_call, store_hour, address, store_rate)VALUES 
('HD001', '홍대1호점', '가나디', '02-390-2323', '10:00~21:00', '서울 마포구 와우산로 21',4.3),
('HD002', '홍대2호점', '나나디', '02-390-2333', '10:00~21:00', '서울 마포구 와우산로 29',3.9),
('US001', '울산1호점', '다나디', '02-126-2233', '10:00~21:00', '울산 남구 삼산로 56',4.3),
('US002', '울산2호점', '라나디', '02-390-4564', '10:00~21:00', '울산 남구 삼산로 90',4.3), 
('SG001', '서교동1호점', '마나디', '02-453-5423', '10:00~21:00', '서울 마포구 와우산로 21',4.3),
('SU001', '수원1호점', '바나디', '02-390-5657', '10:00~21:00', '경기 수원시 영통구 매영로 12',4.3), 
('JJ001', '전주1호점', '사나디', '02-453-6565', '10:00~21:00', '전북 전주시 완산구 기린대로 88',4.3), 
('IS002', '일산2호점', '아나디', '02-452-6765', '10:00~21:00', '경기 고양시 일산서구 중앙로 215',4.3), 
('DG001', '대구1호점', '자나디', '02-563-4566', '10:00~21:00', '대구 중구 동성로 34',4.3),
('DJ001', '대전1호점', '차나디', '02-452-5646', '10:00~21:00', '대전 서구 둔산로 45',4.3); 

-- 주문
INSERT INTO Orders (order_num, order_date, customer_id, cake_id, store_id, price) VALUES
(00001, '2025-01-01', 1, '001', 'HD001', 35000),
(00002, '2025-01-02', 2, '002', 'HD002', 32000),
(00003, '2025-01-03', 3, '003', 'US001', 27000),
(00004, '2025-01-04', 4, '004', 'US002', 24000),
(00005, '2025-01-05', 5, '005', 'US002', 28000),
(00006, '2025-01-06', 6, '006', 'HD002', 25000),
(00007, '2025-01-07', 7, '007', 'JJ001', 28000),
(00008, '2025-01-08', 8, '008', 'DG001', 33000),
(00009, '2025-01-09', 9, '009', 'DG001', 26500),
(00010, '2025-01-10', 10, '010', 'DJ001', 34500),
(00011, '2025-01-11', 3, '001', 'US001', 35000),
(00012, '2025-01-11', 3, '006', 'US001', 25000),
(00013, '2025-01-11', 3, '007', 'US001', 28000),
(00014, '2025-01-15', 10, '003', 'DJ001', 27000);

-- 리뷰
INSERT INTO Reviews (review_num, customer_id, review_rate, cake_id, order_num, store_id) VALUES
('00000001',1,5,'001',00001,'HD001'),
('00000002',2,4,'002',00002,'HD002'),
('00000003',3,3,'003',00003,'US001'),
('00000004',4,2,'004',00004,'US002'),
('00000005',5,1,'005',00005,'US002'),
('00000006',6,5,'006',00006,'HD002'),
('00000007',7,4,'007',00007,'JJ001'),
('00000008',8,3,'008',00008,'DG001'),
('00000009',9,2,'009',00009,'DG001'),
('00000010',10,1,'010',00010,'DJ001'),
('00000011',3,5,'001',00011,'US001'),
('00000012',3,4,'006',00012,'US001'),
('00000013',3,5,'007',00013,'US001');