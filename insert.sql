-----------------Roli
select * from ROLI;
insert into ROLI values('admin');
insert into ROLI values('responsible');
insert into ROLI values('client');


select * from PERDORUES
-------Perdoruesi
insert into PERDORUES values('Anila','Quka',0695834726,Convert(binary(64),'anila123'),1,'anilaquka','6/4/2018 3:10PM',null,1);
insert into PERDORUES values('Gemisa','Parllaku',0694334721,Convert(binary(64),'gemisa123'),1,'gemisaparllaku','6/4/2018 3:10PM',null,2);
insert into PERDORUES values('Xhulia','Hodaj',0685834726,Convert(binary(64),'xhulia123'),1,'xhuliahodaj','6/4/2018 3:35PM',null,3);
insert into PERDORUES values('Aurora','Murrja',0694834726,Convert(binary(64),'anila123'),1,'auroramurrja','6/4/2018 3:35PM',null,3);
insert into PERDORUES values('Bela','Watts',0695834716,Convert(binary(64),'bela123'),1,'bela1','6/4/2018 3:37PM',null,3);
insert into PERDORUES values('Taylor','Rees',0695834723,Convert(binary(64),'taylor123'),1,'tRees','6/4/2018 4:10PM',null,3);
insert into PERDORUES values('Alan','Gill',0675834726,Convert(binary(64),'alan123'),1,'alangrill','6/4/2018 4:15PM',null,3);

-------kategoria 
select * from KATEGORI;
insert into KATEGORI values('Klasike');
insert into KATEGORI values('Embesira');
insert into KATEGORI values('Sallata');
insert into KATEGORI values('Pizza');

-------Gatimi
select * from GATIM

insert into GATIM values('Sufllaqe(pule/derri)','Pite, xaxiq, domate, patate.',190,1,convert(Varbinary(max),'sufllaqe.jpg'),'6/4/2018 3:46PM',null,2,null,1);
insert into GATIM values('Doner(pule/derri)','Buke, xaxiq, domate, patate.',190,1,convert(Varbinary(max),'doner.jpg'),'6/4/2018 3:46PM',null,2,null,1);
insert into GATIM values('Tost','Buke, djath amerikan, proshute, majoneze.',120,1,convert(Varbinary(max),'tost.jpg'),'6/4/2018 3:46PM',null,2,null,1);
insert into GATIM values('Sanduic','Buke, majoneze, djath amerikan, proshute, domate, kastravec, sallate jeshile, patate.',170,1,convert(Varbinary(max),'sanduic.jpg'),'6/4/2018 3:46PM',null,2,null,1);
insert into GATIM values('Sanduic Fshati','Buke, sallam, djath i bardhe, domate, speca zgare, kastravec, majoneze, patate.',250,1,convert(Varbinary(max),'sanduic-fshati.jpg'),'6/4/2018 3:46PM',null,2,null,1);
insert into GATIM values('Sanduic Vegjetarian','Buke, sallate jeshile, gogozhare, djath i bardhe, domate, speca zgare, kastravec, majoneze, patate.',170,1,convert(Varbinary(max),'sanduic-vegjetarian.jpg'),'6/4/2018 3:46PM',null,2,null,1);
insert into GATIM values('Hot Dog','Woody, xaxiq, domate, patate.',170,1,convert(Varbinary(max),'hot-dog.jpg'),'6/4/2018 3:46PM',null,2,null,1);
insert into GATIM values('Chicken Cheese Burger','kotolete pule, djath, sallate jeshile, kastravec turshi.',230,1,convert(Varbinary(max),'chicken-cheese-burger.jpg'),'6/4/2018 3:46PM',null,2,null,1);
insert into GATIM values('Bollgur me cokollate.','bollgur, gjalpe brume, biskota, cokollate, arra, lajthi, qumesht , mjalte.',250,1,convert(Varbinary(max),'bullgur-cokollate.jpg'),'6/4/2018 3:46PM',null,2,null,2);
insert into GATIM values('Kek me luleshtrydhe',' gjalpë , miell ,sodë për ëmbëlsira , kripë, sheqer , vezë ,qumësht , vanilje , luleshtrydhe',190,1,convert(Varbinary(max),'kek-luleshtrydhe.jpg'),'6/4/2018 3:46PM',null,2,null,2);
insert into GATIM values('Biskota me shije limoni','miell,veze,vaj vegjetal,ekstrakt limoni, sheqer',190,1,convert(Varbinary(max),'biskota.jpg'),'6/4/2018 3:46PM',null,2,null,2);
insert into GATIM values('Kek me cokollate','çokollatë ,kakao, gjalpë, sheqer,miell, veze, sodë bikarbonë',200,1,convert(Varbinary(max),'kek-cokollate.jpg'),'6/4/2018 3:46PM',null,2,null,2);
insert into GATIM values('CupCake','sheqer, miell ,gjalp ,veze ,maja per embelsira ,Vanilja . Perberesit per kremin siper: Gjalp ,Sheqer ,Uje,veze ,Vanilje',100,1,convert(Varbinary(max),'cupcake.jpg'),'6/4/2018 3:46PM',null,2,null,2);
insert into GATIM values('Tiramisu','biskota, maskarpone , veze, sheqer, kakao,kafe ekspres',150,1,convert(Varbinary(max),'tiramisu.jpg'),'6/4/2018 3:46PM',null,2,null,2);
insert into GATIM values('Caesar salad','Sallata e gjelbert, pule, parmesan, copa buke, Caesar dressing.',450,1,convert(Varbinary(max),'caesar-salad.jpg'),'6/4/2018 3:46PM',null,2,null,3);
insert into GATIM values('Sallate Shope','Domate, tranguj, qepe, djath dhe ullinj.',250,1,convert(Varbinary(max),'shope-salad.jpg'),'6/4/2018 3:46PM',null,2,null,3);
insert into GATIM values('Sallate Romana','Sallate e gjelbert, pule me grill, tranguj, qepe, domate,sos jogurti me barishte.',300,1,convert(Varbinary(max),'romana-salad.jpg'),'6/4/2018 3:46PM',null,2,null,3);
insert into GATIM values('Sallate Al Tono','Sallate mix, tuna.',300,1,convert(Varbinary(max),'altono-salad.jpg'),'6/4/2018 3:46PM',null,2,null,3);
insert into GATIM values('Sallate Prima Vera','Sallate mix, tuna, veze te ziera.',300,1,convert(Varbinary(max),'primavera-salad.jpg'),'6/4/2018 3:46PM',null,2,null,3);
insert into GATIM values('Sallate Pule','Sallate e gjelbert, mish pule, tranguj, domate, sos jogurti me barishte.',400,1,convert(Varbinary(max),'pule-salad.jpg'),'6/4/2018 3:46PM',null,2,null,3);
insert into GATIM values('Sallate Mozarella','Djathe, mozzarella dhe domate.',350,1,convert(Varbinary(max),'mozarella-salad.jpg'),'6/4/2018 3:46PM',null,2,null,3);
insert into GATIM values('Pica Bianka','Pice me salce domate e perpunuar, Gouda mocarela.',320,1,convert(Varbinary(max),'bianka_s.jpg'),'6/4/2018 3:46PM',null,2,null,4);
insert into GATIM values('Pica Margarita','Pice me domate, ullinj me feta, djathe Gouda mocarela.',390,1,convert(Varbinary(max),'margarita_s.jpg'),'6/4/2018 3:46PM',null,2,null,4);
insert into GATIM values('Pica Napolitana','Pice me sallam parizier, domate, Gouda mocarela.',390,1,convert(Varbinary(max),'napolitana_s.jpg'),'6/4/2018 3:46PM',null,2,null,4);
insert into GATIM values('Pica Piemonteze','Pice me proshute, domate, Gouda mocarela.',410,1,convert(Varbinary(max),'piemonteze_s.jpg'),'6/4/2018 3:46PM',null,2,null,4);
insert into GATIM values('Pice Orientale','Pice me sallam parizier, domate, speca, rigon, Gouda mocarela.',430,1,convert(Varbinary(max),'orientale_s.jpg'),'6/4/2018 3:46PM',null,2,null,4);
insert into GATIM values('Pice Vegjetariane','Pice me domate, speca, kerpudha, patllexhane, kungulleshka, Gouda mocarela.',470,1,convert(Varbinary(max),'vegjetariane_s.jpg'),'6/4/2018 3:46PM',null,2,null,4);

-----Adresat
select *  from ADRESA;
insert into ADRESA values('A', 'Tirane');
insert into ADRESA values('B', 'Tirane');
insert into ADRESA values('C', 'Tirane');
insert into ADRESA values('D', 'Tirane');
insert into ADRESA values('E', 'Tirane');

---Porosite
insert into POROSI values(1,'6/4/2018 4:33PM' ,1,0,'6/4/2018 4:43PM',null,5,2);
insert into POROSI values(2,'6/5/2018 12:00PM' ,1,0,'6/4/2018 12:11PM',null,3,2);
insert into POROSI values(3,'6/5/2018 12:45PM' ,0,1,null,'6/5/2018 12:48PM',4,2);
insert into POROSI values(4,'6/5/2018 12:50PM' ,0,1,null,'6/5/2018 12:55PM',6,2);
insert into POROSI values(3,'6/6/2018 12:13PM' ,1,0,'6/6/2018 12:24PM',null,4,2);
 select * from POROSI
---porosi_item
select * from POROSI_ITEM; 

insert into POROSI_ITEM values(1,1,22);
insert into POROSI_ITEM values(1,1,20);
insert into POROSI_ITEM values(2,3,7);
insert into POROSI_ITEM values(3,1,12);
insert into POROSI_ITEM values(4,2,26);
insert into POROSI_ITEM values(4,2,13);
insert into POROSI_ITEM values(5,1,15);