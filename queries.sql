#descricao de quais clientes compraram quais produtos
select * from clientes c
join pedidos p
on c.id = p.idcliente
join pedido_produto pp
on p.idpedido = pp.idpedido
join produtos pr
on pr.idproduto = pp.idproduto;

#quantidade que cada cliente gastou
select c.nome, sum(pp.quantidade * pr.preco) as total_gasto from clientes c
join pedidos p
on c.id = p.idcliente
join pedido_produto pp
on p.idpedido = pp.idpedido
join produtos pr
on pr.idproduto = pp.idproduto
GROUP by c.nome;

#produto mais vendido
select pr.nome, sum(pp.quantidade) as total_vendido 
from pedido_produto as pp right outer join produtos as pr
on pr.idproduto = pp.idproduto
group by pr.nome
order by total_vendido desc;

#mostrar produtos que nunca foram vendidos
select pr.nome
from produtos pr left outer join pedido_produto as pp
on pr.idproduto = pp.idproduto
where pp.idproduto is null;
