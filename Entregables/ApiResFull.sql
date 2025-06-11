
---Guia de Realizar las una API Rest en C#

## 🛠️ Paso 1: Crear el proyecto

### Usando Visual Studio:

1. Abre Visual Studio y selecciona "Crear un nuevo proyecto".
2. Elige **ASP.NET Core Web API**.
3. Nómbralo, por ejemplo: `MiApiRest`.
4. Asegúrate de seleccionar:

   * .NET 6 o superior
   * Desmarcar “Enable OpenAPI support” si no quieres Swagger (aunque es recomendable dejarlo para pruebas)

### Usando la terminal:

---

## 📂 Paso 2: Estructura del proyecto

* `Program.cs`: punto de entrada de la app
* `Controllers/`: donde pondrás tus controladores (endpoints)
* `Models/`: crearás tus clases de datos aquí
* `Services/` (opcional): lógica de negocio
* `appsettings.json`: configuración general

---

## 📦 Paso 3: Crear un modelo

Crea una carpeta `Models` y dentro un archivo `Producto.cs`:

```csharp
namespace MiApiRest.Models
{
    public class Producto
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public decimal Precio { get; set; }
    }
}
```

---

## 🎮 Paso 4: Crear un controlador

En la carpeta `Controllers`, crea `ProductosController.cs`:

```csharp
using Microsoft.AspNetCore.Mvc;
using MiApiRest.Models;

namespace MiApiRest.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class ProductosController : ControllerBase
    {
        private static List<Producto> productos = new List<Producto>()
        {
            new Producto { Id = 1, Nombre = "Teclado", Precio = 20.5m },
            new Producto { Id = 2, Nombre = "Mouse", Precio = 10.99m }
        };

        [HttpGet]
        public ActionResult<IEnumerable<Producto>> Get()
        {
            return Ok(productos);
        }

        [HttpGet("{id}")]
        public ActionResult<Producto> Get(int id)
        {
            var prod = productos.FirstOrDefault(p => p.Id == id);
            if (prod == null) return NotFound();
            return Ok(prod);
        }

        [HttpPost]
        public ActionResult Post([FromBody] Producto nuevo)
        {
            productos.Add(nuevo);
            return CreatedAtAction(nameof(Get), new { id = nuevo.Id }, nuevo);
        }

        [HttpPut("{id}")]
        public ActionResult Put(int id, [FromBody] Producto editado)
        {
            var prod = productos.FirstOrDefault(p => p.Id == id);
            if (prod == null) return NotFound();

            prod.Nombre = editado.Nombre;
            prod.Precio = editado.Precio;
            return NoContent();
        }

        [HttpDelete("{id}")]
        public ActionResult Delete(int id)
        {
            var prod = productos.FirstOrDefault(p => p.Id == id);
            if (prod == null) return NotFound();

            productos.Remove(prod);
            return NoContent();
        }
    }
}
```

---

## 🚀 Paso 5: Ejecutar el proyecto

### Visual Studio:

Presiona `F5` o haz clic en “Iniciar”.

### Terminal:

```bash
dotnet run
```

Por defecto, la API se expone en `https://localhost:5001` o `http://localhost:5000`.

---

## 🧪 Paso 6: Probar tu API

Puedes usar herramientas como:

* [Postman](https://www.postman.com/)
* Swagger (ya viene incluido en Visual Studio)
* Curl en consola:

  ```bash
  curl https://localhost:5001/api/productos
  ```

---

## ✅ Opcional: Mejoras siguientes

* Conexión con base de datos usando Entity Framework Core
* Validación de modelos
* Autenticación y autorización
* Separar lógica en servicios y repositorios
* Manejo de errores centralizado

---

