CREATE TABLE [dbo].[tb_ProductCategory]
(
[isid] [int] NOT NULL IDENTITY(1, 1),
[Flag] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL,
[CategoryID] [varchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL,
[CategoryName] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL,
[ParentCategoryID] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_ProductCategory] ADD CONSTRAINT [PK_TB_PRODUCTCATEGORY] PRIMARY KEY CLUSTERED  ([CategoryID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', '商品类别', 'SCHEMA', N'dbo', 'TABLE', N'tb_ProductCategory', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', '类别编号', 'SCHEMA', N'dbo', 'TABLE', N'tb_ProductCategory', 'COLUMN', N'CategoryID'
GO
EXEC sp_addextendedproperty N'MS_Description', '类别名称', 'SCHEMA', N'dbo', 'TABLE', N'tb_ProductCategory', 'COLUMN', N'CategoryName'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Tag', 'SCHEMA', N'dbo', 'TABLE', N'tb_ProductCategory', 'COLUMN', N'Flag'
GO
EXEC sp_addextendedproperty N'MS_Description', '自增列', 'SCHEMA', N'dbo', 'TABLE', N'tb_ProductCategory', 'COLUMN', N'isid'
GO
EXEC sp_addextendedproperty N'MS_Description', '父级类别', 'SCHEMA', N'dbo', 'TABLE', N'tb_ProductCategory', 'COLUMN', N'ParentCategoryID'
GO
