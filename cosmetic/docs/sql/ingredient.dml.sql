--insert
INSERT INTO INGREDIENT VALUES('나무이끼추출물','7');
INSERT INTO INGREDIENT VALUES('리날룰','5');
INSERT INTO INGREDIENT VALUES('리모넨','5');
INSERT INTO INGREDIENT VALUES('벤질벤조에이트','6');
INSERT INTO INGREDIENT VALUES('파네솔','4');
INSERT INTO INGREDIENT VALUES('제라니올','7');
INSERT INTO INGREDIENT VALUES('쿠마린','7');
INSERT INTO INGREDIENT VALUES('감초','1');
INSERT INTO INGREDIENT VALUES('녹차수','1');
INSERT INTO INGREDIENT VALUES('레몬수','2');
INSERT INTO INGREDIENT VALUES('레몬오일','3');
INSERT INTO INGREDIENT VALUES('레몬즙','2');
INSERT INTO INGREDIENT VALUES('멘톨','1');
INSERT INTO INGREDIENT VALUES('위치하젤수','1');
INSERT INTO INGREDIENT VALUES('징크옥사이드','2');
INSERT INTO INGREDIENT VALUES('티타늄옥사이드','3');
INSERT INTO INGREDIENT VALUES('캠퍼','2');
INSERT INTO INGREDIENT VALUES('티트리추출물','1');
INSERT INTO INGREDIENT VALUES('미로니에추출물','1');
INSERT INTO INGREDIENT VALUES('알로에베라잎수','2');
INSERT INTO INGREDIENT VALUES('알로에베라꽃추출물','3');
INSERT INTO INGREDIENT VALUES('알로에베라잎즙가루','3');
INSERT INTO INGREDIENT VALUES('케모마일꽃수','1');
INSERT INTO INGREDIENT VALUES('케모마일꽃오일','1');
INSERT INTO INGREDIENT VALUES('메칠벤질리덴캠퍼','7');
INSERT INTO INGREDIENT VALUES('드로메트리졸트리실록산','4');
INSERT INTO INGREDIENT VALUES('벤조페논','8');
INSERT INTO INGREDIENT VALUES('부틸메톡','2');
INSERT INTO INGREDIENT VALUES('시녹세이트','3');
INSERT INTO INGREDIENT VALUES('에칠헥실디메칠파바','5');
INSERT INTO INGREDIENT VALUES('옥토크릴렌','3');

commit;

-- select
select * from ingredient order by ingredient_name;
select ingredient_name from ingredient where ingredient_name like '%레%'  ;
select cosmetic_brand from cosmetic where cosmetic_brand like '%이%' group by cosmetic_brand order by cosmetic_brand;