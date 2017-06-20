CREATE TABLE [dbo].[sys_DataBaseList]
(
[isid] [int] NOT NULL IDENTITY(1, 1),
[DBCode] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL,
[DBDisplayText] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[DBProviderName] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL,
[DBServer] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[DBName] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL,
[DBConnection] [nvarchar] (2000) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sys_DataBaseList] ADD CONSTRAINT [PK_SYS_DATABASELIST] PRIMARY KEY CLUSTERED  ([DBCode]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '数据库列表', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataBaseList', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '数据库标识', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataBaseList', 'COLUMN', N'DBCode'
GO
EXEC sp_addextendedproperty N'MS_Description', '链接字符串', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataBaseList', 'COLUMN', N'DBConnection'
GO
EXEC sp_addextendedproperty N'MS_Description', '数据库描述', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataBaseList', 'COLUMN', N'DBDisplayText'
GO
EXEC sp_addextendedproperty N'MS_Description', '数据库名', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataBaseList', 'COLUMN', N'DBName'
GO
EXEC sp_addextendedproperty N'MS_Description', '数据库类型', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataBaseList', 'COLUMN', N'DBProviderName'
GO
EXEC sp_addextendedproperty N'MS_Description', '服务器地址', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataBaseList', 'COLUMN', N'DBServer'
GO
EXEC sp_addextendedproperty N'MS_Description', '自增字段', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataBaseList', 'COLUMN', N'isid'
GO
