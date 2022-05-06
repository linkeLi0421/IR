; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gf119.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gf119.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_pmu_fwif = type { i32, ptr, ptr, ptr }
%struct.nvkm_pmu_func = type { ptr, %struct.anon.128, %struct.anon.129, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.128 = type { ptr, i32 }
%struct.anon.129 = type { ptr, i32 }
%struct.nvkm_falcon_func = type { %struct.anon.123, %struct.anon.124, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.127, %struct.anon.127, [0 x %struct.nvkm_sclass] }
%struct.anon.123 = type { ptr, i32 }
%struct.anon.124 = type { ptr, i32 }
%struct.anon.127 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }

@gf119_pmu_fwif = internal constant [2 x %struct.nvkm_pmu_fwif] [%struct.nvkm_pmu_fwif { i32 -1, ptr @gf100_pmu_nofw, ptr @gf119_pmu, ptr null }, %struct.nvkm_pmu_fwif zeroinitializer], align 4
@gf119_pmu = internal constant %struct.nvkm_pmu_func { ptr @gt215_pmu_flcn, %struct.anon.128 { ptr @gf119_pmu_code, i32 3072 }, %struct.anon.129 { ptr @gf119_pmu_data, i32 3584 }, ptr @gf100_pmu_enabled, ptr @gf100_pmu_reset, ptr @gt215_pmu_init, ptr @gt215_pmu_fini, ptr @gt215_pmu_intr, ptr @gt215_pmu_send, ptr @gt215_pmu_recv, ptr null, ptr null }, align 4
@gt215_pmu_flcn = external dso_local constant %struct.nvkm_falcon_func, align 4
@gf119_pmu_code = internal global <{ [709 x i32], [59 x i32] }> <{ [709 x i32] [i32 54595317, i32 127928305, i32 -1124069680, i32 30929156, i32 30666752, i32 128714737, i32 -1124069936, i32 -1395134204, i32 14536455, i32 1879102705, i32 -235594764, i32 -821582633, i32 16253149, i32 127928305, i32 -1124069680, i32 -1542983420, i32 905223, i32 -672070467, i32 -739245838, i32 -1408765695, i32 905223, i32 -672070467, i32 -573634644, i32 13955328, i32 -182717328, i32 -1862729480, i32 -2014281479, i32 8965932, i32 -819161104, i32 -1732575079, i32 111065090, i32 -51110156, i32 -124715904, i32 -107939584, i32 747106432, i32 -1191147313, i32 569639662, i32 47888644, i32 -1207652867, i32 200541868, i32 748154898, i32 -1157588529, i32 -1682439528, i32 -501287930, i32 -1862500100, i32 -375914248, i32 9875459, i32 -1742074892, i32 -1698981366, i32 253555714, i32 -184428560, i32 -1123909599, i32 353301652, i32 -1332016488, i32 200540326, i32 110802953, i32 -2147083020, i32 -377447671, i32 1491121667, i32 40429233, i32 -121234444, i32 -1124009728, i32 -108988156, i32 -106890864, i32 -104793680, i32 -102696496, i32 16249072, i32 -117339906, i32 -796397184, i32 8965893, i32 -251559754, i32 -804925433, i32 79495176, i32 -821524496, i32 -1983643512, i32 537654274, i32 -258277248, i32 569661671, i32 -1693869898, i32 -201288016, i32 133172747, i32 643124, i32 159384765, i32 9036954, i32 1007416328, i32 109615089, i32 -1006593585, i32 200540826, i32 -1060638426, i32 13422340, i32 -403586823, i32 -470724792, i32 -672115629, i32 -450759424, i32 -239010814, i32 -804995065, i32 79495180, i32 109578225, i32 -1124070960, i32 -526913276, i32 -40846080, i32 133170313, i32 577540, i32 -2130967363, i32 -67073794, i32 -52364048, i32 -54461232, i32 -56558416, i32 -58655600, i32 3339264, i32 -1057422856, i32 -672026375, i32 -739245756, i32 -1423837952, i32 -389223421, i32 11841539, i32 -334361612, i32 -251402002, i32 -268352297, i32 569704659, i32 -826735701, i32 -55510014, i32 -117376832, i32 -240059968, i32 -268352297, i32 569704659, i32 -826735701, i32 11841538, i32 -1123742732, i32 -55509788, i32 -251594560, i32 -268352297, i32 -302055213, i32 -117376788, i32 -192874096, i32 -124252110, i32 8826883, i32 -1118626572, i32 940044420, i32 -1124071216, i32 881324036, i32 -1744795441, i32 -1732535799, i32 15317762, i32 -268173696, i32 -1999697785, i32 42266624, i32 -266331148, i32 -1999686521, i32 115390464, i32 -1207366668, i32 485754600, i32 872935438, i32 -1124069680, i32 -1710325756, i32 -268335120, i32 147863559, i32 -201016064, i32 -2130964431, i32 16290044, i32 -1862696711, i32 -1744443240, i32 -2031090455, i32 109688836, i32 -1003877388, i32 -2003565672, i32 411088388, i32 -1744793925, i32 -1971322630, i32 26050560, i32 -2147316608, i32 -1867119733, i32 127201281, i32 -201004672, i32 -1862532559, i32 16285948, i32 -2014281479, i32 20051032, i32 -1207924072, i32 200541870, i32 1484830224, i32 40404657, i32 -185590796, i32 -1900478158, i32 -125764606, i32 -1071516416, i32 -1761479678, i32 -1862729480, i32 -392658695, i32 82417669, i32 -1207880972, i32 200541833, i32 59360317, i32 -268336970, i32 -394262652, i32 48928773, i32 -1879117575, i32 -1175389951, i32 -1718353169, i32 15317764, i32 -1743200074, i32 -325581845, i32 32348162, i32 -117379432, i32 -17761115, i32 838074616, i32 -51315711, i32 -124715904, i32 135786752, i32 1167105, i32 17371623, i32 -33024842, i32 401670164, i32 334495968, i32 470282240, i32 -1124073008, i32 -15208444, i32 -803993616, i32 79495169, i32 -251521040, i32 -267911147, i32 30412807, i32 -251347712, i32 -268372713, i32 351338515, i32 285147135, i32 271709184, i32 -268363792, i32 30423047, i32 -268124928, i32 -241673993, i32 1486849, i32 -101053452, i32 1492170261, i32 -101576972, i32 -115279600, i32 -1790904016, i32 -761982751, i32 -1111180016, i32 -1058144332, i32 -1188028929, i32 888209972, i32 884408319, i32 273004048, i32 -1157577797, i32 -486604364, i32 37009712, i32 -51983, i32 -1240451914, i32 -1011150779, i32 28621568, i32 -1154477313, i32 1090257075, i32 553398524, i32 16257276, i32 78649329, i32 -251653681, i32 -821780441, i32 314048546, i32 789312518, i32 -1811472700, i32 -524876562, i32 -342359440, i32 49059843, i32 -1744704104, i32 569704686, i32 280363749, i32 253674497, i32 78645233, i32 -1124069680, i32 -1022430204, i32 401670392, i32 334581321, i32 -508013996, i32 -1291062266, i32 80484337, i32 -251653681, i32 -821770201, i32 384827426, i32 101890056, i32 -991163404, i32 884344611, i32 -265242876, i32 54231042, i32 -2147337088, i32 1048576317, i32 18920960, i32 -250665744, i32 -804993017, i32 79495170, i32 -264230928, i32 47185927, i32 -133907200, i32 -2145914624, i32 269792768, i32 40900081, i32 80742385, i32 -1124073008, i32 -2145914620, i32 269792768, i32 49288689, i32 81528817, i32 -1124073008, i32 18345988, i32 79955953, i32 -1124073008, i32 -251594748, i32 -250208153, i32 -235577993, i32 -1174405261, i32 569639534, i32 47757572, i32 -117143555, i32 -58656416, i32 -186581808, i32 2012296225, i32 1945239550, i32 1857683455, i32 69334018, i32 -50145095, i32 1626932359, i32 -788758279, i32 569696508, i32 -261623500, i32 40810790, i32 -1190911500, i32 -2013461800, i32 -111085308, i32 -53412736, i32 874640608, i32 -251369488, i32 -804790265, i32 79495174, i32 130050033, i32 -268409137, i32 200541284, i32 745009398, i32 -2147457329, i32 16314630, i32 -819173392, i32 109052006, i32 73920754, i32 132384753, i32 -1124071728, i32 -1066929916, i32 6737671, i32 -201038608, i32 1743910427, i32 2012292848, i32 1945108481, i32 40810752, i32 -1190911500, i32 -2013461800, i32 -111085307, i32 -53412736, i32 874640608, i32 371222513, i32 -201167175, i32 -658963423, i32 92798210, i32 -2131140359, i32 -520302340, i32 -248241676, i32 -267738505, i32 1857618035, i32 69334018, i32 -50145095, i32 1626932615, i32 -788758279, i32 569696508, i32 -1241450444, i32 16253968, i32 -1744824680, i32 280363285, i32 -111085304, i32 -53412784, i32 874640608, i32 -201178442, i32 16312603, i32 -819165200, i32 513278088, i32 18716672, i32 -1744692072, i32 280363803, i32 -2061372400, i32 513278200, i32 68204032, i32 -127524364, i32 -117377024, i32 -1177486880, i32 -1296497983, i32 1284098, i32 -419163978, i32 -419303372, i32 -1241391053, i32 821035314, i32 -566913012, i32 314070521, i32 -467733498, i32 -1729033320, i32 -876875252, i32 -994578174, i32 12308231, i32 -520302340, i32 48570869, i32 -965738248, i32 235664385, i32 63752177, i32 134264817, i32 -250933516, i32 -250884921, i32 -184483657, i32 -134027999, i32 30846976, i32 -1332016140, i32 200540374, i32 -134154024, i32 -134154240, i32 3584000, i32 -250737676, i32 -804790265, i32 79495169, i32 133234936, i32 30410724, i32 -133907200, i32 3584000, i32 -250737676, i32 -804790265, i32 79495170, i32 133234936, i32 47187940, i32 -133907200, i32 20116480, i32 130299889, i32 -50318385, i32 200541233, i32 20050950, i32 854851832, i32 -1002966783, i32 3395335, i32 -201051395, i32 838075915, i32 -117377023, i32 -1740115648, i32 20443144, i32 109650421, i32 65595377, i32 -177856012, i32 -200883935, i32 1119226113, i32 -283380735, i32 16269564, i32 113320437, i32 -183692812, i32 -200878559, i32 250873361, i32 3665968, i32 109650421, i32 -184469520, i32 -1157192415, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 116072949, i32 -201038666, i32 938483473, i32 -1524501248, i32 -1998065402, i32 1713501203, i32 -184535056, i32 -251229919, i32 -200046361, i32 16279073, i32 -184535056, i32 -268007135, i32 569704503, i32 -403634523, i32 569639912, i32 20443238, i32 109650421, i32 327739377, i32 -261742092, i32 569704759, i32 -403634523, i32 569643912, i32 -184485786, i32 -251222751, i32 -201070361, i32 1991992865, i32 73774592, i32 1704218873, i32 39238404, i32 1979535549, i32 -179241980, i32 -1241060575, i32 301204580, i32 -1998065384, i32 1713501203, i32 -184535056, i32 -251229919, i32 -200046361, i32 16279073, i32 -184469520, i32 -251222751, i32 -201070361, i32 1991992865, i32 73774592, i32 1704218873, i32 39238404, i32 1979535549, i32 -179241980, i32 -1241060575, i32 301204580, i32 -702417637, i32 3665926, i32 109650421, i32 327739377, i32 -261742092, i32 838074684, i32 -268371967, i32 1206911063, i32 22328840, i32 -1241483589, i32 1358496869, i32 -1157339756, i32 1354564182, i32 -66816515, i32 -534645424, i32 73709063, i32 -47509004, i32 1119225171, i32 -669256703, i32 -1157548048, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 127869429, i32 -133929802, i32 138932224, i32 -16694602, i32 1991981140, i32 73774592, i32 1704218873, i32 39238404, i32 1979535549, i32 -179241980, i32 -1241014495, i32 301204580, i32 4632628, i32 -1143464972, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 132129269, i32 -201038666, i32 1991970577, i32 20361216, i32 -200926220, i32 16253234, i32 -1241483589, i32 1358496869, i32 -1157339756, i32 1354564182, i32 -66816515, i32 270660944, i32 73709063, i32 -416738828, i32 -1241436477, i32 1409089844, i32 7781125, i32 -117152330, i32 73765968, i32 -1123920197, i32 74841424, i32 569725180, i32 1689651321, i32 -956237820, i32 -457770802, i32 350271237, i32 -184485680, i32 -200729823, i32 -638581727, i32 874640387, i32 569704696, i32 569641243, i32 64679940, i32 -130801164, i32 20116480, i32 -1225211449, i32 380633620, i32 975172904, i32 -200040447, i32 3315724, i32 214700960, i32 -201313896, i32 -788987343, i32 -788930311, i32 26609, i32 268461041, i32 -1157535854, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 153559541, i32 -66820938, i32 14069968, i32 11738101, i32 -1157605392, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 148120053, i32 -184261450, i32 -956248047, i32 1992024261, i32 73774592, i32 1704218873, i32 39238404, i32 1979535549, i32 -179241980, i32 -1240958687, i32 301270116, i32 1475346605, i32 7781121, i32 -117152330, i32 73765968, i32 -1123920197, i32 74841424, i32 569725180, i32 1689651412, i32 -1978534652, i32 7781120, i32 -117152330, i32 73765968, i32 -1123920197, i32 74841424, i32 569725180, i32 1689651239, i32 1779561476, i32 -1142924341, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 124527093, i32 -1190894410, i32 1958543963, i32 -1337782540, i32 468976086, i32 5763133, i32 148120053, i32 -952954380, i32 569761989, i32 301205625, i32 5763113, i32 148120053, i32 -954265100, i32 569761973, i32 301205625, i32 1814164757, i32 -948650745, i32 468977861, i32 36893705, i32 -956100876, i32 569768142, i32 -520353482, i32 318034172, i32 41728266, i32 48570869, i32 16253176, i32 98047985, i32 -1241509425, i32 133234960, i32 30410200, i32 -251347712, i32 -237436697, i32 -183283741, i32 -134080735, i32 15200512, i32 388101384, i32 -134154238, i32 3273728, i32 97785841, i32 -1241509425, i32 133234960, i32 30410196, i32 -268124928, i32 854874135, i32 -1190070014, i32 569704990, i32 284951278, i32 -200732172, i32 250872369, i32 1477490415, i32 -200925256, i32 49604123, i32 2684125, i32 12652276], [59 x i32] zeroinitializer }>, align 4
@gf119_pmu_data = internal global <{ [839 x i32], [57 x i32] }> <{ [839 x i32] [i32 1381256777, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1414745928, i32 1173, i32 1086, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1481459021, i32 1667, i32 1653, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1179796816, i32 1671, i32 1669, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1598239305, i32 2722, i32 2373, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1414743380, i32 2757, i32 2724, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1162626121, i32 2769, i32 2767, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1227, i32 2, i32 0, i32 1356, i32 3, i32 2, i32 1488, i32 262148, i32 0, i32 1516, i32 65541, i32 0, i32 1542, i32 65542, i32 0, i32 1483, i32 7, i32 0, i32 1553, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768, i32 65536, i32 131072, i32 262144, i32 524288, i32 1048576, i32 2097152, i32 4194304, i32 8388608, i32 16777216, i32 33554432, i32 67108864, i32 134217728, i32 268435456, i32 536870912], [57 x i32] zeroinitializer }>, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf119_pmu_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_pmu_new_(ptr noundef nonnull @gf119_pmu_fwif, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pmu_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_pmu_nofw(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gf100_pmu_enabled(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_pmu_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_pmu_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gt215_pmu_fini(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gt215_pmu_intr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_pmu_send(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gt215_pmu_recv(ptr noundef) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
