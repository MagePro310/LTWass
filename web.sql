

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web`
--
CREATE DATABASE IF NOT EXISTS `web` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `web`;
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `init` varchar(255) DEFAULT '0',
  `createAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`username`, `password`, `init`, `createAt`, `updateAt`) VALUES
('vdung', '$2y$10$ng45/YpuZVsHo5CnlEYazOsnCSpgvkJ552vFBKSwN4yB147/FAH0u', '0', '2023-08-16 19:52:02', '2023-08-16 19:52:02'),
('trieu', '$2y$10$ng45/YpuZVsHo5CnlEYazOsnCSpgvkJ552vFBKSwN4yB147/FAH0u', '0', '2023-08-16 19:52:02', '2023-08-16 19:52:02'),
('liem', '$2y$10$ng45/YpuZVsHo5CnlEYazOsnCSpgvkJ552vFBKSwN4yB147/FAH0u', '0', '2023-08-16 19:52:02', '2023-08-16 19:52:02'),
('nguyen', '$2y$10$ng45/YpuZVsHo5CnlEYazOsnCSpgvkJ552vFBKSwN4yB147/FAH0u', '0', '2023-08-16 19:52:02', '2023-08-16 19:52:02'),
('thinh', '$2y$10$ng45/YpuZVsHo5CnlEYazOsnCSpgvkJ552vFBKSwN4yB147/FAH0u', '0', '2023-08-16 19:52:02', '2023-08-16 19:52:02');

-- --------------------------------------------------------


-- --------------------------------------------------------

CREATE TABLE `news` (
  `id` int(11) AUTO_INCREMENT,
  `status` tinyint(1) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
	PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `news` ( `status`, `date`, `description`, `content`, `title`) VALUES
(1, 1, '2023-06-12 11:00:33', 'Disney x Vans đang tạo nên một đại náo lớn trong năm kỷ niệm 100\'s năm thành lập Disney. Không giống như những bộ phim trước đây với nhân vật \"phản diện\", lần này Disney x Vans chọn lựa những nhân vật kinh điển được người hâm mộ yêu thích.', 'Các thiết kế giày Vans dựa trên ba nhân vật nổi tiếng của Disney: Mickey, Minnie, và Tigger, được lồng ghép tinh tế vào các dòng giày như Era, Old Skool, và Sk8-Hi. Sự kết hợp giữa Disney và Vans có lịch sử dài, bắt đầu từ những năm 90 và đặc biệt hợp tác mạnh mẽ từ năm 2013. BST lần này được thúc đẩy bởi cả hai thương hiệu, đề cao sự sáng tạo để thể hiện cái tôi cá nhân của người mang.\r\nCác đôi giày sử dụng những nhân vật phản diện của Disney để tạo ra những sản phẩm đa dạng cho người lớn và trẻ em, với các thiết kế ấn tượng trên dòng giày Era, Old Skool, và Sk8-Hi. Điểm đặc biệt của BST là sự tái hiện của sáu nhân vật lớn của Disney - Mickey, Minnie, Vịt Donald, Vịt Daisy, Goofy, và Pluto trên chiếc giày \"Authentic\" \r\nvới thiết kế đặc biệt ở từng góc độ. Phiên bản trắng đen cổ điển và phiên bản màu sắc rực rỡ đều hứa hẹn mang đến cho người mặc những trải nghiệm độc đáo và gần gũi với tuổi thơ. BST không chỉ giới hạn ở những nhân vật quen thuộc mà còn mang đến sự độc đáo với việc lồng ghép Elsa, Tiana, Stitch, và Nữ hoàng xấu xa trong giày Disney 100 Scrapbook Multi. \r\nMỗi đôi giày không chỉ là sản phẩm, mà còn là biểu tượng kết nối thế hệ, nơi niềm vui và sự ngây thơ vượt qua thời gian. Như một phần của dự án lớn chào mừng 100 năm thành lập Disney, BST giới hạn với 6 mẫu sản phẩm tiêu biểu đã tạo nên một buổi tiệc giày quy mô lớn. Việc mang về những \"nhân vật yêu thích\" từ Disney thông qua BST này là như một phép thuật từ thế giới cổ tích, và không kỳ diệu nào lớn hơn nếu bạn bỏ lỡ cơ hội này.', 'DISNEY X VANS 2023 – BST Giày Siêu Sao Chính Hãng Chính Thức Đổ Bộ Việt Nam Đánh Dấu 100 Năm Thành Lập DISNEY'),
(2, 1, '2023-12-04 10:00:29', 'Kenzo và Giám đốc Nghệ thuật Nigo đã tuyên bố sự hợp tác với nghệ sĩ đồ họa tài năng Verdy, người đã nổi tiếng với vai trò giám đốc nghệ thuật cho tour diễn Born Pink và đồ họa cho show Xuân-Hè 2024.', 'Verdy, người bạn thân của Nigo, được yêu mến vì sự kết hợp độc đáo giữa hơi thở đường phố Nhật Bản và phong cách phương Tây, kết hợp hip hop và manga.\r\nSự kết hợp này mang lại không khí Đông-Tây đặc trưng của Kenzo, với bảng màu nền sáng bao gồm trắng sữa, đỏ cam, xanh hải quân và đen. Dưới sự chỉ đạo của Nigo và Verdy, màu sắc được kết hợp sáng tạo, làm mới loạt trang phục thiết yếu và tạo ra thiết kế túi tote mới với logo Kenzo Paris của Verdy.\r\nHợp tác giữa Kenzo và Verdy không chỉ là cuộc đối thoại sáng tạo giữa Nigo và Verdy, mà còn là sự kết nối giữa giá trị di sản vượt thời gian của Kenzo và cái nhìn hiện đại, táo bạo của Verdy. BST đã chính thức ra mắt trên thị trường toàn cầu và tại Việt Nam, sản phẩm Kenzo được phân phối chính hãng bởi Công ty Quốc tế Tam Sơn.', 'KENZO Hợp Tác Cùng VERDY – Giám Đốc Nghệ Thuật World Tour BLACKPINK Trong BST Mới'),
(3, 1, '2023-11-29 10:13:46', 'Nếu bạn đã bỏ lỡ cơ hội săn vé xem trực tiếp chuyến lưu diễn Renaissance thì Beyoncé đã mang siêu phẩm này lên màn ảnh. Bên cạnh những bản hit lừng danh của “Queen B”, “Renaissance Tour” còn tập trung vào trang phục sequin màu bạc và thời trang khiêu vũ lấp lánh lấy cảm hứng từ âm nhạc Disco. ', 'Cuối tuần qua ở Beverly Hills, Nhà hát Samuel Goldwyn đã tổ chức buổi ra mắt chính thức cho bộ phim đang được người hâm mộ mong đợi. Dàn sao hạng A từ Lizzo, Kris Jenner đến Winnie Harlow hay Halle Bailey cũng xuất hiện đầy lộng lẫy để chúc mừng ca sĩ Beyoncé. Beyoncé, ngôi sao của bữa tiệc, diện một chiếc váy cúp ngực màu bạc của Versace phối cùng đôi găng tay opera cùng tông. Chiếc váy lấp lánh được thiết kế tỉ mỉ để tôn lên đường cong cơ thể của nữ ca sĩ. Vẻ đẹp của Beyoncé được nhấn nhá bằng phấn mắt màu bạc và mái tóc dài đến thắt lưng. Thậm chí, NTK Donatella Versace đã đăng tải trên Instagram để dành lời khen ngợi và bày tỏ sự phấn khích đối với bộ phim: “Beyoncé, bạn là tầm nhìn của Versace. Bạn là duy nhất. Tôi đang rất nóng lòng xem Renaissance Tour: A Film”. Sự kiện của siêu sao hàng đầu không thể thiếu danh sách những khách mời hạng A với trang phục ấn tượng sẵn sàng bước lên “thảm bạc”. Kelly Rowland chọn một chiếc váy màu bạc với phần cúp ngực hình nón từ BST Jean Paul Gaultier Thu-Đông 2023 do Julien Dossena thiết kế cho khách mời. Trong khi đó, Michelle Williams mặc thiết kế của Bishme Cromartie bao gồm một chiếc áo choàng ngoại cỡ và và tà áo bằng vải tweed. Ca sĩ Janelle Monáe chọn trang phục chấm bi của Annakiki, Lori Harvey diện chiếc váy ngắn Mugler màu đen cổ điển, trong khi Chloe Bailey mặc chiếc váy LaQuan Smith màu tím nhạt, điểm thêm chút màu sắc cho bữa tiệc đậm màu matellic.', 'BEYONCÉ Diện Váy “Phủ Bạc”, Dàn Sao Hạng A Lộng Lẫy Tại Buổi Ra Mắt “RENAISSANCE TOUR: A FILM”'),
(4, 1, '2023-06-12 10:06:32', 'Love thể hiện tầm nhìn thiết kế của Cartier. Thiết kế thể hiện sự hoàn hảo của những đường nét thanh thoát và tỷ lệ chính xác: một chiếc vòng tay hình bầu dục được tạo thành từ hai vòng cung cứng được vít lại với nhau.Mọi thứ nằm ở thiết kế, đường nét cứng rắn đặc trưng của vòng tay Love, trong đó hai phần có hình elip và phần trên phẳng. Cảm giác thẳng được nhấn mạnh hơn nữa nhờ sự căn chỉnh của các vít, đi theo các đường song song của dây đeo.', 'Với vòng tay Love, Cartier đã đưa ra quyết định cấp tiến là để lộ các vít chức năng hoặc trang trí – được gắn chặt bằng tuốc nơ vít đi kèm với vòng. Đây là trực giác đầy phong cách của một người thợ kim hoàn, người nhìn thấy vẻ đẹp ở bất cứ đâu và dám thể hiện những gì mà người khác thường muốn che giấu. Trong số tất cả các thiết kế của Cartier, những chiếc đinh vít là thiết kế có độ sáng chói nhất và có thể nhận ra ngay lập tức. Chúng giống với chiếc đồng hồ Santos de Cartier, thiết kế đã có sự hiện diện của đinh vít trên viền từ năm 1904. Chúng tạo điểm nhấn cho chiếc vòng tay ngay từ cái nhìn đầu tiên và tăng sự quyến rũ song tính của nó. Hình dáng của lắc tay Love cũng phải thoải mái, hài hòa với chuyển động. Độ chính xác về tỷ lệ của nó có thể được nhìn thấy qua cách mà chiếc lắc tay này được đeo và cách nó ôm sát cổ tay một cách tự nhiên.\r\nĐược tạo ra ở New York vào năm 1969 bởi nhà thiết kế Cartier Aldo Cipullo, chiếc vòng tay Love là một biểu tượng của thiết kế trang sức. Nó đã dự đoán trước một món đồ unisex đầy tính biểu tượng – tròn 30 năm trước – là đồ trang sức của những năm 2000.\r\nVượt trên cả thiết kế, vòng tay Love là một món đồ mang tính điểm nhấn, một hiện thân vật chất của cảm xúc. Tình yêu không còn tự do nữa mà gắn kết những người yêu nhau lại thông qua một vật đính ước bằng vàng đeo trên cổ tay và được đóng lại bằng một chiếc tuốc nơ vít. Chiếc vòng tay này giống như một chiếc còng tay quý giá vì cần có hai người để cố định các con vít. Bằng cách đeo nó, mỗi cặp đôi có thể tuyên bố tình yêu của họ dành cho nhau cho mọi người. Được Cartier ra mắt vào năm 2007 như một thử thách, câu hỏi Bạn sẽ đi bao xa vì Tình yêu? tập trung vào sự kết nối cảm xúc mãnh liệt được tượng trưng một cách xuất sắc bởi chiếc vòng tay Love.\r\n', 'Vòng Tay CARTIER LOVE – Một Hiện Thân Của Cảm Xúc Mãnh Liệt'),
(5, 1, '2023-11-23 11:35:25', 'Kate Middleton đã tham dự bữa tiệc trang trọng tại Cung điện Buckingham để vinh danh Tổng thống Hàn Quốc Yoon Suk Yeol và Đệ nhất phu nhân Kim Keon Hee trong chuyến thăm Vương quốc Anh vừa rồi.Món đồ trang sức công nương xứ Wales mang trong buổi tiệc tiếp đón Tổng thống Hàn Quốc vừa qua đã thu hút mọi sự chú ý. Kate Middleton đeo chiếc vương miện Strathmore Rose Tiara mà hầu hết các thế hệ người theo dõi gia đình hoàng gia chưa từng thấy trước đây.', 'Chiếc vương miện này là món quà cưới do cha của Thái hậu Elizabeth, Lord Strathmore, trao tặng cho Thái hậu trước khi bà kết hôn với Công tước xứ York vào năm 1923. Món trang sức được thiết kế như một vòng hoa hồng dại. Chiếc vương miện kim cương ban đầu được mua từ Catchpole & Williams – thợ kim hoàn tại London. Chiếc vương miện có thể được đeo theo nhiều cách: trên trán, đặt trên tóc hoặc tháo rời để tạo thành năm chiếc trâm cài riêng lẻ.\r\nSau cái chết của mẹ vào năm 2022, Nữ hoàng Elizabeth II được truyền lại chiếc vương miện này. Tuy nhiên, nó vẫn nằm trong kho lưu trữ hoàng gia trong nhiều thập kỷ. Theo báo cáo, món trang sức này đã không được bất kỳ người phụ nữ hoàng gia nào đeo kể từ những năm 1930. Có tin đồn rằng có lẽ nó đã quá hư hỏng hoặc mỏng manh để có thể tái sử dụng. Tuy nhiên, giờ đây, chiếc vương miện kim cương quý hiếm đã được Công nương xứ Wales “tái sinh”.\r\nCùng với chiếc vương miện Strathmore Rose Tiara, Kate mặc váy trắng của Jenny Packham. Công nương cũng đeo các huân chương được hoàng gia trao tặng những năm qua như một cách thể hiện sự trang trọng nhất của các thành viên hoàng gia khi đón tiếp nguyên thủ nước ngoài. Kate hoàn thiện vẻ ngoài của mình bằng một đôi găng tay opera màu trắng.\r\nTrước đó, tại Lễ diễu hành Vệ binh ở London, Kate Middleton đã cùng Vua Charles và Vương hậu Camilla tham dự nghi lễ chào đón. Công nương xứ Wales nổi bật trong trang phục “all-red” với chiếc mũ rộng vành được đặt làm riêng của Jane Taylor và áo khoác của Catherine Walker & Co. Công nương xứ Wales đã đeo đôi bông tai hình giọt nước bằng đá sapphire và kim cương, món trang sức từng thuộc về Công nương Diana, người mẹ chồng quá cố của cô.', 'KATE MIDDLETON Và Chiếc Vương Miện “Bị Lãng Quên” Trong Bữa Tiệc Tại Cung Điện BUCKINGHAM'),
(6, 1, '2023-11-22 16:52:24', 'Sáng nay 22/11 (theo giờ Việt Nam), BLACKPINK thu hút truyền thông khi góp mặt trong buổi tiệc cấp nhà nước nhân dịp Tổng thống Hàn Quốc thăm chính thức nước Anh. Buổi quốc yến diễn ra tại Cung điện Buckingham (London) do Vua Charles III chủ trì.', 'Được biết, BLACKPINK là nhóm nhạc Hàn Quốc duy nhất nằm trong 170 khách mời tham dự bữa tiệc chiêu đãi cấp nhà nước tại Cung điện của Hoàng gia Anh. Đặc biệt, BLACKPINK còn được nhắc đến trong bài phát biểu của Vua Charles III khi ông khen ngợi họ vì đã sử dụng danh tiếng của mình để bảo vệ các mối quan tâm về môi trường.\r\n“Tôi hoan nghênh Jennie, Jisoo, Lisa và Rosé hay còn được gọi chung là BLACKPINK, những người mang trọng trách đưa thông điệp về môi trường bền vững đến khán giả toàn cầu với tư cách là Đại sứ quan hệ công chúng của Hội nghị Biến đổi Khí hậu lần thứ 26 (COP26) và gần đây họ là Đại sứ danh dự cho các Mục tiêu Phát triển Bền vững của Liên Hợp Quốc. Tôi dành sự ngưỡng mộ với cách mà họ ưu tiên những vấn đề quan trọng cấp thiết, trong khi trở thành những ngôi sao toàn cầu” – Vua Charles III phát biểu.\r\nCả bốn thành viên nhóm nhạc nữ xuất hiện trong trang phục dạ tiệc hoàng gia, thu hút nhiều lời khen từ cộng đồng mạng. Jisoo diện váy đen tay bồng từ BST Dior Cruise 2024 và giày Mlle Dior thắt nơ, kèm túi xách CD Signature chưa ra mắt. Rosé diện đầm đen ôm sát cơ thể, kết hợp với vòng tay Cluster Tennis Bracelet của Tiffany&Co. và giày Zoe Pumps In Patent Leather của Saint Laurent. Jennie chọn váy trắng trễ vai dáng dài và túi xách nơ sequin. Lisa diện chiếc đầm xanh ngọc đính sequin tỉ mỉ từ BST Xuân – Hè 2024 của Georges Hobeika, thương hiệu nổi tiếng của Li-băng. Dù có phần \"lạc quẻ\", Lisa vẫn toát lên vẻ quý phái và sang trọng.\r\nSự kiện tham dự lần này đã ghi thêm một con dấu vào bảng vàng thành tích số lần tham dự hội nghị cấp cao của 4 nàng BLACKPINK, góp phần khẳng định sức ảnh hưởng tích cực của nhóm nhạc tới các vấn đề toàn cầu.', 'BLACKPINK Đẹp Lộng Lẫy Tựa Công Chúa Tham Dự Quốc Yến Tại Cung Điện BUCKINGHAM'),
(7, 1, '2023-11-18 18:38:56', 'Tại sự kiện nâng cao nhận thức về sức khỏe tinh thần do đệ nhất phu nhân Jill Biden tổ chức, Rosé (BLACKPINK) đại diện cho hội thần tượng K-pop nói riêng và tiếng nói của người dân Hàn Quốc nói chung. Nữ ca sĩ xuất hiện đầy lịch thiệp đúng với không khí trang trọng của sự kiện với áo blazer đen, mini skirt và quần tất đen. Cô nàng không quên xách tay chiếc túi Saint Laurent Le 37 mini làm điểm nhấn cho bộ trang phục.', 'Đồng hành cùng Rosé có Đệ nhất phu nhân Hàn Quốc Kim Keon Hee. Bà vẫn giữ vững phong độ “mặc đẹp” thường thấy. Kim Keon Hee thu hút mọi ánh nhìn với chiếc áo blazer xám chiết eo, quần tây đen và khăn quàng cổ cùng tông. Để hoàn thiện trang phục, bà chọn giày cao gót đen thanh lịch và túi Bucket của Jil Sander. \r\nRosé cho biết việc có lượng lớn người theo dõi trên mạng xã hội khiến cô cảm thấy dễ bị tổn thương, đặc biệt là khi bị chỉ trích. “Tôi thực sự cảm thấy như một số việc tôi làm không bao giờ là đủ, và cho dù tôi có làm việc chăm chỉ đến đâu thì vẫn luôn có ai đó có quan điểm riêng của họ hoặc thích kiểm soát câu chuyện.” – Rosé chia sẻ. “Và vì vậy, điều đó đến với tôi như một cảm giác cô đơn. Giống như chúng ta nuôi dưỡng bản thân để có sức khỏe và thể lực tốt hơn, sức khỏe tinh thần chỉ có thể được duy trì đồng thời, nếu không muốn nói là có chủ ý hơn, như sức khỏe thể chất của chúng ta”.\r\nBuổi thảo luận là một phần của chuỗi sự kiện do Jill Biden tổ chức dành cho phu nhân của các nhà lãnh đạo châu Á-Thái Bình Dương tại California. “Những người lớn tuổi như chúng tôi chưa bao giờ nói về sức khỏe tinh thần”. – Bà Jill Biden nói. “Tôi xấu hổ vì điều đó. Nhưng những gì tôi nhận thấy với tư cách là một giáo viên và có các đứa cháu nhỏ hơn ở độ tuổi hai mươi, tôi nghĩ họ cởi mở hơn nhiều khi nói chuyện với nhau. Điều này khiến tôi bớt xấu hổ đi phần nhiều”.', 'ROSÉ (BLACKPINK) Mặc Thanh Lịch Bên Đệ Nhất Phu Nhân HÀN QUỐC Để Phát Biểu Về Sức Khỏe Tinh Thần');


CREATE TABLE `comment` (
  `id` int(11) AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `approved` tinyint(1) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `comment` ( `date`, `approved`, `content`, `news_id`, `user_id`, `parent`) VALUES
('2023-06-23 02:09:04', 1, 'Great !!', 2, 'minh.nguyentuankhmt02@hcmut.edu.vn', NULL),
('2023-06-23 02:09:55', 1, 'Great! Nice writting', 4, 'minh.nguyentuankhmt02@hcmut.edu.vn', NULL),
('2023-07-22 02:11:05', 1, 'That amazing !!', 2, 'minh.nguyentuankhmt02@hcmut.edu.vn', NULL),
('2023-07-21 02:11:19', 1, 'I do not think so', 6, 'van.buile@hcmut.edu.vn', NULL),
('2023-05-22 02:11:57', 1, 'That is entirely thinking', 7, 'van.buile@hcmut.edu.vn', NULL),
('2023-06-23 02:12:24', 1, 'Welcome very much!!', 7, 'minh.nguyentuankhmt02@hcmut.edu.vn', NULL),
('2023-06-23 02:12:24', 1, 'Welcome very much!!', 7, 'minh.nguyentuankhmt02@hcmut.edu.vn', NULL);


--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_price` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_note` varchar(1000) DEFAULT NULL,
  `product_subcategory` varchar(100) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `types` varchar(100) DEFAULT NULL,
  `style` varchar(100) DEFAULT NULL, 
  `color` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--
INSERT INTO `product` (`id`, `product_name`, `image_path`, `product_note`, `product_subcategory`, `product_price`, `types`, `color`, `style`) VALUES
(1, 'Nike ACG Aysén', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/e84d3ed7-c2e2-4f83-88b9-9c60f2df48ae/acg-aysen-day-pack-2XPr4k.png', 'Sustainable Materials', 'Bag ', 100, 'accessory', 'Red', 'CW2288-111'),
(2, 'Nike NV07', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/f60b7f7a-930e-40b3-90f9-b45ded140d1e/nv07-sunglasses-MZFFT1.png', '', 'Sunglasses', 100, 'accessory', 'Yellow', 'CW2288-111'),
(3, 'Nike Club', 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,b_rgb:f5f5f5/9c39ece2-e859-4821-b7fa-1aac80cd67cf/club-unstructured-jdi-cap-Xr7txF.png', 'Sustainable Materials', 'Unstructured JDI Hat', 28, 'accessory', 'Yellow/White', 'CW2288-111'),
(4, 'Brasilia', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/f22d080c-a3f1-4230-8587-7e06c92e4f6f/brasilia-insulated-fuel-pack-Pzq8B9.png', 'Back to School', 'Insulated Fuel Bag', 28, 'accessory', 'Blue/White', 'CW2288-111'),
(5, 'Premier League Academy', 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,b_rgb:f5f5f5/48a07106-0db9-440c-94b6-0b10ea1e78ef/premier-league-academy-soccer-ball-NJR7L1.png', '', 'Soccer Ball', 37, 'accessory', 'White/Pink', 'CW2288-111'),
(6, 'Jordan Championship 8P', 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,b_rgb:f5f5f5/888d46d8-7656-4552-9404-5835aa338c3c/jordan-championship-8p-basketball-LQQVHZ.png', '', 'Basketball', 75, 'accessory', 'Blue/White', 'CW2288-111'),
(7, 'Nike Apex', 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,b_rgb:f5f5f5/5e96eabe-c882-4b94-b875-249416902e4b/apex-tie-dye-bucket-hat-NSq1Kd.png', 'Sustainable Materials', 'Tie Dye Bucket Hat', 36, 'accessory', 'Red', 'CW2288-111'),
(8, 'Nike Dri-FIT Apex', 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,b_rgb:f5f5f5/d87b7c2b-d31a-41aa-a834-2da304feb32f/dri-fit-apex-camo-print-bucket-hat-Cvk6bB.png', '', 'Camo Print Bucket Hat', 36, 'accessory', 'Pink', 'CW2288-111'),
(9, 'Nike ACG ', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/522a8b76-47b2-454d-aeff-eadfa2732699/acg-wolf-tree-polartec-mens-full-zip-top-DwxmXv.png', 'Sustainable Materials', 'Pullover Hoodie', 135, 'accessory', 'White/White', 'CW2288-111'),
(10, 'Nike ACG \"Cinder Cone\"', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/08b0ea87-9f9c-43c9-beb1-5e96bff90e39/acg-cinder-cone-mens-windshell-pants-D2qL9d.png', 'Sustainable Materials', 'Men\'s Windshell Pants', 0, 'clothing', 'White/White', 'CW2288-111'),
(11, 'Nike ACG \"Oregon Series\" Reissue', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/a89d146a-3838-48bb-8317-ed6906bb60db/acg-oregon-series-reissue-mens-reversible-jacket-kJS6bb.png', 'Sustainable Materials', 'Men\'s Reversible Jacket', 193, 'clothing', 'Red', 'CW2288-111'),
(12, 'Nike Sportswear Premium Essentials', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/01b0748e-2d19-4257-8f4f-51859f929039/sportswear-premium-essentials-mens-tie-dye-max90-t-shirt-WxWgmV.png', '', 'Men\'s Tie-Dye Max90 Tops', 50, 'clothing', 'White/Blue', 'CW2288-111'),
(13, 'Nike ACG \"Snowgrass\"', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/9c9e9169-4980-494e-83b5-6c7d1cb43d4a/acg-snowgrass-mens-cargo-shorts-DBGWD1.png', 'Sustainable Materials', 'Men\'s Cargo Shorts', 135, 'clothing', 'White/White', 'CW2288-111'),
(14, 'Nike SB Kearny', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/e946f9c7-a13d-4192-8d44-658cdcdf6d8a/sb-kearny-mens-cargo-skate-pants-lfqJ2t.png', '', 'Men\'s Cargo Skate Pants', 100, 'clothing', 'White/Pink', 'CW2288-111'),
(15, 'Nike Sportswear Tech Pack', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/73b1eaf7-03be-4817-8814-9aacbf6d77a8/sportswear-tech-pack-mens-woven-hooded-jacket-RpVXVK.png', 'Just In', 'Men\'s Woven Hooded Jacket', 230, 'clothing', 'Blue', 'CW2288-111'),
(16, 'Nike Sportswear Tech Fleece', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/b837f7d1-8450-441c-a22c-b6ab1eb6a130/sportswear-tech-fleece-mens-bomber-jacket-rXx6mF.png', 'Coming Soon', 'Men\'s Bomber Jacket', 155, 'clothing', 'White/Blue', 'CW2288-111'),
(17, 'Nike Everyday Plus', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/3aab5292-2ac5-4a74-baa6-c843761bb131/everyday-plus-slouchy-cushioned-crew-socks-1-pair-5vSTZm.png', '', 'Slouchy Cushioned Crew Socks (1 Pair)', 18, 'clothing', 'White/Yello', 'CW2288-111'),
(18, 'Nike Sportswear Phoenix Fleece', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/9206da4e-3c99-44b6-8725-f5887a3248a6/sportswear-phoenix-fleece-womens-over-oversized-crewneck-sweatshirt-Wj2Rd6.png', 'Best Seller', 'Women\'s Over-Oversized Crewneck Sweatshirt - Tops', 70, 'clothing', 'White/White', 'CW2288-111'),
(19, 'Nike Sportswear Phoenix Fleece', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/5b00cbac-f0f1-49c4-9f03-ac07b65cff87/sportswear-phoenix-fleece-womens-oversized-pullover-hoodie-bs372Q.png', 'Just In', 'Women\'s Oversized Pullover Hoodie', 75, 'clothing', 'Blue/White', 'CW2288-111'),
(20, 'Nike Multi', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/b6e77e69-443d-4476-bd11-0f979b7a01d3/multi-big-kids-boys-dri-fit-graphic-training-top-dFRNMp.png', 'Sustainable Materials', 'Big Kids\' (Boys\') Dri-FIT Graphic Training Tops', 30, 'clothing', 'Yello/White', 'CW2288-111'),
(21, 'Nike Sportswear', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/i1-af25497f-2123-4413-be41-52635f219c37/sportswear-t-shirt-zmMkxS.png', 'Essential', 'Men\'s Tops', 35, 'clothing', 'White/Yello', 'CW2288-111'),
(22, 'Nike Dunk Low Retro', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/67fcdb78-eda4-4aaa-885e-de5c585d729b/dunk-low-retro-shoes-bCzchX.png', 'Promo Exclusion', 'Men\'s Shoes', 110, 'shoes', 'White/Pink', 'CW2288-111'),
(23, 'Nike Alpha Menace Elite 3 ', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/59e7edb1-2d19-4148-865a-17cebf8dd118/alpha-menace-elite-3-travis-kelce-mens-football-cleats-6m4HNQ.png', 'Member Access', 'Football Cleats', 200, 'shoes', 'Pink/White', 'CW2288-111'),
(24, 'Nike Free Metcon 5', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/7542fe72-eae6-49a2-8918-28a17aaf2c4c/free-metcon-5-mens-workout-shoes-Vfsbpq.png', 'Best Seller', 'Training Shoes', 120, 'shoes', 'White/Pink', 'CW2288-111');




-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `email` varchar(255) NOT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `createAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`email`, `profile_photo`, `fname`, `lname`, `gender`, `age`, `phone`, `createAt`, `updateAt`, `password`) VALUES
('minh.nguyentuankhmt02@hcmut.edu.vn', '', 'Nguyễn Tuấn', 'Minh', 1, 20, '0705660477', '2023-08-16 20:23:23', '2023-08-16 20:23:23', '$2y$10$3jGkRsV5PvDFEbh1488AguInIHWg5lxp7S49LKIXYIvSxvE0zDpCu'),
('van.buile@hcmut.edu.vn', '', 'Bùi Lê', 'Văn', 1, 20, '0972784829', '2023-08-16 20:35:24', '2023-08-16 20:35:24', '$2y$10$3jGkRsV5PvDFEbh1488AguInIHWg5lxp7S49LKIXYIvSxvE0zDpCu');

--
-- Chỉ mục cho bảng `product`
--
  ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

CREATE TABLE `order` (
  `iduser` VARCHAR(255) NOT NULL ,
  `num` INT NOT NULL ,
  `pid` int(11) NOT NULL , 
  PRIMARY KEY (`iduser`, `pid`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Chỉ mục cho các bảng đã đổ
--
CREATE TABLE `review` (
  `review_id` int(11) AUTO_INCREMENT,
  `content` varchar(500) NOT NULL,
  `uid` VARCHAR(255) NOT NULL,
  `pid` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD KEY `news_id` (`news_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `parent` (`parent`);


--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_3` FOREIGN KEY (`parent`) REFERENCES `comment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
