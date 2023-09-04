-- Crear un curso
CREATE PROCEDURE CreateCurso
    @Descripcion NVARCHAR(MAX),
    @Fecha DATETIME
   
AS
BEGIN
    INSERT INTO Cursos (Descripcion, Fecha )
    VALUES (@Descripcion, @Fecha);
END;

-- Leer un curso por ID
CREATE PROCEDURE GetByIdCurso
    @IdCurso INT
AS
BEGIN
    SELECT *
    FROM Cursos
    WHERE IdCurso = @IdCurso;
END;

-- Actualizar un curso
CREATE PROCEDURE UpdateCursoProfesorId
    @IdCurso INT,
    @Descripcion NVARCHAR(MAX),
    @Fecha DATETIME,
    @ProfesorId INT
AS
BEGIN
    UPDATE Cursos
    SET Descripcion = @Descripcion,
        Fecha = @Fecha,
        ProfesorId = @ProfesorId
    WHERE IdCurso = @IdCurso;
END;


CREATE PROCEDURE UpdateCurso
    @IdCurso INT,
    @Descripcion NVARCHAR(MAX),
    @Fecha DATETIME
AS
BEGIN
    UPDATE Cursos
    SET Descripcion = @Descripcion,
        Fecha = @Fecha
    WHERE IdCurso = @IdCurso;
END;

-- Procedimiento almacenado para obtener todos los cursos
CREATE PROCEDURE GetCursos
AS
BEGIN
    SELECT * FROM Cursos;
END;
