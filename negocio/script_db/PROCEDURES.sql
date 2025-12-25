USE [CATALOGO_WEB_DB]
GO

/****** Object:  StoredProcedure [dbo].[insertNuevo]    Script Date: 24/12/2025 18:40:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[insertNuevo]
@email varchar(100),
@pass varchar(20)
as
insert into USERS (email, pass, admin) values (@email, @pass, 0)
GO                                                                                                                                    

USE [CATALOGO_WEB_DB]
GO

/****** Object:  StoredProcedure [dbo].[storedAltaArticulo]    Script Date: 24/12/2025 19:01:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[storedAltaArticulo]
@codigo varchar(50),
@nombre varchar(50),
@desc varchar(150),
@idMarca int,
@idCategoria int,
@img varchar(1000),
@precio money
as
insert into ARTICULOS values(@codigo, @nombre, @desc, @idMarca, @idCategoria, @img, @precio) 


GO

USE [CATALOGO_WEB_DB]
GO

/****** Object:  StoredProcedure [dbo].[storedEliminarArticulo]    Script Date: 24/12/2025 19:05:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[storedEliminarArticulo]
@id int
as
delete From ARTICULOS Where id = @id
GO


USE [CATALOGO_WEB_DB]
GO

/****** Object:  StoredProcedure [dbo].[storedModificarArticulo]    Script Date: 24/12/2025 19:08:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[storedModificarArticulo]
@codigo varchar(50),
@nombre varchar(50),
@desc varchar(50),
@idMarca int,
@idCategoria int,
@img varchar(1000),
@precio money,
@id int
as
update ARTICULOS set Codigo = @codigo, Nombre = @nombre, Descripcion = @desc, IdMarca = @idMarca, IdCategoria = @idCategoria,
ImagenUrl = @img, Precio = @precio
Where Id = @id

GO


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        