CREATE TABLE [dbo].[sys_GridViewLayout]
(
[isid] [int] NOT NULL IDENTITY(1, 1),
[LayoutID] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL,
[ViewCode] [varchar] (200) COLLATE Chinese_PRC_CI_AS NULL,
[LayoutName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[IsDefault] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL,
[IntervalColor] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL,
[HeadHeight] [int] NULL,
[RowHeight] [int] NULL,
[HorzLine] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL,
[HorzLineColor] [int] NULL,
[VertLine] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL,
[VertLineColor] [int] NULL,
[CreateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[CreateDate] [datetime] NULL,
[LastUpdateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[LastUpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sys_GridViewLayout] ADD CONSTRAINT [PK_SYS_GRIDVIEWLAYOUT] PRIMARY KEY CLUSTERED  ([LayoutID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '布局配置', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayout', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '创建日期', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayout', 'COLUMN', N'CreateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建人', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayout', 'COLUMN', N'CreateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '表头高度', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayout', 'COLUMN', N'HeadHeight'
GO
EXEC sp_addextendedproperty N'MS_Description', '水平线', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayout', 'COLUMN', N'HorzLine'
GO
EXEC sp_addextendedproperty N'MS_Description', '水平线颜色', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayout', 'COLUMN', N'HorzLineColor'
GO
EXEC sp_addextendedproperty N'MS_Description', '交替行颜色', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayout', 'COLUMN', N'IntervalColor'
GO
EXEC sp_addextendedproperty N'MS_Description', '默认布局', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayout', 'COLUMN', N'IsDefault'
GO
EXEC sp_addextendedproperty N'MS_Description', '自增字段', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayout', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', '修改日期', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayout', 'COLUMN', N'LastUpdateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '修改人', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayout', 'COLUMN', N'LastUpdateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '布局ID', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayout', 'COLUMN', N'LayoutID'
GO
EXEC sp_addextendedproperty N'MS_Description', '布局名称', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayout', 'COLUMN', N'LayoutName'
GO
EXEC sp_addextendedproperty N'MS_Description', '行高度', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayout', 'COLUMN', N'RowHeight'
GO
EXEC sp_addextendedproperty N'MS_Description', '垂直线', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayout', 'COLUMN', N'VertLine'
GO
EXEC sp_addextendedproperty N'MS_Description', '垂直线颜色', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayout', 'COLUMN', N'VertLineColor'
GO
EXEC sp_addextendedproperty N'MS_Description', '视图编号', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayout', 'COLUMN', N'ViewCode'
GO
