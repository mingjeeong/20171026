--테이블 삭제
drop table ingredient purge;

--테이블 생성
create table ingredient(
	ingredient_name varchar2(30) constraint ingredient_ingredient_name_pk PRIMARY KEY,
	ingredient_risk number(1) constraint ingredient_ingredient_risk_nn NOT NULL
);

-- 테이블 주석
comment on table ingredient is '화장품 성분 테이블';

-- 컬럼 주석
comment on column ingredient.ingredient_name is '성분 이름 , primary key';
comment on column ingredient.ingredient_risk is '성분 위험도, not null';

