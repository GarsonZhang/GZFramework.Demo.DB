CREATE TABLE [dbo].[sys_CommonSearch]
(
[isid] [int] NOT NULL IDENTITY(1, 1),
[RowID] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL,
[SearchCode] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL,
[strColumnName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[strSQL] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL,
[CreateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[CreateDate] [datetime] NULL,
[LastUpdateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[LastUpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sys_CommonSearch] ADD CONSTRAINT [PK_SYS_COMMONSEARCH] PRIMARY KEY CLUSTERED  ([RowID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '通用多列检索配置', 'SCHEMA', N'dbo', 'TABLE', N'sys_CommonSearch', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '创建日期', 'SCHEMA', N'dbo', 'TABLE', N'sys_CommonSearch', 'COLUMN', N'CreateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建人', 'SCHEMA', N'dbo', 'TABLE', N'sys_CommonSearch', 'COLUMN', N'CreateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '自增字段', 'SCHEMA', N'dbo', 'TABLE', N'sys_CommonSearch', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', '修改日期', 'SCHEMA', N'dbo', 'TABLE', N'sys_CommonSearch', 'COLUMN', N'LastUpdateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '修改人', 'SCHEMA', N'dbo', 'TABLE', N'sys_CommonSearch', 'COLUMN', N'LastUpdateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '主键', 'SCHEMA', N'dbo', 'TABLE', N'sys_CommonSearch', 'COLUMN', N'RowID'
GO
EXEC sp_addextendedproperty N'MS_Description', '检索标识', 'SCHEMA', N'dbo', 'TABLE', N'sys_CommonSearch', 'COLUMN', N'SearchCode'
GO
EXEC sp_addextendedproperty N'MS_Description', '检所列名称', 'SCHEMA', N'dbo', 'TABLE', N'sys_CommonSearch', 'COLUMN', N'strColumnName'
GO
EXEC sp_addextendedproperty N'MS_Description', 'SQL语句', 'SCHEMA', N'dbo', 'TABLE', N'sys_CommonSearch', 'COLUMN', N'strSQL'
GO
