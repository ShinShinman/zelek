
-- *** STRUCTURE:`tbl_fields_author` ***
DROP TABLE IF EXISTS`tbl_fields_author`;
CREATE TABLE`tbl_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `author_types` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_author` ***

-- *** STRUCTURE:`tbl_fields_checkbox` ***
DROP TABLE IF EXISTS`tbl_fields_checkbox`;
CREATE TABLE`tbl_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_checkbox` ***

-- *** STRUCTURE:`tbl_fields_date` ***
DROP TABLE IF EXISTS`tbl_fields_date`;
CREATE TABLE`tbl_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calendar` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `time` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_date` ***

-- *** STRUCTURE:`tbl_fields_image_preview_settings` ***
DROP TABLE IF EXISTS`tbl_fields_image_preview_settings`;
CREATE TABLE`tbl_fields_image_preview_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `field-handles` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table-width` int(11) unsigned DEFAULT NULL,
  `table-height` int(11) unsigned DEFAULT NULL,
  `table-resize` int(11) unsigned DEFAULT NULL,
  `table-position` int(11) unsigned DEFAULT NULL,
  `table-absolute` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `entry-width` int(11) unsigned DEFAULT NULL,
  `entry-height` int(11) unsigned DEFAULT NULL,
  `entry-resize` int(11) unsigned DEFAULT NULL,
  `entry-position` int(11) unsigned DEFAULT NULL,
  `entry-absolute` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_image_preview_settings` ***
INSERT INTO`tbl_fields_image_preview_settings` (`id`, `field_id`, `field-handles`, `table-width`, `table-height`, `table-resize`, `table-position`, `table-absolute`, `entry-width`, `entry-height`, `entry-resize`, `entry-position`, `entry-absolute`) VALUES (7, 7, '*', NULL, 200, 1, 5, 'no', NULL, 450, 1, 5, 'no');

-- *** STRUCTURE:`tbl_fields_image_upload` ***
DROP TABLE IF EXISTS`tbl_fields_image_upload`;
CREATE TABLE`tbl_fields_image_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unique` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min_width` int(11) unsigned DEFAULT NULL,
  `min_height` int(11) unsigned DEFAULT NULL,
  `max_width` int(11) unsigned DEFAULT NULL,
  `max_height` int(11) unsigned DEFAULT NULL,
  `resize` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_image_upload` ***
INSERT INTO`tbl_fields_image_upload` (`id`, `field_id`, `destination`, `validator`, `unique`, `min_width`, `min_height`, `max_width`, `max_height`, `resize`) VALUES (9, 4, '/workspace/images', '/\\.(?:bmp|gif|jpe?g|png)$/i', 'yes', 0, 0, 1920, 1080, 'yes');

-- *** STRUCTURE:`tbl_fields_input` ***
DROP TABLE IF EXISTS`tbl_fields_input`;
CREATE TABLE`tbl_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_input` ***
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (14, 1, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (11, 8, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (13, 11, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (15, 15, NULL);

-- *** STRUCTURE:`tbl_fields_link_preview` ***
DROP TABLE IF EXISTS`tbl_fields_link_preview`;
CREATE TABLE`tbl_fields_link_preview` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anchor_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_url` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_link_preview` ***
INSERT INTO`tbl_fields_link_preview` (`id`, `field_id`, `format`, `anchor_label`, `display_url`) VALUES (1, 10, NULL, 'Entry preview', 'no');
INSERT INTO`tbl_fields_link_preview` (`id`, `field_id`, `format`, `anchor_label`, `display_url`) VALUES (2, 13, NULL, 'Entry preview', 'no');
INSERT INTO`tbl_fields_link_preview` (`id`, `field_id`, `format`, `anchor_label`, `display_url`) VALUES (3, 14, NULL, 'Entry preview', 'no');
INSERT INTO`tbl_fields_link_preview` (`id`, `field_id`, `format`, `anchor_label`, `display_url`) VALUES (4, 17, NULL, 'Entry preview', 'no');

-- *** STRUCTURE:`tbl_fields_order_entries` ***
DROP TABLE IF EXISTS`tbl_fields_order_entries`;
CREATE TABLE`tbl_fields_order_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `force_sort` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  `hide` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  `disable_pagination` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  `filtered_fields` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_order_entries` ***
INSERT INTO`tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`, `disable_pagination`, `filtered_fields`) VALUES (9, 6, NULL, 'yes', 'yes', NULL);

-- *** STRUCTURE:`tbl_fields_select` ***
DROP TABLE IF EXISTS`tbl_fields_select`;
CREATE TABLE`tbl_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `sort_options` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_select` ***
INSERT INTO`tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `sort_options`, `static_options`, `dynamic_options`) VALUES (9, 5, 'no', 'no', 'Paintings, Poster', NULL);

-- *** STRUCTURE:`tbl_fields_selectbox_link` ***
DROP TABLE IF EXISTS`tbl_fields_selectbox_link`;
CREATE TABLE`tbl_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `hide_when_prepopulated` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_selectbox_link` ***

-- *** STRUCTURE:`tbl_fields_taglist` ***
DROP TABLE IF EXISTS`tbl_fields_taglist`;
CREATE TABLE`tbl_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_taglist` ***

-- *** STRUCTURE:`tbl_fields_textarea` ***
DROP TABLE IF EXISTS`tbl_fields_textarea`;
CREATE TABLE`tbl_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_textarea` ***
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (13, 3, 'markdown_extra_with_smartypants', 1);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (11, 9, 'markdown_extra_with_smartypants', 15);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (12, 12, 'markdown_extra_with_smartypants', 15);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (14, 16, 'markdown_extra_with_smartypants', 15);

-- *** STRUCTURE:`tbl_fields_upload` ***
DROP TABLE IF EXISTS`tbl_fields_upload`;
CREATE TABLE`tbl_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_upload` ***

-- *** STRUCTURE:`tbl_entries_data_1` ***
DROP TABLE IF EXISTS`tbl_entries_data_1`;
CREATE TABLE`tbl_entries_data_1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_1` ***
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (20, 15, 1529, 1529);
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 2, 421, 421);
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 6, 401, 401);
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 7, 410, 410);
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 8, 411, 411);
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 9, 415, 415);
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 10, 1525, 1525);
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 11, 1521, 1521);
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 12, 1527, 1527);
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 13, 1528, 1528);
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 14, 1539, 1539);
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (21, 16, 1535, 1535);
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 17, 1541, 1541);
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (23, 18, '1530a', '1530a');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 19, '1531a', '1531a');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 20, '1532a', '1532a');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 21, '1533a', '1533a');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 22, '1534a', '1534a');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 27, 1520, 1520);
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 24, '1536a', '1536a');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 25, '1537a', '1537a');
INSERT INTO`tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 26, '1535a', '1535a');

-- *** STRUCTURE:`tbl_entries_data_11` ***
DROP TABLE IF EXISTS`tbl_entries_data_11`;
CREATE TABLE`tbl_entries_data_11` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_11` ***
INSERT INTO`tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 4, 'contact', 'Contact');

-- *** STRUCTURE:`tbl_entries_data_12` ***
DROP TABLE IF EXISTS`tbl_entries_data_12`;
CREATE TABLE`tbl_entries_data_12` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_12` ***
INSERT INTO`tbl_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (22, 4, '<ul>\r\n<li>Elisabethstrasse 15</li>\r\n<li>A-1010 Vienna</li>\r\n</ul>\r\n\r\n<ul>\r\n<li>Atelier Zelek</li>\r\n<li>Im Tredlhof 13</li>\r\n<li>3341 Ybbsitz</li>\r\n</ul>\r\n\r\n<ul class=\"address\">\r\n<li> +43 ( 0 ) 6763 179041</li>\r\n<li>+43 ( 0 ) 0699 10409507</li>\r\n<li><a href=\"mailto:zelek@utanet.at\">zelek@utanet.at</a></li>\r\n</ul>', '<ul>\n<li>Elisabethstrasse 15</li>\n<li>A-1010 Vienna</li>\n</ul>\n\n<ul>\n<li>Atelier Zelek</li>\n<li>Im Tredlhof 13</li>\n<li>3341 Ybbsitz</li>\n</ul>\n\n<ul class=\"address\">\n<li> +43 ( 0 ) 6763 179041</li>\n<li>+43 ( 0 ) 0699 10409507</li>\n<li><a href=\"mailto:zelek@utanet.at\">zelek@utanet.at</a></li>\n</ul>\n');

-- *** STRUCTURE:`tbl_entries_data_15` ***
DROP TABLE IF EXISTS`tbl_entries_data_15`;
CREATE TABLE`tbl_entries_data_15` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_15` ***
INSERT INTO`tbl_entries_data_15` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 5, 'collection', 'Collection');

-- *** STRUCTURE:`tbl_entries_data_16` ***
DROP TABLE IF EXISTS`tbl_entries_data_16`;
CREATE TABLE`tbl_entries_data_16` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_16` ***
INSERT INTO`tbl_entries_data_16` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (22, 5, 'W o r k s\r\n\r\n+ Can be seen in numerous collections,\r\n+ galleries and museum including:\r\n+ Poster museum, Wilanow, Warsaw\r\n+ Poster museum Posen, Poland\r\n+ DPAM De Paul Art museum Chicago\r\n+ Smithsonian Design museum Cooper Hewitt New York\r\n+ MOMA, New York\r\n\r\n\r\nB i b l i o g r a p h y\r\n\r\n+ Biennale catalog Warsaw 1966, 1968, 1970\r\n+ POLAND magazine Nr.3 1968\r\n+ Galeria Plakatu AMS Nr.7 2008\r\n+ Magazine 2+3 D Nr.41 2011\r\n+ Polish Designers of 20th Century 2015\r\n', '<p>W o r k s</p>\n\n<ul>\n<li>Can be seen in numerous collections,</li>\n<li>galleries and museum including:</li>\n<li>Poster museum, Wilanow, Warsaw</li>\n<li>Poster museum Posen, Poland</li>\n<li>DPAM De Paul Art museum Chicago</li>\n<li>Smithsonian Design museum Cooper Hewitt New York</li>\n<li>MOMA, New York</li>\n</ul>\n\n<p>B i b l i o g r a p h y</p>\n\n<ul>\n<li>Biennale catalog Warsaw 1966, 1968, 1970</li>\n<li>POLAND magazine Nr.3 1968</li>\n<li>Galeria Plakatu AMS Nr.7 2008</li>\n<li>Magazine 2+3 D Nr.41 2011</li>\n<li>Polish Designers of 20th Century 2015</li>\n</ul>\n');

-- *** STRUCTURE:`tbl_entries_data_3` ***
DROP TABLE IF EXISTS`tbl_entries_data_3`;
CREATE TABLE`tbl_entries_data_3` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_3` ***
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (32, 2, 'Poster', '<p>Poster</p>\n');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (15, 6, '200 x 150 cm acryl on canvas 2013 - 2016', '<p>200 x 150 cm acryl on canvas 2013 - 2016</p>\n');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (16, 7, '200 x 150 cm acryl on canvas 2013 - 2016', '<p>200 x 150 cm acryl on canvas 2013 - 2016</p>\n');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (19, 9, '200 x 150 cm acryl on canvas 2013 - 2016', '<p>200 x 150 cm acryl on canvas 2013 - 2016</p>\n');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 10, '200 x 150 cm acryl on canvas 2013 - 2016', '<p>200 x 150 cm acryl on canvas 2013 - 2016</p>\n');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 11, '200 x 150 cm acryl on canvas 2013 - 2016', '<p>200 x 150 cm acryl on canvas 2013 - 2016</p>\n');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (12, 12, '200 x 150 cm acryl on canvas 2013 - 2016', '<p>200 x 150 cm acryl on canvas 2013 - 2016</p>\n');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 13, '200 x 150 cm acryl on canvas 2013 - 2016', '<p>200 x 150 cm acryl on canvas 2013 - 2016</p>\n');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (14, 14, '200 x 150 cm acryl on canvas 2013 - 2016', '<p>200 x 150 cm acryl on canvas 2013 - 2016</p>\n');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (18, 8, '200 x 150 cm acryl on canvas 2013 - 2016', '<p>200 x 150 cm acryl on canvas 2013 - 2016</p>\n');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (20, 15, '200 x 150 cm acryl on canvas 2013 - 2016', '<p>200 x 150 cm acryl on canvas 2013 - 2016</p>\n');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (21, 16, '200 x 150 cm acryl on canvas 2013 - 2016', '<p>200 x 150 cm acryl on canvas 2013 - 2016</p>\n');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (22, 17, '200 x 150 cm acryl on canvas 2013 - 2016', '<p>200 x 150 cm acryl on canvas 2013 - 2016</p>\n');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (23, 18, 'Poster', '<p>Poster</p>\n');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (24, 19, 'Poster', '<p>Poster</p>\n');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (25, 20, 'Poster', '<p>Poster</p>\n');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (26, 21, 'Poster', '<p>Poster</p>\n');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (27, 22, 'Poster', '<p>Poster</p>\n');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (33, 27, 'Poster', '<p>Poster</p>\n');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (29, 24, 'Poster', '<p>Poster</p>\n');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (30, 25, 'Poster', '<p>Poster</p>\n');
INSERT INTO`tbl_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (31, 26, 'Poster', '<p>Poster</p>\n');

-- *** STRUCTURE:`tbl_entries_data_4` ***
DROP TABLE IF EXISTS`tbl_entries_data_4`;
CREATE TABLE`tbl_entries_data_4` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_4` ***
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (20, 15, '1529-1466193864.jpg', 238741, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2016-06-17T22:04:24+02:00\";s:5:\"width\";i:600;s:6:\"height\";i:450;}');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (32, 2, '421-1461844318.jpg', 199774, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2016-04-28T13:51:59+02:00\";s:5:\"width\";i:756;s:6:\"height\";i:1080;}');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (15, 6, '401-1461916216.jpg', 276716, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2016-04-29T09:50:17+02:00\";s:5:\"width\";i:1440;s:6:\"height\";i:1080;}');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (16, 7, '410-1461916241.jpg', 117390, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2016-04-29T09:50:41+02:00\";s:5:\"width\";i:1440;s:6:\"height\";i:1080;}');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (18, 8, '411-1461916262.jpg', 168731, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2016-04-29T09:51:02+02:00\";s:5:\"width\";i:1440;s:6:\"height\";i:1080;}');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (19, 9, '415-1461916340.jpg', 254611, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2016-04-29T09:52:21+02:00\";s:5:\"width\";i:1440;s:6:\"height\";i:1080;}');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (10, 10, '1525-1466192273.jpg', 132816, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2016-06-17T21:37:53+02:00\";s:5:\"width\";i:600;s:6:\"height\";i:450;}');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (11, 11, '1521-1466192861.jpg', 234939, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2016-06-17T21:47:41+02:00\";s:5:\"width\";i:600;s:6:\"height\";i:450;}');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (12, 12, '1527-1466192875.jpg', 250972, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2016-06-17T21:47:55+02:00\";s:5:\"width\";i:600;s:6:\"height\";i:450;}');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (13, 13, '1528-1466192888.jpg', 139051, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2016-06-17T21:48:08+02:00\";s:5:\"width\";i:600;s:6:\"height\";i:450;}');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (14, 14, '1539-1466192899.jpg', 146002, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2016-06-17T21:48:19+02:00\";s:5:\"width\";i:600;s:6:\"height\";i:450;}');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (21, 16, '1535-1466193885.jpg', 310085, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2016-06-17T22:04:45+02:00\";s:5:\"width\";i:600;s:6:\"height\";i:450;}');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (22, 17, '1541-1466193912.jpg', 206710, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2016-06-17T22:05:12+02:00\";s:5:\"width\";i:600;s:6:\"height\";i:450;}');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (23, 18, '1530a-1466194976.jpg', 226186, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2016-06-17T22:22:56+02:00\";s:5:\"width\";i:315;s:6:\"height\";i:450;}');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (24, 19, '1531a-1466194993.jpg', 251136, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2016-06-17T22:23:13+02:00\";s:5:\"width\";i:315;s:6:\"height\";i:450;}');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (25, 20, '1532a-1466195011.jpg', 228335, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2016-06-17T22:23:30+02:00\";s:5:\"width\";i:315;s:6:\"height\";i:450;}');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (26, 21, '1533a-1466195024.jpg', 220667, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2016-06-17T22:23:44+02:00\";s:5:\"width\";i:315;s:6:\"height\";i:450;}');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (27, 22, '1534a-1466195035.jpg', 247504, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2016-06-17T22:23:55+02:00\";s:5:\"width\";i:315;s:6:\"height\";i:450;}');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (33, 27, '1520-1466262321.jpg', 135934, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2016-06-18T17:05:21+02:00\";s:5:\"width\";i:315;s:6:\"height\";i:450;}');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (29, 24, '1536a-1466195061.jpg', 262713, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2016-06-17T22:24:20+02:00\";s:5:\"width\";i:315;s:6:\"height\";i:450;}');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (30, 25, '1537a-1466195073.jpg', 238698, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2016-06-17T22:24:33+02:00\";s:5:\"width\";i:315;s:6:\"height\";i:450;}');
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (31, 26, '1535a-1466195206.jpg', 235307, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2016-06-17T22:26:46+02:00\";s:5:\"width\";i:315;s:6:\"height\";i:450;}');

-- *** STRUCTURE:`tbl_entries_data_5` ***
DROP TABLE IF EXISTS`tbl_entries_data_5`;
CREATE TABLE`tbl_entries_data_5` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_5` ***
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (20, 15, 'paintings', 'Paintings');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 2, 'poster', 'Poster');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 6, 'paintings', 'Paintings');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 7, 'paintings', 'Paintings');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 8, 'paintings', 'Paintings');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 9, 'paintings', 'Paintings');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 10, 'paintings', 'Paintings');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 11, 'paintings', 'Paintings');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 12, 'paintings', 'Paintings');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 13, 'paintings', 'Paintings');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 14, 'paintings', 'Paintings');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (21, 16, 'paintings', 'Paintings');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 17, 'paintings', 'Paintings');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (23, 18, 'poster', 'Poster');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 19, 'poster', 'Poster');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 20, 'poster', 'Poster');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 21, 'poster', 'Poster');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 22, 'poster', 'Poster');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 27, 'poster', 'Poster');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 24, 'poster', 'Poster');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 25, 'poster', 'Poster');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 26, 'poster', 'Poster');

-- *** STRUCTURE:`tbl_entries_data_6` ***
DROP TABLE IF EXISTS`tbl_entries_data_6`;
CREATE TABLE`tbl_entries_data_6` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_6` ***
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `value`) VALUES (20, 15, 20);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `value`) VALUES (32, 2, 1);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `value`) VALUES (15, 6, 16);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `value`) VALUES (16, 7, 15);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `value`) VALUES (18, 8, 14);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `value`) VALUES (19, 9, 12);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `value`) VALUES (10, 10, 17);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `value`) VALUES (11, 11, 18);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `value`) VALUES (12, 12, 19);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `value`) VALUES (13, 13, 11);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `value`) VALUES (14, 14, 21);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `value`) VALUES (21, 16, 13);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `value`) VALUES (22, 17, 22);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `value`) VALUES (23, 18, 2);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `value`) VALUES (24, 19, 3);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `value`) VALUES (25, 20, 4);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `value`) VALUES (26, 21, 5);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `value`) VALUES (27, 22, 6);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `value`) VALUES (33, 27, 10);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `value`) VALUES (29, 24, 8);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `value`) VALUES (30, 25, 9);
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `value`) VALUES (31, 26, 7);

-- *** STRUCTURE:`tbl_entries_data_7` ***
DROP TABLE IF EXISTS`tbl_entries_data_7`;
CREATE TABLE`tbl_entries_data_7` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_7` ***

-- *** STRUCTURE:`tbl_entries_data_8` ***
DROP TABLE IF EXISTS`tbl_entries_data_8`;
CREATE TABLE`tbl_entries_data_8` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_8` ***
INSERT INTO`tbl_entries_data_8` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 3, 'about', 'About');

-- *** STRUCTURE:`tbl_entries_data_9` ***
DROP TABLE IF EXISTS`tbl_entries_data_9`;
CREATE TABLE`tbl_entries_data_9` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_9` ***
INSERT INTO`tbl_entries_data_9` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (58, 3, '+ born 1935, Nastasow, Poland\r\n<p />\r\n+ 1955 Matura Kenar Lyzeum, Zakopane, Poland\r\n+ 1955 Academy of fine arts, Warsaw\r\n+ 1961 Diploma at Prof. Tomaszewski\r\n+ 1962 - 1970 Assistant of Prof. Tomaszewski\r\n\r\n<img src=\"../workspace/images/p.png\" />\r\n\r\n+ 1961 - 1970 \r\n+ Creation of more than 100 posters\r\n+ published in Poland as well as overseas\r\n+ For his works he received lots of prices and awards,\r\n+ among others:\r\n <p /> \r\n+ 1965  First price at the competition of exhibition posters, Posen\r\n+ 1967 Trepkowski price of the graphic art publishing house, Warsaw\r\n+ 1967  First price in the Chopin poster competition\r\n+ 1968  Winning poster of the year, Warsaw \r\n+ 1969  Winning poster of the year, Warsaw\r\n+ 1969  First price in the competition <br />\r\n<span>of the 25th anniversary of Polish Republic</span>\r\n+ 1969  Silver medal for Chopin poster, poster exhibition, Milan\r\n+ 1969  Gold medal at 3rd poster biennale, Katowic\r\n+ 1974  First price at the international<br />\r\n<span>Mecanorma font competition, Paris</span>\r\n <p /> \r\n+ Participation at the Poster Biennale, Warsaw  1966 - 1968 - 1970\r\n+ 1975  Exhibition organized from Mecanorma, Paris\r\n+ 2012  Accompanying exhibitiont Letere and painting<br />\r\nto  the Poster Biennale, Warsow\r\n+ Participant at lots of exhibitions of Polish Poster Art\r\n <p /> \r\n+ 1970 Emigration to Vienna Austria\r\n+ Design typefaces and occupation with painting\r\n\r\n\r\n\r\n', '<ul>\n<li>born 1935, Nastasow, Poland</li>\n</ul>\n\n<p />\n\n<ul>\n<li>1955 Matura Kenar Lyzeum, Zakopane, Poland</li>\n<li>1955 Academy of fine arts, Warsaw</li>\n<li>1961 Diploma at Prof. Tomaszewski</li>\n<li>1962 - 1970 Assistant of Prof. Tomaszewski</li>\n</ul>\n\n<p><img src=\"../workspace/images/p.png\" /></p>\n\n<ul>\n<li>1961 - 1970 </li>\n<li>Creation of more than 100 posters</li>\n<li>published in Poland as well as overseas</li>\n<li>For his works he received lots of prices and awards,</li>\n<li>among others:</li>\n</ul>\n\n<p />\n\n<ul>\n<li>1965  First price at the competition of exhibition posters, Posen</li>\n<li>1967 Trepkowski price of the graphic art publishing house, Warsaw</li>\n<li>1967  First price in the Chopin poster competition</li>\n<li>1968  Winning poster of the year, Warsaw </li>\n<li>1969  Winning poster of the year, Warsaw</li>\n<li>1969  First price in the competition <br />\n<span>of the 25th anniversary of Polish Republic</span></li>\n<li>1969  Silver medal for Chopin poster, poster exhibition, Milan</li>\n<li>1969  Gold medal at 3rd poster biennale, Katowic</li>\n<li>1974  First price at the international<br />\n<span>Mecanorma font competition, Paris</span></li>\n</ul>\n\n<p />\n\n<ul>\n<li>Participation at the Poster Biennale, Warsaw  1966 - 1968 - 1970</li>\n<li>1975  Exhibition organized from Mecanorma, Paris</li>\n<li>2012  Accompanying exhibitiont Letere and painting<br />\nto  the Poster Biennale, Warsow</li>\n<li>Participant at lots of exhibitions of Polish Poster Art</li>\n</ul>\n\n<p />\n\n<ul>\n<li>1970 Emigration to Vienna Austria</li>\n<li>Design typefaces and occupation with painting</li>\n</ul>\n');

-- *** DATA:`tbl_anti_brute_force` ***

-- *** DATA:`tbl_anti_brute_force_bl` ***

-- *** DATA:`tbl_anti_brute_force_gl` ***

-- *** DATA:`tbl_anti_brute_force_wl` ***

-- *** DATA:`tbl_entries` ***
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (15, 1, 2, '2016-06-17 22:04:24', '2016-06-17 20:04:24', '2016-06-17 22:04:24', '2016-06-17 20:04:24');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (2, 1, 1, '2016-04-28 13:51:58', '2016-04-28 11:51:58', '2016-06-18 17:04:59', '2016-06-18 15:04:59');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (3, 2, 1, '2016-04-28 14:23:47', '2016-04-28 12:23:47', '2016-07-02 17:01:32', '2016-07-02 15:01:32');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (4, 3, 1, '2016-04-28 14:27:18', '2016-04-28 12:27:18', '2016-07-04 14:30:00', '2016-07-04 12:30:00');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (5, 4, 1, '2016-04-28 15:57:06', '2016-04-28 13:57:06', '2016-06-18 17:02:41', '2016-06-18 15:02:41');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (6, 1, 1, '2016-04-29 09:50:16', '2016-04-29 07:50:16', '2016-06-17 22:03:12', '2016-06-17 20:03:12');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (7, 1, 1, '2016-04-29 09:50:41', '2016-04-29 07:50:41', '2016-06-17 22:03:22', '2016-06-17 20:03:22');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (8, 1, 1, '2016-04-29 09:51:02', '2016-04-29 07:51:02', '2016-06-17 22:03:38', '2016-06-17 20:03:38');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (9, 1, 1, '2016-04-29 09:52:20', '2016-04-29 07:52:20', '2016-06-17 22:03:50', '2016-06-17 20:03:50');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (10, 1, 2, '2016-06-17 21:37:53', '2016-06-17 19:37:53', '2016-06-17 21:37:53', '2016-06-17 19:37:53');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (11, 1, 2, '2016-06-17 21:47:41', '2016-06-17 19:47:41', '2016-06-17 21:47:41', '2016-06-17 19:47:41');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (12, 1, 2, '2016-06-17 21:47:55', '2016-06-17 19:47:55', '2016-06-17 21:47:55', '2016-06-17 19:47:55');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (13, 1, 2, '2016-06-17 21:48:08', '2016-06-17 19:48:08', '2016-06-17 21:48:08', '2016-06-17 19:48:08');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (14, 1, 2, '2016-06-17 21:48:19', '2016-06-17 19:48:19', '2016-06-17 21:48:19', '2016-06-17 19:48:19');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (16, 1, 2, '2016-06-17 22:04:45', '2016-06-17 20:04:45', '2016-06-17 22:04:45', '2016-06-17 20:04:45');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (17, 1, 2, '2016-06-17 22:05:12', '2016-06-17 20:05:12', '2016-06-17 22:05:12', '2016-06-17 20:05:12');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (18, 1, 2, '2016-06-17 22:22:56', '2016-06-17 20:22:56', '2016-06-17 22:22:56', '2016-06-17 20:22:56');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (19, 1, 2, '2016-06-17 22:23:13', '2016-06-17 20:23:13', '2016-06-17 22:23:13', '2016-06-17 20:23:13');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (20, 1, 2, '2016-06-17 22:23:31', '2016-06-17 20:23:31', '2016-06-17 22:23:31', '2016-06-17 20:23:31');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (21, 1, 2, '2016-06-17 22:23:44', '2016-06-17 20:23:44', '2016-06-17 22:23:44', '2016-06-17 20:23:44');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (22, 1, 2, '2016-06-17 22:23:55', '2016-06-17 20:23:55', '2016-06-17 22:23:55', '2016-06-17 20:23:55');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (27, 1, 2, '2016-06-18 17:05:21', '2016-06-18 15:05:21', '2016-06-18 17:05:21', '2016-06-18 15:05:21');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (24, 1, 2, '2016-06-17 22:24:21', '2016-06-17 20:24:21', '2016-06-17 22:24:21', '2016-06-17 20:24:21');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (25, 1, 2, '2016-06-17 22:24:33', '2016-06-17 20:24:33', '2016-06-17 22:24:33', '2016-06-17 20:24:33');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (26, 1, 2, '2016-06-17 22:26:46', '2016-06-17 20:26:46', '2016-06-17 22:26:46', '2016-06-17 20:26:46');

-- *** DATA:`tbl_extensions` ***
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (1, 'debugdevkit', 'enabled', '1.3.3');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (2, 'export_ensemble', 'enabled', '2.2.0');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (3, 'jit_image_manipulation', 'enabled', 1.44);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (4, 'maintenance_mode', 'enabled', '1.9.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (5, 'markdown', 'enabled', 1.21);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (6, 'profiledevkit', 'enabled', '1.5.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (7, 'selectbox_link_field', 'enabled', 1.34);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (8, 'xssfilter', 'enabled', '1.4.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (9, 'ajax_checkbox', 'enabled', '1.3.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (10, 'anti_brute_force', 'enabled', '2.0.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (11, 'image_upload', 'enabled', '1.6.5');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (12, 'html5_doctype', 'enabled', '1.3.4');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (13, 'order_entries', 'enabled', '2.3.4');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (14, 'save_and_return', 'enabled', '1.8.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (15, 'image_preview', 'enabled', '2.3.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (16, 'link_preview', 'enabled', '1.2.6');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (17, 'limit_section_entries', 'enabled', '1.1.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (18, 'simplemde', 'enabled', 0.3);

-- *** DATA:`tbl_extensions_delegates` ***
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (70, 1, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (69, 1, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (78, 2, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (54, 3, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (60, 4, '/blueprints/pages/', 'AppendPageContent', '__appendType');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (59, 4, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (58, 4, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (57, 4, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (56, 4, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (72, 6, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (71, 6, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (82, 8, '/frontend/', 'EventPreSaveFilter', 'eventPreSaveFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (81, 8, '/blueprints/events/edit/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (80, 8, '/blueprints/events/new/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (79, 8, '/blueprints/events/', 'AppendEventFilterDocumentation', 'appendEventFilterDocumentation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (95, 9, '/backend/', 'InitaliseAdminPageHead', 'appendToHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (92, 10, '/backend/', 'AdminPagePreGenerate', 'adminPagePreGenerate');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (91, 10, '/system/preferences/', 'Save', 'save');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (90, 10, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'addCustomPreferenceFieldsets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (89, 10, '/login/', 'AuthorLoginSuccess', 'authorLoginSuccess');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (88, 10, '/login/', 'AuthorLoginFailure', 'authorLoginFailure');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (98, 12, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (97, 12, '/frontend/', 'FrontendPageResolved', 'setRenderTrigger');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (96, 12, '/frontend/', 'FrontendOutputPostGenerate', 'parse_html');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (76, 13, '/backend/', 'AdminPagePostGenerate', 'resetPagination');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (75, 13, '/backend/', 'AdminPagePreGenerate', 'adjustTable');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (74, 13, '/backend/', 'InitialiseAdminPageHead', 'prepareIndex');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (86, 14, '/publish/edit/', 'EntryPostEdit', 'entryPostEdit');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (85, 14, '/backend/', 'AdminPagePreGenerate', 'appendElement');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (53, 15, '/backend/', 'InitaliseAdminPageHead', 'appendJS');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (52, 16, '/backend/', 'InitaliseAdminPageHead', 'appendResources');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (84, 14, '/backend/', 'InitaliseAdminPageHead', 'appendJS');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (67, 17, '/blueprints/sections/', 'SectionPreCreate', 'dSaveSectionSettings');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (66, 17, '/blueprints/sections/', 'AddSectionElements', 'dAddSectionElements');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (65, 17, '/backend/', 'AdminPagePreGenerate', 'dAdminPagePreGenerate');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (64, 17, '/backend/', 'AppendPageAlert', 'dAppendPageAlert');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (63, 17, '/backend/', 'InitaliseAdminPageHead', 'dInitaliseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (73, 18, '/backend/', 'InitaliseAdminPageHead', 'appendAssets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (55, 3, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (61, 4, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (62, 4, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (68, 17, '/blueprints/sections/', 'SectionPreEdit', 'dSaveSectionSettings');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (77, 13, '/frontend/', 'DataSourcePreExecute', 'saveFilterContext');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (83, 8, '/frontend/', 'FrontendParamsResolve', 'frontendParamsResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (87, 14, '/publish/new/', 'EntryPostCreate', 'entryPostEdit');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (93, 10, '/backend/', 'InitialiseAdminPageHead', 'initialiseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (94, 10, '/backend/', 'AppendPageAlert', 'appendPageAlert');

-- *** DATA:`tbl_fields` ***
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (1, 'Title', 'title', 'input', 1, 'yes', 1, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (4, 'Image', 'image', 'image_upload', 1, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (3, 'Caption', 'caption', 'textarea', 1, 'yes', 2, 'sidebar', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (5, 'Catplegory', 'category', 'select', 1, 'yes', 3, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (6, 'Order', 'order', 'order_entries', 1, 'no', 4, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (7, 'Image preview setting', 'ips', 'image_preview_settings', 1, 'no', 5, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (8, 'Title', 'title', 'input', 2, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (9, 'Content', 'content', 'textarea', 2, 'yes', 1, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (10, 'Preview', 'preview', 'link_preview', 2, 'no', 2, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (11, 'Title', 'title', 'input', 3, 'no', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (12, 'Content', 'content', 'textarea', 3, 'yes', 1, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (13, 'Preview', 'preview', 'link_preview', 3, 'no', 2, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (14, 'Preview', 'preview', 'link_preview', 1, 'no', 6, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (15, 'Title', 'title', 'input', 4, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (16, 'Content', 'content', 'textarea', 4, 'yes', 1, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (17, 'Preview', 'preview', 'link_preview', 4, 'no', 2, 'sidebar', 'yes');

-- *** DATA:`tbl_pages` ***
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (1, NULL, 'Home', 'home', NULL, NULL, 'navigation,paintings', NULL, 1);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (2, NULL, 'Poster 1963 - 1969', 'poster', NULL, NULL, 'jit_image_manipulation_recipes,navigation,poster', NULL, 3);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (3, NULL, 'Painting', 'paintings', NULL, NULL, 'jit_image_manipulation_recipes,navigation,paintings', NULL, 2);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (4, NULL, 'Collection', 'collection', NULL, NULL, 'collection,navigation', NULL, 4);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (5, NULL, 'About', 'about', NULL, NULL, 'about,navigation', NULL, 5);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (6, NULL, 'Contact', 'contact', NULL, NULL, 'contact,navigation', NULL, 6);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (7, NULL, 'Works', 'works', NULL, 'title', 'jit_image_manipulation_recipes,navigation,works', NULL, 7);

-- *** DATA:`tbl_pages_types` ***
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (2, 1, 'index');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (12, 2, 'page');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (11, 3, 'page');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (5, 4, 'page');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (6, 5, 'page');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (7, 6, 'page');

-- *** DATA:`tbl_sections` ***
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `filter`, `navigation_group`) VALUES (1, 'Works', 'works', 1, 'no', 0, 'no', 'Content');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `filter`, `navigation_group`) VALUES (2, 'About', 'about', 2, 'no', 1, 'no', 'Text');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `filter`, `navigation_group`) VALUES (3, 'Contact', 'contact', 4, 'no', 1, 'no', 'Text');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `max_entries`, `filter`, `navigation_group`) VALUES (4, 'Collection', 'collection', 3, 'no', 1, 'no', 'Text');

-- *** DATA:`tbl_sections_association` ***
