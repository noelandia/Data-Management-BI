CREATE TABLE [servicios].[medico_servicio] (
	codMedico INT NOT NULL,
	idServicio INT NOT NULL,
	PRIMARY KEY (codMedico, idServicio),
	FOREIGN KEY (codMedico) REFERENCES medico(codMedico),
	FOREIGN KEY (idServicio) REFERENCES servicio(idServicio)
);

