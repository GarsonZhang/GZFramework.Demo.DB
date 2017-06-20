CREATE TABLE [dbo].[dt_MyRole]
(
[isid] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RoleID] [varchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL,
[DBCode] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[RoleName] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[Description] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[CreateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[CreateDate] [datetime] NULL,
[LastUpdateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[LastUpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[dt_MyRole] ADD CONSTRAINT [PK_DT_MYROLE] PRIMARY KEY CLUSTERED  ([RoleID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '角色', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyRole', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'CreateDate', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyRole', 'COLUMN', N'CreateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', 'CreateUser', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyRole', 'COLUMN', N'CreateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '描述', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyRole', 'COLUMN', N'Description'
GO
EXEC sp_addextendedproperty N'MS_Description', 'isid', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyRole', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', 'LastUpdateDate', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyRole', 'COLUMN', N'LastUpdateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', 'LastUpdateUser', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyRole', 'COLUMN', N'LastUpdateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '角色编号', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyRole', 'COLUMN', N'RoleID'
GO
EXEC sp_addextendedproperty N'MS_Description', '角色名称', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyRole', 'COLUMN', N'RoleName'
GO
