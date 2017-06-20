CREATE TABLE [dbo].[sys_GridViewLayoutDetail]
(
[isid] [int] NOT NULL IDENTITY(1, 1),
[LayoutID] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL,
[FileName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL,
[FileCaptionBK] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[FileCaption] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[IsShow] [varchar] (1) COLLATE Chinese_PRC_CI_AS NULL,
[Width] [int] NULL,
[FontColor] [int] NULL,
[BackColor] [int] NULL,
[Alignment] [int] NULL,
[SummaryType] [int] NULL,
[SummaryFormat] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[CreateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[CreateDate] [datetime] NULL,
[LastUpdateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[LastUpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sys_GridViewLayoutDetail] ADD CONSTRAINT [PK_sys_GridViewLayoutDetail] PRIMARY KEY CLUSTERED  ([LayoutID], [FileName]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sys_GridViewLayoutDetail] ADD CONSTRAINT [FK_SYS_GRID_REFERENCE_SYS_GRID_Detail] FOREIGN KEY ([LayoutID]) REFERENCES [dbo].[sys_GridViewLayout] ([LayoutID]) ON DELETE CASCADE ON UPDATE CASCADE
GO
EXEC sp_addextendedproperty N'MS_Description', '布局明细', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayoutDetail', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '对其方式', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayoutDetail', 'COLUMN', N'Alignment'
GO
EXEC sp_addextendedproperty N'MS_Description', '背景颜色', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayoutDetail', 'COLUMN', N'BackColor'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建日期', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayoutDetail', 'COLUMN', N'CreateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建人', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayoutDetail', 'COLUMN', N'CreateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '标题', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayoutDetail', 'COLUMN', N'FileCaption'
GO
EXEC sp_addextendedproperty N'MS_Description', '列名', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayoutDetail', 'COLUMN', N'FileCaptionBK'
GO
EXEC sp_addextendedproperty N'MS_Description', '字段名', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayoutDetail', 'COLUMN', N'FileName'
GO
EXEC sp_addextendedproperty N'MS_Description', '文字颜色', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayoutDetail', 'COLUMN', N'FontColor'
GO
EXEC sp_addextendedproperty N'MS_Description', '自增字段', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayoutDetail', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', '是否显示', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayoutDetail', 'COLUMN', N'IsShow'
GO
EXEC sp_addextendedproperty N'MS_Description', '修改日期', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayoutDetail', 'COLUMN', N'LastUpdateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '修改人', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayoutDetail', 'COLUMN', N'LastUpdateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '布局ID', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayoutDetail', 'COLUMN', N'LayoutID'
GO
EXEC sp_addextendedproperty N'MS_Description', '显示格式', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayoutDetail', 'COLUMN', N'SummaryFormat'
GO
EXEC sp_addextendedproperty N'MS_Description', '统计类型', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayoutDetail', 'COLUMN', N'SummaryType'
GO
EXEC sp_addextendedproperty N'MS_Description', '宽度', 'SCHEMA', N'dbo', 'TABLE', N'sys_GridViewLayoutDetail', 'COLUMN', N'Width'
GO
