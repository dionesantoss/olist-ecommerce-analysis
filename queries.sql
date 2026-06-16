-- ================================================
-- Análise Olist E-Commerce | SQL Queries
-- Autor: Dione Santos
-- Dataset: Brazilian E-Commerce Public Dataset
-- ================================================

-- 1. Total de pedidos por mês
SELECT 
    DATE_FORMAT(order_purchase_timestamp, '%Y-%m') AS mes,
    COUNT(order_id) AS total_pedidos
FROM orders
WHERE order_status = 'delivered'
GROUP BY mes
ORDER BY mes;

-- 2. Pedidos por estado (Top 10)
SELECT 
    c.customer_state AS estado,
    COUNT(o.order_id) AS total_pedidos
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY estado
ORDER BY total_pedidos DESC
LIMIT 10;

-- 3. Nota média geral de avaliação
SELECT 
    ROUND(AVG(review_score), 2) AS nota_media
FROM order_reviews;

-- 4. Impacto do atraso na avaliação
SELECT 
    CASE 
        WHEN order_delivered_customer_date <= order_estimated_delivery_date 
        THEN 'No prazo'
        ELSE 'Atrasado'
    END AS status_entrega,
    ROUND(AVG(r.review_score), 2) AS nota_media,
    COUNT(o.order_id) AS total_pedidos
FROM orders o
JOIN order_reviews r ON o.order_id = r.order_id
WHERE order_delivered_customer_date IS NOT NULL
GROUP BY status_entrega;

-- 5. Forma de pagamento mais usada
SELECT 
    payment_type AS forma_pagamento,
    COUNT(*) AS total,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 1) AS percentual
FROM order_payments
GROUP BY payment_type
ORDER BY total DESC;

-- 6. Top 10 categorias mais vendidas
SELECT 
    p.product_category_name AS categoria,
    COUNT(oi.order_id) AS total_itens
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
WHERE p.product_category_name IS NOT NULL
GROUP BY categoria
ORDER BY total_itens DESC
LIMIT 10;
