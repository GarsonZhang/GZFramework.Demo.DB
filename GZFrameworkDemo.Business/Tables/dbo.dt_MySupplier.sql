CREATE TABLE [dbo].[dt_MySupplier]
(
[SupplierID] [varchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL,
[SupplierName] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[Address] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL,
[Contacts] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[Phone] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[Remark] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL,
[CreateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[CreateDate] [datetime] NULL,
[LastUpdateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[LastUpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[dt_MySupplier] ADD CONSTRAINT [PK_DT_MYROLE] PRIMARY KEY CLUSTERED  ([SupplierID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '供应商', 'SCHEMA', N'dbo', 'TABLE', N'dt_MySupplier', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '地址', 'SCHEMA', N'dbo', 'TABLE', N'dt_MySupplier', 'COLUMN', N'Address'
GO
EXEC sp_addextendedproperty N'MS_Description', '联系人', 'SCHEMA', N'dbo', 'TABLE', N'dt_MySupplier', 'COLUMN', N'Contacts'
GO
EXEC sp_addextendedproperty N'MS_Description', 'CreateDate', 'SCHEMA', N'dbo', 'TABLE', N'dt_MySupplier', 'COLUMN', N'CreateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', 'CreateUser', 'SCHEMA', N'dbo', 'TABLE', N'dt_MySupplier', 'COLUMN', N'CreateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', 'LastUpdateDate', 'SCHEMA', N'dbo', 'TABLE', N'dt_MySupplier', 'COLUMN', N'LastUpdateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', 'LastUpdateUser', 'SCHEMA', N'dbo', 'TABLE', N'dt_MySupplier', 'COLUMN', N'LastUpdateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '联系电话', 'SCHEMA', N'dbo', 'TABLE', N'dt_MySupplier', 'COLUMN', N'Phone'
GO
EXEC sp_addextendedproperty N'MS_Description', '备注', 'SCHEMA', N'dbo', 'TABLE', N'dt_MySupplier', 'COLUMN', N'Remark'
GO
EXEC sp_addextendedproperty N'MS_Description', '供应商编号', 'SCHEMA', N'dbo', 'TABLE', N'dt_MySupplier', 'COLUMN', N'SupplierID'
GO
EXEC sp_addextendedproperty N'MS_Description', '供应商名称', 'SCHEMA', N'dbo', 'TABLE', N'dt_MySupplier', 'COLUMN', N'SupplierName'
GO
