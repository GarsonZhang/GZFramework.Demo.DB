CREATE TABLE [dbo].[tb_Activity]
(
[isid] [int] NOT NULL IDENTITY(1, 1),
[ActivityID] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL,
[ActivityName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[StartDate] [date] NULL,
[EndDate] [date] NULL
) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '活动列表', 'SCHEMA', N'dbo', 'TABLE', N'tb_Activity', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '活动编号', 'SCHEMA', N'dbo', 'TABLE', N'tb_Activity', 'COLUMN', N'ActivityID'
GO
EXEC sp_addextendedproperty N'MS_Description', '活动内容', 'SCHEMA', N'dbo', 'TABLE', N'tb_Activity', 'COLUMN', N'ActivityName'
GO
EXEC sp_addextendedproperty N'MS_Description', '活动结束日期', 'SCHEMA', N'dbo', 'TABLE', N'tb_Activity', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '自增列', 'SCHEMA', N'dbo', 'TABLE', N'tb_Activity', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', '活动开始日期', 'SCHEMA', N'dbo', 'TABLE', N'tb_Activity', 'COLUMN', N'StartDate'
GO
