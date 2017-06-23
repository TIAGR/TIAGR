SET GLOBAL event_scheduler = ON;

DELIMITER $
CREATE EVENT executa_atualiza_certificados
    ON SCHEDULE EVERY 1 DAY
    STARTS '2016-06-23 23:59:59' -- precisa ser no futuro
    DO BEGIN 
        CALL `transporte`.`atualiza_certificados`();
    END
$ DELIMITER ;