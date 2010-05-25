

ALTER TABLE creature_movement 
ADD COLUMN script_id MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER waittime;


DROP TABLE IF EXISTS `creature_movement_scripts`;
CREATE TABLE `creature_movement_scripts` (
  `id` mediumint(8) unsigned NOT NULL default '0',
  `delay` int(10) unsigned NOT NULL default '0',
  `command` mediumint(8) unsigned NOT NULL default '0',
  `datalong` mediumint(8) unsigned NOT NULL default '0',
  `datalong2` int(10) unsigned NOT NULL default '0',
  `datalong3` int(10) unsigned NOT NULL default '0',
  `datalong4` int(10) unsigned NOT NULL default '0',
  `data_flags` tinyint(3) unsigned NOT NULL default '0',
  `dataint` int(11) NOT NULL default '0',
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  `o` float NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DELETE FROM `spell_bonus_data` WHERE `entry` IN (
  17,122,139,421,589,774,1064,1449,2060,2061,2136,2912,2948,8004,
  11426,19236,25912,30451,32379,32546,33110,34861,42463,44457,
  49821,51505,53739,61391);

INSERT INTO `spell_bonus_data` VALUES
(53739, 0,     0, 0.003, 'Paladin - Seal of Corruption (full stack proc)'),
(42463, 0,     0, 0.003, 'Paladin - Seal of Vengeance (full stack proc)'),
(49821, 0.2857,0, 0,     'Priest - Mind Sear Trigger');

UPDATE creature_template SET modelid_A = 16925, modelid_H = 16925, scale = 2, flags_extra = 0 WHERE entry IN (28525,28542,28543,28544);

UPDATE quest_template SET ReqSpellCast1 = 51859, ReqSpellCast2 = 51859, ReqSpellCast3 = 51859, ReqSpellCast4 = 51859 WHERE entry = 12641;

REPLACE INTO creature_template_addon (`entry`,`moveflags`,`auras`) VALUES (28511,33562624,''),(28525,0,'64328 0'),(28542,0,'64328 0'),(28543,0,'64328 0'),(28544,0,'64328 0');

REPLACE INTO spell_script_target (`entry`,`type`,`targetEntry`) VALUES (51859,1,28525),(51859,1,28542),(51859,1,28543),(51859,1,28544);

DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature_spawns WHERE id IN (28511,28525,28542,28543,28544));

UPDATE creature_template SET modelid_H = 26320, modelid_H2 = 26320, ScriptName = 'npc_eye_of_acherus' WHERE entry = 28511;
UPDATE gameobject_template SET ScriptName = 'go_eye_of_acherus' WHERE entry = 191609;

DELETE FROM strings WHERE entry IN (210);

INSERT INTO strings VALUES
(210,'Item \'%i\' (with extended cost %i) already in vendor list.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

ALTER TABLE npc_vendor
CHANGE COLUMN `ExtendedCost` `ExtendedCost` mediumint(8) NOT NULL default '0' COMMENT 'negative if cost must exclude normal money cost';

