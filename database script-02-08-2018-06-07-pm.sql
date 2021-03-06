USE [cotdb]
GO
/****** Object:  Table [dbo].[Bus]    Script Date: 20/11/39 06:08:24 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bus](
	[BusId] [int] IDENTITY(1,1) NOT NULL,
	[BusGPSId] [nvarchar](50) NULL,
	[OrganizationId] [int] NOT NULL,
	[Capacity] [int] NOT NULL,
	[PlateNo] [nvarchar](50) NULL,
	[ModelDetails] [nvarchar](100) NULL,
	[DriverFullName] [nvarchar](100) NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Bus] PRIMARY KEY CLUSTERED 
(
	[BusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusExit]    Script Date: 20/11/39 06:08:24 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusExit](
	[Id] [int] NOT NULL,
	[BusId] [int] NOT NULL,
	[FlightNo] [nvarchar](50) NULL,
	[AirportName] [nvarchar](300) NULL,
	[HallName] [nvarchar](300) NULL,
	[ExitStatementNo] [nvarchar](50) NULL,
	[ExitDate] [datetime] NULL,
	[HajjNo] [int] NOT NULL,
 CONSTRAINT [PK_BusExit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hajj]    Script Date: 20/11/39 06:08:24 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hajj](
	[HajjId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[SecondName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[SurName] [nvarchar](50) NOT NULL,
	[PassportNo] [nvarchar](50) NOT NULL,
	[NationalityId] [int] NOT NULL,
	[Birthdate] [date] NOT NULL,
	[HajjStatusId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Hajj] PRIMARY KEY CLUSTERED 
(
	[HajjId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HajjBus]    Script Date: 20/11/39 06:08:24 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HajjBus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HajjId] [int] NOT NULL,
	[BusId] [int] NOT NULL,
	[CreatedByUserId] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_HajjBus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LK_Action]    Script Date: 20/11/39 06:08:24 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LK_Action](
	[ActionId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[OrgTypeId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_LK_Action] PRIMARY KEY CLUSTERED 
(
	[ActionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LK_HajjStatus]    Script Date: 20/11/39 06:08:24 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LK_HajjStatus](
	[HajjStatusId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_HajjStatus] PRIMARY KEY CLUSTERED 
(
	[HajjStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LK_Nationality]    Script Date: 20/11/39 06:08:25 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LK_Nationality](
	[NationalityId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Nationality] PRIMARY KEY CLUSTERED 
(
	[NationalityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LK_OrgType]    Script Date: 20/11/39 06:08:25 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LK_OrgType](
	[OrgTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_LK_Role] PRIMARY KEY CLUSTERED 
(
	[OrgTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LK_RequestState]    Script Date: 20/11/39 06:08:25 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LK_RequestState](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_LK_BusRequestState] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LK_RequestType]    Script Date: 20/11/39 06:08:25 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LK_RequestType](
	[TypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_LK_RequestType] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organization]    Script Date: 20/11/39 06:08:25 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization](
	[OrganizationId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[OrgTypeId] [int] NOT NULL,
	[ParentOrgId] [int] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Organization] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 20/11/39 06:08:26 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[RequestId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RequestStatusId] [int] NOT NULL,
	[TypeId] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_BusRequest] PRIMARY KEY CLUSTERED 
(
	[RequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequestActionsDetails]    Script Date: 20/11/39 06:08:26 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestActionsDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BusRequestId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[ActionId] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[ActionDate] [datetime] NOT NULL,
 CONSTRAINT [PK_RequestActionsDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequestDetails]    Script Date: 20/11/39 06:08:26 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RequestId] [int] NOT NULL,
	[Capacity] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Note] [nvarchar](100) NULL,
 CONSTRAINT [PK_BusRequestDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 20/11/39 06:08:26 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[MobileNo] [nvarchar](20) NULL,
	[Email] [nvarchar](300) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bus]  WITH CHECK ADD  CONSTRAINT [FK_Bus_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId])
GO
ALTER TABLE [dbo].[Bus] CHECK CONSTRAINT [FK_Bus_Organization]
GO
ALTER TABLE [dbo].[BusExit]  WITH CHECK ADD  CONSTRAINT [FK_BusExit_Bus] FOREIGN KEY([BusId])
REFERENCES [dbo].[Bus] ([BusId])
GO
ALTER TABLE [dbo].[BusExit] CHECK CONSTRAINT [FK_BusExit_Bus]
GO
ALTER TABLE [dbo].[Hajj]  WITH CHECK ADD  CONSTRAINT [FK_Hajj_LK_HajjStatus] FOREIGN KEY([HajjStatusId])
REFERENCES [dbo].[LK_HajjStatus] ([HajjStatusId])
GO
ALTER TABLE [dbo].[Hajj] CHECK CONSTRAINT [FK_Hajj_LK_HajjStatus]
GO
ALTER TABLE [dbo].[Hajj]  WITH CHECK ADD  CONSTRAINT [FK_Hajj_LK_Nationality] FOREIGN KEY([NationalityId])
REFERENCES [dbo].[LK_Nationality] ([NationalityId])
GO
ALTER TABLE [dbo].[Hajj] CHECK CONSTRAINT [FK_Hajj_LK_Nationality]
GO
ALTER TABLE [dbo].[HajjBus]  WITH CHECK ADD  CONSTRAINT [FK_HajjBus_Bus] FOREIGN KEY([BusId])
REFERENCES [dbo].[Bus] ([BusId])
GO
ALTER TABLE [dbo].[HajjBus] CHECK CONSTRAINT [FK_HajjBus_Bus]
GO
ALTER TABLE [dbo].[HajjBus]  WITH CHECK ADD  CONSTRAINT [FK_HajjBus_Hajj] FOREIGN KEY([HajjId])
REFERENCES [dbo].[Hajj] ([HajjId])
GO
ALTER TABLE [dbo].[HajjBus] CHECK CONSTRAINT [FK_HajjBus_Hajj]
GO
ALTER TABLE [dbo].[HajjBus]  WITH CHECK ADD  CONSTRAINT [FK_HajjBus_User] FOREIGN KEY([CreatedByUserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[HajjBus] CHECK CONSTRAINT [FK_HajjBus_User]
GO
ALTER TABLE [dbo].[Organization]  WITH CHECK ADD  CONSTRAINT [FK_Organization_LK_OrgType] FOREIGN KEY([OrgTypeId])
REFERENCES [dbo].[LK_OrgType] ([OrgTypeId])
GO
ALTER TABLE [dbo].[Organization] CHECK CONSTRAINT [FK_Organization_LK_OrgType]
GO
ALTER TABLE [dbo].[Organization]  WITH CHECK ADD  CONSTRAINT [FK_Organization_Organization] FOREIGN KEY([ParentOrgId])
REFERENCES [dbo].[Organization] ([OrganizationId])
GO
ALTER TABLE [dbo].[Organization] CHECK CONSTRAINT [FK_Organization_Organization]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_BusRequest_LK_BusRequestState] FOREIGN KEY([RequestStatusId])
REFERENCES [dbo].[LK_RequestState] ([Id])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_BusRequest_LK_BusRequestState]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_BusRequest_LK_RequestType] FOREIGN KEY([TypeId])
REFERENCES [dbo].[LK_RequestType] ([TypeId])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_BusRequest_LK_RequestType]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_User]
GO
ALTER TABLE [dbo].[RequestActionsDetails]  WITH CHECK ADD  CONSTRAINT [FK_RequestActionsDetails_BusRequest] FOREIGN KEY([BusRequestId])
REFERENCES [dbo].[Request] ([RequestId])
GO
ALTER TABLE [dbo].[RequestActionsDetails] CHECK CONSTRAINT [FK_RequestActionsDetails_BusRequest]
GO
ALTER TABLE [dbo].[RequestActionsDetails]  WITH CHECK ADD  CONSTRAINT [FK_RequestActionsDetails_LK_Action] FOREIGN KEY([ActionId])
REFERENCES [dbo].[LK_Action] ([ActionId])
GO
ALTER TABLE [dbo].[RequestActionsDetails] CHECK CONSTRAINT [FK_RequestActionsDetails_LK_Action]
GO
ALTER TABLE [dbo].[RequestActionsDetails]  WITH CHECK ADD  CONSTRAINT [FK_RequestActionsDetails_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[RequestActionsDetails] CHECK CONSTRAINT [FK_RequestActionsDetails_User]
GO
ALTER TABLE [dbo].[RequestDetails]  WITH CHECK ADD  CONSTRAINT [FK_BusRequestDetails_BusRequest] FOREIGN KEY([RequestId])
REFERENCES [dbo].[Request] ([RequestId])
GO
ALTER TABLE [dbo].[RequestDetails] CHECK CONSTRAINT [FK_BusRequestDetails_BusRequest]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([OrganizationId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Organization]
GO
