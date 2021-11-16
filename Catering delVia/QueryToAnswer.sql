-- ISYS6169-Database Systems / BD01
-- Nama Anggota Kelompok :
-- 2301848294 - Jonathan
-- 2301897491 - Lucas Kalasuvic
-- 2301899162 - Hans Gilbert Riyanto
-- 2301935786 - Tio Novriadi Putra

CREATE DATABASE [Catering delVia]
USE [Catering delVia]

-- No. 1
SELECT St.StaffName, Sp.PositionName AS [StaffPositionName], COUNT(St.StaffID) + COUNT(Pr.StaffID) AS [Total Activity]
	FROM Staff St
	JOIN StaffPosition SP ON Sp.StaffPositionID = St.StaffPositionID
	JOIN Purchase Pr ON Pr.StaffID = St.StaffID
	JOIN ServicesTransaction ST ON St.StaffID = St.StaffID
	WHERE St.Salary  BETWEEN 1000000 AND 4000000
	GROUP BY St.StaffName, Sp.PositionName
	HAVING COUNT(Pr.StaffID)>2

-- No. 2
SELECT Stc.CustomerID, Cs.CustomerName, SUM(Stc.Pax) AS [Pax Bought]
	FROM Customer Cs
	JOIN ServicesTransaction Stc ON Stc.CustomerID = Cs.CustomerID
	JOIN TransactionDetail Td ON Td.TransactionID = Stc.TransactionID
	WHERE Cs.Gender = 'Male' AND DATEPART(MONTH, CAST(Td.TransactionDate AS VARCHAR(10)) ) <=6
	GROUP BY Stc.CustomerID, Cs.CustomerName

-- No. 3
SELECT Ig.IngredientName, SUM(Pr.QuantityIngredient) AS [Ingredient Bought], COUNT(Pr.PurchaseID) AS [Purchase Count],
Pr.QuantityIngredient * Ig.Price AS [Total Expenses]
	FROM Ingredient Ig
	JOIN Purchase Pr ON Pr.IngredientID = Ig.IngredientID
	WHERE DATEPART(MONTH, CAST(Pr.PurchaseDate AS VARCHAR(10)))%2=0 AND DATEPART(dw,Pr.PurchaseDate) BETWEEN 2 AND 5
	GROUP BY Ig.IngredientName, Pr.QuantityIngredient * Ig.Price
	ORDER BY Ig.IngredientName

-- No. 4
SELECT LEFT(St.StaffName, CHARINDEX(' ', St.StaffName)-1) AS StaffName, COUNT(Stc.TransactionID) AS [Transaction Count], 
SUM(Stc.Pax) AS [Pax Sold]
	FROM Staff St
	JOIN ServicesTransaction Stc ON St.StaffID = Stc.StaffID
	WHERE (St.StaffID LIKE ('%1') OR St.StaffID LIKE ('%3') OR St.StaffID LIKE ('%5')  OR St.StaffID LIKE ('%7') OR St.StaffID LIKE ('%9')) 
	AND (Stc.CustomerID LIKE ('%0') OR Stc.CustomerID LIKE ('%2') OR Stc.CustomerID LIKE ('%4') OR Stc.CustomerID LIKE ('%6') OR Stc.CustomerID LIKE ('%8'))
	GROUP BY St.StaffName

-- No. 5
SELECT REPLACE(Vd.VendorName, 'PT. ', '') AS [Vendor Name], Ig.IngredientName, 'Rp. ' + CAST(Ig.Price AS CHAR) AS [Ingredient Price]
	FROM Vendor Vd
	JOIN Purchase Pr ON Pr.VendorID = Vd.VendorID
	JOIN Ingredient Ig ON Ig.IngredientID = Pr.IngredientID
	WHERE Ig.Price >= (SELECT AVG(Ingredient.Price) FROM Ingredient)
	AND Ig.Stock < 250

-- No. 6
SELECT Cs.CustomerName, CONVERT(VARCHAR, Td.TransactionDate, 105) AS [TransactionDate], Mn.MenuName,
Mn.Price AS [MenuPrice], SUBSTRING(Mn.[Description], 0, CHARINDEX(',', Mn.[Description], CHARINDEX(' ', Mn.[Description], 0)+1)) AS [Brief Description],
Stc.Pax, Mn.Price * Stc.Pax AS [Total Price]
	FROM Customer Cs
	JOIN ServicesTransaction Stc ON Stc.CustomerID = Cs.CustomerID
	JOIN TransactionDetail Td ON Td.TransactionID = Stc.TransactionID
	JOIN Menu Mn ON Mn.MenuID = Stc.MenuID
	WHERE Mn.Price > (SELECT AVG(Mn.Price) FROM Menu Mn)
	AND Stc.Pax > 100

-- No. 7
SELECT UPPER(St.StaffName) AS [StaffName], CONVERT(VARCHAR, Pr.PurchaseDate, 105) AS [Purchase Date],
CAST(SUM(Pr.QuantityIngredient) AS VARCHAR) + 'pcs' AS [Quantity Bought]
	FROM Staff St
	JOIN Purchase Pr ON Pr.StaffID = St.StaffID
	JOIN Ingredient Ig ON Ig.IngredientID = Pr.IngredientID
	WHERE DATEPART(MONTH, CAST(Pr.PurchaseDate AS VARCHAR(10))) %2 = 0
	AND Ig.Price < (SELECT MAX(Price) FROM Ingredient)
	GROUP BY StaffName, PurchaseDate

-- No. 8
SELECT Cs.CustomerID, SUBSTRING(Cs.Email, 0, CHARINDEX('@', Cs.Email)) AS [Email], LOWER(Mn.MenuName) AS [MenuName],
SUM(Stc.Pax) AS [Pax Bought]
	FROM Customer Cs
	JOIN ServicesTranscation Stc ON Stc.CustomerID = Cs.CustomerID
	JOIN Menu Mn ON Mn.MenuID = Stc.MenuID
	WHERE Cs.Gender = 'Male' AND Stc.Pax >= (SELECT AVG(Pax) FROM ServicesTransaction)
	GROUP BY Cs.CustomerID, Cs.Email, Mn.MenuName

-- No. 9
CREATE VIEW LoyalCustomerView AS SELECT CustomerName, COUNT(Stc.CustomerID) AS [Total Transcation], SUM(Pax) AS [Total Pax Purchase],
SUM(Pax * Price) AS [Total Price]
	FROM Customer Cs
	JOIN ServicesTransaction Stc ON Stc.CustomerID = Cs.CustomerID
	JOIN Menu Mn ON Mn.MenuID = Stc.MenuID
	WHERE Cs.Gender = 'Female'
	GROUP BY CustomerName
	HAVING COUNT(Stc.CustomerID) > 2

SELECT * FROM LoyalCustomerView

-- No. 10
CREATE VIEW VendorRecapView AS SELECT Vd.VendorName, COUNT(Vd.VendorID) AS [Purchase Made], SUM(Pr.QuantityIngredient) AS [Ingredient Purchase]
	FROM Vendor Vd
	JOIN Purchase Pr ON Pr.VendorID = Vd.VendorID
	JOIN Ingredient Ig ON Ig.IngredientID = Pr.IngredientID
	WHERE Ig.Stock > 150
	GROUP BY Vd.VendorName
	HAVING COUNT(Pr.VendorID) > 1

SELECT * FROM VendorRecapView


