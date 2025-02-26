CREATE TABLE servicios.hospital_servicio 
(
	codhospital INT NOT NULL,
	cant_cama INT,
	FOREIGN KEY (codhospital) REFERENCES servicios.hospital(codhospital) ON DELETE CASCADE ON UPDATE CASCADE,
);
