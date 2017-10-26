--테이블 삭제
drop table cosmetic purge;

--테이블 생성
create table cosmetic(
	cosmetic_name varchar2(30) constraint cosmetic_cosmetic_name_pk PRIMARY KEY,
	cosmetic_brand varchar2(30) constraint cosmetic_cosmetic_brand_nn NOT NULL,
	cosmetic_type varchar2(10) constraint cosmetic_cosmetic_type_nn not null,
	cosmetic_price varchar2(8) constraint cosmetic_cosmetic_price_nn not null,
	cosmetic_score number(4,2) constraint cosmetic_cosmetic_score_nn not null
);

-- 테이블 주석
comment on table cosmetic is '화장품관리 테이블';

-- 컬럼 주석
comment on column cosmetic.cosmetic_name is '화장품이름 , primary key';
comment on column cosmetic.cosmetic_brand is '화장품 브랜드, not null';
comment on column cosmetic.cosmetic_type is '화장품 종류, not null';
comment on column cosmetic.cosmetic_price is '화장품 가격, not null';
comment on column cosmetic.cosmetic_score is '화장품 평점, not null';