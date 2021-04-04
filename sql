ALTER TABLE `projects` ADD `logo` VARCHAR(225) NULL AFTER `main_image`, ADD `logo_title` VARCHAR(225) NULL AFTER `logo`, ADD `logo_subtitle` VARCHAR(225) NULL AFTER `logo_title`, ADD `owner` VARCHAR(225) NULL AFTER `logo_subtitle`, ADD `year` INT NULL AFTER `owner`;

ALTER TABLE `projects` ADD `area` VARCHAR(225) NULL AFTER `location`, ADD `build_up` VARCHAR(225) NULL AFTER `area`;



ALTER TABLE `projects` ADD `url_key` VARCHAR(225) NULL AFTER `logo_title`;


ALTER TABLE `projects_translations` ADD `url_key` VARCHAR(225) NULL AFTER `logo_title`;


ALTER TABLE `projects_translations` ADD `logo` VARCHAR(225) NULL AFTER `main_image`, ADD `logo_title` VARCHAR(225) NULL AFTER `logo`, ADD `logo_subtitle` VARCHAR(225) NULL AFTER `logo_title`, ADD `owner` VARCHAR(225) NULL AFTER `logo_subtitle`, ADD `year` INT NULL AFTER `owner`;

ALTER TABLE `projects_translations` ADD `area` VARCHAR(225) NULL AFTER `location`, ADD `build_up` VARCHAR(225) NULL AFTER `area`;



ALTER TABLE `projects_translations` ADD `url_key` VARCHAR(225) NULL AFTER `logo_title`;

ALTER TABLE `projects_translations` CHANGE `sort` `sort` INT NULL;


ALTER TABLE `projects_translations` CHANGE `title` `title` VARCHAR(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL;
ALTER TABLE `projects` CHANGE `title` `title` VARCHAR(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL;
ALTER TABLE `projects` CHANGE `main_image` `main_image` VARCHAR(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL;
ALTER TABLE `projects_translations` CHANGE `main_image` `main_image` VARCHAR(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL;
