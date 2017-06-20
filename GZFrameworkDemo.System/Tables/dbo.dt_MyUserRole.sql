CREATE TABLE [dbo].[dt_MyUserRole]
(
[isid] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[Account] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[DBCode] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[RoleID] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[CreateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[CreateDate] [datetime] NULL,
[LastUpdateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[LastUpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[dt_MyUserRole] ADD CONSTRAINT [PK_DT_MYUSERROLE] PRIMARY KEY CLUSTERED  ([isid]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[dt_MyUserRole] ADD CONSTRAINT [FK_DT_MYUSE_REFERENCE_DT_MYUSE] FOREIGN KEY ([Account]) REFERENCES [dbo].[dt_MyUser] ([Account])
GO
EXEC sp_addextendedproperty N'MS_Description', '用户角色', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUserRole', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '账号', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUserRole', 'COLUMN', N'Account'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建日期', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUserRole', 'COLUMN', N'CreateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建人', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUserRole', 'COLUMN', N'CreateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '账套编号', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUserRole', 'COLUMN', N'DBCode'
GO
EXEC sp_addextendedproperty N'MS_Description', '自增字段', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUserRole', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', '修改日期', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUserRole', 'COLUMN', N'LastUpdateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '修改人', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUserRole', 'COLUMN', N'LastUpdateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '角色编号', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyUserRole', 'COLUMN', N'RoleID'
GO
