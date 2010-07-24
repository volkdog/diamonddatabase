DELETE FROM `character_aura`;
ALTER TABLE `character_aura`
	DROP COLUMN `effect_index`, DROP COLUMN `amount`, DROP COLUMN `maxduration`, DROP COLUMN `remaintime`;
ALTER TABLE `character_aura`
	ADD COLUMN `basepoints0` INT(11) NOT NULL DEFAULT '0', 
	ADD COLUMN `basepoints1` INT(11) NOT NULL DEFAULT '0', 
	ADD COLUMN `basepoints2` INT(11) NOT NULL DEFAULT '0',
	ADD COLUMN `maxduration0` INT(11) NOT NULL DEFAULT '0',
	ADD COLUMN `maxduration1` INT(11) NOT NULL DEFAULT '0',
	ADD COLUMN `maxduration2` INT(11) NOT NULL DEFAULT '0', 
	ADD COLUMN `remaintime0` INT(11) NOT NULL DEFAULT '0',
	ADD COLUMN `remaintime1` INT(11) NOT NULL DEFAULT '0',
	ADD COLUMN `remaintime2` INT(11) NOT NULL DEFAULT '0',
	ADD COLUMN `effIndexMask` INT(11) NOT NULL DEFAULT '0';

DELETE FROM `pet_aura`;
ALTER TABLE `pet_aura`
	DROP COLUMN `effect_index`, DROP COLUMN `amount`, DROP COLUMN `maxduration`, DROP COLUMN `remaintime`;
ALTER TABLE `pet_aura`
	ADD COLUMN `basepoints0` INT(11) NOT NULL DEFAULT '0', 
	ADD COLUMN `basepoints1` INT(11) NOT NULL DEFAULT '0', 
	ADD COLUMN `basepoints2` INT(11) NOT NULL DEFAULT '0',
	ADD COLUMN `maxduration0` INT(11) NOT NULL DEFAULT '0',
	ADD COLUMN `maxduration1` INT(11) NOT NULL DEFAULT '0',
	ADD COLUMN `maxduration2` INT(11) NOT NULL DEFAULT '0', 
	ADD COLUMN `remaintime0` INT(11) NOT NULL DEFAULT '0',
	ADD COLUMN `remaintime1` INT(11) NOT NULL DEFAULT '0',
	ADD COLUMN `remaintime2` INT(11) NOT NULL DEFAULT '0',
	ADD COLUMN `effIndexMask` INT(11) NOT NULL DEFAULT '0';



alter table `character_aura` drop primary key;
alter table `character_aura` add primary key (`guid`,`spell`);

alter table `pet_aura` drop primary key;
alter table `pet_aura` add primary key (`guid`,`spell`);
