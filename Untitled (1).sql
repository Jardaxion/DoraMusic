CREATE TABLE [users] (
  [id] integer PRIMARY KEY,
  [login] nvarchar(255),
  [password] nvarchar(255),
  [type] integer
)
GO

CREATE TABLE [type] (
  [id] integer PRIMARY KEY,
  [type] nvarchar(255)
)
GO

CREATE TABLE [music] (
  [id] integer PRIMARY KEY,
  [user_id] integer,
  [path] nvarchar(255),
  [category] nvarchar(255)
)
GO

CREATE TABLE [category] (
  [id] integer PRIMARY KEY,
  [category] nvarchar(255)
)
GO

CREATE TABLE [admin] (
  [id] integer PRIMARY KEY,
  [login] nvarchar(255),
  [password] nvarchar(255)
)
GO

CREATE TABLE [playlist] (
  [id] integer PRIMARY KEY,
  [name] nvarchar(255),
  [user_id] integer
)
GO

CREATE TABLE [playlist_music] (
  [id_playlist] integer,
  [id_music] integer
)
GO

ALTER TABLE [users] ADD FOREIGN KEY ([type]) REFERENCES [type] ([id])
GO

ALTER TABLE [music] ADD FOREIGN KEY ([user_id]) REFERENCES [users] ([id])
GO

ALTER TABLE [music] ADD FOREIGN KEY ([category]) REFERENCES [category] ([category])
GO

ALTER TABLE [playlist] ADD FOREIGN KEY ([user_id]) REFERENCES [users] ([id])
GO

ALTER TABLE [playlist_music] ADD FOREIGN KEY ([id_playlist]) REFERENCES [playlist] ([id])
GO

ALTER TABLE [playlist_music] ADD FOREIGN KEY ([id_music]) REFERENCES [music] ([id])
GO
