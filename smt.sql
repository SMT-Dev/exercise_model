/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : smt

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 20/12/2020 19:46:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
BEGIN;
INSERT INTO `hibernate_sequence` VALUES (4);
COMMIT;

-- ----------------------------
-- Table structure for t_answer
-- ----------------------------
DROP TABLE IF EXISTS `t_answer`;
CREATE TABLE `t_answer` (
  `answer_id` bigint(20) NOT NULL,
  `analysis_text` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `answer_text` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_answer
-- ----------------------------
BEGIN;
INSERT INTO `t_answer` VALUES (10000, 'ice cream “冰激凌“可数ice是元音音素/aɪ/开头，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10001, ' have a headache 头疼，表示生什么病，用have a … 是固定搭配 所以选C', 'C');
INSERT INTO `t_answer` VALUES (10002, 'a 用于修饰辅音音素开头的单词；an 用于修饰元音音素开头的单词toy 是以辅音音素/t/开头的单词，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10003, 'a 用于修饰辅音音素开头的单词；an 用于修饰元音音素开头的单词way是以辅音音素/w/ 开头的单词，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10004, ' P.E. 和 music 都是辅音音素/p/, /m/开头单词； English 是元音音素 /ɪ/ 开头单词，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10005, 'eraser 属于单数，所以 C 错误；eraser是元音 /ɪ/ 开头单词，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10006, 'a 表示“一个”，是不定冠词，用于修饰辅音音素开头的单数名词；an 表示“一个” 是不定冠词，用于修饰元音音素开头的单数名词cake和 sweet 是辅音音素/c/ /s/开头的单词，所以用 a; egg是元音音素 /e/ 开头的单词所以用 an，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10007, 'a 表示“一个”，是不定冠词，用于修饰辅音音素开头的单数名词；an 表示“一个” 是不定冠词，用于修饰元音音素开头的单数名词hot dog 是辅音音素/h/开头的单词，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10008, 'English是元音音素 /ɪ/ 开头的单词，用 an；Chinese是辅音音素 /tʃ/ 开头的单词，用 a，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10009, 'elephant是元音音素 /e/ 开头的单词，用不定冠词 an，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10010, 'a friend of mine 我的一个朋友，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10011, 'umbrella 是元音音素 /ʌ/ 开头单词，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10012, '当表示一个（份）的物体的数量时，用不定冠词 a 或 an 修饰名词big 是辅音音素开头的单词，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10013, 'play the piano 是固定搭配，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10014, 'T-shirt 是单数，所以A不对，T-shirt是辅音音素 /t/ 开头单词，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10015, 'teacher是可数名词，所以C不对Teacher是辅音音素 /t/ 开头单词，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10016, 'library是可数名词单数，用不定冠词，library 是辅音音素 /l/ 开头的单词，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10017, 'orange guitar 橙色的吉他，orange是元音音素 /ɔː/ 开头单词，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10018, 'have a nice trip 旅行愉快，固定搭配a用在辅音音素开头的单词，nice是辅音音素 /n/开头单词所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10019, '表示某一类人或某事物时，用不定冠词Artist是元音音素 /ɑː/ 开头的单词，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10020, 'hour 是以元音音素 /aʊ/ 开头的单词，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10021, 'play 与 球类 间不能添加冠词，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10022, '由于球类前不加冠词，乐器前需要加 the，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10023, 'apple是元音音素开头的单词；big 是辅音音素开头的单词，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10024, 'exciting 属于以 /i/ 元音开头，不定冠词 a 修饰以辅音音素开头得单词，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10025, 'interesting属于元音/i/开头单词，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10026, 'e-card是元音音素 /iː/开头得单词，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10027, '单词 hour /aʊər/ 以元音音素开头，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10028, ' 字母 h /eɪt/ 和字母 l /el/ 均是以元音音素开头，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10029, 'football属于球类，因此不需要加任何冠词，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10030, 'honest /ɒnɪst/ 是元音音素开头的单词，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10031, 'pipa 琵琶，乐器前面需要加 the 所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10032, 'badminton 羽毛球 属于球类，所以不需要加冠词，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10033, 'guitar 吉他，乐器前面需要加 the 所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10034, '地点前不加冠词，old以元音音素 /əʊ/ 开头， long是辅音音素 /l/ 开头单词，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10035, 'honest /ɒnɪst/ 是元音音素开头的单词，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10036, 'a, an, one 虽然都可解释为 “一” 但由于他们的此行不同，用法不同，所以有时不能互换a/an 是不定冠词，主要表示类别，首字母元音法医i你用an；首字母辅音发音用a；而one表示“一”数量词，表示数量eraser是元音音素开头，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10037, 'violin小提琴，乐器前面要加the，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10038, 'in+一段时间属于固定搭配来表达将来的时间，half an hour是固定搭配，因此 in half an hour 在半小时之后，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10039, 'ice cream 可数名词单数，ice是元音音素 /aɪ/ 开头，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10040, '词义题“你花园里的花好漂亮”所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10041, 'has用于单数主语，所以第一个空格填 boy；watch以~ch 结尾，需要加~es，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10042, 'two表示复数，所以be动词用 are, watch以~ch结尾，需要加~es，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10043, '句中主语为二人Tom和Jerry, 谓语动词是复数，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10044, 'How many后面使用可数名词复数，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10045, 'How many后面使用可数名词复数，tomato以~o 结尾且属于有生命类型，需要加~es, 所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10046, '可数名词复数以 ~s, ~x, ~ch, ~sh, ~o(有生命) 结尾的单词加 ~es，其他的加~s，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10047, '可数名词复数以 ~s, ~x, ~ch, ~sh, ~o(有生命) 结尾的单词加 ~es，其他的加~s，此处photo照片 没有生命，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10048, 'some即可用于修饰可数名词复数又可修饰不可数名词，句中be动词是 are，因此填可数名词复数，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10049, '句中be动词是 are 因此需要使用复数，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10050, 'meter是可数名词，复数形式 meters，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10051, 'some即可用于修饰可数名词复数又可修饰不可数名词，dumpling 饺子，egg 都是可数名词，但是是单数形式，noodle是可数名词，一般都以noodles复数形式出现，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10052, 'be动词is后加单数形式，由于computer可数，需要加不定冠词a 所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10053, '根据be动词 are 判断本句主语为复数，potato以o结尾且有生命，复数需要加~es所以选C', 'C');
INSERT INTO `t_answer` VALUES (10054, '根据be动词 are 判断空格为复数，hero“英雄” 是以o结尾的可数名词，且有生命，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10055, 'some即可用于修饰可数名词复数又可修饰不可数名词，dress属于可数名词，且以s结尾，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10056, 'How many后加可数名词复数，brush以sh结尾，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10057, 'like 加 doing 加可数名词复数或不可数名词，jeans “牛仔裤“ 属于可数名词，一般以复数jean出现，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10058, 'like加可数名词复数或不可数名词，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10059, '词义题 “它们很大它们是灰色或者棕色的它们的鼻子很长他们是什么？根据句意判断是elephant，且描述都是用 They are 因此后面加复数，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10060, 'one of the …（复数）固定搭配，boy虽然以y结尾，但是倒数第二个字母不是元音字母（a, e, i, o, u）所以不需要去y加 ~ies，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10061, 'monkey y结尾，但是倒数第二个字母不是元音字母（a, e, i, o, u）所以不需要去y加 ~ies，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10062, 'sheep 属于可数名词，它的单数和复数形式是一样的，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10063, 'some即可用于修饰可数名词复数又可修饰不可数名词，句中be动词是 are 因此some填可数名词，water 是不可数名词，child 儿童 是可数名词单数，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10064, 'water属于不可数名词，不可数名词不可以单独做复数使用，表示复数时需要加量词，单复数变化也在量词bottle上，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10065, '如果短语中性别和职业都存在，两个单词都用复数，woman属于特殊变化，复数形式为women，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10066, 'There is no + 名词，固定搭配；be动词是 is 因此后面的名词使用单数，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10067, '如果短语中性别和职业都存在，两个单词都用复数，woman属于特殊变化，复数形式为men，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10068, '本句是由but链接的复合句，复合句前后需要统一，but引导的后半句是 a bus, 前后统一原则，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10069, 'any 一些，用于修饰可数名词复数，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10070, 'the same 后面跟可数名词单数，是固定搭配，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10071, '词义题，write stories 写故事，story的复数变y为ies，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10072, 'How many后面加可数名词复数，bakery的复数变y为ies，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10073, '句意“你可以把…放进汤里” Vegetable蔬菜，这里指的是各种蔬菜，表示蔬菜种类时属于可数名词，复数是 vegetables所以选B', 'B');
INSERT INTO `t_answer` VALUES (10074, '句意“这里有一袋糖果” Sweet在这里指糖果，应该用复数 sweets，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10075, '句意“我的兴趣是阅读和烹饪” Be动词是 are，与复数名词搭配，hobby的复数变y为ies，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10076, 'a few 一些，修饰可数名词复数，选项中 egg是可数名词单数，fruit在此处是泛指水果，仅表示水果时属于不可数名词，表示水果种类时属可数名词，noodles是可数名词复数，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10077, '句意“灰姑娘穿上新的衣服和鞋子“此处衣服指的是多件衣服，应填cloth的复数，cloths是布料的复数，clothes是衣服的复数，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10078, 'glass 玻璃杯，glasses 眼睛，此处第一个空格 a pair of glasses 一副眼镜，固定搭配；a glass of water 一杯水，固定搭配，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10079, 'three 三个，与复数搭配，wish以sh结尾，需要加es，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10080, '句意“她是我的奶奶” Grandmother “奶奶/外婆“ 所以主语填She，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10081, '句意“艾米是个新学生，她很有趣“ Amy 是女生的名字，所以在第二句用 she指代 Amy，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10082, '句意“你在做作业吗？“此处Be动词是are 与you搭配，I 与 am 搭配；she 与 is 搭配，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10083, '根据回答 “He’s cooking.” 提问的对象是 he，且问句中的be动词是 is 所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10084, '句意“我们看到很多鸟，他们很漂亮” 由birds可以得知属于第三人称复数，同时空格后的be动词是are 所以选C', 'C');
INSERT INTO `t_answer` VALUES (10085, '问句中提问的主语是he，因此回答应与主语一致，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10086, '句意“妈妈，这是艾米，她是一个新学生” 根据句意空格处指的是艾米，Amy是女生的名字，所以此处应用she来指代，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10087, '问句中的主语是 elephants 是复数，回答时应用They来指代elephants，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10088, '根据回答得知提问的对象是green beans，可以用they来指代，且答句的主语是 they所以选B', 'B');
INSERT INTO `t_answer` VALUES (10089, '根据答句的主语she得知提问的应该是一位女性，选项中只有mother是女性，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10090, '根据答句得知提问对象是男性，选项中 Susan 苏珊，Mary 玛丽 都是女性名字Ben 本是男性名字，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10091, '句意“这是一只小黄鸭” 根据yellow duck 小黄鸭，单数，所搭配的人称代词是 it 所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10092, '句意“我们经常一起在课后打篮球” Together 一起，根据句意主语应该是多人，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10093, '问句提问的是she，所以回答对象也应该是she 所以选C', 'C');
INSERT INTO `t_answer` VALUES (10094, '问句提问的是bikes，复数，对应的人称代词应该是 They，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10095, '前句主语是 My dog 我的小狗，单数所以后句主语一致，对应的人称代词是 it 所以选A', 'A');
INSERT INTO `t_answer` VALUES (10096, '句意“ 看那边的几只猫，它们是一位老奶奶的” Cats 是复数，所对应的人称代词是 they，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10097, '句意：我可以帮你吗？ 好的，谢谢“ 根据句意应该选 C', 'C');
INSERT INTO `t_answer` VALUES (10098, 'brother 兄弟，对应人称代词是 he，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10099, '本题三句句子都在说 kite 风筝，单数Kite对应的人称代词是 it，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10100, '句意“这条裙子是我的，请把它给我，谢谢“ dress对应的人称代词 it，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10101, '回答中的 let’s 等于 let us 让我们，表示有2人以上，所以空格出填 we，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10102, '问句提问的是tickets 门票，复数，对应的人称代词是they，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10103, 'Excuse me, “不好意思“ 固定搭配，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10104, '根据回答 I am, 提问主语应是 you，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10105, 'Uncle叔叔，名词，前面应该使用形容词性物主代词 his 他的，形容词词性回答的空格是主语位置，应该填主格 he所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10106, '由 a girl 可以得知主语应该填写人称代词she做主语，首字母要大写Name 名词，修饰名词应该用形容词性物主代词 her， her name 她的名字，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10107, '根据classmate 同学，可知用 he或者she，选项中没有he，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10108, '句中bring 带，动词，气候跟人称代词宾格形式，选项中只有 her是宾格，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10109, '本剧是特殊疑问句，特殊疑问句的构成是 疑问代词加一般疑问句句式，trousers 裤子，复数名词，因此be动词用are，陈述句构成是 主谓搭配，一般疑问句是构成是 谓主搭配，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10110, 'eyes是可数名词复数，用人称代词they来代替所搭配的be动词是 are，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10111, 'tell 告诉，动词，人称代词在动词之后用代词的宾格，I 的宾格是 me，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10112, '根据问句主语 his mother，可知所对应的人称代词是she，在答句中空格是主语位置，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10113, '根据问句主语Mrs. Tan “Tan女士“，可知对应的人称代词是 she，在答句中空格是主语位置，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10114, 'with “与…一起“,介词第一个空格做介词with的宾语，因此填人称代词的宾格；第二个空格是主语，用主格提问是 you，回答是 I，因此选A', 'A');
INSERT INTO `t_answer` VALUES (10115, 'I是人称代词的主格；my是人称代词的所有格，是形容词词性；me是人称代词宾格Give是动词，动词之后搭配人称代词宾格形式，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10116, '句意“Here you are.” 给你，固定搭配所以选A', 'A');
INSERT INTO `t_answer` VALUES (10117, '句意“谢谢你帮助我” Thank you 固定搭配，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10118, 'send “发送” 动词，动词之后搭配人称代词宾格，I 是人称代词主格；my是人称代词所有格，形容词词性；me是人称代词宾格所以选B', 'B');
INSERT INTO `t_answer` VALUES (10119, '句意“让我清洗鱼缸吧” Me 我，宾格；his 他的，所有格，形容词；your 你的，所有格，形容词Let 让，动词动词之后搭配宾语，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10120, 'talk to sb. (somebody) “与某人谈话“Talk 谈，动词动词之后搭配宾语，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10121, 'our beautiful new queen “我们美丽的新女王“ queen对应的人称代词是she，空格出是主语，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10122, 'with “与…一起“ 介词，人称代词在介词之后要使用宾格形式，we是主格；my是所有格，形容词词性；us 宾格所以选B', 'B');
INSERT INTO `t_answer` VALUES (10123, '句意“你能带我参观一下吗？”show 展示，动词动词后面搭配人称代词宾格，I 和 we都是主格，me是宾格所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10124, 'let 让，动词动词后搭配人称代词宾格，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10125, 'like 喜欢，动词动词之后搭配人称代词宾格，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10126, 'be afraid of sb. (somebody) 害怕某人介词of之后搭配人称代词宾格，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10127, 'all of + 人称代词宾格复数/可数名词复数They 主格；them宾格；their所有格，形容词词性所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10128, 'let 动词，动词之后搭配人称代词宾格，We 主格；us宾格；our 所有格，形容词词性所以选B', 'B');
INSERT INTO `t_answer` VALUES (10129, 'Nice to meet you “很高兴见到你“ 固定搭配 Meet遇见，动词动词之后搭配宾语，I的宾格是me; you的宾格还是you如果用 me 句意部对，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10130, 'behind 在…后面，介词介词之后搭配人称代词宾格He主格；him宾格；his所有格，形容词词性所以选B', 'B');
INSERT INTO `t_answer` VALUES (10131, 'of 介词，后面需要搭配宾格根据第二句的主语she可知前句是关于女生的，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10132, 'of 介词，后面需要搭配宾格所以选B', 'B');
INSERT INTO `t_answer` VALUES (10133, 'teach“教”，动词动词之后搭配人称代词宾格，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10134, 'give “给“，动词动词之后搭配人称代词宾格根据第二句的主语we可知前句对应的宾语应是we的宾格，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10135, '句意：“我有一个机器人，我爷爷为我做的“ robot 机器人根据前句句意可知空格处指的是机器人，机器人对应的人称代词是itMade是make的过去式，”制作“的意思，动词东莞此之后搭配人称代词宾格，it主格；it宾格；it所有格It’s 是 it is 的缩写所以选A', 'A');
INSERT INTO `t_answer` VALUES (10136, 'with “与…一起“ 介词，介词之后搭配人称代词宾格所以选B', 'B');
INSERT INTO `t_answer` VALUES (10137, '… in front of … “在…之前“ 介词介词之后搭配人称代词宾格，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10138, 'with “与…一起“ 介词，介词之后搭配人称代词宾格根据第二句主语可以确定问句的提问对象是 he，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10139, '人称代词 I 搭配 be动词 am，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10140, '人称代词 he 搭配 be动词 is, 所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10141, '人称代词 we搭配be动词 are，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10142, '人称代词 I 搭配 be动词 am，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10143, '人称代词 she 搭配 be动词 is，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10144, '人称代词 They 搭配 be动词 are，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10145, '主语为Helen和Nancy两个人，因此be动词用复数 are，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10146, 'the little dog“小狗”，主语为dog，用法与it相同，因此be动词用 is，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10147, ' There be句型中 be动词取决于最靠近的名词，句中的名词是 grapes，复数，因此选 C', 'C');
INSERT INTO `t_answer` VALUES (10148, '人称代词 I 搭配 be动词 am，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10149, '人称代词 she 搭配 be动词 is，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10150, '主语为Jane和Tome两个人，因此be动词用复数 are，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10151, '主语为 sisters 复数， be动词用复数 are，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10152, '主语为 Cats复数， be动词用复数 are，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10153, 'This 单数形式，搭配be动词 is 所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10154, '主语是eyes，复数，be动词搭配复数时用are，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10155, '主语是they，复数，be动词搭配复数时用are，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10156, '主语是 animals，复数，be动词搭配复数时用are，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10157, '主语是 ducks，复数，be动词搭配复数时用are，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10158, '主语是 brother 和 sister 复数，be动词搭配复数时用 are，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10159, 'There be句型中 be动词取决于最靠近的名词，句中的名词是 sign”符号“，根据a sign可以判断为单数，因此选 C', 'C');
INSERT INTO `t_answer` VALUES (10160, 'Today“今天“，用法与it相同因此搭配的be动词是 is， 所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10161, 'All the students “全部学生“，根据students可以判断为复数，搭配的be动词是 are，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10162, 'This pair of shoes “这双鞋” pair是量词为单数，因此be动词用单数 is，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10163, 'There be句型中 be动词取决于最靠近的名词，句中的名词是 girl, 单数所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10164, 'There be句型中 be动词取决于最靠近的名词，句中的名词是 rainbow ”彩虹“，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10165, '主语是 friend“朋友” 单数，be动词单数用is，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10166, '主语是 you，所搭配得be动词是 are，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10167, '主语是 Tom 和 John 两个人，复数，be动词搭配复数时用 are，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10168, 'My parents “我的父母“ 复数，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10169, 'There be句型取决于最近得名词，且two glasses of juice“两杯果汁“ glass此处作为量词使用，复数，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10170, '主语是they，be动词搭配复数时用are，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10171, 'glasses 眼睛，复数，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10172, 'water是不可数名词，因此be东西用is，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10173, '前半句主语 Our class “我们的班级“其中class为单数，搭配is；后半句 their classes中classes为复数，搭配are，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10174, '本句得主语是 trousers “裤子“ 常规复数，所以A错误；B选项是属于陈述句句式，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10175, 'Lily’s room “莉莉的房间“ 主语是 room，单数，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10176, 'internet “网络“，不可数名词，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10177, 'many flowers是复数形式，there be结构中be动词用are，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10178, '本句的主语是 clock, “时钟”，单数，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10179, 'What做主语提问时，没有明确标志性词语时，一般情况下be动词用is，答句中milk是不可数名词，因此答句中be动词也是用is，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10180, ' 根据前句 a word book “一本单词书“，可以判断后句为单数，因此C错误；B选项是疑问句句式，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10181, '情态动词can搭配动词原形，be动词得原形是 be，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10182, '本句主语是 teeth，tooth的复数形式，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10183, 'meat为不可数，所以be动词用is；apples可数，属于复数，be动词用are，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10184, 'Our home “我们的家”，主语为home，单数，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10185, 'Let’s搭配动词原形，be动词的原形为 be，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10186, 'The pair of jeans “这条裤子” pair 数量词，优先作为主语，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10187, 'everyone 不定代词，作为主语要用单数，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10188, 'none of +复数名词，后面用单复数都可以，但一般用复数 none of +不可数单数名词，后面动词只能用单数此处us 为可数名词复数，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10189, 'Anyone is forbidden to tell “不许告诉任何人“，Anyone不定代词，作为主语用单数，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10190, 'somebody 不定代词，作为主语要用单数，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10191, 'one of the ducks “其中得一只小鸭子“ 单数，所以搭配be动词 is，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10192, 'telephone number 电话号，单数，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10193, '“很明显，刚两岁得她已经是《喜羊羊和灰太狼》得老粉丝了，她妈妈给他买了一整套《喜羊羊和灰太狼》的光碟“ 此处前半句中省略了主语，她，但是根据后半句中的 her bother bought her可以判断出主语，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10194, 'Here 引导得倒装句，主语是noodles，常规复数，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10195, 'Here引导的倒装句，主语是Money 钱，不可数名词，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10196, 'Here 引导的倒装句，Juice是不可数名词，be动词用is，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10197, 'Here引导得倒装句，根据回答可以判断主语为 You，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10198, '本句为倒装句，主语是 flag 是第三人称单数，所搭配得be动词是is，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10199, '本题主语 the girl 是第三人称单数，Be动词用 is，is not的缩写是 isn’t 因此C不对，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10200, '本题主语 the dogs 是第三人称复数，Be动词用 are, 所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10201, '本题主语 the man; with big eyes是用来描述主语the man，所以be动词用 is，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10202, '本题主语 Mike and Liu Tao 两个人，所以be动词用 are， are not 的缩写是 aren’t 所以选B', 'B');
INSERT INTO `t_answer` VALUES (10203, '本题主语 gloves “手套” 第三人称复数，be动词用 are，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10204, '本题主语 The two cups of milk “两杯牛奶” 其中量词优先作为主语，be动词用 are，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10205, '本题主语 tea 不可数，搭配Be动词是 is， is not 的缩写时候 isn’t A的缩写错误，B没有空开，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10206, '本题是There be引导的倒装句，主语是 apples 复数，搭配的be动词用 are, C选项没有空开，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10207, '本题主语是 You, he and I 三个人，复数，搭配的be动词是 are，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10208, '本题主语是 I，搭配的be动词时 am，否定为am not， A的缩写是错误的，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10209, '本题是 There be引导的倒装句，主语是 monkeys，搭配的be动词是 are，否定词not应该放在be动词之后，所以B错误，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10210, '本题是There be引导的倒装句，主语是 garden，搭配的be动词是 is，定词not应该放在be动词之后，所以A错误；is not的缩写是 isn’t，C错误，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10211, '题是There be引导的倒装句，主语是 water，搭配的be动词是 is，is not的缩写是 isn’t，A错误，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10212, '本题主语是 jackets 可数名词复数，搭配的be动词是 are， 所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10213, '本题主语是 books 可数名词复数，搭配的be动词是 are；否定词not在be动词之后，所以B错误；are not 的缩写是 aren’t, C选项错误，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10214, '本题主语是 your friends “你的朋友们” 复数，搭配的be动词是are，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10215, '句意“他是我最好的朋友” 根据句意判断本题应选肯定，主语是he搭配的be动词是is，is not的缩写是 isn’t，B错误，所以选 A', 'A');
INSERT INTO `t_answer` VALUES (10216, '本题主语是 scissors 常用复数，搭配的be动词是 are，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10217, '本题主语是 coats，复数，搭配的Be动词是 are，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10218, '本题主语是 sun，单数，搭配的Be动词是 is，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10219, '本题考点为否定疑问句，主语是 your brother 是第三人称单数，be动词is,所以选C', 'C');
INSERT INTO `t_answer` VALUES (10220, '本题考点为否定疑问句，主语是David和Helen第三人称复数，搭配的Be动词是 are，B选项缩写错误，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10221, '本题考点为否定疑问句，主语是 apple juice 不可数名词，搭配的Be动词是 is, B选项缩写错误，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10222, '本句时How many引导的特殊疑问句，主语时days，搭配be动词是 are，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10223, '句意“你难道不是Li女士吗？” 本题考点为否定疑问句，B选项缩写错误，A选项开头没有大写，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10224, '句意 “那不是她的狗，它是史密斯家的狗” 根据句意判断，前句应是否定，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10225, '句意“你爸爸在哪里？他不在办公室” 本句主语是 your father，搭配be动词 is，根据句意判断，后句应用否定，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10226, '本题是here引导的倒装句，主语是 a pair of scissors，数量词优先做主语，搭配的be动词是 is，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10227, '句意“Grace和Cindy现在没有玩电脑游戏，他们正在做作业” 主语是 Grace 和 Cindy 复数，搭配Be动词 are，根据句意判断，前句应用否定，而C选项缩写错误，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10228, 'The young man with books in his hands “手里拿着书的年轻男人“ 本句的主语是 the young man，单数，搭配的be动词是 is，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10229, '本句主语是 The dog with black fur “黑色毛皮的狗“ 谓语动词是 is，改为否定句时在谓语`动词后加not，或者缩写 is not = isn’t', '\nThe dog with black fur isn’t for you.\nThe dog with black fur is not for you.');
INSERT INTO `t_answer` VALUES (10230, '本句的主语是 The piece of paper，谓语动词是 is，改为否定句时在谓语动词后加not，或者缩写 is not = isn’t', '\nThe piece of paper isn’t on the desk.\nThe piece of paper is not on the desk.');
INSERT INTO `t_answer` VALUES (10231, '本句主语是 The pair of trousers，谓语动词是 aren’t, 是 are not 的缩写，肯定句将aren’t 改为 are，或者 are not 去除 not', '\nThe pair of trousers are in the wardrobe.');
INSERT INTO `t_answer` VALUES (10232, '本句主语是 The capital letter in “China” 谓语是 isn’t是 is not 的缩写，肯定句将isn’t 改为 is，或者 is not 去除 not', '\nThe capital letter in “China” isn’t “W”.\nThe capital letter in “China” is not “W”.');
INSERT INTO `t_answer` VALUES (10233, '本句主语是 You, he and I 复数，谓语动词是are 改为否定句时在谓语动词后加not，或者缩写 are not = aren’t', '\nYou, he and I aren’t in the same class.\nYou, he and I are not in the same class.');
INSERT INTO `t_answer` VALUES (10234, '本句主语 His cards，复数，谓语动词是are 改为否定句时在谓语动词后加not，或者缩写 are not = aren’t', '\nHis cards aren’t on the table.\nHis cards are not on the table.');
INSERT INTO `t_answer` VALUES (10235, '本句为There be引导的倒装句，谓语动词是 are，改为否定句时在谓语动词后加not，或者缩写 are not = aren’t', '\nThere aren’t five dolls on the shelf.\nThere are not five dolls on the shelf.');
INSERT INTO `t_answer` VALUES (10236, '本句主语是Jane and Tom，复数，谓语动词是are 改为否定句时在谓语动词后加not，或者缩写 are not = aren’t', '\nJane and Tom are my classmates.');
INSERT INTO `t_answer` VALUES (10237, '本句为There be引导的倒装句，谓语是 isn’t是 is not 的缩写，肯定句将isn’t 改为 is，或者 is not 去除 not否定句中 any 改为肯定句时需要变为 some', '\nThere is some milk in the bottle.');
INSERT INTO `t_answer` VALUES (10238, '本句为There be引导的倒装句，语动词是 are，改为否定句时在谓语动词后加not，或者缩写 are not = aren’t肯定句中some改为否定句时需要变为 any', '\nThere aren’t any apples on the plate.\nThere are not any apples on the plate.');
INSERT INTO `t_answer` VALUES (10239, '意思“ 10加2不等于13“，虽然Ten and two 是复数，但是在表达计算题时，视为单数，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10240, '题意“-你的哥哥在哪里，他不在家 -他去Tom的家了” 根据题意判断选 C', 'C');
INSERT INTO `t_answer` VALUES (10241, '题意“我的爸爸不在家，他和他的朋友约好了” 主语My father，搭配Be动词 is，根据句意判断为否定，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10242, '本句是There be句型引导的倒装句，根据选项判断，本题考点包括 不可数名词与be动词搭配 和 some / any 在肯否定句中的用法句中主语是 bread 不可数名词，搭配be动词是 is，所以A错误否定句时 some 需要改为any，所以B错误所以选C', 'C');
INSERT INTO `t_answer` VALUES (10243, '意思“ 5加5等于10“，虽然Five and Five 是复数，但是在表达计算题时，视为单数，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10244, '本题是There be 句型引导的倒装句，主语是 sheep，sheep单复同形从some可以判断为复数，所以A错误Some只用于肯定句，因此C错误，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10245, 'The加姓氏复数表示这个姓氏的一家人，搭配be动词 are 所以选B', 'B');
INSERT INTO `t_answer` VALUES (10246, '句意“没有剩余的巧克力了，我们昨天都吃完了“根据句意判断前句应是否定，而chocolate是不可数名词，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10247, '“中国民族是一个勤劳的民族” People作为“人” 是集体名词，代表复数概念，作为“名族”是个体名字，代表单数概念The Chinese people “中华名族” 从冠词 a可以判断 hard-working people 解释为“勤劳的民族”，而不是“勤劳的人们“ 所以选A', 'A');
INSERT INTO `t_answer` VALUES (10248, '句意“数学不是她最差的一课“当mathematics 作为一个科学分支的“数学”或者一个学科的“数学”时，被看作是单数所以用 B', 'B');
INSERT INTO `t_answer` VALUES (10249, 'The加形容词，表示一类人或事物， the old “老人们“，所以选 C', 'C');
INSERT INTO `t_answer` VALUES (10250, 'The加形容词，表示一类人或事物， The Chinese “中国人们“；hard-working people “勤劳的人们” people解释为“人”时，作集体名词，代表复数概念，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10251, '本句是There be句型引导的倒装句，否定句时 some 需要改为any，因此本句判断为否定句，且主语Juice不可数，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10252, '句意“他的数理能力不弱“ 当mathematics 指“数学能力、数学成绩、计算能力”时，则被看作是复数，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10253, 'The加形容词，表示一类人或事物，the beauty “美女们”，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10254, '句意“如果我的计算正确的话，总共是50英磅“当mathematics 指“数学能力、数学成绩、计算能力”时，则被看作是复数，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10255, '11加13等于12“，虽然Eleven and Thirteen 是复数，但是在表达计算题时，视为单数，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10256, '本题中 people 解释为“名族” 56 peoples “56个民族“ 复数，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10257, 'The加形容词，表示一类人或事物，the blind “盲人们”，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10258, '句意“这个问题在数学方面不是很复杂的“当mathematics 指“数学能力、数学成绩、计算能力”时，则被看作是复数，所以选 B', 'B');
INSERT INTO `t_answer` VALUES (10259, '本句中主谓语是I am, 改为一般疑问句，用Are you来替换，调整大小写，句号变问号；肯定回答时根据句意改回对应主谓语 I am.', '\nAre you a new student?\nYes, I am.');
INSERT INTO `t_answer` VALUES (10260, '句中主语Grace and Helen两人，复数，谓语动词are, 改为一般疑问句，将谓语提前，调整大小写，句号变问号做肯定回答时，主语Grace and Helen替换为they', '\nAre Grace and Helen sisters?\nYes, they are.');
INSERT INTO `t_answer` VALUES (10261, '本句由 that引导， 谓语是 is改为一般疑问句时谓语动词提前，调整大小写，句号变问号做肯定回答时，this和that做句首时，人称代词用it替代', '\nIs that boy Mike?\nYes, it is.');
INSERT INTO `t_answer` VALUES (10262, '本句由 these引导，谓语是are，改为一般疑问句时谓语动词提前，调整大小写，句号变问号当句子由this, that, these, those开头时，根据句意需要将my变为your做肯定回答时，these 用人称代词they来替换', '\nAre these your books?\nYes, they are.');
INSERT INTO `t_answer` VALUES (10263, '本句主语是Jane and Mary，两人，复数，谓语动词是are改为一般疑问句时谓语动词提前，调整大小写，句号变问号做否定回答时，主语Jane and Mary替换为人称代词 they', '\nAre Jane and Mary good students?\nNo, they aren’t.');
INSERT INTO `t_answer` VALUES (10264, '本句由 this引导, 谓语是is， 当句子由this, that, these, those开头时，根据句意需要将my变为your改为一般疑问句时谓语动词提前，调整大小写，句号变问号做否定回答时，主语this和that由人称代词it替代', '\nIs this your sister?\nNo, it isn’t.');
INSERT INTO `t_answer` VALUES (10265, '本句由 those引导，谓语是are，改为一般疑问句时谓语动词提前，调整大小写，句号变问号做否定回答时，主语these和those由人称代词they替代', '\nAre those his toys?\nNo, they aren’t.');
INSERT INTO `t_answer` VALUES (10266, '本句的主语是that black cat 谓语是is，改为一般疑问句时谓语动词提前，调整大小写，句号变问号当句子由this, that, these, those开头时，根据句意需要将my变为your做肯定回答时，that black cat用人称代词it来替换', '\nIs that black cat your pet?\nYes, it is.');
INSERT INTO `t_answer` VALUES (10267, '本句由 this引导， 谓语是 is改为一般疑问句时谓语动词提前，调整大小写，句号变问号做肯定回答时，this和that做句首时，人称代词用it替代', '\nIs this your sister?\nNo, it isn’t.');
INSERT INTO `t_answer` VALUES (10268, '本句主语是 we， 谓语是 are改为一般疑问句时谓语动词提前，调整大小写，句号变问号做肯定回答时，应改回对应主谓语 we are', '\nAre we classmates?\nNo, we are.');
INSERT INTO `t_answer` VALUES (10269, '本题主语his name， 回答时对应的人称代词是 it， 所以选C', 'C');
INSERT INTO `t_answer` VALUES (10270, '本题主语是 Mike, 回答时替换为人称代词he，且回答是肯定回答，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10271, '本题主语是 ducks, 回答时替换人称代词是they，根据句意“那些小鸭子在池塘里有用吗？不，它们没有，它们正在妈妈的身边睡觉“ 属于否定回答，B选项错误，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10272, '本句由 this引导, 回答时this需要替换为人称代词it， 且回答是否定回答，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10273, '本句的主语是 Peter, 搭配的be动词是 is，且根据回答可以确认谓语动词is，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10274, '本句由 this引导， 回答时this需要替换为it， 根据句意“这是一个箱子吗？ 是的，这是一个棕色的纸箱子“属于肯定回答，且有补充说明的意思，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10275, '本题主语是the jam不可数名词，所以对应的be动词是is，本题是一般疑问句所以be动词提前后需要大写，C错误，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10276, '本题是there be句型引导的一般疑问句，主语是chairs，可数名词复数，对应的be动词是are所以选B', 'B');
INSERT INTO `t_answer` VALUES (10277, '本句的主语是 the man，with big eyes是用于描述主语the man的，意思是“眼睛很大的男士“ 属于可数名词单数，搭配的be动词是is，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10278, '本题的主语是 the two cups of milk “两杯牛奶“ 主语中量词cups优先成为主语，搭配的Be动词是are，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10279, '句中的主语是Dale, 谓语是is，从陈述句改为一般疑问句时，谓语动词is提前，调整大小写，句号变问号陈述句中my引导的短语作为主语时，my要变为your，其他情况保持不变句中的主语是Dale，因此不用将 my friend 改为 your friend否定回答时将主语Dale替换成对应的人称代词 he', '\nIs Dale my friend?\nNo, he isn’t.');
INSERT INTO `t_answer` VALUES (10280, '句中的主语是 his name， 谓语是is, 改为一般疑问句时将谓语动词提前，调整大小写，句号变问号做肯定回答时，主语his name对应的人称代词是it', '\nIs his name Frank?\nYes, it is.');
INSERT INTO `t_answer` VALUES (10281, '句中主语是 he and I, 是一个组合，改成一般疑问句时，可以用you“你们”来代替，谓语是 are, 将谓语动词 are提前，调整大小写，句号变问号否定回答时，you “你们“ 在回答时需要改为 ”we”', '\nAre you a friends?\nNo, we aren’t');
INSERT INTO `t_answer` VALUES (10282, '本题中主语是my name，谓语动词是is，改为一般疑问句时，谓语动词is提前，my要变为your，调整大小写，句号变问号在回答部分根据主语my name替换为对应的人称代词it做否定回答', '\nIs your name Frank?\nNo, it isn’t.');
INSERT INTO `t_answer` VALUES (10283, '本题是there be 引导的一般疑问句，谓语动词是is，改为陈述句时，there提前，调整大小写，问号变句号Any用于否定句和疑问句，改回陈述句时需要改为some', '\nThere are some living things on other planets.');
INSERT INTO `t_answer` VALUES (10284, '本句主语是Eric，谓语动词是is，改为一般疑问句时，谓语动词is提前，my要变为your，调整大小写，句号变问号句意是“Eric是你的英文名吗？“ 根据句意可得知Eric在此处是作为英文名出现的，而非一个人，对应的人称代词是it', '\nIs Eric your English name?\nYes, it is.');
INSERT INTO `t_answer` VALUES (10285, '问句中的主语是 your favorite subject，谓语动词是is，改回陈述句时，主语提前，台哦转大小写，问号变句号问句时主语中的your要改回my', '\nMy favorite subject is Math.');
INSERT INTO `t_answer` VALUES (10286, '问句是there be引导的一般疑问句，改为肯定句的时候，将there提前，调整大小写，问号变句号', '\nThere are many countries in the world.');
INSERT INTO `t_answer` VALUES (10287, '句意“Daniel是你最好的朋友之一吗？“本句的主语是Daniel谓语动词是is, 改为一般疑问句时，谓语动词is提前，my要变为your，调整大小写，句号变问号在回答时，主语Daniel替换为对应的人称代词he', '\nIs Daniel one of your best friends?\nNo, he isn’t.');
INSERT INTO `t_answer` VALUES (10288, '问句中的主语是 your teacher’s name “你老师的姓名” 回答时由于问的时人名，而非人，对应的人称代词是it', '\nNo, it isn’t.');
INSERT INTO `t_answer` VALUES (10289, '从答句可以判断，问句应该是一般疑问句，排除A选项从回答中的they are可以判断一般疑问句问的时复数，而C选项是单数，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10290, '本题的主语是your name，提问对象是人名，而非人回答时替换的人称代词用it，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10291, '本句中的主语 French Fries“薯条“为常用复数，搭配的Be动词是are所以选C', 'C');
INSERT INTO `t_answer` VALUES (10292, '本题的主语是Mr. Green “格林先生”，对应的人称代词是it，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10293, '根据答句可以判断问句的主语是Amy, 谓语是is，在改为一般疑问句时，需要先将否定回答中的完整句改回肯定句 Amy is sweeping the floor. 然后再改成一般疑问句所以选C', 'C');
INSERT INTO `t_answer` VALUES (10294, '根据回答部分后半句的句意“我的笔是黑色的”判断，回答为否定回答，且主语pen对应的人称代词是it所以选B', 'B');
INSERT INTO `t_answer` VALUES (10295, '本句中提问的是第二人称Are you，因此回答应是第一人称I am，其他两项为干扰项，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10296, '本题主语是 your grandma’s birthday, 对应的人称代词是it，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10297, '本句答句可以判断本题的主语是she, 选项中Mark和Martin都是男生姓名，Maria是女生姓名，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10298, '根据肯定回答可以判断，问句为there be引导的一般疑问句，改为一般疑问句将谓语动词is提前，调整大小写，句号变问号所以选A', 'A');
INSERT INTO `t_answer` VALUES (10299, '根据选项和回答部分的句意 “请把它给我“可以判断是肯定回答 句中 give it to 后的人称代词需要使用宾格 A 和 B选项中 she是主格，错误所以选C', 'C');
INSERT INTO `t_answer` VALUES (10300, '问句中的you指代的是 boys and girls，复数，根据句意，回答方说的时自己，所以人称代词you需要替换成we，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10301, '本题问句中的you指代的时my baby，单数，回答时you要替换为I所以选C', 'C');
INSERT INTO `t_answer` VALUES (10302, '本句是一般将来时引导的一般疑问句，谓语动词是will，主语是your brother，回答时需要替换为人称代词he，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10303, '本题为句意题，根据答案可以判断，问题是”Jimmy在吗？“ A选项解释为”Jimmy在哪里？“；B选项解释为”Jimmy在吗？“；C选项解释为“你是Jimmy的爸爸吗？” 所以选B', 'B');
INSERT INTO `t_answer` VALUES (10304, '回答部分的一般疑问句中的主语news“新闻“不可数名词，不可数名词搭配的Be动词是is，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10305, 'late for school “上学迟到”，句中的late是做为形容词出现，并不是实义动词，所以不能做谓语动词，变为一般疑问句时不加助动词do或does，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10306, '本题是there be引导的一般疑问句，句中的主语是sheep，“羊” 单复同形根据lots of “许多”可以判断本句表达的是复数概念，be动词搭配用are，由于sheep单复同形，所以sheeps是错误的，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10307, '句意“他的父亲是做什么的？他的父亲是消防员吗？”根据Is his father a firefighter中的主语his father来判断，本句问的是人，所以对应的人称代词用he，且根据回答中He works at the 5th fire station. “他在第五消防局工作”可以判断回答为肯定回答，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10308, '本句中主语child“孩子”的复数形式是 children句意“学生们在学校里吗？ 是的，老师正在给他们上课“ 根据句意可以判断此处问的是复数children，因此可以排除A选项根据回答部分的意思可以判断为肯定回答，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10309, '句意“你们10：30在车站见吗？“ 从meet at bus ”在车站见面“可以判断这里的you是复数，回答时需要替换为we而不是I,所以选B', 'B');
INSERT INTO `t_answer` VALUES (10310, '本句回答可以判断本题为一般疑问句，其他两个选项都是干扰项，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10311, '本句中的主语news“新闻“为不可数名词，不可数名词搭配的Be动词是 is，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10312, '根据选项和回答部分的句意 “请把它们给他“可以判断是肯定回答 句中 give it to 后的人称代词需要使用宾格 A选项中 he是主格，B选项是否定回答，错误所以选C', 'C');
INSERT INTO `t_answer` VALUES (10313, '句意“你们每天早上回在会议室谈话吗？“从have a talk”谈话“可以判断这里的you是复数，回答时you需要替换为we而不是I，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10314, '根据句意Jason is having Music lesson now “Jason正在上音乐课”可以判断问句为否定回答，问句中的主语是Jason，回答时替换为人称代词he所以选C', 'C');
INSERT INTO `t_answer` VALUES (10315, '本题问句中的主语是it，谓语动词是is，提问和回答中的主谓语一致，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10316, '本题提问的是人名，而非某个人，根据答案的后半句句意 “他朋友的名字是Max” 可以判断回答为否定回答，且提问的是人名，回答时对应的人称代词是it所以选C', 'C');
INSERT INTO `t_answer` VALUES (10317, '根据句意“这里有很多的玩具娃娃，这些娃娃是你的吗？” 可以判断问句中的they指代的是 dolls，复数所以选B', 'B');
INSERT INTO `t_answer` VALUES (10318, '本题是there be引导的一般疑问句，提问时用Are there，回答时变成there are 此外由于题中fishes指的是多种鱼类，而非多条鱼，所以A选项不对,所以选B', 'B');
INSERT INTO `t_answer` VALUES (10319, '句意“ – 穿蓝色衣服的男孩是谁？ - 他是Mike“根据回答部分可以判断，问句问的是人，特殊疑问代词用who，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10320, '句意“-日记在哪里？ - 它再椅子下面“根据回答部分可以判断，问句问的是地点，特殊疑问代词用where，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10321, '句意“ - 这副耳机多少钱？- 59元“ 根据回答部分可以判断，问句问的是价格，不可数，特殊疑问代词用how much，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10322, '句意“ – 这个吹风机是什么颜色？ - 是蓝色的“ 根据回答可以判断问句问的是颜色，特殊疑问代词用what color，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10323, '句意“ – 鸟儿可以做什么？ - 它可以再天空飞“ 回答部分的 fly in the sky，是动词短语，搭配的特殊疑问代词用what，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10324, '根据后句句意“是直走然后再第二个路口左转吗？”可以判断前句问的是最近的书店的位置问方位的特殊疑问代词是where，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10325, '根据回答部分句意“我要去图书馆”可以判断前句问的是要去那里，问方位的特殊疑问代词是where，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10326, '根据回答部分句意“我头疼还咳嗽”可以判断问句是想问他有什么不舒服因此C和D排除B选项问的是it，因此错误，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10327, '根据回答可以判断问句提问的是数量C选项问的是多久（发生）；A和B选项问的是数量Tea虽然不可数，但是根据回答中的量词cups可以判断是可数，所以此处需要选A', 'A');
INSERT INTO `t_answer` VALUES (10328, '根据回答部分的句意“我要成为像杨利伟一样的人“可以判断问句问的是将来像成为什么样的人，特殊疑问代词用what，因此排除A和B选项像某人用like，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10329, '根据回答部分可以判断提问的是具体时间When提问的是时间端；what day问的是哪一天；how often问的是多久一次所以选C', 'C');
INSERT INTO `t_answer` VALUES (10330, '本题无法从答句判断提问内容，根据选项 what 提问的是东西，问句中已有painting brushes;who 提问人，问句中已有Wendy，所以排除A和B选项D选项的How many的问句构成是 How many + 可数名词复数 + 一般疑问句剩余部分，符合问句构成，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10331, '根据whose可以判断本句是由wh-疑问代词引导的特殊疑问句，空格部分应填一般疑问句句式，因此B选项排除根据主语trousers “裤子” 是常用复数，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10332, '句意“ - 我咳嗽感觉不舒服，我应该怎么办？-多喝热水好好休息” 根据句意判断 选B', 'B');
INSERT INTO `t_answer` VALUES (10333, '本句是there be引导的特殊疑问句根据how many 和 答案可以得知本句考点是对于数量提问的there be句型的构成 “How many + 复数名词 + are there + 介词短语?“ 需要注意D选项虽然是疑问句句式，但是是单数，与问句中的主语swans不匹配所以选B', 'B');
INSERT INTO `t_answer` VALUES (10334, '根据回答可以判断问句是there be句型的特殊疑问问句提问的对象是答句中的主语 two monkeys，在there be的特殊疑问句中，无论答句主语是单数还是复数，对主语提问时一般都用be动词的单数形式is，回答时却需要根据实际情况来决定所以选B', 'B');
INSERT INTO `t_answer` VALUES (10335, '本题的考点是there be句型的对数量提问的特殊疑问句构成，其构成是“How many + 复数名词 + are there + 介词短语?“ 虽然答案回答是单数但是问句中主语 art rooms 是复数，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10336, '根据答句可以判断提问部分问的是 go swimming 是动词短语，搭配的特殊疑问代词是 what… do，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10337, '根据答案可以得知本题提问的是时间，因此排除B选项What time问的是具体时间；when问的是时间段；what day问的是哪一天根据答案 June 1st “6月1日“ 可以得知问的是具体哪一天，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10338, '句意“- 你什么时候能完成你的作业？ - 要三个小时左右” 选项中what time问具体时间；what day问具体哪一天；when问时间段；how often问多久一次答案属于时间段，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10339, '句意“ – 他多久考完？ - 他要半个小时考完？“ 根据答句可以判断提问对象是时间段C和D选项都问的是哪一天，与答案不匹配B选项问具体时间，而非时间段所以选A', 'A');
INSERT INTO `t_answer` VALUES (10340, '从问句的构成上看，本题是there be句型对数量提问的特殊疑问句本句的主语是milk，不可数名词，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10341, '句意“- 我们什么时候走？16：30怎么样？ - 好的“ 根据句意判断本句提问对象是时间，选项中只有when问的是时间，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10342, '句意“-你最喜欢哪个季节？ - 我最喜欢夏天“ 根据答句可以得知问句提问的是季节，因此排除A和B选项在C和D选项中虽然意思上都成立，但是which 一般会在问句中给到限定的选择范围而本题中的问句没有给到具体选择范围，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10343, '根据答句中的 climbing the trees可以判断本题问句提问的是动词短语，提问动词短语需要用 what … do所以选C', 'C');
INSERT INTO `t_answer` VALUES (10344, 'This, That用来表示或标识人或事物的代词This”这个“单数，复数形式是these；That”那个”单数，复数形式是those句中主语pen 和 pencil 都是单数，排除B和C选项A选项是小写，句中空格都在句首，因此要大写，所以选D', 'D');
INSERT INTO `t_answer` VALUES (10345, '本句是是指示代词引导的一般疑问句， This”这个“单数，复数形式是these；That”那个”单数，复数形式是those通过over there “在那儿“可以判断距离较远，且主语panda是单数所以选B', 'B');
INSERT INTO `t_answer` VALUES (10346, 'This, That用来表示或标识人或事物的代词This”这个“单数，复数形式是these；That”那个”单数，复数形式是those本句主语 boy 是单数，因此排除B和D选项It是人称代词，用来指代的动物或物品，主语boy是人，因此排除，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10347, 'This, That用来表示或标识人或事物的代词This”这个“单数，复数形式是these；That”那个”单数，复数形式是those本句主语 girl 是单数，因此排除A和B选项通过under the tree “在树下“可以判断距离较远，因此需要明确具体位置，排除D选项，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10348, '句意“这位是怀特先生，这位是我的父亲前后两句用and连接前后两句都是单数， 指示代词中This”这个“单数，复数形式是these；That”那个”单数，复数形式是those因此排除A, B, 和 C选项所以选D', 'D');
INSERT INTO `t_answer` VALUES (10349, 'This, That用来表示或标识人或事物的代词This”这个“单数，复数形式是these；That”那个”单数，复数形式是those空格中的指示代词是用来替代前句中的 red sweater，单数所以排除B和D选项根据前句中one the wall “在墙上“ 可以判断距离较远，需要明确具体位置，排除A选项，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10350, '指示代词this / that的一般疑问句或特殊疑问句，用 it is… 来回答 所以选D', 'D');
INSERT INTO `t_answer` VALUES (10351, '根据问句中谓语动词is 和回答，可以判断为问句提问的是单数，因此排除C和D选项根据问句中的 Look at that table 可以判断距离较远，因此排除A选项，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10352, '指示代词this / that的一般疑问句或特殊疑问句，用 it is… 来回答，因此排除A和D选项C选项中 its是 it 的所有格并非 it is的缩写，正确的缩写是 it’s，因此排除所以选B', 'B');
INSERT INTO `t_answer` VALUES (10353, '指示代词this / that的一般疑问句或特殊疑问句，用 it is… 来回答，因此排除A和D选项C选项中 its是 it 的所有格并非 it is的缩写，正确的缩写是 it’s，因此排除所以选B', 'B');
INSERT INTO `t_answer` VALUES (10354, '指示代词this / that的一般疑问句或特殊疑问句，用 it is… 来回答肯定回答是Yes, it is.否定回答是No, it isn’t 或者 No, it is not.', '\nYes, it is.');
INSERT INTO `t_answer` VALUES (10355, '本句中的谓语动词是 isn’t 是 is not 的缩写改为肯定句去掉not，或者将isn’t改为is', '\nThat is Karen’s grandfather.');
INSERT INTO `t_answer` VALUES (10356, '指示代词this / that的一般疑问句或特殊疑问句，用 it is… 来回答肯定回答是Yes, it is.否定回答是No, it isn’t 或者 No, it is not.', '\nNo, it isn’t.\nNo. it is not.');
INSERT INTO `t_answer` VALUES (10357, '本句中的谓语动词是 isn’t 是 is not 的缩写改为肯定句去掉not，或者将isn’t改为is', '\nThat is Mrs. Smith.');
INSERT INTO `t_answer` VALUES (10358, '本句中的谓语动词是is，变为一般疑问句时，将谓语动词提前，调整大小写，句号变问号', '\nIs this one of your friends, Jonathan?');
INSERT INTO `t_answer` VALUES (10359, '本句需要先将一般疑问句改为肯定句，然后再改为否定句肯定句是This is ice cream. 改为否定句时，在谓语动词is后加not，或者将 is not缩写为isn’t', '\nThis isn’t ice cream.\nThis is not ice cream.');
INSERT INTO `t_answer` VALUES (10360, '指示代词this / that的一般疑问句或特殊疑问句，用 it is… 来回答肯定回答是Yes, it is.否定回答是No, it isn’t 或者 No, it is not.', '\nNo, it isn’t.\nNo. it is not.');
INSERT INTO `t_answer` VALUES (10361, '本句中的谓语动词是is，变为一般疑问句时，将谓语动词提前，调整大小写，句号变问号', '\nIs the pencil in that pencil-case?');
INSERT INTO `t_answer` VALUES (10362, '本句的谓语动词是is，改为否定句时，在谓语动词is后加not，或者将 is not缩写为isn’t', '\nThis isn’t my friend.\nThis is not my friend.');
INSERT INTO `t_answer` VALUES (10363, '指示代词this / that的一般疑问句或特殊疑问句，用 it is… 来回答肯定回答是Yes, it is.否定回答是No, it isn’t 或者 No, it is not.', '\nNo, it isn’t.\nNo. it is not.');
INSERT INTO `t_answer` VALUES (10374, '本题是打电话时的表达方式，凡是看不到人、只能听到声音的地方，都会用this is … speaking来表达回答部分问的是电话那端是谁打来的电话，所以用that，回答的一方的表达是“我这边是Susan“所以选C', 'C');
INSERT INTO `t_answer` VALUES (10375, '本题是打电话时的表达方式，凡是看不到人、只能听到声音的地方，都会用this is … speaking来表达句意“ - 你好，668-3896，请问（电话那端）是哪位？ - 这里是Ricky”根据句意提问的是在问电话那端是哪位，所以用that, 回答一方表达这里是Ricky，所以用this, 所以选C', 'C');
INSERT INTO `t_answer` VALUES (10376, '根据问句中的谓语动词is和答案可以判断提问的对象是单数，因此排除C和D选项根据问句中in the sky可以判断距离远，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10377, '根据问句中的over there可以判断距离远，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10378, '句意“我不要买这双黑色的鞋子，我要卖的是那双（黑色的鞋子）”选项中的one 是指代 pair of black shoes，根据量词优先原则，应改是单数，而选项中都表示为复数，因此排除A和C选项D选项中的pairs是复数与前句不符，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10379, '根据问句中的谓语动词is和答句可以判断提问对象是单数，因此排除A和B选项根据over there可以判断距离远，所以选D', 'D');
INSERT INTO `t_answer` VALUES (10380, '指示代词this/that引导的一般疑问句回答用it is… 所以A，B和D选项排除，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10381, '句意” - 为什么没有把盘子洗掉？ - 洗盘子那是你的工作“ 根据答句中的谓语动词is可以判断为单数，因此排除B选项A选项是it的所有格，形容词词性，不可单独做主语；D选项的one在此作为代词，也不可单独作为主语，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10382, '本题是打电话时的表达方式，凡是看不到人、只能听到声音的地方，都会用this is … speaking来表达句意“ – 你好我能和Jane通话吗？ - 我就是Jane” 根据句意，答句的说话人就是Jane因此用This来表达，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10383, '问句中的主语是car number “车牌号“ 属于东西，答句时替换为人称代词it，需注意本句并不是含有指示代词this/that的特殊疑问句,所以选A', 'A');
INSERT INTO `t_answer` VALUES (10384, '本题考点是that, it 和one作为代词的用法That与所知名词为同类，但不是同一个；而it与所指名词为同一；one可指人或物，只替代单数可数名词，复数用ones. 句意“A班的表演比B班的好“ 空格中指代的是performance “表演” 只在解释为“表演”时，是可数名词，因此排除A和B选项而C选项中ones是指代复数，表示同一类但不是同一个,所以选D', 'D');
INSERT INTO `t_answer` VALUES (10385, '本题考点是that, it 和one作为代词的用法That与所知名词为同类，但不是同一个；而it与所指名词为同一；one可指人或物，只替代单数可数名词，复数用ones. 句意“中国的人口比俄罗斯的人口要大很多“ 空格中指代的是population “人口” 不可数名词，因此排除A和D选项It指代的是同一个，与句意不符，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10386, '句意“-那个老师正在干什么？ - 他正在和其他老师开远程会议” 根据语境判断对话者距离那位老师远，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10387, '本题考点是that, it 和one作为代词的用法That与所知名词为同类，但不是同一个；而it与所指名词为同一；one可指人或物，只替代单数可数名词，复数用ones. 句意“ – 你工厂生产的这辆自行车比他们工厂生产的要贵很多 - 是的，你是对的，但是我这两也要好很多” 空格中指代的是the bike，可数名词单数，因此排除A和D选项It是指代同一个，与句意不符，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10388, '本题考点是that, it 和one作为代词的用法That与所知名词为同类，但不是同一个；而it与所指名词为同一；one可指人或物，只替代单数可数名词，复数用ones. 句意“ 在这个树枝上的梨比那个树枝上的大“ 空格中指代的是the pear，因此排除D选项It是指代同一个，与句意不符B选项中的ones表示复数，与替换对象不符，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10389, '本题考点是that, it 和one作为代词的用法That与所知名词为同类，但不是同一个；而it与所指名词为同一；one可指人或物，只替代单数可数名词，复数用ones. 句意“ 这两日本产的车子比美国产的要便宜很多” 空格中指代的是the car，单数，因此排除B选项；Ones指代复数与句意不符；it指代同一个，与句意不符，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10390, '本题考点是that, it 和one作为代词的用法That与所知名词为同类，但不是同一个；而it与所指名词为同一；one可指人或物，只替代单数可数名词，复数用ones. 句意“这件裙子的颜色和我的不一样“空格中指代的是 color of the skirt ”裙子的颜色“ 不可数因此排除D选项；it指代的是同一个，与句意不符；ones指代复数，与句意不符，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10391, '本题考点是that, it 和one作为代词的用法That与所知名词为同类，但不是同一个；而it与所指名词为同一；one可指人或物，只替代单数可数名词，复数用ones. 句意“北京的天气比上海的要冷很多，他们不一样” 空格中指代的是weather不可数所以排除A和C选项It指代同一个，与句意不符所以选D', 'D');
INSERT INTO `t_answer` VALUES (10392, '本题考点是that, it 和one作为代词的用法That与所知名词为同类，但不是同一个；而it与所指名词为同一；one可指人或物，只替代单数可数名词，复数用ones. 句意“火星上的气候比地球上的要糟糕很多“空格中指代climate”气候“不可数，因此排除A和B选项It指代的是同一个，与句意不符，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10393, '本题考点是that, it 和one作为代词的用法That与所知名词为同类，但不是同一个；而it与所指名词为同一；one可指人或物，只替代单数可数名词，复数用ones. 句意“他T恤的尺寸和我的不一样” 空格中指代the size of T-shirt，“T恤的尺寸“ 单数可数因此排除D选项；It指代同一个，与句意不符；ones指代复数，与句意不符，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10394, '根据句中谓语动词is可以判断提问对象是单数，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10395, '句意“看这张全家福照片，这是我的姑妈，这是我的姑父“根据句意可以判断说话者与照片距离近，所以选C', 'C');
INSERT INTO `t_answer` VALUES (10396, '本题考点是that, it 和one作为代词的用法That与所知名词为同类，但不是同一个；而it与所指名词为同一；one可指人或物，只替代单数可数名词，复数用ones. 句意“人类的血液化学组成成分与海洋动物的很像” 空格中指代的是chemical composition “化学组成（成分）”不可数因此排除B，C和D选项所以选A', 'A');
INSERT INTO `t_answer` VALUES (10397, '句意“生存还是死亡，这是个问题”出自莎士比亚的戏剧《哈姆雷特》中的经典名句，属于固定搭配，所以选B', 'B');
INSERT INTO `t_answer` VALUES (10398, '句意“黑人朋友将会在今年的五月访问中国” C和D选项搭配错误，因此排除；A选项This year “今年“ B选项last year “去年” 根据句子判断，时态是现在进行时表将来，因此B选项不符，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10399, '问句中的主语是Jim’s birthday属于东西，答句时替换为人称代词it，需注意本句并不是含有指示代词this/that的特殊疑问句,所以选B', 'B');
INSERT INTO `t_answer` VALUES (10400, '本题考点是固定搭配句意“我们这周六去格林公愿吧” 选项中B, C和D选项搭配错误，因此排除；所以选A', 'A');
INSERT INTO `t_answer` VALUES (10401, '本题考点是固定搭配句意“ 教授这周会来我们学校” B，C和D选项搭配错误，因此排除，所以选A', 'A');
INSERT INTO `t_answer` VALUES (10402, '句意“- 我尊敬的女王，请为这个蔬菜命名 -我在此明明这个绿色的花状物体西兰花”根据语境判断距离近，且是单数所以选A', 'A');
INSERT INTO `t_answer` VALUES (10403, '句意“你不能买这袋糖，这个对你的牙齿不好” 句中bag of candies 根据量词优先原则，判断为单数，因此排除A和C选项 根据语境判断距离这袋糖果近，所以选D', 'D');
INSERT INTO `t_answer` VALUES (103404, '根据monkeys可以判断空格处应填复数，根据over there可以判断距离较远，所以选C', 'C');
INSERT INTO `t_answer` VALUES (103405, '根据two boys可以判断空格处应填复数句意“这两位男孩时Green先生的儿子“ A，B和C选项都是单数，所以选D', 'D');
INSERT INTO `t_answer` VALUES (103406, '根据two girls可以判断空格处应填复数句意“这两个女孩是Mary和Linda“ A和C选项都是单数，所以排除，B选项they是人称代词，不能与two girls连用，所以选D', 'D');
INSERT INTO `t_answer` VALUES (103407, '根据pencils可以判断空格处应填复数，根据on the desk可以判断距离较远，所以才明确具体位置，所以选D', 'D');
INSERT INTO `t_answer` VALUES (103408, '句意“-Anna, 这是我的侄子Andy - Andy很高兴见到你” 介绍别人时，用This is比较正式，所以选D', 'D');
INSERT INTO `t_answer` VALUES (103409, '问句中提问 is this 或者 is that，回答时主谓语用 it is所以选C', 'C');
INSERT INTO `t_answer` VALUES (103410, '根据问句主语 brothers 和 谓语动词are判断为复数，因此排除C选项These 和 Those的一般问句回答时用they 因此排除A和D选项所以选B', 'B');
INSERT INTO `t_answer` VALUES (103411, '根据主语girls和谓语动词are可以判断主语是复数，所以选D', 'D');
INSERT INTO `t_answer` VALUES (103412, '根据主语 watchers和谓语动词are可以判断为复数，因此排除A选项 主语是your watches因此前面需要加指示代词，因此排除B根据over there判断距离较远，所以选D', 'D');
INSERT INTO `t_answer` VALUES (103413, '根据those 和 dictionaries “字典“ 可以判断为复数，谓语动词用are，且句子开头要大写，所以选B', 'B');
INSERT INTO `t_answer` VALUES (103414, '本题是一般疑问句，一般疑问句改为陈述句，将these提前，调整大小写，问号变句号', '\nThese are Helen’s pencils.');
INSERT INTO `t_answer` VALUES (103415, '本句的主语是 a box,变为复数，需要将box改为boxes，this is 改为复数形式 these are', '\nThese are boxes.');
INSERT INTO `t_answer` VALUES (103416, 'these 和 those引导的一般疑问句回答时用they are来回答，肯定回答Yes, they are. 或者缩写 Yes, they’re；否定回答No, they are not 或者缩写 No, they aren’t.', '\nNo, they aren’t\nNo, they are not.');
INSERT INTO `t_answer` VALUES (103417, '本句的主语时 your new schoolbag，变为复数形式改为 your new schoolbags，that is 改为复数形式those are', '\nThose are your new schoolbags.');
INSERT INTO `t_answer` VALUES (103418, 'these 和 those引导的一般疑问句回答时用they are来回答，肯定回答Yes, they are. 或者缩写 Yes, they’re；否定回答No, they are not 或者缩写 No, they aren’t.', '\nYes, they are.\nYes, they’re.');
INSERT INTO `t_answer` VALUES (103419, '本句中谓语动词是 are,变为否定句时，在谓语动词are之后加入not，或者缩写 aren’t', '\nThose are not my new teachers.\nThose aren’t my new teachers.');
INSERT INTO `t_answer` VALUES (103420, 'these 和 those引导的一般疑问句回答时用they are来回答，肯定回答Yes, they are. 或者缩写 Yes, they’re；否定回答No, they are not 或者缩写 No, they aren’t.', '\nNo, they aren’t.\nNo, they are not.');
INSERT INTO `t_answer` VALUES (103421, '本句是these引导的否定句，先要变为肯定句 these are my footballs变为一般疑问句是，谓语动词are提前，调整大小写，my改为your，句号变问号', '\nAre these your footballs?');
INSERT INTO `t_answer` VALUES (103422, '本句是these引导的否定句，先要变为肯定句 these are mice变为一般疑问句是，谓语动词are提前，调整大小写，句号变问号', '\nAre these mice?');
INSERT INTO `t_answer` VALUES (103423, '本句是those 引导的肯定句，变为一般疑问句是，谓语动词are提前，调整大小写，句号变问号', '\nAre those pencils long?');
INSERT INTO `t_answer` VALUES (103424, '根据问句中谓语动词are，和回答部分的They are可以判断提问对象是复数，因此排除C和D选项B选项回答部分的box是单数错误，因此排除，所以选A', 'A');
INSERT INTO `t_answer` VALUES (103425, '句意“-Anna, 这是我的侄子Andy - Andy很高兴见到你” 介绍别人时，用This is比较正式，所以选D', 'D');
INSERT INTO `t_answer` VALUES (103426, '第一个空格处根据uncle和this判断属于单数，搭配be动词is；第二个空格根据those和grandparents判断属于复数，搭配be动词are，所以选A', 'A');
INSERT INTO `t_answer` VALUES (103427, '根据主语work可以判断为复数，因此排除D选项根据in that factory可以判断距离较远，所以选B', 'B');
INSERT INTO `t_answer` VALUES (103428, '根据pencils可以判断第一个空格处填写复数，因此排除A和D选项；根据pencil case可以判断第二个空格应填单数，所以选C', 'C');
INSERT INTO `t_answer` VALUES (103429, '空格处指代的是time，属于东西，需要用人称代词it来替代，回答时也用it来回答，所以选C', 'C');
INSERT INTO `t_answer` VALUES (103430, '句意“ -能给我一些袜子吗？ - 架子上的那些袜子你要吗？ - 不，谢谢我喜欢这里这些，这些看起来舒服一点“ 根据对话主题socks可以排除A和B选项第一个空格处根据on the shelf可以判断距离较远，搭配those；第二个空格处there虽然解释为”那里”,但没有明确具体距离的远近，根据实际语境情况即可搭配those也可以搭配these，因此优先选取C选项为最终答案，所以选C', 'C');
INSERT INTO `t_answer` VALUES (103431, '句意“- 请给我三瓶睡，两块蛋糕和一把小刀，谢谢 - 就这些了吗？“ 空格处属于固定搭配，所以选C', 'C');
INSERT INTO `t_answer` VALUES (103432, '根据coats可以判断第一个空格处应填写复数，第二个空格处的one是泛指指代coat，此处为单数，所以选D', 'D');
INSERT INTO `t_answer` VALUES (103433, '本题考点是that, it 和one作为代词的用法That与所知名词为同类，但不是同一个；而it与所指名词为同一；one可指人或物，只替代单数可数名词，复数用ones. 句意“我篮子里的红酒比Sally的要多，” 空格处指代的是上文提到的bottles of wine， 属于同类但不是同一个，且 bottles of wine中量词是复数，因此需要将that变为复数形式those，所以选D', 'D');
INSERT INTO `t_answer` VALUES (103444, '本题考查固定搭配：sb. find it+形容词+to do sth.，表示 “某人发现做 某事怎样” 其中it是形式宾语，指代后面真正的宾语——动词不定式句意 “我发现把英语学好很必要“ 所以选D', 'D');
INSERT INTO `t_answer` VALUES (103445, '本题考查固定搭配：sb. find it+形容词+to do sth.，表示某人发现做 某事怎样，found是find的过去式，其中it是形式宾语，指代后面真正的宾语——动词不定式句意 “Elsa最终发现用中文来跟她的朋友交流非常激动” 所以选C', 'C');
INSERT INTO `t_answer` VALUES (103446, '本题考查固定搭配：sb. find it+形容词+to do sth.，表示某人发现做 某事怎样，found是find的过去式，其中it是形式宾语，指代后面真正的宾语——动词不定式句意 “我发现在这么短的时间内把所有工作都完成是非常困难的” 所以选B', 'B');
INSERT INTO `t_answer` VALUES (103447, '本题考察固定搭配：It is + 形容词 + （for sb.） +  to do sth. “做…对某人来说怎么样…” 句意“ 爬泰山对他们来说有一点困难”所以选B', 'B');
INSERT INTO `t_answer` VALUES (103448, '本题考点是that, it 和one作为代词的用法That与所知名词为同类，但不是同一个；而it与所指名词为同一；one可指人或物，只替代单数可数名词，复数用ones. 句意 “-我找不到我的杂志了，我觉得把它掉了” 空格处指代的是上文的magazine，是同一个东西，所以选A', 'A');
INSERT INTO `t_answer` VALUES (103449, '本题考点是that, it 和one作为代词的用法That与所知名词为同类，但不是同一个；而it与所指名词为同一；one可指人或物，只替代单数可数名词，复数用ones. 句意 “-我忘记带笔了，你能借我一支吗？” 空格处指代的是上文提到的笔，但是没有特定哪一只笔，属于泛指，所以选A', 'A');
INSERT INTO `t_answer` VALUES (103450, '本题考点是that, it 和one作为代词的用法That与所知名词为同类，但不是同一个；而it与所指名词为同一；one可指人或物，只替代单数可数名词，复数用ones. 句意“广州的花比北京的药更漂亮”，空格处指代的时flowers 复数，因此that也需要变为复数those，所以选A', 'A');
INSERT INTO `t_answer` VALUES (103451, '本题考察固定搭配：It is + 形容词 + （for sb.） +  to do sth. “做…对某人来说怎么样…” 句意“ 开车对我来说太难了”所以选B', 'B');
INSERT INTO `t_answer` VALUES (103452, '本题考点是that, it 和one作为代词的用法That与所知名词为同类，但不是同一个；而it与所指名词为同一；one可指人或物，只替代单数可数名词，复数用ones. 句意“ 中国的教育和美国的教育不同，中国学生的作业要比美国学生的多“ 第一个空格指代的是Education，属于同类但不是同一个，因此用that; 第二个空格指代的是students，同样是同类不同一个，因此也用that，但是第二个空格是复数形式，因此that要变换为复数those，所以选C', 'C');
INSERT INTO `t_answer` VALUES (103453, '本题考点是that, it 和one作为代词的用法That与所知名词为同类，但不是同一个；而it与所指名词为同一；one可指人或物，只替代单数可数名词，复数用ones. 句意 “-你找到你的包了吗？ - 我没找到它，但是我今天早上又买了一只“ 第一个空格处指代的是丢了的那只包，属于同一个，所以用it；第二个空格处是泛指又买了一个新的包，所以用one指代所以选C', 'C');
INSERT INTO `t_answer` VALUES (103454, '本题考查固定搭配：sb. find it+形容词+（for sb.） + to do sth，表示某人发现做某事怎样，其中it是形式宾语，指代后面真正的宾语——动词不定式句意 “我们发现在短时间内学好一门外语是不可能的”所以选A', 'A');
INSERT INTO `t_answer` VALUES (103455, '本题考察固定搭配：it is +形容词 + (for sb) + to do sth. “做…对某人来说怎么样…” 句意“ 你难道不认为朋友间互相帮助是非常重要的吗？”所以选B', 'B');
INSERT INTO `t_answer` VALUES (103456, '本题考查固定搭配：sb. find it+形容词+for sb. + to do sth.，表示某人发现做某事怎样，其中it是形式宾语，指代后面真正的宾语——动词不定式句意 “你发现和Yoyo玩非常有意思了吗？” 所以选B', 'B');
INSERT INTO `t_answer` VALUES (103457, '本题考查固定搭配：it is + 形容词+（for sb.） + to do sth.，“做…对某人来说怎么样…”，其中it是形式宾语，指代后面真正的宾语——动词不定式句意 “-我觉得毫不费力的学会一门科目是不可能的 - 我同意“ 所以选B', 'B');
INSERT INTO `t_answer` VALUES (103458, '本题考点是that, it 和one作为代词的用法That与所知名词为同类，但不是同一个；而it与所指名词为同一；one可指人或物，只替代单数可数名词，复数用ones. 句意“你的裙子好漂亮，在哪里买的？我也要买一条第一个空格处指代的是同一件裙子，因此用it；第二个空格需要指代一件一样的但是不是同一件因此此处用one替代，所以选A', 'A');
INSERT INTO `t_answer` VALUES (103459, '本题考点是that, it 和one作为代词的用法That与所知名词为同类，但不是同一个；而it与所指名词为同一；one可指人或物，只替代单数可数名词，复数用ones. 句意“ – 我要一个能拿来喝汤的东西 - 你需要一个勺子是吗？ 好的 我给你拿” 空格中指代的是上文提到的spoonThat指代同类不同一个，不符合；it指同一个，但是文中没有说明是哪个特定的勺子，属于泛指，也不符合，所以选D', 'D');
INSERT INTO `t_answer` VALUES (103460, '本题考点是that, it 和one作为代词的用法That与所知名词为同类，但不是同一个；而it与所指名词为同一；one可指人或物，只替代单数可数名词，复数用ones. 句意“ – 不好意思，你能告诉我银行在哪里吗？ - 我知道有一家距离很近，你可以很容易就找到它“ 空格处指代的是答句中的one，也就是问句中的bank此处答句中的one是泛指，指代银行，只说明距离近，但没有说是特定哪一家，但是空格处指代的是答句上文提到的那一间银行，属于同一个，所以选D', 'D');
INSERT INTO `t_answer` VALUES (103461, '本题考查固定搭配：it is + 形容词+（for sb.） + to do sth.，表示“做…对某人来说怎么样…”，其中it是形式宾语，指代后面真正的宾语——动词不定式句意 “ 你觉得玩电脑游戏很有趣吗？” 所以选C', 'C');
INSERT INTO `t_answer` VALUES (103462, '本题考点是that, it 和one作为代词的用法That与所知名词为同类，但不是同一个；而it与所指名词为同一；one可指人或物，只替代单数可数名词，复数用ones. 句意 “人们工作没有电脑的话会很不方便“ 空格处指代be之后的内容，属于同一件事情所以选D', 'D');
INSERT INTO `t_answer` VALUES (103463, '本题考点是that, it 和one作为代词的用法That与所知名词为同类，但不是同一个；而it与所指名词为同一；one可指人或物，只替代单数可数名词，复数用ones. 句意 “- 请给我一份最新的报纸 - 只有一份了，先生，你要这一份吗？” 空格处指代的是仅剩的最后那一份报纸，属于同一个，所以选A', 'A');
INSERT INTO `t_answer` VALUES (103464, '本题考点是that, it 和one作为代词的用法That与所知名词为同类，但不是同一个；而it与所指名词为同一；one可指人或物，只替代单数可数名词，复数用ones. 句意 “-为什么不休息一下？ - 我们刚刚没休息过吗?” 空格处没有特指是哪一次休息，属于泛指所以选B', 'B');
COMMIT;

-- ----------------------------
-- Table structure for t_exer_eval
-- ----------------------------
DROP TABLE IF EXISTS `t_exer_eval`;
CREATE TABLE `t_exer_eval` (
  `exer_eval_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `consume_time` bigint(20) DEFAULT NULL,
  `exer_eval_score` bigint(20) DEFAULT NULL,
  `exer_eval_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `exercise_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`exer_eval_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606569354544 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_exer_eval
-- ----------------------------
BEGIN;
INSERT INTO `t_exer_eval` VALUES (1606569354413, 120, 20, '2020-11-30 09:45:05', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354414, 120, 20, '2020-11-30 09:45:05', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354415, 120, 20, '2020-11-30 09:45:22', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354416, 120, 20, '2020-11-30 09:45:22', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354417, 120, 20, '2020-11-30 09:45:22', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354418, 120, 20, '2020-11-30 09:45:26', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354419, 120, 20, '2020-11-30 09:45:29', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354420, 120, 20, '2020-11-30 09:45:29', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354421, 120, 20, '2020-11-30 09:45:29', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354422, 120, 15, '2020-11-30 10:51:09', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354423, 120, 15, '2020-11-30 10:51:09', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354424, 120, 0, '2020-11-30 10:58:49', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354425, 120, 0, '2020-11-30 10:58:49', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354426, 120, 0, '2020-11-30 11:00:13', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354427, 120, 0, '2020-11-30 11:00:13', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354428, 120, 0, '2020-11-30 11:06:19', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354429, 120, 0, '2020-11-30 11:06:19', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354430, 120, 0, '2020-11-30 11:07:44', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354431, 120, 0, '2020-11-30 11:07:44', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354432, 120, 0, '2020-11-30 11:08:08', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354433, 120, 0, '2020-11-30 11:08:08', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354434, 120, 0, '2020-11-30 11:12:57', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354435, 120, 0, '2020-11-30 11:12:57', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354436, 120, 0, '2020-11-30 11:13:19', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354437, 120, 0, '2020-11-30 11:13:19', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354438, 120, 0, '2020-11-30 11:13:19', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354439, 120, 0, '2020-11-30 11:13:27', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354440, 120, 0, '2020-11-30 11:13:29', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354441, 120, 0, '2020-11-30 11:13:29', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354442, 120, 0, '2020-11-30 11:13:29', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354443, 120, 5, '2020-11-30 11:38:53', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354444, 120, 5, '2020-11-30 11:38:53', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354445, 120, 5, '2020-11-30 11:41:38', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354446, 120, 5, '2020-11-30 11:41:38', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354447, 120, 5, '2020-11-30 11:41:51', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354448, 120, 5, '2020-11-30 11:41:51', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354449, 120, 5, '2020-11-30 11:41:51', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354450, 120, 0, '2020-11-30 11:50:20', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354451, 120, 0, '2020-11-30 11:50:20', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354452, 120, 0, '2020-11-30 11:50:20', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354453, 120, 0, '2020-11-30 11:53:02', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354454, 120, 0, '2020-11-30 11:53:02', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354455, 120, 0, '2020-12-02 08:48:42', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354456, 120, 0, '2020-12-02 08:48:42', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354457, 120, 0, '2020-12-02 08:49:25', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354458, 120, 0, '2020-12-02 08:49:25', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354459, 120, 0, '2020-12-02 08:49:36', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354460, 120, 0, '2020-12-02 08:49:36', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354461, 120, 0, '2020-12-02 08:54:09', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354462, 120, 0, '2020-12-02 08:54:09', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354463, 120, 4, '2020-12-02 10:48:45', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354464, 120, 4, '2020-12-02 10:48:45', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354465, 120, 4, '2020-12-02 10:49:01', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354466, 120, 4, '2020-12-02 10:49:01', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354467, 120, 8, '2020-12-02 10:54:43', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354468, 120, 8, '2020-12-02 10:54:43', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354469, 120, 10, '2020-12-19 19:35:31', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354470, 120, 10, '2020-12-19 19:35:31', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354471, 120, 5, '2020-12-19 21:03:00', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354472, 120, 5, '2020-12-19 21:03:00', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354473, 120, 5, '2020-12-19 21:08:33', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354474, 120, 5, '2020-12-19 21:08:33', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354475, 120, 0, '2020-12-19 21:11:32', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354476, 120, 0, '2020-12-19 21:11:32', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354477, 120, 5, '2020-12-19 21:14:22', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354478, 120, 5, '2020-12-19 21:14:22', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354479, 120, 0, '2020-12-19 21:15:34', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354480, 120, 0, '2020-12-19 21:15:34', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354481, 120, 0, '2020-12-19 21:19:24', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354482, 120, 0, '2020-12-19 21:19:24', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354483, 120, 0, '2020-12-19 21:27:22', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354484, 120, 0, '2020-12-19 21:27:22', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354485, 120, 0, '2020-12-19 21:28:07', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354486, 120, 0, '2020-12-19 21:28:07', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354487, 120, 5, '2020-12-19 21:33:54', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354488, 120, 5, '2020-12-19 21:33:54', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354489, 120, 0, '2020-12-19 21:40:24', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354490, 120, 0, '2020-12-19 21:40:24', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354491, 120, 0, '2020-12-19 21:49:52', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354492, 120, 0, '2020-12-19 21:49:52', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354493, 120, 0, '2020-12-19 21:52:17', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354494, 120, 0, '2020-12-19 21:52:17', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354495, 120, 0, '2020-12-19 21:53:24', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354496, 120, 0, '2020-12-19 21:53:24', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354497, 120, 0, '2020-12-19 21:55:06', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354498, 120, 0, '2020-12-19 21:55:06', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354499, 120, 0, '2020-12-19 22:02:40', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354500, 120, 0, '2020-12-19 22:02:40', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354501, 120, 0, '2020-12-20 12:42:11', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354502, 120, 0, '2020-12-20 12:42:11', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354503, 120, 0, '2020-12-20 12:59:44', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354504, 120, 0, '2020-12-20 12:59:44', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354505, 120, 0, '2020-12-20 13:17:55', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354506, 120, 0, '2020-12-20 13:17:55', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354507, 120, 0, '2020-12-20 13:18:43', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354508, 120, 0, '2020-12-20 13:18:43', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354509, 120, 0, '2020-12-20 13:19:12', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354510, 120, 0, '2020-12-20 13:19:12', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354511, 120, 0, '2020-12-20 15:23:15', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354512, 120, 0, '2020-12-20 15:23:15', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354513, 120, 0, '2020-12-20 15:24:35', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354514, 120, 0, '2020-12-20 15:24:35', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354515, 120, 0, '2020-12-20 15:25:44', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354516, 120, 0, '2020-12-20 15:25:44', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354517, 120, 0, '2020-12-20 15:40:14', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354518, 120, 0, '2020-12-20 15:40:14', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354519, 120, 5, '2020-12-20 15:54:07', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354520, 120, 5, '2020-12-20 15:54:07', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354521, 120, 5, '2020-12-20 15:55:10', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354522, 120, 5, '2020-12-20 15:55:31', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354523, 120, 5, '2020-12-20 15:55:31', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354524, 120, 0, '2020-12-20 15:56:55', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354525, 120, 0, '2020-12-20 15:56:55', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354526, 120, 0, '2020-12-20 15:58:47', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354527, 120, 0, '2020-12-20 15:58:47', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354528, 120, 0, '2020-12-20 18:47:45', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354529, 120, 0, '2020-12-20 18:47:45', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354530, 120, 0, '2020-12-20 18:47:59', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354531, 120, 0, '2020-12-20 18:47:59', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354532, 120, 15, '2020-12-20 19:25:01', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354533, 120, 15, '2020-12-20 19:25:01', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354534, 120, 0, '2020-12-20 19:26:03', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354535, 120, 0, '2020-12-20 19:26:03', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354536, 120, 10, '2020-12-20 19:36:14', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354537, 120, 10, '2020-12-20 19:36:14', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354538, 120, 10, '2020-12-20 19:38:32', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354539, 120, 10, '2020-12-20 19:38:32', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354540, 120, 0, '2020-12-20 19:42:36', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354541, 120, 0, '2020-12-20 19:42:36', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354542, 120, 0, '2020-12-20 19:42:43', NULL, 3);
INSERT INTO `t_exer_eval` VALUES (1606569354543, 120, 0, '2020-12-20 19:42:43', NULL, 3);
COMMIT;

-- ----------------------------
-- Table structure for t_exercise
-- ----------------------------
DROP TABLE IF EXISTS `t_exercise`;
CREATE TABLE `t_exercise` (
  `exercise_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `exercise_attr` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `grammar_id` bigint(20) DEFAULT NULL,
  `prob_list` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `point_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`exercise_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608464560413 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_exercise
-- ----------------------------
BEGIN;
INSERT INTO `t_exercise` VALUES (1606700675827, 'ai', -1, '[10006, 10011, 10012, 10010, 10001, 10008, 10002, 10005, 10007, 10003, 10004, 10009, 10259, 10260, 10261]', '2020-11-30 09:44:35', NULL);
INSERT INTO `t_exercise` VALUES (1606704643537, 'ai', -1, '[10012, 10002, 10015, 10006, 10003, 10009, 10001, 10004, 10011, 10013, 10010, 10005, 10007, 10014, 10008, 10259, 10260, 10261, 10262, 10263]', '2020-11-30 10:50:43', NULL);
INSERT INTO `t_exercise` VALUES (1606705120085, 'ai', -1, '[10016, 10013, 10015, 10002, 10009, 10001, 10008, 10006, 10004, 10003, 10010, 10005, 10017, 10014, 10012, 10011, 10007, 10259, 10260, 10261, 10262, 10263, 10264, 10265, 10266]', '2020-11-30 10:58:40', NULL);
INSERT INTO `t_exercise` VALUES (1606705195360, 'ai', -1, '[10004, 10009, 10003, 10010, 10008, 10002, 10017, 10006, 10007, 10016, 10005, 10015, 10011, 10013, 10012, 10014, 10001, 10259, 10260, 10261, 10262, 10263, 10264, 10265, 10266]', '2020-11-30 10:59:55', NULL);
INSERT INTO `t_exercise` VALUES (1606705567651, 'ai', -1, '[10002, 10011, 10004, 10003, 10001, 10009, 10013, 10006, 10015, 10005, 10012, 10008, 10010, 10014, 10007, 10259, 10260, 10261, 10262, 10263]', '2020-11-30 11:06:07', NULL);
INSERT INTO `t_exercise` VALUES (1606705677336, 'ai', -1, '[10012, 10006, 10004, 10002, 10001, 10008, 10009, 10003, 10010, 10007, 10005, 10011, 10259, 10260, 10261]', '2020-11-30 11:07:57', NULL);
INSERT INTO `t_exercise` VALUES (1606705956672, 'ai', -1, '[10005, 10002, 10001, 10012, 10009, 10008, 10011, 10003, 10010, 10007, 10004, 10006, 10259, 10260, 10261]', '2020-11-30 11:12:36', NULL);
INSERT INTO `t_exercise` VALUES (1606707520536, 'ai', -1, '[10005, 10001, 10015, 10006, 10010, 10013, 10012, 10011, 10008, 10003, 10014, 10004, 10002, 10007, 10009, 10259, 10260, 10261, 10262, 10263]', '2020-11-30 11:38:40', NULL);
INSERT INTO `t_exercise` VALUES (1606707687221, 'ai', -1, '[10008, 10011, 10005, 10007, 10012, 10001, 10003, 10004, 10014, 10015, 10006, 10002, 10013, 10010, 10009, 10259, 10260, 10261, 10262, 10263]', '2020-11-30 11:41:27', NULL);
INSERT INTO `t_exercise` VALUES (1606707965841, 'ai', -1, '[10004, 10007, 10006, 10012, 10005, 10002, 10010, 10011, 10003, 10001, 10009, 10008, 10259, 10260, 10261]', '2020-11-30 11:46:05', NULL);
INSERT INTO `t_exercise` VALUES (1606708374289, 'ai', -1, '[10006, 10001, 10009, 10010, 10011, 10007, 10012, 10014, 10015, 10008, 10004, 10002, 10003, 10013, 10005, 10259, 10260, 10261, 10262, 10263]', '2020-11-30 11:52:54', NULL);
INSERT INTO `t_exercise` VALUES (1606708385461, 'ai', -1, '[10010, 10009, 10006, 10008, 10004, 10003, 10001, 10011, 10007, 10012, 10002, 10005, 10259, 10260, 10261]', '2020-11-30 11:53:05', NULL);
INSERT INTO `t_exercise` VALUES (1606708413535, 'ai', -1, '[10002, 10004, 10006, 10011, 10007, 10005, 10010, 10008, 10003, 10012, 10009, 10001, 10259, 10260, 10261]', '2020-11-30 11:53:33', NULL);
INSERT INTO `t_exercise` VALUES (1606870089937, 'ai', -1, '[10002, 10005, 10001, 10003, 10009, 10012, 10004, 10006, 10011, 10014, 10013, 10007, 10015, 10010, 10008, 10259, 10260, 10261, 10262, 10263]', '2020-12-02 08:48:10', NULL);
INSERT INTO `t_exercise` VALUES (1606870828881, 'ai', -1, '[10004, 10007, 10002, 10008, 10001, 10005, 10010, 10003, 10012, 10009, 10006, 10011, 10259, 10260, 10261]', '2020-12-02 09:00:29', NULL);
INSERT INTO `t_exercise` VALUES (1606877310926, 'ai', -1, '[10010, 10004, 10011, 10009, 10017, 10007, 10015, 10012, 10005, 10001, 10013, 10006, 10014, 10002, 10003, 10016, 10008, 10259, 10260, 10261, 10262, 10263, 10264, 10265, 10266]', '2020-12-02 10:48:31', NULL);
INSERT INTO `t_exercise` VALUES (1606877673199, 'ai', -1, '[10005, 10013, 10003, 10009, 10010, 10017, 10011, 10008, 10002, 10012, 10015, 10006, 10016, 10014, 10007, 10004, 10001, 10259, 10260, 10261, 10262, 10263, 10264, 10265, 10266]', '2020-12-02 10:54:33', NULL);
INSERT INTO `t_exercise` VALUES (1607746390319, 'ai', -1, '[10010, 10013, 10001, 10003, 10011, 10002, 10006, 10015, 10004, 10014, 10007, 10005, 10009, 10008, 10012, 10259, 10260, 10261, 10262, 10263]', '2020-12-12 12:13:10', NULL);
INSERT INTO `t_exercise` VALUES (1608377723861, 'ai', -1, '[10005, 10011, 10009, 10001, 10012, 10010, 10014, 10013, 10004, 10002, 10006, 10003, 10007, 10008, 10015, 10259, 10260, 10261, 10262, 10263]', '2020-12-19 19:35:24', NULL);
INSERT INTO `t_exercise` VALUES (1608377737881, 'ai', -1, '[10004, 10008, 10006, 10005, 10010, 10007, 10003, 10012, 10001, 10011, 10009, 10002, 10259, 10260, 10261]', '2020-12-19 19:35:37', NULL);
INSERT INTO `t_exercise` VALUES (1608379110259, 'ai', -1, '[10008, 10014, 10012, 10009, 10005, 10002, 10011, 10007, 10010, 10013, 10006, 10001, 10003, 10004, 10015, 10259, 10260, 10261, 10262, 10263]', '2020-12-19 19:58:30', NULL);
INSERT INTO `t_exercise` VALUES (1608381868661, 'ai', -1, '[10009, 10010, 10011, 10001, 10002, 10005, 10008, 10003, 10006, 10012, 10007, 10004, 10259, 10260, 10261]', '2020-12-19 20:44:28', NULL);
INSERT INTO `t_exercise` VALUES (1608382261445, 'ai', -1, '[]', '2020-12-19 20:51:01', NULL);
INSERT INTO `t_exercise` VALUES (1608382397813, 'ai', -1, '[]', '2020-12-19 20:53:17', NULL);
INSERT INTO `t_exercise` VALUES (1608382408479, 'ai', -1, '[10001, 10002]', '2020-12-19 20:53:28', NULL);
INSERT INTO `t_exercise` VALUES (1608382494652, 'ai', -1, '[10004, 10010, 10014, 10003, 10001, 10007, 10005, 10002, 10006, 10011, 10008, 10015, 10013, 10012, 10009, 10259, 10260, 10261, 10262, 10263]', '2020-12-19 20:54:54', NULL);
INSERT INTO `t_exercise` VALUES (1608382940863, 'ai', -1, '[10009, 10002, 10005, 10003, 10001, 10004, 10007, 10010, 10006, 10008, 10279, 10280, 10281, 10282, 10283, 10284, 10285, 10286, 10287, 10288]', '2020-12-19 21:02:21', NULL);
INSERT INTO `t_exercise` VALUES (1608383074838, 'ai', -1, '[]', '2020-12-19 21:04:34', NULL);
INSERT INTO `t_exercise` VALUES (1608383297325, 'ai', -1, '[10005,10007,10010,10002,10006,10004,10001,10003,10008,10009,10279,10280,10281,10282,10283,10284,10285,10286,10287,10288]', '2020-12-19 21:08:17', NULL);
INSERT INTO `t_exercise` VALUES (1608383320134, 'ai', -1, '[]', '2020-12-19 21:08:40', NULL);
INSERT INTO `t_exercise` VALUES (1608383481336, 'ai', -1, '[10007,10002,10006,10001,10005,10004,10003,10008,10009,10010,10279,10280,10281,10282,10283,10284,10285,10286,10287,10288]', '2020-12-19 21:11:21', NULL);
INSERT INTO `t_exercise` VALUES (1608383495836, 'ai', -1, '[]', '2020-12-19 21:11:35', NULL);
INSERT INTO `t_exercise` VALUES (1608383610344, 'ai', -1, '[]', '2020-12-19 21:13:30', NULL);
INSERT INTO `t_exercise` VALUES (1608383648844, 'ai', -1, '[10009,10010,10002,10001,10005,10003,10004,10007,10008,10006,10279,10280,10281,10282,10283,10284,10285,10286,10287,10288]', '2020-12-19 21:14:08', NULL);
INSERT INTO `t_exercise` VALUES (1608383726975, 'ai', -1, '[10004,10006,10007,10010,10008,10005,10001,10002,10009,10003,10279,10280,10281,10282,10283,10284,10285,10286,10287,10288]', '2020-12-19 21:15:27', NULL);
INSERT INTO `t_exercise` VALUES (1608384304217, 'ai', -1, '[10003,10002,10008,10005,10001,10010,10007,10006,10004,10009,10279,10280,10281,10282,10283,10284,10285,10286,10287,10288]', '2020-12-19 21:25:04', NULL);
INSERT INTO `t_exercise` VALUES (1608384479089, 'ai', -1, '[10002,10009,10008,10005,10001,10010,10006,10004,10003,10007,10279,10280,10281,10282,10283,10284,10285,10286,10287,10288]', '2020-12-19 21:27:59', NULL);
INSERT INTO `t_exercise` VALUES (1608384815159, 'ai', -1, '[10008,10001,10006,10002,10010,10009,10004,10003,10007,10005,10279,10280,10281,10282,10283,10284,10285,10286,10287,10288]', '2020-12-19 21:33:35', NULL);
INSERT INTO `t_exercise` VALUES (1608385216543, 'ai', -1, '[10005,10007,10010,10009,10003,10004,10001,10008,10006,10002,10279,10280,10281,10282,10283,10284,10285,10286,10287,10288]', '2020-12-19 21:40:16', NULL);
INSERT INTO `t_exercise` VALUES (1608385388184, 'ai', -1, '[10002,10005,10008,10003,10009,10006,10007,10004,10001,10010,10279,10280,10281,10282,10283,10284,10285,10286,10287,10288]', '2020-12-19 21:43:08', NULL);
INSERT INTO `t_exercise` VALUES (1608385784906, 'ai', -1, '[10004,10008,10007,10010,10009,10001,10003,10005,10002,10006,10279,10280,10281,10282,10283,10284,10285,10286,10287,10288]', '2020-12-19 21:49:45', NULL);
INSERT INTO `t_exercise` VALUES (1608385930756, 'ai', -1, '[10004,10007,10002,10006,10003,10010,10001,10009,10008,10005,10279,10280,10281,10282,10283,10284,10285,10286,10287,10288]', '2020-12-19 21:52:10', NULL);
INSERT INTO `t_exercise` VALUES (1608385963059, 'ai', -1, '[10001,10005,10008,10007]', '2020-12-19 21:52:43', NULL);
INSERT INTO `t_exercise` VALUES (1608386086170, 'ai', -1, '[10002,10007,10010,10008,10004,10006,10009,10005,10001,10003,10279,10280,10281,10282,10283,10284,10285,10286,10287,10288]', '2020-12-19 21:54:46', NULL);
INSERT INTO `t_exercise` VALUES (1608386112000, 'ai', -1, '[10001,10005,10008,10007,10279]', '2020-12-19 21:55:12', NULL);
INSERT INTO `t_exercise` VALUES (1608386565050, 'ai', -1, '[10005,10008,10010,10001,10009,10006,10003,10004,10002,10007,10279,10280,10281,10282,10283,10284,10285,10286,10287,10288]', '2020-12-19 22:02:45', NULL);
INSERT INTO `t_exercise` VALUES (1608439161019, 'ai', -1, '[10199,10200,10201,10202,10203,10204,10205,10206,10207,10208,10229,10230,10231,10232,10233,10234,10235,10236,10237,10238]', '2020-12-20 12:39:21', NULL);
INSERT INTO `t_exercise` VALUES (1608439685334, 'ai', -1, '[10001,10005,10008,10007,10279,10237,10203]', '2020-12-20 12:48:05', NULL);
INSERT INTO `t_exercise` VALUES (1608440360265, 'ai', -1, '[10319,10320,10321,10322,10323,10324,10325,10326,10327,10328,10329,10330,10331,10332,10333,10334,10335,10336,10337,10338]', '2020-12-20 12:59:20', NULL);
INSERT INTO `t_exercise` VALUES (1608440389015, 'ai', -1, '[10001,10005,10008,10007,10279,10237,10203]', '2020-12-20 12:59:49', NULL);
INSERT INTO `t_exercise` VALUES (1608441147874, 'ai', -1, '[10001,10005,10008,10007,10279,10237,10203]', '2020-12-20 13:12:27', NULL);
INSERT INTO `t_exercise` VALUES (1608441457480, 'ai', -1, '[10001,10005,10008,10007,10203,10279,10237]', '2020-12-20 13:17:37', NULL);
INSERT INTO `t_exercise` VALUES (1608441515025, 'ai', -1, '[10001,10005,10008,10007,10203,10279,10237]', '2020-12-20 13:18:35', NULL);
INSERT INTO `t_exercise` VALUES (1608441535051, 'ai', -1, '[10319,10320,10321,10322,10323,10324,10325,10326,10327,10328,10329,10330,10331,10332,10333,10334,10335,10336,10337,10338]', '2020-12-20 13:18:55', NULL);
INSERT INTO `t_exercise` VALUES (1608441560827, 'ai', -1, '[10001,10005,10008,10007,10203,10279,10237]', '2020-12-20 13:19:20', NULL);
INSERT INTO `t_exercise` VALUES (1608448983494, 'ai', -1, '[10319,10320,10321,10322,10323,10324,10325,10326,10327,10328,10329,10330,10331,10332,10333,10334,10335,10336,10337,10338]', '2020-12-20 15:23:03', NULL);
INSERT INTO `t_exercise` VALUES (1608449062147, 'ai', -1, '[10319,10320,10321,10322,10323,10324,10325,10326,10327,10328,10329,10330,10331,10332,10333,10334,10335,10336,10337,10338]', '2020-12-20 15:24:22', NULL);
INSERT INTO `t_exercise` VALUES (1608449137164, 'ai', -1, '[10319,10320,10321,10322,10323,10324,10325,10326,10327,10328,10329,10330,10331,10332,10333,10334,10335,10336,10337,10338]', '2020-12-20 15:25:37', NULL);
INSERT INTO `t_exercise` VALUES (1608449239228, 'ai', -1, '[10001,10005,10008,10007,10203,10279,10237]', '2020-12-20 15:27:19', NULL);
INSERT INTO `t_exercise` VALUES (1608449549304, 'ai', -1, '[10319,10320,10321,10322,10323,10324,10325,10326,10327,10328,10329,10330,10331,10332,10333,10334,10335,10336,10337,10338]', '2020-12-20 15:32:29', NULL);
INSERT INTO `t_exercise` VALUES (1608450008333, 'ai', -1, '[10319,10320,10321,10322,10323,10324,10325,10326,10327,10328,10329,10330,10331,10332,10333,10334,10335,10336,10337,10338]', '2020-12-20 15:40:08', NULL);
INSERT INTO `t_exercise` VALUES (1608450085160, 'ai', -1, '[10001,10005,10008,10007,10203,10319,10279,10237]', '2020-12-20 15:41:25', NULL);
INSERT INTO `t_exercise` VALUES (1608450767025, 'ai', -1, '[10319,10320,10321,10322,10323,10324,10325,10326,10327,10328,10329,10330,10331,10332,10333,10334,10335,10336,10337,10338]', '2020-12-20 15:52:47', NULL);
INSERT INTO `t_exercise` VALUES (1608450809953, 'ai', -1, '[103404,103405,103406,103407,103408,103409,103410,103411,103412,103413,103414,103415,103416,103417,103418,103419,103420,103421,103422,103423]', '2020-12-20 15:53:30', NULL);
INSERT INTO `t_exercise` VALUES (1608450945987, 'ai', -1, '[10001,10005,10008,10007,10203,10319,103410,103411,103408,10279,10237]', '2020-12-20 15:55:46', NULL);
INSERT INTO `t_exercise` VALUES (1608451022819, 'ai', -1, '[10139,10140,10141,10142,10143,10144,10145,10146,10147,10148,10149,10150,10151,10152,10153,10154,10155,10156,10157,10158]', '2020-12-20 15:57:02', NULL);
INSERT INTO `t_exercise` VALUES (1608451129596, 'ai', -1, '[]', '2020-12-20 15:58:49', NULL);
INSERT INTO `t_exercise` VALUES (1608461259722, 'ai', -1, '[10039,10050,10028,10064,10078,10020,10057,10023,10063,10012,10062,10029,10043,10052,10011,10014,10005,10030,10067,10041]', '2020-12-20 18:47:40', NULL);
INSERT INTO `t_exercise` VALUES (1608461900625, 'ai', -1, '[]', '2020-12-20 18:58:20', NULL);
INSERT INTO `t_exercise` VALUES (1608463481197, 'ai', -1, '[10097,10094,10111,10103,10107,10095,10088,10113,10086,10105,10212,10319,10391,10064,10168,10103,10018,10127,103411,103408]', '2020-12-20 19:24:41', NULL);
INSERT INTO `t_exercise` VALUES (1608463519211, 'ai', -1, '[10001,10005,10008,10007,10203,10319,103410,103411,103408,10043,10095,10088,10279,10237]', '2020-12-20 19:25:19', NULL);
INSERT INTO `t_exercise` VALUES (1608463552776, 'ai', -1, '[10138,10127,10125,10091,10102,10090,10089,10126,10137,10105,10241,10384,10321,10029,10044,10018,10127,10103,10097,10018]', '2020-12-20 19:25:52', NULL);
INSERT INTO `t_exercise` VALUES (1608464125396, 'ai', -1, '[10001,10005,10008,10007,10203,10319,103410,103411,103408,10043,10095,10088,10105,10044,10279,10237]', '2020-12-20 19:35:25', NULL);
INSERT INTO `t_exercise` VALUES (1608464156800, 'ai', -1, '[10310,10291,10306,10270,10269,10320,10039,10144,10306,10116,10127,10117,10007,10212,10283,10284,10259,10280,10267,10232]', '2020-12-20 19:35:56', NULL);
INSERT INTO `t_exercise` VALUES (1608464314469, 'ai', -1, '[]', '2020-12-20 19:38:34', NULL);
INSERT INTO `t_exercise` VALUES (1608464461127, 'ai', -1, '[10012,10381,10222,10006,10110,10391,103464,103455,10380,10384,10011,10319,103410,103461,103448,10402,10025,103452,10321,10009]', '2020-12-20 19:41:01', NULL);
INSERT INTO `t_exercise` VALUES (1608464560412, 'ai', -1, '[10001,10005,10008,10007,10203,10319,103410,103411,103408,10043,10095,10088,10105,10044,10279,10237]', '2020-12-20 19:42:40', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_grammar
-- ----------------------------
DROP TABLE IF EXISTS `t_grammar`;
CREATE TABLE `t_grammar` (
  `grammar_id` bigint(20) NOT NULL,
  `grammar_text` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`grammar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for t_grammar_master
-- ----------------------------
DROP TABLE IF EXISTS `t_grammar_master`;
CREATE TABLE `t_grammar_master` (
  `grammar_master_id` bigint(20) NOT NULL,
  `grammar_id` bigint(20) DEFAULT NULL,
  `master_level` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`grammar_master_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for t_options
-- ----------------------------
DROP TABLE IF EXISTS `t_options`;
CREATE TABLE `t_options` (
  `options_id` bigint(20) NOT NULL,
  `option_a` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `option_b` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `option_c` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `option_d` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_options
-- ----------------------------
BEGIN;
INSERT INTO `t_options` VALUES (10000, 'a', 'an', 'the', NULL);
INSERT INTO `t_options` VALUES (10001, 'an', 'the', 'a', NULL);
INSERT INTO `t_options` VALUES (10002, 'the', 'a', 'an', NULL);
INSERT INTO `t_options` VALUES (10003, 'an', 'the', 'a', NULL);
INSERT INTO `t_options` VALUES (10004, 'a; a; an', 'a; a; a', 'an; a; an', NULL);
INSERT INTO `t_options` VALUES (10005, 'a', 'an', 'many', NULL);
INSERT INTO `t_options` VALUES (10006, 'a egg', 'a cake', 'an sweet.', NULL);
INSERT INTO `t_options` VALUES (10007, '/', 'an', 'a', NULL);
INSERT INTO `t_options` VALUES (10008, 'a English book', 'An English book', 'An Chinese book', NULL);
INSERT INTO `t_options` VALUES (10009, 'a', 'an', 'the', NULL);
INSERT INTO `t_options` VALUES (10010, 'my', 'a', 'an', NULL);
INSERT INTO `t_options` VALUES (10011, 'a', 'an', '/', NULL);
INSERT INTO `t_options` VALUES (10012, 'a', 'an', '/', NULL);
INSERT INTO `t_options` VALUES (10013, 'a', 'the', '/', NULL);
INSERT INTO `t_options` VALUES (10014, 'many', 'an', 'a', NULL);
INSERT INTO `t_options` VALUES (10015, 'a', 'an', '/', NULL);
INSERT INTO `t_options` VALUES (10016, 'a', 'some', 'an', NULL);
INSERT INTO `t_options` VALUES (10017, 'an', 'a', '/', NULL);
INSERT INTO `t_options` VALUES (10018, 'a', 'an', '/', NULL);
INSERT INTO `t_options` VALUES (10019, 'a; an', 'an; the', 'an; a', NULL);
INSERT INTO `t_options` VALUES (10020, 'a', 'an', 'an', NULL);
INSERT INTO `t_options` VALUES (10021, 'a', 'an', '/', NULL);
INSERT INTO `t_options` VALUES (10022, 'a; a', 'the; /', '/; the', NULL);
INSERT INTO `t_options` VALUES (10023, 'a; a', 'a; an', 'an; a', NULL);
INSERT INTO `t_options` VALUES (10024, '/', 'a', 'an', NULL);
INSERT INTO `t_options` VALUES (10025, '/', 'a', 'an', NULL);
INSERT INTO `t_options` VALUES (10026, 'one', 'an', 'a', NULL);
INSERT INTO `t_options` VALUES (10027, 'an', '/', 'a', NULL);
INSERT INTO `t_options` VALUES (10028, 'a; an', 'an; an', 'an; a', NULL);
INSERT INTO `t_options` VALUES (10029, 'a', 'the', '/', NULL);
INSERT INTO `t_options` VALUES (10030, 'a', 'an', 'the', NULL);
INSERT INTO `t_options` VALUES (10031, 'pipa', 'ping-pong', 'draw', NULL);
INSERT INTO `t_options` VALUES (10032, 'playing the badminton', 'playing badminton', 'play badminton', NULL);
INSERT INTO `t_options` VALUES (10033, 'a', 'the', 'an', NULL);
INSERT INTO `t_options` VALUES (10034, 'The; an; a', '/; a; a', '/; an; a', NULL);
INSERT INTO `t_options` VALUES (10035, 'an', 'a', 'the', NULL);
INSERT INTO `t_options` VALUES (10036, 'a; it', 'an; a', 'an; one', NULL);
INSERT INTO `t_options` VALUES (10037, 'an', 'the', '/', NULL);
INSERT INTO `t_options` VALUES (10038, 'on, a', 'in, a', 'in, an', NULL);
INSERT INTO `t_options` VALUES (10039, 'an', 'a', 'some', NULL);
INSERT INTO `t_options` VALUES (10040, 'cloth', 'water', 'flowers', NULL);
INSERT INTO `t_options` VALUES (10041, 'boys, watches', 'boy, watch', 'boy, watches', NULL);
INSERT INTO `t_options` VALUES (10042, 'are watch', 'are watches', 'is watches', NULL);
INSERT INTO `t_options` VALUES (10043, 'friend', 'friends', 'brother', NULL);
INSERT INTO `t_options` VALUES (10044, 'picture', 'pictures', 'picturees', NULL);
INSERT INTO `t_options` VALUES (10045, 'tomatos', 'tomatoes', 'tomato', NULL);
INSERT INTO `t_options` VALUES (10046, 'books', 'boxes', 'apple', NULL);
INSERT INTO `t_options` VALUES (10047, 'photo', 'photoes', 'photos', NULL);
INSERT INTO `t_options` VALUES (10048, 'chair, books', 'chairs, book', 'chairs books', NULL);
INSERT INTO `t_options` VALUES (10049, 'skateboard', 'skateboardes', 'skateboards', NULL);
INSERT INTO `t_options` VALUES (10050, 'meter', 'meters', 'meteres', NULL);
INSERT INTO `t_options` VALUES (10051, 'dumpling', 'noodles', 'egg', NULL);
INSERT INTO `t_options` VALUES (10052, 'computer', 'computers', 'a computer', NULL);
INSERT INTO `t_options` VALUES (10053, 'potato', 'potatos', 'potatoes', NULL);
INSERT INTO `t_options` VALUES (10054, 'hero', 'heros', 'heroes', NULL);
INSERT INTO `t_options` VALUES (10055, 'dress', 'dresss', 'dresses', NULL);
INSERT INTO `t_options` VALUES (10056, 'brush', 'brushs', 'brushes', NULL);
INSERT INTO `t_options` VALUES (10057, 'jeans', 'jean', 'jeanes', NULL);
INSERT INTO `t_options` VALUES (10058, 'tiger', 'tigeres', 'tigers', NULL);
INSERT INTO `t_options` VALUES (10059, 'elephant', 'tiger', 'elephants', NULL);
INSERT INTO `t_options` VALUES (10060, 'boy', 'boys', 'boies', NULL);
INSERT INTO `t_options` VALUES (10061, 'monkeys', 'monkeys', 'monkeies', NULL);
INSERT INTO `t_options` VALUES (10062, 'sheep', 'dog', 'pig', NULL);
INSERT INTO `t_options` VALUES (10063, 'child', 'water', 'books', NULL);
INSERT INTO `t_options` VALUES (10064, 'child', 'water', 'books', NULL);
INSERT INTO `t_options` VALUES (10065, 'child', 'water', 'books', NULL);
INSERT INTO `t_options` VALUES (10066, 'apples', 'oranges', 'egg', NULL);
INSERT INTO `t_options` VALUES (10067, 'man doctor', 'men doctors', 'men doctor', NULL);
INSERT INTO `t_options` VALUES (10068, 'drill', 'a drill', 'drills', NULL);
INSERT INTO `t_options` VALUES (10069, 'aunt', 'cousins', 'cousin', NULL);
INSERT INTO `t_options` VALUES (10070, 'floor', 'floors', 'a floor', NULL);
INSERT INTO `t_options` VALUES (10071, 'story', 'stories', 'storys', NULL);
INSERT INTO `t_options` VALUES (10072, 'bakery', 'bakerys', 'bakeries', NULL);
INSERT INTO `t_options` VALUES (10073, 'vegetable', 'vegetables', 'vegetables', NULL);
INSERT INTO `t_options` VALUES (10074, 'sweet', 'sweetes', 'sweets', NULL);
INSERT INTO `t_options` VALUES (10075, 'hobbies', 'hobby', 'hobbys', NULL);
INSERT INTO `t_options` VALUES (10076, 'egg', 'noodles', 'fruit', NULL);
INSERT INTO `t_options` VALUES (10077, 'cloths', 'clothes', 'cloth', NULL);
INSERT INTO `t_options` VALUES (10078, 'cloths', 'clothes', 'cloth', NULL);
INSERT INTO `t_options` VALUES (10079, 'wishes', 'wish', 'a wish', NULL);
INSERT INTO `t_options` VALUES (10080, 'He', 'She', 'It', NULL);
INSERT INTO `t_options` VALUES (10081, 'It', 'She', 'He', NULL);
INSERT INTO `t_options` VALUES (10082, 'you', 'I', 'she', NULL);
INSERT INTO `t_options` VALUES (10083, 'She', 'he', 'you', NULL);
INSERT INTO `t_options` VALUES (10084, 'We', 'I', 'They', NULL);
INSERT INTO `t_options` VALUES (10085, 'he', 'she', 'it', NULL);
INSERT INTO `t_options` VALUES (10086, 'She', 'He', 'It', NULL);
INSERT INTO `t_options` VALUES (10087, 'They', 'We', 'you', NULL);
INSERT INTO `t_options` VALUES (10088, 'the', 'they', 'it', NULL);
INSERT INTO `t_options` VALUES (10089, 'father', 'mother', 'grandfather', NULL);
INSERT INTO `t_options` VALUES (10090, 'Susan', 'Ben', 'Mary', NULL);
INSERT INTO `t_options` VALUES (10091, 'he', 'it', 'she', NULL);
INSERT INTO `t_options` VALUES (10092, 'I', 'It', 'We', NULL);
INSERT INTO `t_options` VALUES (10093, 'She, He', 'He, You', 'She, She', NULL);
INSERT INTO `t_options` VALUES (10094, 'It', 'They', 'We', NULL);
INSERT INTO `t_options` VALUES (10095, 'It', 'They', 'he', NULL);
INSERT INTO `t_options` VALUES (10096, 'It', 'They', 'Its', NULL);
INSERT INTO `t_options` VALUES (10097, 'you', 'it', 'I', NULL);
INSERT INTO `t_options` VALUES (10098, 'You', 'She', 'He', NULL);
INSERT INTO `t_options` VALUES (10099, 'It', 'I', 'He', NULL);
INSERT INTO `t_options` VALUES (10100, 'I', 'it', 'them', NULL);
INSERT INTO `t_options` VALUES (10101, 'I', 'it', 'them', NULL);
INSERT INTO `t_options` VALUES (10102, 'we, they', 'they, it', 'they, they', NULL);
INSERT INTO `t_options` VALUES (10103, 'your', 'I', 'me', NULL);
INSERT INTO `t_options` VALUES (10104, 'your', 'I', 'me', NULL);
INSERT INTO `t_options` VALUES (10105, 'he, he', 'him, he', 'his, he', NULL);
INSERT INTO `t_options` VALUES (10106, 'She, Her', 'Her, She', 'She, She', NULL);
INSERT INTO `t_options` VALUES (10107, 'they', 'it', 'she', NULL);
INSERT INTO `t_options` VALUES (10108, 'she', 'he', 'her', NULL);
INSERT INTO `t_options` VALUES (10109, 'is it', 'they are', 'are they?', NULL);
INSERT INTO `t_options` VALUES (10110, 'They are', 'It is', 'They', NULL);
INSERT INTO `t_options` VALUES (10111, 'I', 'my', 'me', NULL);
INSERT INTO `t_options` VALUES (10112, 'She', 'He', 'They', NULL);
INSERT INTO `t_options` VALUES (10113, 'She', 'He', 'They', NULL);
INSERT INTO `t_options` VALUES (10114, 'you, I', 'I, You', 'you, You', NULL);
INSERT INTO `t_options` VALUES (10115, 'I', 'my', 'me', NULL);
INSERT INTO `t_options` VALUES (10116, 'you', 'she', 'he', NULL);
INSERT INTO `t_options` VALUES (10117, 'you', 'me', 'your', NULL);
INSERT INTO `t_options` VALUES (10118, 'I', 'me', 'my', NULL);
INSERT INTO `t_options` VALUES (10119, 'me', 'his', 'your', NULL);
INSERT INTO `t_options` VALUES (10120, 'we', 'our', 'us', NULL);
INSERT INTO `t_options` VALUES (10121, 'He', 'Her', 'she', NULL);
INSERT INTO `t_options` VALUES (10122, 'we', 'us', 'my', NULL);
INSERT INTO `t_options` VALUES (10123, 'I', 'we', 'me', NULL);
INSERT INTO `t_options` VALUES (10124, 'I', 'me', 'my', NULL);
INSERT INTO `t_options` VALUES (10125, 'me', 'my', 'I', NULL);
INSERT INTO `t_options` VALUES (10126, 'we', 'us', 'our', NULL);
INSERT INTO `t_options` VALUES (10127, 'they', 'them', 'their', NULL);
INSERT INTO `t_options` VALUES (10128, 'we', 'us', 'our', NULL);
INSERT INTO `t_options` VALUES (10129, 'your', 'me', 'you', NULL);
INSERT INTO `t_options` VALUES (10130, 'he', 'him', 'his', NULL);
INSERT INTO `t_options` VALUES (10131, 'she', 'her', 'him', NULL);
INSERT INTO `t_options` VALUES (10132, 'she', 'her', 'he', NULL);
INSERT INTO `t_options` VALUES (10133, 'they', 'we', 'us', NULL);
INSERT INTO `t_options` VALUES (10134, 'me', 'them', 'us', NULL);
INSERT INTO `t_options` VALUES (10135, 'it', 'its', 'it’s', NULL);
INSERT INTO `t_options` VALUES (10136, 'they', 'them', 'their', NULL);
INSERT INTO `t_options` VALUES (10137, 'she', 'he', 'me', NULL);
INSERT INTO `t_options` VALUES (10138, 'you', 'her', 'him', NULL);
INSERT INTO `t_options` VALUES (10139, 'am', 'is', 'are', NULL);
INSERT INTO `t_options` VALUES (10140, 'are', 'am', 'is', NULL);
INSERT INTO `t_options` VALUES (10141, 'am', 'are', 'is', NULL);
INSERT INTO `t_options` VALUES (10142, 'is', 'are', 'am', NULL);
INSERT INTO `t_options` VALUES (10143, 'is', 'am', 'are', NULL);
INSERT INTO `t_options` VALUES (10144, 'am', 'are', 'is', NULL);
INSERT INTO `t_options` VALUES (10145, 'am', 'is', 'are', NULL);
INSERT INTO `t_options` VALUES (10146, 'is', 'am', 'are', NULL);
INSERT INTO `t_options` VALUES (10147, 'is', 'am', 'are', NULL);
INSERT INTO `t_options` VALUES (10148, 'am', 'is', 'are', NULL);
INSERT INTO `t_options` VALUES (10149, 'is', 'am', 'are', NULL);
INSERT INTO `t_options` VALUES (10150, 'is', 'are', 'am', NULL);
INSERT INTO `t_options` VALUES (10151, 'are', 'am', 'is', NULL);
INSERT INTO `t_options` VALUES (10152, 'is', 'am', 'are', NULL);
INSERT INTO `t_options` VALUES (10153, 'is', 'am', 'are', NULL);
INSERT INTO `t_options` VALUES (10154, 'are', 'is', 'am', NULL);
INSERT INTO `t_options` VALUES (10155, 'is', 'are', 'am', NULL);
INSERT INTO `t_options` VALUES (10156, 'am', 'are', 'is', NULL);
INSERT INTO `t_options` VALUES (10157, 'am', 'are.', 'is', NULL);
INSERT INTO `t_options` VALUES (10158, 'am', 'are', 'is', NULL);
INSERT INTO `t_options` VALUES (10159, 'am', 'are', 'is', NULL);
INSERT INTO `t_options` VALUES (10160, 'am, is', 'are, is', 'is, is', NULL);
INSERT INTO `t_options` VALUES (10161, 'am', 'is', 'are', NULL);
INSERT INTO `t_options` VALUES (10162, 'is', 'am', 'are', NULL);
INSERT INTO `t_options` VALUES (10163, 'am', 'are', 'is', NULL);
INSERT INTO `t_options` VALUES (10164, 'is', 'am', 'are', NULL);
INSERT INTO `t_options` VALUES (10165, 'are', 'is', 'am', NULL);
INSERT INTO `t_options` VALUES (10166, 'am', 'are', 'is', NULL);
INSERT INTO `t_options` VALUES (10167, 'are', 'am', 'is', NULL);
INSERT INTO `t_options` VALUES (10168, 'am', 'is', 'are', NULL);
INSERT INTO `t_options` VALUES (10169, 'are', 'is', 'am', NULL);
INSERT INTO `t_options` VALUES (10170, 'is', 'are', 'am', NULL);
INSERT INTO `t_options` VALUES (10171, 'are', 'is', 'am', NULL);
INSERT INTO `t_options` VALUES (10172, 'me', 'is', 'are', NULL);
INSERT INTO `t_options` VALUES (10173, 'are, is', 'am, are', 'is are', NULL);
INSERT INTO `t_options` VALUES (10174, 'is it', 'they are', 'are they?', NULL);
INSERT INTO `t_options` VALUES (10175, 'am', 'is', 'are', NULL);
INSERT INTO `t_options` VALUES (10176, 'am', 'is', 'are', NULL);
INSERT INTO `t_options` VALUES (10177, 'are', 'is', 'am', NULL);
INSERT INTO `t_options` VALUES (10178, 'am', 'is', 'are', NULL);
INSERT INTO `t_options` VALUES (10179, 'are, is', 'is, is', 'are, are', NULL);
INSERT INTO `t_options` VALUES (10180, 'it is', 'is it', 'they are.', NULL);
INSERT INTO `t_options` VALUES (10181, 'am', 'are', 'be', NULL);
INSERT INTO `t_options` VALUES (10182, 'is', 'are', 'am', NULL);
INSERT INTO `t_options` VALUES (10183, 'are, are', 'are, is', 'is, are', NULL);
INSERT INTO `t_options` VALUES (10184, 'is', 'are', 'am', NULL);
INSERT INTO `t_options` VALUES (10185, 'be', 'is', 'are', NULL);
INSERT INTO `t_options` VALUES (10186, 'am', 'is', 'are', NULL);
INSERT INTO `t_options` VALUES (10187, 'is', 'am', 'are', NULL);
INSERT INTO `t_options` VALUES (10188, 'am', 'is', 'are', NULL);
INSERT INTO `t_options` VALUES (10189, 'am', 'are', 'is', NULL);
INSERT INTO `t_options` VALUES (10190, 'are', 'is', 'am', NULL);
INSERT INTO `t_options` VALUES (10191, 'are', 'is', 'am', NULL);
INSERT INTO `t_options` VALUES (10192, 'am', 'are', 'is', NULL);
INSERT INTO `t_options` VALUES (10193, 'am', 'is', 'are', NULL);
INSERT INTO `t_options` VALUES (10194, 'is', 'are', 'am', NULL);
INSERT INTO `t_options` VALUES (10195, 'am', 'is', 'are', NULL);
INSERT INTO `t_options` VALUES (10196, 'am', 'is', 'are', NULL);
INSERT INTO `t_options` VALUES (10197, 'he is', 'you are', 'she is', NULL);
INSERT INTO `t_options` VALUES (10198, 'is', 'are', 'am', NULL);
INSERT INTO `t_options` VALUES (10199, 'isn’t', 'aren’t', 'isnt', NULL);
INSERT INTO `t_options` VALUES (10200, 'am not', 'are not', 'isn’t', NULL);
INSERT INTO `t_options` VALUES (10201, 'are', 'aren’t', 'isn’t', NULL);
INSERT INTO `t_options` VALUES (10202, 'is', 'aren’t', 'arent', NULL);
INSERT INTO `t_options` VALUES (10203, 'isn’t', 'aren’t', 'am', NULL);
INSERT INTO `t_options` VALUES (10204, 'isn’t', 'aren’t', 'am not', NULL);
INSERT INTO `t_options` VALUES (10205, 'isnt', 'isnot', 'isn’t', NULL);
INSERT INTO `t_options` VALUES (10206, 'isnot', 'aren’t', 'arenot', NULL);
INSERT INTO `t_options` VALUES (10207, 'aren’t', 'isn’t', 'am not', NULL);
INSERT INTO `t_options` VALUES (10208, 'amn’t', 'am not', 'are', NULL);
INSERT INTO `t_options` VALUES (10209, 'is', 'not are', 'aren’t', NULL);
INSERT INTO `t_options` VALUES (10210, 'not is', 'isn’t', 'isnt', NULL);
INSERT INTO `t_options` VALUES (10211, 'isnt', 'aren’t', 'isn’t', NULL);
INSERT INTO `t_options` VALUES (10212, 'isn’t', 'aren’t', 'am not', NULL);
INSERT INTO `t_options` VALUES (10213, 'aren’t', 'not are', 'arent', NULL);
INSERT INTO `t_options` VALUES (10214, 'is', 'are', 'am', NULL);
INSERT INTO `t_options` VALUES (10215, 'is', 'isnt', 'not is', NULL);
INSERT INTO `t_options` VALUES (10216, 'are', 'is', 'am', NULL);
INSERT INTO `t_options` VALUES (10217, 'is', 'are', 'am', NULL);
INSERT INTO `t_options` VALUES (10218, 'are', 'am', 'is', NULL);
INSERT INTO `t_options` VALUES (10219, 'Arent', 'Aren’t', 'Isn’t', NULL);
INSERT INTO `t_options` VALUES (10220, 'Is', 'Arent', 'Aren’t', NULL);
INSERT INTO `t_options` VALUES (10221, 'Arent', 'Isnt', 'Isn’t', NULL);
INSERT INTO `t_options` VALUES (10222, 'is', 'are', 'am', NULL);
INSERT INTO `t_options` VALUES (10223, 'aren’t', 'arent', 'Aren’t', NULL);
INSERT INTO `t_options` VALUES (10224, 'is', 'are', 'isn’t', NULL);
INSERT INTO `t_options` VALUES (10225, 'is', 'are', 'isn’t', NULL);
INSERT INTO `t_options` VALUES (10226, 'is', 'aren’t', 'are', NULL);
INSERT INTO `t_options` VALUES (10227, 'are', 'aren’t', 'arent', NULL);
INSERT INTO `t_options` VALUES (10228, 'are', 'is', 'am', NULL);
INSERT INTO `t_options` VALUES (10229, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10230, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10231, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10232, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10233, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10234, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10235, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10236, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10237, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10238, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10239, 'am', 'isn’t', 'aren’t', NULL);
INSERT INTO `t_options` VALUES (10240, 'isn’t, is', 'is, is', 'is, isn’t', NULL);
INSERT INTO `t_options` VALUES (10241, 'is', 'am', 'isn’t', NULL);
INSERT INTO `t_options` VALUES (10242, 'are some', 'isn’t some', 'isn’t any', NULL);
INSERT INTO `t_options` VALUES (10243, 'is', 'isn’t', 'aren’t', NULL);
INSERT INTO `t_options` VALUES (10244, 'is', 'are', 'aren’t', NULL);
INSERT INTO `t_options` VALUES (10245, 'is', 'are', 'isn’t', NULL);
INSERT INTO `t_options` VALUES (10246, 'is some', 'aren’t any', 'isn’t any', NULL);
INSERT INTO `t_options` VALUES (10247, 'is', 'are', 'am', NULL);
INSERT INTO `t_options` VALUES (10248, 'are not', 'isn’t', 'am', NULL);
INSERT INTO `t_options` VALUES (10249, 'is', 'isn’t', 'are', NULL);
INSERT INTO `t_options` VALUES (10250, 'is', 'are', 'am', NULL);
INSERT INTO `t_options` VALUES (10251, 'is', 'aren’t', 'isn’t', NULL);
INSERT INTO `t_options` VALUES (10252, 'is', 'aren’t', 'am not', NULL);
INSERT INTO `t_options` VALUES (10253, 'are', 'is', 'am not', NULL);
INSERT INTO `t_options` VALUES (10254, 'isn’t', 'are', 'am', NULL);
INSERT INTO `t_options` VALUES (10255, 'are', 'aren’t', 'isn’t', NULL);
INSERT INTO `t_options` VALUES (10256, 'are', 'is', 'is not', NULL);
INSERT INTO `t_options` VALUES (10257, 'are not', 'am', 'is', NULL);
INSERT INTO `t_options` VALUES (10258, 'isn’t', 'aren’t', 'am not', NULL);
INSERT INTO `t_options` VALUES (10259, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10260, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10261, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10262, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10263, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10264, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10265, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10266, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10267, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10268, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10269, 'Yes, he is.', 'Yes, she is.', 'Yes, it is.', NULL);
INSERT INTO `t_options` VALUES (10270, 'she is', 'he isn’t.', 'he is.', NULL);
INSERT INTO `t_options` VALUES (10271, 'Yes, they are.', 'No, they are', 'No, they aren’t.', NULL);
INSERT INTO `t_options` VALUES (10272, 'this is', 'this isn’t', 'it isn’t', NULL);
INSERT INTO `t_options` VALUES (10273, 'am', 'is', 'are', NULL);
INSERT INTO `t_options` VALUES (10274, 'Yes, it is', 'No, it isn’t', 'Yes, they are.', NULL);
INSERT INTO `t_options` VALUES (10275, 'Is', 'are', 'is', NULL);
INSERT INTO `t_options` VALUES (10276, 'Is', 'Are', 'Be', NULL);
INSERT INTO `t_options` VALUES (10277, 'Is', 'Are', 'Be', NULL);
INSERT INTO `t_options` VALUES (10278, 'Am', 'Is', 'Are', NULL);
INSERT INTO `t_options` VALUES (10279, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10280, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10281, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10282, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10283, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10284, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10285, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10286, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10287, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10288, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10289, '', '', '', NULL);
INSERT INTO `t_options` VALUES (10290, 'I am not', 'It isn’t', 'you aren’t', NULL);
INSERT INTO `t_options` VALUES (10291, 'Are', 'Is', 'Be', NULL);
INSERT INTO `t_options` VALUES (10292, 'he is', 'she is', 'you are', NULL);
INSERT INTO `t_options` VALUES (10293, 'he is', 'she is', 'you are', NULL);
INSERT INTO `t_options` VALUES (10294, 'Yes, it is', 'No, it isn’t', 'No, I don’t care', NULL);
INSERT INTO `t_options` VALUES (10295, 'I am', 'she isn’t', 'she is', NULL);
INSERT INTO `t_options` VALUES (10296, 'she isn’t', 'it isn’t', 'I am not', NULL);
INSERT INTO `t_options` VALUES (10297, 'she isn’t', 'it isn’t', 'I am not', NULL);
INSERT INTO `t_options` VALUES (10298, 'she isn’t', 'it isn’t', 'I am not', NULL);
INSERT INTO `t_options` VALUES (10299, 'Yes, it is, she', 'No, it isn’t, she', 'Yes, it is, me', NULL);
INSERT INTO `t_options` VALUES (10300, 'I', 'we', 'you', NULL);
INSERT INTO `t_options` VALUES (10301, 'I am', 'we aren’t', 'I’m not', NULL);
INSERT INTO `t_options` VALUES (10302, 'I will', 'he will', 'he is', NULL);
INSERT INTO `t_options` VALUES (10303, 'Where is Jimmy?', 'Is Jimmy in?', 'Are you Jimmy’s father', NULL);
INSERT INTO `t_options` VALUES (10304, 'Are', 'Is', 'Am', NULL);
INSERT INTO `t_options` VALUES (10305, 'Are', 'Do', 'Does', NULL);
INSERT INTO `t_options` VALUES (10306, 'Is, sheep', 'Are, sheeps', 'Are, sheep', NULL);
INSERT INTO `t_options` VALUES (10307, 'Yes, he is', 'No, he isn’t', 'Yes, it is.', NULL);
INSERT INTO `t_options` VALUES (10308, 'Yes, he is', 'No, he isn’t', 'Yes, it is.', NULL);
INSERT INTO `t_options` VALUES (10309, 'I will', 'we will', 'he will', NULL);
INSERT INTO `t_options` VALUES (10310, 'I will', 'we will', 'he will', NULL);
INSERT INTO `t_options` VALUES (10311, 'Are', 'Am', 'Is', NULL);
INSERT INTO `t_options` VALUES (10312, 'Are', 'Am', 'Is', NULL);
INSERT INTO `t_options` VALUES (10313, 'I am not', 'we aren’t', 'I am', NULL);
INSERT INTO `t_options` VALUES (10314, 'Yes, he is', 'No, Jason isn’t', 'No, he isn’t', NULL);
INSERT INTO `t_options` VALUES (10315, 'Yes, I guess', 'No, of course it does', 'Yes, it is', NULL);
INSERT INTO `t_options` VALUES (10316, 'Yes, he is', 'No, he isn’t', 'No, it isn’t', NULL);
INSERT INTO `t_options` VALUES (10317, 'Yes, it is', 'Yes, they are', 'Yes, there are', NULL);
INSERT INTO `t_options` VALUES (10318, 'Is, there isn’t', 'Are, there aren’t', 'Are, they aren’t', NULL);
INSERT INTO `t_options` VALUES (10319, 'what', 'where', 'who', NULL);
INSERT INTO `t_options` VALUES (10320, 'where', 'who', 'which', NULL);
INSERT INTO `t_options` VALUES (10321, 'how many', 'how much', 'how often', NULL);
INSERT INTO `t_options` VALUES (10322, 'what', 'where', 'what color', NULL);
INSERT INTO `t_options` VALUES (10323, 'who', 'where', 'what', NULL);
INSERT INTO `t_options` VALUES (10324, 'how', 'what', 'where', NULL);
INSERT INTO `t_options` VALUES (10325, 'who', 'which', 'where', NULL);
INSERT INTO `t_options` VALUES (10326, 'What’s your trouble?', 'What’s wrong with it?', 'Can I help you?', NULL);
INSERT INTO `t_options` VALUES (10327, 'How many', 'How much', 'How soon', NULL);
INSERT INTO `t_options` VALUES (10328, 'How, like', 'How, as', 'What, like', NULL);
INSERT INTO `t_options` VALUES (10329, 'when', 'what day', 'what time', NULL);
INSERT INTO `t_options` VALUES (10330, 'What', 'who', 'How many', NULL);
INSERT INTO `t_options` VALUES (10331, 'is it', 'they are', 'are they', NULL);
INSERT INTO `t_options` VALUES (10332, 'am not', 'should', 'am', NULL);
INSERT INTO `t_options` VALUES (10333, 'there are', 'are there', 'there is', NULL);
INSERT INTO `t_options` VALUES (10334, 'am', 'is', 'are', NULL);
INSERT INTO `t_options` VALUES (10335, 'be', 'are', 'is', NULL);
INSERT INTO `t_options` VALUES (10336, 'what', 'why', 'When', NULL);
INSERT INTO `t_options` VALUES (10337, 'what time', 'what', 'what day', NULL);
INSERT INTO `t_options` VALUES (10338, 'what time', 'what day', 'when', NULL);
INSERT INTO `t_options` VALUES (10339, 'when', 'what time', 'which day', NULL);
INSERT INTO `t_options` VALUES (10340, 'What', 'How many', 'How much', NULL);
INSERT INTO `t_options` VALUES (10341, 'what', 'where', 'When', NULL);
INSERT INTO `t_options` VALUES (10342, 'when', 'where', 'what', NULL);
INSERT INTO `t_options` VALUES (10343, 'How', 'where', 'what', NULL);
INSERT INTO `t_options` VALUES (10344, 'this, that', 'these, those', 'That, Those', 'This, That');
INSERT INTO `t_options` VALUES (10345, 'this', 'that', 'those', 'these');
INSERT INTO `t_options` VALUES (10346, 'this', 'these', 'it', 'those');
INSERT INTO `t_options` VALUES (10347, 'these', 'those', 'that', 'this');
INSERT INTO `t_options` VALUES (10348, 'this, those', 'these, these', 'that, these', 'this, this');
INSERT INTO `t_options` VALUES (10349, 'this', 'these', 'that', 'those');
INSERT INTO `t_options` VALUES (10350, 'this', 'that', 'they', 'it');
INSERT INTO `t_options` VALUES (10351, 'this', 'that', 'these', 'those');
INSERT INTO `t_options` VALUES (10352, 'Yes, he is.', 'Yes, it is.', 'No, its not.', 'Yes, that is.');
INSERT INTO `t_options` VALUES (10353, 'Yes, he is', 'Yes, it is.', 'No, its not.', 'Yes, this is.');
INSERT INTO `t_options` VALUES (10354, '', '', '', '');
INSERT INTO `t_options` VALUES (10355, '', '', '', '');
INSERT INTO `t_options` VALUES (10356, '', '', '', '');
INSERT INTO `t_options` VALUES (10357, '', '', '', '');
INSERT INTO `t_options` VALUES (10358, '', '', '', '');
INSERT INTO `t_options` VALUES (10359, '', '', '', '');
INSERT INTO `t_options` VALUES (10360, '', '', '', '');
INSERT INTO `t_options` VALUES (10361, '', '', '', '');
INSERT INTO `t_options` VALUES (10362, '', '', '', '');
INSERT INTO `t_options` VALUES (10363, '', '', '', '');
INSERT INTO `t_options` VALUES (10374, 'this, This', 'that, That', 'that, This', 'this, That');
INSERT INTO `t_options` VALUES (10375, 'it, This is', 'he, I am', 'that, this is', 'that, He is');
INSERT INTO `t_options` VALUES (10376, 'this', 'that', 'those', 'these');
INSERT INTO `t_options` VALUES (10377, 'this', 'that', 'those', 'these');
INSERT INTO `t_options` VALUES (10378, 'these ones', 'that pair', 'those ones', 'that pairs');
INSERT INTO `t_options` VALUES (10379, 'these', 'those', 'this', 'that');
INSERT INTO `t_options` VALUES (10380, 'this, this, your', 'this, that, my', 'that, it, my', 'that, that, my');
INSERT INTO `t_options` VALUES (10381, 'its', 'These', 'That', 'one');
INSERT INTO `t_options` VALUES (10382, 'That', 'This', 'She', 'I');
INSERT INTO `t_options` VALUES (10383, 'It is', 'That is', 'This is', 'They are');
INSERT INTO `t_options` VALUES (10384, 'this', 'those', 'ones', 'that');
INSERT INTO `t_options` VALUES (10385, 'this', 'that', 'it', 'those');
INSERT INTO `t_options` VALUES (10386, 'this', 'that', 'it', 'its');
INSERT INTO `t_options` VALUES (10387, 'those', 'that', 'it', 'they');
INSERT INTO `t_options` VALUES (10388, 'it', 'ones', 'that', 'this');
INSERT INTO `t_options` VALUES (10389, 'ones', 'those', 'that', 'it');
INSERT INTO `t_options` VALUES (10390, 'ones', 'that', 'it', 'this');
INSERT INTO `t_options` VALUES (10391, '/', 'it', 'this', 'that');
INSERT INTO `t_options` VALUES (10392, '/', 'those', 'that', 'it');
INSERT INTO `t_options` VALUES (10393, 'ones', 'that', 'it', 'this');
INSERT INTO `t_options` VALUES (10394, 'those', 'that', 'these', 'they');
INSERT INTO `t_options` VALUES (10395, 'It, it', 'That, that', 'This, this', 'This, it');
INSERT INTO `t_options` VALUES (10396, 'that', 'there', 'this', 'here');
INSERT INTO `t_options` VALUES (10397, 'what', 'that', 'which', 'it');
INSERT INTO `t_options` VALUES (10398, 'this year', 'last year', 'the last year', 'that year');
INSERT INTO `t_options` VALUES (10399, 'They’re', 'It’s', 'This’s', 'That is');
INSERT INTO `t_options` VALUES (10400, 'this Saturday', 'in this Saturday', 'that Saturday', 'in that Saturday');
INSERT INTO `t_options` VALUES (10401, 'this week', 'on this week', 'that week', 'in that week');
INSERT INTO `t_options` VALUES (10402, 'this', 'that', 'these', 'those');
INSERT INTO `t_options` VALUES (10403, 'these, they are', 'that, it’s', 'those, they’re', 'this, it’s');
INSERT INTO `t_options` VALUES (103404, 'these', 'that', 'those', 'this');
INSERT INTO `t_options` VALUES (103405, 'these', 'that', 'those', 'this');
INSERT INTO `t_options` VALUES (103406, 'this', 'they', 'that', 'those');
INSERT INTO `t_options` VALUES (103407, 'this', 'that', 'these', 'those');
INSERT INTO `t_options` VALUES (103408, 'he', 'she', 'that', 'this');
INSERT INTO `t_options` VALUES (103409, 'That', 'This', 'It', 'Those');
INSERT INTO `t_options` VALUES (103410, 'these; these', 'these; they', 'this; they', 'those; these');
INSERT INTO `t_options` VALUES (103411, 'This', 'They', 'That', 'Those');
INSERT INTO `t_options` VALUES (103412, 'this', '/', 'these', 'those.');
INSERT INTO `t_options` VALUES (103413, 'is', 'Are', 'Is', 'are');
INSERT INTO `t_options` VALUES (103414, '', '', '', '');
INSERT INTO `t_options` VALUES (103415, '', '', '', '');
INSERT INTO `t_options` VALUES (103416, '', '', '', '');
INSERT INTO `t_options` VALUES (103417, '', '', '', '');
INSERT INTO `t_options` VALUES (103418, '', '', '', '');
INSERT INTO `t_options` VALUES (103419, '', '', '', '');
INSERT INTO `t_options` VALUES (103420, '', '', '', '');
INSERT INTO `t_options` VALUES (103421, '', '', '', '');
INSERT INTO `t_options` VALUES (103422, '', '', '', '');
INSERT INTO `t_options` VALUES (103423, '', '', '', '');
INSERT INTO `t_options` VALUES (103424, 'these, boxes', 'these, box', 'this, boxes', 'this, box');
INSERT INTO `t_options` VALUES (103425, 'he', 'she', 'that', 'this');
INSERT INTO `t_options` VALUES (103426, 'is; are', 'are; is', 'are; are', 'is; is');
INSERT INTO `t_options` VALUES (103427, 'they', 'those', 'these', 'that');
INSERT INTO `t_options` VALUES (103428, 'this, that', 'these, those', 'these, that', 'that, those');
INSERT INTO `t_options` VALUES (103429, 'this, This', 'that, This', 'it, It', 'these, These');
INSERT INTO `t_options` VALUES (103430, 'that, this', 'this, that', 'those, these', 'these, those');
INSERT INTO `t_options` VALUES (103431, 'that, this', 'this, that', 'those, these', 'these, those');
INSERT INTO `t_options` VALUES (103432, 'these, those', 'this, those', 'this, that', 'these, that');
INSERT INTO `t_options` VALUES (103433, 'it', 'that', 'ones', 'those');
INSERT INTO `t_options` VALUES (103444, 'its', 'that', 'this', 'it');
INSERT INTO `t_options` VALUES (103445, 'that', 'this', 'it', 'it’s');
INSERT INTO `t_options` VALUES (103446, 'that', 'it', 'this', 'it’s');
INSERT INTO `t_options` VALUES (103447, 'This, to', 'It, for', 'This, for', 'It, to');
INSERT INTO `t_options` VALUES (103448, 'it', 'that', 'one', 'this');
INSERT INTO `t_options` VALUES (103449, 'one', 'it', 'that', 'this');
INSERT INTO `t_options` VALUES (103450, 'those', 'it', 'this', 'one');
INSERT INTO `t_options` VALUES (103451, 'This, to', 'It, for', 'This, for', 'It, to');
INSERT INTO `t_options` VALUES (103452, 'that; that', 'it; they', 'that; those', 'those; those');
INSERT INTO `t_options` VALUES (103453, 'one; that', 'that; one', 'it; one', 'one; it');
INSERT INTO `t_options` VALUES (103454, 'it', 'this', 'one', 'that');
INSERT INTO `t_options` VALUES (103455, 'that is', 'it	is', 'this is', 'those are');
INSERT INTO `t_options` VALUES (103456, 'that', 'it', 'it’s', 'these');
INSERT INTO `t_options` VALUES (103457, 'this is', 'it is', 'that is', 'those are');
INSERT INTO `t_options` VALUES (103458, 'it; it', 'it; one', 'one; it', 'one; one');
INSERT INTO `t_options` VALUES (103459, 'it', 'that', 'this', 'one');
INSERT INTO `t_options` VALUES (103460, 'one', 'this', 'them', 'it');
INSERT INTO `t_options` VALUES (103461, 'that is', 'this is', 'it	is', 'its');
INSERT INTO `t_options` VALUES (103462, 'There', 'This', 'That', 'It');
INSERT INTO `t_options` VALUES (103463, 'it', 'one', 'this', 'that');
INSERT INTO `t_options` VALUES (103464, 'it', 'one', 'this', 'that');
COMMIT;

-- ----------------------------
-- Table structure for t_pass_collec
-- ----------------------------
DROP TABLE IF EXISTS `t_pass_collec`;
CREATE TABLE `t_pass_collec` (
  `pass_collec_id` bigint(20) NOT NULL,
  `prob_list` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`pass_collec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for t_point
-- ----------------------------
DROP TABLE IF EXISTS `t_point`;
CREATE TABLE `t_point` (
  `point_id` bigint(20) NOT NULL,
  `grammar_id` bigint(20) DEFAULT NULL,
  `point_text` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`point_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_point
-- ----------------------------
BEGIN;
INSERT INTO `t_point` VALUES (-1, -1, '未知考点');
INSERT INTO `t_point` VALUES (0, -1, '固定搭配');
INSERT INTO `t_point` VALUES (1, -1, '元音音素开头');
INSERT INTO `t_point` VALUES (2, -1, '辅音音素开头');
INSERT INTO `t_point` VALUES (3, -1, '首字母是辅音字母，但元音音素开头');
INSERT INTO `t_point` VALUES (4, -1, '球类前面不加the');
INSERT INTO `t_point` VALUES (5, -1, '乐器前面不加the');
INSERT INTO `t_point` VALUES (6, -1, '词义题');
INSERT INTO `t_point` VALUES (7, -1, '可数名词加~s');
INSERT INTO `t_point` VALUES (8, -1, '可数名词x结尾加~es');
INSERT INTO `t_point` VALUES (9, -1, '可数名词s结尾加~es');
INSERT INTO `t_point` VALUES (10, -1, '可数名词o结尾加~es');
INSERT INTO `t_point` VALUES (11, -1, '可数名词o结尾加~s');
INSERT INTO `t_point` VALUES (12, -1, '可数名词sh/ch结尾加~es');
INSERT INTO `t_point` VALUES (13, -1, 'like加可数名词复数');
INSERT INTO `t_point` VALUES (14, -1, '单词以y结尾，但是倒数第二个字母不是元音字母');
INSERT INTO `t_point` VALUES (15, -1, '单复同形和常用复数');
INSERT INTO `t_point` VALUES (16, -1, '不可数名词，复数变化在量词上');
INSERT INTO `t_point` VALUES (17, -1, '短语中性别和职业都存在，两个单词都用复数');
INSERT INTO `t_point` VALUES (18, -1, '判断填入单数还是复数');
INSERT INTO `t_point` VALUES (19, -1, '根据宾语决定主语人称代词');
INSERT INTO `t_point` VALUES (20, -1, '根据上下文判断填入的人称代词');
INSERT INTO `t_point` VALUES (21, -1, '根据人名判断人称代词');
INSERT INTO `t_point` VALUES (22, -1, '根据Be动词搭配判断人称代词');
INSERT INTO `t_point` VALUES (23, -1, '（词义）句意题');
INSERT INTO `t_point` VALUES (24, -1, '形容词性所有格');
INSERT INTO `t_point` VALUES (25, -1, '动词之后搭配人称代词宾格');
INSERT INTO `t_point` VALUES (26, -1, '介词之后搭配人称代词宾格');
INSERT INTO `t_point` VALUES (27, -1, '人称代词搭配');
INSERT INTO `t_point` VALUES (28, -1, '双主语搭配');
INSERT INTO `t_point` VALUES (29, -1, '主语为形容词搭配名词');
INSERT INTO `t_point` VALUES (30, -1, 'there be引导的倒装句搭配主语词义');
INSERT INTO `t_point` VALUES (31, -1, '反身代词this句型');
INSERT INTO `t_point` VALUES (32, -1, '主语词义单复数判断');
INSERT INTO `t_point` VALUES (33, -1, '量词搭配');
INSERT INTO `t_point` VALUES (34, -1, '问句中的主语判断');
INSERT INTO `t_point` VALUES (35, -1, 'Here引导的倒装句');
INSERT INTO `t_point` VALUES (36, -1, 'be动词原形');
INSERT INTO `t_point` VALUES (37, -1, '不定代词与Be动词搭配');
INSERT INTO `t_point` VALUES (38, -1, '省略主语，根据句意判断');
INSERT INTO `t_point` VALUES (39, -1, '主谓语搭配');
INSERT INTO `t_point` VALUES (40, -1, '量词优先做主语');
INSERT INTO `t_point` VALUES (41, -1, '不可数名词与Be动词搭配');
INSERT INTO `t_point` VALUES (42, -1, 'there be句型中主语判断');
INSERT INTO `t_point` VALUES (43, -1, 'be动词否定缩写');
INSERT INTO `t_point` VALUES (44, -1, '句中对主语的判断');
INSERT INTO `t_point` VALUES (45, -1, '否定疑问句');
INSERT INTO `t_point` VALUES (46, -1, '题意理解');
INSERT INTO `t_point` VALUES (47, -1, '句型架构改写');
INSERT INTO `t_point` VALUES (48, -1, '表达计算题时，两个数字用and联系的主语视作单数');
INSERT INTO `t_point` VALUES (49, -1, 'some用于肯定；any用于否定和疑问');
INSERT INTO `t_point` VALUES (50, -1, 'The +姓氏复数表示一家人； The+形容词表示一类人，视为复数');
INSERT INTO `t_point` VALUES (51, -1, 'people解释为”人“视为复数；解释为“民族”视为单数');
INSERT INTO `t_point` VALUES (52, -1, 'Mathematics解释为“数学”视为单数；解释为“数学能力”视为复数');
INSERT INTO `t_point` VALUES (53, -1, '主谓语判断 一般疑问句提前');
INSERT INTO `t_point` VALUES (54, -1, '肯定回答');
INSERT INTO `t_point` VALUES (55, -1, '否定回答');
INSERT INTO `t_point` VALUES (56, -1, '反身代词引导的一般疑问句');
INSERT INTO `t_point` VALUES (57, -1, '根据主语判断回答部分的人称代词');
INSERT INTO `t_point` VALUES (58, -1, '问句主语为不可数名词，单复同形和常用复数单词，所搭配的be动词');
INSERT INTO `t_point` VALUES (59, -1, 'there be句型引导的一般疑问句，判断主语');
INSERT INTO `t_point` VALUES (60, -1, '根据句意判断肯定或否定回答');
INSERT INTO `t_point` VALUES (61, -1, '陈述句中人称代词是I或my时变为一般疑问句需要改为you或your');
INSERT INTO `t_point` VALUES (62, -1, '根据完整回答判断一般疑问句');
INSERT INTO `t_point` VALUES (63, -1, '一般疑问句中谓语动词的判断，是否需要加入助动词');
INSERT INTO `t_point` VALUES (64, -1, '一般将来时引导的一般疑问句');
INSERT INTO `t_point` VALUES (65, -1, 'who的理解与运用');
INSERT INTO `t_point` VALUES (66, -1, 'where的理解与运用');
INSERT INTO `t_point` VALUES (67, -1, 'how many 和 how much 的理解与运用');
INSERT INTO `t_point` VALUES (68, -1, 'what color的理解与运用');
INSERT INTO `t_point` VALUES (69, -1, 'how的理解与运用');
INSERT INTO `t_point` VALUES (70, -1, '对动词短语提问，用what … do');
INSERT INTO `t_point` VALUES (71, -1, 'what的理解和运用');
INSERT INTO `t_point` VALUES (72, -1, '根据问答句句意判断');
INSERT INTO `t_point` VALUES (73, -1, '陈述句到特殊疑问句的句型架构变化');
INSERT INTO `t_point` VALUES (74, -1, 'when/what time/what day上的区别');
INSERT INTO `t_point` VALUES (75, -1, 'there be句型中对数量提问的特殊疑问句');
INSERT INTO `t_point` VALUES (76, -1, 'there be 句型中对主语提问');
INSERT INTO `t_point` VALUES (77, -1, '对天气提问');
INSERT INTO `t_point` VALUES (78, -1, '指示代词基本用法');
INSERT INTO `t_point` VALUES (79, -1, '指示代词中一般疑问句和特殊疑问句的回答');
INSERT INTO `t_point` VALUES (80, -1, '根据句意和语境判断this / that');
INSERT INTO `t_point` VALUES (81, -1, '指示代词的句型转换');
INSERT INTO `t_point` VALUES (82, -1, '英语表达中this / that在通电话时的用法');
INSERT INTO `t_point` VALUES (83, -1, '区分人称代词和指示代词this/that的区别');
INSERT INTO `t_point` VALUES (84, -1, 'that, it 和one作为代词的用法上的区别');
INSERT INTO `t_point` VALUES (85, -1, '介绍他人时指示代词的用法');
INSERT INTO `t_point` VALUES (86, -1, '指示代词引导问句的回答方式');
INSERT INTO `t_point` VALUES (87, -1, '指示代词引导的句型架构转换');
COMMIT;

-- ----------------------------
-- Table structure for t_point_master
-- ----------------------------
DROP TABLE IF EXISTS `t_point_master`;
CREATE TABLE `t_point_master` (
  `point_master_id` bigint(20) NOT NULL,
  `master_level` bigint(20) DEFAULT NULL,
  `point_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`point_master_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for t_prob_eval
-- ----------------------------
DROP TABLE IF EXISTS `t_prob_eval`;
CREATE TABLE `t_prob_eval` (
  `prob_eval_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `prob_eval_res` int(20) DEFAULT NULL,
  `prob_eval_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `prob_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `analysis` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ans` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `choice` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `choice_text` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `consume_time` bigint(20) DEFAULT NULL,
  `point` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `prob_text` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`prob_eval_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608464312118 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_prob_eval
-- ----------------------------
BEGIN;
INSERT INTO `t_prob_eval` VALUES (1606562924833, 1, '2020-11-28 21:19:17', 10001, 3, ' have a headache 头疼，表示生什么病，用have a … 是固定搭配 所以选C', 'C', 'c', 'a', 20, '辅音音素开头', 'I have ____ bad headache.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608385224112, 0, '2020-12-19 21:40:24', 10005, 3, 'eraser 属于单数，所以 C 错误；eraser是元音 /ɪ/ 开头单词，所以选B', 'B', 'a', 'a', 20, '元音音素开头', 'Here is ____ eraser.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608385792909, 0, '2020-12-19 21:49:52', 10008, 3, 'English是元音音素 /ɪ/ 开头的单词，用 an；Chinese是辅音音素 /tʃ/ 开头的单词，用 a，所以选B', 'B', 'a', 'a English book', 20, '元音音素开头', '-What’s in the bag?____	-  ____	.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608385937809, 0, '2020-12-19 21:52:17', 10007, 3, 'a 表示“一个”，是不定冠词，用于修饰辅音音素开头的单数名词；an 表示“一个” 是不定冠词，用于修饰元音音素开头的单数名词hot dog 是辅音音素/h/开头的单词，所以选C', 'C', 'a', '/', 20, '辅音音素开头', 'It is ____ hot dog.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608386106233, 0, '2020-12-19 21:55:06', 10279, 3, '句中的主语是Dale, 谓语是is，从陈述句改为一般疑问句时，谓语动词is提前，调整大小写，句号变问号陈述句中my引导的短语作为主语时，my要变为your，其他情况保持不变句中的主语是Dale，因此不用将 my friend 改为 your friend否定回答时将主语Dale替换成对应的人称代词 he', '\nIs Dale my friend?\nNo, he isn’t.', 'none', 'no$ok', 20, '陈述句中人称代词是I或my时变为一般疑问句需要改为you或your', 'Dale is my friend (Yes/No Question; Negative Answer)', 'txt');
INSERT INTO `t_prob_eval` VALUES (1608439331969, 0, '2020-12-20 12:42:11', 10203, 3, '本题主语 gloves “手套” 第三人称复数，be动词用 are，所以选B', 'B', 'c', 'am', 20, '主谓语搭配', 'The black gloves ____ for Su Yang.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608439332097, 0, '2020-12-20 12:42:12', 10237, 3, '本句为There be引导的倒装句，谓语是 isn’t是 is not 的缩写，肯定句将isn’t 改为 is，或者 is not 去除 not否定句中 any 改为肯定句时需要变为 some', '\nThere is some milk in the bottle.', 'none', 'no$', 20, '句型架构改写', 'There isn’t any milk in the bottle (positive sentence)', 'txt');
INSERT INTO `t_prob_eval` VALUES (1608439332213, 0, '2020-12-20 12:42:12', 10237, 3, '本句为There be引导的倒装句，谓语是 isn’t是 is not 的缩写，肯定句将isn’t 改为 is，或者 is not 去除 not否定句中 any 改为肯定句时需要变为 some', '\nThere is some milk in the bottle.', 'none', 'no$', 20, '句型架构改写', 'There isn’t any milk in the bottle (positive sentence)', 'txt');
INSERT INTO `t_prob_eval` VALUES (1608449144481, 0, '2020-12-20 15:25:44', 10328, 3, '根据回答部分的句意“我要成为像杨利伟一样的人“可以判断问句问的是将来像成为什么样的人，特殊疑问代词用what，因此排除A和B选项像某人用like，所以选C', 'C', 'b', 'How, as', 20, 'what的理解和运用', '- ____ are you going to be in the future? - I want to be a person ____ Yang Liwei.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608450014932, 0, '2020-12-20 15:40:14', 10319, 3, '句意“ – 穿蓝色衣服的男孩是谁？ - 他是Mike“根据回答部分可以判断，问句问的是人，特殊疑问代词用who，所以选C', 'C', 'a', 'what', 20, 'who的理解与运用', '– ____ is the boy in blue?	- He’s Mark.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608450847360, 0, '2020-12-20 15:54:07', 103408, 3, '句意“-Anna, 这是我的侄子Andy - Andy很高兴见到你” 介绍别人时，用This is比较正式，所以选D', 'D', 'b', 'she', 20, '未知考点', '--Anna, ____ is my cousin Andy.____--Nice to meet you, Andy.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608450847397, 1, '2020-12-20 15:54:07', 103409, 3, '问句中提问 is this 或者 is that，回答时主谓语用 it is所以选C', 'C', 'c', 'It', 20, '未知考点', '—What is this?____— ____ is a cake.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608450847403, 0, '2020-12-20 15:54:07', 103410, 3, '根据问句主语 brothers 和 谓语动词are判断为复数，因此排除C选项These 和 Those的一般问句回答时用they 因此排除A和D选项所以选B', 'B', 'd', 'those; these', 20, '未知考点', '—Are ____ your brothers?____—Yes, ____ are.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608450847412, 1, '2020-12-20 15:54:07', 103409, 3, '问句中提问 is this 或者 is that，回答时主谓语用 it is所以选C', 'C', 'c', 'It', 20, '未知考点', '—What is this?____— ____ is a cake.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608450847417, 0, '2020-12-20 15:54:07', 103411, 3, '根据主语girls和谓语动词are可以判断主语是复数，所以选D', 'D', 'b', 'They', 20, '未知考点', '____ two girls are Mary and Lucy.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608450847428, 0, '2020-12-20 15:54:07', 103411, 3, '根据主语girls和谓语动词are可以判断主语是复数，所以选D', 'D', 'b', 'They', 20, '未知考点', '____ two girls are Mary and Lucy.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608450910819, 0, '2020-12-20 15:55:10', 103408, 3, '句意“-Anna, 这是我的侄子Andy - Andy很高兴见到你” 介绍别人时，用This is比较正式，所以选D', 'D', 'b', 'she', 20, '未知考点', '--Anna, ____ is my cousin Andy.____--Nice to meet you, Andy.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608450910858, 1, '2020-12-20 15:55:10', 103409, 3, '问句中提问 is this 或者 is that，回答时主谓语用 it is所以选C', 'C', 'c', 'It', 20, '未知考点', '—What is this?____— ____ is a cake.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608450910861, 0, '2020-12-20 15:55:10', 103410, 3, '根据问句主语 brothers 和 谓语动词are判断为复数，因此排除C选项These 和 Those的一般问句回答时用they 因此排除A和D选项所以选B', 'B', 'd', 'those; these', 20, '未知考点', '—Are ____ your brothers?____—Yes, ____ are.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608450910869, 0, '2020-12-20 15:55:10', 103411, 3, '根据主语girls和谓语动词are可以判断主语是复数，所以选D', 'D', 'b', 'They', 20, '未知考点', '____ two girls are Mary and Lucy.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608450931617, 0, '2020-12-20 15:55:31', 103408, 3, '句意“-Anna, 这是我的侄子Andy - Andy很高兴见到你” 介绍别人时，用This is比较正式，所以选D', 'D', 'b', 'she', 20, '未知考点', '--Anna, ____ is my cousin Andy.____--Nice to meet you, Andy.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608450931645, 1, '2020-12-20 15:55:31', 103409, 3, '问句中提问 is this 或者 is that，回答时主谓语用 it is所以选C', 'C', 'c', 'It', 20, '未知考点', '—What is this?____— ____ is a cake.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608450931661, 1, '2020-12-20 15:55:31', 103409, 3, '问句中提问 is this 或者 is that，回答时主谓语用 it is所以选C', 'C', 'c', 'It', 20, '未知考点', '—What is this?____— ____ is a cake.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608450931685, 0, '2020-12-20 15:55:31', 103410, 3, '根据问句主语 brothers 和 谓语动词are判断为复数，因此排除C选项These 和 Those的一般问句回答时用they 因此排除A和D选项所以选B', 'B', 'd', 'those; these', 20, '未知考点', '—Are ____ your brothers?____—Yes, ____ are.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608450931706, 0, '2020-12-20 15:55:31', 103411, 3, '根据主语girls和谓语动词are可以判断主语是复数，所以选D', 'D', 'b', 'They', 20, '未知考点', '____ two girls are Mary and Lucy.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608450931711, 0, '2020-12-20 15:55:31', 103411, 3, '根据主语girls和谓语动词are可以判断主语是复数，所以选D', 'D', 'b', 'They', 20, '未知考点', '____ two girls are Mary and Lucy.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608461265695, 0, '2020-12-20 18:47:45', 10043, 3, '句中主语为二人Tom和Jerry, 谓语动词是复数，所以选 B', 'B', 'c', 'brother', 20, '可数名词加~s', 'Tom and Jerry are ____.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608461279666, 0, '2020-12-20 18:47:59', 10043, 3, '句中主语为二人Tom和Jerry, 谓语动词是复数，所以选 B', 'B', 'c', 'brother', 20, '可数名词加~s', 'Tom and Jerry are ____.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608461279667, 0, '2020-12-20 18:47:59', 10043, 3, '句中主语为二人Tom和Jerry, 谓语动词是复数，所以选 B', 'B', 'c', 'brother', 20, '可数名词加~s', 'Tom and Jerry are ____.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608463501810, 1, '2020-12-20 19:25:01', 10097, 3, '句意：我可以帮你吗？ 好的，谢谢“ 根据句意应该选 C', 'C', 'c', 'I', 20, '（词义）句意题', '-Can ____ help you?____-Yes, thank you.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608463501871, 0, '2020-12-20 19:25:01', 10095, 3, '前句主语是 My dog 我的小狗，单数所以后句主语一致，对应的人称代词是 it 所以选A', 'A', 'b', 'They', 20, '根据上下文判断填入的人称代词', 'My dog likes sleeping. ____ is lazy.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608463501952, 0, '2020-12-20 19:25:01', 10088, 3, '根据回答得知提问的对象是green beans，可以用they来指代，且答句的主语是 they所以选B', 'B', 'a', 'the', 20, '根据上下文判断填入的人称代词', '-Are ____ green beans?____-Yes, they are.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608463501964, 0, '2020-12-20 19:25:01', 10095, 3, '前句主语是 My dog 我的小狗，单数所以后句主语一致，对应的人称代词是 it 所以选A', 'A', 'b', 'They', 20, '根据上下文判断填入的人称代词', 'My dog likes sleeping. ____ is lazy.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608463501969, 0, '2020-12-20 19:25:01', 10088, 3, '根据回答得知提问的对象是green beans，可以用they来指代，且答句的主语是 they所以选B', 'B', 'a', 'the', 20, '根据上下文判断填入的人称代词', '-Are ____ green beans?____-Yes, they are.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608463501979, 1, '2020-12-20 19:25:01', 10212, 3, '本题主语是 jackets 可数名词复数，搭配的be动词是 are， 所以选 B', 'B', 'b', 'aren’t', 20, '主谓语搭配', 'Those jackets ____ my sister’s.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608463501983, 1, '2020-12-20 19:25:01', 10212, 3, '本题主语是 jackets 可数名词复数，搭配的be动词是 are， 所以选 B', 'B', 'b', 'aren’t', 20, '主谓语搭配', 'Those jackets ____ my sister’s.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608463501993, 1, '2020-12-20 19:25:01', 10018, 3, 'have a nice trip 旅行愉快，固定搭配a用在辅音音素开头的单词，nice是辅音音素 /n/开头单词所以选 A', 'A', 'a', 'a', 20, '固定搭配', 'Did they have ____ nice trip?', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608463563333, 0, '2020-12-20 19:26:03', 10105, 3, 'Uncle叔叔，名词，前面应该使用形容词性物主代词 his 他的，形容词词性回答的空格是主语位置，应该填主格 he所以选 C', 'C', 'b', 'him, he', 20, '形容词性所有格', '– Is ____ Uncle strong?____	- Yes, ____ is.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608463563347, 0, '2020-12-20 19:26:03', 10044, 3, 'How many后面使用可数名词复数，所以选 B', 'B', 'a', 'picture', 20, '可数名词加~s', 'How many ____ do you have?', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608463563350, 0, '2020-12-20 19:26:03', 10044, 3, 'How many后面使用可数名词复数，所以选 B', 'B', 'a', 'picture', 20, '可数名词加~s', 'How many ____ do you have?', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608464174560, 1, '2020-12-20 19:36:14', 10007, 3, 'a 表示“一个”，是不定冠词，用于修饰辅音音素开头的单数名词；an 表示“一个” 是不定冠词，用于修饰元音音素开头的单数名词hot dog 是辅音音素/h/开头的单词，所以选C', 'C', 'c', 'a', 20, '辅音音素开头', 'It is ____ hot dog.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608464174561, 1, '2020-12-20 19:36:14', 10007, 3, 'a 表示“一个”，是不定冠词，用于修饰辅音音素开头的单数名词；an 表示“一个” 是不定冠词，用于修饰元音音素开头的单数名词hot dog 是辅音音素/h/开头的单词，所以选C', 'C', 'c', 'a', 20, '辅音音素开头', 'It is ____ hot dog.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608464174592, 1, '2020-12-20 19:36:14', 10212, 3, '本题主语是 jackets 可数名词复数，搭配的be动词是 are， 所以选 B', 'B', 'b', 'aren’t', 20, '主谓语搭配', 'Those jackets ____ my sister’s.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608464312084, 1, '2020-12-20 19:38:32', 10007, 3, 'a 表示“一个”，是不定冠词，用于修饰辅音音素开头的单数名词；an 表示“一个” 是不定冠词，用于修饰元音音素开头的单数名词hot dog 是辅音音素/h/开头的单词，所以选C', 'C', 'c', 'a', 20, '辅音音素开头', 'It is ____ hot dog.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608464312103, 1, '2020-12-20 19:38:32', 10212, 3, '本题主语是 jackets 可数名词复数，搭配的be动词是 are， 所以选 B', 'B', 'b', 'aren’t', 20, '主谓语搭配', 'Those jackets ____ my sister’s.', 'opt');
INSERT INTO `t_prob_eval` VALUES (1608464312117, 1, '2020-12-20 19:38:32', 10212, 3, '本题主语是 jackets 可数名词复数，搭配的be动词是 are， 所以选 B', 'B', 'b', 'aren’t', 20, '主谓语搭配', 'Those jackets ____ my sister’s.', 'opt');
COMMIT;

-- ----------------------------
-- Table structure for t_problem
-- ----------------------------
DROP TABLE IF EXISTS `t_problem`;
CREATE TABLE `t_problem` (
  `prob_id` bigint(20) NOT NULL,
  `grammar_id` bigint(20) DEFAULT NULL,
  `point_id` bigint(20) DEFAULT NULL,
  `prob_attr` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `prob_diff` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `prob_level` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `prob_text` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `options_id` bigint(20) DEFAULT NULL,
  `answer_id` bigint(20) DEFAULT NULL,
  `lesson_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`prob_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_problem
-- ----------------------------
BEGIN;
INSERT INTO `t_problem` VALUES (10000, 100, 1, 'Choice', 'Easy', '1', 'I buy ____ ice cream.', 10000, 10000, 1);
INSERT INTO `t_problem` VALUES (10001, 100, 2, 'Choice', 'Easy', '1', 'I have ____ bad headache.', 10001, 10001, 1);
INSERT INTO `t_problem` VALUES (10002, 100, 2, 'Choice', 'Easy', '1', 'I want ____ toy train.', 10002, 10002, 1);
INSERT INTO `t_problem` VALUES (10003, 100, 2, 'Choice', 'Easy', '1', 'There is ____ way.', 10003, 10003, 1);
INSERT INTO `t_problem` VALUES (10004, 100, 2, 'Choice', 'Easy', '1', 'We have three new teachers： ____ P.E. teacher, ____ music teacher and ____ English teacher.', 10004, 10004, 1);
INSERT INTO `t_problem` VALUES (10005, 100, 1, 'Choice', 'Easy', '1', 'Here is ____ eraser.', 10005, 10005, 1);
INSERT INTO `t_problem` VALUES (10006, 100, 2, 'Choice', 'Easy', '1', 'It is ____.', 10006, 10006, 1);
INSERT INTO `t_problem` VALUES (10007, 100, 2, 'Choice', 'Easy', '1', 'It is ____ hot dog.', 10007, 10007, 1);
INSERT INTO `t_problem` VALUES (10008, 100, 1, 'Choice', 'Easy', '1', '-What’s in the bag?____	-  ____	.', 10008, 10008, 1);
INSERT INTO `t_problem` VALUES (10009, 100, 1, 'Choice', 'Easy', '1', 'Look! I have ____ elephant.', 10009, 10009, 1);
INSERT INTO `t_problem` VALUES (10010, 100, 2, 'Choice', 'Easy', '1', 'That fat boy is ____ friend of mine.', 10010, 10010, 1);
INSERT INTO `t_problem` VALUES (10011, 100, 1, 'Choice', 'Easy', '1', '-What’s this?____	- It’s ____ umbrella.', 10011, 10011, 1);
INSERT INTO `t_problem` VALUES (10012, 100, 2, 'Choice', 'Easy', '1', 'It is ____ big apple.', 10012, 10012, 1);
INSERT INTO `t_problem` VALUES (10013, 100, 5, 'Choice', 'Easy', '1', 'I like playing ____ guitar.', 10013, 10013, 1);
INSERT INTO `t_problem` VALUES (10014, 100, 2, 'Choice', 'Easy', '1', 'We need ____ T-shirt and some shorts.', 10014, 10014, 1);
INSERT INTO `t_problem` VALUES (10015, 100, 2, 'Choice', 'Easy', '1', 'My father is ____ teacher.', 10015, 10015, 1);
INSERT INTO `t_problem` VALUES (10016, 100, 2, 'Choice', 'Easy', '1', 'Is there ____ library?', 10016, 10016, 1);
INSERT INTO `t_problem` VALUES (10017, 100, 1, 'Choice', 'Easy', '1', 'Is it ____ orange guitar?', 10017, 10017, 1);
INSERT INTO `t_problem` VALUES (10018, 100, 0, 'Choice', 'Easy', '1', 'Did they have ____ nice trip?', 10018, 10018, 1);
INSERT INTO `t_problem` VALUES (10019, 100, 2, 'Choice', 'Easy', '1', 'His father is ____ artist. But he wants to be ____ teacher.', 10019, 10019, 1);
INSERT INTO `t_problem` VALUES (10020, 100, 3, 'Choice', 'Medium', '1', 'There are 60 minutes in ____ hour.', 10020, 10020, 1);
INSERT INTO `t_problem` VALUES (10021, 100, 4, 'Choice', 'Medium', '1', 'Can you play ____ badminton?', 10021, 10021, 1);
INSERT INTO `t_problem` VALUES (10022, 100, 5, 'Choice', 'Medium', '1', 'Tim likes playing ____ basketball and Tom likes play ____ piano.', 10022, 10022, 1);
INSERT INTO `t_problem` VALUES (10023, 100, 2, 'Choice', 'Medium', '1', 'Look! This is ____ apple. It is ____ big apple.', 10023, 10023, 1);
INSERT INTO `t_problem` VALUES (10024, 100, 1, 'Choice', 'Medium', '1', 'There is ____ exciting film today.', 10024, 10024, 1);
INSERT INTO `t_problem` VALUES (10025, 100, 1, 'Choice', 'Medium', '1', 'Can you find ____ interesting place?', 10025, 10025, 1);
INSERT INTO `t_problem` VALUES (10026, 100, 1, 'Choice', 'Medium', '1', 'He wants to make ____ e-card for Lingling.', 10026, 10026, 1);
INSERT INTO `t_problem` VALUES (10027, 100, 3, 'Choice', 'Medium', '1', 'It takes half ____ hour.', 10027, 10027, 1);
INSERT INTO `t_problem` VALUES (10028, 100, 3, 'Choice', 'Medium', '1', 'There is ____ “h” and ____ “l” in the word “health.', 10028, 10028, 1);
INSERT INTO `t_problem` VALUES (10029, 100, 4, 'Choice', 'Medium', '1', 'I like playing ____ football.', 10029, 10029, 1);
INSERT INTO `t_problem` VALUES (10030, 100, 3, 'Choice', 'Medium', '1', 'Mary is ____ honest girl. We all love her.', 10030, 10030, 1);
INSERT INTO `t_problem` VALUES (10031, 100, 5, 'Choice', 'Medium', '1', 'I can play the pipa. Amy can play the ____, too.', 10031, 10031, 1);
INSERT INTO `t_problem` VALUES (10032, 100, 4, 'Choice', 'Medium', '1', 'I liked ____ five years ago.', 10032, 10032, 1);
INSERT INTO `t_problem` VALUES (10033, 100, 5, 'Choice', 'Medium', '1', 'I often play ____ guitar after school.', 10033, 10033, 1);
INSERT INTO `t_problem` VALUES (10034, 100, 2, 'Choice', 'Medium', '1', '____ Nanjing is ____ old city with ____ long history.', 10034, 10034, 1);
INSERT INTO `t_problem` VALUES (10035, 100, 3, 'Choice', 'Medium', '1', 'Peter is ____ honest boy. We all like him.', 10035, 10035, 1);
INSERT INTO `t_problem` VALUES (10036, 100, 1, 'Choice', 'Medium', '1', 'Lucy doesn’t have ____ eraser, but Lily has ____.', 10036, 10036, 1);
INSERT INTO `t_problem` VALUES (10037, 100, 5, 'Choice', 'Medium', '1', 'I like playing ____ violin.', 10037, 10037, 1);
INSERT INTO `t_problem` VALUES (10038, 100, 3, 'Choice', 'Medium', '1', 'We’ll come to your house ____ half ____ hour.', 10038, 10038, 1);
INSERT INTO `t_problem` VALUES (10039, 100, 1, 'Choice', 'Medium', '1', 'I’m having ____ ice cream.', 10039, 10039, 1);
INSERT INTO `t_problem` VALUES (10040, 101, 6, 'Choice', 'Easy', '1', 'The ____ in our yard are very beautiful.', 10040, 10040, 1);
INSERT INTO `t_problem` VALUES (10041, 101, 7, 'Choice', 'Easy', '1', 'The ____ has three .', 10041, 10041, 1);
INSERT INTO `t_problem` VALUES (10042, 101, 8, 'Choice', 'Easy', '1', 'There ____ two in the box.', 10042, 10042, 1);
INSERT INTO `t_problem` VALUES (10043, 101, 7, 'Choice', 'Easy', '1', 'Tom and Jerry are ____.', 10043, 10043, 1);
INSERT INTO `t_problem` VALUES (10044, 101, 7, 'Choice', 'Easy', '1', 'How many ____ do you have?', 10044, 10044, 1);
INSERT INTO `t_problem` VALUES (10045, 101, 10, 'Choice', 'Easy', '1', 'How many ____ do you see in the picture?', 10045, 10045, 1);
INSERT INTO `t_problem` VALUES (10046, 101, 8, 'Choice', 'Easy', '1', 'Are those your ____?', 10046, 10046, 1);
INSERT INTO `t_problem` VALUES (10047, 101, 11, 'Choice', 'Easy', '1', 'There are many ____ in the parking lot.', 10047, 10047, 1);
INSERT INTO `t_problem` VALUES (10048, 101, 7, 'Choice', 'Easy', '1', 'There are some desks, some ____ and some ____ in the classroom.', 10048, 10048, 1);
INSERT INTO `t_problem` VALUES (10049, 101, 7, 'Choice', 'Easy', '1', 'These ____ are super.', 10049, 10049, 1);
INSERT INTO `t_problem` VALUES (10050, 101, 7, 'Choice', 'Easy', '1', 'I am going to run the 100 ____.', 10050, 10050, 1);
INSERT INTO `t_problem` VALUES (10051, 101, 7, 'Choice', 'Easy', '1', 'Do you want some ____?', 10051, 10051, 1);
INSERT INTO `t_problem` VALUES (10052, 101, 7, 'Choice', 'Easy', '1', 'There is ____ in the classroom.', 10052, 10052, 1);
INSERT INTO `t_problem` VALUES (10053, 101, 10, 'Choice', 'Easy', '1', '____ are my favorite vegetable.', 10053, 10053, 1);
INSERT INTO `t_problem` VALUES (10054, 101, 10, 'Choice', 'Easy', '1', 'Superman and Batman are ____.', 10054, 10054, 1);
INSERT INTO `t_problem` VALUES (10055, 101, 9, 'Choice', 'Easy', '1', '-What do you have?____- I have some ____.', 10055, 10055, 1);
INSERT INTO `t_problem` VALUES (10056, 101, 12, 'Choice', 'Easy', '1', 'How many ____ do you want?', 10056, 10056, 1);
INSERT INTO `t_problem` VALUES (10057, 101, 13, 'Choice', 'Easy', '1', 'American cowboys like wearing ____.', 10057, 10057, 1);
INSERT INTO `t_problem` VALUES (10058, 101, 13, 'Choice', 'Easy', '1', 'I don’t like ____.', 10058, 10058, 1);
INSERT INTO `t_problem` VALUES (10059, 101, 12, 'Choice', 'Easy', '1', '-They are big. They are gray and brown. They have long nose. What are they? -They are ____.', 10059, 10059, 1);
INSERT INTO `t_problem` VALUES (10060, 101, 14, 'Choice', 'Medium', '1', 'Tom is one of the Chinese ____ in our school.', 10060, 10060, 1);
INSERT INTO `t_problem` VALUES (10061, 101, 14, 'Choice', 'Medium', '1', 'I can see three ____ in the zoo.', 10061, 10061, 1);
INSERT INTO `t_problem` VALUES (10062, 101, 15, 'Choice', 'Medium', '1', 'I can see ten ____ in the picture.', 10062, 10062, 1);
INSERT INTO `t_problem` VALUES (10063, 101, 7, 'Choice', 'Medium', '1', 'There are some ____ on the floor.', 10063, 10063, 1);
INSERT INTO `t_problem` VALUES (10064, 101, 16, 'Choice', 'Medium', '1', 'I drank two ____.', 10064, 10064, 1);
INSERT INTO `t_problem` VALUES (10065, 101, 17, 'Choice', 'Medium', '1', 'They are ____.', 10065, 10065, 1);
INSERT INTO `t_problem` VALUES (10066, 101, 18, 'Choice', 'Medium', '1', 'There is no ____ in the plate.', 10066, 10066, 1);
INSERT INTO `t_problem` VALUES (10067, 101, 17, 'Choice', 'Medium', '1', 'They are ____.', 10067, 10067, 1);
INSERT INTO `t_problem` VALUES (10068, 101, 18, 'Choice', 'Medium', '1', 'We can hear ____, but we can’t hear a bus.', 10068, 10068, 1);
INSERT INTO `t_problem` VALUES (10069, 101, 7, 'Choice', 'Medium', '1', 'I don’t have any ____.', 10069, 10069, 1);
INSERT INTO `t_problem` VALUES (10070, 101, 18, 'Choice', 'Medium', '1', 'You live on the same ____.', 10070, 10070, 1);
INSERT INTO `t_problem` VALUES (10071, 101, 14, 'Choice', 'Medium', '1', 'I write ____ in English.', 10071, 10071, 1);
INSERT INTO `t_problem` VALUES (10072, 101, 14, 'Choice', 'Medium', '1', 'How many ____ are there in our neighborhood?', 10072, 10072, 1);
INSERT INTO `t_problem` VALUES (10073, 101, -1, 'Choice', 'Medium', '1', 'You can put ____ in the soup.', 10073, 10073, 1);
INSERT INTO `t_problem` VALUES (10074, 101, -1, 'Choice', 'Medium', '1', 'There is a packet of ____.', 10074, 10074, 1);
INSERT INTO `t_problem` VALUES (10075, 101, 14, 'Choice', 'Medium', '1', 'My ____ are reading and cooking.', 10075, 10075, 1);
INSERT INTO `t_problem` VALUES (10076, 101, 15, 'Choice', 'Medium', '1', 'Wang Bing has a few ____ every day.', 10076, 10076, 1);
INSERT INTO `t_problem` VALUES (10077, 101, -1, 'Choice', 'Medium', '1', 'Cenedella puts on the new ____ and shoes.', 10077, 10077, 1);
INSERT INTO `t_problem` VALUES (10078, 101, 6, 'Choice', 'Medium', '1', 'I have a pair of ____ and a ____ of water.', 10078, 10078, 1);
INSERT INTO `t_problem` VALUES (10079, 101, -1, 'Choice', 'Medium', '1', 'The fairy wanted to give the poor man three ____.', 10079, 10079, 1);
INSERT INTO `t_problem` VALUES (10080, 102, 19, 'Choice', 'Easy', '1', '____ is my grandmother.', 10080, 10080, 2);
INSERT INTO `t_problem` VALUES (10081, 102, 21, 'Choice', 'Easy', '1', 'Amy is a new student. ____ is funny.', 10081, 10081, 2);
INSERT INTO `t_problem` VALUES (10082, 102, 22, 'Choice', 'Easy', '1', 'Are ____ doing your homework?', 10082, 10082, 2);
INSERT INTO `t_problem` VALUES (10083, 102, 22, 'Choice', 'Easy', '1', '-What is ____ doing?	-He’s cooking.', 10083, 10083, 2);
INSERT INTO `t_problem` VALUES (10084, 102, 20, 'Choice', 'Easy', '1', 'We see some birds. ____ are beautiful.', 10084, 10084, 2);
INSERT INTO `t_problem` VALUES (10085, 102, 20, 'Choice', 'Easy', '1', '-Is he your friend?____- Yes, ____ is.', 10085, 10085, 2);
INSERT INTO `t_problem` VALUES (10086, 102, 20, 'Choice', 'Easy', '1', '– Mum, this is Amy. ____ is a new student.', 10086, 10086, 2);
INSERT INTO `t_problem` VALUES (10087, 102, 20, 'Choice', 'Easy', '1', '-What are the elephants doing?____- ____ are drinking.', 10087, 10087, 2);
INSERT INTO `t_problem` VALUES (10088, 102, 20, 'Choice', 'Easy', '1', '-Are ____ green beans?____-Yes, they are.', 10088, 10088, 2);
INSERT INTO `t_problem` VALUES (10089, 102, 20, 'Choice', 'Easy', '1', '-What does your____ do?____	- She is a singer.', 10089, 10089, 2);
INSERT INTO `t_problem` VALUES (10090, 102, 21, 'Choice', 'Easy', '1', '-What does ____ like doing?____	-He likes fishing,', 10090, 10090, 2);
INSERT INTO `t_problem` VALUES (10091, 102, 19, 'Choice', 'Easy', '1', '____ is a yellow duck.', 10091, 10091, 2);
INSERT INTO `t_problem` VALUES (10092, 102, 23, 'Choice', 'Easy', '1', '____ often plays basketball after school together.', 10092, 10092, 2);
INSERT INTO `t_problem` VALUES (10093, 102, 20, 'Choice', 'Easy', '1', '- How is she?____-____ is not good. ____ has a fever.', 10093, 10093, 2);
INSERT INTO `t_problem` VALUES (10094, 102, 20, 'Choice', 'Easy', '1', '- Where are the bikes?____- ____ are next to the park.', 10094, 10094, 2);
INSERT INTO `t_problem` VALUES (10095, 102, 20, 'Choice', 'Easy', '1', 'My dog likes sleeping. ____ is lazy.', 10095, 10095, 2);
INSERT INTO `t_problem` VALUES (10096, 102, 20, 'Choice', 'Easy', '1', 'Look at the cats over there. ____ belong to an old woman.', 10096, 10096, 2);
INSERT INTO `t_problem` VALUES (10097, 102, 23, 'Choice', 'Easy', '1', '-Can ____ help you?____-Yes, thank you.', 10097, 10097, 2);
INSERT INTO `t_problem` VALUES (10098, 102, 20, 'Choice', 'Easy', '1', 'I have a big brother. ____ is Paul.', 10098, 10098, 2);
INSERT INTO `t_problem` VALUES (10099, 102, 20, 'Choice', 'Medium', '1', 'That is not my kite. That kite is very small, but ____ is very big.', 10099, 10099, 2);
INSERT INTO `t_problem` VALUES (10100, 102, 20, 'Choice', 'Medium', '1', 'The dress is mine. Give ____ to me, please.', 10100, 10100, 2);
INSERT INTO `t_problem` VALUES (10101, 102, 20, 'Choice', 'Medium', '1', '- Shall ____ go to the classroom?____- Sure, let’s go.', 10101, 10101, 2);
INSERT INTO `t_problem` VALUES (10102, 102, 20, 'Choice', 'Medium', '1', '- Are these your tickets?____	- No, ____ are not theirs.  aren’t here.', 10102, 10102, 2);
INSERT INTO `t_problem` VALUES (10103, 102, 0, 'Choice', 'Medium', '1', 'Excuse ____, where is teacher Lee?', 10103, 10103, 2);
INSERT INTO `t_problem` VALUES (10104, 102, 20, 'Choice', 'Medium', '1', '- Are ____ Miss Li?____- Yes, I am Miss Li. How can I help you?', 10104, 10104, 2);
INSERT INTO `t_problem` VALUES (10105, 102, 24, 'Choice', 'Medium', '1', '– Is ____ Uncle strong?____	- Yes, ____ is.', 10105, 10105, 2);
INSERT INTO `t_problem` VALUES (10106, 102, 24, 'Choice', 'Medium', '1', '____ is a girl. ____ name is Kitty.', 10106, 10106, 2);
INSERT INTO `t_problem` VALUES (10107, 102, 19, 'Choice', 'Medium', '1', 'Is ____ our new classmate?', 10107, 10107, 2);
INSERT INTO `t_problem` VALUES (10108, 102, 25, 'Choice', 'Medium', '1', 'Can I bring ____ to the park?', 10108, 10108, 2);
INSERT INTO `t_problem` VALUES (10109, 102, 19, 'Choice', 'Medium', '1', 'Whose trousers ________?', 10109, 10109, 2);
INSERT INTO `t_problem` VALUES (10110, 102, 20, 'Choice', 'Medium', '1', 'Look at my eyes. ____ big.', 10110, 10110, 2);
INSERT INTO `t_problem` VALUES (10111, 102, 25, 'Choice', 'Medium', '1', 'Can you tell ____ about the US?', 10111, 10111, 2);
INSERT INTO `t_problem` VALUES (10112, 102, 20, 'Choice', 'Medium', '1', '-What can his mother do?____	- ____ can swim.', 10112, 10112, 2);
INSERT INTO `t_problem` VALUES (10113, 102, 20, 'Choice', 'Medium', '1', '– Where’s Mrs. Tan?________- ____ is here.', 10113, 10113, 2);
INSERT INTO `t_problem` VALUES (10114, 102, 20, 'Choice', 'Medium', '1', '– What’s wrong with ____? ____	- ____ don’t feel well.', 10114, 10114, 2);
INSERT INTO `t_problem` VALUES (10115, 102, 25, 'Choice', 'Medium', '1', 'Give ____ a book, please.', 10115, 10115, 2);
INSERT INTO `t_problem` VALUES (10116, 102, 0, 'Choice', 'Medium', '1', 'Here ____ are.', 10116, 10116, 2);
INSERT INTO `t_problem` VALUES (10117, 102, 0, 'Choice', 'Medium', '1', 'Thank ____ for helping me.', 10117, 10117, 2);
INSERT INTO `t_problem` VALUES (10118, 102, 25, 'Choice', 'Medium', '1', 'Please send ____ an email.', 10118, 10118, 2);
INSERT INTO `t_problem` VALUES (10119, 102, 25, 'Choice', 'Difficult', '1', 'Let ____ clean the fish bowl!', 10119, 10119, 2);
INSERT INTO `t_problem` VALUES (10120, 102, 26, 'Choice', 'Difficult', '1', 'Can they talk to ____ tonight?', 10120, 10120, 2);
INSERT INTO `t_problem` VALUES (10121, 102, 20, 'Choice', 'Difficult', '1', 'Look at our beautiful new queen, ____ is sitting on the chair.', 10121, 10121, 2);
INSERT INTO `t_problem` VALUES (10122, 102, 26, 'Choice', 'Difficult', '1', 'You can ride a bike with ____.', 10122, 10122, 2);
INSERT INTO `t_problem` VALUES (10123, 102, 25, 'Choice', 'Difficult', '1', 'Can you show ____ around?', 10123, 10123, 2);
INSERT INTO `t_problem` VALUES (10124, 102, 25, 'Choice', 'Difficult', '1', 'Let ____ go and have a look.', 10124, 10124, 2);
INSERT INTO `t_problem` VALUES (10125, 102, 25, 'Choice', 'Difficult', '1', 'They don’t like ____.', 10125, 10125, 2);
INSERT INTO `t_problem` VALUES (10126, 102, 26, 'Choice', 'Difficult', '1', 'They are afraid of ____.', 10126, 10126, 2);
INSERT INTO `t_problem` VALUES (10127, 102, 0, 'Choice', 'Difficult', '1', 'In the past, none of the astronauts was woman. All of ____.', 10127, 10127, 2);
INSERT INTO `t_problem` VALUES (10128, 102, 25, 'Choice', 'Difficult', '1', 'Let ____ go to the zoo together.', 10128, 10128, 2);
INSERT INTO `t_problem` VALUES (10129, 102, 25, 'Choice', 'Difficult', '1', 'Nice to meet ____.', 10129, 10129, 2);
INSERT INTO `t_problem` VALUES (10130, 102, 26, 'Choice', 'Difficult', '1', 'All the children walk behind ____.', 10130, 10130, 2);
INSERT INTO `t_problem` VALUES (10131, 102, 26, 'Choice', 'Difficult', '1', '– Look, this is a photo of ____. She is pretty in the picture.', 10131, 10131, 2);
INSERT INTO `t_problem` VALUES (10132, 102, 26, 'Choice', 'Difficult', '1', 'There are three bears in front of ____.', 10132, 10132, 2);
INSERT INTO `t_problem` VALUES (10133, 102, 25, 'Choice', 'Difficult', '1', 'Miss Tang teach ____ how to make a chocolate pudding.', 10133, 10133, 2);
INSERT INTO `t_problem` VALUES (10134, 102, 25, 'Choice', 'Difficult', '1', 'Please give ____ some water. We’re very thirsty.', 10134, 10134, 2);
INSERT INTO `t_problem` VALUES (10135, 102, 25, 'Choice', 'Difficult', '1', 'I have a robot. My grandpa made ____ for me.', 10135, 10135, 2);
INSERT INTO `t_problem` VALUES (10136, 102, 26, 'Choice', 'Difficult', '1', 'Do you want to go with ____?', 10136, 10136, 2);
INSERT INTO `t_problem` VALUES (10137, 102, 26, 'Choice', 'Difficult', '1', 'Look! There are two cats in front of ____.', 10137, 10137, 2);
INSERT INTO `t_problem` VALUES (10138, 102, 26, 'Choice', 'Difficult', '1', '-What’s the matter with ____?____-He’s got a fever.', 10138, 10138, 2);
INSERT INTO `t_problem` VALUES (10139, 103, 27, 'Choice', 'Easy', '1', 'I ____ a girl.', 10139, 10139, 3);
INSERT INTO `t_problem` VALUES (10140, 103, 27, 'Choice', 'Easy', '1', 'He ____ a boy.', 10140, 10140, 3);
INSERT INTO `t_problem` VALUES (10141, 103, 27, 'Choice', 'Easy', '1', 'We ____ boys.', 10141, 10141, 3);
INSERT INTO `t_problem` VALUES (10142, 103, 27, 'Choice', 'Easy', '1', 'I ____ an English teacher now.', 10142, 10142, 3);
INSERT INTO `t_problem` VALUES (10143, 103, 27, 'Choice', 'Easy', '1', 'She ____ happy in the party.', 10143, 10143, 3);
INSERT INTO `t_problem` VALUES (10144, 103, 27, 'Choice', 'Easy', '1', 'They ____ glad to see each other last month.', 10144, 10144, 3);
INSERT INTO `t_problem` VALUES (10145, 103, 28, 'Choice', 'Easy', '1', 'Helen and Nancy ____ good friends.', 10145, 10145, 3);
INSERT INTO `t_problem` VALUES (10146, 103, 29, 'Choice', 'Easy', '1', 'The little dog ____ two years old this year.', 10146, 10146, 3);
INSERT INTO `t_problem` VALUES (10147, 103, 30, 'Choice', 'Easy', '1', 'Look, there ____ lots of grapes here.', 10147, 10147, 3);
INSERT INTO `t_problem` VALUES (10148, 103, 27, 'Choice', 'Easy', '1', 'Who ____ I？', 10148, 10148, 3);
INSERT INTO `t_problem` VALUES (10149, 103, 27, 'Choice', 'Easy', '1', 'She ____ Kitty?', 10149, 10149, 3);
INSERT INTO `t_problem` VALUES (10150, 103, 28, 'Choice', 'Easy', '1', 'Jane and Tom ____ my classmates.', 10150, 10150, 3);
INSERT INTO `t_problem` VALUES (10151, 103, 29, 'Choice', 'Easy', '1', 'My sisters ____ tall.', 10151, 10151, 3);
INSERT INTO `t_problem` VALUES (10152, 103, 32, 'Choice', 'Easy', '1', 'Cats ____ on the chair.', 10152, 10152, 3);
INSERT INTO `t_problem` VALUES (10153, 103, 31, 'Choice', 'Easy', '1', 'This ____ our meeting room.', 10153, 10153, 3);
INSERT INTO `t_problem` VALUES (10154, 103, 32, 'Choice', 'Easy', '1', 'My eyes ____ big.', 10154, 10154, 3);
INSERT INTO `t_problem` VALUES (10155, 103, 27, 'Choice', 'Easy', '1', 'They ____ my cousins.', 10155, 10155, 3);
INSERT INTO `t_problem` VALUES (10156, 103, 32, 'Choice', 'Easy', '1', 'The animals ____ afraid of tigers.', 10156, 10156, 3);
INSERT INTO `t_problem` VALUES (10157, 103, 32, 'Choice', 'Easy', '1', 'Look! The ducks ____ swimming.', 10157, 10157, 3);
INSERT INTO `t_problem` VALUES (10158, 103, 28, 'Choice', 'Easy', '1', 'My brother and sister ____ both eleven years old.', 10158, 10158, 3);
INSERT INTO `t_problem` VALUES (10159, 103, 30, 'Choice', 'Medium', '1', 'There ____ a sign on the chair on Monday.', 10159, 10159, 3);
INSERT INTO `t_problem` VALUES (10160, 103, 32, 'Choice', 'Medium', '1', 'Today ____ the first of June. It ____ Children’s Day.', 10160, 10160, 3);
INSERT INTO `t_problem` VALUES (10161, 103, 32, 'Choice', 'Medium', '1', 'All the students ____ very excited.', 10161, 10161, 3);
INSERT INTO `t_problem` VALUES (10162, 103, 33, 'Choice', 'Medium', '1', 'This pair of shoes ____ red.', 10162, 10162, 3);
INSERT INTO `t_problem` VALUES (10163, 103, 30, 'Choice', 'Medium', '1', 'There ____ a girl in the room.', 10163, 10163, 3);
INSERT INTO `t_problem` VALUES (10164, 103, 30, 'Choice', 'Medium', '1', 'There ____ a beautiful rainbow in the sky.', 10164, 10164, 3);
INSERT INTO `t_problem` VALUES (10165, 103, 34, 'Choice', 'Medium', '1', 'Where ____ your friend?', 10165, 10165, 3);
INSERT INTO `t_problem` VALUES (10166, 103, 27, 'Choice', 'Medium', '1', '- ____ you a boy?____	- No, I’m not.', 10166, 10166, 3);
INSERT INTO `t_problem` VALUES (10167, 103, 34, 'Choice', 'Medium', '1', 'Where ____ Tom and John？', 10167, 10167, 3);
INSERT INTO `t_problem` VALUES (10168, 103, 34, 'Choice', 'Medium', '1', 'My parents ____ very busy every day.', 10168, 10168, 3);
INSERT INTO `t_problem` VALUES (10169, 103, 33, 'Choice', 'Medium', '1', 'There ____ two glasses of juice on the table.', 10169, 10169, 3);
INSERT INTO `t_problem` VALUES (10170, 103, 34, 'Choice', 'Medium', '1', 'How much ____ they?', 10170, 10170, 3);
INSERT INTO `t_problem` VALUES (10171, 103, 30, 'Choice', 'Medium', '1', 'There ____ some glasses on it.', 10171, 10171, 3);
INSERT INTO `t_problem` VALUES (10172, 103, 30, 'Choice', 'Medium', '1', 'In many places, there ____ not much water.', 10172, 10172, 3);
INSERT INTO `t_problem` VALUES (10173, 103, 32, 'Choice', 'Medium', '1', 'Our class ____ big, but their classes ____ small.', 10173, 10173, 3);
INSERT INTO `t_problem` VALUES (10174, 103, 34, 'Choice', 'Medium', '1', 'Whose trousers ____?', 10174, 10174, 3);
INSERT INTO `t_problem` VALUES (10175, 103, 29, 'Choice', 'Medium', '1', 'Lily’s rooms ____ not very big.', 10175, 10175, 3);
INSERT INTO `t_problem` VALUES (10176, 103, 30, 'Choice', 'Medium', '1', 'There ____ no internet here.', 10176, 10176, 3);
INSERT INTO `t_problem` VALUES (10177, 103, 30, 'Choice', 'Medium', '1', 'There ____ many flowers and trees in the People’s park.', 10177, 10177, 3);
INSERT INTO `t_problem` VALUES (10178, 103, 34, 'Choice', 'Medium', '1', 'What color ____ your clock?', 10178, 10178, 3);
INSERT INTO `t_problem` VALUES (10179, 103, 34, 'Choice', 'Difficult', '1', '– What ____ on the table?____-There ____ some milk.', 10179, 10179, 3);
INSERT INTO `t_problem` VALUES (10180, 103, 35, 'Choice', 'Difficult', '1', 'I have a word book. Here ____.', 10180, 10180, 3);
INSERT INTO `t_problem` VALUES (10181, 103, 36, 'Choice', 'Difficult', '1', 'We can ____ friends.', 10181, 10181, 3);
INSERT INTO `t_problem` VALUES (10182, 103, 29, 'Choice', 'Difficult', '1', 'His teeth ____ big and sharp.', 10182, 10182, 3);
INSERT INTO `t_problem` VALUES (10183, 103, 32, 'Choice', 'Difficult', '1', 'Look! Some meat ____ in the box. Some apples ____ in the basket.', 10183, 10183, 3);
INSERT INTO `t_problem` VALUES (10184, 103, 29, 'Choice', 'Difficult', '1', 'Our home ____ near the school.', 10184, 10184, 3);
INSERT INTO `t_problem` VALUES (10185, 103, 36, 'Choice', 'Difficult', '1', 'Let’s ____ good friends..', 10185, 10185, 3);
INSERT INTO `t_problem` VALUES (10186, 103, 33, 'Choice', 'Difficult', '1', 'The pair of jeans over there ____ jack’s.', 10186, 10186, 3);
INSERT INTO `t_problem` VALUES (10187, 103, 37, 'Choice', 'Difficult', '1', '____ everyone here today?', 10187, 10187, 3);
INSERT INTO `t_problem` VALUES (10188, 103, 37, 'Choice', 'Difficult', '1', 'None of us ____ at the library.', 10188, 10188, 3);
INSERT INTO `t_problem` VALUES (10189, 103, 37, 'Choice', 'Difficult', '1', 'Anyone ____ forbidden to tell.', 10189, 10189, 3);
INSERT INTO `t_problem` VALUES (10190, 103, 37, 'Choice', 'Difficult', '1', 'Somebody ____ waiting for you at the lobby.', 10190, 10190, 3);
INSERT INTO `t_problem` VALUES (10191, 103, 32, 'Choice', 'Difficult', '1', 'One of the ducklings in the pond ____ looking for mommy.', 10191, 10191, 3);
INSERT INTO `t_problem` VALUES (10192, 103, 32, 'Choice', 'Difficult', '1', 'The girl’s telephone number ____ 032-55788.', 10192, 10192, 3);
INSERT INTO `t_problem` VALUES (10193, 103, 38, 'Choice', 'Difficult', '1', 'Obviously ____ just 2 years old Pleasant and Wolf’s old fans, and her mother bought her a set of “Pleasant and the Wolf” CD.', 10193, 10193, 3);
INSERT INTO `t_problem` VALUES (10194, 103, 35, 'Choice', 'Difficult', '1', 'Here ____ some noodles for you. Dear Alice.', 10194, 10194, 3);
INSERT INTO `t_problem` VALUES (10195, 103, 35, 'Choice', 'Difficult', '1', 'Here ____ the money.', 10195, 10195, 3);
INSERT INTO `t_problem` VALUES (10196, 103, 35, 'Choice', 'Difficult', '1', 'Here ____ some orange juice.', 10196, 10196, 3);
INSERT INTO `t_problem` VALUES (10197, 103, 35, 'Choice', 'Difficult', '1', '– Here ____.____	-Thank you very much.', 10197, 10197, 3);
INSERT INTO `t_problem` VALUES (10198, 103, 35, 'Choice', 'Difficult', '1', 'Here ____ the flag of China.', 10198, 10198, 3);
INSERT INTO `t_problem` VALUES (10199, 104, 39, 'Choice', 'Easy', '1', 'The girl ____ Jack’s sister.', 10199, 10199, 4);
INSERT INTO `t_problem` VALUES (10200, 104, 39, 'Choice', 'Easy', '1', 'The dogs ____ tall and fat.', 10200, 10200, 4);
INSERT INTO `t_problem` VALUES (10201, 104, 39, 'Choice', 'Easy', '1', 'The man with big eyes ____ a teacher.', 10201, 10201, 4);
INSERT INTO `t_problem` VALUES (10202, 104, 39, 'Choice', 'Easy', '1', 'Mike and Liu Tao ____ at school.', 10202, 10202, 4);
INSERT INTO `t_problem` VALUES (10203, 104, 39, 'Choice', 'Easy', '1', 'The black gloves ____ for Su Yang.', 10203, 10203, 4);
INSERT INTO `t_problem` VALUES (10204, 104, 40, 'Choice', 'Easy', '1', 'The two cups of milk ____ for me.', 10204, 10204, 4);
INSERT INTO `t_problem` VALUES (10205, 104, 41, 'Choice', 'Easy', '1', 'Some tea ____ in the glass.', 10205, 10205, 4);
INSERT INTO `t_problem` VALUES (10206, 104, 42, 'Choice', 'Easy', '1', 'There ____ some apples on the tree.', 10206, 10206, 4);
INSERT INTO `t_problem` VALUES (10207, 104, 39, 'Choice', 'Easy', '1', 'You, he and I ____ from England, They are Chinese.', 10207, 10207, 4);
INSERT INTO `t_problem` VALUES (10208, 104, 43, 'Choice', 'Easy', '1', 'I ____ an English teacher, I am a P.E. teacher now.', 10208, 10208, 4);
INSERT INTO `t_problem` VALUES (10209, 104, 42, 'Choice', 'Easy', '1', 'There ____ many monkeys in the mountain.', 10209, 10209, 4);
INSERT INTO `t_problem` VALUES (10210, 104, 42, 'Choice', 'Easy', '1', 'There ____ a beautiful garden in our school.', 10210, 10210, 4);
INSERT INTO `t_problem` VALUES (10211, 104, 42, 'Choice', 'Easy', '1', 'There ____ some water in the glass.', 10211, 10211, 4);
INSERT INTO `t_problem` VALUES (10212, 104, 39, 'Choice', 'Easy', '1', 'Those jackets ____ my sister’s.', 10212, 10212, 4);
INSERT INTO `t_problem` VALUES (10213, 104, 39, 'Choice', 'Easy', '1', 'The books ____ under the table.', 10213, 10213, 4);
INSERT INTO `t_problem` VALUES (10214, 104, 44, 'Choice', 'Easy', '1', 'Where ____ your friends?', 10214, 10214, 4);
INSERT INTO `t_problem` VALUES (10215, 104, 43, 'Choice', 'Easy', '1', 'He ____ my best firend.', 10215, 10215, 4);
INSERT INTO `t_problem` VALUES (10216, 104, 39, 'Choice', 'Easy', '1', 'The scissors ____ lying in the drawer.', 10216, 10216, 4);
INSERT INTO `t_problem` VALUES (10217, 104, 44, 'Choice', 'Easy', '1', 'Whose coats ____ these?', 10217, 10217, 4);
INSERT INTO `t_problem` VALUES (10218, 104, 39, 'Choice', 'Easy', '1', 'The sun ____ shining.', 10218, 10218, 4);
INSERT INTO `t_problem` VALUES (10219, 104, 45, 'Choice', 'Medium', '1', '____ your brother in the classroom?', 10219, 10219, 4);
INSERT INTO `t_problem` VALUES (10220, 104, 45, 'Choice', 'Medium', '1', '____ David and Helen from England?', 10220, 10220, 4);
INSERT INTO `t_problem` VALUES (10221, 104, 45, 'Choice', 'Medium', '1', '____ there any apple juice in the bottle?', 10221, 10221, 4);
INSERT INTO `t_problem` VALUES (10222, 104, -1, 'Choice', 'Medium', '1', 'How many days ____ there in a week?', 10222, 10222, 4);
INSERT INTO `t_problem` VALUES (10223, 104, 45, 'Choice', 'Medium', '1', '____ you Miss Li?', 10223, 10223, 4);
INSERT INTO `t_problem` VALUES (10224, 104, 46, 'Choice', 'Medium', '1', 'That ____ her dog. It belongs to Smith family.', 10224, 10224, 4);
INSERT INTO `t_problem` VALUES (10225, 104, 46, 'Choice', 'Medium', '1', 'Where ____ your father? He ____ at the office.', 10225, 10225, 4);
INSERT INTO `t_problem` VALUES (10226, 104, 44, 'Choice', 'Medium', '1', 'Here ____ a pair of scissors.', 10226, 10226, 4);
INSERT INTO `t_problem` VALUES (10227, 104, 46, 'Choice', 'Medium', '1', 'Grace and Cindy ____ playing computer games now. They are doing their homework now.', 10227, 10227, 4);
INSERT INTO `t_problem` VALUES (10228, 104, 44, 'Choice', 'Medium', '1', 'The young man with books in his hands ____ Mr. Brown.', 10228, 10228, 4);
INSERT INTO `t_problem` VALUES (10229, 104, 47, 'Rewrite', 'Medium', '1', 'The dog with black fur is for you	(negative sentence)', 10229, 10229, 4);
INSERT INTO `t_problem` VALUES (10230, 104, 47, 'Rewrite', 'Medium', '1', 'The piece of paper is on the desk	(negative sentence)', 10230, 10230, 4);
INSERT INTO `t_problem` VALUES (10231, 104, 47, 'Rewrite', 'Medium', '1', 'The pair of trousers aren’t in the wardrobe	 (positive sentence)', 10231, 10231, 4);
INSERT INTO `t_problem` VALUES (10232, 104, 47, 'Rewrite', 'Medium', '1', 'The capital letter in “China” is “W”	(negative sentence)', 10232, 10232, 4);
INSERT INTO `t_problem` VALUES (10233, 104, 47, 'Rewrite', 'Medium', '1', 'You, he and I are in the same class	(negative sentence)', 10233, 10233, 4);
INSERT INTO `t_problem` VALUES (10234, 104, 47, 'Rewrite', 'Medium', '1', 'His cards are on the table	(negative sentence)', 10234, 10234, 4);
INSERT INTO `t_problem` VALUES (10235, 104, 47, 'Rewrite', 'Medium', '1', 'There are five dolls on the shelf	(negative sentence)', 10235, 10235, 4);
INSERT INTO `t_problem` VALUES (10236, 104, 47, 'Rewrite', 'Medium', '1', 'Jane and Tom aren’t my classmates	(positive sentence)', 10236, 10236, 4);
INSERT INTO `t_problem` VALUES (10237, 104, 47, 'Rewrite', 'Medium', '1', 'There isn’t any milk in the bottle (positive sentence)', 10237, 10237, 4);
INSERT INTO `t_problem` VALUES (10238, 104, 47, 'Rewrite', 'Medium', '1', 'There are some apples on the plate	(negative sentence)', 10238, 10238, 4);
INSERT INTO `t_problem` VALUES (10239, 104, 48, 'Choice', 'Difficult', '1', 'Ten and two ____ thirteen.', 10239, 10239, 4);
INSERT INTO `t_problem` VALUES (10240, 104, 46, 'Choice', 'Difficult', '1', '-Where ____ your brother? he ____ at home.	-He goes to Tom’s house.', 10240, 10240, 4);
INSERT INTO `t_problem` VALUES (10241, 104, 46, 'Choice', 'Difficult', '1', '-My father ____ at home. ____-He has an appointment with his friend.', 10241, 10241, 4);
INSERT INTO `t_problem` VALUES (10242, 104, 49, 'Choice', 'Difficult', '1', 'There ____ bread on the plate.', 10242, 10242, 4);
INSERT INTO `t_problem` VALUES (10243, 104, -1, 'Choice', 'Difficult', '1', 'Five and Five ____ ten.', 10243, 10243, 4);
INSERT INTO `t_problem` VALUES (10244, 104, -1, 'Choice', 'Difficult', '1', 'There ____ some sheep over there eating grass.', 10244, 10244, 4);
INSERT INTO `t_problem` VALUES (10245, 104, 50, 'Choice', 'Difficult', '1', 'The Smiths ____ kind people.', 10245, 10245, 4);
INSERT INTO `t_problem` VALUES (10246, 104, 49, 'Choice', 'Difficult', '1', 'There ____ chocolate left. We finished it yesterday.', 10246, 10246, 4);
INSERT INTO `t_problem` VALUES (10247, 104, 51, 'Choice', 'Difficult', '1', 'The Chinese people ____ a hard-working people.', 10247, 10247, 4);
INSERT INTO `t_problem` VALUES (10248, 104, 52, 'Choice', 'Difficult', '1', 'Mathematics ____ her weakest subject.', 10248, 10248, 4);
INSERT INTO `t_problem` VALUES (10249, 104, 50, 'Choice', 'Difficult', '1', 'The old ____ taken good care of in old people’s home.', 10249, 10249, 4);
INSERT INTO `t_problem` VALUES (10250, 104, 51, 'Choice', 'Difficult', '1', 'The Chinese ____ hard-working people.', 10250, 10250, 4);
INSERT INTO `t_problem` VALUES (10251, 104, 46, 'Choice', 'Difficult', '1', 'There ____ any juice in the bottle.', 10251, 10251, 4);
INSERT INTO `t_problem` VALUES (10252, 104, 52, 'Choice', 'Difficult', '1', 'His mathematics ____ weak.', 10252, 10252, 4);
INSERT INTO `t_problem` VALUES (10253, 104, 50, 'Choice', 'Difficult', '1', 'The beauty there ____ really wonderful.', 10253, 10253, 4);
INSERT INTO `t_problem` VALUES (10254, 104, 52, 'Choice', 'Difficult', '1', 'It comes to ￡50 if my mathematics ____ correct.', 10254, 10254, 4);
INSERT INTO `t_problem` VALUES (10255, 104, -1, 'Choice', 'Difficult', '1', 'Eleven and Thirteen ____ twelve.', 10255, 10255, 4);
INSERT INTO `t_problem` VALUES (10256, 104, 51, 'Choice', 'Difficult', '1', 'There ____ 56 peoples in China.', 10256, 10256, 4);
INSERT INTO `t_problem` VALUES (10257, 104, 50, 'Choice', 'Difficult', '1', 'The blind ____ crossing the street.', 10257, 10257, 4);
INSERT INTO `t_problem` VALUES (10258, 104, 52, 'Choice', 'Difficult', '1', 'The mathematics of this problem ____ complicated.', 10258, 10258, 4);
INSERT INTO `t_problem` VALUES (10259, 105, 60, 'Rewrite', 'Easy', '1', 'I am a new student (Yes/No Question; Positive Answer)', 10259, 10259, 5);
INSERT INTO `t_problem` VALUES (10260, 105, 54, 'Rewrite', 'Easy', '1', 'Grace and Helen are sisters (Yes/No Question; Positive Answer)', 10260, 10260, 5);
INSERT INTO `t_problem` VALUES (10261, 105, 54, 'Rewrite', 'Easy', '1', 'That boy is Mike (Yes/No Question; Positive Answer)', 10261, 10261, 5);
INSERT INTO `t_problem` VALUES (10262, 105, 54, 'Rewrite', 'Easy', '1', 'These are my books (Yes/No Question; Positive Answer)', 10262, 10262, 5);
INSERT INTO `t_problem` VALUES (10263, 105, 55, 'Rewrite', 'Easy', '1', 'Jane and Mary are good students (Yes/No Question; Negative Answer)', 10263, 10263, 5);
INSERT INTO `t_problem` VALUES (10264, 105, 56, 'Rewrite', 'Easy', '1', 'This is my sister (Yes/No Question; Negative Answer)', 10264, 10264, 5);
INSERT INTO `t_problem` VALUES (10265, 105, 56, 'Rewrite', 'Easy', '1', 'Those are his toys (Yes/No Question; Negative Answer)', 10265, 10265, 5);
INSERT INTO `t_problem` VALUES (10266, 105, 54, 'Rewrite', 'Easy', '1', 'That black cat is my pet  (Yes/No Question; Positive Answer)', 10266, 10266, 5);
INSERT INTO `t_problem` VALUES (10267, 105, 56, 'Rewrite', 'Easy', '1', 'This is our teacher (Yes/No Question; Negative Answer)', 10267, 10267, 5);
INSERT INTO `t_problem` VALUES (10268, 105, 55, 'Rewrite', 'Easy', '1', 'We are classmates (Yes/No Question; Positive Answer)', 10268, 10268, 5);
INSERT INTO `t_problem` VALUES (10269, 105, 57, 'Choice', 'Easy', '1', '- Is his name Martin? - ____.', 10269, 10269, 5);
INSERT INTO `t_problem` VALUES (10270, 105, 54, 'Choice', 'Easy', '1', '– Is Mike your brother?	- Yes, ____.', 10270, 10270, 5);
INSERT INTO `t_problem` VALUES (10271, 105, 56, 'Choice', 'Easy', '1', '– Are those ducklings swimming in the pond?	– ____. they are sleeping with their mom.', 10271, 10271, 5);
INSERT INTO `t_problem` VALUES (10272, 105, 56, 'Choice', 'Easy', '1', '- Is this your T-shirt?	- No, ____.', 10272, 10272, 5);
INSERT INTO `t_problem` VALUES (10273, 105, 53, 'Choice', 'Easy', '1', '–____ Peter at home?____- Yes, he is.', 10273, 10273, 5);
INSERT INTO `t_problem` VALUES (10274, 105, -1, 'Choice', 'Easy', '1', 'Is this a box? - ____. it is a brown paper box.', 10274, 10274, 5);
INSERT INTO `t_problem` VALUES (10275, 105, 58, 'Choice', 'Easy', '1', '____ the jam good for my grandma?', 10275, 10275, 5);
INSERT INTO `t_problem` VALUES (10276, 105, 59, 'Choice', 'Easy', '1', '____ there any chairs in the classroom?', 10276, 10276, 5);
INSERT INTO `t_problem` VALUES (10277, 105, 53, 'Choice', 'Easy', '1', '____ the man with big eyes a professor?', 10277, 10277, 5);
INSERT INTO `t_problem` VALUES (10278, 105, 53, 'Choice', 'Easy', '1', '____ the two cups of milk for me?', 10278, 10278, 5);
INSERT INTO `t_problem` VALUES (10279, 105, 61, 'Rewrite', 'Medium', '1', 'Dale is my friend (Yes/No Question; Negative Answer)', 10279, 10279, 5);
INSERT INTO `t_problem` VALUES (10280, 105, 57, 'Rewrite', 'Medium', '1', 'His name is Frank (Yes/No Question; Positive Answer)', 10280, 10280, 5);
INSERT INTO `t_problem` VALUES (10281, 105, 55, 'Rewrite', 'Medium', '1', 'He and I are friends (Yes/No Question; Negative Answer)', 10281, 10281, 5);
INSERT INTO `t_problem` VALUES (10282, 105, 57, 'Rewrite', 'Medium', '1', 'My name is Frank (Yes/No Question; Negative Answer)', 10282, 10282, 5);
INSERT INTO `t_problem` VALUES (10283, 105, 59, 'Rewrite', 'Medium', '1', 'Are there any living things on other planets? (Positive Sentence)', 10283, 10283, 5);
INSERT INTO `t_problem` VALUES (10284, 105, 61, 'Rewrite', 'Medium', '1', ' Eric is my English name', 10284, 10284, 5);
INSERT INTO `t_problem` VALUES (10285, 105, 61, 'Rewrite', 'Medium', '1', 'Is your favorite subject Math? (Positive Sentence)', 10285, 10285, 5);
INSERT INTO `t_problem` VALUES (10286, 105, 59, 'Rewrite', 'Medium', '1', 'Are there many countries in the world? (Positive Sentence)', 10286, 10286, 5);
INSERT INTO `t_problem` VALUES (10287, 105, 61, 'Rewrite', 'Medium', '1', 'Daniel is one of my best friends (Yes/No Question; Negative Answer)', 10287, 10287, 5);
INSERT INTO `t_problem` VALUES (10288, 105, 57, 'Rewrite', 'Medium', '1', 'Is your teacher’s name Martin? 	(Negative answer)', 10288, 10288, 5);
INSERT INTO `t_problem` VALUES (10289, 105, 62, 'Choice', 'Medium', '1', '- ____？	- No, they are looking for Greg’s bag.', 10289, 10289, 5);
INSERT INTO `t_problem` VALUES (10290, 105, 57, 'Choice', 'Medium', '1', '-Is your name Leo?	-No, ____.', 10290, 10290, 5);
INSERT INTO `t_problem` VALUES (10291, 105, 58, 'Choice', 'Medium', '1', '____ French Fries your favorite food?', 10291, 10291, 5);
INSERT INTO `t_problem` VALUES (10292, 105, 57, 'Choice', 'Medium', '1', '- Is Mr. Green very busy today?	-Yes, ____.', 10292, 10292, 5);
INSERT INTO `t_problem` VALUES (10293, 105, 62, 'Choice', 'Medium', '1', '- ____？ - No, Amy isn’t sweeping the floor.', 10293, 10293, 5);
INSERT INTO `t_problem` VALUES (10294, 105, 60, 'Choice', 'Medium', '1', '– Is this your pen?	- ____. My pen is black.', 10294, 10294, 5);
INSERT INTO `t_problem` VALUES (10295, 105, 57, 'Choice', 'Medium', '1', 'Are you our new P.E. teacher Mrs. Fang?	-.Yes, ____.', 10295, 10295, 5);
INSERT INTO `t_problem` VALUES (10296, 105, 57, 'Choice', 'Medium', '1', '- Is your grandma’s birthday in April?	- No, ____.', 10296, 10296, 5);
INSERT INTO `t_problem` VALUES (10297, 105, 62, 'Choice', 'Medium', '1', '- ____? - Yes, she is helpful at home.', 10297, 10297, 5);
INSERT INTO `t_problem` VALUES (10298, 105, 60, 'Choice', 'Medium', '1', '- ____? - Yes, there is a bookstore next to the school.', 10298, 10298, 5);
INSERT INTO `t_problem` VALUES (10299, 105, 60, 'Choice', 'Difficult', '1', '- Is this your dress?	- ____- Give it to ____, please.', 10299, 10299, 5);
INSERT INTO `t_problem` VALUES (10300, 105, 58, 'Choice', 'Difficult', '1', '- Teacher： Boys and girls, time for class. Are you ready? - Students： Yes, ____are.', 10300, 10300, 5);
INSERT INTO `t_problem` VALUES (10301, 105, 60, 'Choice', 'Difficult', '1', '- My dear baby. it’s just time for school. Are you happy? - No, ____.', 10301, 10301, 5);
INSERT INTO `t_problem` VALUES (10302, 105, 64, 'Choice', 'Difficult', '1', '- Will your brother go to the party?____- Yes, ____.', 10302, 10302, 5);
INSERT INTO `t_problem` VALUES (10303, 105, 60, 'Choice', 'Difficult', '1', '-Good afternoon, Mr. Smith. ____? - Yes, he’s at home. Come in, please.', 10303, 10303, 5);
INSERT INTO `t_problem` VALUES (10304, 105, 59, 'Choice', 'Difficult', '1', '- Have you read today’s news paper?	-No. ____ there lots of sports news in it?', 10304, 10304, 5);
INSERT INTO `t_problem` VALUES (10305, 105, 63, 'Choice', 'Difficult', '1', '____ you often late for school?', 10305, 10305, 5);
INSERT INTO `t_problem` VALUES (10306, 105, 59, 'Choice', 'Difficult', '1', '____ there lots of  on the hill?', 10306, 10306, 5);
INSERT INTO `t_problem` VALUES (10307, 105, 57, 'Choice', 'Difficult', '1', '-What is his father‘s job? Is his father a firefighter?	- ____ . He works at the 5th fire station.', 10307, 10307, 5);
INSERT INTO `t_problem` VALUES (10308, 105, 59, 'Choice', 'Difficult', '1', '-____ there any ____ at school? - ____. Teacher is having lesson with them.', 10308, 10308, 5);
INSERT INTO `t_problem` VALUES (10309, 105, 64, 'Choice', 'Difficult', '1', '– Will you meet at the bus stop at 10：30?	- Yes, ____.', 10309, 10309, 5);
INSERT INTO `t_problem` VALUES (10310, 105, 62, 'Choice', 'Difficult', '1', '- ____？____-Yes, Mike is answering the phone.', 10310, 10310, 5);
INSERT INTO `t_problem` VALUES (10311, 105, 59, 'Choice', 'Difficult', '1', '____there lots of sports news in it?', 10311, 10311, 5);
INSERT INTO `t_problem` VALUES (10312, 105, 60, 'Choice', 'Difficult', '1', '– Are those his books? - ____. give them to____, please.', 10312, 10312, 5);
INSERT INTO `t_problem` VALUES (10313, 105, 63, 'Choice', 'Difficult', '1', '- Will you have a talk at the meeting room tomorrow morning? - No, ____.', 10313, 10313, 5);
INSERT INTO `t_problem` VALUES (10314, 105, 60, 'Choice', 'Difficult', '1', '- Look at the boy at the toy shop. Is he Jason? - ____. Jason is having Music lesson now.', 10314, 10314, 5);
INSERT INTO `t_problem` VALUES (10315, 105, 57, 'Choice', 'Difficult', '1', '- Look! A lovely cat! Is it your cat?	- ____.', 10315, 10315, 5);
INSERT INTO `t_problem` VALUES (10316, 105, 57, 'Choice', 'Difficult', '1', '- Is Peter his friend’s name?	- ____. His friend’s name is Max.', 10316, 10316, 5);
INSERT INTO `t_problem` VALUES (10317, 105, 59, 'Choice', 'Difficult', '1', '- There are so many dolls, are they yours?	- ____.', 10317, 10317, 5);
INSERT INTO `t_problem` VALUES (10318, 105, 59, 'Choice', 'Difficult', '1', '____ there any fishes in the river?____-No, ____.', 10318, 10318, 5);
INSERT INTO `t_problem` VALUES (10319, 106, 65, 'Choice', 'Easy', '1', '– ____ is the boy in blue?	- He’s Mark.', 10319, 10319, 6);
INSERT INTO `t_problem` VALUES (10320, 106, 66, 'Choice', 'Easy', '1', '- ____ is the diary?	 - It’s under the chair.', 10320, 10320, 6);
INSERT INTO `t_problem` VALUES (10321, 106, -1, 'Choice', 'Easy', '1', '- ____ are the headphones?	- They are 59 yuan.', 10321, 10321, 6);
INSERT INTO `t_problem` VALUES (10322, 106, 68, 'Choice', 'Easy', '1', '- ____ is the hairdryer?	- It’s blue.', 10322, 10322, 6);
INSERT INTO `t_problem` VALUES (10323, 106, 70, 'Choice', 'Easy', '1', '- ____ can a bird do?	- It can fly in the sky.', 10323, 10323, 6);
INSERT INTO `t_problem` VALUES (10324, 106, 66, 'Choice', 'Medium', '1', '- Excuse me, ____ is the nearest bookshop? - Go down the street and turn left at the second corner?', 10324, 10324, 6);
INSERT INTO `t_problem` VALUES (10325, 106, 66, 'Choice', 'Medium', '1', '- ____ are you going?	- I am going to the library.', 10325, 10325, 6);
INSERT INTO `t_problem` VALUES (10326, 106, -1, 'Choice', 'Medium', '1', '- ____?	- I’ve got a headache and a cough.', 10326, 10326, 6);
INSERT INTO `t_problem` VALUES (10327, 106, 67, 'Choice', 'Medium', '1', '- ____ tea did you have?	- Two cups.', 10327, 10327, 6);
INSERT INTO `t_problem` VALUES (10328, 106, 71, 'Choice', 'Medium', '1', '- ____ are you going to be in the future? - I want to be a person ____ Yang Liwei.', 10328, 10328, 6);
INSERT INTO `t_problem` VALUES (10329, 106, 74, 'Choice', 'Medium', '1', '- ____ do they leave school?	 - At 4：15.', 10329, 10329, 6);
INSERT INTO `t_problem` VALUES (10330, 106, 73, 'Choice', 'Medium', '1', '- ____ painting brushes has Wendy got?	- Sorry, I don’t know.', 10330, 10330, 6);
INSERT INTO `t_problem` VALUES (10331, 106, 73, 'Choice', 'Medium', '1', 'Whose trousers ____?', 10331, 10331, 6);
INSERT INTO `t_problem` VALUES (10332, 106, -1, 'Choice', 'Medium', '1', '- I have a cough and feel bad. What ____ I do?	- Drink much warm and have a rest.', 10332, 10332, 6);
INSERT INTO `t_problem` VALUES (10333, 106, 75, 'Choice', 'Medium', '1', '- How many swans ____ in the plant house? - There is one.', 10333, 10333, 6);
INSERT INTO `t_problem` VALUES (10334, 106, 76, 'Choice', 'Difficult', '1', '- What ____ on the tree. - There are two monkeys on the tree.', 10334, 10334, 6);
INSERT INTO `t_problem` VALUES (10335, 106, 75, 'Choice', 'Difficult', '1', '– How many art rooms ____ there in your school? - Only one.', 10335, 10335, 6);
INSERT INTO `t_problem` VALUES (10336, 106, 70, 'Choice', 'Difficult', '1', '– ____ do you often do in summer? - I often go swimming.', 10336, 10336, 6);
INSERT INTO `t_problem` VALUES (10337, 106, 74, 'Choice', 'Difficult', '1', '- ____ is Children’s Day?	- It’s on June 1st.', 10337, 10337, 6);
INSERT INTO `t_problem` VALUES (10338, 106, 74, 'Choice', 'Difficult', '1', '- ____ will you finish your homework?	- In three hours.', 10338, 10338, 6);
INSERT INTO `t_problem` VALUES (10339, 106, 74, 'Choice', 'Difficult', '1', '- ____ will he finish the test?	- He’ll finish his test in half an hour.', 10339, 10339, 6);
INSERT INTO `t_problem` VALUES (10340, 106, 67, 'Choice', 'Difficult', '1', '- ____ milk is there in the glass?	- A little', 10340, 10340, 6);
INSERT INTO `t_problem` VALUES (10341, 106, 74, 'Choice', 'Difficult', '1', '- ____ shall we leave? How about 16：30 p.m. -Ok.', 10341, 10341, 6);
INSERT INTO `t_problem` VALUES (10342, 106, 71, 'Choice', 'Difficult', '1', '- ____ season do you like best?	- My favorite season is Summer.', 10342, 10342, 6);
INSERT INTO `t_problem` VALUES (10343, 106, 70, 'Choice', 'Difficult', '1', '- ____ are the monkeys doing?	- They are climbing the trees.', 10343, 10343, 6);
INSERT INTO `t_problem` VALUES (10344, 107, -1, 'Choice', 'Easy', '1', '____ pen is red. ____ pencil is green.', 10344, 10344, 7);
INSERT INTO `t_problem` VALUES (10345, 107, -1, 'Choice', 'Easy', '1', 'Is ____ a panda over there?', 10345, 10345, 7);
INSERT INTO `t_problem` VALUES (10346, 107, -1, 'Choice', 'Easy', '1', '____ boy is Mr. Green’s son.', 10346, 10346, 7);
INSERT INTO `t_problem` VALUES (10347, 107, -1, 'Choice', 'Easy', '1', '____ girl reading under the tree is Mary.', 10347, 10347, 7);
INSERT INTO `t_problem` VALUES (10348, 107, -1, 'Choice', 'Easy', '1', '____ is Mr. White and ____ is my father.', 10348, 10348, 7);
INSERT INTO `t_problem` VALUES (10349, 107, -1, 'Choice', 'Easy', '1', 'I want the red sweater on the wall. I don’t like ____ one. It is too big to me.', 10349, 10349, 7);
INSERT INTO `t_problem` VALUES (10350, 107, 79, 'Choice', 'Easy', '1', '– What is this?____- ____ is a red apple.', 10350, 10350, 7);
INSERT INTO `t_problem` VALUES (10351, 107, -1, 'Choice', 'Easy', '1', '– Look at that table! What is ____ ?____- It is an eraser.', 10351, 10351, 7);
INSERT INTO `t_problem` VALUES (10352, 107, 79, 'Choice', 'Easy', '1', '- Is that Mary’s school bag?____- ____.', 10352, 10352, 7);
INSERT INTO `t_problem` VALUES (10353, 107, 79, 'Choice', 'Easy', '1', '- Is this your friend?____- ____.', 10353, 10353, 7);
INSERT INTO `t_problem` VALUES (10354, 107, -1, 'Rewrite', 'Medium', '1', 'Is this your pen? (positive answer)', 10354, 10354, 7);
INSERT INTO `t_problem` VALUES (10355, 107, -1, 'Rewrite', 'Medium', '1', 'That isn’t Karen’s grandfather (positive sentence)', 10355, 10355, 7);
INSERT INTO `t_problem` VALUES (10356, 107, -1, 'Rewrite', 'Medium', '1', 'Is this your dictionary? (negative answer)', 10356, 10356, 7);
INSERT INTO `t_problem` VALUES (10357, 107, -1, 'Rewrite', 'Medium', '1', 'That isn’t Mrs Smith (positive sentence)', 10357, 10357, 7);
INSERT INTO `t_problem` VALUES (10358, 107, -1, 'Rewrite', 'Medium', '1', 'This is one of my friends, Jonathan (Yes/No question)', 10358, 10358, 7);
INSERT INTO `t_problem` VALUES (10359, 107, -1, 'Rewrite', 'Medium', '1', 'Is this ice cream? (negative sentence)', 10359, 10359, 7);
INSERT INTO `t_problem` VALUES (10360, 107, -1, 'Rewrite', 'Medium', '1', 'Is that an English story book? (negative answer)', 10360, 10360, 7);
INSERT INTO `t_problem` VALUES (10361, 107, -1, 'Rewrite', 'Medium', '1', 'The pencil is in that pencil-case (Yes/No question)', 10361, 10361, 7);
INSERT INTO `t_problem` VALUES (10362, 107, -1, 'Rewrite', 'Medium', '1', 'This is my friend (negative sentence)', 10362, 10362, 7);
INSERT INTO `t_problem` VALUES (10363, 107, -1, 'Rewrite', 'Medium', '1', 'Is that a cute dog? (negative answer)', 10363, 10363, 7);
INSERT INTO `t_problem` VALUES (10374, 107, -1, 'Choice', 'Medium', '1', '– Hello! May I speak to Mr. Steven, please?	- Sorry, he’s not in. Who’s ____, please?  - ____ is Susan.', 10374, 10374, 7);
INSERT INTO `t_problem` VALUES (10375, 107, -1, 'Choice', 'Medium', '1', '– Hello! 668-3896. Who’s ____?____- ____ Ricky.', 10375, 10375, 7);
INSERT INTO `t_problem` VALUES (10376, 107, -1, 'Choice', 'Medium', '1', '– Look! What’s ____ in the sky?____- It looks like a kite.', 10376, 10376, 7);
INSERT INTO `t_problem` VALUES (10377, 107, -1, 'Choice', 'Medium', '1', 'Is ____ your book over there?', 10377, 10377, 7);
INSERT INTO `t_problem` VALUES (10378, 107, -1, 'Choice', 'Medium', '1', 'I don’t want to buy this pair of black shoes. I want to buy ____.', 10378, 10378, 7);
INSERT INTO `t_problem` VALUES (10379, 107, -1, 'Choice', 'Medium', '1', '– What’s ____ over there?____- It’s a bus.', 10379, 10379, 7);
INSERT INTO `t_problem` VALUES (10380, 107, -1, 'Choice', 'Medium', '1', '– Is ____ your backpack?____- No, ____ isn’t. It’s ____ backpack.', 10380, 10380, 7);
INSERT INTO `t_problem` VALUES (10381, 107, -1, 'Choice', 'Medium', '1', '– Why not wash the dishes?____- ____ is your job to wash them.', 10381, 10381, 7);
INSERT INTO `t_problem` VALUES (10382, 107, -1, 'Choice', 'Medium', '1', '– Hello! May I speak to Jane, please?	- Yes, ____ is Jane.', 10382, 10382, 7);
INSERT INTO `t_problem` VALUES (10383, 107, -1, 'Choice', 'Medium', '1', '– What’s your car number?____- ____ 339588.', 10383, 10383, 7);
INSERT INTO `t_problem` VALUES (10384, 107, -1, 'Choice', 'Difficult', '1', 'The performance of Class A students is better than ____ of Class B students.', 10384, 10384, 7);
INSERT INTO `t_problem` VALUES (10385, 107, -1, 'Choice', 'Difficult', '1', 'The population of China is much larger than ____ of Russia.', 10385, 10385, 7);
INSERT INTO `t_problem` VALUES (10386, 107, -1, 'Choice', 'Difficult', '1', '– What is ____ teacher doing?  - He is having an online meeting with other teachers.', 10386, 10386, 7);
INSERT INTO `t_problem` VALUES (10387, 107, -1, 'Choice', 'Difficult', '1', '- The bike made in your factory is more expensive than ____ made in their factory.  - Yes, you are right. But mine is much better.', 10387, 10387, 7);
INSERT INTO `t_problem` VALUES (10388, 107, -1, 'Choice', 'Difficult', '1', 'The pear on this branch is bigger than ____ on that branch.', 10388, 10388, 7);
INSERT INTO `t_problem` VALUES (10389, 107, -1, 'Choice', 'Difficult', '1', 'The car made in Japan is much cheaper than ____ one made in America.', 10389, 10389, 7);
INSERT INTO `t_problem` VALUES (10390, 107, -1, 'Choice', 'Difficult', '1', 'The color of the skirt is different from ____ of mine.', 10390, 10390, 7);
INSERT INTO `t_problem` VALUES (10391, 107, -1, 'Choice', 'Difficult', '1', 'The weather in Beijing is much colder than ____ in Shanghai. They’re different.', 10391, 10391, 7);
INSERT INTO `t_problem` VALUES (10392, 107, -1, 'Choice', 'Difficult', '1', 'The climate on Mars is much worse than ____ one the earth.', 10392, 10392, 7);
INSERT INTO `t_problem` VALUES (10393, 107, -1, 'Choice', 'Difficult', '1', 'The size of his T-shirt is different from ____ of mine.', 10393, 10393, 7);
INSERT INTO `t_problem` VALUES (10394, 107, -1, 'Choice', 'Difficult', '1', 'What’s ____ in Chinese?', 10394, 10394, 7);
INSERT INTO `t_problem` VALUES (10395, 107, -1, 'Choice', 'Difficult', '1', 'Please look at this family photo. ____ is my aunt and ____ is my uncle.', 10395, 10395, 7);
INSERT INTO `t_problem` VALUES (10396, 107, -1, 'Choice', 'Difficult', '1', 'The chemical composition of man’s blood is similar to ____ of sea animal.', 10396, 10396, 7);
INSERT INTO `t_problem` VALUES (10397, 107, -1, 'Choice', 'Difficult', '1', 'To be or not to be, ____ is the question.', 10397, 10397, 7);
INSERT INTO `t_problem` VALUES (10398, 107, -1, 'Choice', 'Difficult', '1', 'The Blacks are visiting China in May____ .', 10398, 10398, 7);
INSERT INTO `t_problem` VALUES (10399, 107, 83, 'Choice', 'Difficult', '1', '– When is Jim’s birthday?____- ____ August 11th,', 10399, 10399, 7);
INSERT INTO `t_problem` VALUES (10400, 107, -1, 'Choice', 'Difficult', '1', 'Let’s go to the Green Park ____.', 10400, 10400, 7);
INSERT INTO `t_problem` VALUES (10401, 107, -1, 'Choice', 'Difficult', '1', 'The professor will come to our school ____.', 10401, 10401, 7);
INSERT INTO `t_problem` VALUES (10402, 107, -1, 'Choice', 'Difficult', '1', '– My queen, please name ____ vegetable.  - I here by name this green flower broccoli.', 10402, 10402, 7);
INSERT INTO `t_problem` VALUES (10403, 107, -1, 'Choice', 'Difficult', '1', '– You can’t buy ____ bag of candies. ____ not good for your teeth.', 10403, 10403, 7);
INSERT INTO `t_problem` VALUES (103404, 108, -1, 'Choice', 'Easy', '1', 'Are ____ monkeys over there?', 103404, 103404, 8);
INSERT INTO `t_problem` VALUES (103405, 108, -1, 'Choice', 'Easy', '1', '____ two boys are Mr. Greens’ sons.', 103405, 103405, 8);
INSERT INTO `t_problem` VALUES (103406, 108, -1, 'Choice', 'Easy', '1', '____ two girls are Mary and Linda.', 103406, 103406, 8);
INSERT INTO `t_problem` VALUES (103407, 108, -1, 'Choice', 'Easy', '1', 'Look at ____ pencils on the desk. Are they Lucy’s?', 103407, 103407, 8);
INSERT INTO `t_problem` VALUES (103408, 108, -1, 'Choice', 'Easy', '1', '--Anna, ____ is my cousin Andy.____--Nice to meet you, Andy.', 103408, 103408, 8);
INSERT INTO `t_problem` VALUES (103409, 108, -1, 'Choice', 'Easy', '1', '—What is this?____— ____ is a cake.', 103409, 103409, 8);
INSERT INTO `t_problem` VALUES (103410, 108, -1, 'Choice', 'Easy', '1', '—Are ____ your brothers?____—Yes, ____ are.', 103410, 103410, 8);
INSERT INTO `t_problem` VALUES (103411, 108, -1, 'Choice', 'Easy', '1', '____ two girls are Mary and Lucy.', 103411, 103411, 8);
INSERT INTO `t_problem` VALUES (103412, 108, -1, 'Choice', 'Easy', '1', 'Are ____ your watches over there?', 103412, 103412, 8);
INSERT INTO `t_problem` VALUES (103413, 108, -1, 'Choice', 'Easy', '1', '____ those his dictionaries?', 103413, 103413, 8);
INSERT INTO `t_problem` VALUES (103414, 108, -1, 'Rewrite', 'Medium', '1', 'Are these Helen’s pencils?  (positive sentence)', 103414, 103414, 8);
INSERT INTO `t_problem` VALUES (103415, 108, -1, 'Rewrite', 'Medium', '1', 'This is a box (plural form)', 103415, 103415, 8);
INSERT INTO `t_problem` VALUES (103416, 108, -1, 'Rewrite', 'Medium', '1', 'Are these shoes yours? (negative answer)', 103416, 103416, 8);
INSERT INTO `t_problem` VALUES (103417, 108, -1, 'Rewrite', 'Medium', '1', 'That is your new schoolbag, (plural form)', 103417, 103417, 8);
INSERT INTO `t_problem` VALUES (103418, 108, -1, 'Rewrite', 'Medium', '1', 'Are those all ours? (positive answer)', 103418, 103418, 8);
INSERT INTO `t_problem` VALUES (103419, 108, -1, 'Rewrite', 'Medium', '1', 'Those are my new teachers (negative sentence)', 103419, 103419, 8);
INSERT INTO `t_problem` VALUES (103420, 108, -1, 'Rewrite', 'Medium', '1', 'Are these apples? (negative answer)', 103420, 103420, 8);
INSERT INTO `t_problem` VALUES (103421, 108, -1, 'Rewrite', 'Medium', '1', 'These are not my footballs (Yes/No question)', 103421, 103421, 8);
INSERT INTO `t_problem` VALUES (103422, 108, -1, 'Rewrite', 'Medium', '1', 'These are not mice (Yes/No question)', 103422, 103422, 8);
INSERT INTO `t_problem` VALUES (103423, 108, -1, 'Rewrite', 'Medium', '1', 'Those pencils are long (Yes/No question)', 103423, 103423, 8);
INSERT INTO `t_problem` VALUES (103424, 108, -1, 'Choice', 'Medium', '1', '—What are ____ in English?____—They are ____.', 103424, 103424, 8);
INSERT INTO `t_problem` VALUES (103425, 108, -1, 'Choice', 'Medium', '1', '-Anna, ____ is my cousin Andy.____--Nice to meet you, Andy.', 103425, 103425, 8);
INSERT INTO `t_problem` VALUES (103426, 108, -1, 'Choice', 'Medium', '1', 'This ____ my uncle and those ____ my grandparents.', 103426, 103426, 8);
INSERT INTO `t_problem` VALUES (103427, 108, -1, 'Choice', 'Medium', '1', '____ workers are in that factory.', 103427, 103427, 8);
INSERT INTO `t_problem` VALUES (103428, 108, -1, 'Choice', 'Medium', '1', '____ pencils are in ____ pencil case.', 103428, 103428, 8);
INSERT INTO `t_problem` VALUES (103429, 108, -1, 'Choice', 'Medium', '1', '– What time is ____?____-____‘s eight o’clock a.m.', 103429, 103429, 8);
INSERT INTO `t_problem` VALUES (103430, 108, -1, 'Choice', 'Medium', '1', '– May I have some socks, please?	- Can I give you ____ socks on the shelf?  - No, thank you. I’d like ____ socks there. They look comfortable.', 103430, 103430, 8);
INSERT INTO `t_problem` VALUES (103431, 108, -1, 'Choice', 'Medium', '1', '– Three bottles of water. Two cakes and a knife, please   - Is ____ all?', 103431, 103431, 8);
INSERT INTO `t_problem` VALUES (103432, 108, -1, 'Choice', 'Medium', '1', 'I don’t like ____ coats. Please give me ____ one.', 103432, 103432, 8);
INSERT INTO `t_problem` VALUES (103433, 108, -1, 'Choice', 'Medium', '1', 'The bottle of wine in my basket are more than ____ in Sally’s.', 103433, 103433, 8);
INSERT INTO `t_problem` VALUES (103444, 108, -1, 'Choice', 'Difficult', '1', 'I find ____ very necessary to study English well.', 103444, 103444, 8);
INSERT INTO `t_problem` VALUES (103445, 108, -1, 'Choice', 'Difficult', '1', 'Elsa finally found ____ exciting to have conversations with friends in Chinese.', 103445, 103445, 8);
INSERT INTO `t_problem` VALUES (103446, 108, -1, 'Choice', 'Difficult', '1', 'I found ____ difficult to complete all the work in such a short time.', 103446, 103446, 8);
INSERT INTO `t_problem` VALUES (103447, 108, -1, 'Choice', 'Difficult', '1', '____ is a little hard ____ them to climb Mount Tai.', 103447, 103447, 8);
INSERT INTO `t_problem` VALUES (103448, 108, -1, 'Choice', 'Difficult', '1', 'I can’t find my magazine. I think I have lost ____.', 103448, 103448, 8);
INSERT INTO `t_problem` VALUES (103449, 108, -1, 'Choice', 'Difficult', '1', 'I forget my pen, would you please lend ____ to me?', 103449, 103449, 8);
INSERT INTO `t_problem` VALUES (103450, 108, -1, 'Choice', 'Difficult', '1', 'The flowers in Guangzhou is more beautiful than ____ in Beijing.', 103450, 103450, 8);
INSERT INTO `t_problem` VALUES (103451, 108, -1, 'Choice', 'Difficult', '1', '____ is really hard ____ me to drive.', 103451, 103451, 8);
INSERT INTO `t_problem` VALUES (103452, 108, -1, 'Choice', 'Difficult', '1', 'Education in China is different from ____ in America. And the students in China have more homework than ____ in America.', 103452, 103452, 8);
INSERT INTO `t_problem` VALUES (103453, 108, -1, 'Choice', 'Difficult', '1', '—Have you found your lost bag?　　 	 —No, I haven’t found ____, but I bought  this morning.', 103453, 103453, 8);
INSERT INTO `t_problem` VALUES (103454, 108, -1, 'Choice', 'Difficult', '1', '—We find ____ impossible for us to learn a foreign language well in a short time.', 103454, 103454, 8);
INSERT INTO `t_problem` VALUES (103455, 108, -1, 'Choice', 'Difficult', '1', 'Don’t you think ____ necessary for friends to help each other?', 103455, 103455, 8);
INSERT INTO `t_problem` VALUES (103456, 108, -1, 'Choice', 'Difficult', '1', 'Did you find ____ interesting to play Yoyo?', 103456, 103456, 8);
INSERT INTO `t_problem` VALUES (103457, 108, -1, 'Choice', 'Difficult', '1', '—I don’t think ____ possible to learn a subject well without hard work.　　	 — I agree with you.', 103457, 103457, 8);
INSERT INTO `t_problem` VALUES (103458, 108, -1, 'Choice', 'Difficult', '1', 'Your dress is so beautiful. Where did you buy ____? I want to buy ____ too.', 103458, 103458, 8);
INSERT INTO `t_problem` VALUES (103459, 108, -1, 'Choice', 'Difficult', '1', '—I need something for drinking the soup.　　	 — Oh, you want a spoon? Ok, I’ll get ____ for you.', 103459, 103459, 8);
INSERT INTO `t_problem` VALUES (103460, 108, -1, 'Choice', 'Difficult', '1', '—Excuse me. Could you please tell me where I can find a bank?　　	 —I know one near here. You can find ____ easily', 103460, 103460, 8);
INSERT INTO `t_problem` VALUES (103461, 108, -1, 'Choice', 'Difficult', '1', 'Do you think ____ interesting to play computer games?', 103461, 103461, 8);
INSERT INTO `t_problem` VALUES (103462, 108, -1, 'Choice', 'Difficult', '1', '— ____ will be not easy for people to work without computers.', 103462, 103462, 8);
INSERT INTO `t_problem` VALUES (103463, 108, -1, 'Choice', 'Difficult', '1', '—A latest English newspaper, please!　　	 —Only one left. Would you like to have ____, sir?', 103463, 103463, 8);
INSERT INTO `t_problem` VALUES (103464, 108, -1, 'Choice', 'Difficult', '1', '—Why not take a short rest?____—Didn’t we just have ____?', 103464, 103464, 8);
COMMIT;

-- ----------------------------
-- Table structure for t_rep_collec
-- ----------------------------
DROP TABLE IF EXISTS `t_rep_collec`;
CREATE TABLE `t_rep_collec` (
  `rep_collec_id` bigint(20) NOT NULL,
  `prob_list` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`rep_collec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for t_rev_collec
-- ----------------------------
DROP TABLE IF EXISTS `t_rev_collec`;
CREATE TABLE `t_rev_collec` (
  `rev_collec_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `prob_eval_list` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `prob_list` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`rev_collec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_rev_collec
-- ----------------------------
BEGIN;
INSERT INTO `t_rev_collec` VALUES (240, '[1606562924833,1608385224112,1608385792909,1608385937809,1608386106233]', 3, '[10001,10005,10008,10007,10279,10237,10203,10338,10333,10327,10328,10319,103410,103411,103408,10043,10095]');
COMMIT;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` bigint(20) NOT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES (1, '123', 'new');
INSERT INTO `t_user` VALUES (3, '123', 'ppp');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
