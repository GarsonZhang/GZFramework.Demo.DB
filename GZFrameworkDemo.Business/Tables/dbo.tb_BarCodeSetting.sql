CREATE TABLE [dbo].[tb_BarCodeSetting]
(
[isid] [int] NOT NULL IDENTITY(1, 1),
[Head1] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[Head2] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[Head3] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[Item1] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[Item2] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL,
[Item3] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_BarCodeSetting] ADD CONSTRAINT [PK_tb_BarCodeSetting] PRIMARY KEY CLUSTERED  ([isid]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '商品编码生成', 'SCHEMA', N'dbo', 'TABLE', N'tb_BarCodeSetting', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '自定义1', 'SCHEMA', N'dbo', 'TABLE', N'tb_BarCodeSetting', 'COLUMN', N'Head1'
GO
EXEC sp_addextendedproperty N'MS_Description', '自定义2', 'SCHEMA', N'dbo', 'TABLE', N'tb_BarCodeSetting', 'COLUMN', N'Head2'
GO
EXEC sp_addextendedproperty N'MS_Description', '自定义3', 'SCHEMA', N'dbo', 'TABLE', N'tb_BarCodeSetting', 'COLUMN', N'Head3'
GO
EXEC sp_addextendedproperty N'MS_Description', '自增列', 'SCHEMA', N'dbo', 'TABLE', N'tb_BarCodeSetting', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', '项目1', 'SCHEMA', N'dbo', 'TABLE', N'tb_BarCodeSetting', 'COLUMN', N'Item1'
GO
EXEC sp_addextendedproperty N'MS_Description', '项目2', 'SCHEMA', N'dbo', 'TABLE', N'tb_BarCodeSetting', 'COLUMN', N'Item2'
GO
EXEC sp_addextendedproperty N'MS_Description', '项目3', 'SCHEMA', N'dbo', 'TABLE', N'tb_BarCodeSetting', 'COLUMN', N'Item3'
GO
