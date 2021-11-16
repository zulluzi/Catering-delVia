--2301899162 - Hans gilbert riyanto
--2301897491 - Lucas Kalasuvich
--2301848294 - JONATHAN
--2301935786 - Tio novriadi putra

CREATE DATABASE [Catering delVia]
USE [Catering delVia]

--Staff Position
INSERT INTO Staff_Position
VALUES	('SP001' , 'CEO'),
		('SP002' , 'Secretary'),
		('SP003' , 'Treasurer'),
		('SP004' , 'Marketing'),
		('SP005' , 'Head Chef'),
		('SP006' , 'Inventory Manager'),
		('SP007' , 'Supervisor'),
		('SP008' , 'Chef'),
		('SP009' , 'Cashier'),
		('SP010' , 'Promotion')

--Staff
INSERT INTO Staff
VALUES	('Nazriel' , 'Male' , 'Nazriel@gmail.com' , '08172312321' , 'Jl.Lebak Bulus' , 5000000 , 'ST001' , 'SP001'),
		('Irham' , 'Male' , 'Irham@gmail.com' , '08123123436' , 'Jl.Ciputat' , 4000000 , 'ST002' , 'SP002'),
		('Ahmad' , 'Male' , 'Ahmad@gmail.com' , '08123176769' , 'Jl.Bintaro' , 4500000 , 'ST003' , 'SP003'),
		('Dhani' , 'Male' , 'Dhani@gmail.com' , '08123198987' , 'Jl.Pondok Indah' , 3000000 , 'ST004' , 'SP004'),
		('Ari' , 'Male' , 'Ari@gmail.com' , '08123098764' , 'Jl.Pamulang' , 2000000 , 'ST005' , 'SP005'),
		('Lasso' , 'Male' , 'Lasso@gmail.com' , '08195436792' , 'Jl.Sudirman' , 2500000 , 'ST006' , 'SP006'),
		('Ernie' , 'Female' , 'Ernie@gmail.com' , '08589736321' , 'Jl.Kemanggisan' , 3500000 , 'ST007' , 'SP007'),
		('Djohan' , 'Female' , 'Djohan@gmail.com' , '08986785646' , 'Jl.Anggrek' , 5500000 , 'ST008' , 'SP008'),
		('Armand' , 'Male' , 'Armand@gmail.com' , '08149857637' , 'Jl.Jombang' , 1000000 , 'ST009' , 'SP009'),
		('Maulana' , 'Male' , 'Maulana@gmail.com' , '08123123964' , 'Jl.Cibubur' , 1500000 , 'ST010' , 'SP010')

--Purchase
INSERT INTO Purchase
VALUES	('PU001' , 'ST001' , 'VE001' , '2021-02-01' , 'ID001' , 100),
		('PU002' , 'ST002' , 'VE002' , '2021-02-02' , 'ID002' , 150),
		('PU003' , 'ST003' , 'VE003' , '2021-02-03' , 'ID003' , 160),
		('PU004' , 'ST004' , 'VE004' , '2021-02-04' , 'ID004' , 170),
		('PU005' , 'ST005' , 'VE005' , '2021-02-05' , 'ID005' , 180),
		('PU006' , 'ST006' , 'VE006' , '2021-02-06' , 'ID006' , 190),
		('PU007' , 'ST007' , 'VE007' , '2021-02-07' , 'ID007' , 200),
		('PU008' , 'ST008' , 'VE008' , '2021-02-08' , 'ID008' , 140),
		('PU009' , 'ST009' , 'VE009' , '2021-02-09' , 'ID009' , 130),
		('PU010' , 'ST010' , 'VE010' , '2021-02-10' , 'ID010' , 120),
		('PU011' , 'ST011' , 'VE011' , '2021-02-11' , 'ID011' , 110),
		('PU012' , 'ST012' , 'VE012' , '2021-02-12' , 'ID012' , 90),
		('PU013' , 'ST013' , 'VE013' , '2021-02-13' , 'ID013' , 80),
		('PU014' , 'ST014' , 'VE014' , '2021-02-14' , 'ID014' , 70),
		('PU015' , 'ST015' , 'VE015' , '2021-02-15' , 'ID015' , 60)

--Ingredients
INSERT INTO Ingredients
VALUES	('ID001' , 'Milk' , 100 , 55000),
		('ID002' , 'Biskuit' , 200 , 45000),
		('ID003' , 'Waffer' , 150 , 35000),
		('ID004' , 'Orange' , 140 , 25000),
		('ID005' , 'Purple' , 130 , 15000),
		('ID006' , 'Yoghurt' , 120 , 60000),
		('ID007' , 'Shampoo' , 110 , 65000),
		('ID008' , 'Juice Mango' , 160 , 56000),
		('ID009' , 'Mango' , 170 , 57000),
		('ID010' , 'Egg' , 180 , 58000),
		('ID011' , 'Banana' , 190 , 59000)

--Vendor
INSERT INTO Vendor
VALUES	('VE001' , 'PT. Milk Indonesia' , '08178653891' , 'Jl. Pasar Rebo'),
		('VE002' , 'PT. Biskuit Indonesia' , '08178653892' , 'Jl. Pasar Senen'),
		('VE003' , 'PT. Waffer Indonesia' , '08178653893' , 'Jl. Pasar Minggu'),
		('VE004' , 'PT. Fruit Indonesia' , '08178653894' , 'Jl. Pasar Jumat'),
		('VE005' , 'PT. Fruit Jaya' , '08178653895' , 'Jl. Kampung Rambutan'),
		('VE006' , 'PT. Yoghurt Indonesia' , '08178653896' , 'Jl. Pondok Kacang'),
		('VE007' , 'PT. Shampoo Indonesia' , '08178653897' , 'Jl. Pondok Ranji'),
		('VE008' , 'PT. Juice Indonesia' , '08178653898' , 'Jl. Pondok Gede'),
		('VE009' , 'PT. Buah' , '08178653899' , 'Jl. Kebayoran Lama'),
		('VE010' , 'PT. Egg Indonesia' , '08178653810' , 'Jl. Gandaria'),
		('VE011' , 'PT. Buah Indonesia' , '08178653811' , 'Jl. Jambu')

--Customer
INSERT INTO Customer
VALUES	('Bunga' , '08189466374' , 'Jl. Villa Mutiara 1' , 'Female' , 'Bunga@gmail.com' , 'CU001'),
		('Citra' , '08189466375' , 'Jl. Villa Mutiara 2' , 'Female' , 'Citra@gmail.com' , 'CU002'),
		('Lestari' , '08189466376' , 'Jl. Villa Mutiara 3' , 'Female' , 'Lestari@gmail.com' , 'CU003'),
		('Rossa' , '08189466377' , 'Jl. Villa Mutiara 4' , 'Female' , 'Rossa@gmail.com' , 'CU004'),
		('Padi' , '08189466378' , 'Jl. Villa Mutiara 5' , 'Male' , 'Padi@gmail.com' , 'CU005'),
		('Lukman' , '08189466379' , 'Jl. Villa Mutiara 6' , 'Male' , 'Lukman@gmail.com' , 'CU006'),
		('David' , '08189466310' , 'Jl. Villa Mutiara 7' , 'Male' , 'David@gmail.com' , 'CU007'),
		('Noah' , '08189466311' , 'Jl. Villa Mutiara 8' , 'Male' , 'Noah@gmail.com' , 'CU008'),
		('Peterpan' , '08189466312' , 'Jl. Villa Mutiara 9' , 'Male' , 'Peterpan@gmail.com' , 'CU009'),
		('Dewa' , '08189466313' , 'Jl. Villa Mutiara 10' , 'Male' , 'Dewa@gmail.com' , 'CU010'),
		('Slank' , '08189466314' , 'Jl. Villa Mutiara 11' , 'Male' , 'Slank@gmail.com' , 'CU011'),
		('Nidji' , '08189466315' , 'Jl. Villa Mutiara 12' , 'Male' , 'Nidji@gmail.com' , 'CU012'),
		('Siti Nurbaya' , '08189466316' , 'Jl. Villa Mutiara 13' , 'Female' , 'SitiNurbaya@gmail.com' , 'CU013'),
		('Dara' , '08189466317' , 'Jl. Villa Mutiara 14' , 'Female' , 'Dara@gmail.com' , 'CU014'),
		('Geisha' , '08189466318' , 'Jl. Villa Mutiara 15' , 'Female' , 'Geisha@gmail.com' , 'CU015')

--DetailTransaction
INSERT INTO Detail_Transaction
VAlUES	('TR001' , '2021-07-01' , '2021-08-01' , 'Retoran' , 'Jl. Simatupang'),
		('TR002' , '2021-07-02' , '2021-08-02' , 'Retoran' , 'Jl. Gajah Mada'),
		('TR003' , '2021-07-03' , '2021-08-03' , 'Retoran' , 'Jl. Bundaran HI'),
		('TR004' , '2021-07-04' , '2021-08-04' , 'Retoran' , 'Hotel Arya Duta'),
		('TR005' , '2021-07-05' , '2021-08-05' , 'ULTAH' , 'SMA DUAMEI'),
		('TR006' , '2021-07-06' , '2021-08-06' , 'ULTAH' , 'SMA 3 TANGSEL'),
		('TR007' , '2021-07-07' , '2021-08-07' , 'ULTAH' , 'SMA 6 TANGSEL'),
		('TR008' , '2021-07-08' , '2021-08-08' , 'ULTAH' , 'SMA 2 TANGSEL'),
		('TR009' , '2021-07-09' , '2021-08-09' , 'Retoran' , 'Hotel Mercure'),
		('TR010' , '2021-07-10' , '2021-08-10' , 'Retoran' , 'Hotel Mercure Bandung'),
		('TR011' , '2021-07-11' , '2021-08-11' , 'Retoran' , 'Hotel Mercure Tangerang'),
		('TR012' , '2021-07-12' , '2021-08-12' , 'Retoran' , 'Hotel Mercure Jakarta'),
		('TR013' , '2021-07-13' , '2021-08-13' , 'Perguruan Tinggi' , 'Universitas Indonesia'),
		('TR014' , '2021-07-14' , '2021-08-14' , 'Perguruan Tinggi' , 'Universitas Bina Nusantara'),
		('TR015' , '2021-07-15' , '2021-08-15' , 'Perguruan Tinggi' , 'Universitas ITB'),
		('TR016' , '2021-07-16' , '2021-08-16' , 'Perguruan Tinggi' , 'Universitas IPB'),
		('TR017' , '2021-07-17' , '2021-08-17' , 'Perguruan Tinggi' , 'Universitas ITS'),
		('TR018' , '2021-07-18' , '2021-08-18' , 'Retoran' , 'Hotel Ibis'),
		('TR019' , '2021-07-19' , '2021-08-19' , 'Retoran' , 'Hotel Indonesia'),
		('TR020' , '2021-07-20' , '2021-08-20' , 'Retoran' , 'Hotel Garuda Bandung'),
		('TR021' , '2021-07-21' , '2021-08-21' , 'Retoran' , 'Hotel Mercure Batam'),
		('TR022' , '2021-07-22' , '2021-08-22' , 'Retoran' , 'Hotel Mercure Bali'),
		('TR023' , '2021-07-23' , '2021-08-23' , 'ULTAH' , 'SMA 2 JAKSEL'),
		('TR024' , '2021-07-24' , '2021-08-24' , 'ULTAH' , 'SMA 74 JAKSEL'),
		('TR025' , '2021-07-25' , '2021-08-25' , 'ULTAH' , 'SMA 1 TANGSEL')

--ServicesTransaction
INSERT INTO Services_Transaction
VALUES	('ST001' , 'CU001' , 'TR001' , 'ME001', 250),
		('ST002' , 'CU002' , 'TR002' , 'ME002', 240),
		('ST003' , 'CU003' , 'TR001' , 'ME001', 230),
		('ST004' , 'CU004' , 'TR003' , 'ME003', 220),
		('ST005' , 'CU005' , 'TR001' , 'ME002', 210),
		('ST006' , 'CU006' , 'TR003' , 'ME004', 200),
		('ST007' , 'CU007' , 'TR004' , 'ME005', 190),
		('ST008' , 'CU008' , 'TR005' , 'ME004', 180),
		('ST009' , 'CU009' , 'TR010' , 'ME005', 170),
		('ST010' , 'CU010' , 'TR004' , 'ME006', 160),
		('ST011' , 'CU011' , 'TR007' , 'ME008', 150),
		('ST012' , 'CU012' , 'TR008' , 'ME009', 140),
		('ST013' , 'CU013' , 'TR009' , 'ME003', 130),
		('ST014' , 'CU014' , 'TR005' , 'ME004', 120),
		('ST015' , 'CU015' , 'TR0010' , 'ME011', 110),
		('ST016' , 'CU016' , 'TR0011' , 'ME010', 100),
		('ST017' , 'CU017' , 'TR0013' , 'ME008', 90),
		('ST018' , 'CU018' , 'TR001' , 'ME0016', 80),
		('ST019' , 'CU019' , 'TR001' , 'ME0017', 70),
		('ST020' , 'CU020' , 'TR001' , 'ME0018', 60),
		('ST021' , 'CU021' , 'TR005' , 'ME003', 50),
		('ST022' , 'CU022' , 'TR007' , 'ME017', 40),
		('ST023' , 'CU023' , 'TR002' , 'ME008', 30),
		('ST024' , 'CU024' , 'TR004' , 'ME009', 20),
		('ST025' , 'CU025' , 'TR003' , 'ME002', 10)

--Menu
INSERT INTO Menu
VALUES	('Menu 1' , 'Orange Juice' , 18000 , 'ME001'),
		('Menu 2' , 'Chiken' , 28000 , 'ME002'),
		('Menu 3' , 'Burger' , 18000 , 'ME003'),
		('Menu 4' , 'Nasi Goreng' , 18000 , 'ME004'),
		('Menu 5' , 'Pecel' , 15000 , 'ME005'),
		('Menu 6' , 'Gado-Gado' , 14000 , 'ME006'),
		('Menu 7' , 'Kredok' , 14000 , 'ME007'),
		('Menu 8' , 'Sop Iga' , 25000 , 'ME008'),
		('Menu 9' , 'Steak' , 40000 , 'ME009'),
		('Menu 10' , 'Ketang Goreng' , 20000 , 'ME010')