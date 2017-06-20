CREATE TABLE [dbo].[tb_SO]
(
[isid] [int] NOT NULL IDENTITY(1, 1),
[DocNo] [varchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL,
[DocDate] [datetime] NULL,
[TotalQty] [int] NULL,
[TotalPrice] [decimal] (18, 2) NULL,
[ActivityID] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL,
[ActivityName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[TotalAmount] [decimal] (18, 2) NULL,
[AmountIn] [decimal] (18, 2) NULL,
[AmountOut] [decimal] (18, 2) NULL,
[SaleBy] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[CreateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[CreateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_SO] ADD CONSTRAINT [PK_TB_SO] PRIMARY KEY CLUSTERED  ([DocNo]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '销售单', 'SCHEMA', N'dbo', 'TABLE', N'tb_SO', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '活动编号', 'SCHEMA', N'dbo', 'TABLE', N'tb_SO', 'COLUMN', N'ActivityID'
GO
EXEC sp_addextendedproperty N'MS_Description', '活动名称', 'SCHEMA', N'dbo', 'TABLE', N'tb_SO', 'COLUMN', N'ActivityName'
GO
EXEC sp_addextendedproperty N'MS_Description', '收钱', 'SCHEMA', N'dbo', 'TABLE', N'tb_SO', 'COLUMN', N'AmountIn'
GO
EXEC sp_addextendedproperty N'MS_Description', '找零', 'SCHEMA', N'dbo', 'TABLE', N'tb_SO', 'COLUMN', N'AmountOut'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建日期', 'SCHEMA', N'dbo', 'TABLE', N'tb_SO', 'COLUMN', N'CreateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建人', 'SCHEMA', N'dbo', 'TABLE', N'tb_SO', 'COLUMN', N'CreateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '销售日期', 'SCHEMA', N'dbo', 'TABLE', N'tb_SO', 'COLUMN', N'DocDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '单据号码', 'SCHEMA', N'dbo', 'TABLE', N'tb_SO', 'COLUMN', N'DocNo'
GO
EXEC sp_addextendedproperty N'MS_Description', '自增列', 'SCHEMA', N'dbo', 'TABLE', N'tb_SO', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', '销售员', 'SCHEMA', N'dbo', 'TABLE', N'tb_SO', 'COLUMN', N'SaleBy'
GO
EXEC sp_addextendedproperty N'MS_Description', '最终收款', 'SCHEMA', N'dbo', 'TABLE', N'tb_SO', 'COLUMN', N'TotalAmount'
GO
EXEC sp_addextendedproperty N'MS_Description', '总金额', 'SCHEMA', N'dbo', 'TABLE', N'tb_SO', 'COLUMN', N'TotalPrice'
GO
EXEC sp_addextendedproperty N'MS_Description', '总数量', 'SCHEMA', N'dbo', 'TABLE', N'tb_SO', 'COLUMN', N'TotalQty'
GO
