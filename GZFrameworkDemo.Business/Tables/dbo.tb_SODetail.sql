CREATE TABLE [dbo].[tb_SODetail]
(
[isid] [int] NOT NULL IDENTITY(1, 1),
[DocNo] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[BarCode] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[ItemNo] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[ItemName] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL,
[CategoryID] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL,
[Color] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL,
[Size] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL,
[Qty] [int] NULL,
[UnitPrice] [decimal] (18, 2) NULL,
[ActivityID] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL,
[TotalAmount] [decimal] (18, 2) NULL,
[SaleBy] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[Remark] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL,
[CreateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[CreateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_SODetail] ADD CONSTRAINT [PK_TB_SODETAIL] PRIMARY KEY CLUSTERED  ([isid]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '销售单明细', 'SCHEMA', N'dbo', 'TABLE', N'tb_SODetail', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '活动编号', 'SCHEMA', N'dbo', 'TABLE', N'tb_SODetail', 'COLUMN', N'ActivityID'
GO
EXEC sp_addextendedproperty N'MS_Description', '条码', 'SCHEMA', N'dbo', 'TABLE', N'tb_SODetail', 'COLUMN', N'BarCode'
GO
EXEC sp_addextendedproperty N'MS_Description', '类别', 'SCHEMA', N'dbo', 'TABLE', N'tb_SODetail', 'COLUMN', N'CategoryID'
GO
EXEC sp_addextendedproperty N'MS_Description', '颜色', 'SCHEMA', N'dbo', 'TABLE', N'tb_SODetail', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建日期', 'SCHEMA', N'dbo', 'TABLE', N'tb_SODetail', 'COLUMN', N'CreateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建人', 'SCHEMA', N'dbo', 'TABLE', N'tb_SODetail', 'COLUMN', N'CreateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '销售单号', 'SCHEMA', N'dbo', 'TABLE', N'tb_SODetail', 'COLUMN', N'DocNo'
GO
EXEC sp_addextendedproperty N'MS_Description', '自增列', 'SCHEMA', N'dbo', 'TABLE', N'tb_SODetail', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', '商品名称', 'SCHEMA', N'dbo', 'TABLE', N'tb_SODetail', 'COLUMN', N'ItemName'
GO
EXEC sp_addextendedproperty N'MS_Description', '货号', 'SCHEMA', N'dbo', 'TABLE', N'tb_SODetail', 'COLUMN', N'ItemNo'
GO
EXEC sp_addextendedproperty N'MS_Description', '件数', 'SCHEMA', N'dbo', 'TABLE', N'tb_SODetail', 'COLUMN', N'Qty'
GO
EXEC sp_addextendedproperty N'MS_Description', '备注', 'SCHEMA', N'dbo', 'TABLE', N'tb_SODetail', 'COLUMN', N'Remark'
GO
EXEC sp_addextendedproperty N'MS_Description', '销售员', 'SCHEMA', N'dbo', 'TABLE', N'tb_SODetail', 'COLUMN', N'SaleBy'
GO
EXEC sp_addextendedproperty N'MS_Description', '尺码', 'SCHEMA', N'dbo', 'TABLE', N'tb_SODetail', 'COLUMN', N'Size'
GO
EXEC sp_addextendedproperty N'MS_Description', '总价', 'SCHEMA', N'dbo', 'TABLE', N'tb_SODetail', 'COLUMN', N'TotalAmount'
GO
EXEC sp_addextendedproperty N'MS_Description', '单价', 'SCHEMA', N'dbo', 'TABLE', N'tb_SODetail', 'COLUMN', N'UnitPrice'
GO
