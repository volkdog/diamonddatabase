delete from `spell_proc_event` where entry = 16164;

insert into `spell_proc_event` values (16164, 0x0000001C, 11, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00000002, 0.000000, 0.000000,  0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (16180,16196,16198);

INSERT INTO `spell_proc_event` VALUES 
(16180,0x00000000,11,0x000001C0,0x00000000,0x00000010,0x00000000,0x00000002,0.000000,0.000000, 0),
(16196,0x00000000,11,0x000001C0,0x00000000,0x00000010,0x00000000,0x00000002,0.000000,0.000000, 0),
(16198,0x00000000,11,0x000001C0,0x00000000,0x00000010,0x00000000,0x00000002,0.000000,0.000000, 0);

DELETE FROM `spell_bonus_data` WHERE `entry` IN (55078,55095);

DELETE FROM  `spell_chain` WHERE `spell_id` IN (61024,61316);

INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES

/*Dalaran Intellect*/

(61024,0,61024,1,27126),

/*Dalaran Brilliance*/

(61316,0,61316,1,27127);

UPDATE `creature_template` SET `AIName`='', ScriptName='boss_toravon' WHERE `entry`=38433;

DELETE FROM `spell_proc_event` WHERE `entry` IN (54646,63280);
INSERT INTO `spell_proc_event` VALUES
(54646, 0x00000000,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(63280, 0x00000000, 11, 0x20000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x000000, 0.000000,  0);

DELETE FROM `spell_proc_event` WHERE `entry` = 16246;
INSERT INTO `spell_proc_event` VALUES (16246, 0x00000000,  11, 0x981001C3, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (1463, 13163, 32409, 36111, 70664);

INSERT INTO `spell_proc_event` VALUES
(70664, 0x00000000,  7, 0x00000010, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x000000, 0.000000,  0);

ALTER TABLE spell_proc_event
  CHANGE COLUMN `SchoolMask` `SchoolMask` tinyint(4) unsigned NOT NULL default '0';

DELETE FROM  `spell_chain` WHERE `spell_id` IN (30881,30883,30884,30885,30886);

INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES
/*Nature's Guardian*/
(30881,0,30881,1,0),
(30883,30881,30881,2,0),
(30884,30883,30881,3,0),
(30885,30884,30881,4,0),
(30886,30885,30881,5,0);

DELETE FROM  `spell_proc_event` WHERE `entry` IN (30881,30883,30884,30885,30886);
INSERT INTO `spell_proc_event` VALUES 
(30881, 0x00,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  30);

UPDATE `gameobject_template` SET `ScriptName` = 'instance_icecrown_citadel' WHERE `entry` = 201370;
UPDATE `gameobject_template` SET `ScriptName` = 'instance_icecrown_citadel' WHERE `entry` = 201371;
UPDATE `gameobject_template` SET `ScriptName` = 'instance_icecrown_citadel' WHERE `entry` = 201612;
UPDATE `gameobject_template` SET `ScriptName` = 'instance_icecrown_citadel' WHERE `entry` = 201613;
UPDATE `gameobject_template` SET `ScriptName` = 'instance_icecrown_citadel' WHERE `entry` = 201614;
UPDATE `gameobject_template` SET `ScriptName` = 'instance_icecrown_citadel' WHERE `entry` = 201616;
UPDATE `gameobject_template` SET `ScriptName` = 'instance_icecrown_citadel' WHERE `entry` = 201617;
UPDATE `gameobject_template` SET `ScriptName` = 'instance_icecrown_citadel' WHERE `entry` = 201618;
UPDATE `gameobject_template` SET `ScriptName` = 'instance_icecrown_citadel' WHERE `entry` = 201615;

UPDATE `gameobject_template` SET `ScriptName` = 'icecrown_teleporter' WHERE `entry` IN (202223,202235,202242, 202243,202244,202245,202246);

DELETE FROM  `spell_proc_event` WHERE `entry` IN (
 11120, 12487, 12488, 12598, 12668, 12724, 12725,
 12726, 12727, 12799, 12812, 12813, 12814, 12815,
 12846, 12847, 12848, 12849, 12867, 12872, 12873,
 12958, 12971, 12972, 12973, 12974, 13045, 13046,
 13047, 13048, 13867, 14070, 14071, 14160, 14161,
 14190, 14193, 14194, 14195, 14774, 15338, 15362,
 15363, 16196, 16198, 16235, 16240, 16281, 16282,
 16283, 16284, 16489, 16492, 16923, 16924, 17107,
 17108, 17796, 17801, 17802, 17803, 18073, 18095,
 18120, 19573, 20056, 20057, 20182, 20212, 20213,
 20214, 20215, 20235, 20501, 23695, 25988, 27815,
 27816, 28592, 28593, 29075, 29076, 29179, 29180,
 29444, 29594, 29838, 30295, 30296, 30301, 30302,
 30678, 30679, 31126, 31570, 31835, 31836, 31872,
 31877, 31878, 33145, 33146, 33154, 33192, 33193,
 33882, 33883, 34498, 34499, 34502, 34503, 34859,
 34860, 34938, 34939, 34954, 44443, 44446, 44448,
 44469, 44470, 44471, 44472, 44548, 44549, 45243,
 45244, 46855, 46952, 46953, 47196, 47197, 47202,
 47203, 47204, 47205, 47246, 47247, 47259, 47260,
 47511, 47515, 47517, 47581, 47582, 48484, 48485,
 48499, 48500, 48510, 48511, 48521, 48525, 49503,
 49504, 49529, 49530, 51127, 51128, 51129, 51130,
 51470, 51478, 51479, 51485, 51486, 51557, 51558,
 51563, 51564, 51565, 51566, 51626, 51628, 51629,
 51635, 51636, 51665, 51667, 51668, 51669, 51674,
 51679, 51696, 51700, 51701, 52797, 52798, 52799,
 52800, 53216, 53217, 53222, 53224, 53232, 53237,
 53238, 53259, 53260, 53502, 53503, 53552, 53553,
 53576, 53673, 54151, 54154, 54155, 54486, 54488,
 54489, 54490, 54749, 56343, 56344, 56611, 56612,
 56613, 56614, 56834, 56835, 57472, 57880, 57881,
 58874, 61345, 61346, 63245
);

DELETE FROM  `spell_proc_event` WHERE `entry` IN (26016);

DELETE FROM spell_proc_event WHERE entry IN (31571, 31572);

INSERT INTO spell_proc_event VALUES
(31571, 0x00, 3, 0x00000000, 0x00000000, 0x00000008, 0x00004000, 0x00000000, 0.000000, 0.000000, 0);

DELETE FROM  `spell_chain` WHERE `spell_id` IN (
 62908, 62905, 50371, 50365, 63506, 63505, 63504,
 31785, 33776, 53427, 53429, 53430, 63351, 63350,
 63349, 63411, 63410, 63372, 63370, 63374, 63373,
 63123, 63121, 63117, 63158, 63156, 62762, 62758,
 62765, 62764, 62760, 62759, 63650, 63649, 63648,
 63647, 63646, 63627, 63626, 63625, 48985, 49488,
 49489, 49015, 50154, 55136, 63737, 63733, 63730,
 63543, 63542, 50880, 50884, 50885, 50886, 50887,
 49175, 50031, 51456, 63534, 64129, 64127, 64357,
 64353, 49013, 55236, 55237, 50384, 50385, 50391,
 50392, 49224, 49610, 49611, 47535, 47536, 47537,
 49188, 53530, 53527, 31245, 31244, 55667, 55666,
 32385, 32387, 32392, 32393, 32394, 51528, 51529,
 51530, 51531, 51532, 47569, 47570, 65661, 66191,
 66192, 20335, 20336, 20337, 56636, 56637, 56638,
 34506, 34507, 34508, 34838, 34839, 53290, 53291,
 53292, 46913, 46914, 46915, 19184, 19387, 19388,
 35100, 35102, 51521, 51522, 48539, 48544, 48545,
 53380, 53381, 53382, 53486, 53488, 56822, 59057,
 53709, 53710, 53711, 30881, 30883, 30884, 30885,
 30886
);

ALTER TABLE creature_template
  ADD COLUMN `spell5` mediumint(8) unsigned NOT NULL default '0' AFTER `spell4`,
  ADD COLUMN `spell6` mediumint(8) unsigned NOT NULL default '0' AFTER `spell5`,
  ADD COLUMN `spell7` mediumint(8) unsigned NOT NULL default '0' AFTER `spell6`,
  ADD COLUMN `spell8` mediumint(8) unsigned NOT NULL default '0' AFTER `spell7`;

ALTER TABLE creature_template
  ADD COLUMN `VehicleId` mediumint(8) unsigned NOT NULL default '0' AFTER `PetSpellDataId`;

UPDATE creature_template SET unit_flags = 32768 WHERE entry = 28782;
UPDATE quest_template SET SrcSpell = 52693 WHERE entry = 12687;

DROP TABLE IF EXISTS `vehicle_accessory`;
CREATE TABLE `vehicle_accessory` (
  `entry` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0,
  `accessory_entry` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT 0,
  `seat_id` TINYINT(1) SIGNED NOT NULL DEFAULT 0,
  `minion` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  `description` TEXT NOT NULL,
  PRIMARY KEY (`entry`, `seat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Vehicle Accessory System';

DROP TABLE IF EXISTS `vehicle_data`;
DROP TABLE IF EXISTS `vehicle_seat_data`;

ALTER TABLE creature_addon
  DROP COLUMN    vehicle_id,
  DROP COLUMN    passengers;

ALTER TABLE creature_template_addon
  DROP COLUMN    vehicle_id,
  DROP COLUMN    passengers;

TRUNCATE TABLE `vehicle_accessory`;
INSERT INTO `vehicle_accessory` (`entry`,`accessory_entry`,`seat_id`,`minion`,`description`) VALUES
/*(28782, 28768, 0, 0, 'Acherus Deathcharger'),*/
(28312, 28319, 7, 1, 'Wintergrasp Siege Engine'),
(32627, 32629, 7, 1, 'Wintergrasp Siege Engine'),
(32930, 32933, 0, 1, 'Kologarn'),
(32930, 32934, 1, 1, 'Kologarn'),
(33109, 33167, 1, 1, 'Salvaged Demolisher'),
(33060, 33067, 7, 1, 'Salvaged Siege Engine'),
(33113, 33114, 0, 1, 'Flame Leviathan'),
(33113, 33114, 1, 1, 'Flame Leviathan'),
(33113, 33114, 2, 1, 'Flame Leviathan'),
(33113, 33114, 3, 1, 'Flame Leviathan'),
(33113, 33139, 7, 1, 'Flame Leviathan'),
(33114, 33142, 1, 1, 'Overload Control Device'),
(33114, 33143, 2, 1, 'Leviathan Defense Turret'),
(33214, 33218, 1, 1, 'Mechanolift 304-A'),
(35637, 34705, 0, 0, 'Marshal Jacob Alerius'' Mount'),
(35633, 34702, 0, 0, 'Ambrose Boltspark''s Mount'),
(35768, 34701, 0, 0, 'Colosos'' Mount'),
(34658, 34657, 0, 0, 'Jaelyne Evensong''s Mount'),
(35636, 34703, 0, 0, 'Lana Stouthammer''s Mount'),
(35638, 35572, 0, 0, 'Mokra the Skullcrusher''s Mount'),
(35635, 35569, 0, 0, 'Eressea Dawnsinger''s Mount'),
(35640, 35571, 0, 0, 'Runok Wildmane''s Mount'),
(35641, 35570, 0, 0, 'Zul''tore''s Mount'),
(35634, 35617, 0, 0, 'Deathstalker Visceri''s Mount');

UPDATE creature_template SET VehicleId = 23 WHERE entry = 23693;
UPDATE creature_template SET VehicleId = 108 WHERE entry = 24083;
UPDATE creature_template SET VehicleId = 8 WHERE entry = 24418;
UPDATE creature_template SET VehicleId = 16 WHERE entry = 24705;
UPDATE creature_template SET VehicleId = 17 WHERE entry = 24750;
UPDATE creature_template SET VehicleId = 26 WHERE entry = 25334;
UPDATE creature_template SET VehicleId = 29 WHERE entry = 25596;
UPDATE creature_template SET VehicleId = 72 WHERE entry = 25743;
UPDATE creature_template SET VehicleId = 27 WHERE entry = 25762;
UPDATE creature_template SET VehicleId = 30 WHERE entry = 25968;
UPDATE creature_template SET VehicleId = 62 WHERE entry = 26472;
UPDATE creature_template SET VehicleId = 36 WHERE entry = 26523;
UPDATE creature_template SET VehicleId = 33 WHERE entry = 26525;
UPDATE creature_template SET VehicleId = 34 WHERE entry = 26572;
UPDATE creature_template SET VehicleId = 53 WHERE entry = 26590;
UPDATE creature_template SET VehicleId = 37 WHERE entry = 26777;
UPDATE creature_template SET VehicleId = 38 WHERE entry = 26778;
UPDATE creature_template SET VehicleId = 40 WHERE entry = 26893;
UPDATE creature_template SET VehicleId = 53 WHERE entry = 27131;
UPDATE creature_template SET VehicleId = 43 WHERE entry = 27213;
UPDATE creature_template SET VehicleId = 48 WHERE entry = 27241;
UPDATE creature_template SET VehicleId = 44 WHERE entry = 27258;
UPDATE creature_template SET VehicleId = 50 WHERE entry = 27261;
UPDATE creature_template SET VehicleId = 46 WHERE entry = 27270;
UPDATE creature_template SET VehicleId = 50 WHERE entry = 27292;
UPDATE creature_template SET VehicleId = 49 WHERE entry = 27354;
UPDATE creature_template SET VehicleId = 55 WHERE entry = 27496;
UPDATE creature_template SET VehicleId = 56 WHERE entry = 27587;
UPDATE creature_template SET VehicleId = 57 WHERE entry = 27593;
UPDATE creature_template SET VehicleId = 59 WHERE entry = 27626;
UPDATE creature_template SET VehicleId = 60 WHERE entry = 27629;
UPDATE creature_template SET VehicleId = 61 WHERE entry = 27661;
UPDATE creature_template SET VehicleId = 154 WHERE entry = 27671;
UPDATE creature_template SET VehicleId = 68 WHERE entry = 27714;
UPDATE creature_template SET VehicleId = 70 WHERE entry = 27755;
UPDATE creature_template SET VehicleId = 256 WHERE entry = 27761;
UPDATE creature_template SET VehicleId = 68 WHERE entry = 27839;
UPDATE creature_template SET VehicleId = 79 WHERE entry = 27881;
UPDATE creature_template SET VehicleId = 160 WHERE entry = 27894;
UPDATE creature_template SET VehicleId = 89 WHERE entry = 27924;
UPDATE creature_template SET VehicleId = 97 WHERE entry = 27992;
UPDATE creature_template SET VehicleId = 97 WHERE entry = 27993;
UPDATE creature_template SET VehicleId = 99 WHERE entry = 27996;
UPDATE creature_template SET VehicleId = 105 WHERE entry = 28009;
UPDATE creature_template SET VehicleId = 100 WHERE entry = 28018;
UPDATE creature_template SET VehicleId = 102 WHERE entry = 28054;
UPDATE creature_template SET VehicleId = 106 WHERE entry = 28094;
UPDATE creature_template SET VehicleId = 110 WHERE entry = 28192;
UPDATE creature_template SET VehicleId = 117 WHERE entry = 28312;
UPDATE creature_template SET VehicleId = 116 WHERE entry = 28319;
UPDATE creature_template SET VehicleId = 244 WHERE entry = 28366;
UPDATE creature_template SET VehicleId = 200 WHERE entry = 28605;
UPDATE creature_template SET VehicleId = 123 WHERE entry = 28606;
UPDATE creature_template SET VehicleId = 200 WHERE entry = 28607;
UPDATE creature_template SET VehicleId = 124 WHERE entry = 28614;
UPDATE creature_template SET VehicleId = 156 WHERE entry = 28670;
UPDATE creature_template SET VehicleId = 158 WHERE entry = 28781;
UPDATE creature_template SET VehicleId = 135 WHERE entry = 28782;
UPDATE creature_template SET VehicleId = 87 WHERE entry = 28817;
UPDATE creature_template SET VehicleId = 79 WHERE entry = 28833;
UPDATE creature_template SET VehicleId = 145 WHERE entry = 28851;
UPDATE creature_template SET VehicleId = 143 WHERE entry = 28864;
UPDATE creature_template SET VehicleId = 68 WHERE entry = 28887;
UPDATE creature_template SET VehicleId = 153 WHERE entry = 29043;
UPDATE creature_template SET VehicleId = 25 WHERE entry = 29144;
UPDATE creature_template SET VehicleId = 166 WHERE entry = 29414;
UPDATE creature_template SET VehicleId = 168 WHERE entry = 29433;
UPDATE creature_template SET VehicleId = 190 WHERE entry = 29679;
UPDATE creature_template SET VehicleId = 192 WHERE entry = 29691;
UPDATE creature_template SET VehicleId = 193 WHERE entry = 29698;
UPDATE creature_template SET VehicleId = 207 WHERE entry = 29753;
UPDATE creature_template SET VehicleId = 202 WHERE entry = 29857;
UPDATE creature_template SET VehicleId = 208 WHERE entry = 29918;
UPDATE creature_template SET VehicleId = 318 WHERE entry = 29929;
UPDATE creature_template SET VehicleId = 196 WHERE entry = 30013;
UPDATE creature_template SET VehicleId = 213 WHERE entry = 30066;
UPDATE creature_template SET VehicleId = 222 WHERE entry = 30174;
UPDATE creature_template SET VehicleId = 225 WHERE entry = 30204;
UPDATE creature_template SET VehicleId = 234 WHERE entry = 30228;
UPDATE creature_template SET VehicleId = 233 WHERE entry = 30275;
UPDATE creature_template SET VehicleId = 177 WHERE entry = 30320;
UPDATE creature_template SET VehicleId = 228 WHERE entry = 30330;
UPDATE creature_template SET VehicleId = 229 WHERE entry = 30337;
UPDATE creature_template SET VehicleId = 245 WHERE entry = 30342;
UPDATE creature_template SET VehicleId = 230 WHERE entry = 30343;
UPDATE creature_template SET VehicleId = 236 WHERE entry = 30403;
UPDATE creature_template SET VehicleId = 242 WHERE entry = 30470;
UPDATE creature_template SET VehicleId = 247 WHERE entry = 30564;
UPDATE creature_template SET VehicleId = 248 WHERE entry = 30585;
UPDATE creature_template SET VehicleId = 250 WHERE entry = 30645;
UPDATE creature_template SET VehicleId = 262 WHERE entry = 31125;
UPDATE creature_template SET VehicleId = 270 WHERE entry = 31137;
UPDATE creature_template SET VehicleId = 263 WHERE entry = 31139;
UPDATE creature_template SET VehicleId = 265 WHERE entry = 31224;
UPDATE creature_template SET VehicleId = 267 WHERE entry = 31262;
UPDATE creature_template SET VehicleId = 279 WHERE entry = 31583;
UPDATE creature_template SET VehicleId = 280 WHERE entry = 31641;
UPDATE creature_template SET VehicleId = 109 WHERE entry = 31689;
UPDATE creature_template SET VehicleId = 284 WHERE entry = 31702;
UPDATE creature_template SET VehicleId = 174 WHERE entry = 31722;
UPDATE creature_template SET VehicleId = 312 WHERE entry = 31857;
UPDATE creature_template SET VehicleId = 312 WHERE entry = 31858;
UPDATE creature_template SET VehicleId = 312 WHERE entry = 31861;
UPDATE creature_template SET VehicleId = 312 WHERE entry = 31862;
UPDATE creature_template SET VehicleId = 290 WHERE entry = 31881;
UPDATE creature_template SET VehicleId = 291 WHERE entry = 31884;
UPDATE creature_template SET VehicleId = 294 WHERE entry = 32189;
UPDATE creature_template SET VehicleId = 312 WHERE entry = 32212;
UPDATE creature_template SET VehicleId = 312 WHERE entry = 32213;
UPDATE creature_template SET VehicleId = 298 WHERE entry = 32225;
UPDATE creature_template SET VehicleId = 318 WHERE entry = 32286;
UPDATE creature_template SET VehicleId = 113 WHERE entry = 32323;
UPDATE creature_template SET VehicleId = 304 WHERE entry = 32490;
UPDATE creature_template SET VehicleId = 165 WHERE entry = 32535;
UPDATE creature_template SET VehicleId = 324 WHERE entry = 32627;
UPDATE creature_template SET VehicleId = 116 WHERE entry = 32629;
UPDATE creature_template SET VehicleId = 312 WHERE entry = 32633;
UPDATE creature_template SET VehicleId = 312 WHERE entry = 32640;
UPDATE creature_template SET VehicleId = 160 WHERE entry = 32795;
UPDATE creature_template SET VehicleId = 158 WHERE entry = 32796;
UPDATE creature_template SET VehicleId = 328 WHERE entry = 32930;
UPDATE creature_template SET VehicleId = 380 WHERE entry = 32934;
UPDATE creature_template SET VehicleId = 336 WHERE entry = 33060;
UPDATE creature_template SET VehicleId = 335 WHERE entry = 33062;
UPDATE creature_template SET VehicleId = 337 WHERE entry = 33067;
UPDATE creature_template SET VehicleId = 338 WHERE entry = 33109;
UPDATE creature_template SET VehicleId = 387 WHERE entry = 33113;
UPDATE creature_template SET VehicleId = 341 WHERE entry = 33114;
UPDATE creature_template SET VehicleId = 342 WHERE entry = 33118;
UPDATE creature_template SET VehicleId = 345 WHERE entry = 33167;
UPDATE creature_template SET VehicleId = 348 WHERE entry = 33214;
UPDATE creature_template SET VehicleId = 349 WHERE entry = 33217;
UPDATE creature_template SET VehicleId = 353 WHERE entry = 33293;
UPDATE creature_template SET VehicleId = 486 WHERE entry = 33297;
UPDATE creature_template SET VehicleId = 486 WHERE entry = 33298;
UPDATE creature_template SET VehicleId = 486 WHERE entry = 33300;
UPDATE creature_template SET VehicleId = 486 WHERE entry = 33301;
UPDATE creature_template SET VehicleId = 349 WHERE entry = 33319;
UPDATE creature_template SET VehicleId = 349 WHERE entry = 33321;
UPDATE creature_template SET VehicleId = 486 WHERE entry = 33408;
UPDATE creature_template SET VehicleId = 486 WHERE entry = 33409;
UPDATE creature_template SET VehicleId = 486 WHERE entry = 33414;
UPDATE creature_template SET VehicleId = 486 WHERE entry = 33416;
UPDATE creature_template SET VehicleId = 486 WHERE entry = 33418;
UPDATE creature_template SET VehicleId = 368 WHERE entry = 33513;
UPDATE creature_template SET VehicleId = 372 WHERE entry = 33669;
UPDATE creature_template SET VehicleId = 375 WHERE entry = 33687;
UPDATE creature_template SET VehicleId = 108 WHERE entry = 33778;
UPDATE creature_template SET VehicleId = 349 WHERE entry = 33844;
UPDATE creature_template SET VehicleId = 349 WHERE entry = 33845;
UPDATE creature_template SET VehicleId = 390 WHERE entry = 34120;
UPDATE creature_template SET VehicleId = 397 WHERE entry = 34161;
UPDATE creature_template SET VehicleId = 430 WHERE entry = 34658;
UPDATE creature_template SET VehicleId = 477 WHERE entry = 34703;
UPDATE creature_template SET VehicleId = 509 WHERE entry = 34775;
UPDATE creature_template SET VehicleId = 438 WHERE entry = 34793;
UPDATE creature_template SET VehicleId = 442 WHERE entry = 34796;
UPDATE creature_template SET VehicleId = 446 WHERE entry = 34826;
UPDATE creature_template SET VehicleId = 452 WHERE entry = 34929;
UPDATE creature_template SET VehicleId = 453 WHERE entry = 34935;
UPDATE creature_template SET VehicleId = 510 WHERE entry = 34944;
UPDATE creature_template SET VehicleId = 447 WHERE entry = 35273;
UPDATE creature_template SET VehicleId = 107 WHERE entry = 35373;
UPDATE creature_template SET VehicleId = 487 WHERE entry = 35474;
UPDATE creature_template SET VehicleId = 107 WHERE entry = 35491;
UPDATE creature_template SET VehicleId = 477 WHERE entry = 35572;
UPDATE creature_template SET VehicleId = 478 WHERE entry = 35633;
UPDATE creature_template SET VehicleId = 479 WHERE entry = 35634;
UPDATE creature_template SET VehicleId = 486 WHERE entry = 35635;
UPDATE creature_template SET VehicleId = 481 WHERE entry = 35636;
UPDATE creature_template SET VehicleId = 482 WHERE entry = 35637;
UPDATE creature_template SET VehicleId = 483 WHERE entry = 35638;
UPDATE creature_template SET VehicleId = 484 WHERE entry = 35640;
UPDATE creature_template SET VehicleId = 486 WHERE entry = 35641;
UPDATE creature_template SET VehicleId = 529 WHERE entry = 35644;
UPDATE creature_template SET VehicleId = 489 WHERE entry = 35768;
UPDATE creature_template SET VehicleId = 655 WHERE entry = 35819;
UPDATE creature_template SET VehicleId = 436 WHERE entry = 36356;
UPDATE creature_template SET VehicleId = 522 WHERE entry = 36476;
UPDATE creature_template SET VehicleId = 486 WHERE entry = 36557;
UPDATE creature_template SET VehicleId = 486 WHERE entry = 36558;
UPDATE creature_template SET VehicleId = 529 WHERE entry = 36559;
UPDATE creature_template SET VehicleId = 535 WHERE entry = 36661;
UPDATE creature_template SET VehicleId = 551 WHERE entry = 36794;
UPDATE creature_template SET VehicleId = 554 WHERE entry = 36838;
UPDATE creature_template SET VehicleId = 560 WHERE entry = 36891;
UPDATE creature_template SET VehicleId = 562 WHERE entry = 36896;
UPDATE creature_template SET VehicleId = 622 WHERE entry = 37120;
UPDATE creature_template SET VehicleId = 611 WHERE entry = 37968;
UPDATE creature_template SET VehicleId = 636 WHERE entry = 38500;

UPDATE creature_template SET spell1 = 48363, spell2 = 48397, spell3 = 54170, spell4 = 0, spell5 = 0, spell6 = 0 WHERE entry = 27258;
UPDATE creature_template SET spell1 = 50025, spell2 = 50990, spell3 = 0, spell4 = 0, spell5 = 0, spell6 = 0 WHERE entry = 27881;
UPDATE creature_template SET spell1 = 49872, spell2 = 0, spell3 = 0, spell4 = 0, spell5 = 0, spell6 = 0 WHERE entry = 27894;
UPDATE creature_template SET spell1 = 50896, spell2 = 50652, spell3 = 0, spell4 = 0, spell5 = 0, spell6 = 0 WHERE entry = 28094;
UPDATE creature_template SET spell1 = 51678, spell2 = 0, spell3 = 0, spell4 = 0, spell5 = 0, spell6 = 0 WHERE entry = 28312;
UPDATE creature_template SET spell1 = 51362, spell2 = 0, spell3 = 0, spell4 = 0, spell5 = 0, spell6 = 0 WHERE entry = 28319;
UPDATE creature_template SET spell1 = 52264, spell2 = 52268, spell3 = 0, spell4 = 0, spell5 = 0, spell6 = 0 WHERE entry = 28605;
UPDATE creature_template SET spell1 = 52264, spell2 = 52268, spell3 = 0, spell4 = 0, spell5 = 0, spell6 = 0 WHERE entry = 28606;
UPDATE creature_template SET spell1 = 52264, spell2 = 52268, spell3 = 0, spell4 = 0, spell5 = 0, spell6 = 0 WHERE entry = 28607;
UPDATE creature_template SET spell1 = 53114, spell2 = 53112, spell3 = 53110, spell4 = 0, spell5 = 0, spell6 = 0 WHERE entry = 28670;
UPDATE creature_template SET spell1 = 52338, spell2 = 60206, spell3 = 0, spell4 = 0, spell5 = 0, spell6 = 0 WHERE entry = 28781;
UPDATE creature_template SET spell1 = 52362, spell2 = 0, spell3 = 0, spell4 = 0, spell5 = 0, spell6 = 0 WHERE entry = 28782;
UPDATE creature_template SET spell1 = 52435, spell2 = 52576, spell3 = 0, spell4 = 0, spell5 = 52588, spell6 = 0 WHERE entry = 28833;
UPDATE creature_template SET spell1 = 52211, spell2 = 0, spell3 = 0, spell4 = 0, spell5 = 0, spell6 = 0 WHERE entry = 28864;
UPDATE creature_template SET spell1 = 52435, spell2 = 52576, spell3 = 0, spell4 = 0, spell5 = 52588, spell6 = 0 WHERE entry = 28887;
UPDATE creature_template SET spell1 = 48766, spell2 = 54469, spell3 = 54467, spell4 = 55214, spell5 = 54422, spell6 = 0 WHERE entry = 29414;
UPDATE creature_template SET spell1 = 56091, spell2 = 56092, spell3 = 57090, spell4 = 57143, spell5 = 57108, spell6 = 57403 WHERE entry = 32535;
UPDATE creature_template SET spell1 = 51678, spell2 = 0, spell3 = 0, spell4 = 0, spell5 = 0, spell6 = 0 WHERE entry = 32627;
UPDATE creature_template SET spell1 = 51362, spell2 = 0, spell3 = 0, spell4 = 0, spell5 = 0, spell6 = 0 WHERE entry = 32629;
UPDATE creature_template SET spell1 = 49872, spell2 = 0, spell3 = 0, spell4 = 0, spell5 = 0, spell6 = 0 WHERE entry = 32795;
UPDATE creature_template SET spell1 = 52338, spell2 = 60206, spell3 = 0, spell4 = 0, spell5 = 0, spell6 = 0 WHERE entry = 32796;
UPDATE creature_template SET spell1 = 62345, spell2 = 62522, spell3 = 62346, spell4 = 0, spell5 = 0, spell6 = 0 WHERE entry = 33060;
UPDATE creature_template SET spell1 = 62974, spell2 = 62286, spell3 = 62299, spell4 = 64660, spell5 = 0, spell6 = 0 WHERE entry = 33062;
UPDATE creature_template SET spell1 = 62358, spell2 = 62359, spell3 = 64677, spell4 = 0, spell5 = 0, spell6 = 0 WHERE entry = 33067;
UPDATE creature_template SET spell1 = 62306, spell2 = 62490, spell3 = 62308, spell4 = 62324, spell5 = 0, spell6 = 0 WHERE entry = 33109;
UPDATE creature_template SET spell1 = 62634, spell2 = 64979, spell3 = 62479, spell4 = 62471, spell5 = 0, spell6 = 62428 WHERE entry = 33167;
UPDATE creature_template SET spell1 = 68505, spell2 = 65147, spell3 = 63010, spell4 = 66482, spell5 = 66483, spell6 = 0 WHERE entry = 33844;
UPDATE creature_template SET spell1 = 68505, spell2 = 65147, spell3 = 63010, spell4 = 66482, spell5 = 66483, spell6 = 0 WHERE entry = 33845;
UPDATE creature_template SET spell1 = 68505, spell2 = 62575, spell3 = 68282, spell4 = 66482, spell5 = 0, spell6 = 0 WHERE entry = 35644;

UPDATE `gameobject_template` SET `Scriptname`= 'go_bristlelimb_cage' WHERE `entry`= 181714;

DELETE FROM command WHERE name IN('go');

INSERT INTO command (name, security, help) VALUES
('go',1,'Syntax: .go  [$playername|pointlink|#x #y #z [#mapid]]\r\nTeleport your character to point with coordinates of player $playername, or coordinates of one from shift-link types: player, tele, taxinode, creature, gameobject, or explicit #x #y #z #mapid coordinates.');

DROP TABLE IF EXISTS `game_event_pool`;

DELETE FROM command WHERE name IN('server set loglevel','server log level','server log filter');
INSERT INTO command (name, security, help) VALUES
('server log filter',4,'Syntax: .server log filter [($filtername|all) (on|off)]\r\n\r\nShow or set server log filters. If used "all" then all filters will be set to on/off state.'),
('server log level',4,'Syntax: .server log level [#level]\r\n\r\nShow or set server log level (0 - errors only, 1 - basic, 2 - detail, 3 - debug).');

DELETE FROM command WHERE name IN('character deleted list', 'character deleted delete', 'character deleted old');
INSERT INTO command (name, security, help) VALUES
('character deleted delete', 4, 'Syntax: .character deleted delete #guid|$name\r\n\r\nCompletely deletes the selected characters.\r\nIf $name is supplied, only characters with that string in their name will be deleted, if #guid is supplied, only the character with that GUID will be deleted.'),
('character deleted list', 3, 'Syntax: .character deleted list [#guid|$name]\r\n\r\nShows a list with all deleted characters.\r\nIf $name is supplied, only characters with that string in their name will be selected, if #guid is supplied, only the character with that GUID will be selected.'),
('character deleted old', 4, 'Syntax: .character deleted old [#keepDays]\r\n\r\nCompletely deletes all characters with deleted time longer #keepDays. If #keepDays not provided the  used value from mangosd.conf option \'CharDelete.KeepDays\'. If referenced config option disabled (use 0 value) then command can\'t be used without #keepDays.');

# New Achievements
REPLACE INTO `achievement_criteria_requirement` (`criteria_id`) VALUES ('13451');
REPLACE INTO `achievement_criteria_requirement` (`criteria_id`) VALUES ('13452');
REPLACE INTO `achievement_criteria_requirement` (`criteria_id`) VALUES ('13453');
REPLACE INTO `achievement_criteria_requirement` (`criteria_id`) VALUES ('13454');
REPLACE INTO `achievement_criteria_requirement` (`criteria_id`) VALUES ('13465');
REPLACE INTO `achievement_criteria_requirement` (`criteria_id`) VALUES ('13466');
REPLACE INTO `achievement_criteria_requirement` (`criteria_id`) VALUES ('13467');
REPLACE INTO `achievement_criteria_requirement` (`criteria_id`) VALUES ('13468');

# Fix wrong material data
UPDATE `item_template` SET `material` = 4 WHERE `entry` IN (22906, 22916, 34478, 51315);

# Drop not exist mapid since 3.3.5
DELETE FROM `instance_template` WHERE `map` = 29;

# The Ruby Sanctum Entrance & Exit
REPLACE INTO `instance_template` (`map`, `levelMin`, `levelMax`) VALUES ('724', '80', '80');
REPLACE INTO `areatrigger_teleport` (`id`, `name`, `required_level`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES ('5872', ' The Ruby Sanctum (Exit)', '0', '571', '3604.969', '191.169998', '-110.0', '0');
REPLACE INTO `areatrigger_teleport` (`id`, `name`, `required_level`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES ('5869', 'The Ruby Sanctum (Entrance)', '80', '724', '3279.91', '533.36', '90', '0');
