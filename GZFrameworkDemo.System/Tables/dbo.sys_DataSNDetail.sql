CREATE TABLE [dbo].[sys_DataSNDetail]
(
[DocCode] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL,
[Seed] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL,
[MaxID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sys_DataSNDetail] ADD CONSTRAINT [PK_SYS_DATASNDETAIL] PRIMARY KEY CLUSTERED  ([DocCode], [Seed]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '单据号码表2', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataSNDetail', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '单据标记', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataSNDetail', 'COLUMN', N'DocCode'
GO
EXEC sp_addextendedproperty N'MS_Description', '最大号码', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataSNDetail', 'COLUMN', N'MaxID'
GO
EXEC sp_addextendedproperty N'MS_Description', '增长种子', 'SCHEMA', N'dbo', 'TABLE', N'sys_DataSNDetail', 'COLUMN', N'Seed'
GO
