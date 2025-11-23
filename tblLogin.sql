USE [SecureAuthenticate]
GO

/****** Object:  Table [dbo].[tblLogin]    Script Date: 24/11/2025 2:26:10 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblLogin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[PhoneNo] [nvarchar](20) NULL,
	[Password] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tblLogin] ADD  DEFAULT (getdate()) FOR [CreatedDateTime]
GO


