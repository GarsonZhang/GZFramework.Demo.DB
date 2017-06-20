CREATE TABLE [dbo].[sys_ModulesFunctionAuthority]
(
[isid] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[FunctionID] [varchar] (200) COLLATE Chinese_PRC_CI_AS NOT NULL,
[AuthorityID] [int] NOT NULL,
[AuthorityNameRef] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[AuthorityName] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sys_ModulesFunctionAuthority] ADD CONSTRAINT [PK_SYS_FUNCTIONAUTHORITY] PRIMARY KEY CLUSTERED  ([FunctionID], [AuthorityID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '功能权限', 'SCHEMA', N'dbo', 'TABLE', N'sys_ModulesFunctionAuthority', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '权限值', 'SCHEMA', N'dbo', 'TABLE', N'sys_ModulesFunctionAuthority', 'COLUMN', N'AuthorityID'
GO
EXEC sp_addextendedproperty N'MS_Description', '权限名称', 'SCHEMA', N'dbo', 'TABLE', N'sys_ModulesFunctionAuthority', 'COLUMN', N'AuthorityName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'默认权限名称', 'SCHEMA', N'dbo', 'TABLE', N'sys_ModulesFunctionAuthority', 'COLUMN', N'AuthorityNameRef'
GO
EXEC sp_addextendedproperty N'MS_Description', '功能ID', 'SCHEMA', N'dbo', 'TABLE', N'sys_ModulesFunctionAuthority', 'COLUMN', N'FunctionID'
GO
EXEC sp_addextendedproperty N'MS_Description', '自增字段', 'SCHEMA', N'dbo', 'TABLE', N'sys_ModulesFunctionAuthority', 'COLUMN', N'isid'
GO
