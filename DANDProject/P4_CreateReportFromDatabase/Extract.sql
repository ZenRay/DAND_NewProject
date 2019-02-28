-- 查询客户基本信息
-- 客户的国家信息统计
SELECT Country, COUNT(*) AS Amount
  FROM Customers
  GROUP BY 1
  ORDER BY 2 DESC;

-- 客户所属城市与国家情况
SELECT Country, City, COUNT(*) Amount
  FROM Customers
    GROUP BY 1, 2
	HAVING COUNT(*) > 1
	ORDER BY 1;

-- 客户的订单信息分析
WITH CustomerOrders AS ( SELECT o.OrderId OrderId, o.CustomerID CustomerID,
  o.OrderDate OrderDate, o.ShippedDate ShippedDate, o.RequiredDate RequiredDate,
  o.Freight Freight, O.ShipCountry ShipCountry, c.CompanyName CompanyName, 
  c.City CustomerCity, c.Country CustomerCountry
    FROM Orders o
    LEFT JOIN Customers c
      ON o.CustomerID = c.CustomerID)

SELECT CustomerID, CustomerCountry, CustomerCity, COUNT(*) Amount 
  FROM CustomerOrders
    GROUP BY 1
    ORDER BY 2;

-- 分析客户第一笔订单的日期
SELECT CustomerID, OrderId, 
    MIN(OrderDate) Date, strftime('%Y', MIN(OrderDate)) Year 
  FROM Orders
    GROUP BY CustomerID 
    ORDER BY CustomerID;

-- 客户的订单产品信息分析

--订单的实际价值分布
WITH CustomerOrders AS ( SELECT o.OrderId OrderId, o.CustomerID CustomerID,
  o.OrderDate OrderDate, o.ShippedDate ShippedDate, o.RequiredDate RequiredDate,
  o.ShipCity ShipCity, o.ShipCountry ShipCountry, o.Freight Freight,
  c.CompanyName CompanyName, c.City CustomerCity, c.Country CustomerCountry
    FROM Orders o
      LEFT JOIN Customers c
    ON o.CustomerID = c.CustomerID
    ),

  OrderProducts AS (SELECT o.OrderId OrderId, o.ProductID ProductID,
  o.UnitPrice SaleUnitPrice, o.Quantity Quantity, o.Discount Discount,
  p.CategoryID CategoryID, p.UnitPrice OriginUnitPrice
    FROM OrderDetails o
      LEFT JOIN Products p
    ON o.ProductID = p.ProductID
    ),

  OrderProductDetail AS (SELECT o.OrderId OrderId, o.ProductID ProductID,
  o.SaleUnitPrice SaleUnitPrice, o.Quantity Quantity, o.Discount Discount,
  o.CategoryID CategoryID, o.OriginUnitPrice OriginUnitPrice, 
  c.CategoryName CategoryName
    FROM OrderProducts o
      LEFT JOIN Categories c
    ON o.CategoryID = c.CategoryID
  ),

  AllInfor AS (SELECT o.OrderId OrderId, o.CustomerID CustomerID,
  o.OrderDate OrderDate, o.ShippedDate ShippedDate, o.RequiredDate RequiredDate,
  o.ShipCity ShipCity, o.ShipCountry ShipCountry, o.Freight Freight,
  o.CompanyName CompanyName, o.CustomerCity CustomerCity, o.CustomerCountry CustomerCountry,
  c.ProductID ProductID, c.SaleUnitPrice OrderUnitPrice,c.Quantity OrderQuantity, 
  c.Discount Discount, c.CategoryID CategoryID,
  c.OriginUnitPrice OriginUnitPrice, c.CategoryName CategoryName
    FROM CustomerOrders o
      LEFT JOIN OrderProductDetail c
    ON o.OrderId = c.OrderID
)

SELECT OrderID, MAX(Total) Total
  FROM (SELECT OrderId,SUM(OrderUnitPrice * OrderQuantity) 
     OVER (PARTITION BY OrderID ORDER BY OrderUnitPrice * OrderQuantity) AS Total
    FROM AllInfor)
  GROUP BY OrderID;


-- 订单城市和收货城市不相同
WITH CustomerOrders AS ( SELECT o.OrderId OrderId, o.CustomerID CustomerID,
  o.OrderDate OrderDate, o.ShippedDate ShippedDate, o.RequiredDate RequiredDate,
  o.ShipCity ShipCity, o.ShipCountry ShipCountry, o.Freight Freight,
  c.CompanyName CompanyName, c.City CustomerCity, c.Country CustomerCountry
    FROM Orders o
      LEFT JOIN Customers c
    ON o.CustomerID = c.CustomerID
    ),

  OrderProducts AS (SELECT o.OrderId OrderId, o.ProductID ProductID,
  o.UnitPrice SaleUnitPrice, o.Quantity Quantity, o.Discount Discount,
  p.CategoryID CategoryID, p.UnitPrice OriginUnitPrice
    FROM OrderDetails o
      LEFT JOIN Products p
    ON o.ProductID = p.ProductID
    ),

  OrderProductDetail AS (SELECT o.OrderId OrderId, o.ProductID ProductID,
  o.SaleUnitPrice SaleUnitPrice, o.Quantity Quantity, o.Discount Discount,
  o.CategoryID CategoryID, o.OriginUnitPrice OriginUnitPrice, 
  c.CategoryName CategoryName
    FROM OrderProducts o
      LEFT JOIN Categories c
    ON o.CategoryID = c.CategoryID
  ),

  AllInfor AS (SELECT o.OrderId OrderId, o.CustomerID CustomerID,
  o.OrderDate OrderDate, o.ShippedDate ShippedDate, o.RequiredDate RequiredDate,
  o.ShipCity ShipCity, o.ShipCountry ShipCountry, o.Freight Freight,
  o.CompanyName CompanyName, o.CustomerCity CustomerCity, o.CustomerCountry CustomerCountry,
  c.ProductID ProductID, c.SaleUnitPrice OrderUnitPrice,c.Quantity OrderQuantity, 
  c.Discount Discount, c.CategoryID CategoryID,
  c.OriginUnitPrice OriginUnitPrice, c.CategoryName CategoryName
    FROM CustomerOrders o
      LEFT JOIN OrderProductDetail c
    ON o.OrderId = c.OrderID
)

SELECT DISTINCT CompanyName
  FROM AllInfor
  WHERE CustomerCity != ShipCity;

-- 销售量变化类别
WITH CustomerOrders AS ( SELECT o.OrderId OrderId, o.CustomerID CustomerID,
  o.OrderDate OrderDate, o.ShippedDate ShippedDate, o.RequiredDate RequiredDate,
  o.ShipCity ShipCity, o.ShipCountry ShipCountry, o.Freight Freight,
  c.CompanyName CompanyName, c.City CustomerCity, c.Country CustomerCountry
    FROM Orders o
      LEFT JOIN Customers c
    ON o.CustomerID = c.CustomerID
    ),

  OrderProducts AS (SELECT o.OrderId OrderId, o.ProductID ProductID,
  o.UnitPrice SaleUnitPrice, o.Quantity Quantity, o.Discount Discount,
  p.CategoryID CategoryID, p.UnitPrice OriginUnitPrice
    FROM OrderDetails o
      LEFT JOIN Products p
    ON o.ProductID = p.ProductID
    ),

  OrderProductDetail AS (SELECT o.OrderId OrderId, o.ProductID ProductID,
  o.SaleUnitPrice SaleUnitPrice, o.Quantity Quantity, o.Discount Discount,
  o.CategoryID CategoryID, o.OriginUnitPrice OriginUnitPrice, 
  c.CategoryName CategoryName
    FROM OrderProducts o
      LEFT JOIN Categories c
    ON o.CategoryID = c.CategoryID
  ),

  AllInfor AS (SELECT o.OrderId OrderId, o.CustomerID CustomerID,
  o.OrderDate OrderDate, o.ShippedDate ShippedDate, o.RequiredDate RequiredDate,
  o.ShipCity ShipCity, o.ShipCountry ShipCountry, o.Freight Freight,
  o.CompanyName CompanyName, o.CustomerCity CustomerCity, o.CustomerCountry CustomerCountry,
  c.ProductID ProductID, c.SaleUnitPrice OrderUnitPrice,c.Quantity OrderQuantity, 
  c.Discount Discount, c.CategoryID CategoryID,
  c.OriginUnitPrice OriginUnitPrice, c.CategoryName CategoryName
    FROM CustomerOrders o
      LEFT JOIN OrderProductDetail c
    ON o.OrderId = c.OrderID
)

SELECT CategoryName, Date, MAX(Total) Total
  FROM (SELECT OrderID, CategoryName, strftime("%Y-1-01", OrderDate) Date, 
      SUM(OrderUnitPrice * OrderQuantity) OVER (PARTITION BY CategoryName, 
          strftime("%Y-01-01", OrderDate) ORDER BY
          OrderUnitPrice * OrderQuantity) AS Total
      FROM AllInfor) Sub
  GROUP BY CategoryName, Date


-- 销售物品中供货量最大供应商
WITH CustomerOrders AS ( SELECT o.OrderId OrderId, o.CustomerID CustomerID,
  o.OrderDate OrderDate, o.ShippedDate ShippedDate, o.RequiredDate RequiredDate,
  o.ShipCity ShipCity, o.ShipCountry ShipCountry, o.Freight Freight,
  c.CompanyName CompanyName, c.City CustomerCity, c.Country CustomerCountry
    FROM Orders o
      LEFT JOIN Customers c
    ON o.CustomerID = c.CustomerID
    ),

  OrderProducts AS (SELECT o.OrderId OrderId, o.ProductID ProductID,
  o.UnitPrice SaleUnitPrice, o.Quantity Quantity, o.Discount Discount,
  p.CategoryID CategoryID, p.UnitPrice OriginUnitPrice, p.SupplierID SupplierID
    FROM OrderDetails o
      LEFT JOIN Products p
    ON o.ProductID = p.ProductID
    ),

  OrderProductDetail AS (SELECT o.OrderId OrderId, o.ProductID ProductID,
  o.SaleUnitPrice SaleUnitPrice, o.Quantity Quantity, o.Discount Discount,
  o.CategoryID CategoryID, o.OriginUnitPrice OriginUnitPrice, o.SupplierID SupplierID,
  c.CategoryName CategoryName
    FROM OrderProducts o
      LEFT JOIN Categories c
    ON o.CategoryID = c.CategoryID
  ),

  AllInfor AS (SELECT o.OrderId OrderId, o.CustomerID CustomerID,
  o.OrderDate OrderDate, o.ShippedDate ShippedDate, o.RequiredDate RequiredDate,
  o.ShipCity ShipCity, o.ShipCountry ShipCountry, o.Freight Freight,
  o.CompanyName CompanyName, o.CustomerCity CustomerCity, o.CustomerCountry CustomerCountry,
  c.ProductID ProductID, c.SaleUnitPrice OrderUnitPrice,c.Quantity OrderQuantity, 
  c.Discount Discount, c.CategoryID CategoryID,c.SupplierID SupplierID,
  c.OriginUnitPrice OriginUnitPrice, c.CategoryName CategoryName
    FROM CustomerOrders o
      LEFT JOIN OrderProductDetail c
    ON o.OrderId = c.OrderID
    ),
    
  RawData AS (SELECT c.OrderId OrderId, c.CustomerID CustomerID,
  c.OrderDate OrderDate, c.ShippedDate ShippedDate, c.RequiredDate RequiredDate,
  c.ShipCity ShipCity, c.ShipCountry ShipCountry, c.Freight Freight,
  c.CompanyName BuyerCompanyName, c.CustomerCity CustomerCity, c.CustomerCountry CustomerCountry,
  c.ProductID ProductID, c.OrderUnitPrice OrderUnitPrice,c.OrderQuantity OrderQuantity, 
  c.Discount Discount, c.CategoryID CategoryID,c.SupplierID SupplierID,
  c.OriginUnitPrice OriginUnitPrice, c.CategoryName CategoryName, 
  s.CompanyName SupplierCompanyName
    FROM Allinfor c
      LEFT JOIN Suppliers s
    ON c.SupplierID = s.SupplierID)


SELECT CompanyName, MAX(TotalQuantity) MaxQuantity
  FROM(SELECT SupplierCompanyName CompanyName, SUM(OrderQuantity) TotalQuantity
  FROM RawData
  GROUP BY SupplierCompanyName) sub;


-- 表现最好的员工
WITH CustomerOrders AS ( SELECT o.OrderId OrderId, o.CustomerID CustomerID,
  o.OrderDate OrderDate, o.ShippedDate ShippedDate, o.RequiredDate RequiredDate,
  o.ShipCity ShipCity, o.ShipCountry ShipCountry, o.Freight Freight, o.EmployeeID EmployeeID,
  c.CompanyName CompanyName, c.City CustomerCity, c.Country CustomerCountry
    FROM Orders o
      LEFT JOIN Customers c
    ON o.CustomerID = c.CustomerID
    ),

  OrderProducts AS (SELECT o.OrderId OrderId, o.ProductID ProductID,
  o.UnitPrice SaleUnitPrice, o.Quantity Quantity, o.Discount Discount,
  p.CategoryID CategoryID, p.UnitPrice OriginUnitPrice, p.SupplierID SupplierID
    FROM OrderDetails o
      LEFT JOIN Products p
    ON o.ProductID = p.ProductID
    ),

  OrderProductDetail AS (SELECT o.OrderId OrderId, o.ProductID ProductID,
  o.SaleUnitPrice SaleUnitPrice, o.Quantity Quantity, o.Discount Discount,
  o.CategoryID CategoryID, o.OriginUnitPrice OriginUnitPrice, o.SupplierID SupplierID,
  c.CategoryName CategoryName
    FROM OrderProducts o
      LEFT JOIN Categories c
    ON o.CategoryID = c.CategoryID
  ),

  AllInfor AS (SELECT o.OrderId OrderId, o.CustomerID CustomerID,
  o.OrderDate OrderDate, o.ShippedDate ShippedDate, o.RequiredDate RequiredDate,
  o.ShipCity ShipCity, o.ShipCountry ShipCountry, o.Freight Freight,
  o.CompanyName CompanyName, o.CustomerCity CustomerCity, o.CustomerCountry CustomerCountry,
  c.ProductID ProductID, c.SaleUnitPrice OrderUnitPrice,c.Quantity OrderQuantity, 
  c.Discount Discount, c.CategoryID CategoryID,c.SupplierID SupplierID,
  c.OriginUnitPrice OriginUnitPrice, c.CategoryName CategoryName, o.EmployeeID EmployeeID
    FROM CustomerOrders o
      LEFT JOIN OrderProductDetail c
    ON o.OrderId = c.OrderID
    )
    
SELECT EmployeeID, Max(Total) MaxValue
  FROM(SELECT EmployeeID, SUM(OrderUnitPrice * OrderQuantity) 
      OVER (PARTITION BY EmployeeID ORDER BY OrderUnitPrice * OrderQuantity) Total
    FROM AllInfor);