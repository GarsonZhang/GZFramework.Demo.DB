CREATE TABLE [dbo].[sys_DataBaseListAuthority]
(
[isid] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[DBCode] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[FunctionID] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL,
[Authority] [int] NULL,
[CreateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[CreateDate] [datetime] NULL,
[LastUpdateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[LastUpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sys_DataBaseListAuthority] ADD CONSTRAINT [PK_DT_DBAUTHORITY] PRIMARY KEY CLUSTERED  ([isid]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sys_DataBaseListAuthority] ADD CONSTRAINT [FK_DT_DBAUT_REFERENCE_SYS_DATA_AuthOrity] FOREIGN KEY ([DBCode]) REFERENCES [dbo].[sys_DataBaseList] ([DBCode]) ON DELETE CASCADE ON UPDATE CASCADE
GO
EXEC sp_addextendedproperty N'MS_Description', '账套功能配置', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataBaseListAuthority', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '权限值', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataBaseListAuthority', 'COLUMN', N'Authority'
GO
EXEC sp_addextendedproperty N'MS_Description', 'CreateDate', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataBaseListAuthority', 'COLUMN', N'CreateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', 'CreateUser', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataBaseListAuthority', 'COLUMN', N'CreateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '账套标识', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataBaseListAuthority', 'COLUMN', N'DBCode'
GO
EXEC sp_addextendedproperty N'MS_Description', '权限菜单', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataBaseListAuthority', 'COLUMN', N'FunctionID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'isid', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataBaseListAuthority', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', 'LastUpdateDate', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataBaseListAuthority', 'COLUMN', N'LastUpdateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', 'LastUpdateUser', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataBaseListAuthority', 'COLUMN', N'LastUpdateUser'
GO
