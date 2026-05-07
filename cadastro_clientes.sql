use cadastro_clientes;

create table if not exists clientes (
    id int not null AUTO_INCREMENT PRIMARY KEY,
    nome varchar(30) not null,
    sexo enum('M','F'),
    email varchar(100) not null unique,
    cidade varchar(50)
)DEFAULT CHARSET=utf8mb4;

create table if not exists produtos (
    idproduto int not null AUTO_INCREMENT PRIMARY KEY,
    nome varchar(50) not null,
    preco decimal(10,2) not null,
    CONSTRAINT chk_preco CHECK (preco > 0)  
)DEFAULT CHARSET=utf8mb4;

create table if not exists pedidos(
    idpedido int not null AUTO_INCREMENT PRIMARY KEY,
    data date not null,
    idcliente int not null,
    FOREIGN KEY (idcliente) REFERENCES clientes(id)
)DEFAULT CHARSET=utf8mb4;

create table if not exists pedido_produto(
    id int not null AUTO_INCREMENT PRIMARY KEY,
    idpedido int not null,
    idproduto int not null,
    quantidade int not null,
    CONSTRAINT chk_qtd CHECK (quantidade > 0),
    FOREIGN KEY (idpedido) REFERENCES pedidos(idpedido),
    FOREIGN KEY (idproduto) REFERENCES produtos(idproduto)
)DEFAULT CHARSET=utf8mb4;


