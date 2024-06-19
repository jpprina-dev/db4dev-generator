IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'TestDB')

BEGIN
    CREATE DATABASE [TestDB]
END
GO

USE [TestDB]
GO

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('myTable'))
BEGIN;
    DROP TABLE [myTable];
END;
GO

CREATE TABLE [myTable] (
[myTableID] INTEGER NOT NULL IDENTITY(1, 1),
[names] VARCHAR(255) NULL,
[birthdate] VARCHAR(255) NULL,
[email] VARCHAR(255) NULL,
PRIMARY KEY ([myTableID])
)

INSERT INTO [myTable] (names,birthdate,email)
VALUES
  ('Dominic Mckenzie','Feb 22, 2025','Tampines'),
  ('Rhiannon Duran','Sep 24, 2023','Cartagena'),
  ('Dennis England','Jan 13, 2024','Cork'),
  ('Keaton Bartlett','May 7, 2024','Campbelltown'),
  ('Joelle Thornton','Sep 18, 2024','Tanjung Pinang'),
  ('Rama Burns','May 5, 2024','Tuas'),
  ('Risa Knight','Jan 16, 2025','Shangla'),
  ('Nyssa Miranda','Jun 16, 2025','Carbonear'),
  ('Adam Parks','Jul 13, 2023','Mount Isa'),
  ('Hadassah Cervantes','Jul 16, 2023','Palmerston');
