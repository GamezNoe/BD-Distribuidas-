
---

## ✅ PASOS PARA CREAR UNA INSTANCIA EN SQL SERVER

---

### 🧩 **1. Descargar SQL Server**

1. Descarga la edición que necesites (Express si es para pruebas o desarrollo).
2. Ejecuta el instalador.

---

### 🛠️ **2. Ejecutar el instalador de SQL Server**

1. **Selecciona “Nueva instalación independiente de SQL Server”**.
2. Espera que se verifiquen los requisitos del sistema.

---

### ⚙️ **3. Elegir tipo de instalación**

1. Marca la opción **“Nueva instancia de SQL Server”**.
2. En el campo de nombre de la instancia:

   * Puedes usar:

     * **Predeterminada** (se accede solo con `localhost`)
     * **Nombrada** (por ejemplo: `SQL2022`, se accede como `localhost\SQL2022`)

---

### 📋 **4. Seleccionar características**

1. Marca al menos:

   * **Motor de base de datos** (`Database Engine Services`)
   * Opcionalmente, **SQL Server Replication**, **Full-Text**, etc.
2. Pulsa **Next**.

---

### 👤 **5. Configuración del servidor**

1. Configura las cuentas de servicio (puedes dejar por defecto).
2. Configura el modo de autenticación:

   * Recomendado: **Modo mixto (SQL Server y Windows Authentication)**.
   * Define la contraseña para `sa` y agrega usuarios administradores.

---

### 🗃️ **6. Configurar rutas y opciones de base de datos (opcional)**

* Puedes dejar las rutas por defecto o personalizarlas (archivos MDF, LDF, backups).
* Pulsa **Next**.

---

### ✅ **7. Comenzar instalación**

* Revisa el resumen de configuración.
* Pulsa **Install** y espera que finalice.

---

### 🟢 **8. Verificar la instalación**

1. Abre **SQL Server Management Studio (SSMS)**.
2. Conéctate usando:

   * **Servidor:** `localhost` o `localhost\NombreInstancia`
   * **Autenticación:** Windows o SQL según lo configurado.
3. ¡Listo! Ya puedes crear bases de datos y ejecutar consultas.
---
