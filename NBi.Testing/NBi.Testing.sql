/****** Object:  Table [dbo].[Product]    Script Date: 01/02/2012 03:05:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 01/02/2012 03:05:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Product](
	[ProductID] [int] NOT NULL,
	[ProductSKU] [char](6) NOT NULL,
	[Label] [varchar](200) NOT NULL,
	[Description] [ntext] NULL
)
END
GO
INSERT [dbo].[Product] ([ProductID], [ProductSKU], [Label], [Description]) VALUES (1, N'PRD001', N'First Product', N'My first product, dedicated to test.')
INSERT [dbo].[Product] ([ProductID], [ProductSKU], [Label], [Description]) VALUES (2, N'SED125', N'Another Product', N'Do you know this product?')
