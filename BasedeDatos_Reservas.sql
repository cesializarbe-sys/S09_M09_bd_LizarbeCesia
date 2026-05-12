CREATE DATABASE viajes_db;
GO
 
USE viajes_db;
GO

CREATE TABLE reservas (
    id              INT IDENTITY(1,1)   PRIMARY KEY,
    nombre_cliente  VARCHAR(100)        NOT NULL,
    email           VARCHAR(100)        NOT NULL,
    destino         VARCHAR(100)        NOT NULL,
    fecha_viaje     DATE                NOT NULL,
    fecha_regreso   DATE                NOT NULL,
    num_personas    INT                 NOT NULL DEFAULT 1,
    precio_total    DECIMAL(10,2)       NOT NULL,
    estado          VARCHAR(20)         NOT NULL DEFAULT 'Pendiente',
    created_at      DATETIME            DEFAULT GETDATE()
);
GO
 
INSERT INTO reservas (nombre_cliente, email, destino, fecha_viaje, fecha_regreso, num_personas, precio_total, estado)
VALUES
    ('Carlos Mendoza', 'carlos@email.com', 'París, Francia',    '2025-06-15', '2025-06-25', 2, 3500.00, 'Confirmada'),
    ('Ana García',     'ana@email.com',    'Tokio, Japón',      '2025-07-01', '2025-07-14', 1, 4200.00, 'Pendiente'),
    ('Luis Torres',    'luis@email.com',   'Nueva York, EE.UU.','2025-08-10', '2025-08-17', 3, 5100.00, 'Confirmada'),
    ('María López',    'maria@email.com',  'Roma, Italia',      '2025-09-05', '2025-09-12', 2, 2800.00, 'Cancelada'),
    ('Pedro Ramírez',  'pedro@email.com',  'Cancún, México',    '2025-10-20', '2025-10-27', 4, 6200.00, 'Pendiente');
GO

SELECT * FROM reservas;
GO