--Pasos para la extracción de un archivo desde linux a windows 

### 🧩 **Requisitos previos**:

1. Tener instalado **OpenSSH** en tu máquina Windows (Windows 10 o superior ya lo incluye).
2. Conocer:

   * La IP de la máquina **Linux**.
   * El nombre de usuario en la máquina Linux.
   * La ruta del archivo en Linux que deseas copiar.
   * La carpeta de destino en tu PC Windows.

---

### 📌 **Paso a paso**:

1. **Abre PowerShell** o el **Símbolo del sistema** en Windows.

2. Usa este formato del comando `scp`:

```bash
scp usuario@IP_de_Linux:/ruta/del/archivo C:\ruta\de\destino
```

🔹 **Ejemplo concreto**:

```bash
scp juan@192.168.1.50:/home/juan/documento.txt C:\Users\TuUsuario\Downloads
```

Esto copia el archivo `documento.txt` desde la máquina Linux (`192.168.1.50`) a la carpeta de descargas de tu usuario en Windows.

3. Si es la primera conexión, puede preguntarte si confías en el host. Escribe `yes`.

4. Luego te pedirá la contraseña del usuario en Linux. Escríbela y presiona Enter.

5. ¡Listo! El archivo será copiado.

---

### 🛠️ **Consejos**:

* Asegúrate de que el puerto 22 (SSH) esté abierto en la máquina Linux.
* Si estás copiando **carpetas completas**, usa la opción `-r`:

  ```bash
  scp -r juan@192.168.1.50:/home/juan/proyecto C:\Users\TuUsuario\Documents
  ```

-- ¿ Cómo hacerlo al revés (de Windows a Linux)?

---

### 🧩 **Requisitos previos**:

1. Tener habilitado **OpenSSH** en Windows (PowerShell ya lo soporta).
2. Conocer:

   * La IP de la máquina **Linux**.
   * El usuario de la máquina Linux.
   * La ruta en Linux donde quieres guardar el archivo.
   * La ruta en Windows del archivo que quieres copiar.

---

### 📌 **Paso a paso**:

1. **Abre PowerShell** o el **Símbolo del sistema** en Windows.

2. Usa este formato del comando:

```bash
scp "C:\ruta\al\archivo" usuario@IP_de_Linux:/ruta/de/destino
```

🔹 **Ejemplo concreto**:

```bash
scp "C:\Users\TuUsuario\Desktop\informe.pdf" juan@192.168.1.50:/home/juan/Documentos/
```

Esto copia el archivo `informe.pdf` desde tu escritorio en Windows a la carpeta `Documentos` del usuario `juan` en la máquina Linux con IP `192.168.1.50`.

3. Si es la primera vez conectándote, puede pedirte confirmar la clave SSH (`yes`).

4. Luego, te pedirá la **contraseña del usuario Linux**. Escríbela y presiona Enter.

5. ¡Listo! El archivo estará en Linux.

---

### 🛠️ **Consejos**:

* Si el nombre del archivo o ruta tiene espacios, **siempre ponlo entre comillas** `"`.
* Para copiar **una carpeta completa**, usa `-r`:

  ```bash
  scp -r "C:\Users\TuUsuario\Desktop\miCarpeta" juan@192.168.1.50:/home/juan/
  ```

---
