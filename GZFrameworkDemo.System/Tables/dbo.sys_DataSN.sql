CREATE TABLE [dbo].[sys_DataSN]
(
[isid] [int] NOT NULL IDENTITY(1, 1),
[DocCode] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL,
[DocName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[DocHeader] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL,
[Separate] [varchar] (2) COLLATE Chinese_PRC_CI_AS NULL,
[DocType] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[Length] [int] NOT NULL,
[Demo] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sys_DataSN] ADD CONSTRAINT [PK_SYS_DATASN] PRIMARY KEY CLUSTERED  ([DocCode]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '单据号码表', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataSN', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '单据标识', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataSN', 'COLUMN', N'DocCode'
GO
EXEC sp_addextendedproperty N'MS_Description', '单据头', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataSN', 'COLUMN', N'DocHeader'
GO
EXEC sp_addextendedproperty N'MS_Description', '单据名称', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataSN', 'COLUMN', N'DocName'
GO
EXEC sp_addextendedproperty N'MS_Description', '单据类型', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataSN', 'COLUMN', N'DocType'
GO
EXEC sp_addextendedproperty N'MS_Description', '自增字段', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataSN', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', '长度', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataSN', 'COLUMN', N'Length'
GO
EXEC sp_addextendedproperty N'MS_Description', '分割线', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataSN', 'COLUMN', N'Separate'
GO
