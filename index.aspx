<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tienda SAS</title>
    <link rel="stylesheet" href="styles.css">
    <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Conexion.cs" Inherits="Conexion" %>



</head>
<body>
    <div class="container">
        <header>
            <h1>Tienda SAS</h1>
            <div class="search-bar">
                <input type="text" placeholder="Escribe aquí para buscar...">
                <button>Buscar</button>
            </div>
            <div class="account-cart">
                <span><a href="login.aspx">Mi cuenta</a></span>
                <img src="cart-icon.png" alt="Cart">
            </div>
        </header>
        <aside class="product-details">
            <div class="product-info">
                <h2>Durazno</h2>
                <span class="price">$1.5</span>
                <img src="peach.jpg" alt="Durazno">
                <div class="quantity-selector">
                    <label for="quantity">Kg</label>
                    <select id="quantity">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                    </select>
                </div>
                <button class="add-to-cart">Añadir al carrito</button>
            </div>
        </aside>
        <main>
            <div class="offer">
                <span>Envío gratis en ordenes superiores a $200</span>
            </div>
            <div class="shopping-online">
                <span>Compra en línea, obtén tus productos el mismo día</span>
            </div>
            <div class="products">
                <div class="product">
                    <img src="kiwi.png" alt="Kiwi">
                    <span>Kiwi</span>
                    <span>$2.99</span>
                </div>
                <div class="product">
                    <img src="coconut.png" alt="Coco">
                    <span>Coco</span>
                    <span>$3.99</span>
                </div>
                <div class="product">
                    <img src="peach.png" alt="Durazno">
                    <span>Durazno</span>
                    <span>$1.5</span>
                </div>
                <div class="product">
                    <img src="grapes.png" alt="Uvas">
                    <span>Uvas</span>
                    <span>$0.99</span>
                </div>
                <div class="product">
                    <img src="watermelon.png" alt="Sandía">
                    <span>Sandía</span>
                    <span>$4.99</span>
                </div>
                <div class="product">
                    <img src="orange.png" alt="Naranja">
                    <span>Naranja</span>
                    <span>$2.99</span>
                </div>
                <div class="product">
                    <img src="strawberry.png" alt="Frambuesa">
                    <span>Frambuesa</span>
                    <span>$0.99</span>
                </div>
                <div class="product">
                    <img src="mango.png" alt="Mango">
                    <span>Mango</span>
                    <span>$0.99</span>
                </div>
                <div class="product">
                    <img src="cherry.png" alt="Fresa">
                    <span>Fresa</span>
                    <span>$0.99</span>
                </div>
            </div>
        </main>
    </div>
</body>
</html>
