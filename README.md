# rouletteData
rouletteData(php+mysql)轮盘微信小程序的后端数据：<br/>
前言：这个后端的php+mysql文件要有Apache+Mysql的环境才能运行，那么我来给大家简单说一下要怎样才能把这个后端数据跑起来吧！

1. 安装phpStudy=>打开桌面快捷方式=>Mysql管理器=>phpMyAdmin=>登录Mysql。
2. 建名为roulette_lottery的数据库：以下指令复制到sql指令处执行即可
```
CREATE DATABASE `roulette_lottery`;
```
3. 创建表格并导入数据：选择刚才创建的roulette_lottery数据库，复制到sql指令处然后执行这段代码
```
-- 创建表格
CREATE TABLE IF NOT EXISTS `imgs` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(99) NOT NULL,
  `img_url` varchar(99) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5;
-- 插入数据
BEGIN;
INSERT INTO `imgs` VALUES (1, 'ring', 'https://raw.githubusercontent.com/boleming/roulette-lottery/master/images/yuanhuan.png');
INSERT INTO `imgs` VALUES (2, 'turntable', 'https://raw.githubusercontent.com/boleming/roulette-lottery/master/images/zhuanpan.png');
INSERT INTO `imgs` VALUES (3, 'luckDraw', 'https://raw.githubusercontent.com/boleming/roulette-lottery/master/images/choujiang.png');
INSERT INTO `imgs` VALUES (4, 'bottom', 'https://raw.githubusercontent.com/boleming/roulette-lottery/master/images/dibu.png');
COMMIT;
```
注：也可以导入rouletteData.sql文件
4. 将rouletteData文件存放到www文件夹下运行即可。<br/>
后记：我已经做好了一个本地运行的轮盘小项目，但为了更好地模拟真实的项目才着手写了PHP接口以及mysql的代码。
