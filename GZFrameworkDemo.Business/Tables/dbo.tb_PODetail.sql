CREATE TABLE [dbo].[tb_PODetail]
(
[isid] [int] NOT NULL IDENTITY(1, 1),
[DocNo] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[BarCode] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[ItemNo] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[ItemName] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL,
[CategoryID] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL,
[POPrice] [decimal] (18, 2) NULL,
[SOPrice] [decimal] (18, 2) NULL,
[Color] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[Size] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL,
[Qty] [int] NULL,
[TotalPOAmount] [decimal] (18, 2) NULL,
[CreateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[CreateDate] [datetime] NULL,
[LastUpdateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[LastUPdateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_PODetail] ADD CONSTRAINT [PK_TB_PODETAIL] PRIMARY KEY CLUSTERED  ([isid]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '入库单明细', 'SCHEMA', N'dbo', 'TABLE', N'tb_PODetail', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '商品编码', 'SCHEMA', N'dbo', 'TABLE', N'tb_PODetail', 'COLUMN', N'BarCode'
GO
EXEC sp_addextendedproperty N'MS_Description', '入库类别', 'SCHEMA', N'dbo', 'TABLE', N'tb_PODetail', 'COLUMN', N'CategoryID'
GO
EXEC sp_addextendedproperty N'MS_Description', '颜色', 'SCHEMA', N'dbo', 'TABLE', N'tb_PODetail', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建时间', 'SCHEMA', N'dbo', 'TABLE', N'tb_PODetail', 'COLUMN', N'CreateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建人', 'SCHEMA', N'dbo', 'TABLE', N'tb_PODetail', 'COLUMN', N'CreateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '入库编号', 'SCHEMA', N'dbo', 'TABLE', N'tb_PODetail', 'COLUMN', N'DocNo'
GO
EXEC sp_addextendedproperty N'MS_Description', '自增列', 'SCHEMA', N'dbo', 'TABLE', N'tb_PODetail', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', '货物名称', 'SCHEMA', N'dbo', 'TABLE', N'tb_PODetail', 'COLUMN', N'ItemName'
GO
EXEC sp_addextendedproperty N'MS_Description', '货号', 'SCHEMA', N'dbo', 'TABLE', N'tb_PODetail', 'COLUMN', N'ItemNo'
GO
EXEC sp_addextendedproperty N'MS_Description', '进价', 'SCHEMA', N'dbo', 'TABLE', N'tb_PODetail', 'COLUMN', N'POPrice'
GO
EXEC sp_addextendedproperty N'MS_Description', '件数', 'SCHEMA', N'dbo', 'TABLE', N'tb_PODetail', 'COLUMN', N'Qty'
GO
EXEC sp_addextendedproperty N'MS_Description', '尺码', 'SCHEMA', N'dbo', 'TABLE', N'tb_PODetail', 'COLUMN', N'Size'
GO
EXEC sp_addextendedproperty N'MS_Description', '销售价', 'SCHEMA', N'dbo', 'TABLE', N'tb_PODetail', 'COLUMN', N'SOPrice'
GO
EXEC sp_addextendedproperty N'MS_Description', '进货金额小计', 'SCHEMA', N'dbo', 'TABLE', N'tb_PODetail', 'COLUMN', N'TotalPOAmount'
GO
