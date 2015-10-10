----------------------------------------------------
-- Export file for user SA@ORCL                   --
-- Created by wangpengfei on 2015/10/10, 16:52:14 --
----------------------------------------------------

set define off
spool tables.log

prompt
prompt Creating table RESOURCES
prompt ========================
prompt
create table SA.RESOURCES
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
comment on column SA.RESOURCES.id
  is '����';
comment on column SA.RESOURCES.name
  is '��Դ����';
comment on column SA.RESOURCES.descript
  is '��Դ����';
comment on column SA.RESOURCES.url
  is '��Դ��ַ';
comment on column SA.RESOURCES.type
  is '��Դ����';
alter table SA.RESOURCES
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
prompt Creating table ROLES
prompt ====================
prompt
create table SA.ROLES
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
comment on column SA.ROLES.id
  is '����';
comment on column SA.ROLES.name
  is '����';
comment on column SA.ROLES.descript
  is '����';
comment on column SA.ROLES.type
  is '����';
alter table SA.ROLES
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
prompt Creating table ROLES_RESOURCES
prompt ==============================
prompt
create table SA.ROLES_RESOURCES
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
comment on column SA.ROLES_RESOURCES.role_id
  is '��ɫ����';
comment on column SA.ROLES_RESOURCES.resource_id
  is '��Դ����';

prompt
prompt Creating table USERS
prompt ====================
prompt
create table SA.USERS
(
  id                      NUMBER(19) not null,
  firstname               VARCHAR2(50) not null,
  lastname                VARCHAR2(50) not null,
  email                   VARCHAR2(50) not null,
  password                VARCHAR2(50) not null,
  username                VARCHAR2(50) not null,
  isaccountnonexpired     NUMBER(2) default 0 not null,
  isaccountnonlocked      NUMBER(2) default 0 not null,
  iscredentialsnonexpired NUMBER(2) default 0 not null,
  isenabled               NUMBER(2) default 0 not null
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
comment on column SA.USERS.id
  is '����';
comment on column SA.USERS.firstname
  is '��';
comment on column SA.USERS.lastname
  is '��';
comment on column SA.USERS.email
  is '����';
comment on column SA.USERS.password
  is '����';
comment on column SA.USERS.username
  is '�û���/��¼��';
comment on column SA.USERS.isaccountnonexpired
  is '�Ƿ���� 0 δ���� ��1 �ѹ���';
comment on column SA.USERS.isaccountnonlocked
  is '�Ƿ����� 0 δ���� ��1 ������';
comment on column SA.USERS.iscredentialsnonexpired
  is '֤���Ƿ���� 0 δ����  ��1 �ѹ���';
comment on column SA.USERS.isenabled
  is '�Ƿ���� 0 δ���� ��1 �ѽ���';
alter table SA.USERS
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
prompt Creating table USERS_ROLES
prompt ==========================
prompt
create table SA.USERS_ROLES
(
  user_id NUMBER(19) not null,
  role_id NUMBER(19) not null
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
comment on column SA.USERS_ROLES.user_id
  is '�û�����';
comment on column SA.USERS_ROLES.role_id
  is '��ɫ����';


spool off
