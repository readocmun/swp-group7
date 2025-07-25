USE [master]
GO
/****** Object:  Database [phongkham]    Script Date: 3/20/2024 11:58:28 PM ******/
CREATE DATABASE [phongkham]
GO
ALTER DATABASE [phongkham] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [phongkham] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [phongkham] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [phongkham] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [phongkham] SET ARITHABORT OFF 
GO
ALTER DATABASE [phongkham] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [phongkham] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [phongkham] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [phongkham] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [phongkham] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [phongkham] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [phongkham] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [phongkham] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [phongkham] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [phongkham] SET  DISABLE_BROKER 
GO
ALTER DATABASE [phongkham] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [phongkham] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [phongkham] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [phongkham] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [phongkham] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [phongkham] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [phongkham] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [phongkham] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [phongkham] SET  MULTI_USER 
GO
ALTER DATABASE [phongkham] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [phongkham] SET DB_CHAINING OFF 
GO
ALTER DATABASE [phongkham] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [phongkham] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [phongkham] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [phongkham] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [phongkham] SET QUERY_STORE = OFF
GO
USE [phongkham]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 3/20/2024 11:58:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[title] [nvarchar](max) NULL,
	[content] [nvarchar](max) NULL,
	[author] [nvarchar](max) NULL,
	[date] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 3/20/2024 11:58:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[doctor_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[status] [int] NOT NULL,
	[note] [nvarchar](max) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[create_date] [datetime] NULL,
	[real_end_date] [datetime] NULL,
	[real_start_date] [datetime] NULL,
	[feedback_id] [int] NULL,
	[total_price] [float] NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking_Medicine]    Script Date: 3/20/2024 11:58:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking_Medicine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[booking_id] [int] NOT NULL,
	[medicine_id] [int] NOT NULL,
	[price] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[note] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Booking_Medical] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Certificate]    Script Date: 3/20/2024 11:58:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certificate](
	[certificationId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[experience] [int] NULL,
	[majorId] [int] NULL,
	[university] [varchar](255) NULL,
	[certificate] [varchar](255) NULL,
	[address] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[certificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[commentPost]    Script Date: 3/20/2024 11:58:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[commentPost](
	[commentPostId] [int] IDENTITY(1,1) NOT NULL,
	[postId] [int] NULL,
	[commentPostContent] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[commentPostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Config]    Script Date: 3/20/2024 11:58:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Config](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[config_name] [nvarchar](50) NOT NULL,
	[config_value] [float] NOT NULL,
 CONSTRAINT [PK_Config] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConnectionMedicalAndMedicine]    Script Date: 3/20/2024 11:58:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConnectionMedicalAndMedicine](
	[connectionMMId] [int] IDENTITY(1,1) NOT NULL,
	[medicineId] [int] NULL,
	[medicalId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[connectionMMId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DayOfWeeks]    Script Date: 3/20/2024 11:58:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DayOfWeeks](
	[dayOfWeekId] [int] IDENTITY(1,1) NOT NULL,
	[dayOfWeekName] [nvarchar](max) NULL,
	[dayOfWeekDay] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[dayOfWeekId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diagnosed]    Script Date: 3/20/2024 11:58:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diagnosed](
	[diagnosedId] [int] IDENTITY(1,1) NOT NULL,
	[diagnosed] [nvarchar](255) NULL,
	[price] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[diagnosedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoctorSchedule]    Script Date: 3/20/2024 11:58:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorSchedule](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
	[doctor_id] [int] NOT NULL,
	[status] [int] NOT NULL,
	[approver_id] [int] NULL,
 CONSTRAINT [PK_DoctorSchedule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 3/20/2024 11:58:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[feedbackId] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](max) NULL,
	[vote] [int] NOT NULL,
	[create_date] [datetime] NULL,
 CONSTRAINT [PK__Feedback__2613FD24DD57B4AE] PRIMARY KEY CLUSTERED 
(
	[feedbackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Major]    Script Date: 3/20/2024 11:58:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Major](
	[majorId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[description] [nvarchar](max) NULL,
	[imageUrl] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[majorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medical]    Script Date: 3/20/2024 11:58:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medical](
	[medicalId] [int] IDENTITY(1,1) NOT NULL,
	[scheduleMedicalId] [int] NULL,
	[bennhanMedicalId] [int] NULL,
	[diagnosedMedicalId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[medicalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicine]    Script Date: 3/20/2024 11:58:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicine](
	[medicineId] [int] IDENTITY(1,1) NOT NULL,
	[medicineName] [nvarchar](255) NULL,
	[quantity] [int] NULL,
	[description] [nvarchar](max) NULL,
	[price] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[medicineId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 3/20/2024 11:58:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[Notification_ID] [int] IDENTITY(1,1) NOT NULL,
	[Readed] [bit] NULL,
	[User_ID] [int] NOT NULL,
	[Notification_Content] [nvarchar](500) NOT NULL,
	[Attached_Link] [varchar](200) NULL,
	[Created_At] [datetime] NULL,
	[Updated_At] [datetime] NULL,
	[Deleted_At] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Notification_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 3/20/2024 11:58:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[postId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[title] [char](255) NULL,
	[description] [varchar](255) NULL,
	[thumbnail] [varchar](255) NULL,
	[author] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[postId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 3/20/2024 11:58:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[scheduleId] [int] IDENTITY(1,1) NOT NULL,
	[benhnhanScheduleId] [int] NULL,
	[bacsiScheduleId] [int] NULL,
	[majorScheduleId] [int] NULL,
	[timeManagementScheduleId] [int] NULL,
	[note] [nvarchar](255) NULL,
	[status] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[scheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeChosen]    Script Date: 3/20/2024 11:58:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeChosen](
	[timeChosenId] [int] IDENTITY(1,1) NOT NULL,
	[scheduleTimeChosenId] [int] NULL,
	[timeSessionId] [int] NULL,
	[status] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[timeChosenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeConfig]    Script Date: 3/20/2024 11:58:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeConfig](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[config_name] [nvarchar](50) NOT NULL,
	[start_hour] [time](7) NOT NULL,
	[end_hour] [time](7) NOT NULL,
 CONSTRAINT [PK_TimeConfig] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeManagement]    Script Date: 3/20/2024 11:58:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeManagement](
	[timeManagementId] [int] IDENTITY(1,1) NOT NULL,
	[timeStart] [nvarchar](max) NULL,
	[timeEnd] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[timeManagementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSession]    Script Date: 3/20/2024 11:58:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSession](
	[timeSessionId] [int] IDENTITY(1,1) NOT NULL,
	[timeManagementSessionId] [int] NULL,
	[userTimeSessionId] [int] NULL,
	[dayOfWeekId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[timeSessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/20/2024 11:58:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[majorId] [int] NULL,
	[role] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[avatar] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL,
	[phone] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[password] [nvarchar](max) NULL,
	[token] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([id], [userId], [title], [content], [author], [date]) VALUES (1, 2, N'Navigating the Health Horizon: Exploring the Latest in Medical Innovations', N'In a world where medical breakthroughs are continually reshaping the landscape of healthcare, staying informed is paramount. Our blog serves as your compass through this ever-evolving realm of medicine. From groundbreaking treatments to cutting-edge technologies, we delve into the forefront of medical innovation.

Explore with us as we uncover the mysteries of the human body and the wonders of modern medical science. Whether it''s a deep dive into the latest research on combating diseases or an exploration of revolutionary surgical techniques, we provide comprehensive insights into the advancements shaping the future of healthcare.

Join us on this journey as we navigate through the complexities of medical discovery, shedding light on the transformative developments that hold the promise of healthier tomorrows. Welcome to a world where knowledge is power and innovation knows no bounds. Welcome to our medical blog.', N'John Doe', N'2024-03-16')
INSERT [dbo].[Blog] ([id], [userId], [title], [content], [author], [date]) VALUES (2, 2, N'Navigating the Health Horizon: Exploring the Latest in Medical Innovations', N'In a world where medical breakthroughs are continually reshaping the landscape of healthcare, staying informed is paramount. Our blog serves as your compass through this ever-evolving realm of medicine. From groundbreaking treatments to cutting-edge technologies, we delve into the forefront of medical innovation.

Explore with us as we uncover the mysteries of the human body and the wonders of modern medical science. Whether it''s a deep dive into the latest research on combating diseases or an exploration of revolutionary surgical techniques, we provide comprehensive insights into the advancements shaping the future of healthcare.

Join us on this journey as we navigate through the complexities of medical discovery, shedding light on the transformative developments that hold the promise of healthier tomorrows. Welcome to a world where knowledge is power and innovation knows no bounds. Welcome to our medical blog.', N'John Doe', N'2024-03-16')
INSERT [dbo].[Blog] ([id], [userId], [title], [content], [author], [date]) VALUES (3, 2, N'Navigating the Health Horizon: Exploring the Latest in Medical Innovations', N'In a world where medical breakthroughs are continually reshaping the landscape of healthcare, staying informed is paramount. Our blog serves as your compass through this ever-evolving realm of medicine. From groundbreaking treatments to cutting-edge technologies, we delve into the forefront of medical innovation.

Explore with us as we uncover the mysteries of the human body and the wonders of modern medical science. Whether it''s a deep dive into the latest research on combating diseases or an exploration of revolutionary surgical techniques, we provide comprehensive insights into the advancements shaping the future of healthcare.

Join us on this journey as we navigate through the complexities of medical discovery, shedding light on the transformative developments that hold the promise of healthier tomorrows. Welcome to a world where knowledge is power and innovation knows no bounds. Welcome to our medical blog.', N'John Doe', N'2024-03-16')
INSERT [dbo].[Blog] ([id], [userId], [title], [content], [author], [date]) VALUES (4, 2, N'Navigating the Health Horizon: Exploring the Latest in Medical Innovations', N'In a world where medical breakthroughs are continually reshaping the landscape of healthcare, staying informed is paramount. Our blog serves as your compass through this ever-evolving realm of medicine. From groundbreaking treatments to cutting-edge technologies, we delve into the forefront of medical innovation.

Explore with us as we uncover the mysteries of the human body and the wonders of modern medical science. Whether it''s a deep dive into the latest research on combating diseases or an exploration of revolutionary surgical techniques, we provide comprehensive insights into the advancements shaping the future of healthcare.

Join us on this journey as we navigate through the complexities of medical discovery, shedding light on the transformative developments that hold the promise of healthier tomorrows. Welcome to a world where knowledge is power and innovation knows no bounds. Welcome to our medical blog.', N'John Doe', N'2024-03-16')
INSERT [dbo].[Blog] ([id], [userId], [title], [content], [author], [date]) VALUES (5, 2, N'Navigating the Health Horizon: Exploring the Latest in Medical Innovations', N'In a world where medical breakthroughs are continually reshaping the landscape of healthcare, staying informed is paramount. Our blog serves as your compass through this ever-evolving realm of medicine. From groundbreaking treatments to cutting-edge technologies, we delve into the forefront of medical innovation.

Explore with us as we uncover the mysteries of the human body and the wonders of modern medical science. Whether it''s a deep dive into the latest research on combating diseases or an exploration of revolutionary surgical techniques, we provide comprehensive insights into the advancements shaping the future of healthcare.

Join us on this journey as we navigate through the complexities of medical discovery, shedding light on the transformative developments that hold the promise of healthier tomorrows. Welcome to a world where knowledge is power and innovation knows no bounds. Welcome to our medical blog.', N'John Doe', N'2024-03-16')
INSERT [dbo].[Blog] ([id], [userId], [title], [content], [author], [date]) VALUES (6, 2, N'Navigating the Health Horizon: Exploring the Latest in Medical Innovations', N'In a world where medical breakthroughs are continually reshaping the landscape of healthcare, staying informed is paramount. Our blog serves as your compass through this ever-evolving realm of medicine. From groundbreaking treatments to cutting-edge technologies, we delve into the forefront of medical innovation.

Explore with us as we uncover the mysteries of the human body and the wonders of modern medical science. Whether it''s a deep dive into the latest research on combating diseases or an exploration of revolutionary surgical techniques, we provide comprehensive insights into the advancements shaping the future of healthcare.

Join us on this journey as we navigate through the complexities of medical discovery, shedding light on the transformative developments that hold the promise of healthier tomorrows. Welcome to a world where knowledge is power and innovation knows no bounds. Welcome to our medical blog.', N'John Doe', N'2024-03-16')
INSERT [dbo].[Blog] ([id], [userId], [title], [content], [author], [date]) VALUES (7, 2, N'Navigating the Health Horizon: Exploring the Latest in Medical Innovations', N'In a world where medical breakthroughs are continually reshaping the landscape of healthcare, staying informed is paramount. Our blog serves as your compass through this ever-evolving realm of medicine. From groundbreaking treatments to cutting-edge technologies, we delve into the forefront of medical innovation.

Explore with us as we uncover the mysteries of the human body and the wonders of modern medical science. Whether it''s a deep dive into the latest research on combating diseases or an exploration of revolutionary surgical techniques, we provide comprehensive insights into the advancements shaping the future of healthcare.

Join us on this journey as we navigate through the complexities of medical discovery, shedding light on the transformative developments that hold the promise of healthier tomorrows. Welcome to a world where knowledge is power and innovation knows no bounds. Welcome to our medical blog.', N'John Doe', N'2024-03-16')
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([id], [doctor_id], [customer_id], [status], [note], [start_date], [end_date], [create_date], [real_end_date], [real_start_date], [feedback_id], [total_price]) VALUES (4, 29, 1, 3, N'On Time   ', CAST(N'2024-03-04T14:00:00.000' AS DateTime), CAST(N'2024-03-04T14:30:00.000' AS DateTime), CAST(N'2024-02-02T14:00:00.000' AS DateTime), CAST(N'2024-03-07T02:34:56.413' AS DateTime), CAST(N'2024-03-07T02:34:38.363' AS DateTime), NULL, 195000)
INSERT [dbo].[Booking] ([id], [doctor_id], [customer_id], [status], [note], [start_date], [end_date], [create_date], [real_end_date], [real_start_date], [feedback_id], [total_price]) VALUES (6, 29, 1, 3, N'Good      ', CAST(N'2024-03-04T15:00:00.000' AS DateTime), CAST(N'2024-03-04T15:30:00.000' AS DateTime), CAST(N'2024-02-03T14:00:00.000' AS DateTime), CAST(N'2024-03-07T02:07:23.570' AS DateTime), CAST(N'2024-03-07T02:07:10.813' AS DateTime), NULL, 165000)
INSERT [dbo].[Booking] ([id], [doctor_id], [customer_id], [status], [note], [start_date], [end_date], [create_date], [real_end_date], [real_start_date], [feedback_id], [total_price]) VALUES (8, 45, 1, 3, N'Be nice to me', CAST(N'2024-03-07T08:30:00.000' AS DateTime), CAST(N'2024-03-07T09:00:00.000' AS DateTime), CAST(N'2024-03-07T12:42:09.127' AS DateTime), CAST(N'2024-03-07T12:44:54.037' AS DateTime), CAST(N'2024-03-07T12:44:20.293' AS DateTime), 3, 165000)
INSERT [dbo].[Booking] ([id], [doctor_id], [customer_id], [status], [note], [start_date], [end_date], [create_date], [real_end_date], [real_start_date], [feedback_id], [total_price]) VALUES (9, 45, 1, 3, N'Take care', CAST(N'2024-03-07T09:00:00.000' AS DateTime), CAST(N'2024-03-07T09:30:00.000' AS DateTime), CAST(N'2024-03-07T14:21:34.257' AS DateTime), CAST(N'2024-03-07T14:43:46.687' AS DateTime), CAST(N'2024-03-07T14:40:56.540' AS DateTime), 4, 195000)
INSERT [dbo].[Booking] ([id], [doctor_id], [customer_id], [status], [note], [start_date], [end_date], [create_date], [real_end_date], [real_start_date], [feedback_id], [total_price]) VALUES (10, 45, 1, 3, N'Take care to me', CAST(N'2024-03-07T09:30:00.000' AS DateTime), CAST(N'2024-03-07T10:00:00.000' AS DateTime), CAST(N'2024-03-07T17:58:37.513' AS DateTime), CAST(N'2024-03-07T18:12:51.273' AS DateTime), CAST(N'2024-03-07T18:08:45.667' AS DateTime), NULL, 165000)
INSERT [dbo].[Booking] ([id], [doctor_id], [customer_id], [status], [note], [start_date], [end_date], [create_date], [real_end_date], [real_start_date], [feedback_id], [total_price]) VALUES (1007, 45, 1, 4, N'abc', CAST(N'2024-03-12T08:30:00.000' AS DateTime), CAST(N'2024-03-12T09:00:00.000' AS DateTime), CAST(N'2024-03-11T00:43:04.567' AS DateTime), NULL, CAST(N'2024-03-11T01:02:57.097' AS DateTime), NULL, NULL)
INSERT [dbo].[Booking] ([id], [doctor_id], [customer_id], [status], [note], [start_date], [end_date], [create_date], [real_end_date], [real_start_date], [feedback_id], [total_price]) VALUES (2007, 29, 1, 1, N'booked', CAST(N'2024-03-14T08:30:00.000' AS DateTime), CAST(N'2024-03-14T09:00:00.000' AS DateTime), CAST(N'2024-03-14T16:34:19.327' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Booking] ([id], [doctor_id], [customer_id], [status], [note], [start_date], [end_date], [create_date], [real_end_date], [real_start_date], [feedback_id], [total_price]) VALUES (2008, 29, 1, 3, N'booking', CAST(N'2024-03-14T08:00:00.000' AS DateTime), CAST(N'2024-03-14T08:30:00.000' AS DateTime), CAST(N'2024-03-14T16:42:41.170' AS DateTime), CAST(N'2024-03-18T18:53:59.797' AS DateTime), CAST(N'2024-03-18T18:53:38.817' AS DateTime), NULL, 165000)
INSERT [dbo].[Booking] ([id], [doctor_id], [customer_id], [status], [note], [start_date], [end_date], [create_date], [real_end_date], [real_start_date], [feedback_id], [total_price]) VALUES (2010, 29, 1, 3, N'Booking', CAST(N'2024-03-15T09:30:00.000' AS DateTime), CAST(N'2024-03-15T10:00:00.000' AS DateTime), CAST(N'2024-03-14T16:57:12.933' AS DateTime), CAST(N'2024-03-18T19:41:36.633' AS DateTime), CAST(N'2024-03-18T19:32:40.987' AS DateTime), 2002, 180000)
INSERT [dbo].[Booking] ([id], [doctor_id], [customer_id], [status], [note], [start_date], [end_date], [create_date], [real_end_date], [real_start_date], [feedback_id], [total_price]) VALUES (2011, 29, 1, 2, N'book', CAST(N'2024-03-16T08:00:00.000' AS DateTime), CAST(N'2024-03-16T08:30:00.000' AS DateTime), CAST(N'2024-03-15T16:00:26.887' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Booking] ([id], [doctor_id], [customer_id], [status], [note], [start_date], [end_date], [create_date], [real_end_date], [real_start_date], [feedback_id], [total_price]) VALUES (3007, 29, 1, 1, N'booking', CAST(N'2024-03-17T08:30:00.000' AS DateTime), CAST(N'2024-03-17T09:00:00.000' AS DateTime), CAST(N'2024-03-16T17:04:23.040' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Booking] ([id], [doctor_id], [customer_id], [status], [note], [start_date], [end_date], [create_date], [real_end_date], [real_start_date], [feedback_id], [total_price]) VALUES (3008, 29, 1, 1, N'Hehehe', CAST(N'2024-03-17T08:30:00.000' AS DateTime), CAST(N'2024-03-17T09:00:00.000' AS DateTime), CAST(N'2024-03-16T17:10:28.757' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Booking] ([id], [doctor_id], [customer_id], [status], [note], [start_date], [end_date], [create_date], [real_end_date], [real_start_date], [feedback_id], [total_price]) VALUES (3009, 29, 1, 1, N'Booking', CAST(N'2024-03-17T08:00:00.000' AS DateTime), CAST(N'2024-03-17T08:30:00.000' AS DateTime), CAST(N'2024-03-16T17:21:28.343' AS DateTime), NULL, NULL, 2, NULL)
INSERT [dbo].[Booking] ([id], [doctor_id], [customer_id], [status], [note], [start_date], [end_date], [create_date], [real_end_date], [real_start_date], [feedback_id], [total_price]) VALUES (3010, 29, 1, 3, N'hehehe', CAST(N'2024-03-17T08:30:00.000' AS DateTime), CAST(N'2024-03-17T09:00:00.000' AS DateTime), CAST(N'2024-03-16T17:23:43.607' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[Booking] ([id], [doctor_id], [customer_id], [status], [note], [start_date], [end_date], [create_date], [real_end_date], [real_start_date], [feedback_id], [total_price]) VALUES (3011, 29, 1, 3, N'note', CAST(N'2024-03-19T13:00:00.000' AS DateTime), CAST(N'2024-03-19T13:30:00.000' AS DateTime), CAST(N'2024-03-18T19:20:20.017' AS DateTime), CAST(N'2024-03-18T22:22:23.200' AS DateTime), CAST(N'2024-03-18T22:20:56.500' AS DateTime), 1002, 165000)
INSERT [dbo].[Booking] ([id], [doctor_id], [customer_id], [status], [note], [start_date], [end_date], [create_date], [real_end_date], [real_start_date], [feedback_id], [total_price]) VALUES (3012, 45, 1, 1, N'book', CAST(N'2024-03-19T08:30:00.000' AS DateTime), CAST(N'2024-03-19T09:00:00.000' AS DateTime), CAST(N'2024-03-18T22:45:06.010' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Booking] OFF
GO
SET IDENTITY_INSERT [dbo].[Booking_Medicine] ON 

INSERT [dbo].[Booking_Medicine] ([id], [booking_id], [medicine_id], [price], [quantity], [note]) VALUES (8, 6, 2, 15000, 1, N'hehe')
INSERT [dbo].[Booking_Medicine] ([id], [booking_id], [medicine_id], [price], [quantity], [note]) VALUES (16, 4, 2, 15000, 1, N'every day')
INSERT [dbo].[Booking_Medicine] ([id], [booking_id], [medicine_id], [price], [quantity], [note]) VALUES (17, 4, 1, 15000, 2, N'every time')
INSERT [dbo].[Booking_Medicine] ([id], [booking_id], [medicine_id], [price], [quantity], [note]) VALUES (18, 8, 2, 15000, 1, N'8 hour/1 tablet')
INSERT [dbo].[Booking_Medicine] ([id], [booking_id], [medicine_id], [price], [quantity], [note]) VALUES (19, 9, 2, 15000, 1, N'every morning')
INSERT [dbo].[Booking_Medicine] ([id], [booking_id], [medicine_id], [price], [quantity], [note]) VALUES (20, 9, 1, 15000, 2, N'')
INSERT [dbo].[Booking_Medicine] ([id], [booking_id], [medicine_id], [price], [quantity], [note]) VALUES (21, 10, 1, 15000, 1, N'Every morning')
INSERT [dbo].[Booking_Medicine] ([id], [booking_id], [medicine_id], [price], [quantity], [note]) VALUES (1018, 2008, 2, 15000, 1, N'')
INSERT [dbo].[Booking_Medicine] ([id], [booking_id], [medicine_id], [price], [quantity], [note]) VALUES (1019, 2010, 1, 15000, 2, N'')
INSERT [dbo].[Booking_Medicine] ([id], [booking_id], [medicine_id], [price], [quantity], [note]) VALUES (1020, 3011, 1, 15000, 1, N'')
SET IDENTITY_INSERT [dbo].[Booking_Medicine] OFF
GO
SET IDENTITY_INSERT [dbo].[Certificate] ON 

INSERT [dbo].[Certificate] ([certificationId], [userId], [experience], [majorId], [university], [certificate], [address]) VALUES (1, 29, 3, 3, N'FPT University', N'Programming Fundamental', N'120 Nguyen Chi Sach')
INSERT [dbo].[Certificate] ([certificationId], [userId], [experience], [majorId], [university], [certificate], [address]) VALUES (2, 29, 4, 2, N'FPT University', N'Medical and Clinical Fundamental', N'120 Nguyen Trai')
SET IDENTITY_INSERT [dbo].[Certificate] OFF
GO
SET IDENTITY_INSERT [dbo].[Config] ON 

INSERT [dbo].[Config] ([id], [config_name], [config_value]) VALUES (1, N'TIME_DURATION', 30)
INSERT [dbo].[Config] ([id], [config_name], [config_value]) VALUES (2, N'DEFAULT_PRICE', 150000)
SET IDENTITY_INSERT [dbo].[Config] OFF
GO
SET IDENTITY_INSERT [dbo].[DoctorSchedule] ON 

INSERT [dbo].[DoctorSchedule] ([id], [start_date], [end_date], [doctor_id], [status], [approver_id]) VALUES (2, CAST(N'2024-03-02T08:00:00.000' AS DateTime), CAST(N'2024-03-02T11:30:00.000' AS DateTime), 3, 2, NULL)
INSERT [dbo].[DoctorSchedule] ([id], [start_date], [end_date], [doctor_id], [status], [approver_id]) VALUES (3, CAST(N'2024-03-02T13:30:00.000' AS DateTime), CAST(N'2024-03-02T17:00:00.000' AS DateTime), 16, 2, NULL)
INSERT [dbo].[DoctorSchedule] ([id], [start_date], [end_date], [doctor_id], [status], [approver_id]) VALUES (1003, CAST(N'2024-03-04T13:30:00.000' AS DateTime), CAST(N'2024-03-04T15:30:00.000' AS DateTime), 29, 2, NULL)
INSERT [dbo].[DoctorSchedule] ([id], [start_date], [end_date], [doctor_id], [status], [approver_id]) VALUES (2003, CAST(N'2024-03-05T08:00:00.000' AS DateTime), CAST(N'2024-03-05T12:00:00.000' AS DateTime), 29, 1, 2)
INSERT [dbo].[DoctorSchedule] ([id], [start_date], [end_date], [doctor_id], [status], [approver_id]) VALUES (2004, CAST(N'2024-03-05T13:00:25.000' AS DateTime), CAST(N'2024-03-05T15:00:25.000' AS DateTime), 29, 0, NULL)
INSERT [dbo].[DoctorSchedule] ([id], [start_date], [end_date], [doctor_id], [status], [approver_id]) VALUES (3003, CAST(N'2024-03-07T08:00:16.000' AS DateTime), CAST(N'2024-03-07T12:00:16.000' AS DateTime), 45, 2, NULL)
INSERT [dbo].[DoctorSchedule] ([id], [start_date], [end_date], [doctor_id], [status], [approver_id]) VALUES (3004, CAST(N'2024-03-07T13:00:23.000' AS DateTime), CAST(N'2024-03-07T15:00:23.000' AS DateTime), 45, 2, NULL)
INSERT [dbo].[DoctorSchedule] ([id], [start_date], [end_date], [doctor_id], [status], [approver_id]) VALUES (3005, CAST(N'2024-03-08T08:00:00.000' AS DateTime), CAST(N'2024-03-08T12:00:00.000' AS DateTime), 45, 2, NULL)
INSERT [dbo].[DoctorSchedule] ([id], [start_date], [end_date], [doctor_id], [status], [approver_id]) VALUES (3006, CAST(N'2024-03-08T13:00:00.000' AS DateTime), CAST(N'2024-03-08T15:00:00.000' AS DateTime), 45, 2, NULL)
INSERT [dbo].[DoctorSchedule] ([id], [start_date], [end_date], [doctor_id], [status], [approver_id]) VALUES (4003, CAST(N'2024-03-12T08:00:00.000' AS DateTime), CAST(N'2024-03-12T12:00:00.000' AS DateTime), 45, 2, NULL)
INSERT [dbo].[DoctorSchedule] ([id], [start_date], [end_date], [doctor_id], [status], [approver_id]) VALUES (5003, CAST(N'2024-03-14T08:00:08.000' AS DateTime), CAST(N'2024-03-14T12:00:08.000' AS DateTime), 29, 2, NULL)
INSERT [dbo].[DoctorSchedule] ([id], [start_date], [end_date], [doctor_id], [status], [approver_id]) VALUES (5004, CAST(N'2024-03-14T13:00:21.000' AS DateTime), CAST(N'2024-03-14T15:00:21.000' AS DateTime), 29, 0, NULL)
INSERT [dbo].[DoctorSchedule] ([id], [start_date], [end_date], [doctor_id], [status], [approver_id]) VALUES (5005, CAST(N'2024-03-15T08:00:00.000' AS DateTime), CAST(N'2024-03-15T12:00:00.000' AS DateTime), 29, 2, NULL)
INSERT [dbo].[DoctorSchedule] ([id], [start_date], [end_date], [doctor_id], [status], [approver_id]) VALUES (5006, CAST(N'2024-03-15T13:00:00.000' AS DateTime), CAST(N'2024-03-15T15:00:00.000' AS DateTime), 29, 0, NULL)
INSERT [dbo].[DoctorSchedule] ([id], [start_date], [end_date], [doctor_id], [status], [approver_id]) VALUES (5007, CAST(N'2024-03-16T08:00:00.000' AS DateTime), CAST(N'2024-03-16T12:00:00.000' AS DateTime), 29, 2, NULL)
INSERT [dbo].[DoctorSchedule] ([id], [start_date], [end_date], [doctor_id], [status], [approver_id]) VALUES (5008, CAST(N'2024-03-16T08:00:00.000' AS DateTime), CAST(N'2024-03-16T12:00:00.000' AS DateTime), 45, 2, NULL)
INSERT [dbo].[DoctorSchedule] ([id], [start_date], [end_date], [doctor_id], [status], [approver_id]) VALUES (6003, CAST(N'2024-03-17T08:00:00.000' AS DateTime), CAST(N'2024-03-17T12:00:00.000' AS DateTime), 29, 1, 2)
INSERT [dbo].[DoctorSchedule] ([id], [start_date], [end_date], [doctor_id], [status], [approver_id]) VALUES (6004, CAST(N'2024-03-17T08:00:00.000' AS DateTime), CAST(N'2024-03-17T12:00:00.000' AS DateTime), 29, 2, 2)
INSERT [dbo].[DoctorSchedule] ([id], [start_date], [end_date], [doctor_id], [status], [approver_id]) VALUES (6005, CAST(N'2024-03-17T13:00:00.000' AS DateTime), CAST(N'2024-03-17T16:00:00.000' AS DateTime), 29, 2, 2)
INSERT [dbo].[DoctorSchedule] ([id], [start_date], [end_date], [doctor_id], [status], [approver_id]) VALUES (6006, CAST(N'2024-03-18T13:00:00.000' AS DateTime), CAST(N'2024-03-18T16:00:00.000' AS DateTime), 29, 0, NULL)
INSERT [dbo].[DoctorSchedule] ([id], [start_date], [end_date], [doctor_id], [status], [approver_id]) VALUES (6007, CAST(N'2024-03-19T13:00:00.000' AS DateTime), CAST(N'2024-03-19T16:00:00.000' AS DateTime), 29, 2, NULL)
INSERT [dbo].[DoctorSchedule] ([id], [start_date], [end_date], [doctor_id], [status], [approver_id]) VALUES (6008, CAST(N'2024-03-20T13:30:00.000' AS DateTime), CAST(N'2024-03-20T16:30:00.000' AS DateTime), 29, 0, NULL)
INSERT [dbo].[DoctorSchedule] ([id], [start_date], [end_date], [doctor_id], [status], [approver_id]) VALUES (7003, CAST(N'2024-03-19T08:00:00.000' AS DateTime), CAST(N'2024-03-19T12:00:00.000' AS DateTime), 29, 0, NULL)
INSERT [dbo].[DoctorSchedule] ([id], [start_date], [end_date], [doctor_id], [status], [approver_id]) VALUES (7004, CAST(N'2024-03-19T08:00:00.000' AS DateTime), CAST(N'2024-03-19T12:00:00.000' AS DateTime), 45, 2, NULL)
INSERT [dbo].[DoctorSchedule] ([id], [start_date], [end_date], [doctor_id], [status], [approver_id]) VALUES (7005, CAST(N'2024-03-19T13:30:00.000' AS DateTime), CAST(N'2024-03-19T16:30:00.000' AS DateTime), 45, 2, 2)
SET IDENTITY_INSERT [dbo].[DoctorSchedule] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([feedbackId], [content], [vote], [create_date]) VALUES (1, N'The doctor is careful and have good knowledge', 3, CAST(N'2024-03-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([feedbackId], [content], [vote], [create_date]) VALUES (2, N'Experience was good', 4, CAST(N'2024-03-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([feedbackId], [content], [vote], [create_date]) VALUES (3, N'The doctor is good , the service is good as well', 5, CAST(N'2024-03-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([feedbackId], [content], [vote], [create_date]) VALUES (4, N'The service is little bad', 3, CAST(N'2024-03-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([feedbackId], [content], [vote], [create_date]) VALUES (1002, N'good', 5, CAST(N'2024-03-13T12:30:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([feedbackId], [content], [vote], [create_date]) VALUES (2002, N'Good', 4, CAST(N'2024-03-19T16:30:57.777' AS DateTime))
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Major] ON 

INSERT [dbo].[Major] ([majorId], [name], [description], [imageUrl]) VALUES (1, N'Computer Science', N'Study of computers and computational systems.', N'http://getwallpapers.com/wallpaper/full/5/f/0/11925.jpg')
INSERT [dbo].[Major] ([majorId], [name], [description], [imageUrl]) VALUES (2, N'Electrical Engineering', N'Study of electrical systems and devices.', NULL)
INSERT [dbo].[Major] ([majorId], [name], [description], [imageUrl]) VALUES (3, N'Mechanical Engineering', N'Study of mechanical systems and machines.', N'https://tse2.mm.bing.net/th?id=OIP.T0Xh7GaB__ZaYF0_bXTkhgHaEc&pid=Api&P=0&h=220')
INSERT [dbo].[Major] ([majorId], [name], [description], [imageUrl]) VALUES (4, N'Civil Engineering', N'Study of infrastructure and construction.', N'https://tse1.mm.bing.net/th?id=OIP.5nS61SEnPE2bP2IXOUSAJwHaE8&pid=Api&P=0&h=220')
INSERT [dbo].[Major] ([majorId], [name], [description], [imageUrl]) VALUES (5, N'Chemical Engineering', N'Study of chemical processes and materials.', N'https://www.thoughtco.com/thmb/YCiX39aCJZyWeToSmi3wLi8T5fk=/1885x1414/smart/filters:no_upscale()/GettyImages-1139014223-adce9a8a92b7464aa3f9002765762712.jpg')
SET IDENTITY_INSERT [dbo].[Major] OFF
GO
SET IDENTITY_INSERT [dbo].[Medicine] ON 

INSERT [dbo].[Medicine] ([medicineId], [medicineName], [quantity], [description], [price]) VALUES (1, N'panadol', 36, N'panadol', 15000)
INSERT [dbo].[Medicine] ([medicineId], [medicineName], [quantity], [description], [price]) VALUES (2, N'mimosa', 45, N'Mimosa sedative tablets are used for insomnia', 15000)
SET IDENTITY_INSERT [dbo].[Medicine] OFF
GO
SET IDENTITY_INSERT [dbo].[Notifications] ON 

INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (1, 1, 29, N'There is a new booking request coming to you', N'/doctorAppointment', CAST(N'2024-03-14T11:30:35.177' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (2, 1, 29, N'There is new update to your time schedule', N'/timeTableRegistration', CAST(N'2024-03-15T13:44:55.803' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (1002, 1, 2, N'New doctor schedule request was send', N'/viewAppointment', CAST(N'2024-03-14T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (1003, 0, 29, N'New pending booking request was send', N'/doctorAppointment', CAST(N'2024-03-14T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (1004, 0, 2, N'New pending booking request was send', N'/viewAppointment', CAST(N'2024-03-14T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (1005, 0, 29, N'New pending booking request was send', N'/doctorAppointment', CAST(N'2024-03-14T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (1006, 0, 2, N'New pending booking request was send', N'/viewAppointment', CAST(N'2024-03-14T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (1007, 0, 2, N'New doctor schedule request was send', N'/viewAppointment', CAST(N'2024-03-14T16:55:39.433' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (1008, 0, 29, N'New pending booking request was send', N'/doctorAppointment', CAST(N'2024-03-14T16:57:12.997' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (1009, 0, 2, N'New pending booking request was send', N'/viewAppointment', CAST(N'2024-03-14T16:57:13.027' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (1010, 0, 2, N'New doctor schedule request was send', N'/viewAppointment', CAST(N'2024-03-14T22:16:27.057' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (1011, 0, 2, N'New doctor schedule request was send', N'/viewAppointment', CAST(N'2024-03-15T15:58:53.373' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (1012, 0, 29, N'New pending booking request was send', N'/doctorAppointment', CAST(N'2024-03-15T16:00:26.933' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (1013, 0, 2, N'New pending booking request was send', N'/viewAppointment', CAST(N'2024-03-15T16:00:26.953' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (1014, 0, 2, N'New doctor schedule request was send', N'/viewAppointment', CAST(N'2024-03-15T16:01:51.520' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (2002, 0, 2, N'New doctor schedule request was send', N'/viewAppointment', CAST(N'2024-03-16T16:15:57.897' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (2003, 0, 2, N'New doctor schedule request was send', N'/viewAppointment', CAST(N'2024-03-16T16:21:47.237' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (2004, 0, 29, N'New pending booking request was send', N'/doctorAppointment', CAST(N'2024-03-16T17:04:23.090' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (2005, 0, 2, N'New pending booking request was send', N'/viewAppointment', CAST(N'2024-03-16T17:04:23.117' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (2007, 0, 2, N'There''s new update on booking request at 2024-03-16 17:04:23.04 by customer : john@example.com', N'/viewAppointment', CAST(N'2024-03-16T17:05:17.417' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (2008, 0, 29, N'New pending booking request was send', N'/doctorAppointment', CAST(N'2024-03-16T17:10:28.797' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (2009, 0, 2, N'New pending booking request was send', N'/viewAppointment', CAST(N'2024-03-16T17:10:28.813' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (2011, 0, 2, N'There''s new update on booking request at 2024-03-16 17:10:28.757 by customer : john@example.com', N'/viewAppointment', CAST(N'2024-03-16T17:12:02.447' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (2012, 0, 29, N'New pending booking request was send', N'/doctorAppointment', CAST(N'2024-03-16T17:21:28.393' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (2013, 0, 2, N'New pending booking request was send', N'/viewAppointment', CAST(N'2024-03-16T17:21:28.413' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (2014, 0, 29, N'There''s new update on booking request at 2024-03-16 17:21:28.343', N'/doctorAppointment', CAST(N'2024-03-16T17:22:17.027' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (2015, 0, 2, N'There''s new update on booking request at 2024-03-16 17:21:28.343 by customer : john@example.com', N'/viewAppointment', CAST(N'2024-03-16T17:22:17.060' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (2016, 0, 29, N'New pending booking request was send', N'/doctorAppointment', CAST(N'2024-03-16T17:23:43.650' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (2017, 0, 2, N'New pending booking request was send', N'/viewAppointment', CAST(N'2024-03-16T17:23:43.667' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (2018, 1, 29, N'There''s new update on booking request at 2024-03-16 17:23:43.607', N'/doctorAppointment', CAST(N'2024-03-16T17:27:12.910' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (2019, 1, 1, N'There''s new update on booking request at 2024-03-16 17:23:43.607', N'/myAppointment', CAST(N'2024-03-16T17:27:12.937' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (2020, 0, 2, N'New doctor schedule request was send', N'/viewAppointment', CAST(N'2024-03-16T18:01:29.997' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (2021, 1, 29, N'There''s new update on schedule at 2024-03-17 13:00:00.0', N'/timeTableRegistration', CAST(N'2024-03-16T18:03:18.890' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (2022, 0, 2, N'New doctor schedule request was send', N'/viewAppointment', CAST(N'2024-03-16T18:10:22.897' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (2023, 0, 2, N'New doctor schedule request was send', N'/viewAppointment', CAST(N'2024-03-16T18:20:31.250' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (2024, 1, 2, N'New doctor schedule request was send', N'/viewAppointment', CAST(N'2024-03-16T18:30:17.760' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3002, 1, 2, N'New contact from thanhdo9901@gmail.com , phone : 0866624403 , message : i want to book mental care', N'/viewAppointment', CAST(N'2024-03-18T18:39:53.257' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3003, 0, 1, N'There''s new update on booking request at 2024-03-14 08:00:00.0', N'/myAppointment', CAST(N'2024-03-18T18:43:07.490' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3004, 0, 1, N'There''s new update on booking request at 2024-03-14 08:00:00.0', N'/myAppointment', CAST(N'2024-03-18T18:43:08.130' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3005, 0, 1, N'There''s new update on booking request at 2024-03-14 08:00:00.0', N'/myAppointment', CAST(N'2024-03-18T18:43:50.147' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3006, 0, 1, N'There''s new update on booking request at 2024-03-14 08:00:00.0', N'/myAppointment', CAST(N'2024-03-18T18:43:50.280' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3007, 0, 1, N'There''s new update on booking request at 2024-03-14 08:00:00.0', N'/myAppointment', CAST(N'2024-03-18T18:44:38.617' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3008, 1, 1, N'There''s new update on booking request at 2024-03-14 08:00:00.0', N'/myAppointment', CAST(N'2024-03-18T18:44:39.870' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3009, 0, 1, N'There''s new update on booking request at 2024-03-14 08:00:00.0', N'/myAppointment', CAST(N'2024-03-18T18:45:24.067' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3010, 0, 1, N'There''s new update on booking request at 2024-03-14 08:00:00.0', N'/myAppointment', CAST(N'2024-03-18T18:45:26.463' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3011, 0, 1, N'There''s new update on booking request at 2024-03-14 08:00:00.0', N'/myAppointment', CAST(N'2024-03-18T18:46:47.233' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3012, 0, 1, N'There''s new update on booking request at 2024-03-14 08:00:00.0', N'/myAppointment', CAST(N'2024-03-18T18:46:47.370' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3013, 0, 1, N'There''s new update on booking request at 2024-03-14 08:00:00.0', N'/myAppointment', CAST(N'2024-03-18T18:48:34.077' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3014, 0, 1, N'There''s new update on booking request at 2024-03-14 08:00:00.0', N'/myAppointment', CAST(N'2024-03-18T18:48:34.213' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3015, 0, 1, N'There''s new update on booking request at 2024-03-14 08:00:00.0', N'/myAppointment', CAST(N'2024-03-18T18:53:38.613' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3016, 0, 1, N'There''s new update on booking request at 2024-03-14 08:00:00.0', N'/myAppointment', CAST(N'2024-03-18T18:53:38.863' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3017, 0, 1, N'There''s new update on booking request at 2024-03-14 08:00:00.0', N'/myAppointment', CAST(N'2024-03-18T18:53:59.873' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3018, 0, 29, N'New pending booking request was send', N'/doctorAppointment', CAST(N'2024-03-18T19:20:20.063' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3019, 0, 2, N'New pending booking request was send', N'/viewAppointment', CAST(N'2024-03-18T19:20:20.083' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3020, 0, 1, N'There''s new update on booking request at 2024-03-15 09:30:00.0', N'/myAppointment', CAST(N'2024-03-18T19:32:41.013' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3021, 1, 1, N'There''s new update on booking request at 2024-03-15 09:30:00.0', N'/myAppointment', CAST(N'2024-03-18T19:41:36.733' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3022, 1, 29, N'There''s new update on booking request at 2024-03-19 13:00:00.0', N'/doctorAppointment', CAST(N'2024-03-18T22:16:59.653' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3023, 1, 1, N'There''s new update on booking request at 2024-03-19 13:00:00.0', N'/myAppointment', CAST(N'2024-03-18T22:16:59.723' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3024, 1, 1, N'There''s new update on booking request at 2024-03-19 13:00:00.0', N'/myAppointment', CAST(N'2024-03-18T22:20:56.530' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3025, 1, 1, N'There''s new update on booking request at 2024-03-19 13:00:00.0', N'/myAppointment', CAST(N'2024-03-18T22:22:23.307' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3026, 0, 2, N'New doctor schedule request was send', N'/viewDoctorSchedule', CAST(N'2024-03-18T22:35:17.213' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3027, 0, 2, N'New doctor schedule request was send', N'/viewDoctorSchedule', CAST(N'2024-03-18T22:35:54.690' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3028, 1, 2, N'New doctor schedule request was send', N'/viewDoctorSchedule', CAST(N'2024-03-18T22:37:33.217' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3029, 0, 45, N'New pending booking request was send', N'/doctorAppointment', CAST(N'2024-03-18T22:45:06.060' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3030, 0, 2, N'New pending booking request was send', N'/viewAppointment', CAST(N'2024-03-18T22:45:06.117' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3031, 0, 45, N'There''s new update on booking request at 2024-03-19 08:30:00.0', N'/doctorAppointment', CAST(N'2024-03-18T22:45:35.743' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3032, 0, 2, N'There''s new update on booking request at 2024-03-19 08:30:00.0 by customer : john@example.com', N'/viewAppointment', CAST(N'2024-03-18T22:45:35.810' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3033, 1, 45, N'There''s new update on schedule at 2024-03-19 13:30:00.0', N'/timeTableRegistration', CAST(N'2024-03-18T22:51:48.400' AS DateTime), NULL, NULL)
INSERT [dbo].[Notifications] ([Notification_ID], [Readed], [User_ID], [Notification_Content], [Attached_Link], [Created_At], [Updated_At], [Deleted_At]) VALUES (3034, 1, 2, N'New contact from thanhdo9901@gmail.com , phone : 0866624403 , message : abc', N'/viewAppointment', CAST(N'2024-03-18T22:58:46.590' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Notifications] OFF
GO
SET IDENTITY_INSERT [dbo].[TimeConfig] ON 

INSERT [dbo].[TimeConfig] ([id], [config_name], [start_hour], [end_hour]) VALUES (1, N'slot 1', CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[TimeConfig] ([id], [config_name], [start_hour], [end_hour]) VALUES (3, N'slot 2', CAST(N'13:30:00' AS Time), CAST(N'16:30:00' AS Time))
SET IDENTITY_INSERT [dbo].[TimeConfig] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (1, 1, N'Customer', N'123 Street, City', N'https://nhacchuonghinhnen.com/wp-content/uploads/2020/06/hinh-nen-jack-j97-cuc-dep-danh-cho-dien-thoai-va-may-tinh-12.jpg', N'John Doe', N'123456789', N'john@example.com', N'password123', N'token123')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (2, 2, N'Admin', N'456 Avenue, Town', N'https://media.rscbayarea.com/AdobeStock_306896548-1536x1025.jpeg', N'Jane Smith', N'987654321', N'jane@example.com', N'password456', N'token456')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (3, 3, N'Professor', N'789 Boulevard, Village', N'https://tse3.mm.bing.net/th?id=OIP.PBPYVES_vO2MW-UMqpAXQgHaHa&pid=Api&P=0&h=220', N'David Brown', N'456789123', N'david@example.com', N'password789', N'token789')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (4, 1, N'Customer', N'321 Road, County', N'avatar4.png', N'Emily Johnson', N'321654987', N'emily@example.com', N'passwordabc', N'tokenabc')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (5, 2, N'Professor', N'654 Lane, Country', N'https://thumbs.dreamstime.com/b/female-doctor-23301058.jpg', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (6, 3, N'Professor', N'654 Lane, Country', N'http://dashboard.localvox.com/sites/default/files/inline_images/doctor-27405071.jpg', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (7, 2, N'Professor', N'654 Lane, Country', N'avatar5.png', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (8, 2, N'Professor', N'654 Lane, Country', N'avatar5.png', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (9, 2, N'Professor', N'654 Lane, Country', N'avatar5.png', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (10, 2, N'Professor', N'654 Lane, Country', N'avatar5.png', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (11, 2, N'Professor', N'654 Lane, Country', N'avatar5.png', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (12, 3, N'Professor', N'654 Lane, Country', N'https://wallpaperaccess.com/full/741760.jpg', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (13, 2, N'Professor', N'654 Lane, Country', N'avatar5.png', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (14, 2, N'Professor', N'654 Lane, Country', N'avatar5.png', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (15, 2, N'Professor', N'654 Lane, Country', N'avatar5.png', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (16, 3, N'Professor', N'654 Lane, Country', N'avatar5.png', N'Ethan Martinez', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (17, 2, N'Professor', N'654 Lane, Country', N'https://media.rscbayarea.com/AdobeStock_306896548-1536x1025.jpeg', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (18, 3, N'Professor', N'654 Lane, Country', N'avatar5.png', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (19, 2, N'Professor', N'654 Lane, Country', N'avatar5.png', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (20, 2, N'Professor', N'654 Lane, Country', N'avatar5.png', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (21, 3, N'Professor', N'654 Lane, Country', N'avatar5.png', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (22, 2, N'Professor', N'654 Lane, Country', N'https://wallpaperaccess.com/full/741760.jpg', N'Emily Johnson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (23, 2, N'Professor', N'654 Lane, Country', N'avatar5.png', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (24, 2, N'Professor', N'654 Lane, Country', N'avatar5.png', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (25, 2, N'Professor', N'654 Lane, Country', N'http://boyetthealth.com/wp-content/uploads/2013/05/Doctor_with_Patient_RGB.jpg', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (26, 3, N'Professor', N'654 Lane, Country', N'https://wallpaperaccess.com/full/741760.jpg', N'Sophia Brown', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (27, 2, N'Professor', N'654 Lane, Country', N'avatar5.png', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (28, 2, N'Professor', N'654 Lane, Country', N'https://i.pinimg.com/originals/b4/1d/f9/b41df94e6cffb24c34b05df489b3b4ac.jpg', N'Cristiano Ronaldo', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (29, 2, N'Professor', N'654 Lane, Country', N'https://baoquocte.vn/stores/news_dataimages/nguyennga/042020/23/10/4100_ro-beo-1587610278363.jpg', N'Ronaldo', N'654987321', N'cr7@gmail.com', N'12345678', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (30, 2, N'Professor', N'654 Lane, Country', N'https://i.pinimg.com/originals/54/e0/9c/54e09cc622cb0c14983634c672e12e8c.jpg', N'Ronaldinho', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (31, 2, N'Professor', N'654 Lane, Country', N'https://i.pinimg.com/originals/d2/a2/fb/d2a2fbb84bc942c4322daa8396eb8670.jpg', N'Rivaldo', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (32, 2, N'Professor', N'654 Lane, Country', N'avatar5.png', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (33, 2, N'Professor', N'654 Lane, Country', N'https://www.pulseheadlines.com/wp-content/uploads/2016/12/jejeje-1.jpg', N'Olivia Anderson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (34, 2, N'Professor', N'654 Lane, Country', N'avatar5.png', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (35, 2, N'Professor', N'654 Lane, Country', N'avatar5.png', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (36, 2, N'Professor', N'654 Lane, Country', N'http://boyetthealth.com/wp-content/uploads/2013/05/Doctor_with_Patient_RGB.jpg', N'Liam Wilson
', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (37, 2, N'Professor', N'654 Lane, Country', N'avatar5.png', N'Emma Harris', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (38, 2, N'Professor', N'654 Lane, Country', N'avatar5.png', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (39, 3, N'Professor', N'654 Lane, Country', N'https://purepng.com/public/uploads/large/purepng.com-doctordoctorsdoctors-and-nursesclinicianmedical-practitionernotepadfemale-142152685722142y8x.png', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (40, 2, N'Professor', N'654 Lane, Country', N'avatar5.png', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (41, 2, N'Professor', N'654 Lane, Country', N'avatar5.png', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (42, 2, N'Professor', N'654 Lane, Country', N'avatar5.png', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (43, 2, N'Professor', N'654 Lane, Country', N'https://www.pulseheadlines.com/wp-content/uploads/2016/12/jejeje-1.jpg', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (44, 2, N'Professor', N'654 Lane, Country', N'avatar5.png', N'Michael Wilson', N'654987321', N'michael@example.com', N'passwordxyz', N'tokenxyz')
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (45, 1, N'Professor', N'Thai Binh', N'https://genk.mediacdn.vn/2019/2/4/photo-1-15492661855801690351723.jpg', N'Bobby', N'0866624403', N'admin@official.zookay.com', N'123456', NULL)
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (46, 2, N'Professor', N'Thai Binh', N'https://tse1.mm.bing.net/th?id=OIP.tGq2V-jYrBmm_r0qgA910QHaFj&pid=Api&P=0&h=220', N'Cubby', N'0866324403', N'admin123@official.zookay.com', N'1234567', NULL)
INSERT [dbo].[User] ([userId], [majorId], [role], [address], [avatar], [name], [phone], [email], [password], [token]) VALUES (47, 1, N'Professor', N'Hai Duong', N'https://i.kym-cdn.com/photos/images/original/002/205/307/1f7.jpg', N'kuma', N'0866324403', N'admin879@official.zookay.com', N'12345', NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Notifications] ADD  DEFAULT ((0)) FOR [Readed]
GO
ALTER TABLE [dbo].[Notifications] ADD  DEFAULT (getdate()) FOR [Created_At]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Feedback] FOREIGN KEY([feedback_id])
REFERENCES [dbo].[Feedback] ([feedbackId])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Feedback]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_User] FOREIGN KEY([doctor_id])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_User]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_User1] FOREIGN KEY([customer_id])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_User1]
GO
ALTER TABLE [dbo].[Booking_Medicine]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Medical_Booking] FOREIGN KEY([booking_id])
REFERENCES [dbo].[Booking] ([id])
GO
ALTER TABLE [dbo].[Booking_Medicine] CHECK CONSTRAINT [FK_Booking_Medical_Booking]
GO
ALTER TABLE [dbo].[Booking_Medicine]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Medical_Medicine] FOREIGN KEY([medicine_id])
REFERENCES [dbo].[Medicine] ([medicineId])
GO
ALTER TABLE [dbo].[Booking_Medicine] CHECK CONSTRAINT [FK_Booking_Medical_Medicine]
GO
ALTER TABLE [dbo].[Certificate]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[commentPost]  WITH CHECK ADD FOREIGN KEY([postId])
REFERENCES [dbo].[Post] ([postId])
GO
ALTER TABLE [dbo].[ConnectionMedicalAndMedicine]  WITH CHECK ADD FOREIGN KEY([medicineId])
REFERENCES [dbo].[Medicine] ([medicineId])
GO
ALTER TABLE [dbo].[ConnectionMedicalAndMedicine]  WITH CHECK ADD FOREIGN KEY([medicalId])
REFERENCES [dbo].[Medical] ([medicalId])
GO
ALTER TABLE [dbo].[DoctorSchedule]  WITH CHECK ADD  CONSTRAINT [FK_DoctorSchedule_User] FOREIGN KEY([doctor_id])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[DoctorSchedule] CHECK CONSTRAINT [FK_DoctorSchedule_User]
GO
ALTER TABLE [dbo].[DoctorSchedule]  WITH CHECK ADD  CONSTRAINT [FK_DoctorSchedule_User1] FOREIGN KEY([approver_id])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[DoctorSchedule] CHECK CONSTRAINT [FK_DoctorSchedule_User1]
GO
ALTER TABLE [dbo].[Medical]  WITH CHECK ADD FOREIGN KEY([bennhanMedicalId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Medical]  WITH CHECK ADD FOREIGN KEY([diagnosedMedicalId])
REFERENCES [dbo].[Diagnosed] ([diagnosedId])
GO
ALTER TABLE [dbo].[Medical]  WITH CHECK ADD FOREIGN KEY([scheduleMedicalId])
REFERENCES [dbo].[Schedule] ([scheduleId])
GO
ALTER TABLE [dbo].[Notifications]  WITH CHECK ADD  CONSTRAINT [FK_Notifications_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Notifications] CHECK CONSTRAINT [FK_Notifications_Users]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD FOREIGN KEY([bacsiScheduleId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD FOREIGN KEY([benhnhanScheduleId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD FOREIGN KEY([majorScheduleId])
REFERENCES [dbo].[Major] ([majorId])
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD FOREIGN KEY([timeManagementScheduleId])
REFERENCES [dbo].[TimeManagement] ([timeManagementId])
GO
ALTER TABLE [dbo].[TimeChosen]  WITH CHECK ADD FOREIGN KEY([scheduleTimeChosenId])
REFERENCES [dbo].[Schedule] ([scheduleId])
GO
ALTER TABLE [dbo].[TimeChosen]  WITH CHECK ADD FOREIGN KEY([timeSessionId])
REFERENCES [dbo].[TimeSession] ([timeSessionId])
GO
ALTER TABLE [dbo].[TimeSession]  WITH CHECK ADD FOREIGN KEY([dayOfWeekId])
REFERENCES [dbo].[DayOfWeeks] ([dayOfWeekId])
GO
ALTER TABLE [dbo].[TimeSession]  WITH CHECK ADD FOREIGN KEY([timeManagementSessionId])
REFERENCES [dbo].[TimeManagement] ([timeManagementId])
GO
ALTER TABLE [dbo].[TimeSession]  WITH CHECK ADD FOREIGN KEY([userTimeSessionId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([majorId])
REFERENCES [dbo].[Major] ([majorId])
GO
USE [master]
GO
ALTER DATABASE [phongkham] SET  READ_WRITE 
GO
