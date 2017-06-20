CREATE TABLE [dbo].[dt_MyUserDBs]
(
[isid] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[Account] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL,
[DBCode] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL,
[IsDBLock] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL,
[IsDBAdmin] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL,
[CreateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[CreateDate] [datetime] NULL,
[LastUpdateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[LastUpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[dt_MyUserDBs] ADD CONSTRAINT [PK_DT_MYUSERDBS] PRIMARY KEY CLUSTERED  ([Account], [DBCode]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '用户账套', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUserDBs', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '账号', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUserDBs', 'COLUMN', N'Account'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建日期', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUserDBs', 'COLUMN', N'CreateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建人', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUserDBs', 'COLUMN', N'CreateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '账套标识', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUserDBs', 'COLUMN', N'DBCode'
GO
EXEC sp_addextendedproperty N'MS_Description', '是否是管理员', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUserDBs', 'COLUMN', N'IsDBAdmin'
GO
EXEC sp_addextendedproperty N'MS_Description', '锁定', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUserDBs', 'COLUMN', N'IsDBLock'
GO
EXEC sp_addextendedproperty N'MS_Description', '自增字段', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUserDBs', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', '修改日期', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUserDBs', 'COLUMN', N'LastUpdateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '修改人', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUserDBs', 'COLUMN', N'LastUpdateUser'
GO
