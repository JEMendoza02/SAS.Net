<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="crud-styles.css">
    <title>CRUD de Productos - Tienda SAS</title>
</head>
<body>
    <header>
        <h1>CRUD de Productos</h1>
    </header>
    <section class="contenedor">
        <!-- Sección de Productos Destacados -->
        <div class="productos-destacados">
            <h2>Productos Más Populares</h2>
            <div class="producto-destacado">Tomate</div>
            <div class="producto-destacado">Jitomate</div>
            <div class="producto-destacado">Cebolla</div>
            <div class="producto-destacado">Zanahoria</div>
        </div>
        
        <!-- Botón para Crear Producto -->
        <button class="btn-crear">Crear Producto</button>
        
        <!-- Tabla de Productos -->
        <div class="tabla-productos">
            <h2>Productos</h2>
            <table>
                <thead>
                    <tr>
                        <th>Imagen</th>
                        <th>Nombre del Producto</th>
                        <th>Precio</th>
                        <th>Stock</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><img src="img/Jitomate.jpeg" alt="Jitomate" class="img-producto"></td>
                        <td>Jitomate</td>
                        <td>$25.000</td>
                        <td>25 unidades</td>
                        <td>
                            <button class="btn-editar"><i class="fa-solid fa-pen"></i></button>
                            <button class="btn-eliminar"><i class="fa-solid fa-trash"></i></button>
                        </td>
                    </tr>
                    <!-- Aquí se pueden agregar más filas dinámicamente -->
                </tbody>
            </table>
        </div>
    </section>
</body>
</html>
