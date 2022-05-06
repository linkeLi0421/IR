; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gt215.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gt215.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_falcon_func = type { %struct.anon, %struct.anon.0, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.127, %struct.anon.127, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.anon.127 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_pmu_fwif = type { i32, ptr, ptr, ptr }
%struct.nvkm_pmu_func = type { ptr, %struct.anon.128, %struct.anon.129, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.128 = type { ptr, i32 }
%struct.anon.129 = type { ptr, i32 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_pmu = type { ptr, %struct.nvkm_subdev, %struct.nvkm_falcon, ptr, ptr, ptr, ptr, i8, %struct.completion, %struct.anon.130, %struct.anon.131 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.122, %struct.anon.123, %struct.nvkm_engine }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.122 = type { i32, ptr, i32, i8 }
%struct.anon.123 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.126 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.126 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.130 = type { %struct.mutex, i32, i32 }
%struct.anon.131 = type { i32, i32, %struct.work_struct, %struct.wait_queue_head, i32, i32, [2 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@.str = private unnamed_addr constant [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gt215.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: %c%c%c%c %08x %08x %08x %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"%s: UAS fault at %06x addr %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"%s: wr32 %06x %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%s: intr %08x\0A\00", align 1
@gt215_pmu_flcn = dso_local constant %struct.nvkm_falcon_func { %struct.anon zeroinitializer, %struct.anon.0 zeroinitializer, ptr null, ptr null, i32 3080, i32 3584, ptr @nvkm_falcon_v1_load_imem, ptr @nvkm_falcon_v1_load_dmem, ptr @nvkm_falcon_v1_read_dmem, i32 0, ptr @nvkm_falcon_v1_bind_context, ptr @nvkm_falcon_v1_wait_for_halt, ptr @nvkm_falcon_v1_clear_interrupt, ptr @nvkm_falcon_v1_set_start_addr, ptr @nvkm_falcon_v1_start, ptr @nvkm_falcon_v1_enable, ptr @nvkm_falcon_v1_disable, ptr null, %struct.anon.127 { i32 1184, i32 1200, i32 4 }, %struct.anon.127 { i32 1224, i32 1228, i32 0 }, [0 x %struct.nvkm_sclass] zeroinitializer }, align 4
@gt215_pmu_fwif = internal constant [2 x %struct.nvkm_pmu_fwif] [%struct.nvkm_pmu_fwif { i32 -1, ptr @gf100_pmu_nofw, ptr @gt215_pmu, ptr null }, %struct.nvkm_pmu_fwif zeroinitializer], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@gt215_pmu = internal constant %struct.nvkm_pmu_func { ptr @gt215_pmu_flcn, %struct.anon.128 { ptr @gt215_pmu_code, i32 3328 }, %struct.anon.129 { ptr @gt215_pmu_data, i32 3584 }, ptr @gt215_pmu_enabled, ptr @gt215_pmu_reset, ptr @gt215_pmu_init, ptr @gt215_pmu_fini, ptr @gt215_pmu_intr, ptr @gt215_pmu_send, ptr @gt215_pmu_recv, ptr null, ptr null }, align 4
@gt215_pmu_code = internal global [832 x i32] [i32 59903733, i32 127928305, i32 -804911946, i32 79495182, i32 120817, i32 -251538448, i32 -1241011193, i32 231736836, i32 -251347712, i32 -1241010985, i32 -573634860, i32 13955328, i32 -233048976, i32 128243697, i32 -821635914, i32 16253149, i32 127928305, i32 -804911946, i32 79495182, i32 128190449, i32 -804911946, i32 79495181, i32 15914993, i32 -251538448, i32 -1241011193, i32 231736836, i32 -251347712, i32 -1241010985, i32 -573634860, i32 13955328, i32 -233048976, i32 -1862729480, i32 -2014281479, i32 109360684, i32 -268400433, i32 -1800000361, i32 10080006, i32 -1207789381, i32 519308958, i32 -58655503, i32 -117376880, i32 -259982960, i32 -2068435833, i32 8965894, i32 -201134407, i32 -625408991, i32 78511362, i32 -200889160, i32 -1745873653, i32 110409260, i32 -1157588529, i32 -1682439528, i32 -551619578, i32 -1862500100, i32 -375914248, i32 9875459, i32 -1742074892, i32 -1698981366, i32 253555714, i32 -184428560, i32 -1123888863, i32 353301652, i32 -1332016488, i32 200540326, i32 110802953, i32 -2147083020, i32 -377447671, i32 1491121667, i32 40429233, i32 -121234444, i32 -1124009728, i32 -108988156, i32 -106890864, i32 -104793680, i32 -102696496, i32 16249072, i32 -117339906, i32 -796397184, i32 109360645, i32 -1241478961, i32 133235072, i32 79037904, i32 577542, i32 -2014313283, i32 109360648, i32 -1006597937, i32 200540809, i32 -1694466013, i32 -195500048, i32 161012257, i32 9875611, i32 -267318284, i32 79049735, i32 643078, i32 159384765, i32 9036954, i32 1208742920, i32 109615089, i32 -821652298, i32 -1698430823, i32 738980866, i32 79742961, i32 -821640010, i32 -1057423156, i32 1330178033, i32 1414783985, i32 -184494096, i32 -66898399, i32 -1073221184, i32 100972036, i32 -1124070192, i32 -2012745468, i32 100972038, i32 -1124070960, i32 -526913276, i32 -40846080, i32 133170313, i32 100972036, i32 -1124071216, i32 -25101308, i32 -251920248, i32 -788733700, i32 -1325612804, i32 -1862491908, i32 16548092, i32 -134204684, i32 -104793855, i32 -875040336, i32 13889536, i32 67838453, i32 65588460, i32 -201280336, i32 -286518773, i32 -672070680, i32 -739245877, i32 186774784, i32 47102212, i32 -1057181444, i32 -1057423112, i32 -672026375, i32 -739245877, i32 186774784, i32 47102212, i32 -201280336, i32 -457374453, i32 -1057181444, i32 -672071432, i32 -739245877, i32 -319947008, i32 -1862729480, i32 854884601, i32 66623504, i32 -201292112, i32 -2067962596, i32 -1237841936, i32 147850756, i32 -268124928, i32 -2068433785, i32 8965894, i32 -1147532904, i32 -373620072, i32 67010560, i32 -1240954896, i32 -1999698300, i32 42266624, i32 -265937932, i32 -2068433785, i32 8965894, i32 -200875848, i32 -390592245, i32 287110150, i32 -1238104080, i32 248514052, i32 -2147173120, i32 -2014275058, i32 940044289, i32 -804911946, i32 79495176, i32 -66047500, i32 -124715904, i32 -108988160, i32 99129488, i32 -268113512, i32 -1984428922, i32 705426438, i32 -1811703612, i32 -2135554936, i32 9354008, i32 -2147419496, i32 -1920991094, i32 42762241, i32 -1241281664, i32 -1796210288, i32 82411527, i32 -66965004, i32 -125764464, i32 -259983104, i32 838097031, i32 9082881, i32 -200888648, i32 -2135551989, i32 1753657688, i32 -266603518, i32 -1191103756, i32 -2130967922, i32 569704696, i32 32768785, i32 -117376873, i32 -1736377968, i32 -375912984, i32 20116484, i32 -200898120, i32 -1983628021, i32 25212419, i32 -2146990864, i32 -359135768, i32 -17762046, i32 -252116593, i32 -1811746887, i32 -373619559, i32 417379840, i32 -1744573544, i32 -308804884, i32 15636481, i32 -251877895, i32 -201262850, i32 -251920079, i32 -1862500100, i32 401670392, i32 347472136, i32 1167110, i32 17371623, i32 -33024842, i32 401670164, i32 334495968, i32 470282240, i32 -804911946, i32 79495169, i32 -251717648, i32 79041543, i32 118790, i32 401605821, i32 1437954, i32 268955656, i32 -804911946, i32 79495169, i32 18421745, i32 -251653136, i32 -16777452, i32 838074384, i32 18346000, i32 -1237841936, i32 30410244, i32 -268124928, i32 -241673993, i32 1486849, i32 -101053452, i32 1492170261, i32 -101576972, i32 -115279600, i32 -1790904016, i32 -761982751, i32 -1111180016, i32 -1058144332, i32 -1188028929, i32 888209972, i32 884408319, i32 273004048, i32 -1157577797, i32 -486604364, i32 37009712, i32 -51983, i32 -1240451914, i32 -1011150779, i32 28621568, i32 -1154477313, i32 1090257075, i32 553398524, i32 16257276, i32 78649329, i32 -821685066, i32 670105617, i32 615908512, i32 2281222, i32 -200928584, i32 516174347, i32 82744327, i32 40951991, i32 -1744573544, i32 -308804884, i32 15636481, i32 53879285, i32 -1006563146, i32 133238558, i32 79037616, i32 970758, i32 250873021, i32 -251594566, i32 -246527721, i32 -1202564077, i32 200541921, i32 -870846038, i32 102020612, i32 -251653681, i32 -1241200601, i32 583992868, i32 135720960, i32 -200928584, i32 600106507, i32 70563335, i32 49295543, i32 -2147271808, i32 1031799356, i32 4096001, i32 -268361546, i32 133238564, i32 79037640, i32 184326, i32 670041277, i32 520256, i32 -804911946, i32 79495170, i32 401670392, i32 347472000, i32 1880486160, i32 -804785918, i32 100972036, i32 -1124073008, i32 -2145914620, i32 269792768, i32 49288689, i32 81528817, i32 -804911946, i32 79495169, i32 -251586576, i32 -1241201657, i32 30410244, i32 -133907200, i32 277344512, i32 42907926, i32 -1190911500, i32 1743848151, i32 1676804092, i32 1996357631, i32 40366084, i32 -117082371, i32 -59704960, i32 -186581808, i32 1743798305, i32 -536350460, i32 100972039, i32 -1124071728, i32 -1066929916, i32 107263495, i32 -268409137, i32 200541284, i32 745009395, i32 -821664586, i32 109052006, i32 -268371727, i32 1689660519, i32 6737670, i32 -252574080, i32 133235815, i32 79038436, i32 446470, i32 1743848637, i32 1689651136, i32 6737670, i32 -201038608, i32 -2014186725, i32 -1900472816, i32 69334018, i32 -251471943, i32 -234894233, i32 -33554589, i32 -2131164042, i32 -788762375, i32 569696508, i32 -1744766912, i32 1722810390, i32 302773248, i32 -201234768, i32 250873355, i32 544731180, i32 -268038412, i32 1743849591, i32 1689651140, i32 6737670, i32 -201037827, i32 1743909659, i32 1689651140, i32 6737670, i32 -201037827, i32 280425227, i32 -1744766972, i32 362283030, i32 135312897, i32 1358520569, i32 -520302340, i32 -1237310988, i32 468976194, i32 -268371735, i32 -2068435833, i32 8965894, i32 -1744822632, i32 479723805, i32 52140034, i32 -200273738, i32 16294689, i32 -1241506152, i32 569639952, i32 -268371842, i32 2012218199, i32 9957632, i32 1888743424, i32 -201154887, i32 -658963423, i32 283635970, i32 2116154407, i32 16865504, i32 33588209, i32 299931633, i32 -116288528, i32 -58656368, i32 -186581808, i32 1358512161, i32 -251631632, i32 -15658617, i32 -1735094168, i32 92929296, i32 119576561, i32 -116354064, i32 -58656368, i32 -186581808, i32 -1745797087, i32 -1812987776, i32 43956496, i32 -1190911500, i32 -2000354600, i32 -107939552, i32 -53412736, i32 1075967200, i32 87857137, i32 -250571792, i32 -248511865, i32 -109051773, i32 -58656368, i32 -186581808, i32 -403619807, i32 -470809248, i32 14151952, i32 13889792, i32 14454912, i32 -2071939087, i32 -199314448, i32 1475388193, i32 -6819584, i32 9695743, i32 -2136477309, i32 279179264, i32 -201150791, i32 -658963423, i32 -541593342, i32 -4984321, i32 76283391, i32 -2131123975, i32 -520302340, i32 -247455244, i32 -268092249, i32 -2014244701, i32 -2081345534, i32 -1594261504, i32 -788758279, i32 569696508, i32 1625813312, i32 283373573, i32 55281, i32 -2147429391, i32 -251470663, i32 -265875273, i32 569639091, i32 49199523, i32 -1190911500, i32 -1644231971, i32 22066836, i32 -201042320, i32 2057343518, i32 -1451226164, i32 23115264, i32 1879339190, i32 519376998, i32 1358757633, i32 1879134390, i32 519374678, i32 16318166, i32 -788930311, i32 -1191001671, i32 328729266, i32 68204032, i32 32519399, i32 31470567, i32 -268356938, i32 899157040, i32 -1202325026, i32 519308818, i32 -250898204, i32 -1141764968, i32 -1208941877, i32 -1263138876, i32 12308230, i32 -520302340, i32 53879285, i32 -965738248, i32 235664385, i32 63752177, i32 134264817, i32 -250933516, i32 -250884921, i32 -184483657, i32 -134007263, i32 30846976, i32 -1332212748, i32 200540374, i32 -134154024, i32 -134154240, i32 3584000, i32 -250541068, i32 -1240997881, i32 30410244, i32 -133907200, i32 -469241600, i32 100972039, i32 -1124073008, i32 -1342113788, i32 200540214, i32 -536350447, i32 100972039, i32 -1124072752, i32 -251594748, i32 -1240996857, i32 47187460, i32 -133907200, i32 20116480, i32 130299889, i32 -821676874, i32 838664243, i32 101446660, i32 -134139404, i32 20116480, i32 130299889, i32 -821676874, i32 855441459, i32 101446660, i32 -134139404, i32 -247400192, i32 -267872185, i32 569704759, i32 -403634119, i32 569639912, i32 2099377534, i32 151122952, i32 -201243978, i32 1090318107, i32 569704696, i32 301205629, i32 -1792936691, i32 101839880, i32 -265285900, i32 569704503, i32 938477625, i32 1528952065, i32 7781128, i32 -117152330, i32 73765968, i32 -1123920197, i32 74841424, i32 569725180, i32 1689651373, i32 521270276, i32 -184535056, i32 -251110623, i32 -200046361, i32 938507809, i32 958526720, i32 -1998065400, i32 2116154387, i32 938475768, i32 958526720, i32 3665928, i32 140190197, i32 65595377, i32 -260169228, i32 569704759, i32 -403634119, i32 569643912, i32 20443262, i32 140190197, i32 327739377, i32 -125951500, i32 1528952064, i32 -387452664, i32 2116154371, i32 -1241483589, i32 1358496869, i32 -1157339756, i32 1354564182, i32 -66816515, i32 -1390283440, i32 73709064, i32 -250080780, i32 -200046361, i32 938507809, i32 958526720, i32 -1998065400, i32 2116154387, i32 938475768, i32 1528952065, i32 -387452664, i32 2116154371, i32 -1241483589, i32 1358496869, i32 -1157339756, i32 1354564182, i32 -66816515, i32 -1390283440, i32 73709064, i32 -182775308, i32 -267872991, i32 569704503, i32 -403634119, i32 569643912, i32 20770942, i32 -134139404, i32 5763072, i32 -1240971280, i32 1991967060, i32 73774592, i32 1704218873, i32 39238404, i32 1979535549, i32 -179241980, i32 -1240882655, i32 301204580, i32 89390379, i32 -201243978, i32 938530843, i32 7781121, i32 -117152330, i32 73765968, i32 -1123920197, i32 74841424, i32 569725180, i32 1689651553, i32 -268371964, i32 1119225927, i32 945094401, i32 -1241483589, i32 1358496869, i32 -1157339756, i32 1354564182, i32 -66816515, i32 1629615440, i32 73709065, i32 -1338764812, i32 468975686, i32 7781336, i32 -117152330, i32 73765968, i32 -1123920197, i32 74841424, i32 569725180, i32 1689651618, i32 252834820, i32 -1342146885, i32 468975926, i32 20116486, i32 1991966968, i32 73774592, i32 1704218873, i32 39238404, i32 1979535549, i32 -179241980, i32 -1240935903, i32 301204580, i32 784590633, i32 20231681, i32 -1157278723, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 171647477, i32 -133929802, i32 -120666368, i32 -1224547146, i32 -1743971104, i32 16253166, i32 182264309, i32 -268164620, i32 569639897, i32 -184485824, i32 -200614623, i32 -621804511, i32 1075966979, i32 854851832, i32 -121518335, i32 -1342040906, i32 536160278, i32 329253178, i32 848825588, i32 -871129088, i32 3250188, i32 -117296652, i32 -102696496, i32 6812112, i32 6549760, i32 23564816, i32 -1241483589, i32 1358496869, i32 -1157339756, i32 1354564182, i32 -66816515, i32 -333318832, i32 73709066, i32 -693055236, i32 -1290013440, i32 5763072, i32 -1241483589, i32 1358496869, i32 -1157339756, i32 1354564182, i32 -66816515, i32 -1776159408, i32 73709066, i32 13636085, i32 -1142897209, i32 1706426486, i32 -1806632700, i32 1455096933, i32 -45040382, i32 1358693493, i32 171647477, i32 -184261450, i32 -268391151, i32 1991967063, i32 73774592, i32 1704218873, i32 39238404, i32 1979535549, i32 -179241980, i32 -1240820191, i32 301270116, i32 1991966858, i32 73774592, i32 1704218873, i32 39238404, i32 1979535549, i32 -179241980, i32 -1240864479, i32 301204580, i32 -530855062, i32 -1241483589, i32 1358496869, i32 -1157339756, i32 1354564182, i32 -66816515, i32 773977424, i32 73709065, i32 -1123918919, i32 1125053556, i32 -201206096, i32 1475362075, i32 -1776159488, i32 856814602, i32 -169818681, i32 -200656095, i32 1475356945, i32 -1776159488, i32 521270282, i32 -169822777, i32 -200656095, i32 569709841, i32 1958545710, i32 -200751673, i32 854853915, i32 51311618, i32 -168243513, i32 -66389215, i32 -187630368, i32 2092501522, i32 908195074, i32 -134154237, i32 -669519616, i32 102020613, i32 -1241509425, i32 133234960, i32 79037912, i32 118790, i32 -403635011, i32 -470689536, i32 569709391, i32 16253526, i32 134277105, i32 39199221, i32 16253176, i32 -251645452, i32 -1241132009, i32 298780180, i32 17872384, i32 97781745, i32 -804911946, i32 79495169, i32 -195553296, i32 284754482, i32 -184410439, i32 -66896095, i32 152171536, i32 -201182732, i32 280424206, i32 102742104, i32 -186246156, i32 687136002, i32 -1156647936, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 4
@gt215_pmu_data = internal global <{ [849 x i32], [47 x i32] }> <{ [849 x i32] [i32 1381256777, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1414745928, i32 1290, i32 1191, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1481459021, i32 2099, i32 2085, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1179796816, i32 2103, i32 2101, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1598239305, i32 3175, i32 2826, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1414743380, i32 3216, i32 3177, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1162626121, i32 3228, i32 3226, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1353, i32 2, i32 0, i32 1439, i32 3, i32 2, i32 1583, i32 262148, i32 0, i32 1611, i32 65541, i32 0, i32 1640, i32 65542, i32 0, i32 1519, i32 7, i32 0, i32 1651, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 16384, i32 65536, i32 256, i32 262144, i32 1048576, i32 4194304, i32 16777216, i32 67108864, i32 268435456, i32 8192, i32 32768, i32 131072, i32 512, i32 524288, i32 2097152, i32 8388608, i32 33554432, i32 134217728, i32 536870912, i32 57656, i32 57680, i32 57704, i32 57728, i32 57940, i32 57972, i32 59236, i32 59264, i32 59292, i32 59320], [47 x i32] zeroinitializer }>, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gt215_pmu_send(ptr noundef %0, ptr noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.nvkm_timer_wait, align 8
  %8 = alloca %struct.wait_queue_entry, align 4
  %9 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %11) #5
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 1090720
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i32 40, i1 false), !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %10, i64 noundef 2000000000, ptr noundef nonnull %7) #5
  %16 = xor i32 %15, 8
  br label %17

17:                                               ; preds = %22, %6
  %18 = load ptr, ptr %12, align 4
  %19 = getelementptr i8, ptr %18, i32 1090736
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %21 = icmp eq i32 %20, %16
  br i1 %21, label %22, label %44

22:                                               ; preds = %17
  %23 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %7) #5
  %24 = icmp sgt i64 %23, -1
  br i1 %24, label %17, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %7, align 8
  %27 = getelementptr inbounds %struct.nvkm_timer, ptr %26, i32 0, i32 1, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = call ptr @dev_driver_string(ptr noundef %30) #5
  %32 = load ptr, ptr %7, align 8
  %33 = getelementptr inbounds %struct.nvkm_timer, ptr %32, i32 0, i32 1, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = load ptr, ptr %36, align 4
  br label %42

42:                                               ; preds = %40, %25
  %43 = phi ptr [ %41, %40 ], [ %38, %25 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %31, ptr noundef %43) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #5
  br label %100

44:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #5
  %45 = icmp eq ptr %1, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 10, i32 5
  store i32 %3, ptr %47, align 4
  %48 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 10, i32 4
  store i32 %2, ptr %48, align 4
  br label %49

49:                                               ; preds = %46, %44
  br label %50

50:                                               ; preds = %50, %49
  %51 = load ptr, ptr %12, align 4
  %52 = getelementptr i8, ptr %51, i32 1090944
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 1) #5, !srcloc !12
  %53 = load ptr, ptr %12, align 4
  %54 = getelementptr i8, ptr %53, i32 1090944
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %50

57:                                               ; preds = %50
  %58 = shl i32 %15, 4
  %59 = and i32 %58, 112
  %60 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 9, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, %59
  %63 = or i32 %62, 16777216
  %64 = load ptr, ptr %12, align 4
  %65 = getelementptr i8, ptr %64, i32 1089984
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #5, !srcloc !12
  %66 = load ptr, ptr %12, align 4
  %67 = getelementptr i8, ptr %66, i32 1089988
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %2) #5, !srcloc !12
  %68 = load ptr, ptr %12, align 4
  %69 = getelementptr i8, ptr %68, i32 1089988
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %3) #5, !srcloc !12
  %70 = load ptr, ptr %12, align 4
  %71 = getelementptr i8, ptr %70, i32 1089988
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %4) #5, !srcloc !12
  %72 = load ptr, ptr %12, align 4
  %73 = getelementptr i8, ptr %72, i32 1089988
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %5) #5, !srcloc !12
  %74 = add i32 %15, 1
  %75 = and i32 %74, 15
  %76 = load ptr, ptr %12, align 4
  %77 = getelementptr i8, ptr %76, i32 1090720
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #5, !srcloc !12
  %78 = load ptr, ptr %12, align 4
  %79 = getelementptr i8, ptr %78, i32 1090944
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 0) #5, !srcloc !12
  br i1 %45, label %100, label %80

80:                                               ; preds = %57
  %81 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 10, i32 4
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %8, i8 0, i32 20, i1 false), !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %8, i32 noundef 0) #5
  %85 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 10, i32 3
  %86 = call i32 @prepare_to_wait_event(ptr noundef %85, ptr noundef nonnull %8, i32 noundef 2) #5
  %87 = load i32, ptr %81, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %89, %84
  call void @schedule() #5
  %90 = call i32 @prepare_to_wait_event(ptr noundef %85, ptr noundef nonnull %8, i32 noundef 2) #5
  %91 = load i32, ptr %81, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %89

93:                                               ; preds = %89, %84
  call void @finish_wait(ptr noundef %85, ptr noundef nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #5
  br label %94

94:                                               ; preds = %93, %80
  %95 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 10, i32 6
  %96 = load i32, ptr %95, align 4
  store i32 %96, ptr %1, align 4
  %97 = getelementptr %struct.nvkm_pmu, ptr %0, i32 0, i32 10, i32 6, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr i32, ptr %1, i32 1
  store i32 %98, ptr %99, align 4
  br label %100

100:                                              ; preds = %94, %57, %42
  %101 = phi i32 [ -16, %42 ], [ 0, %94 ], [ 0, %57 ]
  call void @mutex_unlock(ptr noundef %11) #5
  ret i32 %101
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gt215_pmu_recv(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1090764
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 1090760
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %74, label %12

12:                                               ; preds = %12, %1
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 1090944
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 2) #5, !srcloc !12
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 1090944
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %12

19:                                               ; preds = %12
  %20 = shl i32 %7, 4
  %21 = and i32 %20, 112
  %22 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %21
  %25 = or i32 %24, 33554432
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr i8, ptr %26, i32 1089984
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #5, !srcloc !12
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr i8, ptr %28, i32 1089988
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr i8, ptr %31, i32 1089988
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr i8, ptr %34, i32 1089988
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr i8, ptr %37, i32 1089988
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %40 = add i32 %7, 1
  %41 = and i32 %40, 15
  %42 = load ptr, ptr %4, align 4
  %43 = getelementptr i8, ptr %42, i32 1090764
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #5, !srcloc !12
  %44 = load ptr, ptr %4, align 4
  %45 = getelementptr i8, ptr %44, i32 1090944
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 0) #5, !srcloc !12
  %46 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 10, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = icmp eq i32 %30, %47
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %59

51:                                               ; preds = %19
  %52 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 10, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %33, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 10, i32 6
  store i32 %36, ptr %56, align 4
  %57 = getelementptr %struct.nvkm_pmu, ptr %0, i32 0, i32 10, i32 6, i32 1
  store i32 %39, ptr %57, align 4
  store i32 0, ptr %46, align 4
  %58 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 10, i32 3
  tail call void @__wake_up(ptr noundef %58, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %74

59:                                               ; preds = %51, %19
  %60 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 5
  %61 = load i32, ptr %60, align 4
  %62 = icmp ugt i32 %61, 1
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load ptr, ptr %2, align 4
  %65 = getelementptr inbounds %struct.nvkm_device, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 4
  %68 = and i32 %30, 255
  %69 = lshr i32 %30, 8
  %70 = and i32 %69, 255
  %71 = lshr i32 %30, 16
  %72 = and i32 %71, 255
  %73 = lshr i32 %30, 24
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %66, ptr noundef nonnull @.str.2, ptr noundef %67, i32 noundef %68, i32 noundef %70, i32 noundef %72, i32 noundef %73, i32 noundef %30, i32 noundef %33, i32 noundef %36, i32 noundef %39) #6
  br label %74

74:                                               ; preds = %63, %59, %55, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gt215_pmu_intr(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1089564
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 1089544
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %11 = lshr i32 %7, 16
  %12 = xor i32 %11, -1
  %13 = and i32 %7, %12
  %14 = and i32 %13, %10
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %39, label %17

17:                                               ; preds = %1
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr i8, ptr %18, i32 1089900
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %39, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr inbounds %struct.nvkm_device, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 4
  %31 = and i32 %20, 16777215
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr i8, ptr %32, i32 1089896
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef %30, i32 noundef %31, i32 noundef %34) #6
  br label %35

35:                                               ; preds = %26, %22
  %36 = load ptr, ptr %4, align 4
  %37 = getelementptr i8, ptr %36, i32 1089900
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 0) #5, !srcloc !12
  %38 = and i32 %14, -33
  br label %39

39:                                               ; preds = %35, %17, %1
  %40 = phi i32 [ %14, %1 ], [ %38, %35 ], [ %14, %17 ]
  %41 = and i32 %40, 64
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 10, i32 2
  %45 = load ptr, ptr @system_wq, align 4
  %46 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %45, ptr noundef %44) #5
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr i8, ptr %47, i32 1089540
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 64) #5, !srcloc !12
  %49 = and i32 %40, -65
  br label %50

50:                                               ; preds = %43, %39
  %51 = phi i32 [ %49, %43 ], [ %40, %39 ]
  %52 = and i32 %51, 128
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %73, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = icmp ugt i32 %56, 2
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load ptr, ptr %2, align 4
  %60 = getelementptr inbounds %struct.nvkm_device, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 4
  %63 = load ptr, ptr %4, align 4
  %64 = getelementptr i8, ptr %63, i32 1091488
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %66 = load ptr, ptr %4, align 4
  %67 = getelementptr i8, ptr %66, i32 1091492
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %61, ptr noundef nonnull @.str.4, ptr noundef %62, i32 noundef %65, i32 noundef %68) #6
  br label %69

69:                                               ; preds = %58, %54
  %70 = load ptr, ptr %4, align 4
  %71 = getelementptr i8, ptr %70, i32 1089540
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 128) #5, !srcloc !12
  %72 = and i32 %51, -129
  br label %73

73:                                               ; preds = %69, %50
  %74 = phi i32 [ %72, %69 ], [ %51, %50 ]
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 5
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %2, align 4
  %82 = getelementptr inbounds %struct.nvkm_device, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.5, ptr noundef %84, i32 noundef %74) #6
  br label %85

85:                                               ; preds = %80, %76
  %86 = load ptr, ptr %4, align 4
  %87 = getelementptr i8, ptr %86, i32 1089540
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %74) #5, !srcloc !12
  br label %88

88:                                               ; preds = %85, %73
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gt215_pmu_fini(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1089556
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 96) #5, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gt215_pmu_init(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 1089984
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 16777216) #5, !srcloc !12
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.nvkm_pmu_func, ptr %9, i32 0, i32 2, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %28, label %13

13:                                               ; preds = %13, %1
  %14 = phi ptr [ %23, %13 ], [ %9, %1 ]
  %15 = phi i32 [ %22, %13 ], [ 0, %1 ]
  %16 = getelementptr inbounds %struct.nvkm_pmu_func, ptr %14, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i32, ptr %17, i32 %15
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr i8, ptr %20, i32 1089988
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #5, !srcloc !12
  %22 = add nuw nsw i32 %15, 1
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.nvkm_pmu_func, ptr %23, i32 0, i32 2, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = lshr i32 %25, 2
  %27 = icmp ult i32 %22, %26
  br i1 %27, label %13, label %28

28:                                               ; preds = %13, %1
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr i8, ptr %29, i32 1089920
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 16777216) #5, !srcloc !12
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.nvkm_pmu_func, ptr %31, i32 0, i32 1, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp ult i32 %33, 4
  br i1 %34, label %59, label %35

35:                                               ; preds = %45, %28
  %36 = phi ptr [ %54, %45 ], [ %31, %28 ]
  %37 = phi i32 [ %53, %45 ], [ 0, %28 ]
  %38 = and i32 %37, 63
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = lshr i32 %37, 6
  %42 = load ptr, ptr %6, align 4
  %43 = getelementptr i8, ptr %42, i32 1089928
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #5, !srcloc !12
  %44 = load ptr, ptr %0, align 4
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi ptr [ %44, %40 ], [ %36, %35 ]
  %47 = getelementptr inbounds %struct.nvkm_pmu_func, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i32, ptr %48, i32 %37
  %50 = load i32, ptr %49, align 4
  %51 = load ptr, ptr %6, align 4
  %52 = getelementptr i8, ptr %51, i32 1089924
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #5, !srcloc !12
  %53 = add nuw nsw i32 %37, 1
  %54 = load ptr, ptr %0, align 4
  %55 = getelementptr inbounds %struct.nvkm_pmu_func, ptr %54, i32 0, i32 1, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = lshr i32 %56, 2
  %58 = icmp ult i32 %53, %57
  br i1 %58, label %35, label %59

59:                                               ; preds = %45, %28
  %60 = load ptr, ptr %6, align 4
  %61 = getelementptr i8, ptr %60, i32 1089804
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 0) #5, !srcloc !12
  %62 = load ptr, ptr %6, align 4
  %63 = getelementptr i8, ptr %62, i32 1089796
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 0) #5, !srcloc !12
  %64 = load ptr, ptr %6, align 4
  %65 = getelementptr i8, ptr %64, i32 1089792
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 2) #5, !srcloc !12
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %5, i64 noundef 2000000000, ptr noundef nonnull %2) #5
  br label %66

66:                                               ; preds = %71, %59
  %67 = load ptr, ptr %6, align 4
  %68 = getelementptr i8, ptr %67, i32 1090768
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %66
  %72 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #5
  %73 = icmp sgt i64 %72, -1
  br i1 %73, label %66, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %2, align 8
  %76 = getelementptr inbounds %struct.nvkm_timer, ptr %75, i32 0, i32 1, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.nvkm_device, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 8
  %80 = call ptr @dev_driver_string(ptr noundef %79) #5
  %81 = load ptr, ptr %2, align 8
  %82 = getelementptr inbounds %struct.nvkm_timer, ptr %81, i32 0, i32 1, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.nvkm_device, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 3
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %74
  %90 = load ptr, ptr %85, align 4
  br label %91

91:                                               ; preds = %89, %74
  %92 = phi ptr [ %90, %89 ], [ %87, %74 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 226, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %80, ptr noundef %92) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #5
  br label %144

93:                                               ; preds = %66
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #5
  %94 = load ptr, ptr %6, align 4
  %95 = getelementptr i8, ptr %94, i32 1090768
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %97 = and i32 %96, 65535
  %98 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 9, i32 1
  store i32 %97, ptr %98, align 4
  %99 = load ptr, ptr %6, align 4
  %100 = getelementptr i8, ptr %99, i32 1090768
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %102 = lshr i32 %101, 16
  %103 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 9, i32 2
  store i32 %102, ptr %103, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %5, i64 noundef 2000000000, ptr noundef nonnull %3) #5
  br label %104

104:                                              ; preds = %109, %93
  %105 = load ptr, ptr %6, align 4
  %106 = getelementptr i8, ptr %105, i32 1090780
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %131

109:                                              ; preds = %104
  %110 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #5
  %111 = icmp sgt i64 %110, -1
  br i1 %111, label %104, label %112

112:                                              ; preds = %109
  %113 = load ptr, ptr %3, align 8
  %114 = getelementptr inbounds %struct.nvkm_timer, ptr %113, i32 0, i32 1, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.nvkm_device, ptr %115, i32 0, i32 2
  %117 = load ptr, ptr %116, align 8
  %118 = call ptr @dev_driver_string(ptr noundef %117) #5
  %119 = load ptr, ptr %3, align 8
  %120 = getelementptr inbounds %struct.nvkm_timer, ptr %119, i32 0, i32 1, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.nvkm_device, ptr %121, i32 0, i32 2
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr inbounds %struct.device, ptr %123, i32 0, i32 3
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %112
  %128 = load ptr, ptr %123, align 4
  br label %129

129:                                              ; preds = %127, %112
  %130 = phi ptr [ %128, %127 ], [ %125, %112 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 235, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %118, ptr noundef %130) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #5
  br label %144

131:                                              ; preds = %104
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #5
  %132 = load ptr, ptr %6, align 4
  %133 = getelementptr i8, ptr %132, i32 1090780
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %135 = and i32 %134, 65535
  %136 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 10
  store i32 %135, ptr %136, align 4
  %137 = load ptr, ptr %6, align 4
  %138 = getelementptr i8, ptr %137, i32 1090780
  %139 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %140 = lshr i32 %139, 16
  %141 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 10, i32 1
  store i32 %140, ptr %141, align 4
  %142 = load ptr, ptr %6, align 4
  %143 = getelementptr i8, ptr %142, i32 1089552
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 224) #5, !srcloc !12
  br label %144

144:                                              ; preds = %131, %129, %91
  %145 = phi i32 [ -16, %91 ], [ -16, %129 ], [ 0, %131 ]
  ret i32 %145
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_load_imem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_load_dmem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_read_dmem(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_bind_context(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_v1_wait_for_halt(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_v1_clear_interrupt(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_set_start_addr(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_start(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_v1_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_disable(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gt215_pmu_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_pmu_new_(ptr noundef nonnull @gt215_pmu_fwif, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #5
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pmu_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_pmu_nofw(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @gt215_pmu_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 139792
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  ret i1 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gt215_pmu_reset(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_pmu, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 139792
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %8 = and i32 %7, -2
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 139792
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #5, !srcloc !12
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 139792
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %14 = or i32 %13, 1
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 139792
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #5, !srcloc !12
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 139792
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 3948818}
!9 = !{i64 2151488271}
!10 = !{!"auto-init"}
!11 = !{i64 2151489493}
!12 = !{i64 3948400}
