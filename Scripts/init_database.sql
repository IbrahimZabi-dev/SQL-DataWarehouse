
-- create a Database 'WareHouse'

Use Master;
GO

if exists (select 1 from sys.databases where name = 'DataWarehouse')
begin
	Alter Database DataWarehouse Set Single_User with Rollback immediate;
	Drop Database DataWarehouse ;
END;
GO


-- create a Database 'WareHouse'
create database DataWarehouse;

use DataWarehouse;
go

-- Creating Schema
create schema bronze;
go
create schema silver;
go
create schema gold;
