CREATE TABLE [dbo].[dt_MyUser]
(
[isid] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[Account] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL,
[Password] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL,
[UserName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[Phone] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[Email] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL,
[IsSysAdmain] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL,
[IsSysLock] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL,
[CreateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[CreateDate] [datetime] NULL,
[LastUpdateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[LastUpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[dt_MyUser] ADD CONSTRAINT [PK_DT_MYUSER] PRIMARY KEY CLUSTERED  ([Account]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '用户表', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUser', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '账号', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUser', 'COLUMN', N'Account'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建日期', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUser', 'COLUMN', N'CreateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建人', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUser', 'COLUMN', N'CreateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Email', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUser', 'COLUMN', N'Email'
GO
EXEC sp_addextendedproperty N'MS_Description', '自增字段', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUser', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', '是否是管理员', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUser', 'COLUMN', N'IsSysAdmain'
GO
EXEC sp_addextendedproperty N'MS_Description', '修改日期', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUser', 'COLUMN', N'LastUpdateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '修改人', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUser', 'COLUMN', N'LastUpdateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '密码', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUser', 'COLUMN', N'Password'
GO
EXEC sp_addextendedproperty N'MS_Description', '电话', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUser', 'COLUMN', N'Phone'
GO
EXEC sp_addextendedproperty N'MS_Description', '名称', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUser', 'COLUMN', N'UserName'
GO
