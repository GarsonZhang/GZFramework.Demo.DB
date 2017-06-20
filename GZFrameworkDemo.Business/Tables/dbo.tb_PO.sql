CREATE TABLE [dbo].[tb_PO]
(
[isid] [int] NOT NULL IDENTITY(1, 1),
[DocNo] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL,
[DocDate] [datetime] NULL,
[TotalQty] [int] NULL,
[TotalPOAmount] [decimal] (18, 2) NULL,
[AppStatus] [int] NULL,
[AppUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[AppDate] [datetime] NULL,
[CreateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[CreateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_PO] ADD CONSTRAINT [PK_TB_PO] PRIMARY KEY CLUSTERED  ([DocNo]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '入库单', 'SCHEMA', N'dbo', 'TABLE', N'tb_PO', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '审核时间', 'SCHEMA', N'dbo', 'TABLE', N'tb_PO', 'COLUMN', N'AppDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '审核人', 'SCHEMA', N'dbo', 'TABLE', N'tb_PO', 'COLUMN', N'AppUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建时间', 'SCHEMA', N'dbo', 'TABLE', N'tb_PO', 'COLUMN', N'CreateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建人', 'SCHEMA', N'dbo', 'TABLE', N'tb_PO', 'COLUMN', N'CreateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '入库日期', 'SCHEMA', N'dbo', 'TABLE', N'tb_PO', 'COLUMN', N'DocDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '入库编号', 'SCHEMA', N'dbo', 'TABLE', N'tb_PO', 'COLUMN', N'DocNo'
GO
EXEC sp_addextendedproperty N'MS_Description', '自增列', 'SCHEMA', N'dbo', 'TABLE', N'tb_PO', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', '进货总金额', 'SCHEMA', N'dbo', 'TABLE', N'tb_PO', 'COLUMN', N'TotalPOAmount'
GO
EXEC sp_addextendedproperty N'MS_Description', '总件数', 'SCHEMA', N'dbo', 'TABLE', N'tb_PO', 'COLUMN', N'TotalQty'
GO
