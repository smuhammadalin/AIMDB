drop database IMDB
create database IMDB
go
use IMDB
go
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Movie](
	[MovieID] [int] NOT NULL,
	[Title] [varchar](30) NULL,
	[Genre] [varchar](10) NULL,
	[Release Year] [int] NULL,
	[Favorite] [int] NULL,
	[Link] [varchar](80) NULL
PRIMARY KEY CLUSTERED 
(
	[MovieID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Movie] ([MovieID], [Title], [Genre], [Release Year], [Favorite],[Link]) VALUES (1, N'Titanic', N'Drama', N'1997', 0 ,NULL)
INSERT [dbo].[Movie] ([MovieID], [Title], [Genre], [Release Year], [Favorite],[Link]) VALUES (2, N'The Revenant', N'Thriller', N'2015', 0,NULL)
INSERT [dbo].[Movie] ([MovieID], [Title], [Genre], [Release Year], [Favorite],[Link]) VALUES (3, N'The Wolf of Wall Street', N'Drama', N'2013', 0,NULL)
INSERT [dbo].[Movie] ([MovieID], [Title], [Genre], [Release Year], [Favorite],[Link]) VALUES (4, N'The Godfather', N'Drama', N'1972', 0,NULL)
INSERT [dbo].[Movie] ([MovieID], [Title], [Genre], [Release Year], [Favorite],[Link]) VALUES (5, N'Mughal-E-Azam', N'Drama', N'1960', 0,NULL)
INSERT [dbo].[Movie] ([MovieID], [Title], [Genre], [Release Year], [Favorite],[Link]) VALUES (6, N'Gone with the Wind', N'Romance', N'1939', 0,NULL)
INSERT [dbo].[Movie] ([MovieID], [Title], [Genre], [Release Year], [Favorite],[Link]) VALUES (7, N'Scent of a Woman', N'Drama', N'1992', 0,NULL)
INSERT [dbo].[Movie] ([MovieID], [Title], [Genre], [Release Year], [Favorite],[Link]) VALUES (8, N'Taxi Driver', N'Drama', N'1976', 0,NULL)
INSERT [dbo].[Movie] ([MovieID], [Title], [Genre], [Release Year], [Favorite],[Link]) VALUES (9, N'Goodfellas', N'Drama', N'1990', 0,NULL)
INSERT [dbo].[Movie] ([MovieID], [Title], [Genre], [Release Year], [Favorite],[Link]) VALUES (10, N'The Intern', N'Comedy', N'2015', 0,NULL)

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Celebrity](
	[CelebID] [int] NOT NULL,
	[Name] [varchar](30) NULL,
	[Type] [varchar](10) NULL,
	[Bdate] [date] NULL,
	[Favorite] [int] NULL
PRIMARY KEY CLUSTERED 
(
	[CelebID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Celebrity] ([CelebID], [Name], [Type], [Bdate], [Favorite]) VALUES (1, N'Leonardo Dicaprio', N'Actor', N'1974/11/11', NULL)
INSERT [dbo].[Celebrity] ([CelebID], [Name], [Type], [Bdate], [Favorite]) VALUES (2, N'Kate Winslet', N'Actor', N'1975/10/05', NULL)
INSERT [dbo].[Celebrity] ([CelebID], [Name], [Type], [Bdate], [Favorite]) VALUES (3, N'Tom Hardy', N'Actor', N'1977/09/15', NULL)
INSERT [dbo].[Celebrity] ([CelebID], [Name], [Type], [Bdate], [Favorite]) VALUES (4, N'Margot Robbie', N'Actor', N'1990/07/02', NULL)
INSERT [dbo].[Celebrity] ([CelebID], [Name], [Type], [Bdate], [Favorite]) VALUES (5, N'Jonah Hill', N'Actor', N'1983/12/20', NULL)
INSERT [dbo].[Celebrity] ([CelebID], [Name], [Type], [Bdate], [Favorite]) VALUES (6, N'Al Pacino', N'Actor', N'1940/04/25', NULL)
INSERT [dbo].[Celebrity] ([CelebID], [Name], [Type], [Bdate], [Favorite]) VALUES (7, N'Marlon Brando', N'Actor', N'1924/04/03', NULL)
INSERT [dbo].[Celebrity] ([CelebID], [Name], [Type], [Bdate], [Favorite]) VALUES (8, N'Robert De Niro', N'Actor', N'1943/08/17', NULL)
INSERT [dbo].[Celebrity] ([CelebID], [Name], [Type], [Bdate], [Favorite]) VALUES (9, N'Diane Keaton', N'Actor', N'1946/01/05', NULL)
INSERT [dbo].[Celebrity] ([CelebID], [Name], [Type], [Bdate], [Favorite]) VALUES (10, N'Anne Hathaway', N'Actor', N'1982/11/12', NULL)
INSERT [dbo].[Celebrity] ([CelebID], [Name], [Type], [Bdate], [Favorite]) VALUES (11, N'James Cameron', N'Director', N'1954/08/16', NULL)
INSERT [dbo].[Celebrity] ([CelebID], [Name], [Type], [Bdate], [Favorite]) VALUES (12, N'Alejandro González Iñárritu', N'Director', N'1963/08/15', NULL)
INSERT [dbo].[Celebrity] ([CelebID], [Name], [Type], [Bdate], [Favorite]) VALUES (13, N'Martin Scorsese', N'Director', N'1942/11/17', NULL)
INSERT [dbo].[Celebrity] ([CelebID], [Name], [Type], [Bdate], [Favorite]) VALUES (14, N'Francis Ford Coppola', N'Director', N'1939/04/07', NULL)
INSERT [dbo].[Celebrity] ([CelebID], [Name], [Type], [Bdate], [Favorite]) VALUES (15, N'Martin Brest', N'Director', N'1951/08/08', NULL)
INSERT [dbo].[Celebrity] ([CelebID], [Name], [Type], [Bdate], [Favorite]) VALUES (16, N'Nancy Meyers', N'Director', N'1949/12/08', NULL)
INSERT [dbo].[Celebrity] ([CelebID], [Name], [Type], [Bdate], [Favorite]) VALUES (17, N'Vivien Leigh', N'Actor', N'1913/11/05', NULL)
INSERT [dbo].[Celebrity] ([CelebID], [Name], [Type], [Bdate], [Favorite]) VALUES (18, N'Clark Gable', N'Actor', N'1901/02/01', NULL)
INSERT [dbo].[Celebrity] ([CelebID], [Name], [Type], [Bdate], [Favorite]) VALUES (19, N'Victor Flemming', N'Director', N'1889/02/23', NULL)
INSERT [dbo].[Celebrity] ([CelebID], [Name], [Type], [Bdate], [Favorite]) VALUES (20, N'Madhubala', N'Actor', N'1933/02/14', NULL)
INSERT [dbo].[Celebrity] ([CelebID], [Name], [Type], [Bdate], [Favorite]) VALUES (21, N'Dilip Kumar', N'Actor', N'1922/12/11', NULL)
INSERT [dbo].[Celebrity] ([CelebID], [Name], [Type], [Bdate], [Favorite]) VALUES (22, N'K. Asif', N'Director', N'1922/06/14', NULL)


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Director](
	[MovieID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Favorite] [int] NULL
PRIMARY KEY CLUSTERED 
(
	[MovieID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Director] ([MovieID], [UserID], [Favorite]) VALUES (1, 11, NULL)
INSERT [dbo].[Director] ([MovieID], [UserID], [Favorite]) VALUES (2, 12, NULL)
INSERT [dbo].[Director] ([MovieID], [UserID], [Favorite]) VALUES (3, 13, NULL)
INSERT [dbo].[Director] ([MovieID], [UserID], [Favorite]) VALUES (4, 14, NULL)
INSERT [dbo].[Director] ([MovieID], [UserID], [Favorite]) VALUES (5, 22, NULL)
INSERT [dbo].[Director] ([MovieID], [UserID], [Favorite]) VALUES (6, 19, NULL)
INSERT [dbo].[Director] ([MovieID], [UserID], [Favorite]) VALUES (7, 15, NULL)
INSERT [dbo].[Director] ([MovieID], [UserID], [Favorite]) VALUES (8, 13, NULL)
INSERT [dbo].[Director] ([MovieID], [UserID], [Favorite]) VALUES (9, 13, NULL)
INSERT [dbo].[Director] ([MovieID], [UserID], [Favorite]) VALUES (10, 16, NULL)

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] NOT NULL,
	[Name] [varchar] (30) NULL,
	[Email] [varchar] (30) NULL,
	[Password] [varchar] (30) NULL,
	[Bdate] [date] NULL
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[User] ([UserID], [Name], [Email], [Password], [Bdate]) VALUES (101, N'Neha Akram', N'nehaakram12@gmail.com', N'neha123', N'1997/04/06')
INSERT [dbo].[User] ([UserID], [Name], [Email], [Password], [Bdate]) VALUES (102, N'Alizeh Asim', N'alizehasim97@gmail.com', N'falooda97', N'1997/12/10')
INSERT [dbo].[User] ([UserID], [Name], [Email], [Password], [Bdate]) VALUES (103, N'Muhamad Ali', N'muhammadali96@hotmail.com', N'sman1796', N'1996/07/01')

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List](
	[UserID] [int] NOT NULL,
	[MovieID] [int] NOT NULL
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[MovieID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[List] ([UserID], [MovieID]) VALUES (101, 1)
INSERT [dbo].[List] ([UserID], [MovieID]) VALUES (101, 2)
INSERT [dbo].[List] ([UserID], [MovieID]) VALUES (101, 3)
INSERT [dbo].[List] ([UserID], [MovieID]) VALUES (102, 7)
INSERT [dbo].[List] ([UserID], [MovieID]) VALUES (102, 8)
INSERT [dbo].[List] ([UserID], [MovieID]) VALUES (102, 9)
INSERT [dbo].[List] ([UserID], [MovieID]) VALUES (102, 10)
INSERT [dbo].[List] ([UserID], [MovieID]) VALUES (103, 4)
INSERT [dbo].[List] ([UserID], [MovieID]) VALUES (103, 5)
INSERT [dbo].[List] ([UserID], [MovieID]) VALUES (103, 6)

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WatchList](
	[UserID] [int] NOT NULL,
	[MovieID] [int] NOT NULL,
	[Status] [varchar] (10) NULL
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[MovieID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[WatchList] ([UserID], [MovieID], [Status]) VALUES (101, 1, N'Unwatched')
INSERT [dbo].[WatchList] ([UserID], [MovieID], [Status]) VALUES (101, 2, N'Unwatched')
INSERT [dbo].[WatchList] ([UserID], [MovieID], [Status]) VALUES (101, 3, N'Unwatched')
INSERT [dbo].[WatchList] ([UserID], [MovieID], [Status]) VALUES (102, 7, N'Unwatched')
INSERT [dbo].[WatchList] ([UserID], [MovieID], [Status]) VALUES (102, 8, N'Unwatched')
INSERT [dbo].[WatchList] ([UserID], [MovieID], [Status]) VALUES (102, 9, N'Unwatched')
INSERT [dbo].[WatchList] ([UserID], [MovieID], [Status]) VALUES (102, 10, N'Unwatched')
INSERT [dbo].[WatchList] ([UserID], [MovieID], [Status]) VALUES (103, 4, N'Watched')
INSERT [dbo].[WatchList] ([UserID], [MovieID], [Status]) VALUES (103, 5, N'Watched')
INSERT [dbo].[WatchList] ([UserID], [MovieID], [Status]) VALUES (103, 6, N'Watched')
INSERT [dbo].[WatchList] ([UserID], [MovieID], [Status]) VALUES (103, 7, N'Watched')
INSERT [dbo].[WatchList] ([UserID], [MovieID], [Status]) VALUES (103, 8, N'Watched')
INSERT [dbo].[WatchList] ([UserID], [MovieID], [Status]) VALUES (103, 9, N'Watched')
INSERT [dbo].[WatchList] ([UserID], [MovieID], [Status]) VALUES (103, 1, N'Watched')
INSERT [dbo].[WatchList] ([UserID], [MovieID], [Status]) VALUES (103, 10, N'Watched')

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[UserID] [int] NOT NULL,
	[MovieID] [int] NOT NULL,
	[Stars] [int] NULL
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[MovieID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Rating] ([UserID], [MovieID], [Stars]) VALUES (101, 1, 4)
INSERT [dbo].[Rating] ([UserID], [MovieID], [Stars]) VALUES (101, 2, 3)
INSERT [dbo].[Rating] ([UserID], [MovieID], [Stars]) VALUES (101, 3, 5)
INSERT [dbo].[Rating] ([UserID], [MovieID], [Stars]) VALUES (102, 7, 3)
INSERT [dbo].[Rating] ([UserID], [MovieID], [Stars]) VALUES (102, 8, 4)
INSERT [dbo].[Rating] ([UserID], [MovieID], [Stars]) VALUES (102, 9, 3)
INSERT [dbo].[Rating] ([UserID], [MovieID], [Stars]) VALUES (102, 10, 3)
INSERT [dbo].[Rating] ([UserID], [MovieID], [Stars]) VALUES (103, 4, 5)
INSERT [dbo].[Rating] ([UserID], [MovieID], [Stars]) VALUES (103, 5, 5)
INSERT [dbo].[Rating] ([UserID], [MovieID], [Stars]) VALUES (103, 6, 5)
INSERT [dbo].[Rating] ([UserID], [MovieID], [Stars]) VALUES (103, 7, 4)
INSERT [dbo].[Rating] ([UserID], [MovieID], [Stars]) VALUES (103, 8, 3)
INSERT [dbo].[Rating] ([UserID], [MovieID], [Stars]) VALUES (103, 9, 4)
INSERT [dbo].[Rating] ([UserID], [MovieID], [Stars]) VALUES (103, 1, 4)
INSERT [dbo].[Rating] ([UserID], [MovieID], [Stars]) VALUES (103, 10, 3)

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[UserID] [int] NOT NULL,
	[MovieID] [int] NOT NULL,
	[Comment] [varchar] (100) NULL
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[MovieID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Review] ([UserID], [MovieID], [Comment]) VALUES (101, 1, N'Great movie')
INSERT [dbo].[Review] ([UserID], [MovieID], [Comment]) VALUES (101, 2, N'Ok movie')
INSERT [dbo].[Review] ([UserID], [MovieID], [Comment]) VALUES (101, 3, N'Good time pass')
INSERT [dbo].[Review] ([UserID], [MovieID], [Comment]) VALUES (102, 7, N'Recommended')
INSERT [dbo].[Review] ([UserID], [MovieID], [Comment]) VALUES (102, 8, N'Good watch')
INSERT [dbo].[Review] ([UserID], [MovieID], [Comment]) VALUES (102, 9, N'A fine film')
INSERT [dbo].[Review] ([UserID], [MovieID], [Comment]) VALUES (102, 10, N'Good fun')
INSERT [dbo].[Review] ([UserID], [MovieID], [Comment]) VALUES (103, 4, N'A cinematic masterpiece')
INSERT [dbo].[Review] ([UserID], [MovieID], [Comment]) VALUES (103, 5, N'Greatest movie ever')
INSERT [dbo].[Review] ([UserID], [MovieID], [Comment]) VALUES (103, 6, N'Nice romance')
INSERT [dbo].[Review] ([UserID], [MovieID], [Comment]) VALUES (103, 7, N'Fine cinematic experience')
INSERT [dbo].[Review] ([UserID], [MovieID], [Comment]) VALUES (103, 8, N'Ok movie')
INSERT [dbo].[Review] ([UserID], [MovieID], [Comment]) VALUES (103, 9, N'Quite fun')
INSERT [dbo].[Review] ([UserID], [MovieID], [Comment]) VALUES (103, 1, N'Great romance')
INSERT [dbo].[Review] ([UserID], [MovieID], [Comment]) VALUES (103, 10, N'Great comedy')

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CastInfo](
	[MovieID] [int] NOT NULL,
	[ActorName] [varchar](30) NULL,
	[ActorID] [int] NOT NULL
PRIMARY KEY CLUSTERED 
(
	[MovieID] ASC,
	[ActorID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CastInfo] ([MovieID], [ActorName], [ActorID]) VALUES (1, N'Leonardo DiCaprio', 1)
INSERT [dbo].[CastInfo] ([MovieID], [ActorName], [ActorID]) VALUES (1, N'Kate Winslet', 2)
INSERT [dbo].[CastInfo] ([MovieID], [ActorName], [ActorID]) VALUES (2, N'Leonardo DiCaprio', 1)
INSERT [dbo].[CastInfo] ([MovieID], [ActorName], [ActorID]) VALUES (2, N'Tom Hardy', 3)
INSERT [dbo].[CastInfo] ([MovieID], [ActorName], [ActorID]) VALUES (3, N'Leonardo DiCaprio', 1)
INSERT [dbo].[CastInfo] ([MovieID], [ActorName], [ActorID]) VALUES (3, N'Margot Robbie', 4)
INSERT [dbo].[CastInfo] ([MovieID], [ActorName], [ActorID]) VALUES (4, N'Al Pacino', 6)
INSERT [dbo].[CastInfo] ([MovieID], [ActorName], [ActorID]) VALUES (4, N'Diane Keaton', 9)
INSERT [dbo].[CastInfo] ([MovieID], [ActorName], [ActorID]) VALUES (5, N'Madhubala', 20)
INSERT [dbo].[CastInfo] ([MovieID], [ActorName], [ActorID]) VALUES (5, N'Dilip Kumar', 21)
INSERT [dbo].[CastInfo] ([MovieID], [ActorName], [ActorID]) VALUES (6, N'Vivien Leigh', 17)
INSERT [dbo].[CastInfo] ([MovieID], [ActorName], [ActorID]) VALUES (6, N'Clark Gable', 18)
INSERT [dbo].[CastInfo] ([MovieID], [ActorName], [ActorID]) VALUES (7, N'Al Pacino', 6)
INSERT [dbo].[CastInfo] ([MovieID], [ActorName], [ActorID]) VALUES (8, N'Robert De Niro', 8)
INSERT [dbo].[CastInfo] ([MovieID], [ActorName], [ActorID]) VALUES (9, N'Robert De Niro', 8)
INSERT [dbo].[CastInfo] ([MovieID], [ActorName], [ActorID]) VALUES (10, N'Robert De Niro', 8)
INSERT [dbo].[CastInfo] ([MovieID], [ActorName], [ActorID]) VALUES (10, N'Anne Hathaway', 10)

GO

ALTER TABLE [dbo].[Director]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Celebrity] ([CelebID])
GO

ALTER TABLE [dbo].[Director]  WITH CHECK ADD FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movie] ([MovieID])
GO

ALTER TABLE [dbo].[List]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID]) on delete cascade
GO

ALTER TABLE [dbo].[List]  WITH CHECK ADD FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movie] ([MovieID])
GO

ALTER TABLE [dbo].[CastInfo]  WITH CHECK ADD FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movie] ([MovieID])
GO

ALTER TABLE [dbo].[CastInfo]  WITH CHECK ADD FOREIGN KEY([ActorID])
REFERENCES [dbo].[Celebrity] ([CelebID])
GO

ALTER TABLE [dbo].[Review]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID]) on delete cascade
GO

ALTER TABLE [dbo].[Review]  WITH CHECK ADD FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movie] ([MovieID])
GO

ALTER TABLE [dbo].[Rating]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID]) on delete cascade
GO

ALTER TABLE [dbo].[Rating]  WITH CHECK ADD FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movie] ([MovieID])
GO

ALTER TABLE [dbo].[WatchList]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID]) on delete cascade
GO

ALTER TABLE [dbo].[WatchList]  WITH CHECK ADD FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movie] ([MovieID])
GO

Select * from Movie
Select * from [User]
Select * from Celebrity
Select * from Director
Select * from Review
Select * from WatchList
Select * from List
Select * from Rating
Select * from CastInfo

--------Functionalities --------------------------------------------------------------------------------------

--------------------------Signin---------------------  1 successful 2 unsuccessful \//\  ***DONE***
create procedure signin
@flag int output,
@Email varchar(30),
@Password varchar (30)
As
Begin
	set @flag=0
	if exists(Select * from [User] where (Email like @Email and [Password] like @Password))
	begin
		set @flag=1
	end
	else 
	begin
		set @flag=2
	end
End
go

--------------------------Signup--------------------- 1 successful 2 unsuccesful \//\  ***DONE***
create procedure signup
@flag int output,
@Name varchar (30),
@Email varchar (30),
@Password varchar (30),
@Bdate varchar(10)
As
Begin
	set @flag=0
	if exists(Select * from [User] where Email like @Email)
	begin
		set @flag=2
	end
	else if(@EMAIL NOT LIKE '_%@__%.com%') 
	begin	
		set @flag=3
	end
	else if(ISDATE(@Bdate)!=1)
	begin
		set @flag=4
	end
	else
	begin
		set @flag=1
		declare @UserID int 
		set @UserID=(Select top (1) UserID from [User] Order by UserID desc)
		set @UserID=@UserID+1
		insert into [User]([UserID], [Name], [Email], [Password] , [Bdate]) 
		VALUES (@UserID, @Name,@Email,@Password ,@Bdate)
	end
End
go

-----------------------Delete Account--------------- 1 successful 2 unsuccesful \//\  ***DONE***
create procedure DeleteAccount
@flag int output,
@Email varchar(30),
@Password varchar (30)
As
Begin
	set @flag=0
	if exists(Select * from [User] where (Email like @Email and [Password] like @Password))
	begin
		set @flag=1
		Delete from [User] where Email like @Email and [Password] like @Password
	end
	else 
	begin
		set @flag=2
	end
End
go

--------------------------Rating of a movie--------------------- \//\   ***DONE***
create procedure Stars
@val int,
@email varchar(30),
@movie varchar(30)
as
begin
	declare @userid int
	declare @mid int
	set @mid = (select M.MovieID from Movie as M where M.Title=@movie)
	set @userid = (select U.UserID from [User] as U where U.Email=@email)
	if exists(select * from Rating where UserID=@userid and MovieID=@mid)
	begin
		update Rating
		set Stars=@val
		where UserID=@userid and MovieID=@mid
	end
	else
	begin
		INSERT [dbo].[Rating] ([UserID], [MovieID], [Stars]) VALUES (@userid,@mid,@val)
	end
end

-----------------------favorite movie---------------------   ***DONE***
create procedure favmovie
@moviename varchar(30)
as
begin
	update Movie set Movie.Favorite=Movie.Favorite+1 where Movie.Title like @moviename
end

-----------------------reviews for movies---------------\//\    ***DONE***
create procedure writereview
@uid varchar(30),
@moviename varchar(30),
@comment varchar(100)
as
begin
	declare @userid int
	declare @mid int
	set @mid = (select M.MovieID from Movie as M where M.Title=@moviename)
	set @userid = (select U.UserID from [User] as U where U.Email=@uid)
	if exists (select * from Review where UserID=@userid and MovieID=@mid)
	begin
		Update Review
		set [Comment]=@comment
		where UserID=@userid and MovieID=@mid
	end
	else
	begin
		INSERT [dbo].[Review] ([UserID], [MovieID], [Comment]) VALUES (@userid,@mid,@comment)
	end
end

-----------------------get watchlist---------------\//\    ***DONE***
create procedure getwatchlist
@email varchar(30)
as 
begin
	declare @uid int
	set @uid = (select U.UserID from [User] as U where U.Email=@email)
	select M.Title from WatchList as WL join Movie as M on WL.MovieID=M.MovieID where UserID=@uid
end

-----------------------User's Watched/Unwatched list---------------\//\   ***DONE***
create procedure addtowatchlist
@uid varchar(30),
@moviename varchar(30)
as
begin
	declare @userid int
	declare @mid int
	set @mid = (select M.MovieID from Movie as M where M.Title=@moviename)
	set @userid = (select U.UserID from [User] as U where U.Email=@uid)
	INSERT [dbo].[WatchList] ([UserID], [MovieID],[Status]) VALUES (@userid, @mid,'UnWatched')
end

-----------------------Favorite Celebrity---------------\//\   ***DONE***
create procedure getfavactor
@actor varchar(30) output
as
begin
	set @actor = (select top 1 Celebrity.[Name] from [Celebrity] join CastInfo on Celebrity.CelebID=CastInfo.ActorID join Movie on Movie.MovieID=CastInfo.MovieID 
				order by Movie.Favorite desc)
end

-----------------------Favorite Movie---------------\//\   ***DONE***
create procedure getfavmovie
@movie varchar(30) output
as
begin
	set @movie = (select top 1 Title from Movie order by Favorite desc)
end

-----------------------Get Movie Details--------------- 1 found 0 Not found  ***DONE***
create procedure SearchMovieByName
@name varchar(40),
@moviename varchar(40) output,
@flag int Output
as
begin    
	if exists(Select * from Movie where Movie.Title=@name)
	begin
		set @flag=1
		select Movie.Genre,Movie.[Release Year],Movie.Favorite,sum(Rating.Stars)/count(Rating.Stars) as Rating From Movie right join Rating on Movie.MovieID=Rating.MovieID
		where Movie.Title like '%'+@name+'%'
		group by Movie.Title,Movie.MovieID,Movie.Genre,Movie.[Release Year],Movie.Favorite
		set @moviename = (select Title from Movie where Movie.Title like '%'+@name+'%')
	end
	else
	begin
		set @flag=0
	end
end

-------------------------GET MOVIE ID-------------------------
create procedure getid
@name varchar(40),
@id int output
as
begin
	set @id = (select Movie.MovieID from Movie where Movie.Title like @name)
end

-----------------------Get Movie Review-----------------------------   ***DONE***
create procedure getreview
@name varchar(40),
@flag int output
as
begin
	if exists(Select * from [Review] join Movie on Movie.MovieID=Review.MovieID where Movie.Title=@name)
	begin
		set @flag=1
		select Review.Comment as [Review(s)] from Review join Movie on Movie.MovieID=Review.MovieID where Movie.Title=@name
	end
	else
	begin
		set @flag=0
	end
end

-----------------------Get Movie Info---------------    ***DONE***
create procedure getinfo
@name varchar(40),
@director varchar(30) output,
@year int output,
@genre varchar(10) output,
@actor varchar(30) output,
@actor2 varchar(30) output,
@rate int output,
@fav int output
as
begin    
	set @genre = (select Genre from Movie where Title=@name)
	set @year = (select [Release Year] from Movie where Title=@Name)
	set @actor = (select top 1 ActorName from Movie join CastInfo on Movie.MovieID=CastInfo.MovieID where Movie.Title=@name order by CastInfo.ActorID asc)
	set @actor2 = (select top 1 ActorName from Movie join CastInfo on Movie.MovieID=CastInfo.MovieID where Movie.Title=@name order by CastInfo.ActorID desc)
	set @fav = (select Favorite from Movie where Movie.Title=@name)
	set @rate = (select sum(Rating.Stars)/count(Rating.Stars) from Rating join Movie on Rating.MovieID=Movie.MovieID where Movie.Title=@name group by Movie.MovieID)
	set @director = (select Celebrity.[Name] from Director join Movie on Director.MovieID=Movie.MovieID join Celebrity on 
					Celebrity.CelebID=Director.UserID where Movie.Title=@name)
end

select * from Movie

--//////////////////////////////////////////////////////////////////////////////

--SIGNUP MAIL--
create trigger signupmail
on [User]
after insert
as
begin
declare @mail varchar(30), @name varchar(30)
set @mail=(select Email from Inserted)
set @name=(select Name from Inserted)

declare @body1 varchar(8000)
set @body1 = '<head>
    <title>WELCOME</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0 " />
    <meta name="format-detection" content="telephone=no" />
    <!--[if !mso]><!-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
    <!--<![endif]-->
    <style type="text/css">
      body {
      -webkit-text-size-adjust: 100% !important;
      -ms-text-size-adjust: 100% !important;
      -webkit-font-smoothing: antialiased !important;
      }
      img {
      border: 0 !important;
      outline: none !important;
      }
      p {
      Margin: 0px !important;
      Padding: 0px !important;
      }
      table {
      border-collapse: collapse;
      mso-table-lspace: 0px;
      mso-table-rspace: 0px;
      }
      td, a, span {
      border-collapse: collapse;
      mso-line-height-rule: exactly;
      }
      .ExternalClass * {
      line-height: 100%;
      }
      span.MsoHyperlink {
      mso-style-priority:99;
      color:inherit;}
      span.MsoHyperlinkFollowed {
      mso-style-priority:99;
      color:inherit;}
      </style>
      <style media="only screen and (min-width:481px) and (max-width:599px)" type="text/css">
      @media only screen and (min-width:481px) and (max-width:599px) {
      table[class=em_main_table] {
      width: 100% !important;
      }
      table[class=em_wrapper] {
      width: 100% !important;
      }
      td[class=em_hide], br[class=em_hide] {
      display: none !important;
      }
      img[class=em_full_img] {
      width: 100% !important;
      height: auto !important;
      }
      td[class=em_align_cent] {
      text-align: center !important;
      }
      td[class=em_aside]{
      padding-left:10px !important;
      padding-right:10px !important;
      }
      td[class=em_height]{
      height: 20px !important;
      }
      td[class=em_font]{
      font-size:14px !important;	
      }
      td[class=em_align_cent1] {
      text-align: center !important;
      padding-bottom: 10px !important;
      }
      }
      </style>
      <style media="only screen and (max-width:480px)" type="text/css">
      @media only screen and (max-width:480px) {
      table[class=em_main_table] {
      width: 100% !important;
      }
      table[class=em_wrapper] {
      width: 100% !important;
      }
      td[class=em_hide], br[class=em_hide], span[class=em_hide] {
      display: none !important;
      }
      img[class=em_full_img] {
      width: 100% !important;
      height: auto !important;
      }
      td[class=em_align_cent] {
      text-align: center !important;
      }
      td[class=em_align_cent1] {
      text-align: center !important;
      padding-bottom: 10px !important;
      }
      td[class=em_height]{
      height: 20px !important;
      }
      td[class=em_aside]{
      padding-left:10px !important;
      padding-right:10px !important;
      } 
      td[class=em_font]{
      font-size:14px !important;
      line-height:28px !important;
      }
      span[class=em_br]{
      display:block !important;
      }
      }
    </style>
  </head>
  <body style="margin:0px; padding:0px;" bgcolor="#ffffff">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#ffffff">
    <tr>
        <td align="center" valign="top"  bgcolor="#ffffff">
          <table width="600" cellpadding="0" cellspacing="0" border="0" align="center" class="em_main_table" style="table-layout:fixed;">
            <tr>
              <td height="40" class="em_height">&nbsp;</td>
            </tr>
            <tr>
              <td align="center" style="font-family:Arial, sans-serif; font-size:50px; font-weight:bold; line-height:50px; color:#feae39;">AIMDB</td>
            </tr>
			<tr>
              <td height="40" class="em_height">&nbsp;</td>
            </tr>
            <tr>
              <td valign="top" class="em_aside">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td valign="middle" align="center"><img src="https://media.giphy.com/media/XkexdiN4zEvwk/giphy.gif"></td>
                  </tr>
                  <tr>
                    <td height="41" class="em_height">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="1" bgcolor="#d8e4f0" style="font-size:0px;line-height:0px;"><img src="https://www.sendwithus.com/assets/img/emailmonks/images/spacer.gif" width="1" height="1" alt="" style="display:block;" border="0" /></td>
                  </tr>
                  <tr>
                    <td height="22" style="font-size:1px; line-height:1px;">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center" style="font-family:Arial, sans-serif; font-size:18px; font-weight:bold; line-height:20px; color:#feae39;">Thanks for signing up</td>
                  </tr>
                  <tr>
                    <td height="20" style="font-size:1px; line-height:1px;">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center" style="font-family:Arial, sans-serif; font-size:18px; line-height:20px; color:#feae39;">Dear User, your new account has been created!</td>
                  </tr>
                  <tr>
                    <td height="12" style="font-size:1px; line-height:1px;">&nbsp;</td>
                  </tr>
                </table>
              </td>
            </tr>
          </table>
        </td>
      </tr>
      <tr>
          <tr>
              <td height="36" class="em_height">&nbsp;</td>
          </tr>
        <td align="center" valign="top"  bgcolor="#30373b" class="em_aside">
          <table width="600" cellpadding="0" cellspacing="0" border="0" align="center" class="em_main_table" style="table-layout:fixed;">
            <tr>
              <td align="center" style="font-family:Arial, sans-serif; font-size:12px; line-height:18px; color:#848789;text-transform:uppercase;">
                2017 AIMDB - All Rights Reserved
              </td>

            </tr>
          </table>
        </td>
      </tr>
    </table>
    </body>
'

EXEC msdb.dbo.sp_send_dbmail
@profile_name = 'AIMDB',
@recipients = @mail,
@subject = 'WELCOME TO AIMDB',
@body = @body1,
@body_format='HTML'
end

--DELETE ACCOUNT MAIL--
create trigger delmail
on [User]
after delete
as
begin
declare @mail varchar(30), @name varchar(30)
set @mail=(select Email from Deleted)
set @name=(select Name from Deleted)
declare @body1 varchar(8000)
set @body1 = '<head>
    <title>BYE</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0 " />
    <meta name="format-detection" content="telephone=no" />
    <!--[if !mso]><!-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
    <!--<![endif]-->
    <style type="text/css">
      body {
      -webkit-text-size-adjust: 100% !important;
      -ms-text-size-adjust: 100% !important;
      -webkit-font-smoothing: antialiased !important;
      }
      img {
      border: 0 !important;
      outline: none !important;
      }
      p {
      Margin: 0px !important;
      Padding: 0px !important;
      }
      table {
      border-collapse: collapse;
      mso-table-lspace: 0px;
      mso-table-rspace: 0px;
      }
      td, a, span {
      border-collapse: collapse;
      mso-line-height-rule: exactly;
      }
      .ExternalClass * {
      line-height: 100%;
      }
      span.MsoHyperlink {
      mso-style-priority:99;
      color:inherit;}
      span.MsoHyperlinkFollowed {
      mso-style-priority:99;
      color:inherit;}
      </style>
      <style media="only screen and (min-width:481px) and (max-width:599px)" type="text/css">
      @media only screen and (min-width:481px) and (max-width:599px) {
      table[class=em_main_table] {
      width: 100% !important;
      }
      table[class=em_wrapper] {
      width: 100% !important;
      }
      td[class=em_hide], br[class=em_hide] {
      display: none !important;
      }
      img[class=em_full_img] {
      width: 100% !important;
      height: auto !important;
      }
      td[class=em_align_cent] {
      text-align: center !important;
      }
      td[class=em_aside]{
      padding-left:10px !important;
      padding-right:10px !important;
      }
      td[class=em_height]{
      height: 20px !important;
      }
      td[class=em_font]{
      font-size:14px !important;	
      }
      td[class=em_align_cent1] {
      text-align: center !important;
      padding-bottom: 10px !important;
      }
      }
      </style>
      <style media="only screen and (max-width:480px)" type="text/css">
      @media only screen and (max-width:480px) {
      table[class=em_main_table] {
      width: 100% !important;
      }
      table[class=em_wrapper] {
      width: 100% !important;
      }
      td[class=em_hide], br[class=em_hide], span[class=em_hide] {
      display: none !important;
      }
      img[class=em_full_img] {
      width: 100% !important;
      height: auto !important;
      }
      td[class=em_align_cent] {
      text-align: center !important;
      }
      td[class=em_align_cent1] {
      text-align: center !important;
      padding-bottom: 10px !important;
      }
      td[class=em_height]{
      height: 20px !important;
      }
      td[class=em_aside]{
      padding-left:10px !important;
      padding-right:10px !important;
      } 
      td[class=em_font]{
      font-size:14px !important;
      line-height:28px !important;
      }
      span[class=em_br]{
      display:block !important;
      }
      }
    </style>
  </head>
  <body style="margin:0px; padding:0px;" bgcolor="#ffffff">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#ffffff">
    <tr>
        <td align="center" valign="top"  bgcolor="#ffffff">
          <table width="600" cellpadding="0" cellspacing="0" border="0" align="center" class="em_main_table" style="table-layout:fixed;">
            <tr>
              <td height="40" class="em_height">&nbsp;</td>
            </tr>
            <tr>
              <td align="center" style="font-family:Arial, sans-serif; font-size:50px; font-weight:bold; line-height:50px; color:#feae39;">AIMDB</td>
            </tr>
              <tr>
              <td height="40" class="em_height">&nbsp;</td>
            </tr>
            <tr>
              <td valign="top" class="em_aside">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td valign="middle" align="center"><img src="https://i.giphy.com/LUYRrhjRj2wnK.gif"</td>
                  </tr>
                  <tr>
                    <td height="41" class="em_height">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="1" bgcolor="#d8e4f0" style="font-size:0px;line-height:0px;"><img src="https://www.sendwithus.com/assets/img/emailmonks/images/spacer.gif" width="1" height="1" alt="" style="display:block;" border="0" /></td>
                  </tr>
                  <tr>
                    <td height="22" style="font-size:1px; line-height:1px;">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center" style="font-family:Arial, sans-serif; font-size:18px; font-weight:bold; line-height:20px; color:#feae39;">We are sad to see you go</td>
                  </tr>
                  <tr>
                    <td height="20" style="font-size:1px; line-height:1px;">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center" style="font-family:Arial, sans-serif; font-size:18px; line-height:20px; color:#feae39;">Dear User, your account has been deleted!</td>
                  </tr>
                  <tr>
                    <td height="12" style="font-size:1px; line-height:1px;">&nbsp;</td>
                  </tr>
                </table>
              </td>
            </tr>
          </table>
        </td>
      </tr>
      <tr>
          <tr>
              <td height="36" class="em_height">&nbsp;</td>
          </tr>
        <td align="center" valign="top"  bgcolor="#30373b" class="em_aside">
          <table width="600" cellpadding="0" cellspacing="0" border="0" align="center" class="em_main_table" style="table-layout:fixed;">
            <tr>
              <td align="center" style="font-family:Arial, sans-serif; font-size:12px; line-height:18px; color:#848789;text-transform:uppercase;">
                2017 AIMDB - All Rights Reserved
              </td>

            </tr>
          </table>
        </td>
      </tr>
    </table>
    </body>
'

EXEC msdb.dbo.sp_send_dbmail
@profile_name = 'AIMDB',
@recipients = @mail,
@subject = 'BYE FROM AIMDB',
@body = @body1,
@body_format='HTML'
end

SET DATEFORMAT ymd;

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[UserID] [varchar] (30) NOT NULL,
	[Password] [varchar] (30) NULL
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([UserID], [Password]) VALUES (1, N'sman', N'1796')