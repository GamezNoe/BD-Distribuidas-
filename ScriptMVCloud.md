
https://github.com/d4vhost/GestionHospitalaria

### Comando para instalar el mysql en maquinas virtuales 
- `sudo apt update && sudo apt upgrade -y`
- `sudo apt install mysql-server -y`
- `sudo mysql_secure_installation`
- `sudo vi /etc/mysql/mysql.conf.d/mysqld.cnf`
- `sudo systemctl restart mysql`
- `sudo mysql`
##### Si no se tiene instalado vi o nano se lo debe instalar 
- `sudo install vi`
### Creacionn de usuarios 
> Create User 'centromedico'@'%' IDENTIFIED BY 'centromedico@123'
> GRANT ALL PRIVILEGES ON *.* TO 'centromedico'@'%' WITH GRANT OPTION;
> FLUSH PRIVILEGES	;

### Pasos para conectarte por ssh desde la PC
Primero debes crear un usuario 
- `sudo adduser noemi`
- `sudo usermod -aG sudo noemi`

contraseña: 2003

1. Crear el directorio
- `sudo mkdir -p /home/noemi/.ssh`
2. Ediatar el archivo de claves publicas
- `sudo vi /home/noemi/.ssh/authorized_keys`
 la clave: 
`ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKDDbUIhw3ExsdjLMqzgYnviKrX+ioHvOfEhN3Wc3CHr noemi@Gamez`
3. Establece lso permisos correctos
- `sudo chown -R noemi:noemi /home/noemi/.ssh`
- `sudo chmod 700 /home/noemi/.ssh`
- `sudo chmod 600 /home/noemi/.ssh/authorized_keys`

4. Conectarse desde tu pc
- `ssh noemi@35.237.26.117`


### Creacion de la base de datos 

-- Tabla de centros médicos 

CREATE TABLE CentrosMedicos ( 

    CentroID INT PRIMARY KEY AUTO_INCREMENT, 

    Nombre VARCHAR(100) NOT NULL, 

    Ciudad VARCHAR(100) NOT NULL, 

    Direccion VARCHAR(200), 

    Telefono VARCHAR(20) 

); 

-- CREACION DE TABLAS 
CREATE TABLE UsuariosCentro ( 

    UsuarioID INT PRIMARY KEY AUTO_INCREMENT, 

    CentroID INT NOT NULL, 

    Email VARCHAR(75) NOT NULL UNIQUE, 

    Contrasena VARCHAR(75) NOT NULL, 

    FOREIGN KEY (CentroID) REFERENCES CentrosMedicos(CentroID) 

); 



-- Tabla de especialidades 

CREATE TABLE Especialidades ( 

    EspecialidadID INT PRIMARY KEY AUTO_INCREMENT, 

    Nombre VARCHAR(100) NOT NULL, 

    Descripcion VARCHAR(255) 

); 

-- Tabla de médicos (debe ir antes por las claves foráneas) 

CREATE TABLE Medicos ( 

    MedicoID INT PRIMARY KEY AUTO_INCREMENT, 

    Nombre VARCHAR(100) NOT NULL, 

    Apellido VARCHAR(100) NOT NULL, 

    EspecialidadID INT NOT NULL, 

    CentroID INT NOT NULL, 

    Email VARCHAR(100), 

    Telefono VARCHAR(20), 

    FOREIGN KEY (EspecialidadID) REFERENCES Especialidades(EspecialidadID), 

    FOREIGN KEY (CentroID) REFERENCES CentrosMedicos(CentroID) 

); 

-- Tabla de asignación de especialidades 

CREATE TABLE AsignacionEspecialidades ( 

    AsignacionID INT PRIMARY KEY AUTO_INCREMENT, 

    MedicoID INT NOT NULL, 

    EspecialidadID INT NOT NULL, 

    FOREIGN KEY (MedicoID) REFERENCES Medicos(MedicoID), 

    FOREIGN KEY (EspecialidadID) REFERENCES Especialidades(EspecialidadID) 

); 

-- Tabla de empleados 

CREATE TABLE Empleados ( 

    EmpleadoID INT PRIMARY KEY AUTO_INCREMENT, 

    Nombre VARCHAR(100) NOT NULL, 

    Apellido VARCHAR(100) NOT NULL, 

    Cargo VARCHAR(100), 

    Email VARCHAR(100), 

    Telefono VARCHAR(20) 

); 

-- Tabla de clientes 

CREATE TABLE Clientes ( 

    ClienteID INT PRIMARY KEY AUTO_INCREMENT, 

    Nombre VARCHAR(100) NOT NULL, 

    Apellido VARCHAR(100) NOT NULL, 

    Correo VARCHAR(100), 

    Telefono VARCHAR(20) 

); 
  
  
### Replicacion 

### Conexion con el mysql Workbench
- `CREATE USER 'admin'@'164.163.160.126' IDENTIFIED BY '$User$Not$Found$404';`
- `GRANT ALL PRIVILEGES ON *.* TO 'admin'@'164.163.160.126' WITH GRANT OPTION;`
- `FLUSH PRIVILEGES;`

- Hostname: 35.237.26.117
- Username: admin 
- Password: $User$Not$Found$404

--Se esta trabajando con guayaquil , quito no funciona