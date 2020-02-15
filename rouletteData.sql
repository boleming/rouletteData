-- 建名为roulette_lottery的数据库
-- CREATE DATABASE `roulette_lottery`;
-- 创建表格
CREATE TABLE IF NOT EXISTS `imgs` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(99) NOT NULL,
  `img_url` varchar(99) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5;
-- 设置id为主键
-- ALTER TABLE imgs add PRIMARY (`id`);
-- 为已存在的列创建自增约束
-- ALTER TABLE `imgs` MODIFY `id` int NOT NULL AUTO_INCREMENT;
-- 插入数据
BEGIN;
INSERT INTO `imgs` VALUES (1, 'ring', 'https://raw.githubusercontent.com/boleming/roulette-lottery/master/images/yuanhuan.png');
INSERT INTO `imgs` VALUES (2, 'turntable', 'https://raw.githubusercontent.com/boleming/roulette-lottery/master/images/zhuanpan.png');
INSERT INTO `imgs` VALUES (3, 'luckDraw', 'https://raw.githubusercontent.com/boleming/roulette-lottery/master/images/choujiang.png');
INSERT INTO `imgs` VALUES (4, 'bottom', 'https://raw.githubusercontent.com/boleming/roulette-lottery/master/images/dibu.png');
COMMIT;
-- 删库
-- DROP DATABASE IF EXISTS `123`