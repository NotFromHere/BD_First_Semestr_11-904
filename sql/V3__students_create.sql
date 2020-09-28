CREATE TABLE `teamdb`.`students` (
  `id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `groupd_id` INT NOT NULL,
  PRIMARY KEY (`id`, `user_id`, `groupd_id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `user_id_UNIQUE` (`user_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
