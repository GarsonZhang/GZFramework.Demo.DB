CREATE TABLE [dbo].[dt_MyRoleAuthority]
(
[isid] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RoleID] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL,
[FunctionID] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL,
[Authority] [int] NULL,
[CreateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[CreateDate] [datetime] NULL,
[LastUpdateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[LastUpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[dt_MyRoleAuthority] ADD CONSTRAINT [PK_DT_MYROLEAUTHORITY] PRIMARY KEY CLUSTERED  ([isid]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[dt_MyRoleAuthority] ADD CONSTRAINT [FK_DT_MYROL_REFERENCE_DT_MYROL] FOREIGN KEY ([RoleID]) REFERENCES [dbo].[dt_MyRole] ([RoleID])
GO
EXEC sp_addextendedproperty N'MS_Description', '角色权限', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyRoleAuthority', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '权限值', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyRoleAuthority', 'COLUMN', N'Authority'
GO
EXEC sp_addextendedproperty N'MS_Description', 'CreateDate', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyRoleAuthority', 'COLUMN', N'CreateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', 'CreateUser', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyRoleAuthority', 'COLUMN', N'CreateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '权限菜单', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyRoleAuthority', 'COLUMN', N'FunctionID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'isid', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyRoleAuthority', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', 'LastUpdateDate', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyRoleAuthority', 'COLUMN', N'LastUpdateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', 'LastUpdateUser', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyRoleAuthority', 'COLUMN', N'LastUpdateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '角色编号', 'SCHEMA', N'dbo', 'TABLE', N'dt_MyRoleAuthority', 'COLUMN', N'RoleID'
GO
