CREATE TABLE [dbo].[sys_CommonSearchUser]
(
[isid] [int] NOT NULL IDENTITY(1, 1),
[Account] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL,
[RowID] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL,
[Flag] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL,
[CreateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[CreateDate] [datetime] NULL,
[LastUpdateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[LastUpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sys_CommonSearchUser] ADD CONSTRAINT [PK_SYS_COMMONSEARCHUSER] PRIMARY KEY CLUSTERED  ([Account], [RowID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sys_CommonSearchUser] ADD CONSTRAINT [FK_SYS_COMM_REFERENCE_SYS_COMM] FOREIGN KEY ([RowID]) REFERENCES [dbo].[sys_CommonSearch] ([RowID]) ON DELETE CASCADE ON UPDATE CASCADE
GO
EXEC sp_addextendedproperty N'MS_Description', '用户通用检索设置', 'SCHEMA', N'dbo', 'TABLE', N'sys_CommonSearchUser', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '用户', 'SCHEMA', N'dbo', 'TABLE', N'sys_CommonSearchUser', 'COLUMN', N'Account'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建日期', 'SCHEMA', N'dbo', 'TABLE', N'sys_CommonSearchUser', 'COLUMN', N'CreateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建人', 'SCHEMA', N'dbo', 'TABLE', N'sys_CommonSearchUser', 'COLUMN', N'CreateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '配置', 'SCHEMA', N'dbo', 'TABLE', N'sys_CommonSearchUser', 'COLUMN', N'Flag'
GO
EXEC sp_addextendedproperty N'MS_Description', '自增字段', 'SCHEMA', N'dbo', 'TABLE', N'sys_CommonSearchUser', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', '修改日期', 'SCHEMA', N'dbo', 'TABLE', N'sys_CommonSearchUser', 'COLUMN', N'LastUpdateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '修改人', 'SCHEMA', N'dbo', 'TABLE', N'sys_CommonSearchUser', 'COLUMN', N'LastUpdateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '主键', 'SCHEMA', N'dbo', 'TABLE', N'sys_CommonSearchUser', 'COLUMN', N'RowID'
GO
