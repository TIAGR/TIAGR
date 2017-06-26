DELIMITER $$
CREATE FUNCTION `formata_cnpj`(p_cnpj varchar(20)) RETURNS varchar(18) CHARSET utf8
BEGIN
declare l_ret varchar(21);
-- Retirando possiveis formatacoes no valor recebido.
set p_cnpj = replace(p_cnpj,'.','');
set p_cnpj = replace(p_cnpj,'-','');
set p_cnpj = replace(p_cnpj,' ','');
set p_cnpj = trim(p_cnpj);
set p_cnpj = replace(p_cnpj,'/','');
-- Armazenando o valor recebido em uma variavel interna
set l_ret = p_cnpj;
-- Montando a formatacao
set l_ret = concat( mid(l_ret,1,2),'.',mid(l_ret,3,3),'.',mid(l_ret,6,3),'/',mid(l_ret,9,4),'-',mid(l_ret,13,2) );
-- Retornando o resultado
return l_ret;
END$$
DELIMITER ;


DELIMITER $$
CREATE FUNCTION `formata_cpf`(p_cpf varchar(20)) RETURNS varchar(14) CHARSET utf8
BEGIN  
 declare l_ret varchar(14);  
 -- Retirando possiveis formatacoes no valor recebido.  
 set p_cpf = replace(p_cpf,'.','');  
 set p_cpf = replace(p_cpf,'-','');  
 set p_cpf = replace(p_cpf,' ','');  
 set p_cpf = trim(p_cpf);  
 -- Armazenando o valor recebido em uma variavel interna  
 set l_ret = p_cpf;  
 -- Montando a formatacao  
 set l_ret = concat(mid(l_ret,1,3),'.',mid(l_ret,4,3),'.',mid(l_ret,7,3),'-',mid(l_ret,10,2));  
 -- Retornando o resultado  
 return l_ret;  
 END$$
DELIMITER ;
