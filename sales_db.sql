-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2019 at 04:53 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sales_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) NOT NULL,
  `ammount` int(10) NOT NULL,
  `buyer` varchar(255) NOT NULL,
  `receipt_id` varchar(20) NOT NULL,
  `items` varchar(255) NOT NULL,
  `buyer_email` varchar(50) NOT NULL,
  `buyer_ip` varchar(20) DEFAULT NULL,
  `note` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `hash_key` varchar(255) DEFAULT NULL,
  `entry_at` date DEFAULT NULL,
  `entry_by` int(10) NOT NULL,
  `salt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `ammount`, `buyer`, `receipt_id`, `items`, `buyer_email`, `buyer_ip`, `note`, `city`, `phone`, `hash_key`, `entry_at`, `entry_by`, `salt`) VALUES
(1, 421, 'sdflkj', 'ssfdf', 'sdflsfd', 'sdf@sdf.com', '::1', 'lkjsdf', 'sdfs', '098', '655c63309d0a66b8d61223cb5f5b7b2351f0878922cc8a664006afd8ef9d9718b8f706bced1cb1c0ae4ccf05bb46c0d4f84accb7e58c0843175be10a86e58d58', '2019-11-11', 999, 'Œ$Í½`m¾Xz¬¦[0……Ä'),
(2, 421, 'sdflkj', 'ssfdf', 'sdflsfd', 'sdf@sdf.com', '::1', 'lkjsdf', 'sdfs', '098', 'f294e35b37e58ecbe8773c2b29f779a0db008dc35c6c0aec9941a070bcb98ab75a6f999c16076accd6429dffb8fc01fb91fc1b774dab774bedcdb1efa87b4d35', '2019-11-11', 999, 'Y&7rRRJpK=xwC8rP$If1'),
(3, 421, 'sdflkj', 'ssfdf', 'sdflsfd', 'sdf@sdf.com', '::1', 'lkjsdf', 'sdfs', '098', '83ed9e57440c3a197c0db31550831d08793e6e6599c289595e05d0b30bce9d6f237b2a5c304373a77cbee5e4c1cdffe1ca40d0f2ec40ff7adb60081aef9e07d5', '2019-11-11', 999, '%W6ob8&ez]7Z&Sv7@[*m'),
(4, 421, 'sdflkj', 'ssfdf', 'sdflsfd', 'sdf@sdf.com', '::1', 'lkjsdf', 'sdfs', '098', '1b9fd3e5841da7b1d9a7cf523d567034cb357e35fc4bf7b0630cbba2e7c35cf9ac296d47ae6e93446d331a31e557c69e9049fbe8b4febdb1b4456e239c4b2dd5', '2019-11-11', 999, 'nVzEr%K5w0S&qVIkk2vM'),
(5, 421, 'sdflkj', 'ssfdf', 'sdflsfd', 'sdf@sdf.com', '::1', 'lkjsdf', 'sdfs', '098', 'e6a482afe28ea1924f83d8b3d9656e783c49005252471678ce5dc1e7e6a1f2224a253d3be72665a6623f5c29f7ecb8cb078022ca1637d89d95cbdf832a8bac0b', '2019-11-11', 999, '@WcoZQ6k/Te35Tlx]v!&'),
(6, 421, 'sdflkj', 'ssfdf', 'sdflsfd', 'sdf@sdf.com', '::1', 'lkjsdf', 'sdfs', '098', '2bb4aa4dc9330495a9a721dd650f2cf0c6cd3fcc20cb9f58e4961051d51e6e124bec7f2a229ed3c11b66a39cfc52f53e7ea5da9b564c4880410fc9570331462b', '2019-11-11', 999, 'Hf-^7E)Xn&nIcnI1B&D8'),
(7, 421, 'sdflkj', 'ssfdf', 'sdflsfd', 'sdf@sdf.com', '::1', 'lkjsdf', '', '098', '73f791a0c0a5987ef3087e3847e8f154bb65b1459ad133d216ee49547043f2d3507863034e1f74d17ab01aebe0a6bfa2f043ca6196573f49bc96b617e38ca374', '2019-11-11', 999, 'L<Ug2wbiu)}^m+UAh[=<'),
(8, 200, 'somrat', 'sldfjk', 'chair', 'somrat@gmail.com', '::1', 'nothing', 'Rangpur', '9345345', '71bf05103ce8b9837be0fd4b5a0d1f148ffa80f470da728591dfc742afb64680049a1f01ac1ed37b6ff60d40dc83ff5c63001bf31262f37d2f2d80ed60f8c22c', '2019-11-21', 4535, '}*8cw3%Z.81lGx9tRgDx'),
(9, 200, 'somrat', 'sldfjk', 'chair', 'somrat@gmail.com', '::1', 'nothing', 'Rangpur', '9345345', '3785440f6a79ddd21911bd7dd4d8a014b28b8184c9ac8383ac6809943277198a1bb10bcc22fab6fb26972adfa619d21b6db6e5224e0678fd54a348c77e7a4e34', '2019-11-21', 4535, '[Irffo{2nZ7HS{lT5fvq'),
(10, 200, 'somrat', 'sldfjk', 'chair', 'somrat@gmail.com', '::1', 'nothing', 'Rangpur', '9345345', '944e23bb23b05efa1b4cf970cb727fba6e41ace0860d7658a3895703fd444cef83335880a182da4f2901dd878c3112d00ca9bcbc25909d4c50f7d9485d0a35d0', '2019-11-21', 4535, 'clzlPK$$iw)T3BXfbHxG'),
(11, 200, 'somrat', 'sldfjk', 'chair', 'somrat@gmail.com', '::1', 'nothing', 'Rangpur', '9345345', '562748829df1d12fcecf8356b52254044a52a4245913c319aedad5f54379ae6f17467c4f24059911e39584806dc4ef0cdd40c0234d070a9fda3a509a840bd266', '2019-11-21', 4535, 'w>QkW3q-!l7R$r4d^r38'),
(12, 200, 'somrat', 'sldfjk', 'chair', 'somrat@gmail.com', '::1', 'nothing', 'Rangpur', '9345345', 'f9a929c802d8091329d85ae46bcb577137674093f54ce961cd350464c8e08e94ece16ee076aac4726237a7c585acd19530815480788b49cc8ed4734af0cafd88', '2019-11-21', 4535, '4#Tiwv9-/U5$^&7Kg9($'),
(13, 200, 'somrat', 'sldfjk', 'chair', 'somrat@gmail.com', '::1', 'nothing', 'Rangpur', '9345345', 'ba967477145d6e326c704da12c65749965bceb2fac6e792fb325604bd7b8b49a8be2333726b448a8f99f0fbb1262287985b70b59ad595dbc9b9980879c5eb850', '2019-11-21', 4535, '/HKbpqjjj*t#3G.%wNyt'),
(14, 200, 'somrat', 'sldfjk', 'chair', 'somrat@gmail.com', '::1', 'nothing', 'Rangpur', '9345345', '61c5675c82ca3861c22c46713c0da5ca688c54f6e7437b52932cd68deb33327713c090406a8b945c4a2ca7acd5d1f529ea95fd56dc450b841caebd63f1e5b12b', '2019-11-21', 4535, 'al!P}CUAKlQ^uDn@cb><'),
(15, 200, 'somrat', 'sldfjk', 'chair', 'somrat@gmail.com', '::1', 'nothing', 'Rangpur', '9345345', '30243a536e5eba2bbc1965b1716717c113ae206d1b4f3aa75c323a93ae8251da210b4963469f45a40c0366853f7b5e2401f29626e0e10f2a5914578a4a570881', '2019-11-21', 4535, '{%%+wD]qRSk)$YZh@$@X'),
(16, 200, 'somrat', 'sldfjk', 'chair', 'somrat@gmail.com', '::1', 'nothing', 'Rangpur', '9345345', '4b0b1336675ce14b88952c5f82cf167cc8eebd6066d8a360eeac66b5fccc5755e9f6b6717ffac227c2234bbc30c87d43cecdf5693dbda5fbfa315b398b6ca949', '2019-11-21', 4535, 'gomJ{.%7Y]EdjR}Pg2EP'),
(17, 200, 'somrat', 'sldfjk', 'chair', 'somrat@gmail.com', '::1', 'nothing', 'Rangpur', '9345345', 'ad2103a6066fa843fe08ed07c40b0a25d76c3883bf81e5a87fcf3287257ebcdc4fb51d1581656fcfbfe8b1ed4e229426e115ee44f6055e3245905676e6edb435', '2019-11-21', 4535, '1y}b.HSSN/xgDRJ6k-4R'),
(18, 100, 'sohag', 'slkjdf', 'bed', 'jabir@gmail.com', '::1', 'sdflkj', 'kushtia', '8778', 'e3d95f71a777dc4da7867d7893a296dea0993a8caa4501dbf4991531f5f166731ce31095eb6b21d4930a279628a1ae7b8fe57e8a293f82e7dcf017423717c741', '2019-11-22', 6786876, 'n.cE^OI5P-29q8ta58S#'),
(19, 500, 'somrat', 'fsldkfj', 'optifib, bag', 'somrat@gmail.com', 'localhost', 'this is vary tidous', 'kurigram', '87756', 'f5f424cba282142dbeaaea733eb0aa4987405d2dedc0e6a792d43434325ca6b4d8aa88e996670fa208b6fbdd08462667d53dc8d0d0dc210eca94e83242b5d420', '2019-11-22', 9675, '(j3{ha46O]y-5}8[80f8'),
(20, 123456789, 'somrat', 'fsldkfj', 'optifib, bag', 'somrat@gmail.com', 'localhost', 'this is vary tidous', 'kurigram', '87756', '3391f4c125cac8ba1a72ec10ef732410e275085744d2235ab3593ab7b670c0a03f66833016b373bb03a7dd42e7b94f2d46c73d6bafc3517534e077539996ec4c', '2019-11-22', 9675, 'AwefqnfBCr{wI.{5F{0h'),
(21, 123456789, 'somrat', 'fsldkfj', 'optifib, bag', 'somrat@gmail.com', 'localhost', 'this is vary tidous', 'kurigram', '87756', '54d9a9400bff01bd72fba0807f00f9a7b3d38701256e26e67acdcaf728836196e608c2d86748aa5fe513434a56216188790971dc14abca5ecd91aded8fcf7409', '2019-11-22', 9675, 'SZ(3cprviZUVe{}H6N!o'),
(22, 97, 'akkas', 'sldkfj', 'sd', 'sdf@sdf.com', 'localhost', 'skdfh', 'hello', '98798', '075c4cffa8f8fcd3a0e7649e70da4aec3538cfebf3e89d48383b74667c90d86bf61f8a150ff63fe6d1410b9337eb7b479b03ac7cb71589b27932a65487d574f4', '2019-11-22', 878, 'f[-ZU15LFHYK1NX/E@i='),
(23, 97, 'akkas', 'sldkfj', 'sd', 'sdf@sdf.com', 'localhost', 'skdfh', 'hello', '98798', '0733b5ffd92e98f43606c3a5748102448372681ce3348815e63a4e2014fb1005cfaa0264986d55b9d6047d56a32ad304bc0f7fcdb5175510c8c997c614d55475', '2019-11-22', 878, '/XvTwjw(w>sZJ-Sgq>GB'),
(24, 97, 'akkas', 'sldkfj', 'sd', 'sdf@sdf.com', 'localhost', 'skdfh', 'hello', '98798', 'a6c434fa609ed2a6c820a20621181dafb17fcdef5d739ebb64069bfd74a1bbe4d3fed4a56159cc4e797a96bd1b427d8c696577fc231cca86dd57030f43d681fe', '2019-11-22', 878, 'qWgIn8CpDxyqEgu!&NH7'),
(25, 97, 'akkas', 'sldkfj', 'sd', 'sdf@sdf.com', 'localhost', 'skdfh', 'hello', '98798', '504fd2e61bb1ee8d27127e68a9e48449ed51470605ab2343807bd8625db5fa75398b3eb7c56b920c8e79433299f2b3942128944865efdd1858cc557087ff2285', '2019-11-22', 878, '^7HTB.f>KtIc2]qfV5fL'),
(26, 97, 'akkas', 'sldkfj', 'sd', 'sdf@sdf.com', 'localhost', 'skdfh', 'hello', '98798', 'e9867579ea4a13f62ba2ffba68d1b41f556ea43e20c6144a5a0ce8be22e16254a134b75e31275fa7cfbb7e79972042b689fb2c82f2d932c7e6efd127b1eb141d', '2019-11-22', 878, '4}d@>{oC)x!.T}qf#1u5'),
(27, 97, 'akkas', 'sldkfj', 'sd', 'sdf@sdf.com', 'localhost', 'skdfh', 'hello', '98798', '3e3a3d656dbf3e63c5b4fe85cc59c91aa92d3c92abe29890d302a5277cccef7516fb1726f07d482f321d2b5c4e3b8ac4578f4470457c0b9f5b33e3c1dd7148bf', '2019-11-22', 878, '8hI8!=j7a8#q.Awj4y54'),
(28, 100, 'sohag', 'sdf', 'sdfs', 'sdf@sdf.com', 'localhost', 'sdfs', 'ssdf', '3453', 'c87e8dbe6e8252bccd5b6986cee6cd78b1ddc647f8ec271fe2c9b8dce6c48285ceb642dd8848b4e81510cc0fdb9549eb6630dcfbed0a2be246c0ec7b0c875d86', '2019-11-22', 4353, 'g6D-zpR-Idkr!3p+KYrM'),
(29, 100, 'sohag', 'sdf', 'sdfs', 'sdf@sdf.com', 'localhost', 'sdfs', 'ssdf', '3453', 'b5d9e931749be4be4b7471b0cddb2492b8e527f9df82aea87ae5f5d2429c89d6a24eca4e0193a312d65cc7ef73232db81d8d6b28eb644e41406458de67621735', '2019-11-22', 4353, 'Ag*g4MZ>LL{FoxVTkcUK'),
(30, 100, 'sohag', 'sdf', 'sdfs', 'sdf@sdf.com', 'localhost', 'sdfs', 'ssdf', '3453', 'b5b3a2305ea7dd76da7f358b13bdafc6b04e9b7d50241d536397dd5cfc38fb52bdacdc65ff99a26cc0b6e9387b5dd141de142fdd0e3791e35a3d087bd93269c0', '2019-11-22', 4350, 'HM4XVtXBgm3Tl-kGQQjG'),
(31, 100, 'sohag', 'sdf', 'sdfs', 'sdf@sdf.com', 'localhost', 'sdfs', 'ssdf', '3453', '1b029f2f1d0ccdb5afaffb451f6580eb6fc1c8a063ebb0b1128d2e5977e935fb90a814a1255e420b6bb52693efbf4945e2bf29be39d11de6237f0591dedfe168', '2019-11-22', 43, '3c/&vOT0l0C8fC^OdUKc'),
(32, 100, 'sohag', 'sdf', 'sdfs', 'sdf@sdf.com', 'localhost', 'sdfs', 'ssdf', '3453', '078894c3c8f8eaf84556d14c9bd878a759ce6643d7133e6c4cc101b02b5fa22e12ee461cf627e60dda6b185f610407931e9c569e7c82eede3a8305c228d7766f', '2019-11-22', 43, 'JH5gHi.E%HTibt>p3Rwa'),
(33, 100, 'sohag', 'sdf', 'sdfs', 'sdf@sdf.com', 'localhost', 'sdfs', 'ssdf', '3453', '7ec1cfdf74696b4e2be14767e89350f196882a099f67c7c4422ff50e763295e845c1e630b0980205fd151341969b6384d2a408c4ca63cd474170538a3d6710c8', '2019-11-22', 100, '9)VUxlKNaumO%(zaUv=t'),
(34, 100, 'sohag', 'sdf', 'sdfs', 'sdf@sdf.com', 'localhost', 'sdfs', 'ssdf', '3453', '9662592c555ccf309f809eda5319c090b499bf6e3e4a9084cfd9c67b141ea7692c0671273e3eab1cc4369745bfb1eaa769b074aa89c7ada04000c944bd7b2ac9', '2019-11-22', 100, 'T0Bwb!sFSB=].3*k/A<>'),
(35, 100, 'sohag', 'sdf', 'sdfs', 'sdf@sdf.com', 'localhost', 'sdfs', 'ssdf', '3453', 'cb6da0eb48514d9fa1265aa511df0170e7f86487246f6fbd74bdcd4f816e8316515ebfd547234dd78d4164bb818ffaaf4e2789ab3307f569ab077ee130115996', '2019-11-22', 200, '0ca4I2QNOTQ#h2ch[6t%'),
(36, 100, 'sohag', 'sdf', 'sdfs', 'sdf@sdf.com', 'localhost', 'sdfs', 'ssdf', '3453', 'e5aad6d5d5b3ad0f2a7f10cf816c7e4e0562c1070607f8c3deb2644cf1c3088d53bb6324190ba3f9c3f0957620fe1d781c9618f380f28c7649d1ad9b02f09660', '2019-11-22', 200, 'ncrbpV#J2[iv8s6d3]l$'),
(37, 100, 'sohag', 'sdf', 'sdfs', 'sdf@sdf.com', 'localhost', 'sdfs', 'ssdf', '3453', '4fc08ee4f43f6fc43f5736505e07a906d728efb17b818291909e0af34c6f51dbb35f61a593d5cd2568b37c0ab9ba04f8fd7f891f70d75ccdf3d54c324ab0a7b4', '2019-11-22', 200, 'as[OH-BWt5AEa[bynx&8'),
(38, 100, 'somrat', 'sfsf', 'sdf', 'sohag@gmail.com', 'localhost', 'fsdflj', 'sdf', '35345', '47d8a16f415a93181df62e2465a4069577f1b6a24977ff2c6f1e1fca4a2689f56b3d7c0e7650f52e57ad4317e5cf4667e55a14a9925bfd7b830b27c595a6bc35', '2019-11-22', 1111, '2(1$^j5*e}j2{NS^>&%='),
(39, 100, 'somrat', 'sfsf', 'sdf', 'sohag@gmail.com', 'localhost', 'fsdflj', 'sdf', '35345', '7d41665ec2454d3209c517001e308a4852b3cfc37b723400eb9aef7c7c38b364e56b8c125b482ccb413dcacc00d311f698344889eca8c6a852a7a8bf926ff988', '2019-11-22', 1111, 'u11e=@>xhU4sr(G}H/VW'),
(40, 100, 'somrat', 'sfsf', 'sdf', 'sohag@gmail.com', 'localhost', 'fsdflj', 'sdf', '35345', '60155ecd6cb8f2d3c4fc5513c491576616e1bb1853692333c51b1c196f0519253e97dc19f5985d98f2e1241109a18330380664ae624a4d037beaa4d1a12254ab', '2019-11-22', 1111, '9bGPY5e%k0Upr7d(hjO}'),
(41, 100, 'somrat', 'sfsf', 'sdf', 'sohag@gmail.com', 'localhost', 'fsdflj', 'sdf', '35345', '1174961afd6176247e270967d5be78daa9054f096396b8a9783637843a70125a79b1412b7d23d5f30a3be2e7446e525c870b9c571871e478ffb8f864d187c5a6', '2019-11-22', 1111, ')7M]K-(!fN<gq(g/Ov>Q'),
(42, 1234, 'sfsd', 'wefsdf', 'sdfs', 'sdf@sdf.com', 'localhost', 'sdfljkfs', 'sdflk', '58347', '5d2fc2ae36d4399e1e310859f7eeaaf77a949ced59ef37499701a0fbaeff52e52cb3c03204d1cfb794359203fed41b3bbe40a378783578bac0bab5556212fb9e', '2019-11-22', 38, 'XL=eTM.i)6#]Do1W0u(}'),
(43, 1234, 'sfsd', 'wefsdf', 'sdfs', 'sdf@sdf.com', 'localhost', 'sdfljkfs', 'sdflk', '58347', '5d1907ae91b51e78aa137f7757fe3e4c8be126ba620b3072e9ea670f38a5e31448cabaff9a35282ac6f1a36d13eb9fac91c2edb8f420e480da6fe65aa969eac8', '2019-11-22', 38, 'SLm]OoBbopulvZG&//iq'),
(44, 1234, 'sfsd', 'wefsdf', 'sdfs', 'sdf@sdf.com', 'localhost', 'sdfljkfs', 'sdflk', '58347', '948d490907830017939b11b8a905dd07fa7df52d97bc10315286ceeef50143a36ac972cea972c33b93c2d5f79870aed52c82f0d678996ca2b259f7ab6a8ad2cc', '2019-11-22', 12321, '!%%4#x8y4rIj.hP*nk]G'),
(45, 1234, 'sfsd', 'wefsdf', 'sdfs', 'sdf@sdf.com', 'localhost', 'sdfljkfs', 'sdflk', '58347', '4f1e59eccd7a590c3c596db4a00e4b3cba1e5e1c1d26b5e8848c044d4307a42de9fd21261fae13a2fd7e55857e95a7d92e920c78e8d353fbb538ea039f6f1ab8', '2019-11-22', 11, 'POjqRbEC{kN&=bTD}4Lo'),
(46, 500, 'hasib', 'sfdlfk', 'table', 'hasib@gmail.com', 'localhost', 'no', 'dinajpur', '98787', 'fa365614980f95fe5faf91d22523ed4453a2bdd6a3c93438957aa850d3592d6dfddab13d838738ec9e701bdab35d52c3d39ac9ebce84c49c9986fbc13b526333', '2019-11-23', 878, 'xv%J^e04{UDc8ZV[jeI7'),
(47, 2000, 'sohag', 'hello', 'no item', 'hello@gmail.com', 'localhost', 'noting', 'dhaka', '9758', 'edc9392d61b78a1c743d802db3f87da6749124cc4300604352a937750df3439aa4a651f4b6582f64fcdef5c563082e8fdc5405c97a7d17aef03db0780ccdcee3', '2019-12-07', 987876, 'w<5nJ<6*8#SB{OGKRGQo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
