
-- autores****************
-- Insertar
DELIMITER // 
CREATE PROCEDURE proInsertAuthors(IN v_au_nombre varchar(15), IN v_au_apellido varchar(15), IN v_au_municipio varchar(25))
 BEGIN 
 INSERT INTO tbl_autores(au_nombre, au_apellido, au_municipio) VALUES (v_au_nombre, v_au_apellido, v_au_municipio); 
 END //
DELIMITER ;

-- Mostrar
DELIMITER //
CREATE PROCEDURE procSelectAuthors() 
BEGIN 
Select au_nombre, au_apellido, au_municipio
FROM tbl_autores; 
END //

DELIMITER ;

-- Actualizar
DELIMITER // 
CREATE PROCEDURE procUpdateAuthor( IN v_au_nombre varchar(15), IN v_au_apellido varchar(15), IN v_au_municipio varchar(25)) 
BEGIN UPDATE tbl_autores
SET  au_nombre = v_au_nombre, au_apellido = v_au_apellido, au_municipio = v_au_municipio 
 WHERE autor_id = v_id;
 END //
DELIMITER ;

-- Eliminar
DELIMITER // 
CREATE PROCEDURE procDeleteAuthors( IN v_au_id INT) 
BEGIN  DELETE FROM tbl_autores
 WHERE autor_id = v_id;
 END //
DELIMITER ;














