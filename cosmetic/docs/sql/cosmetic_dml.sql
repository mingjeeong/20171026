
--insert
INSERT INTO COSMETIC VALUES('아토베리어 크림','에스트라','크림','15000','4.2');
INSERT INTO COSMETIC VALUES('오인트먼트','루카스포포레머디스','크림','25000','4.10');
INSERT INTO COSMETIC VALUES('레드블레마쉬 클리어크림','크림','23000','3.88');
INSERT INTO COSMETIC VALUES('독도토너','라운드랩','스킨','15000','4.00');
INSERT INTO COSMETIC VALUES('하이루로산토너','이즈엔트리','스킨','14000','4.11');
INSERT INTO COSMETIC VALUES('웰빙녹차스킨','시드물','스킨','8000','3.88');
INSERT INTO COSMETIC VALUES('아토로션','시드물','로션','7500','4.23');
INSERT INTO COSMETIC VALUES('인텐시브로션','제로이드','로션','10000','4.42');
INSERT INTO COSMETIC VALUES('아토베리어로션','에스트라','로션','18000','3.56');
INSERT INTO COSMETIC VALUES('데일리 모이스처','피지엔오겔','로션','30000','4.23');
INSERT INTO COSMETIC VALUES('에센스 미스트','리얼베리어','미스트','17000','3.23');
INSERT INTO COSMETIC VALUES('어린쑥 수분진정수','한울','미스트','11000','2.23');
INSERT INTO COSMETIC VALUES('주름로션','한음','로션','18000','3.23');
INSERT INTO COSMETIC VALUES('수분로션','한셈','로션','8000','2.23');

commit;

--
select cosmetic_brand from cosmetic where cosmetic_brand like '시드물' group by cosmetic_brand;