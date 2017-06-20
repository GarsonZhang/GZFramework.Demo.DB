CREATE TABLE [dbo].[sys_GridViewLayoutUser]
(
[isid] [int] NOT NULL IDENTITY(1, 1),
[LayoutID] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[ConfigType] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL,
[ConfigValue] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sys_GridViewLayoutUser] ADD CONSTRAINT [PK_SYS_GRIDVIEWLAYOUTUSER] PRIMARY KEY CLUSTERED  ([isid]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sys_GridViewLayoutUser] ADD CONSTRAINT [FK_SYS_GRID_REFERENCE_SYS_GRID] FOREIGN KEY ([LayoutID]) REFERENCES [dbo].[sys_GridViewLayout] ([LayoutID]) ON DELETE CASCADE ON UPDATE CASCADE
GO
EXEC sp_addextendedproperty N'MS_Description', '布局配置权限', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayoutUser', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '类型(用户/角色)', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayoutUser', 'COLUMN', N'ConfigType'
GO
EXEC sp_addextendedproperty N'MS_Description', '值', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayoutUser', 'COLUMN', N'ConfigValue'
GO
EXEC sp_addextendedproperty N'MS_Description', '自增字段', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayoutUser', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', '布局ID', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayoutUser', 'COLUMN', N'LayoutID'
GO
