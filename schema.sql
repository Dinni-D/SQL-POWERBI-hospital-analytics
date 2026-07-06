USE [Data Analysis]
GO

/****** Object:  Table [dbo].[patients]    Script Date: 06-07-2026 12:25:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[patients](
	[patient_id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Age] [int] NULL,
	[Gender] [nvarchar](50) NULL,
	[Blood_Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_patients] PRIMARY KEY CLUSTERED 
(
	[patient_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


USE [Data Analysis]
GO

/****** Object:  Table [dbo].[admissions]    Script Date: 06-07-2026 12:27:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[admissions](
	[patient_id] [int] NOT NULL,
	[Medical_Condition] [nvarchar](max) NULL,
	[Doctor] [nvarchar](max) NULL,
	[Hospital] [nvarchar](max) NULL,
	[Admission_Type] [nvarchar](max) NULL,
	[Date_of_Admission] [date] NULL,
	[Room_Number] [int] NULL,
 CONSTRAINT [PK_admissions] PRIMARY KEY CLUSTERED 
(
	[patient_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


USE [Data Analysis]
GO

/****** Object:  Table [dbo].[billing]    Script Date: 06-07-2026 12:28:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[billing](
	[patient_id] [int] NOT NULL,
	[Insurance_Provider] [nvarchar](max) NULL,
	[Billing_Amount] [float] NULL,
	[Medication] [nvarchar](max) NULL,
 CONSTRAINT [PK_billing] PRIMARY KEY CLUSTERED 
(
	[patient_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


USE [Data Analysis]
GO

/****** Object:  Table [dbo].[discharge]    Script Date: 06-07-2026 12:29:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[discharge](
	[patient_id] [int] NOT NULL,
	[Discharge_Date] [date] NULL,
	[Test_Results] [nvarchar](max) NULL,
 CONSTRAINT [PK_discharge] PRIMARY KEY CLUSTERED 
(
	[patient_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO









