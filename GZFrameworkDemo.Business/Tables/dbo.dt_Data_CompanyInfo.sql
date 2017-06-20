CREATE TABLE [dbo].[dt_Data_CompanyInfo]
(
[isid] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CompanyName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[CompanyAddress] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL,
[Phone] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[Mobile] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[Fax] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[PublicAccount] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[PublicName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[PublicBackInfo] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[PrivateAccount] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[PrivateBankName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[PrivateName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL,
[LastUpdateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[LastUpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[dt_Data_CompanyInfo] ADD CONSTRAINT [PK_DT_DATA_COMPANYINFO] PRIMARY KEY CLUSTERED  ([isid]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '公司信息', 'SCHEMA', N'dbo', 'TABLE', N'dt_Data_CompanyInfo', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '地址', 'SCHEMA', N'dbo', 'TABLE', N'dt_Data_CompanyInfo', 'COLUMN', N'CompanyAddress'
GO
EXEC sp_addextendedproperty N'MS_Description', '公司名称', 'SCHEMA', N'dbo', 'TABLE', N'dt_Data_CompanyInfo', 'COLUMN', N'CompanyName'
GO
EXEC sp_addextendedproperty N'MS_Description', '传真', 'SCHEMA', N'dbo', 'TABLE', N'dt_Data_CompanyInfo', 'COLUMN', N'Fax'
GO
EXEC sp_addextendedproperty N'MS_Description', '自增列', 'SCHEMA', N'dbo', 'TABLE', N'dt_Data_CompanyInfo', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', '最后修改时间', 'SCHEMA', N'dbo', 'TABLE', N'dt_Data_CompanyInfo', 'COLUMN', N'LastUpdateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '最后修改人', 'SCHEMA', N'dbo', 'TABLE', N'dt_Data_CompanyInfo', 'COLUMN', N'LastUpdateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '手机', 'SCHEMA', N'dbo', 'TABLE', N'dt_Data_CompanyInfo', 'COLUMN', N'Mobile'
GO
EXEC sp_addextendedproperty N'MS_Description', '电话', 'SCHEMA', N'dbo', 'TABLE', N'dt_Data_CompanyInfo', 'COLUMN', N'Phone'
GO
EXEC sp_addextendedproperty N'MS_Description', '私人账号', 'SCHEMA', N'dbo', 'TABLE', N'dt_Data_CompanyInfo', 'COLUMN', N'PrivateAccount'
GO
EXEC sp_addextendedproperty N'MS_Description', '私人账号开户行', 'SCHEMA', N'dbo', 'TABLE', N'dt_Data_CompanyInfo', 'COLUMN', N'PrivateBankName'
GO
EXEC sp_addextendedproperty N'MS_Description', '私人账号姓名', 'SCHEMA', N'dbo', 'TABLE', N'dt_Data_CompanyInfo', 'COLUMN', N'PrivateName'
GO
EXEC sp_addextendedproperty N'MS_Description', '对公账号', 'SCHEMA', N'dbo', 'TABLE', N'dt_Data_CompanyInfo', 'COLUMN', N'PublicAccount'
GO
EXEC sp_addextendedproperty N'MS_Description', '对公账号开户行', 'SCHEMA', N'dbo', 'TABLE', N'dt_Data_CompanyInfo', 'COLUMN', N'PublicBackInfo'
GO
EXEC sp_addextendedproperty N'MS_Description', '对公账号公司名称', 'SCHEMA', N'dbo', 'TABLE', N'dt_Data_CompanyInfo', 'COLUMN', N'PublicName'
GO
