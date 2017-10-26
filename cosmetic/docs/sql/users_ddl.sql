-- 테이블 삭제
drop table users purge;

--테이블 생성
create table users (
	user_id varchar2(30) not null,
	user_pw varchar2(30) not null,
	user_name varchar2(30) not null
);

-- 제약 추가
alter table users
add constraint pk_user_id primary key (user_id);

-- 테이블 주석
comment on table users is '회원관리 테이블';

-- 컬럼 주석
comment on column users.user_id is '회원 아이디, primary key';
comment on column users.user_pw is '회원 비밀번호, not null';
comment on column users.user_name is '회원 이름, not null';






