-- Insert into Buyers table
INSERT INTO Buyers (BuyerName) VALUES
('COLONY BRANDS, INC'),
('Colony Brands, INC'),
('DK Company'),
('H&M'),
('Primark'),
('EL CORTE INGLES'),
('Bestseller'),
('NEXT');

-- Insert into Brands table
INSERT INTO Brands (BrandName) VALUES
('Solid'),
('CULTURE'),
('Part Two'),
('Pepe Jeans'),
('Vogue sourcing ltd'),
('Bestseller'),
('Haggar'),
('Sfera Mens'),
('Easy Wear Mens'),
('Easy Wear Ladies'),
('Woman'),
('Green Coast'),
('CIA Hering'),
('PIECES');

-- Insert into Styles table
INSERT INTO Styles (StyleCode, StyleName, Season) VALUES
('17154372', 'PCSALMINA 2/4 TOP WVN', 'COL 4 SPRING 2025'),
('1257590', 'BERT SLIM CA STRETCH SHIRT', '2-2025'),
('N38774', 'KAFTAN DRESS', NULL),
('Q78616', 'KAFTAN DRESS', 'SS24');

-- Insert into BrandwiseContribution
INSERT INTO BrandwiseContribution (BuyerID, BrandID, OrderQty, AvgFOB, TotalFOB, OrderPercent, AvgCM, TotalCM, CMPercent) VALUES
(1, NULL, 6870.00, 16.67, 114523.20, 0.17, 5.02, 34462.80, 30.09),
(2, NULL, 4693.00, 15.94, 74809.15, 0.11, 4.22, 19818.60, 26.49),
(3, 1, 1200.00, 11.47, 13764.00, 0.02, 3.09, 3708.00, 26.94);

-- Insert into DatewiseBuyerContribution
INSERT INTO DatewiseBuyerContribution (BuyerID, OrderPercent, OrderQty, NoOfStyle, TotalFOB, AvgFOB, TotalCM, AvgCM, CMPercent) VALUES
(4, 46.94, 8622613, 111, 32336929.31, 3.75, 9807834.03, 1.14, 30.33),
(5, 19.98, 3220167, 23, 13765053.86, 4.27, 3727178.97, 1.16, 27.22);

-- Insert into CostingMISReport
INSERT INTO CostingMISReport (BuyerID, SC_LC_No, StyleCode, PcsPerSet, OrderQty, FOB, CM, CMPercent) VALUES
(7, 'Bestseller PIECES/ 2', '17154372', 1, 4719.00, 6.41, 1.78, '27.79%'),
(4, 'MGSL/H&M-Mens DBL-S.0', '1257590', 1, 12201.00, 4.34, 1.25, '28.80%'),
(4, 'MGSL/H&M-Mens DBL-S.02', '1257590', 1, 240014.00, 4.34, 1.25, '28.80%');