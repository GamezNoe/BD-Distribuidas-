¡Claro! Aquí tienes el **paso a paso para instalar una máquina virtual con Ubuntu y otra con Windows 10**, utilizando **VirtualBox**, que es gratuito y fácil de usar:

---

## 🔧 **Requisitos previos**

1. ✅ Tener instalado **VirtualBox**
   👉 Descárgalo de [https://www.virtualbox.org/](https://www.virtualbox.org/)

2. ✅ Descargar las imágenes ISO:

   * **Ubuntu**: [https://ubuntu.com/download/desktop](https://ubuntu.com/download/desktop)
   * **Windows 10**: [https://www.microsoft.com/software-download/windows10](https://www.microsoft.com/software-download/windows10)

---

## 🐧 **Pasos para instalar Ubuntu en VirtualBox**

### 1. Crear la máquina virtual

* Abre VirtualBox y haz clic en **"Nueva"**
* Nombre: `Ubuntu`
* Tipo: `Linux`
* Versión: `Ubuntu (64-bit)`
* Asigna RAM: **mínimo 2048 MB (2 GB)**, recomendable 4096 MB si tienes suficiente.

### 2. Crear disco duro virtual

* Tipo: **VDI (VirtualBox Disk Image)**
* Almacenamiento: **Reservado dinámicamente**
* Tamaño: **20 GB** o más

### 3. Montar la ISO de Ubuntu

* Selecciona tu nueva VM > Clic en **"Configuración"**
* Ve a **Almacenamiento**
* En "Controlador IDE", selecciona el icono de disco vacío > clic en el icono del disco a la derecha > **"Elegir un archivo de disco..."**
* Selecciona el archivo `.iso` de Ubuntu

### 4. Iniciar instalación

* Haz clic en **"Iniciar"**
* Aparecerá el instalador de Ubuntu:

  * Escoge el idioma y haz clic en **"Instalar Ubuntu"**
  * Sigue los pasos del asistente (puedes elegir borrar el disco virtual completamente)
  * Establece usuario, contraseña y zona horaria

### 5. Finalizar

* Una vez finalizada la instalación, **reinicia** la VM y **quita el ISO** desde almacenamiento.
* Inicia y ya tienes Ubuntu instalado.

---

## 🪟 **Pasos para instalar Windows 10 en VirtualBox**

### 1. Crear la máquina virtual

* En VirtualBox, clic en **"Nueva"**
* Nombre: `Windows 10`
* Tipo: `Microsoft Windows`
* Versión: `Windows 10 (64-bit)`
* RAM: **mínimo 4096 MB (4 GB)**

### 2. Crear disco duro virtual

* Tipo: **VDI**
* Almacenamiento: **Reservado dinámicamente**
* Tamaño: **50 GB** recomendado

### 3. Montar la ISO de Windows 10

* Ve a **Configuración > Almacenamiento**
* En el controlador IDE, elige el ISO de Windows 10 como hiciste con Ubuntu

### 4. Iniciar instalación

* Haz clic en **"Iniciar"**
* Sigue los pasos del instalador de Windows:

  * Escoge el idioma
  * Elige **Instalación personalizada**
  * Selecciona el disco virtual
  * Crea usuario y contraseña cuando lo solicite

### 5. Finalizar

* Después de instalar, reinicia y quita el ISO desde almacenamiento
* ¡Listo! Tendrás tu Windows 10 funcionando en VirtualBox

---

## 🧩 (Opcional) Instalar **Guest Additions**

Esto mejora el rendimiento, resolución de pantalla y portapapeles compartido:

* Con la VM encendida, ve a **Dispositivos > Insertar imagen de CD de las Guest Additions**
* Dentro de la VM, abre el disco y ejecuta el instalador

---

¿Te gustaría que te dé también los pasos para compartir archivos entre el host y la VM?

 
 