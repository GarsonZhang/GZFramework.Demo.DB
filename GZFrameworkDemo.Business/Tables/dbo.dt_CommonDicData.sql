CREATE TABLE [dbo].[dt_CommonDicData]
(
[isid] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[rowversion] [timestamp] NULL,
[DataType] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[DataCode] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[DataName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[SortIndex] [int] NULL,
[CreateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[CreateDate] [datetime] NULL,
[LastUpdateUser] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[LastUpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[dt_CommonDicData] ADD CONSTRAINT [PK_DT_COMMONDICDATA] PRIMARY KEY CLUSTERED  ([isid]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '公共基础字典', 'SCHEMA', N'dbo', 'TABLE', N'dt_CommonDicData', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '创建日期', 'SCHEMA', N'dbo', 'TABLE', N'dt_CommonDicData', 'COLUMN', N'CreateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '创建人', 'SCHEMA', N'dbo', 'TABLE', N'dt_CommonDicData', 'COLUMN', N'CreateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', '数据编码', 'SCHEMA', N'dbo', 'TABLE', N'dt_CommonDicData', 'COLUMN', N'DataCode'
GO
EXEC sp_addextendedproperty N'MS_Description', '数据名称', 'SCHEMA', N'dbo', 'TABLE', N'dt_CommonDicData', 'COLUMN', N'DataName'
GO
EXEC sp_addextendedproperty N'MS_Description', '字典类型', 'SCHEMA', N'dbo', 'TABLE', N'dt_CommonDicData', 'COLUMN', N'DataType'
GO
EXEC sp_addextendedproperty N'MS_Description', '自增字段', 'SCHEMA', N'dbo', 'TABLE', N'dt_CommonDicData', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', '修改日期', 'SCHEMA', N'dbo', 'TABLE', N'dt_CommonDicData', 'COLUMN', N'LastUpdateDate'
GO
EXEC sp_addextendedproperty N'MS_Description', '修改人', 'SCHEMA', N'dbo', 'TABLE', N'dt_CommonDicData', 'COLUMN', N'LastUpdateUser'
GO
EXEC sp_addextendedproperty N'MS_Description', 'rowversion', 'SCHEMA', N'dbo', 'TABLE', N'dt_CommonDicData', 'COLUMN', N'rowversion'
GO
EXEC sp_addextendedproperty N'MS_Description', '显示索引', 'SCHEMA', N'dbo', 'TABLE', N'dt_CommonDicData', 'COLUMN', N'SortIndex'
GO
