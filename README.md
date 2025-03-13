# 📘 Data-Management-BI - Proyecto Sanitario - MedServices

Implementación del sistema de registro de atención hospitalaria, para el proyecto sanitario correspondiente al módulo de Data Management & Business Intelligence de la Maestría en Ciencia de Datos e Inteligencia Artificial de la Universidad Autónoma Gabriel Rene Moreno.

---

## 👥 Integrantes
- **Andia Flores Noel** – [@noelandia](https://github.com/noelandia)
- **Hurtado Cabrera Rodny Pablo** – [@usuario-github](https://github.com/usuario-github)
- **Olguín Ledezma Roberto Carlos** – [@usuarioGitHub](https://github.com/usuario)
- **Polanco Maldonado Ana Luisa** – [@Anitapm25](https://github.com/Anitapm25)
- **Soria Carlos Alfredo** – [@alfabcd8](https://github.com/alfabcd8)


---

## 🛠️ Herramientas y Tecnologías Utilizadas
- Bases de Datos: SQL Server
- Control de Versiones: Git y GitHub
- Herramientas: Visual Studio Community 2022, SQL Server Management Studio 20
- Librerías: Microsoft DataTools IntegrationServices, Microsoft DataTools ReportingServices

---

## 🚀 Instalación y Configuración

### Prerrequisitos
Asegúrate de tener instalados los siguientes programas:
- [Git](https://git-scm.com/)
- [Visual Studio Community 2022](https://visualstudio.microsoft.com/)
- [SQL Server Management Studio 20](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver15)
- SQL Server 2022

### Clonar el repositorio
```bash
git clone https://github.com/noelandia/Data-Management-BI.git
```

### En Visual Studio abrir la solución `MedServicesBI.sln`
Al momento de abrir la solución, se solicitará la introducción de una contraseña que es utilizada en el proyecto de Integración de Datos.
La contraseña es `MedServices`.

Una vez abierta la solución, en el mismo aparecerán tres proyectos:
- **MedServicesOLTP**: Proyecto de Base de Datos Estructural
- **MedServicesDW**: Proyecto de Base de Datos Analítica
- **MedServicesETL**: Proyecto de Integración de Datos

### Instalar proyecto de Base de Datos Estructural
Crea una nueva base de datos en SQL Server con el nombre `MedServicesOLTP`, da clic derecho sobre el proyecto `MedServicesOLTP` y selecciona la opción `Publicar`.

### Instalar proyecto de Base de Datos Analítica
Crea una nueva base de datos en SQL Server con el nombre `MedServicesDW`, da clic derecho sobre el proyecto `MedServicesDW` y selecciona la opción `Publicar`.

### Instalar proyecto de Integración de Datos
Despliega el proyecto `MedServicesETL`, busca la carpeta Paquetes SSIS y ejecuta los paquetes en el siguiente orden:
1. **DimHospital.dtsx**
2. **DimMedico.dtsx**
3. **DimPaciente.dtsx**
4. **DimServicio.dtsx**
5. **FactVisitaMedica.dtsx**
6. **FactIngresoHospitalario.dtsx**

---

## 📝 Licencia
Este proyecto está bajo la licencia [MIT](https://opensource.org/licenses/MIT).

---
