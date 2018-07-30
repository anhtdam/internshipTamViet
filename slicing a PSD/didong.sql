/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.1.30-MariaDB : Database - csdl_webbanhangonline
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`csdl_webbanhangonline` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `csdl_webbanhangonline`;

/*Table structure for table `binh_luan` */

DROP TABLE IF EXISTS `binh_luan`;

CREATE TABLE `binh_luan` (
  `id_bl` varchar(15) NOT NULL COMMENT 'ID binh luan',
  `id_sp` varchar(15) NOT NULL COMMENT 'ID san pham',
  `id_nd` varchar(15) NOT NULL,
  `Ho_ten` varchar(50) NOT NULL COMMENT 'Ho ten ngoi binh luan',
  `Ngay_gio` datetime NOT NULL COMMENT 'Thoi diem binh luan',
  `Noi_dung` varchar(250) NOT NULL COMMENT 'Noi dung binh luan',
  `Dien_thoai` varchar(25) NOT NULL COMMENT 'So dien thoai nguoi binh luan',
  PRIMARY KEY (`id_bl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `binh_luan` */

insert  into `binh_luan`(`id_bl`,`id_sp`,`id_nd`,`Ho_ten`,`Ngay_gio`,`Noi_dung`,`Dien_thoai`) values ('bl1','IP732','nd1','Phi Van Hung','2018-07-10 17:43:00','Dep qua!!!','0912345678'),('bl2','IP732','nd2','Nguyen Huu Tuan Nghia','2018-07-19 17:43:00','Xau qua!!!','0812345678');

/*Table structure for table `chi_tiet_hoa_don` */

DROP TABLE IF EXISTS `chi_tiet_hoa_don`;

CREATE TABLE `chi_tiet_hoa_don` (
  `id_hd` int(11) NOT NULL COMMENT 'ID cua hoa don',
  `id_sp` varchar(20) NOT NULL COMMENT 'ID cua san pham',
  `So_luong_mua` int(5) NOT NULL COMMENT 'So san pham trong hoa don',
  `Thanh_tien` double(15,2) NOT NULL COMMENT 'Gia tien tung loai san pham',
  PRIMARY KEY (`id_hd`,`id_sp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `chi_tiet_hoa_don` */

insert  into `chi_tiet_hoa_don`(`id_hd`,`id_sp`,`So_luong_mua`,`Thanh_tien`) values (1,'IP732',2,460.00),(2,'IP764',4,120.00),(3,'IP764',10,56.00),(4,'IPX128',50,65.00),(5,'IPX256',5,100.00),(6,'vaio',80,100.00),(7,'IP732',805,100.00),(8,'vaio',5,20.00),(9,'IPX256',15,300.00),(10,'IP764',12,360.00),(10,'samsungJ7',20,75.00),(11,'Sac du phong',800,1000.00);

/*Table structure for table `danh_muc_sp` */

DROP TABLE IF EXISTS `danh_muc_sp`;

CREATE TABLE `danh_muc_sp` (
  `id_danhmuc` varchar(3) NOT NULL COMMENT 'ID danh muc',
  `Ten_dm` varchar(50) NOT NULL COMMENT 'Ten danh muc',
  PRIMARY KEY (`id_danhmuc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `danh_muc_sp` */

insert  into `danh_muc_sp`(`id_danhmuc`,`Ten_dm`) values ('ACC','accessories'),('DES','desktop'),('LAP','laptop'),('NET','networking'),('PHO','smart phone'),('SOF','software');

/*Table structure for table `don_dh` */

DROP TABLE IF EXISTS `don_dh`;

CREATE TABLE `don_dh` (
  `id_hd` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID hoa don',
  `id_nd` varchar(15) NOT NULL COMMENT 'ID khach hang',
  `id_tinhtrang` int(2) NOT NULL COMMENT 'ID tinh trang don hang',
  `id_nvgh` varchar(15) NOT NULL COMMENT 'ID nhan vien giao hang',
  `Ngay_lap` datetime NOT NULL COMMENT 'Ngay lap hoa don',
  `Tong_gia` double(15,3) NOT NULL COMMENT 'Tong gia cua hoa don',
  `Noi_nhan` varchar(100) NOT NULL COMMENT 'Noi nhan don hang',
  `Ghi_chu` varchar(100) NOT NULL COMMENT 'Ghi chu cua nhan vien',
  PRIMARY KEY (`id_hd`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `don_dh` */

insert  into `don_dh`(`id_hd`,`id_nd`,`id_tinhtrang`,`id_nvgh`,`Ngay_lap`,`Tong_gia`,`Noi_nhan`,`Ghi_chu`) values (1,'kh1',1,'em1','2018-07-11 17:45:54',1300000.000,'My','0'),(2,'kh2',2,'em2','2018-07-27 15:23:47',4500000.000,'Viet Nam','0'),(3,'kh3',4,'em3','2018-07-10 15:24:26',20000000.000,'Trung Quoc','0');

/*Table structure for table `group_user` */

DROP TABLE IF EXISTS `group_user`;

CREATE TABLE `group_user` (
  `group_id` varchar(5) NOT NULL COMMENT 'ID nhom',
  `Type` varchar(50) NOT NULL COMMENT 'Loai nhom',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `group_user` */

insert  into `group_user`(`group_id`,`Type`) values ('1','Admin'),('2','Member'),('3','Guest');

/*Table structure for table `nv_gh` */

DROP TABLE IF EXISTS `nv_gh`;

CREATE TABLE `nv_gh` (
  `id_nv_gh` varchar(15) NOT NULL COMMENT 'ID nhan vien giao hang',
  `Ten_nvgh` varchar(15) CHARACTER SET utf8 NOT NULL COMMENT 'Ten nhan vien giao hang',
  `SDT1` varchar(15) NOT NULL COMMENT 'So dien thoai cua nhan vien giao hang',
  `SDT2` varchar(15) NOT NULL COMMENT 'So dien thoai cua nhan vien giao hang',
  PRIMARY KEY (`id_nv_gh`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `nv_gh` */

insert  into `nv_gh`(`id_nv_gh`,`Ten_nvgh`,`SDT1`,`SDT2`) values ('em1','Huu Nghia','0712345678','0612345678'),('em2','Nghia Huu','0112345678','0212345678'),('em3','Nguyen Nghia','0412345678','0487456321'),('em4','Tuan Nghia','0812345678','0'),('em5','Nghia Tuan','1234567890','9876543210');

/*Table structure for table `san_pham` */

DROP TABLE IF EXISTS `san_pham`;

CREATE TABLE `san_pham` (
  `id_sp` varchar(15) CHARACTER SET latin1 NOT NULL COMMENT 'ID san pham',
  `id_dm` varchar(3) CHARACTER SET latin1 NOT NULL COMMENT 'ID danh muc',
  `Ten_sp` varchar(100) NOT NULL COMMENT 'Ten san pham',
  `Anh_sp` varchar(50) CHARACTER SET latin1 NOT NULL COMMENT 'Anh  san pham',
  `Gia_sp` double(15,2) NOT NULL COMMENT 'Gia san pham',
  `Soluong_sp` int(5) NOT NULL COMMENT 'So luong san pham',
  `Kich_thuoc` varchar(255) CHARACTER SET latin1 NOT NULL COMMENT 'Kich thuoc san pham',
  `Trong_luong` varchar(255) CHARACTER SET latin1 NOT NULL COMMENT 'Trong luong san pham',
  `Mau_sac` varchar(255) CHARACTER SET latin1 NOT NULL COMMENT 'Mau sac san pham',
  `Am_thanh` varchar(255) CHARACTER SET latin1 NOT NULL COMMENT 'Am thanh ',
  `Bo_nho` varchar(255) CHARACTER SET latin1 NOT NULL COMMENT 'Bo nho cua san pham',
  `He_Dieu_hanh` varchar(255) CHARACTER SET latin1 NOT NULL COMMENT 'He dieu hanh cua san pham',
  `RAM` varchar(255) CHARACTER SET latin1 NOT NULL COMMENT 'RAM san pham',
  `Camera` varchar(255) CHARACTER SET latin1 NOT NULL COMMENT 'Camera san pham',
  `Pin` varchar(255) CHARACTER SET latin1 NOT NULL COMMENT 'Pin cua san pham',
  `Bao_hanh` varchar(255) NOT NULL COMMENT 'Bao hanh',
  `Ket _noi` varchar(255) CHARACTER SET latin1 NOT NULL COMMENT 'Ket noi cua thiet bi',
  `Gia_km` double(15,2) NOT NULL COMMENT 'Gia khuyen mai(neu co)',
  `Batdau_km` datetime NOT NULL COMMENT 'Ngay bat dau khuyen mai',
  `Ketthuc_km` datetime NOT NULL COMMENT 'Ngay ket thuc khuyen mai',
  `NSX` varchar(15) CHARACTER SET latin1 NOT NULL COMMENT 'nha san xuat',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_sp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `san_pham` */

insert  into `san_pham`(`id_sp`,`id_dm`,`Ten_sp`,`Anh_sp`,`Gia_sp`,`Soluong_sp`,`Kich_thuoc`,`Trong_luong`,`Mau_sac`,`Am_thanh`,`Bo_nho`,`He_Dieu_hanh`,`RAM`,`Camera`,`Pin`,`Bao_hanh`,`Ket _noi`,`Gia_km`,`Batdau_km`,`Ketthuc_km`,`NSX`,`Created_at`,`Modified`) values ('DELL3468','LAP','Dell Vostro 3468 i3 6006U','anh',1000.00,120,'14 inches','200g','BLACK','30','500GB','Windows','6GB','3.3','123000 mAh','24 thang','usb3.0',250000.00,'2018-08-23 00:00:00','2018-10-23 00:00:00','DELL','2018-07-28 19:38:48','2018-07-28 19:47:49'),('IP732Sil','PHO','iPhone 7 32 Silver','anh',900.00,100,'4.7 inches','128 g','SLIVER','4.0','32GB','IOS','3GB','12.8','13000 mAh','12 thang','4G',25000.00,'2018-07-03 17:19:35','2018-07-06 17:19:40','APPLE','2018-07-28 19:38:58','2018-07-28 19:47:49'),('IP764GGre','PHO','iPhone 7 64 Grey','anh',1000.00,60,'4.7 inches','128 g','GRAY','4.0','64GB','IOS','3GB','14.8','13000 mAh','12 thang','4G',25000.00,'2018-07-12 17:19:35','2018-07-20 17:19:40','APPLE','2018-07-28 19:39:05','2018-07-28 19:47:49'),('IPX128Sil','PHO','iPhone X 128 Silver','anh',1400.00,25,'5.8 inches','174 g','SLIVER','4.0','128GB','IOS','5GB','14.8','13000 mAh','12 thang','4G',25000.00,'2018-07-03 17:19:35','2018-07-06 17:19:40','APPLE','2018-07-28 19:39:06','2018-07-28 19:47:49'),('IPX256Gre','PHO','iPhone X 256 Grey','anh',1450.00,34,'5.8 inches','174 g','GRAY','3.0','256GB','IOS','4GB','12.8','13000 mAh','24 thang','4G',15000.00,'2018-07-28 17:17:20','2018-07-25 17:17:31','APPLE','2018-07-28 19:39:07','2018-07-28 19:47:49'),('IPX32Gol','PHO','iPhone X 32 Gold','anh',1350.00,40,'5.8 inches','174 g','GOLD','4.0','32GB','IOS','6GB','14.8','13000 mAh','12 thang','4G',25000.00,'2018-07-04 17:19:35','2018-07-07 17:19:40','APPLE','2018-07-28 19:39:08','2018-07-28 19:47:49'),('J764Gol','PHO','Galaxy J7 64 Gold','',500.00,40,'','','','','','','','','','12 thang','4G',0.00,'0000-00-00 00:00:00','0000-00-00 00:00:00','SAMSUNG','2018-07-28 19:39:23','2018-07-28 19:47:49'),('Note332Bla','PHO','Galaxy Note3 32 Black','',999.00,30,'5.5 inches','170 g','BLACK','','32GB','Android 5.0','3GB','','','','',0.00,'0000-00-00 00:00:00','0000-00-00 00:00:00','SAMSUNG','2018-07-28 17:51:02','2018-07-28 19:52:54'),('Note964Bla','PHO','Galaxy Note9 64 Black','',1000.00,60,'5.9 inches','160 g','BLACK','','64GB','Android 7.1','6GB','','','','',0.00,'0000-00-00 00:00:00','0000-00-00 00:00:00','SAMSUNG','2018-07-28 19:52:42','2018-07-28 19:53:42'),('S864Blu','PHO','Galaxy S8 64 Blue ','',950.00,50,'5.9 inches','170g','BLUE','','64GB','Android 7.0','5GB','','','','',0.00,'0000-00-00 00:00:00','0000-00-00 00:00:00','SAMSUNG','2018-07-28 17:50:54','2018-07-28 19:47:49');

/*Table structure for table `tinh_trang` */

DROP TABLE IF EXISTS `tinh_trang`;

CREATE TABLE `tinh_trang` (
  `id_tinh_trang` int(2) NOT NULL COMMENT 'ID tinh trang san pham',
  `Tinh_trang` varchar(20) NOT NULL COMMENT 'Tinh trang cua san pham',
  PRIMARY KEY (`id_tinh_trang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tinh_trang` */

insert  into `tinh_trang`(`id_tinh_trang`,`Tinh_trang`) values (1,'Da giao'),(2,'Cho lay hang'),(3,'Da Huy'),(4,'Tra hang'),(5,'Cho xac nhan');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_nd` varchar(15) CHARACTER SET latin1 NOT NULL COMMENT 'ID nguoi dung',
  `Ten_nd` varchar(50) NOT NULL COMMENT 'Ten nguoi dung',
  `Tai_khoan` varchar(50) CHARACTER SET latin1 NOT NULL COMMENT 'Tai khoan cua ngoi dung',
  `Mat_khau` varchar(25) CHARACTER SET latin1 NOT NULL COMMENT 'Mat khau ngoi dung',
  `group_id` varchar(5) NOT NULL COMMENT 'ID nhom',
  PRIMARY KEY (`id_nd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id_nd`,`Ten_nd`,`Tai_khoan`,`Mat_khau`,`group_id`) values ('u1','nghia123','nghia','123456','1'),('u2','nghia456','nghiaa','123456','2'),('u3','nghia45','nghi','123456','2'),('u4','nghia4','ngho','123456','1'),('u5','nghia1','nghu','123456','3'),('u6','nghi2','nghe','456789','3');

/* Procedure structure for procedure `all_products` */

/*!50003 DROP PROCEDURE IF EXISTS  `all_products` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `all_products`()
BEGIN
	select * from san_pham;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `top5_seller` */

/*!50003 DROP PROCEDURE IF EXISTS  `top5_seller` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `top5_seller`()
BEGIN
	SELECT rs.id_sp, rs.Tong
	FROM (
		SELECT id_sp, SUM(So_luong_mua) AS Tong
		FROM chi_tiet_hoa_don
		GROUP BY id_sp
	) AS rs
	ORDER BY rs.Tong DESC LIMIT 5;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
