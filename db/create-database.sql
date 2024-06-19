IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'TestDB')

BEGIN
    CREATE DATABASE [TestDB]
END
GO

USE [TestDB]
GO

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('orders'))
BEGIN;
    DROP TABLE [orders];
END;
GO

CREATE TABLE [orders] (
    [orderid] INTEGER NULL,
    [customerid] INTEGER NULL,
    [date] DATETIME
);
GO

INSERT INTO [orders] (orderid,customerid,date)
VALUES
    (10248,3,'1996-07-04'),
    (10249,1,'1996-07-05'),
    (10253,2,'1996-07-10'),
    (10274,3,'1996-08-06'),
    (10275,4,'1996-08-07'),
    (10296,5,'1996-09-03');
  

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('orders_details'))
BEGIN;
    DROP TABLE [orders_details];
END;
GO

CREATE TABLE [orders_details] (
    [orderid] INTEGER NULL,
    [productid] INTEGER NULL,
    [unitprice] INTEGER NULL,
    [quantity] INTEGER NULL
);
GO

INSERT INTO [orders_details] (orderid,productid,unitprice,quantity)
VALUES
    (10248,11,14,12),
    (10248,42,9,10),
    (10248,72,34,5),
    (10249,14,18,9),
    (10249,51,42,40),
    (10253,31,10,20),
    (10253,39,14,42),
    (10253,49,16,40),
    (10274,71,17,20),
    (10274,72,27,7),
    (10275,24,3,12),
    (10275,59,44,6),
    (10296,11,16,12),
    (10296,16,13,30),
    (10296,69,28,15);
    