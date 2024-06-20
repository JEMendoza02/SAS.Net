<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="checkout-styles.css">
    <title>Checkout - Tienda SAS</title>
</head>
<body>
    <header>
        <h1>Checkout</h1>
    </header>
    <section class="contenedor">
        <!-- Contenedor de elementos -->
        <div class="contenedor-items">
            <div class="item">
                <span class="titulo-item">Nombre del producto</span>
                <img src="img/add.jpg" alt="" class="img-item">
                <span class="precio-item">Precio de venta</span>
                <span class="stock">Número de unidades</span>
                <button class="boton-item">Ingresar nuevo producto</button>
            </div>
            <div class="item">
                <span class="titulo-item">Jitomate</span>
                <img src="img/Jitomate.jpeg" alt="" class="img-item">
                <span class="precio-item">$25.000</span>
                <span class="stock">25 unidades</span>
                <button class="boton-item">Modificar</button>
            </div>
            <!-- Más productos pueden ser añadidos aquí -->
        </div>
        
        <!-- Carrito de Compras -->
        <div class="carrito" id="carrito">
            <div class="header-carrito">
                <h2>Opciones</h2>
            </div>
            <div class="carrito-items">
                <!-- Aquí se agregan los elementos del carrito -->
            </div>
            <div class="carrito-total">
                <table class="ticket-table">
                    <thead>
                        <tr>
                            <th>Producto</th>
                            <th>Cantidad</th>
                            <th>Precio</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Jitomate</td>
                            <td>10</td>
                            <td>$25.000</td>
                            <td>$250.000</td>
                        </tr>
                        <!-- Más filas de productos pueden ser añadidas aquí -->
                    </tbody>
                </table>
                <div class="total-fila">
                    <strong>Total:</strong>
                    <span class="total-amount">$250.000</span>
                </div>
                <button class="btn-pagar">Pagar <i class="fa-solid fa-bag-shopping"></i></button>
            </div>
        </div>
    </section>
</body>
</html>
