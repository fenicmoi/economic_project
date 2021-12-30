-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 30 ธ.ค. 2021 เมื่อ 11:11 PM
-- เวอร์ชันของเซิร์ฟเวอร์: 10.4.10-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project-root`
--

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` varchar(10) NOT NULL COMMENT 'รหัสโครงการ',
  `gid` int(10) NOT NULL COMMENT 'รหัสกลุ่มโครงการ',
  `pname` text NOT NULL COMMENT 'ชื่อโครงการ',
  `money` float NOT NULL COMMENT 'งบประมาณ',
  `rec_money` text NOT NULL COMMENT 'หน่วยรับงบประมาณ',
  `operation` varchar(200) NOT NULL COMMENT 'หน่วยปฏิบัติ',
  `doc` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='ตารางโครงการ';

--
-- dump ตาราง `project`
--

INSERT INTO `project` (`id`, `pid`, `gid`, `pname`, `money`, `rec_money`, `operation`, `doc`) VALUES
(1, 'A1', 1, 'ตลาดชุมชนเชื่อมโยงการท่องเที่ยวโดยชุมชน', 405000, 'จังหวัดพัทลุง', 'สำนักงานการท่องเที่ยวและกีฬาจังหวัดพัทลุง', 'doc_53686288220211229_100955.pdf'),
(2, 'A2', 1, 'ตลาดชุมชนเชื่อมโยงการท่องเที่ยวโดยชุมชน', 949590, 'จังหวัดพัทลุง', ' สำนักงานพัฒนา\nชุมชนจังหวัด ', ''),
(3, 'A3', 1, 'โครงการการแข่งขันไตรคายัคเพื่อการท่องเที่ยวจังหวัดพัทลุง', 1240000, 'จังหวัดพัทลุง', 'สำนักงานการท่องเที่ยวและกีฬาจังหวัดพัทลุง', ''),
(4, 'A4', 1, 'พัฒนาชุมชนท่องเที่ยวชุมชนท่องเที่ยวเชิงสร้างสรรค์เพื่อสร้างมูลค่าเพิ่มทางการท่องเที่ยว', 3014090, 'จังหวัดพัทลุง', ' สำนักงานพัฒนา\nชุมชนจังหวัด ', ''),
(5, 'A5', 1, 'โครงการพัฒนาศูนย์กลางรวบรวมและกระจายสินค้าเกษตรฯปรับปรุงตลาดเศรษฐกิจชุมชนฯ', 8831500, 'เทศบาลเมืองพัทลุง', 'เทศบาลเมืองพัทลุง', ''),
(6, 'A6', 1, 'โครงการปรับปรุงศูนย์แสดงและจำหน่ายสินค้าหนึ่งตำบลหนึ่งผลิตภัณฑ์ (OTOP) องค์การบริหารส่วนจังหวัดพัทลุง อำเภอเมืองพัทลุง จังหวัดพัทลุง', 13000000, 'องค์การบริหารส่วนจังหวัดพัทลุง', 'องค์การบริหารส่วนจังหวัดพัทลุง', ''),
(7, 'A7', 1, 'โครงการเพิ่มศักยภาพโรงผลิตน้ำแร่เขาชัยสน ม.3', 1237000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'อบต.เขาชัยสน', ''),
(8, 'A8', 1, 'โครงการปรับภูมิทัศน์วัดเก่าปากพล', 820700, 'กรมส่งเสริมการปกครองท้องถิ่น', 'อบต.นาปะขอ', ''),
(9, 'A9', 1, 'โครงการปรับปรุงอาคารตลาดสดเทศบาลตำบลควนขนุน', 3242000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.ควนขนุน', ''),
(10, 'A10', 1, 'โครงการปรับภูมิทัศน์สวนสาธารณะเฉลิมพระเกียรติแหล่งน้ำแม่ห้วย', 2781000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.แพรกหา', ''),
(11, 'A11', 1, 'โครงการกระจูดพัฒนาอาชีพ', 66500, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.บ้านสวน', ''),
(12, 'A12', 1, 'โครงการพัฒนาผลิตภัณฑ์สมุนไพรฟ้าทะลายโจรครบวงจร', 164400, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.บ้านสวน', ''),
(13, 'A13', 1, 'โครงการพัฒนาและปรับปรุงภูมิทัศน์แหล่งท่องเที่ยวถ้ำอัญมณี หมู่ที่ 8  บ้านนาบอน', 2800000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'อบต.คลองเฉลิม', ''),
(14, 'A14', 1, 'โครงการเห็ดสามสหายพัฒนาอาชีพ', 81800, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.บ้านสวน', ''),
(15, 'A15', 1, 'โครงการส่งเสริมสินค้า OTOP', 1500000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'อบต.นาปะขอ', ''),
(16, 'A16', 1, 'โครงก่อสร้างอาคารกลุ่มเครื่องแกงบ้านหูแร่', 961000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.ร่มเมือง', ''),
(17, 'A17', 1, 'โครงการก่อสร้างอาคารกลุ่มกล้วยกรอบแก้วบ้านบ่อโพธิ์', 992000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.ร่มเมือง', ''),
(18, 'A18', 1, 'โครงการก่อสร้างโรงสกัดน้ำมันพลูกลุ่มพลูร่มเมือง', 1750000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.ร่มเมือง', ''),
(19, 'A19', 1, 'โครงการก่อสร้างอาคารกลุ่มสัมมาชีพชุมชน ม.4 บ้านนาโอ่', 906000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.ร่มเมือง', ''),
(20, 'B1', 2, 'เสริมสร้างความเข้มแข็งอาสาปศุสัตว์และเครือข่ายเฝ้าระวังโรคประจำอำเภอ', 3100440, 'จังหวัดพัทลุง', 'สนง.ปศุสัตว์จังหวัดพัทลุง', ''),
(21, 'B2', 2, 'โครงการพัฒนาอาชีพด้านประมงให้มีประสิทธิภาพอย่างยั่งยืน', 2894410, 'จังหวัดพัทลุง', 'สำนักงานประมงจังหวัดพัทลุง', ''),
(22, 'B3', 2, 'โครงการเสริมสร้างความเข้มแข็งของเศรษฐกิจฐานรากด้วยตู้อบพลังงานแสงอาทิตย์', 579400, 'จังหวัดพัทลุง', 'สำนักงานพลังงานจังหวัดพัทลุง', ''),
(23, 'B4', 2, 'เพิ่มรายได้ลดต้นทุนสร้างความั่นคงด้านพืชอาหารสัตว์', 492500, 'จังหวัดพัทลุง', 'สนง.ปศุสัตว์จังหวัดพัทลุง', ''),
(24, 'B5', 2, 'กลุ่มเลี้ยงโคพื้นบ้าน บ้านโคกนาคบุตร', 356000, 'จังหวัดพัทลุง', 'สนง.ปศุสัตว์จังหวัดพัทลุง', ''),
(25, 'B6', 2, 'เพื่มประสิทธิภาพการเลี้ยงโคเพื้นเมือง', 50000, 'จังหวัดพัทลุง', 'สนง.ปศุสัตว์จังหวัดพัทลุง', ''),
(26, 'B7', 2, 'โครงการปล่อยพันธุ์สัตว์น้ำในอ่างเก็บน้ำ และส่งเสริมการทำประมงอย่างยั่งยืนโดยชุมชนมีส่วนร่วม', 1615670, 'จังหวัดพัทลุง', 'สำนักงานประมงจังหวัดพัทลุง', ''),
(27, 'B8', 2, 'สำรองอาหารหยาบสำหรับโคเนื้อ', 313200, 'จังหวัดพัทลุง', 'สนง.ปศุสัตว์จังหวัดพัทลุง', ''),
(28, 'B9', 2, 'โครงการ 1 ครัวเรือน 1 แปลงเกษตรอินทรีย์มาตรฐาน SDGsPGS', 6744770, 'จังหวัดพัทลุง', 'สำนักงานเกษตรจังหวัดพัทลุง และสำนักงานเกษตรอำเภอควนขนุน', ''),
(29, 'B10', 2, 'โครงการพัฒนาและส่งเสริมการผลิตและยกระดับการแปรรูปผลผลิตจากผึ้งและชันโรงแบบครบวงจร มุ่งสู่ครัวเรือนนวัตกรรมผึ้งและชันโรง', 2084000, 'จังหวัดพัทลุง', 'สำนักงานเกษตรจังหวัดพัทลุง และสำนักงานเกษตรอำเภอบางแก้ว', ''),
(30, 'B11', 2, 'เพิ่มประสิทธิภาพการผลิตหมูหลุม', 53450, 'จังหวัดพัทลุง', 'สนง.ปศุสัตว์จังหวัดพัทลุง', ''),
(31, 'B12', 2, 'เพิ่มประสิทธิภาพการเลี้ยงโคบ้านศาลาน้ำ', 55000, 'จังหวัดพัทลุง', 'สนง.ปศุสัตว์จังหวัดพัทลุง', ''),
(32, 'B13', 2, 'คลัสเตอร์ ดี-ซะ-สะ-เจ-ขิ เบญจกูลวิธีเมืองลุง', 6753420, 'จังหวัดพัทลุง', 'สำนักงานสาธารณสุขจังหวัดพัทลุง/ม.ทักษิณ', ''),
(33, 'B14', 2, 'การยกระดับเกษตรกรผู้เลี้ยงควายทะเลน้อยเพื่อขึ้นทะเบียนระบบการเลี้ยงความปลักในพื้นที่ชุ่มน้ำทะเลน้อยเป็นสิ่งบ่งชี้ทางภูมิศาสตร์', 242440, 'จังหวัดพัทลุง', 'สนง.ปศุสัตว์จังหวัดพัทลุง', ''),
(34, 'B15', 2, 'โครงการพัฒนาและส่งเสริมการผลิตและการยกระดับการเลี้ยงไก่พื้นเมือง เชิงพาณิชย์และสร้างสรรค์ ตามแนวทางเศรษฐกิจพอเพียง', 764000, 'จังหวัดพัทลุง', 'สนง.ปศุสัตว์จังหวัดพัทลุง', ''),
(35, 'B16', 2, 'โครงการเพิ่มประสิทธิภาพการเกษตรเพื่อเพิ่มมูลค่าของผลิตภัณฑ์ทางการเกษตรตำบลอ่างทอง (การปลูกถั่วลิสงและการแปรรูป)', 457600, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.อ่างทอง', ''),
(36, 'B17', 2, 'โครงการจัดทำซั้งบ้านปลาเพื่อเป็นการอนุรักษ์พันธุ์สัตว์น้ำ', 995000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.จองถนน', ''),
(37, 'B18', 2, 'โครงการส่งเสริมการปลูกผักปลอดภัย', 797400, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.โคกม่วง', ''),
(38, 'B19', 2, 'โครงการเลี้ยงชันโรงเพื่อรักษาระบบนิเวศน์ตำบลมะกอกเหนือ', 529000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.บ้านสวน', ''),
(39, 'B20', 2, 'โครงการพัฒนาคุณภาพชีวิตและเพิ่มประสิทธิ ภาพการเลี้ยงปลา/การแปรรูปในตำบลตำนาน', 330000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.ตำนาน', ''),
(40, 'B21', 2, 'โครงการส่งเสริมและเพิ่มศักยภาพการผลิตเสบียงสัตว์ตำบลโตนดด้วน', 2110710, 'ทต.โตนดด้วน', 'ทต.โตนดด้วน', ''),
(41, 'B22', 2, 'โครงการเศรษฐกิจพอเพียง', 573400, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.ตำนาน', ''),
(42, 'B23', 2, 'โครงการศูนย์เรียนรู้เชิงท่องเที่ยวการเลี้ยงปลาชะโอนในกระชังแบบยั่งยืน', 1113500, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.บ้านสวน', ''),
(43, 'B24', 2, 'โครงการผลิตปุ๋ยอินทรีย์', 1979000, 'กรมส่งเสริมฯ', 'ทต.ท่าแค', ''),
(44, 'B25', 2, 'โครงการเพิ่มประสิทธิภาพการเกษตรเพื่อเพิ่มมูลค่าของชุมชนตำบลจองถนน', 967870, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.จองถนน', ''),
(45, 'B26', 2, 'โครงการเพิ่มประสิทธิภาพการผลิตและการจัดการผลไม้เพื่อการส่งออก', 2783800, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.บ้านนา', ''),
(46, 'B27', 2, 'โครงการส่งเสริมการทำปุ๋ยหมักจากผักตบชวา', 154600, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.ทะเลน้อย', ''),
(47, 'B28', 2, 'โครงการฝึกอบรมพัฒนาศักยภาพกลุ่มวิสาหกิจชุมชน', 227300, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.โคกม่วง', ''),
(48, 'C1', 3, 'โครงการพัฒนาโครงสร้างพื้นฐานเพื่อยกระดับคุณภาพชีวิตของคนในชุมชน ก่อสร้างถนนคอนกรีตเสริมเหล็กสายวัดพังกิ่ง-บ้านนายคล่อง หมู่ที่ 6 ตำบลสมหวัง อำเภอกงหรา จังหวัดพัทลุง', 2475000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.สมหวัง', ''),
(49, 'C2', 3, 'โครงการก่อสร้างถนนคอนกรีตเสริมเหล็ก สายท่าต่อเรือ หมู่ที่ 5 บ้านทุ่งแซะ  เทศบาลตำบลจองถนน  ตำบลจองถนน  อำเภอเขาชัยสน จังหวัดพัทลุง', 1998000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.จองถนน', ''),
(50, 'C3', 3, 'โครงการก่อสร้างถนนคอนกรีตเสริมเหล็กสายม่วงต้นเดียว ซอย 1 หมู่ที่ 5 ตำบลหานโพธิ์ อำเภอเขาชัยสน จังหวัดพัทลุง', 2368000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'อบต.หานโพธิ์', ''),
(51, 'C4', 3, 'โครงการก่อสร้างก่อสร้างถนนคอนกรีตเสริมเหล็กสายหนองหลัก-ท่าพลับ หมู่ที่ 3,4 ต.ควนขนุน อ.ควนขนุน จ.พัทลุง', 2524000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.หนองพ้อ', ''),
(52, 'C5', 3, 'โครงการก่อสร้างถนนคอนกรีตเสริมเหล็ก สายคันคลองไซลาว หมู่ที่ 8 ตำบลพนมวังก์', 3083000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'อบต.พนมวังก์', ''),
(53, 'C6', 3, 'โครงการก่อสร้างถนนคอนกรีตเสริมเหล็ก สายคลองนุ้ย-ควนอินนอโม', 1234000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.เขาหัวช้าง', ''),
(54, 'C7', 3, 'โครงการปรับปรุงผิวจราจรแอลฟัสต์คอนกรีตถนนสายแสนดี', 1984000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.ท่ามะเดื่อ', ''),
(55, 'C8', 3, 'โครงการก่อสร้างถนนคอนกรีตเสริมเหล็ก สายปากพลี  หมู่ที่ 4   ตำบลดอนทราย  อำเภอปากพะยูน  จังหวัดพัทลุง', 1967000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.ดอนทราย  อำเภอปากพะยูน', ''),
(56, 'C9', 3, 'โครงการปรับปรุงถนนแอสฟัลท์ติกคอนกรีต พท.ถ30-006 สายเทศบาล 9 บ้านปากพะยูน หมู่ที่ 1 ตำบลปากพะยูน อำเภอปากพะยูน จังหวัดพัทลุง กว้าง 8.10 เมตร ยาว 710.00 เมตร หนา 0.04 เมตร พื้นที่ไม่น้อยกว่า 5,751.00 ตารางเมตร\n', 1997000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.ปากพะยูน', ''),
(57, 'C10', 3, 'โครงการก่อสร้างถนนคอนกรีตเสริมเหล็กสายวังแค-ท่าเลียบ หมู่ที่1  ช่วง กม.0+000 ถึง กม.0+680 ผิวจราจรกว้าง 3.00 เมตร ยาว 680 เมตร หนา  0.15 เมตร ไหล่ทางลูกรังกว้างข้างละ 0.25 เมตร หรือมีพื้นที่รวมกันไม่น้อยกว่า 2,380 ตารางเมตร ', 1797100, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.อ่าวพะยูน', ''),
(58, 'C11', 3, 'โครงการก่อสร้างผิวถนนคอนกรีตเสริมเหล็กสายสหกรณ์-กอยออก หมู่ที่ 4', 1985700, 'กรมส่งเสริมการปกครองท้องถิ่น', 'อบต.หนองธง', ''),
(59, 'C12', 3, 'โครงการก่อสร้างถนนคอนกรีตเสริมเหล็ก สายหนักยอ หมู่ที่  6 ตำบลลานข่อย อำเภอป่าพะยอม จังหวัดพัทลุง', 1994000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.ลานข่อย', ''),
(60, 'C13', 3, 'โครงการก่อสร้างถนนคอนกรีตเสริมเหล็ก สายสามแยกซอยทวดเอียด ตรอกพ้อ หมู่ที่ 13 ตำบลเกาะเต่า อำเภอป่าพะยอม จังหวัดพัทลุง', 1930000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'อบต.เกาะเต่า', ''),
(61, 'C14', 3, 'โครงการก่อสร้างถนน คสล.สายเกาะบาก-ทุ่งวังครก หมู่ที่ 5 ตำบลป่าพะยอม อำเภอป่าพะยอม จังหวัดพัทลุง', 1930000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'อบต.ป่าพะยอม', ''),
(62, 'C15', 3, 'โครงการก่อสร้างถนน คสล.สายหนองขี้เป็ด หมู่ที่ 2 บ้านโคกแย้ม ตำบลนาท่อม อำเภอเมืองพัทลุง จังหวัดพัทลุง', 2277000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.นาท่อม', ''),
(63, 'C16', 3, 'โครงการก่อสร้างถนนคอนกรีตเสริมเหล็ก สายชลประทาน - หนองหญ้าปล้อง หมู่ที่ 4   ตำบลปรางหมู่ อำเภอเมืองพัทลุง จังหวัดพัทลุง', 1942000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.ปรางหมู่', ''),
(64, 'C17', 3, 'โครงการก่อสร้างคอนกรีตเสริมเหล็ก สายพังล่า - วังเคียน หมู่ที่ 1 ตำบลร่มเมือง อำเภอเมืองพัทลุง จังหวัดพัทลุง', 1998000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.ร่มเมือง', ''),
(65, 'C18', 3, 'โครงการก่อสร้างถนนคอนกรีตเสริมเหล็ก สายคลองเต่า-สมหวังหมู่ที่ 2,6 บ้านสวนหลวง,บ้านเกาะเหรียง ตำบล่างทอง', 2405000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.อ่างทอง', ''),
(66, 'C19', 3, 'โครงการก่อสร้างถนน คสล.สายเกาะแตระ-ศาลาไม้ไผ่ หมู่ที่ 8 ตำบลท่าแค อำเภอเมืองพัทลุง จังหวัดพัทลุง', 3580000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.ท่าแค', ''),
(67, 'C20', 3, 'โครงการก่อสร้างถนนคอนกรีตเสริมเหล็ก รหัสทางหลวงท้องถิ่น พท.ถ 59-001 สายห้วยไทร - นารา หมู่ที่ 7 ตำบลตะแพน อำเภอศรีบรรพต จังหวัดพัทลุง', 4147000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'อบต.ตะแพน', ''),
(68, 'C21', 3, 'โครงการก่อสร้างถนนลาดยางแอสฟัลท์ติกคอนกรีตสายทลช.-สวนนายใจ  สุวรรณกิจ ม.2', 2186000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'อบต.ฝาละมี', ''),
(69, 'C22', 3, 'โครงการก่อสร้างถนนคอนกรีตเสริมเหล็กสายโหล๊ะเร็ด หมู่ที่ 8 ตำบลบ้านพร้าว', 1800000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.บ้านพร้าว', ''),
(70, 'C23', 3, 'โครงการซ่อมสร้างผิวทางแอสฟัลท์ติกคอนกรีตสายท่าตีน - เกาะโคบ หมู่ที่ 3 ตำบลเกาะหมาก อำเภอปากพะยูน จังหวัดพัทลุง', 2200000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'อบต.เกาะหมาก', ''),
(71, 'C24', 3, 'โครงการก่อสร้างถนน คสล. สายวังขอน - ห้วยปาน - ห้วยกอก หมู่ที่ 7 , 8 ต.นาขยาด', 2200000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'ทต.นาขยาด', ''),
(72, 'C25', 3, 'โครงการก่อสร้างถนนคอนกรีตเสริมเหล็กสายบ้านท่ามะนาว  หมู่ที่  6  ตำบลชัยบุรี  อำเภอเมืองพัทลุง  จังหวัดพัทลุง', 2600000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'อบต.ชัยบุรี', ''),
(73, 'C26', 3, 'โครงการปรับปรุงผิวจราจรแอสฟัลท์ติกคอนกรีตถนนเวชรังษี', 3119800, 'เทศบาลเมืองพัทลุง', 'เทศบาลเมืองพัทลุง', ''),
(74, 'C27', 3, 'โครงการปรับปรุงถนนผิวจราจรแอสฟัลต์คอนกรีต รหัสสายทาง พท.ถ 1-0003 สายบ้านแร่ - ทะเลสาบ อำเภอเมืองพัทลุง จังหวัดพัทลุง', 11391000, 'กรมส่งเสริมการปกครองท้องถิ่น', 'องค์การบริหารส่วนจังหวัดพัทลุง', '');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `projectgroup`
--

DROP TABLE IF EXISTS `projectgroup`;
CREATE TABLE IF NOT EXISTS `projectgroup` (
  `gid` int(10) NOT NULL,
  `gname` text NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- dump ตาราง `projectgroup`
--

INSERT INTO `projectgroup` (`gid`, `gname`) VALUES
(1, 'พัฒนาสินค้า ท่องเที่ยว บริการ และการค้า'),
(2, 'ยกระดับประสิทธิภาพและสร้างมูลค่าเพิ่มด้านการเกษตร/อุตสาหกรรม'),
(3, 'พัฒนาโครงสร้างพื้นฐานเพื่อรองรับการฟื้นตัวและพัฒนากิจกรรมทางเศรษฐกิจของชุมชน'),
(4, ' โครงการที่มีวัตถุประสงค์เพื่อการกระจายประโยชน์ให้กับประชาชนในระดับพื้นที่หมู่บ้าน/ชุมชน');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `project_detail`
--

DROP TABLE IF EXISTS `project_detail`;
CREATE TABLE IF NOT EXISTS `project_detail` (
  `did` int(10) NOT NULL AUTO_INCREMENT COMMENT 'รหัสโครงการ',
  `id` int(10) NOT NULL COMMENT 'รหัสโครงการ',
  `detail` text NOT NULL COMMENT 'รายละเอียด',
  `timework` text NOT NULL COMMENT 'เวลาดำเนินการ',
  `trancive` enum('yes','no') NOT NULL DEFAULT 'no' COMMENT 'ภารกิจถ่ายโอน',
  `duplicate` enum('yes','no') NOT NULL DEFAULT 'no' COMMENT 'ไม่ซ้ำกับแหล่งเงิน',
  `partic` enum('yes','no') NOT NULL DEFAULT 'no' COMMENT 'ผ่านกระบวนการมีส่วนร่วม',
  `tor` text NOT NULL DEFAULT 'ไม่มี',
  `expenses` enum('ตามระเบียบ','ราคาที่เคยจัดหา','ใบเสนอราคาต่ำสุด') NOT NULL DEFAULT 'ตามระเบียบ' COMMENT 'รายจ่าายประจำ',
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='รายละเอียดโครงการ';

--
-- dump ตาราง `project_detail`
--

INSERT INTO `project_detail` (`did`, `id`, `detail`, `timework`, `trancive`, `duplicate`, `partic`, `tor`, `expenses`) VALUES
(1, 1, '                                                                                                                                                                                                                                                                                                                                                                                                ทดสอบการทำงาน\r\n                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ', 'เมษายน 2564', 'no', 'no', 'no', 'ไม่มี', 'ตามระเบียบ');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;