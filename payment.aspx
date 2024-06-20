<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="payment-styles.css">
    <title>Confirmación de Pago - Tienda SAS</title>
</head>
<body>
    <header>
        <h1>Confirmación de Pago</h1>
    </header>
    <section class="contenedor">
        <div class="resumen-pedido">
            <h2>Resumen del Pedido</h2>
            <table class="ticket-table">
                <thead>
                    <tr>
                        <th>Producto</th>
                        <th>Cantidad</th>
                        <th>Precio Unitario</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Jitomate</td>
                        <td>2</td>
                        <td>$25.000</td>
                        <td>$50.000</td>
                    </tr>
                    <!-- Aquí se pueden agregar más filas dinámicamente -->
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="4">Total del Pedido</td>
                        <td>$50.000</td>
                    </tr>
                </tfoot>
            </table>
        </div>
        <div class="informacion-usuario">
            <h2>Información del Usuario</h2>
            <p><strong>Nombre:</strong> Juan Pérez</p>
            <p><strong>Dirección:</strong> Calle Falsa 123, Ciudad, País</p>
            <p><strong>Método de Pago:</strong> Tarjeta de Crédito</p>
        </div>
        <button class="btn-confirmar">Confirmar Pago <i class="fa-solid fa-check"></i></button>
    </section>
</body>
</html>

