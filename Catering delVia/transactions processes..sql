--2301899162 - Hans gilbert riyanto
--2301897491 - Lucas Kalasuvich
--2301848294 - JONATHAN
--2301935786 - Tio novriadi putra

--Pertama, Customer melakukan order pesanan Catering kepada Pemilik Catering atau Owner dari Catering delVia.
--Kedua, Customer memesan order catering pada tanggal tertentu.
--Ketiga, pemilik Catering atau owner menerima pesanan si customer.
--Keempat, owner akan mencatat informasi detail untuk order catering dari Customer. Data detail yang diminta berupa Nama, No.Tlp, Address, Gender, Email kedalam tabel Customer.
INSERT INTO Customer
VALUES	('Ariel Noah' , '08178634582' , 'Jl. Lebak Bulus' , 'ArielNoah@gmail.com' , 'CU001')
--Kelima, Setelah pesanan dicatat, menghasilan dokumen catatan order Customer.
--Keenam, Kemudian Owner dan Customer akan membuat kesepakatan mengenai pemesanan terdiri dari tanggal transaksi, tanggal reservasi,tipe reservasi, alamat reservasi kedalam tabel Detail_Transaction dan memilih menu pesanan kedalam tabel menu dan owner mencatat menu pesanan yang sudah di pesan oleh customer seperti menu sold (menu yang terjual) dan paxnya kedalam tabel Services_Transaction.
INSERT INTO Detail_Transaction
VALUES	('TR001' , '2021-02-02' , '2021-02-19' , 'ULTAH' , 'Hotel Indonesia')

INSERT INTO Menu
VALUES	('Menu 6' , 'Gado-gado' , 14000 , 'ME006')

INSERT INTO Services_Transaction
VALUES	('ST001' , 'CU001' , 'TR003' , 'ME006' , 20)

--Setelah melakukan transaksi dan data detailnya sudah tercatat. Pesanan catering dari Catering delVia yang sudah di pesan oleh customer akan dikirimkan sesuai datanya. 
