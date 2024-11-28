<?php
session_start();
include 'db.php';

$query = "SELECT * FROM products";
$result = $conn->query($query);
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">  
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <div class="dashboard">
        <nav class="sidebar">
            <h2>Loja de Chuteiras</h2>
            <ul>
                <li><a href="index.php">Home</a></li>
                <li><a href="carrinho.php">Carrinho</a></li>
                <?php if (isset($_SESSION['username'])): ?>
                    <li><a href="logout.php">Sair</a></li>
                <?php else: ?>
                    <li><a href="login.php">Login</a></li>
                <?php endif; ?>
            </ul>
        </nav>
        <main class="content">
            <h1>Chuteiras em Destaque</h1>
            <div class="products">
                <?php while ($product = $result->fetch_assoc()): ?>
                    <div class="product">
                        <img src="imgs/<?php echo $product['image']; ?>" alt="<?php echo $product['name']; ?>">
                        <h2><?php echo $product['name']; ?></h2>
                        <p><?php echo $product['description']; ?></p>
                        <p>R$ <?php echo number_format($product['price'], 2, ',', '.'); ?></p>
                        <a href="adicionar.php?id=<?php echo $product['id']; ?>">Adicionar ao Carrinho</a>
                    </div>
                <?php endwhile; ?>
            </div>
        </main>
    </div>
</body>

</html>