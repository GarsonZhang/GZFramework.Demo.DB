CREATE TABLE [dbo].[sys_Modules]
(
[isid] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[Sort] [int] NULL,
[ModuleID] [varchar] (200) COLLATE Chinese_PRC_CI_AS NOT NULL,
[ModuleNameRef] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[ImgRef] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL,
[ModuleName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[Img] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sys_Modules] ADD CONSTRAINT [PK_SYS_MODULES] PRIMARY KEY CLUSTERED  ([ModuleID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '系统模块', 'SCHEMA', N'dbo', 'TABLE', N'sys_Modules', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '大图片', 'SCHEMA', N'dbo', 'TABLE', N'sys_Modules', 'COLUMN', N'Img'
GO
EXEC sp_addextendedproperty N'MS_Description', N'默认模块图标', 'SCHEMA', N'dbo', 'TABLE', N'sys_Modules', 'COLUMN', N'ImgRef'
GO
EXEC sp_addextendedproperty N'MS_Description', '自增字段', 'SCHEMA', N'dbo', 'TABLE', N'sys_Modules', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', '模块ID', 'SCHEMA', N'dbo', 'TABLE', N'sys_Modules', 'COLUMN', N'ModuleID'
GO
EXEC sp_addextendedproperty N'MS_Description', '模块名称', 'SCHEMA', N'dbo', 'TABLE', N'sys_Modules', 'COLUMN', N'ModuleName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'默认模块名称', 'SCHEMA', N'dbo', 'TABLE', N'sys_Modules', 'COLUMN', N'ModuleNameRef'
GO
EXEC sp_addextendedproperty N'MS_Description', '排序', 'SCHEMA', N'dbo', 'TABLE', N'sys_Modules', 'COLUMN', N'Sort'
GO
