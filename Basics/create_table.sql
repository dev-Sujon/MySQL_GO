---- Create Buyers Table first
create table Buyers(
     BuyerID INT IDENTITY PRIMARY KEY,
	 BuyerName VARCHAR(100) UNIQUE NOT NULL
);

----- Create Brands table
create table Brands(
	BrandID INT IDENTITY PRIMARY KEY,
	BrandName VARCHAR(100) UNIQUE NOT NULL
);

------ Create Styles Table
CREATE TABLE Styles (
    StyleCode VARCHAR(50) PRIMARY KEY,
    StyleName VARCHAR(100),
    Season VARCHAR(50)
);


--- Create Brand wise Contribution Table
CREATE TABLE BrandwiseContribution (
    ID INT IDENTITY PRIMARY KEY,
    BuyerID INT FOREIGN KEY REFERENCES Buyers(BuyerID),
    BrandID INT FOREIGN KEY REFERENCES Brands(BrandID),
    OrderQty FLOAT,
    AvgFOB FLOAT,
    TotalFOB FLOAT,
    OrderPercent FLOAT,
    AvgCM FLOAT,
    TotalCM FLOAT,
    CMPercent FLOAT
);

---- create DateWiseBuyerDistribution Table

CREATE TABLE DatewiseBuyerContribution (
    ID INT IDENTITY PRIMARY KEY,
    BuyerID INT FOREIGN KEY REFERENCES Buyers(BuyerID),
    OrderPercent FLOAT,
    OrderQty BIGINT,
    NoOfStyle INT,
    TotalFOB FLOAT,
    AvgFOB FLOAT,
    TotalCM FLOAT,
    AvgCM FLOAT,
    CMPercent FLOAT
);


------- create CostingMISReport table

CREATE TABLE CostingMISReport (
    ID INT IDENTITY PRIMARY KEY,
    BuyerID INT FOREIGN KEY REFERENCES Buyers(BuyerID),
    SC_LC_No VARCHAR(100),
    StyleCode VARCHAR(50) FOREIGN KEY REFERENCES Styles(StyleCode),
    PcsPerSet INT,
    OrderQty FLOAT,
    FOB FLOAT,
    CM FLOAT,
    CMPercent VARCHAR(10)
);
