USE [Kyrsavaya8]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 03.02.2025 0:32:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment](
	[EquipmentID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentName] [nvarchar](100) NOT NULL,
	[SerialNumber] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](100) NOT NULL,
	[Manufacturer] [nvarchar](100) NOT NULL,
	[PurchaseDate] [date] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Equipmen__34474599295C93BC] PRIMARY KEY CLUSTERED 
(
	[EquipmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepairRequests]    Script Date: 03.02.2025 0:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepairRequests](
	[RequestID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentID] [int] NOT NULL,
	[RequestDate] [date] NOT NULL,
	[RequestedBy] [int] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[AssignedTo] [int] NULL,
	[Description] [nvarchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 03.02.2025 0:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogs]    Script Date: 03.02.2025 0:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogs](
	[LogID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Action] [nvarchar](255) NOT NULL,
	[ActionDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 03.02.2025 0:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[PasswordHash] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[RoleID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Equipment] ON 

INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName], [SerialNumber], [Model], [Manufacturer], [PurchaseDate], [Status]) VALUES (1, N'Ноутбук HP EliteBook', N'SN123456789', N'840 G5', N'HP', CAST(N'2023-02-15' AS Date), N'Рабочее')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName], [SerialNumber], [Model], [Manufacturer], [PurchaseDate], [Status]) VALUES (2, N'Принтер Epson L3150', N'SN987654321', N'L3150', N'Epson', CAST(N'2022-07-10' AS Date), N'Рабочее')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName], [SerialNumber], [Model], [Manufacturer], [PurchaseDate], [Status]) VALUES (3, N'Сканер Canon DR-C240', N'SN456789123', N'DR-C240', N'Canon', CAST(N'2021-12-05' AS Date), N'На ремонте')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName], [SerialNumber], [Model], [Manufacturer], [PurchaseDate], [Status]) VALUES (4, N'Монитор Dell P2419H', N'SN852741963', N'P2419H', N'Dell', CAST(N'2023-05-20' AS Date), N'На ремонте')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName], [SerialNumber], [Model], [Manufacturer], [PurchaseDate], [Status]) VALUES (5, N'Клавиатура Logitech K120', N'SN369258147', N'K120', N'Logitech', CAST(N'2024-01-01' AS Date), N'Рабочее')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName], [SerialNumber], [Model], [Manufacturer], [PurchaseDate], [Status]) VALUES (6, N'Сервер Lenovo ThinkSystem', N'SN741852963', N'SR650', N'Lenovo', CAST(N'2020-09-30' AS Date), N'На ремонте')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName], [SerialNumber], [Model], [Manufacturer], [PurchaseDate], [Status]) VALUES (7, N'Рабочая станция Dell Precision', N'SN159357486', N'3640', N'Dell', CAST(N'2021-11-25' AS Date), N'Неисправное')
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentName], [SerialNumber], [Model], [Manufacturer], [PurchaseDate], [Status]) VALUES (8, N'Ноутбук HP EliteBook', N'SN123456790', N'850 G6', N'HP', CAST(N'2023-06-20' AS Date), N'На ремонте')
SET IDENTITY_INSERT [dbo].[Equipment] OFF
GO
SET IDENTITY_INSERT [dbo].[RepairRequests] ON 

INSERT [dbo].[RepairRequests] ([RequestID], [EquipmentID], [RequestDate], [RequestedBy], [Status], [AssignedTo], [Description]) VALUES (49, 1, CAST(N'2025-02-02' AS Date), 1, N'Назначено', 3, N'asdasda')
INSERT [dbo].[RepairRequests] ([RequestID], [EquipmentID], [RequestDate], [RequestedBy], [Status], [AssignedTo], [Description]) VALUES (51, 4, CAST(N'2025-02-02' AS Date), 1, N'Назначено', 3, N'asdasda')
INSERT [dbo].[RepairRequests] ([RequestID], [EquipmentID], [RequestDate], [RequestedBy], [Status], [AssignedTo], [Description]) VALUES (52, 6, CAST(N'2025-02-02' AS Date), 1, N'Назначено', 3, N'asdas')
INSERT [dbo].[RepairRequests] ([RequestID], [EquipmentID], [RequestDate], [RequestedBy], [Status], [AssignedTo], [Description]) VALUES (53, 8, CAST(N'2025-02-02' AS Date), 1, N'Отклонено', 3, N'fgbdhgdadfdfvs')
INSERT [dbo].[RepairRequests] ([RequestID], [EquipmentID], [RequestDate], [RequestedBy], [Status], [AssignedTo], [Description]) VALUES (54, 8, CAST(N'2025-02-02' AS Date), 1, N'Выполнено', 3, N'asdasf')
INSERT [dbo].[RepairRequests] ([RequestID], [EquipmentID], [RequestDate], [RequestedBy], [Status], [AssignedTo], [Description]) VALUES (55, 7, CAST(N'2025-02-02' AS Date), 1, N'Ожидает', NULL, N'asdas')
SET IDENTITY_INSERT [dbo].[RepairRequests] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (4, N'Пользователь')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (3, N'Техник')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[UserLogs] ON 

INSERT [dbo].[UserLogs] ([LogID], [UserID], [Action], [ActionDate]) VALUES (1, 1, N'Изменена заявка для оборудования: 8', CAST(N'2025-02-02T14:24:50.353' AS DateTime))
INSERT [dbo].[UserLogs] ([LogID], [UserID], [Action], [ActionDate]) VALUES (5, 1, N'Изменено оборудование: 8', CAST(N'2025-02-02T15:28:35.510' AS DateTime))
INSERT [dbo].[UserLogs] ([LogID], [UserID], [Action], [ActionDate]) VALUES (6, 1, N'Изменено оборудование: 8', CAST(N'2025-02-02T15:28:47.203' AS DateTime))
INSERT [dbo].[UserLogs] ([LogID], [UserID], [Action], [ActionDate]) VALUES (7, 1, N'Создана новая заявка для оборудования: 8', CAST(N'2025-02-02T15:29:33.537' AS DateTime))
INSERT [dbo].[UserLogs] ([LogID], [UserID], [Action], [ActionDate]) VALUES (8, 1, N'Изменена заявка для оборудования: 8', CAST(N'2025-02-02T15:29:54.063' AS DateTime))
INSERT [dbo].[UserLogs] ([LogID], [UserID], [Action], [ActionDate]) VALUES (9, 1, N'Изменена заявка для оборудования: 8', CAST(N'2025-02-02T15:30:10.240' AS DateTime))
INSERT [dbo].[UserLogs] ([LogID], [UserID], [Action], [ActionDate]) VALUES (10, 1, N'Изменено оборудование: 7', CAST(N'2025-02-02T23:23:44.397' AS DateTime))
INSERT [dbo].[UserLogs] ([LogID], [UserID], [Action], [ActionDate]) VALUES (11, 1, N'Создана новая заявка для оборудования: 7', CAST(N'2025-02-02T23:23:55.823' AS DateTime))
INSERT [dbo].[UserLogs] ([LogID], [UserID], [Action], [ActionDate]) VALUES (12, 1, N'Изменено оборудование: 7', CAST(N'2025-02-02T23:29:41.113' AS DateTime))
SET IDENTITY_INSERT [dbo].[UserLogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [UserName], [PasswordHash], [Email], [RoleID]) VALUES (1, N'Admin', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', N'1', 1)
INSERT [dbo].[Users] ([UserID], [UserName], [PasswordHash], [Email], [RoleID]) VALUES (2, N'User', N'd4735e3a265e16eee03f59718b9b5d03019c07d8b6c51f90da3a666eec13ab35', N'2', 4)
INSERT [dbo].[Users] ([UserID], [UserName], [PasswordHash], [Email], [RoleID]) VALUES (3, N'Vladis', N'07c77e2078f6e1c09bb15305806a62daa9472a7c3440c5b3a4cb4c987f7dcbc9', N'Vladislav@gmail.com', 3)
INSERT [dbo].[Users] ([UserID], [UserName], [PasswordHash], [Email], [RoleID]) VALUES (4, N'Dmitris', N'21c6dc8fa70ec7866dd8f9d0ca2b568b327e89028bbb5731a16c28d13d02ff15', N'Dmitriy@gmail.com', 2)
INSERT [dbo].[Users] ([UserID], [UserName], [PasswordHash], [Email], [RoleID]) VALUES (5, N'Manager', N'426f16043906b0f8add09b6aef7babb0e781530d9e50a56c90455f87a78cb48d', N'asdasda', 4)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Equipmen__048A0008CABA3BC4]    Script Date: 03.02.2025 0:32:14 ******/
ALTER TABLE [dbo].[Equipment] ADD  CONSTRAINT [UQ__Equipmen__048A0008CABA3BC4] UNIQUE NONCLUSTERED 
(
	[SerialNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Roles__8A2B61603A795A8E]    Script Date: 03.02.2025 0:32:14 ******/
ALTER TABLE [dbo].[Roles] ADD UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__A9D105346B983A08]    Script Date: 03.02.2025 0:32:14 ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__C9F28456343F2A30]    Script Date: 03.02.2025 0:32:14 ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserLogs] ADD  DEFAULT (getdate()) FOR [ActionDate]
GO
ALTER TABLE [dbo].[RepairRequests]  WITH CHECK ADD FOREIGN KEY([AssignedTo])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[RepairRequests]  WITH CHECK ADD  CONSTRAINT [FK__RepairReq__Equip__46E78A0C] FOREIGN KEY([EquipmentID])
REFERENCES [dbo].[Equipment] ([EquipmentID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RepairRequests] CHECK CONSTRAINT [FK__RepairReq__Equip__46E78A0C]
GO
ALTER TABLE [dbo].[RepairRequests]  WITH CHECK ADD FOREIGN KEY([RequestedBy])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[UserLogs]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [CK__Equipment__Statu__403A8C7D] CHECK  (([Status]='Списано' OR [Status]='На ремонте' OR [Status]='Неисправное' OR [Status]='Рабочее'))
GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [CK__Equipment__Statu__403A8C7D]
GO
ALTER TABLE [dbo].[RepairRequests]  WITH CHECK ADD CHECK  (([Status]='Отклонено' OR [Status]='Выполнено' OR [Status]='Назначено' OR [Status]='Ожидает'))
GO
