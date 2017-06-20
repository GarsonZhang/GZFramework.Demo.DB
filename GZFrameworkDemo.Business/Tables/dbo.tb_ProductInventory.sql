CREATE TABLE [dbo].[tb_ProductInventory]
(
[isid] [int] NOT NULL IDENTITY(1, 1),
[BarCode] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL,
[ItemNo] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[ItemName] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL,
[CategoryID] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL,
[SOPrice] [decimal] (18, 2) NULL,
[Color] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[Size] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL,
[Qty] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_ProductInventory] ADD CONSTRAINT [PK_TB_PRODUCTINVENTORY] PRIMARY KEY CLUSTERED  ([BarCode]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '库存信息', 'SCHEMA', N'dbo', 'TABLE', N'tb_ProductInventory', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '商品编码', 'SCHEMA', N'dbo', 'TABLE', N'tb_ProductInventory', 'COLUMN', N'BarCode'
GO
EXEC sp_addextendedproperty N'MS_Description', '入库类别', 'SCHEMA', N'dbo', 'TABLE', N'tb_ProductInventory', 'COLUMN', N'CategoryID'
GO
EXEC sp_addextendedproperty N'MS_Description', '颜色', 'SCHEMA', N'dbo', 'TABLE', N'tb_ProductInventory', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_Description', '自增列', 'SCHEMA', N'dbo', 'TABLE', N'tb_ProductInventory', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', '货物名称', 'SCHEMA', N'dbo', 'TABLE', N'tb_ProductInventory', 'COLUMN', N'ItemName'
GO
EXEC sp_addextendedproperty N'MS_Description', '货号', 'SCHEMA', N'dbo', 'TABLE', N'tb_ProductInventory', 'COLUMN', N'ItemNo'
GO
EXEC sp_addextendedproperty N'MS_Description', '件数', 'SCHEMA', N'dbo', 'TABLE', N'tb_ProductInventory', 'COLUMN', N'Qty'
GO
EXEC sp_addextendedproperty N'MS_Description', '尺码', 'SCHEMA', N'dbo', 'TABLE', N'tb_ProductInventory', 'COLUMN', N'Size'
GO
EXEC sp_addextendedproperty N'MS_Description', '销售价', 'SCHEMA', N'dbo', 'TABLE', N'tb_ProductInventory', 'COLUMN', N'SOPrice'
GO
