CREATE DATABASE juego;
USE juego;
CREATE TABLE jugador (idJugador  INT NOT NULL  AUTO_INCREMENT PRIMARY KEY,nombreJugador VARCHAR(45),status INT,pass VARCHAR(45),email VARCHAR(45));
CREATE TABLE mensajeG (idmensajeG INT NOT NULL  AUTO_INCREMENT PRIMARY KEY,nombreJugador VARCHAR(45));
CREATE TABLE partida (idPartida INT NOT NULL AUTO_INCREMENT PRIMARY KEY,partida VARCHAR(45),noPartida INT);
CREATE TABLE ronda (idRonda INT NOT NULL AUTO_INCREMENT PRIMARY KEY,jugador VARCHAR(45),nickJugador VARCHAR(45));

CREATE TABLE IF NOT EXISTS `mydb`.`jugador` (
  `idjugador` INT NOT NULL AUTO_INCREMENT,
  `nombreJugador` VARCHAR(45) NULL,
  `status` INT NULL,
  `pass` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`idjugador`))
ENGINE = InnoDB