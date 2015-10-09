---------------------------------------------------
-- Export file for user SA@ORCL                  --
-- Created by wangpengfei on 2015/10/9, 11:45:11 --
---------------------------------------------------

set define off
spool test_tab.log

prompt
prompt Creating table TEST
prompt ===================
prompt
create table SA.TEST
(
  id   NUMBER(19) not null,
  name VARCHAR2(50) not null
)
tablespace SA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table SA.TEST
  add constraint TEST_PK primary key (ID)
  using index 
  tablespace JXMMS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TEST_RESOURCE
prompt ============================
prompt
create table SA.TEST_RESOURCE
(
  id       NUMBER(19) not null,
  name     VARCHAR2(50) not null,
  descript VARCHAR2(50) not null,
  url      VARCHAR2(50) not null,
  type     NUMBER(2) not null
)
tablespace SA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column SA.TEST_RESOURCE.id
  is '����';
comment on column SA.TEST_RESOURCE.name
  is '��Դ����';
comment on column SA.TEST_RESOURCE.descript
  is '��Դ����';
comment on column SA.TEST_RESOURCE.url
  is '��Դ��ַ';
comment on column SA.TEST_RESOURCE.type
  is '��Դ����';
alter table SA.TEST_RESOURCE
  add constraint TEST_RESOURCES_PK primary key (ID)
  using index 
  tablespace JXMMS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TEST_ROLE
prompt ========================
prompt
create table SA.TEST_ROLE
(
  id       NUMBER(19) not null,
  name     VARCHAR2(50) not null,
  descript VARCHAR2(50) not null,
  type     NUMBER(2)
)
tablespace SA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column SA.TEST_ROLE.id
  is '����';
comment on column SA.TEST_ROLE.name
  is '����';
comment on column SA.TEST_ROLE.descript
  is '����';
comment on column SA.TEST_ROLE.type
  is '����';
alter table SA.TEST_ROLE
  add constraint TEST_ROLE_PK primary key (ID)
  using index 
  tablespace JXMMS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TEST_ROLE_RESOURCE
prompt =================================
prompt
create table SA.TEST_ROLE_RESOURCE
(
  role_id     NUMBER(19) not null,
  resource_id NUMBER(19) not null
)
tablespace SA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column SA.TEST_ROLE_RESOURCE.role_id
  is '��ɫ����';
comment on column SA.TEST_ROLE_RESOURCE.resource_id
  is '��Դ����';

prompt
prompt Creating table TEST_USER
prompt ========================
prompt
create table SA.TEST_USER
(
  id        NUMBER(19) not null,
  firstname VARCHAR2(50) not null,
  lastname  VARCHAR2(50) not null,
  email     VARCHAR2(50) not null,
  password  VARCHAR2(50) not null
)
tablespace SA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table SA.TEST_USER
  add constraint TEST_USER_PK primary key (ID)
  using index 
  tablespace JXMMS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TEST_USER_ROLE
prompt =============================
prompt
create table SA.TEST_USER_ROLE
(
  user_id NUMBER(19) not null,
  role_id VARCHAR2(50) not null
)
tablespace SA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column SA.TEST_USER_ROLE.user_id
  is '�û�����';
comment on column SA.TEST_USER_ROLE.role_id
  is '��ɫ����';


spool off
