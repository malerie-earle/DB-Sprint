
--Indexes on Foreign Keys (FK):

CREATE INDEX idx_fk_Person_ID_Address ON Address(Person_ID);
CREATE INDEX idx_fk_Person_ID_Customer ON customer(Person_ID);
CREATE INDEX idx_fk_Person_ID_Vendor ON vendor(Person_ID);
CREATE INDEX idx_fk_Person_ID_CustomerAccount ON "customerAccount"(Person_ID);
CREATE INDEX idx_fk_Person_ID_VendorAccount ON "vendorAccount"(Person_ID);
CREATE INDEX idx_fk_Person_ID_Product ON Product(Person_ID);
CREATE INDEX idx_fk_Person_ID_OrderInvoice ON "orderInvoice"(Person_ID);
CREATE INDEX idx_fk_Person_ID_VendorProducts ON "vendor_products_join"(Person_ID);
CREATE INDEX idx_fk_Product_ID_ProductOrder ON Product_Order(Product_ID);
CREATE INDEX idx_fk_Invoice_ID_ProductOrder ON Product_Order(Invoice_ID);

--Index on searching by order date

CREATE INDEX idx_OrderInvoice_Date ON "orderInvoice"(Date);

--Indexes for facilitating search and filtering of products by Person_ID.

CREATE INDEX idx_fk_Person_ID_Product_OrderInvoice ON Product(Person_ID);

--Index filtering by product category

CREATE INDEX idx_Category_ID_Product_Count ON Product(Category_ID);

--Indexes check

SELECT indexname FROM pg_indexes WHERE tablename = 'address';
SELECT indexname FROM pg_indexes WHERE tablename = 'customer';
SELECT indexname FROM pg_indexes WHERE tablename = 'vendor';
SELECT indexname FROM pg_indexes WHERE tablename = 'customerAccount';
SELECT indexname FROM pg_indexes WHERE tablename = 'vendorAccount';
SELECT indexname FROM pg_indexes WHERE tablename = 'product';
SELECT indexname FROM pg_indexes WHERE tablename = 'orderInvoice';
SELECT indexname FROM pg_indexes WHERE tablename = 'vendor_products_join';
SELECT indexname FROM pg_indexes WHERE tablename = 'product_order';
SELECT indexname FROM pg_indexes WHERE tablename = 'orderInvoice' AND indexname = 'idx_orderinvoice_date';
SELECT indexname, indexdef FROM pg_indexes WHERE tablename = 'product';







