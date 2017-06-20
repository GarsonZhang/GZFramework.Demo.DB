CREATE TABLE [dbo].[tb_SaleInventory]
(
[isid] [int] NOT NULL IDENTITY(1, 1),
[DocNo] [varchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL,
[DocDate] [datetime] NULL,
[StarDate] [datetime] NULL,
[EndDate] [datetime] NULL,
[AmountInit] [decimal] (18, 2) NULL,
[AmountSale] [decimal] (18, 2) NULL,
[AmountPlan] [decimal] (18, 2) NULL,
[AmountRel] [decimal] (18, 2) NULL,
[AmountCompared] [decimal] (18, 2) NULL,
[AmountTakeOut] [decimal] (18, 2) NULL,
[AmountRemaining] [decimal] (18, 2) NULL,
[Remark] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL,
[AppUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[AppDate] [datetime] NULL,
[CreateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[CreateDate] [datetime] NULL,
[LastUpdteUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[LastUpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_SaleInventory] ADD CONSTRAINT [PK_TB_SALEINVENTORY] PRIMARY KEY CLUSTERED  ([DocNo]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '销售结算', 'SCHEMA', N'dbo', 'TABLE', N'tb_SaleInventory', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '盈亏金额', 'SCHEMA', N'dbo', 'TABLE', N'tb_SaleInventory', 'COLUMN', N'AmountCompared'
GO
EXEC sp_addextendedproperty N'MS_Description', '钱箱金额', 'SCHEMA', N'dbo', 'TABLE', N'tb_SaleInventory', 'COLUMN', N'AmountInit'
GO
EXEC sp_addextendedproperty N'MS_Description', '应共计金额', 'SCHEMA', N'dbo', 'TABLE', N'tb_SaleInventory', 'COLUMN', N'AmountPlan'
GO
EXEC sp_addextendedproperty N'MS_Description', '实共计金额', 'SCHEMA', N'dbo', 'TABLE', N'tb_SaleInventory', 'COLUMN', N'AmountRel'
GO
EXEC sp_addextendedproperty N'MS_Description', '剩余金额', 'SCHEMA', N'dbo', 'TABLE', N'tb_SaleInventory', 'COLUMN', N'AmountRemaining'
GO
EXEC sp_addextendedproperty N'MS_Description', '销售金额', 'SCHEMA', N'dbo', 'TABLE', N'tb_SaleInventory', 'COLUMN', N'AmountSale'
GO
EXEC sp_addextendedproperty N'MS_Description', '取出金额', 'SCHEMA', N'dbo', 'TABLE', N'tb_SaleInventory', 'COLUMN', N'AmountTakeOut'
GO
EXEC sp_addextendedproperty N'MS_Description', '审核时间', 'SCHEMA', N'dbo', 'TABLE', N'tb_SaleInventory', 'COLUMN', N'AppDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '审核人', 'SCHEMA', N'dbo', 'TABLE', N'tb_SaleInventory', 'COLUMN', N'AppUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建人', 'SCHEMA', N'dbo', 'TABLE', N'tb_SaleInventory', 'COLUMN', N'CreateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建时间', 'SCHEMA', N'dbo', 'TABLE', N'tb_SaleInventory', 'COLUMN', N'CreateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '结算时间', 'SCHEMA', N'dbo', 'TABLE', N'tb_SaleInventory', 'COLUMN', N'DocDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '结算编号', 'SCHEMA', N'dbo', 'TABLE', N'tb_SaleInventory', 'COLUMN', N'DocNo'
GO
EXEC sp_addextendedproperty N'MS_Description', '截至时间', 'SCHEMA', N'dbo', 'TABLE', N'tb_SaleInventory', 'COLUMN', N'EndDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '自增列', 'SCHEMA', N'dbo', 'TABLE', N'tb_SaleInventory', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', '更新人', 'SCHEMA', N'dbo', 'TABLE', N'tb_SaleInventory', 'COLUMN', N'LastUpdateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '更新时间', 'SCHEMA', N'dbo', 'TABLE', N'tb_SaleInventory', 'COLUMN', N'LastUpdteUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '备注', 'SCHEMA', N'dbo', 'TABLE', N'tb_SaleInventory', 'COLUMN', N'Remark'
GO
EXEC sp_addextendedproperty N'MS_Description', '起始时间', 'SCHEMA', N'dbo', 'TABLE', N'tb_SaleInventory', 'COLUMN', N'StarDate'
GO
