CREATE TABLE `Персонал` (
	`IDСотрудника` INT NOT NULL AUTO_INCREMENT,
	`Фамилия` varchar(255) NOT NULL,
	`Имя` varchar(255) NOT NULL,
	`Отчество` varchar(255) NOT NULL,
	`Должность` varchar(255) NOT NULL,
	`Телефон` varchar(255) NOT NULL,
	`Адрес` varchar(255) NOT NULL,
	PRIMARY KEY (`IDСотрудника`)
);

CREATE TABLE `Фильмы` (
	`IDФильма` INT NOT NULL AUTO_INCREMENT,
	`Название` varchar(255) NOT NULL,
	`Жанр` varchar(255) NOT NULL,
	`Год выпуска` INT NOT NULL,
	`Режиссер` varchar(255) NOT NULL,
	`В ролях` varchar(255) NOT NULL,
	`Стоимость` INT NOT NULL,
	`Наличие` INT NOT NULL,
	PRIMARY KEY (`IDФильма`)
);

CREATE TABLE `Прокат` (
	`IDПроката` INT NOT NULL AUTO_INCREMENT,
	`Номер проката` INT NOT NULL,
	`IDФильма` INT NOT NULL,
	`Клиент` INT NOT NULL,
	`Сотрудник` INT NOT NULL,
	`Дата возврата` DATE NOT NULL,
	`Сумма` INT NOT NULL,
	PRIMARY KEY (`IDПроката`)
);

CREATE TABLE `Клиенты` (
	`IDКлиента` INT NOT NULL AUTO_INCREMENT,
	`Фамилия` varchar(255) NOT NULL,
	`Имя` varchar(255) NOT NULL,
	`Отчество` varchar(255) NOT NULL,
	`Телефон` varchar(255) NOT NULL,
	`Адрес` varchar(255) NOT NULL,
	`Наличие долга` INT NOT NULL,
	PRIMARY KEY (`IDКлиента`)
);

CREATE TABLE `Долги` (
	`IDДолга` INT NOT NULL AUTO_INCREMENT,
	`Дата начала долга` DATE NOT NULL,
	`Штраф за день` INT NOT NULL,
	PRIMARY KEY (`IDДолга`)
);

ALTER TABLE `Прокат` ADD CONSTRAINT `Прокат_fk0` FOREIGN KEY (`IDФильма`) REFERENCES `Фильмы`(`IDФильма`);

ALTER TABLE `Прокат` ADD CONSTRAINT `Прокат_fk1` FOREIGN KEY (`Клиент`) REFERENCES `Клиенты`(`IDКлиента`);

ALTER TABLE `Прокат` ADD CONSTRAINT `Прокат_fk2` FOREIGN KEY (`Сотрудник`) REFERENCES `Персонал`(`IDСотрудника`);

ALTER TABLE `Клиенты` ADD CONSTRAINT `Клиенты_fk0` FOREIGN KEY (`Наличие долга`) REFERENCES `Долги`(`IDДолга`);






