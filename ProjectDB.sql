create database projectDB2;

create table customer1(
    CusID varchar (10) primary key ,
    CusName varchar (50) not null ,
    CusSecondName varchar (50) not null ,
    CusContact varchar (100) not null ,
    CusAdress varchar (100) not null,
    CusEmaill varchar (50) unique
);

create table Product(
    ProID varchar (10) primary key ,
    ProName varchar (50) not null,
--ProPrice  money check (ProPrice > 0 ),
STOCK   int check ( STOCK > 00 or STOCK = 0 )

);

create table Categories (
  CateID varchar(10) primary key ,
  CateName varchar (50) not null
  --ProId varchar (10) foreign key references Product (ProID),



);

create table ManageAccount(
  AccName varchar (30) not null ,
  AccPass varchar (20) not null ,
  AccAdress varchar (50) not null ,
  AccPhone varchar (110) not null ,
  AccEmail varchar(50) unique
  --[Status] varchar (20) check ([Status] = 'activate' or [Status] = 'deactivate')



);

create table Store (
    StoreId varchar (10) primary key ,
    StoreName varchar (50) not null ,
    StoreState varchar (50) not null

);

create table Supplier (
  SupplierID varchar (10) primary key ,
  SupplierName varchar (50)  not null ,
  SupplierState varchar (50) not null

);

create table StoreRegion(
  StoreRegionID varchar (10) primary key ,
  StoreCountry varchar (50) not null

);


--select * from Product
INSERT INTO customer1 (CusID, CusName, CusSecondName, cusadress, cuscontact, CusEmaill)
values (1,'Lefty','Heckner','lheckner0@seattletimes.com',59-042-2621,+1-917-943-5560);
INSERT INTO customer1 (CusID, CusName, CusSecondName, cusadress, cuscontact, CusEmaill)
values (2,'Clarence','MacRannell','cmacrannell1@msu.edu',81-192-9690,+86-185- 158-4710);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (3,'Tye','MacTrustrie','tmactrustrie2@live.com',58-152-3248,+52 -775-353-6677);
INSERT INTO customer1 (CusID, CusName, CusSecondName, cusadress, cuscontact, CusEmaill)
values (4,'Charlotte','Lacasa','clacasa3@exblog.jp',93-643-1333,+46-585- 368-3775);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (5,'Arvy','Bickersteth','abickersteth4@is.gd',15-495-5793,+63 -120- 672-7465);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (6,'Rene','Gaylor','rgaylor5@shinystat.com',47-806-4184,+7 -919 -673-1071);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (7,'Issi','Mc Gorley','imcgorley6@over-blog.com',98-867-3799,+86 -324- 448-3848);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (8,'Elisabet','Stronack','estronack7@dedecms.com',11-374-3277,+86 -407-0 -168-1946);
INSERT INTO customer1 (CusID, CusName,   CusSecondName,cusadress, cuscontact, CusEmaill)
values (9,'Doti','Dawdary','ddawdary8@usa.gov',44-817-0122,+62 -632-622-8944);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (10,'Wilden','Tigner','wtigner9@wikipedia.org',45-619-1245,+251 -592-385-8694);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (11,'Meryl','Binding','mbindinga@amazon.de',03-264-0737,+358 -970- 995-6363);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (12,'Shamus','Ager','sagerb@google.com',40-356-4262,+351 -693- 319-6058);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (13,'Antonia','angilin','aanglinc@artisteer.com',21-776-9587,+46 -818-208-5028);
INSERT INTO customer1 (CusID, CusName, CusSecondName, cusadress, cuscontact, CusEmaill)
values (14,'Pembroke','Flemyng','pflemyngd@shinystat.com',91-927-6341,+234 -622-970-1712);
INSERT INTO customer1 (CusID, CusName, CusSecondName, cusadress, cuscontact, CusEmaill)
values (15,'Lefty','Heckner','lheckner0@seattletimes.com',59-042-2621,+1-917-943-5560);
INSERT INTO customer1 (CusID, CusName, CusSecondName, cusadress, cuscontact, CusEmaill)
values (16,'Clarence','MacRannell','cmacrannell1@msu.edu',81-192-9690,+86-185- 158-4710);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (17,'Tye','MacTrustrie','tmactrustrie2@live.com',58-152-3248,+52 -775-353-6677);
INSERT INTO customer1 (CusID, CusName, CusSecondName, cusadress, cuscontact, CusEmaill)
values (18,'Charlotte','Lacasa','clacasa3@exblog.jp',93-643-1333,+46-585- 368-3775);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (19,'Arvy','Bickersteth','abickersteth4@is.gd',15-495-5793,+63 -120- 672-7465);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (20,'Rene','Gaylor','rgaylor5@shinystat.com',47-806-4184,+7 -919 -673-1071);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (21,'Issi','Mc Gorley','imcgorley6@over-blog.com',98-867-3799,+86 -324- 448-3848);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (22,'Elisabet','Stronack','estronack7@dedecms.com',11-374-3277,+86 -407-0 -168-1946);
INSERT INTO customer1 (CusID, CusName,   CusSecondName,cusadress, cuscontact, CusEmaill)
values (23,'Doti','Dawdary','ddawdary8@usa.gov',44-817-0122,+62 -632-622-8944);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (24,'Wilden','Tigner','wtigner9@wikipedia.org',45-619-1245,+251 -592-385-8694);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (25,'Meryl','Binding','mbindinga@amazon.de',03-264-0737,+358 -970- 995-6363);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (26,'Shamus','Ager','sagerb@google.com',40-356-4262,+351 -693- 319-6058);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (27,'Antonia','angilin','aanglinc@artisteer.com',21-776-9587,+46 -818-208-5028);
INSERT INTO customer1 (CusID, CusName, CusSecondName, cusadress, cuscontact, CusEmaill)
values (28,'Pembroke','Flemyng','pflemyngd@shinystat.com',91-927-6341,+234 -622-970-1712);
INSERT INTO customer1 (CusID, CusName, CusSecondName, cusadress, cuscontact, CusEmaill)
values (29,'Lefty','Heckner','lheckner0@seattletimes.com',59-042-2621,+1-917-943-5560);
INSERT INTO customer1 (CusID, CusName, CusSecondName, cusadress, cuscontact, CusEmaill)
values (30,'Clarence','MacRannell','cmacrannell1@msu.edu',81-192-9690,+86-185- 158-4710);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (31,'Tye','MacTrustrie','tmactrustrie2@live.com',58-152-3248,+52 -775-353-6677);
INSERT INTO customer1 (CusID, CusName, CusSecondName, cusadress, cuscontact, CusEmaill)
values (32,'Charlotte','Lacasa','clacasa3@exblog.jp',93-643-1333,+46-585- 368-3775);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (33,'Arvy','Bickersteth','abickersteth4@is.gd',15-495-5793,+63 -120- 672-7465);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (34,'Rene','Gaylor','rgaylor5@shinystat.com',47-806-4184,+7 -919 -673-1071);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (35,'Issi','Mc Gorley','imcgorley6@over-blog.com',98-867-3799,+86 -324- 448-3848);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (36,'Elisabet','Stronack','estronack7@dedecms.com',11-374-3277,+86 -407-0 -168-1946);
INSERT INTO customer1 (CusID, CusName,   CusSecondName,cusadress, cuscontact, CusEmaill)
values (37,'Doti','Dawdary','ddawdary8@usa.gov',44-817-0122,+62 -632-622-8944);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (38,'Wilden','Tigner','wtigner9@wikipedia.org',45-619-1245,+251 -592-385-8694);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (39,'Meryl','Binding','mbindinga@amazon.de',03-264-0737,+358 -970- 995-6363);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (40,'Shamus','Ager','sagerb@google.com',40-356-4262,+351 -693- 319-6058);
INSERT INTO customer1 (CusID, CusName,  CusSecondName,cusadress, cuscontact, CusEmaill)
values (41,'Antonia','angilin','aanglinc@artisteer.com',21-776-9587,+46 -818-208-5028);
INSERT INTO customer1 (CusID, CusName, CusSecondName, cusadress, cuscontact, CusEmaill)
values (42,'Pembroke','Flemyng','pflemyngd@shinystat.com',91-927-6341,+234 -622-970-1712);



