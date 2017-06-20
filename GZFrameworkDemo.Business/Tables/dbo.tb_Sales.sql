CREATE TABLE [dbo].[tb_Sales]
(
[isid] [int] NOT NULL IDENTITY(1, 1),
[SaleID] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL,
[SaleName] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_Sales] ADD CONSTRAINT [PK_TB_SALES] PRIMARY KEY CLUSTERED  ([SaleID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '销售员', 'SCHEMA', N'dbo', 'TABLE', N'tb_Sales', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '自增列', 'SCHEMA', N'dbo', 'TABLE', N'tb_Sales', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', '销售员编号', 'SCHEMA', N'dbo', 'TABLE', N'tb_Sales', 'COLUMN', N'SaleID'
GO
EXEC sp_addextendedproperty N'MS_Description', '销售员名称', 'SCHEMA', N'dbo', 'TABLE', N'tb_Sales', 'COLUMN', N'SaleName'
GO
