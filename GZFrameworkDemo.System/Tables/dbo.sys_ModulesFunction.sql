CREATE TABLE [dbo].[sys_ModulesFunction]
(
[isid] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[ModuleID] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL,
[FunctionID] [varchar] (200) COLLATE Chinese_PRC_CI_AS NOT NULL,
[FunctionNameRef] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[ImgLargeRef] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL,
[ImgSmallRef] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL,
[FunctionName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[ImgLarge] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL,
[ImgSmall] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL,
[AppDoc] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL,
[Sort] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sys_ModulesFunction] ADD CONSTRAINT [PK_SYS_MODULESFUNCTION] PRIMARY KEY CLUSTERED  ([FunctionID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '模块功能', 'SCHEMA', N'dbo', 'TABLE', N'sys_ModulesFunction', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '业务审核', 'SCHEMA', N'dbo', 'TABLE', N'sys_ModulesFunction', 'COLUMN', N'AppDoc'
GO
EXEC sp_addextendedproperty N'MS_Description', '功能ID', 'SCHEMA', N'dbo', 'TABLE', N'sys_ModulesFunction', 'COLUMN', N'FunctionID'
GO
EXEC sp_addextendedproperty N'MS_Description', '功能名称', 'SCHEMA', N'dbo', 'TABLE', N'sys_ModulesFunction', 'COLUMN', N'FunctionName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'默认功能名称', 'SCHEMA', N'dbo', 'TABLE', N'sys_ModulesFunction', 'COLUMN', N'FunctionNameRef'
GO
EXEC sp_addextendedproperty N'MS_Description', '图片(大)', 'SCHEMA', N'dbo', 'TABLE', N'sys_ModulesFunction', 'COLUMN', N'ImgLarge'
GO
EXEC sp_addextendedproperty N'MS_Description', N'默认图片(大)', 'SCHEMA', N'dbo', 'TABLE', N'sys_ModulesFunction', 'COLUMN', N'ImgLargeRef'
GO
EXEC sp_addextendedproperty N'MS_Description', '图片(小)', 'SCHEMA', N'dbo', 'TABLE', N'sys_ModulesFunction', 'COLUMN', N'ImgSmall'
GO
EXEC sp_addextendedproperty N'MS_Description', N'默认图片(小)', 'SCHEMA', N'dbo', 'TABLE', N'sys_ModulesFunction', 'COLUMN', N'ImgSmallRef'
GO
EXEC sp_addextendedproperty N'MS_Description', '自增字段', 'SCHEMA', N'dbo', 'TABLE', N'sys_ModulesFunction', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', '模块ID', 'SCHEMA', N'dbo', 'TABLE', N'sys_ModulesFunction', 'COLUMN', N'ModuleID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'排序', 'SCHEMA', N'dbo', 'TABLE', N'sys_ModulesFunction', 'COLUMN', N'Sort'
GO
