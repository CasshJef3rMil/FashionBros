-- Tabla Usuarios
CREATE TABLE Usuarios (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL,
    Edad INT,
    Email VARCHAR(255) UNIQUE NOT NULL,
    Telefono VARCHAR(20)
);

-- Tabla Categoria
CREATE TABLE Categoria (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100) NOT NULL
);

-- Tabla Catalogo
CREATE TABLE Catalogo (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100) NOT NULL,
    Imagen IMAGE ,
    Descripcion VARCHAR(100),
    AñoFabricacion DATE,
    IdUsuario INT NOT NULL,
    IdCategoria INT NOT NULL,
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios(Id),
    FOREIGN KEY (IdCategoria) REFERENCES Categoria(Id) 
);

-- Tabla Reseñas
CREATE TABLE Reseñas (
    Id INT PRIMARY KEY IDENTITY(1,1),
    IdCatalogo INT NOT NULL,
    IdUsuario INT NOT NULL,
    Comentario VARCHAR(100),
    Calificacion  VARCHAR(100)NOT NULL,
    FOREIGN KEY (IdCatalogo) REFERENCES Catalogo(Id),
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios(Id)
);
