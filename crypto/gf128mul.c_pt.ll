; ModuleID = '/llk/IR/crypto/gf128mul.c_pt.bc'
source_filename = "../crypto/gf128mul.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gf128mul_x8_ble:\09\09\09\09\09"
module asm "\09.asciz \09\22gf128mul_x8_ble\22\09\09\09\09\09"
module asm "__kstrtabns_gf128mul_x8_ble:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gf128mul_lle:\09\09\09\09\09"
module asm "\09.asciz \09\22gf128mul_lle\22\09\09\09\09\09"
module asm "__kstrtabns_gf128mul_lle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gf128mul_bbe:\09\09\09\09\09"
module asm "\09.asciz \09\22gf128mul_bbe\22\09\09\09\09\09"
module asm "__kstrtabns_gf128mul_bbe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gf128mul_init_64k_bbe:\09\09\09\09\09"
module asm "\09.asciz \09\22gf128mul_init_64k_bbe\22\09\09\09\09\09"
module asm "__kstrtabns_gf128mul_init_64k_bbe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gf128mul_free_64k:\09\09\09\09\09"
module asm "\09.asciz \09\22gf128mul_free_64k\22\09\09\09\09\09"
module asm "__kstrtabns_gf128mul_free_64k:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gf128mul_64k_bbe:\09\09\09\09\09"
module asm "\09.asciz \09\22gf128mul_64k_bbe\22\09\09\09\09\09"
module asm "__kstrtabns_gf128mul_64k_bbe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gf128mul_init_4k_lle:\09\09\09\09\09"
module asm "\09.asciz \09\22gf128mul_init_4k_lle\22\09\09\09\09\09"
module asm "__kstrtabns_gf128mul_init_4k_lle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gf128mul_init_4k_bbe:\09\09\09\09\09"
module asm "\09.asciz \09\22gf128mul_init_4k_bbe\22\09\09\09\09\09"
module asm "__kstrtabns_gf128mul_init_4k_bbe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gf128mul_4k_lle:\09\09\09\09\09"
module asm "\09.asciz \09\22gf128mul_4k_lle\22\09\09\09\09\09"
module asm "__kstrtabns_gf128mul_4k_lle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gf128mul_4k_bbe:\09\09\09\09\09"
module asm "\09.asciz \09\22gf128mul_4k_bbe\22\09\09\09\09\09"
module asm "__kstrtabns_gf128mul_4k_bbe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.le128 = type { i64, i64 }
%struct.be128 = type { i64, i64 }
%struct.u128 = type { i64, i64 }

@gf128mul_table_be = internal unnamed_addr constant [256 x i16] [i16 0, i16 135, i16 270, i16 393, i16 540, i16 667, i16 786, i16 917, i16 1080, i16 1215, i16 1334, i16 1457, i16 1572, i16 1699, i16 1834, i16 1965, i16 2160, i16 2295, i16 2430, i16 2553, i16 2668, i16 2795, i16 2914, i16 3045, i16 3144, i16 3279, i16 3398, i16 3521, i16 3668, i16 3795, i16 3930, i16 4061, i16 4320, i16 4199, i16 4590, i16 4457, i16 4860, i16 4731, i16 5106, i16 4981, i16 5336, i16 5215, i16 5590, i16 5457, i16 5828, i16 5699, i16 6090, i16 5965, i16 6288, i16 6167, i16 6558, i16 6425, i16 6796, i16 6667, i16 7042, i16 6917, i16 7336, i16 7215, i16 7590, i16 7457, i16 7860, i16 7731, i16 8122, i16 7997, i16 8640, i16 8519, i16 8398, i16 8265, i16 9180, i16 9051, i16 8914, i16 8789, i16 9720, i16 9599, i16 9462, i16 9329, i16 10212, i16 10083, i16 9962, i16 9837, i16 10672, i16 10551, i16 10430, i16 10297, i16 11180, i16 11051, i16 10914, i16 10789, i16 11656, i16 11535, i16 11398, i16 11265, i16 12180, i16 12051, i16 11930, i16 11805, i16 12576, i16 12711, i16 12334, i16 12457, i16 13116, i16 13243, i16 12850, i16 12981, i16 13592, i16 13727, i16 13334, i16 13457, i16 14084, i16 14211, i16 13834, i16 13965, i16 14672, i16 14807, i16 14430, i16 14553, i16 15180, i16 15307, i16 14914, i16 15045, i16 15720, i16 15855, i16 15462, i16 15585, i16 16244, i16 16371, i16 15994, i16 16125, i16 17280, i16 17159, i16 17038, i16 16905, i16 16796, i16 16667, i16 16530, i16 16405, i16 18360, i16 18239, i16 18102, i16 17969, i16 17828, i16 17699, i16 17578, i16 17453, i16 19440, i16 19319, i16 19198, i16 19065, i16 18924, i16 18795, i16 18658, i16 18533, i16 20424, i16 20303, i16 20166, i16 20033, i16 19924, i16 19795, i16 19674, i16 19549, i16 21344, i16 21479, i16 21102, i16 21225, i16 20860, i16 20987, i16 20594, i16 20725, i16 22360, i16 22495, i16 22102, i16 22225, i16 21828, i16 21955, i16 21578, i16 21709, i16 23312, i16 23447, i16 23070, i16 23193, i16 22796, i16 22923, i16 22530, i16 22661, i16 24360, i16 24495, i16 24102, i16 24225, i16 23860, i16 23987, i16 23610, i16 23741, i16 25152, i16 25287, i16 25422, i16 25545, i16 24668, i16 24795, i16 24914, i16 25045, i16 26232, i16 26367, i16 26486, i16 26609, i16 25700, i16 25827, i16 25962, i16 26093, i16 27184, i16 27319, i16 27454, i16 27577, i16 26668, i16 26795, i16 26914, i16 27045, i16 28168, i16 28303, i16 28422, i16 28545, i16 27668, i16 27795, i16 27930, i16 28061, i16 29344, i16 29223, i16 29614, i16 29481, i16 28860, i16 28731, i16 29106, i16 28981, i16 30360, i16 30239, i16 30614, i16 30481, i16 29828, i16 29699, i16 30090, i16 29965, i16 31440, i16 31319, i16 31710, i16 31577, i16 30924, i16 30795, i16 31170, i16 31045, i16 32488, i16 32367, i16 32742, i16 32609, i16 31988, i16 31859, i16 32250, i16 32125], align 2
@__kstrtab_gf128mul_x8_ble = external dso_local constant [0 x i8], align 1
@__kstrtabns_gf128mul_x8_ble = external dso_local constant [0 x i8], align 1
@__ksymtab_gf128mul_x8_ble = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gf128mul_x8_ble to i32), ptr @__kstrtab_gf128mul_x8_ble, ptr @__kstrtabns_gf128mul_x8_ble }, section "___ksymtab+gf128mul_x8_ble", align 4
@__kstrtab_gf128mul_lle = external dso_local constant [0 x i8], align 1
@__kstrtabns_gf128mul_lle = external dso_local constant [0 x i8], align 1
@__ksymtab_gf128mul_lle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gf128mul_lle to i32), ptr @__kstrtab_gf128mul_lle, ptr @__kstrtabns_gf128mul_lle }, section "___ksymtab+gf128mul_lle", align 4
@__kstrtab_gf128mul_bbe = external dso_local constant [0 x i8], align 1
@__kstrtabns_gf128mul_bbe = external dso_local constant [0 x i8], align 1
@__ksymtab_gf128mul_bbe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gf128mul_bbe to i32), ptr @__kstrtab_gf128mul_bbe, ptr @__kstrtabns_gf128mul_bbe }, section "___ksymtab+gf128mul_bbe", align 4
@__kstrtab_gf128mul_init_64k_bbe = external dso_local constant [0 x i8], align 1
@__kstrtabns_gf128mul_init_64k_bbe = external dso_local constant [0 x i8], align 1
@__ksymtab_gf128mul_init_64k_bbe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gf128mul_init_64k_bbe to i32), ptr @__kstrtab_gf128mul_init_64k_bbe, ptr @__kstrtabns_gf128mul_init_64k_bbe }, section "___ksymtab+gf128mul_init_64k_bbe", align 4
@__kstrtab_gf128mul_free_64k = external dso_local constant [0 x i8], align 1
@__kstrtabns_gf128mul_free_64k = external dso_local constant [0 x i8], align 1
@__ksymtab_gf128mul_free_64k = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gf128mul_free_64k to i32), ptr @__kstrtab_gf128mul_free_64k, ptr @__kstrtabns_gf128mul_free_64k }, section "___ksymtab+gf128mul_free_64k", align 4
@__kstrtab_gf128mul_64k_bbe = external dso_local constant [0 x i8], align 1
@__kstrtabns_gf128mul_64k_bbe = external dso_local constant [0 x i8], align 1
@__ksymtab_gf128mul_64k_bbe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gf128mul_64k_bbe to i32), ptr @__kstrtab_gf128mul_64k_bbe, ptr @__kstrtabns_gf128mul_64k_bbe }, section "___ksymtab+gf128mul_64k_bbe", align 4
@__kstrtab_gf128mul_init_4k_lle = external dso_local constant [0 x i8], align 1
@__kstrtabns_gf128mul_init_4k_lle = external dso_local constant [0 x i8], align 1
@__ksymtab_gf128mul_init_4k_lle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gf128mul_init_4k_lle to i32), ptr @__kstrtab_gf128mul_init_4k_lle, ptr @__kstrtabns_gf128mul_init_4k_lle }, section "___ksymtab+gf128mul_init_4k_lle", align 4
@__kstrtab_gf128mul_init_4k_bbe = external dso_local constant [0 x i8], align 1
@__kstrtabns_gf128mul_init_4k_bbe = external dso_local constant [0 x i8], align 1
@__ksymtab_gf128mul_init_4k_bbe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gf128mul_init_4k_bbe to i32), ptr @__kstrtab_gf128mul_init_4k_bbe, ptr @__kstrtabns_gf128mul_init_4k_bbe }, section "___ksymtab+gf128mul_init_4k_bbe", align 4
@__kstrtab_gf128mul_4k_lle = external dso_local constant [0 x i8], align 1
@__kstrtabns_gf128mul_4k_lle = external dso_local constant [0 x i8], align 1
@__ksymtab_gf128mul_4k_lle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gf128mul_4k_lle to i32), ptr @__kstrtab_gf128mul_4k_lle, ptr @__kstrtabns_gf128mul_4k_lle }, section "___ksymtab+gf128mul_4k_lle", align 4
@__kstrtab_gf128mul_4k_bbe = external dso_local constant [0 x i8], align 1
@__kstrtabns_gf128mul_4k_bbe = external dso_local constant [0 x i8], align 1
@__ksymtab_gf128mul_4k_bbe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gf128mul_4k_bbe to i32), ptr @__kstrtab_gf128mul_4k_bbe, ptr @__kstrtabns_gf128mul_4k_bbe }, section "___ksymtab+gf128mul_4k_bbe", align 4
@__UNIQUE_ID_license104 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description105 = internal constant [60 x i8] c"description=Functions for multiplying elements of GF(2^128)\00", section ".modinfo", align 1
@gf128mul_table_le = internal unnamed_addr constant [256 x i16] [i16 0, i16 450, i16 900, i16 582, i16 1800, i16 1738, i16 1164, i16 1358, i16 3600, i16 4050, i16 3476, i16 3158, i16 2328, i16 2266, i16 2716, i16 2910, i16 7200, i16 7650, i16 8100, i16 7782, i16 6952, i16 6890, i16 6316, i16 6510, i16 4656, i16 5106, i16 4532, i16 4214, i16 5432, i16 5370, i16 5820, i16 6014, i16 14400, i16 14722, i16 15300, i16 14854, i16 16200, i16 16010, i16 15564, i16 15630, i16 13904, i16 14226, i16 13780, i16 13334, i16 12632, i16 12442, i16 13020, i16 13086, i16 9312, i16 9634, i16 10212, i16 9766, i16 9064, i16 8874, i16 8428, i16 8494, i16 10864, i16 11186, i16 10740, i16 10294, i16 11640, i16 11450, i16 12028, i16 12094, i16 28800, i16 28994, i16 29444, i16 29382, i16 30600, i16 30282, i16 29708, i16 30158, i16 32400, i16 32594, i16 32020, i16 31958, i16 31128, i16 30810, i16 31260, i16 31710, i16 27808, i16 28002, i16 28452, i16 28390, i16 27560, i16 27242, i16 26668, i16 27118, i16 25264, i16 25458, i16 24884, i16 24822, i16 26040, i16 25722, i16 26172, i16 26622, i16 18624, i16 18690, i16 19268, i16 19078, i16 20424, i16 19978, i16 19532, i16 19854, i16 18128, i16 18194, i16 17748, i16 17558, i16 16856, i16 16410, i16 16988, i16 17310, i16 21728, i16 21794, i16 22372, i16 22182, i16 21480, i16 21034, i16 20588, i16 20910, i16 23280, i16 23346, i16 22900, i16 22710, i16 24056, i16 23610, i16 24188, i16 24510, i16 -7936, i16 -7998, i16 -7548, i16 -7354, i16 -6648, i16 -6198, i16 -6772, i16 -7090, i16 -4336, i16 -4398, i16 -4972, i16 -4778, i16 -6120, i16 -5670, i16 -5220, i16 -5538, i16 -736, i16 -798, i16 -348, i16 -154, i16 -1496, i16 -1046, i16 -1620, i16 -1938, i16 -3280, i16 -3342, i16 -3916, i16 -3722, i16 -3016, i16 -2566, i16 -2116, i16 -2434, i16 -9920, i16 -10110, i16 -9532, i16 -9466, i16 -8632, i16 -8310, i16 -8756, i16 -9202, i16 -10416, i16 -10606, i16 -11052, i16 -10986, i16 -12200, i16 -11878, i16 -11300, i16 -11746, i16 -15008, i16 -15198, i16 -14620, i16 -14554, i16 -15768, i16 -15446, i16 -15892, i16 -16338, i16 -13456, i16 -13646, i16 -14092, i16 -14026, i16 -13192, i16 -12870, i16 -12292, i16 -12738, i16 -28288, i16 -28606, i16 -28156, i16 -27706, i16 -27000, i16 -26806, i16 -27380, i16 -27442, i16 -24688, i16 -25006, i16 -25580, i16 -25130, i16 -26472, i16 -26278, i16 -25828, i16 -25890, i16 -29280, i16 -29598, i16 -29148, i16 -28698, i16 -30040, i16 -29846, i16 -30420, i16 -30482, i16 -31824, i16 -32142, i16 -32716, i16 -32266, i16 -31560, i16 -31366, i16 -30916, i16 -30978, i16 -22080, i16 -22526, i16 -21948, i16 -21626, i16 -20792, i16 -20726, i16 -21172, i16 -21362, i16 -22576, i16 -23022, i16 -23468, i16 -23146, i16 -24360, i16 -24294, i16 -23716, i16 -23906, i16 -18976, i16 -19422, i16 -18844, i16 -18522, i16 -19736, i16 -19670, i16 -20116, i16 -20306, i16 -17424, i16 -17870, i16 -18316, i16 -17994, i16 -17160, i16 -17094, i16 -16516, i16 -16706], align 2
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_description105, ptr @__UNIQUE_ID_license104, ptr @__ksymtab_gf128mul_4k_bbe, ptr @__ksymtab_gf128mul_4k_lle, ptr @__ksymtab_gf128mul_64k_bbe, ptr @__ksymtab_gf128mul_bbe, ptr @__ksymtab_gf128mul_free_64k, ptr @__ksymtab_gf128mul_init_4k_bbe, ptr @__ksymtab_gf128mul_init_4k_lle, ptr @__ksymtab_gf128mul_init_64k_bbe, ptr @__ksymtab_gf128mul_lle, ptr @__ksymtab_gf128mul_x8_ble], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @gf128mul_x8_ble(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.le128, ptr %1, i32 0, i32 1
  %4 = load i64, ptr %3, align 8
  %5 = load i64, ptr %1, align 8
  %6 = lshr i64 %4, 56
  %7 = trunc i64 %6 to i32
  %8 = getelementptr [256 x i16], ptr @gf128mul_table_be, i32 0, i32 %7
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i64
  %11 = tail call i64 @llvm.fshl.i64(i64 %4, i64 %5, i64 8)
  %12 = getelementptr inbounds %struct.le128, ptr %0, i32 0, i32 1
  store i64 %11, ptr %12, align 8
  %13 = shl i64 %5, 8
  %14 = xor i64 %13, %10
  store i64 %14, ptr %0, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf128mul_lle(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [8 x %struct.be128], align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #10
  %4 = getelementptr inbounds i8, ptr %3, i32 16
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(112) %4, i8 0, i32 112, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef align 8 dereferenceable(16) %0, i32 16, i1 false)
  %5 = load i64, ptr %3, align 8
  %6 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  br label %8

8:                                                ; preds = %8, %2
  %9 = phi i64 [ %7, %2 ], [ %20, %8 ]
  %10 = phi i64 [ %5, %2 ], [ %24, %8 ]
  %11 = phi i32 [ 0, %2 ], [ %12, %8 ]
  %12 = add nuw nsw i32 %11, 1
  %13 = getelementptr [8 x %struct.be128], ptr %3, i32 0, i32 %12
  %14 = tail call i64 @llvm.bswap.i64(i64 %10) #10
  %15 = tail call i64 @llvm.bswap.i64(i64 %9) #10
  %16 = and i64 %15, 1
  %17 = sub nsw i64 0, %16
  %18 = and i64 %17, -2233785415175766016
  %19 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %15, i64 63) #10
  %20 = tail call i64 @llvm.bswap.i64(i64 %19) #10
  %21 = getelementptr [8 x %struct.be128], ptr %3, i32 0, i32 %12, i32 1
  store i64 %20, ptr %21, align 8
  %22 = lshr i64 %14, 1
  %23 = xor i64 %18, %22
  %24 = tail call i64 @llvm.bswap.i64(i64 %23) #10
  store i64 %24, ptr %13, align 8
  %25 = icmp eq i32 %12, 7
  br i1 %25, label %26, label %8

26:                                               ; preds = %8
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(16) %0, i8 0, i32 16, i1 false)
  %27 = load i64, ptr %3, align 8
  %28 = getelementptr inbounds %struct.u128, ptr %0, i32 0, i32 1
  %29 = load i64, ptr %6, align 8
  %30 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 1, i32 1
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 2
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 2, i32 1
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 3
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 3, i32 1
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 4
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 4, i32 1
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 5
  %47 = load i64, ptr %46, align 8
  %48 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 5, i32 1
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 6
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 6, i32 1
  %53 = load i64, ptr %52, align 8
  %54 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 7
  %55 = load i64, ptr %54, align 8
  %56 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 7, i32 1
  %57 = load i64, ptr %56, align 8
  br label %58

58:                                               ; preds = %131, %26
  %59 = phi i64 [ 0, %26 ], [ %141, %131 ]
  %60 = phi i64 [ 0, %26 ], [ %145, %131 ]
  %61 = phi i32 [ 0, %26 ], [ %132, %131 ]
  %62 = sub nuw nsw i32 15, %61
  %63 = getelementptr i8, ptr %1, i32 %62
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 128
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %58
  %69 = xor i64 %27, %60
  store i64 %69, ptr %0, align 8
  %70 = xor i64 %29, %59
  store i64 %70, ptr %28, align 8
  br label %71

71:                                               ; preds = %68, %58
  %72 = phi i64 [ %70, %68 ], [ %59, %58 ]
  %73 = phi i64 [ %69, %68 ], [ %60, %58 ]
  %74 = and i32 %65, 64
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = xor i64 %31, %73
  store i64 %77, ptr %0, align 8
  %78 = xor i64 %33, %72
  store i64 %78, ptr %28, align 8
  br label %79

79:                                               ; preds = %76, %71
  %80 = phi i64 [ %78, %76 ], [ %72, %71 ]
  %81 = phi i64 [ %77, %76 ], [ %73, %71 ]
  %82 = and i32 %65, 32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = xor i64 %35, %81
  store i64 %85, ptr %0, align 8
  %86 = xor i64 %37, %80
  store i64 %86, ptr %28, align 8
  br label %87

87:                                               ; preds = %84, %79
  %88 = phi i64 [ %86, %84 ], [ %80, %79 ]
  %89 = phi i64 [ %85, %84 ], [ %81, %79 ]
  %90 = and i32 %65, 16
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = xor i64 %39, %89
  store i64 %93, ptr %0, align 8
  %94 = xor i64 %41, %88
  store i64 %94, ptr %28, align 8
  br label %95

95:                                               ; preds = %92, %87
  %96 = phi i64 [ %94, %92 ], [ %88, %87 ]
  %97 = phi i64 [ %93, %92 ], [ %89, %87 ]
  %98 = and i32 %65, 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = xor i64 %43, %97
  store i64 %101, ptr %0, align 8
  %102 = xor i64 %45, %96
  store i64 %102, ptr %28, align 8
  br label %103

103:                                              ; preds = %100, %95
  %104 = phi i64 [ %102, %100 ], [ %96, %95 ]
  %105 = phi i64 [ %101, %100 ], [ %97, %95 ]
  %106 = and i32 %65, 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = xor i64 %47, %105
  store i64 %109, ptr %0, align 8
  %110 = xor i64 %49, %104
  store i64 %110, ptr %28, align 8
  br label %111

111:                                              ; preds = %108, %103
  %112 = phi i64 [ %110, %108 ], [ %104, %103 ]
  %113 = phi i64 [ %109, %108 ], [ %105, %103 ]
  %114 = and i32 %65, 2
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = xor i64 %51, %113
  store i64 %117, ptr %0, align 8
  %118 = xor i64 %53, %112
  store i64 %118, ptr %28, align 8
  br label %119

119:                                              ; preds = %116, %111
  %120 = phi i64 [ %118, %116 ], [ %112, %111 ]
  %121 = phi i64 [ %117, %116 ], [ %113, %111 ]
  %122 = and i32 %65, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  %125 = xor i64 %55, %121
  store i64 %125, ptr %0, align 8
  %126 = xor i64 %57, %120
  store i64 %126, ptr %28, align 8
  br label %127

127:                                              ; preds = %124, %119
  %128 = phi i64 [ %126, %124 ], [ %120, %119 ]
  %129 = phi i64 [ %125, %124 ], [ %121, %119 ]
  %130 = icmp eq i32 %61, 15
  br i1 %130, label %146, label %131

131:                                              ; preds = %127
  %132 = add nuw nsw i32 %61, 1
  %133 = tail call i64 @llvm.bswap.i64(i64 %129) #10
  %134 = tail call i64 @llvm.bswap.i64(i64 %128) #10
  %135 = trunc i64 %134 to i32
  %136 = and i32 %135, 255
  %137 = getelementptr [256 x i16], ptr @gf128mul_table_le, i32 0, i32 %136
  %138 = load i16, ptr %137, align 2
  %139 = zext i16 %138 to i64
  %140 = tail call i64 @llvm.fshl.i64(i64 %133, i64 %134, i64 56) #10
  %141 = tail call i64 @llvm.bswap.i64(i64 %140) #10
  store i64 %141, ptr %28, align 8
  %142 = lshr i64 %133, 8
  %143 = shl nuw i64 %139, 48
  %144 = xor i64 %143, %142
  %145 = tail call i64 @llvm.bswap.i64(i64 %144) #10
  store i64 %145, ptr %0, align 8
  br label %58

146:                                              ; preds = %127
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #10
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf128mul_bbe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [8 x %struct.be128], align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #10
  %4 = getelementptr inbounds i8, ptr %3, i32 16
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(112) %4, i8 0, i32 112, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef align 8 dereferenceable(16) %0, i32 16, i1 false)
  %5 = load i64, ptr %3, align 8
  %6 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  br label %8

8:                                                ; preds = %8, %2
  %9 = phi i64 [ %7, %2 ], [ %22, %8 ]
  %10 = phi i64 [ %5, %2 ], [ %19, %8 ]
  %11 = phi i32 [ 0, %2 ], [ %12, %8 ]
  %12 = add nuw nsw i32 %11, 1
  %13 = getelementptr [8 x %struct.be128], ptr %3, i32 0, i32 %12
  %14 = tail call i64 @llvm.bswap.i64(i64 %10) #10
  %15 = tail call i64 @llvm.bswap.i64(i64 %9) #10
  %16 = icmp slt i64 %14, 0
  %17 = select i1 %16, i64 135, i64 0
  %18 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %15, i64 1) #10
  %19 = tail call i64 @llvm.bswap.i64(i64 %18) #10
  store i64 %19, ptr %13, align 8
  %20 = shl i64 %15, 1
  %21 = xor i64 %20, %17
  %22 = tail call i64 @llvm.bswap.i64(i64 %21) #10
  %23 = getelementptr [8 x %struct.be128], ptr %3, i32 0, i32 %12, i32 1
  store i64 %22, ptr %23, align 8
  %24 = icmp eq i32 %12, 7
  br i1 %24, label %25, label %8

25:                                               ; preds = %8
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(16) %0, i8 0, i32 16, i1 false)
  %26 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 7
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr inbounds %struct.u128, ptr %0, i32 0, i32 1
  %29 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 7, i32 1
  %30 = load i64, ptr %29, align 8
  %31 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 6
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 6, i32 1
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 5
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 5, i32 1
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 4
  %40 = load i64, ptr %39, align 8
  %41 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 4, i32 1
  %42 = load i64, ptr %41, align 8
  %43 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 3
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 3, i32 1
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 2
  %48 = load i64, ptr %47, align 8
  %49 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 2, i32 1
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 1
  %52 = load i64, ptr %51, align 8
  %53 = getelementptr inbounds [8 x %struct.be128], ptr %3, i32 0, i32 1, i32 1
  %54 = load i64, ptr %53, align 8
  %55 = load i64, ptr %3, align 8
  %56 = load i64, ptr %6, align 8
  br label %57

57:                                               ; preds = %129, %25
  %58 = phi i64 [ 0, %25 ], [ %142, %129 ]
  %59 = phi i64 [ 0, %25 ], [ %139, %129 ]
  %60 = phi i32 [ 0, %25 ], [ %130, %129 ]
  %61 = getelementptr i8, ptr %1, i32 %60
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 128
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %57
  %67 = xor i64 %27, %59
  store i64 %67, ptr %0, align 8
  %68 = xor i64 %30, %58
  store i64 %68, ptr %28, align 8
  br label %69

69:                                               ; preds = %66, %57
  %70 = phi i64 [ %68, %66 ], [ %58, %57 ]
  %71 = phi i64 [ %67, %66 ], [ %59, %57 ]
  %72 = and i32 %63, 64
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = xor i64 %32, %71
  store i64 %75, ptr %0, align 8
  %76 = xor i64 %34, %70
  store i64 %76, ptr %28, align 8
  br label %77

77:                                               ; preds = %74, %69
  %78 = phi i64 [ %76, %74 ], [ %70, %69 ]
  %79 = phi i64 [ %75, %74 ], [ %71, %69 ]
  %80 = and i32 %63, 32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = xor i64 %36, %79
  store i64 %83, ptr %0, align 8
  %84 = xor i64 %38, %78
  store i64 %84, ptr %28, align 8
  br label %85

85:                                               ; preds = %82, %77
  %86 = phi i64 [ %84, %82 ], [ %78, %77 ]
  %87 = phi i64 [ %83, %82 ], [ %79, %77 ]
  %88 = and i32 %63, 16
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = xor i64 %40, %87
  store i64 %91, ptr %0, align 8
  %92 = xor i64 %42, %86
  store i64 %92, ptr %28, align 8
  br label %93

93:                                               ; preds = %90, %85
  %94 = phi i64 [ %92, %90 ], [ %86, %85 ]
  %95 = phi i64 [ %91, %90 ], [ %87, %85 ]
  %96 = and i32 %63, 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = xor i64 %44, %95
  store i64 %99, ptr %0, align 8
  %100 = xor i64 %46, %94
  store i64 %100, ptr %28, align 8
  br label %101

101:                                              ; preds = %98, %93
  %102 = phi i64 [ %100, %98 ], [ %94, %93 ]
  %103 = phi i64 [ %99, %98 ], [ %95, %93 ]
  %104 = and i32 %63, 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = xor i64 %48, %103
  store i64 %107, ptr %0, align 8
  %108 = xor i64 %50, %102
  store i64 %108, ptr %28, align 8
  br label %109

109:                                              ; preds = %106, %101
  %110 = phi i64 [ %108, %106 ], [ %102, %101 ]
  %111 = phi i64 [ %107, %106 ], [ %103, %101 ]
  %112 = and i32 %63, 2
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = xor i64 %52, %111
  store i64 %115, ptr %0, align 8
  %116 = xor i64 %54, %110
  store i64 %116, ptr %28, align 8
  br label %117

117:                                              ; preds = %114, %109
  %118 = phi i64 [ %116, %114 ], [ %110, %109 ]
  %119 = phi i64 [ %115, %114 ], [ %111, %109 ]
  %120 = and i32 %63, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  %123 = xor i64 %55, %119
  store i64 %123, ptr %0, align 8
  %124 = xor i64 %56, %118
  store i64 %124, ptr %28, align 8
  br label %125

125:                                              ; preds = %122, %117
  %126 = phi i64 [ %124, %122 ], [ %118, %117 ]
  %127 = phi i64 [ %123, %122 ], [ %119, %117 ]
  %128 = icmp eq i32 %60, 15
  br i1 %128, label %143, label %129

129:                                              ; preds = %125
  %130 = add nuw nsw i32 %60, 1
  %131 = tail call i64 @llvm.bswap.i64(i64 %127) #10
  %132 = tail call i64 @llvm.bswap.i64(i64 %126) #10
  %133 = lshr i64 %131, 56
  %134 = trunc i64 %133 to i32
  %135 = getelementptr [256 x i16], ptr @gf128mul_table_be, i32 0, i32 %134
  %136 = load i16, ptr %135, align 2
  %137 = zext i16 %136 to i64
  %138 = tail call i64 @llvm.fshl.i64(i64 %131, i64 %132, i64 8) #10
  %139 = tail call i64 @llvm.bswap.i64(i64 %138) #10
  store i64 %139, ptr %0, align 8
  %140 = shl i64 %132, 8
  %141 = xor i64 %140, %137
  %142 = tail call i64 @llvm.bswap.i64(i64 %141) #10
  store i64 %142, ptr %28, align 8
  br label %57

143:                                              ; preds = %125
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gf128mul_init_64k_bbe(ptr nocapture noundef readonly %0) #5 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 64) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %164, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 4096) #11
  store ptr %7, ptr %3, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %87, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 4096) #11
  %12 = getelementptr [16 x ptr], ptr %3, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = icmp eq ptr %11, null
  br i1 %13, label %87, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 4096) #11
  %17 = getelementptr [16 x ptr], ptr %3, i32 0, i32 2
  store ptr %16, ptr %17, align 8
  %18 = icmp eq ptr %16, null
  br i1 %18, label %87, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 4096) #11
  %22 = getelementptr [16 x ptr], ptr %3, i32 0, i32 3
  store ptr %21, ptr %22, align 4
  %23 = icmp eq ptr %21, null
  br i1 %23, label %87, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 4096) #11
  %27 = getelementptr [16 x ptr], ptr %3, i32 0, i32 4
  store ptr %26, ptr %27, align 8
  %28 = icmp eq ptr %26, null
  br i1 %28, label %87, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %31 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 4096) #11
  %32 = getelementptr [16 x ptr], ptr %3, i32 0, i32 5
  store ptr %31, ptr %32, align 4
  %33 = icmp eq ptr %31, null
  br i1 %33, label %87, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %36 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 4096) #11
  %37 = getelementptr [16 x ptr], ptr %3, i32 0, i32 6
  store ptr %36, ptr %37, align 8
  %38 = icmp eq ptr %36, null
  br i1 %38, label %87, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %41 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 4096) #11
  %42 = getelementptr [16 x ptr], ptr %3, i32 0, i32 7
  store ptr %41, ptr %42, align 4
  %43 = icmp eq ptr %41, null
  br i1 %43, label %87, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %46 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3520, i32 noundef 4096) #11
  %47 = getelementptr [16 x ptr], ptr %3, i32 0, i32 8
  store ptr %46, ptr %47, align 8
  %48 = icmp eq ptr %46, null
  br i1 %48, label %87, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %51 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3520, i32 noundef 4096) #11
  %52 = getelementptr [16 x ptr], ptr %3, i32 0, i32 9
  store ptr %51, ptr %52, align 4
  %53 = icmp eq ptr %51, null
  br i1 %53, label %87, label %54

54:                                               ; preds = %49
  %55 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %56 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3520, i32 noundef 4096) #11
  %57 = getelementptr [16 x ptr], ptr %3, i32 0, i32 10
  store ptr %56, ptr %57, align 8
  %58 = icmp eq ptr %56, null
  br i1 %58, label %87, label %59

59:                                               ; preds = %54
  %60 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %61 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3520, i32 noundef 4096) #11
  %62 = getelementptr [16 x ptr], ptr %3, i32 0, i32 11
  store ptr %61, ptr %62, align 4
  %63 = icmp eq ptr %61, null
  br i1 %63, label %87, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %66 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3520, i32 noundef 4096) #11
  %67 = getelementptr [16 x ptr], ptr %3, i32 0, i32 12
  store ptr %66, ptr %67, align 8
  %68 = icmp eq ptr %66, null
  br i1 %68, label %87, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %71 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3520, i32 noundef 4096) #11
  %72 = getelementptr [16 x ptr], ptr %3, i32 0, i32 13
  store ptr %71, ptr %72, align 4
  %73 = icmp eq ptr %71, null
  br i1 %73, label %87, label %74

74:                                               ; preds = %69
  %75 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %76 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 3520, i32 noundef 4096) #11
  %77 = getelementptr [16 x ptr], ptr %3, i32 0, i32 14
  store ptr %76, ptr %77, align 8
  %78 = icmp eq ptr %76, null
  br i1 %78, label %87, label %79

79:                                               ; preds = %74
  %80 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %81 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %80, i32 noundef 3520, i32 noundef 4096) #11
  %82 = getelementptr [16 x ptr], ptr %3, i32 0, i32 15
  store ptr %81, ptr %82, align 4
  %83 = icmp eq ptr %81, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load ptr, ptr %3, align 8
  %86 = getelementptr [256 x %struct.be128], ptr %85, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %86, ptr noundef align 8 dereferenceable(16) %0, i32 16, i1 false)
  br label %88

87:                                               ; preds = %79, %74, %69, %64, %59, %54, %49, %44, %39, %34, %29, %24, %19, %14, %9, %5
  tail call void @gf128mul_free_64k(ptr noundef nonnull %3)
  br label %164

88:                                               ; preds = %88, %84
  %89 = phi i32 [ 1, %84 ], [ %91, %88 ]
  %90 = load ptr, ptr %3, align 8
  %91 = shl i32 %89, 1
  %92 = getelementptr [256 x %struct.be128], ptr %90, i32 0, i32 %91
  %93 = getelementptr [256 x %struct.be128], ptr %90, i32 0, i32 %89
  %94 = load i64, ptr %93, align 8
  %95 = tail call i64 @llvm.bswap.i64(i64 %94) #10
  %96 = getelementptr [256 x %struct.be128], ptr %90, i32 0, i32 %89, i32 1
  %97 = load i64, ptr %96, align 8
  %98 = tail call i64 @llvm.bswap.i64(i64 %97) #10
  %99 = icmp slt i64 %95, 0
  %100 = select i1 %99, i64 135, i64 0
  %101 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %98, i64 1) #10
  %102 = tail call i64 @llvm.bswap.i64(i64 %101) #10
  store i64 %102, ptr %92, align 8
  %103 = shl i64 %98, 1
  %104 = xor i64 %103, %100
  %105 = tail call i64 @llvm.bswap.i64(i64 %104) #10
  %106 = getelementptr [256 x %struct.be128], ptr %90, i32 0, i32 %91, i32 1
  store i64 %105, ptr %106, align 8
  %107 = icmp slt i32 %91, 65
  br i1 %107, label %88, label %108

108:                                              ; preds = %139, %88
  %109 = phi i32 [ 0, %88 ], [ %135, %139 ]
  %110 = getelementptr [16 x ptr], ptr %3, i32 0, i32 %109
  br label %111

111:                                              ; preds = %131, %108
  %112 = phi i32 [ 2, %108 ], [ %132, %131 ]
  br label %113

113:                                              ; preds = %113, %111
  %114 = phi i32 [ %129, %113 ], [ 1, %111 ]
  %115 = load ptr, ptr %110, align 4
  %116 = add nuw nsw i32 %114, %112
  %117 = getelementptr [256 x %struct.be128], ptr %115, i32 0, i32 %116
  %118 = getelementptr [256 x %struct.be128], ptr %115, i32 0, i32 %112
  %119 = getelementptr [256 x %struct.be128], ptr %115, i32 0, i32 %114
  %120 = load i64, ptr %118, align 8
  %121 = load i64, ptr %119, align 8
  %122 = xor i64 %121, %120
  store i64 %122, ptr %117, align 8
  %123 = getelementptr inbounds %struct.u128, ptr %118, i32 0, i32 1
  %124 = load i64, ptr %123, align 8
  %125 = getelementptr inbounds %struct.u128, ptr %119, i32 0, i32 1
  %126 = load i64, ptr %125, align 8
  %127 = xor i64 %126, %124
  %128 = getelementptr inbounds %struct.u128, ptr %117, i32 0, i32 1
  store i64 %127, ptr %128, align 8
  %129 = add nuw nsw i32 %114, 1
  %130 = icmp eq i32 %129, %112
  br i1 %130, label %131, label %113

131:                                              ; preds = %113
  %132 = shl i32 %112, 1
  %133 = icmp slt i32 %132, 256
  br i1 %133, label %111, label %134

134:                                              ; preds = %131
  %135 = add nuw nsw i32 %109, 1
  %136 = icmp eq i32 %109, 15
  br i1 %136, label %164, label %137

137:                                              ; preds = %134
  %138 = getelementptr [16 x ptr], ptr %3, i32 0, i32 %135
  br label %139

139:                                              ; preds = %139, %137
  %140 = phi i32 [ 128, %137 ], [ %162, %139 ]
  %141 = load ptr, ptr %138, align 4
  %142 = getelementptr [256 x %struct.be128], ptr %141, i32 0, i32 %140
  %143 = load ptr, ptr %110, align 4
  %144 = getelementptr [256 x %struct.be128], ptr %143, i32 0, i32 %140
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %142, ptr noundef align 8 dereferenceable(16) %144, i32 16, i1 false)
  %145 = load ptr, ptr %138, align 4
  %146 = getelementptr [256 x %struct.be128], ptr %145, i32 0, i32 %140
  %147 = load i64, ptr %146, align 8
  %148 = tail call i64 @llvm.bswap.i64(i64 %147) #10
  %149 = getelementptr [256 x %struct.be128], ptr %145, i32 0, i32 %140, i32 1
  %150 = load i64, ptr %149, align 8
  %151 = tail call i64 @llvm.bswap.i64(i64 %150) #10
  %152 = lshr i64 %148, 56
  %153 = trunc i64 %152 to i32
  %154 = getelementptr [256 x i16], ptr @gf128mul_table_be, i32 0, i32 %153
  %155 = load i16, ptr %154, align 2
  %156 = zext i16 %155 to i64
  %157 = tail call i64 @llvm.fshl.i64(i64 %148, i64 %151, i64 8) #10
  %158 = tail call i64 @llvm.bswap.i64(i64 %157) #10
  store i64 %158, ptr %146, align 8
  %159 = shl i64 %151, 8
  %160 = xor i64 %159, %156
  %161 = tail call i64 @llvm.bswap.i64(i64 %160) #10
  store i64 %161, ptr %149, align 8
  %162 = lshr i32 %140, 1
  %163 = icmp ult i32 %140, 2
  br i1 %163, label %108, label %139

164:                                              ; preds = %134, %87, %1
  %165 = phi ptr [ null, %87 ], [ null, %1 ], [ %3, %134 ]
  ret ptr %165
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf128mul_free_64k(ptr noundef %0) #5 {
  %2 = load ptr, ptr %0, align 4
  tail call void @kfree_sensitive(ptr noundef %2) #10
  %3 = getelementptr [16 x ptr], ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @kfree_sensitive(ptr noundef %4) #10
  %5 = getelementptr [16 x ptr], ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void @kfree_sensitive(ptr noundef %6) #10
  %7 = getelementptr [16 x ptr], ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree_sensitive(ptr noundef %8) #10
  %9 = getelementptr [16 x ptr], ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  tail call void @kfree_sensitive(ptr noundef %10) #10
  %11 = getelementptr [16 x ptr], ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  tail call void @kfree_sensitive(ptr noundef %12) #10
  %13 = getelementptr [16 x ptr], ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  tail call void @kfree_sensitive(ptr noundef %14) #10
  %15 = getelementptr [16 x ptr], ptr %0, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  tail call void @kfree_sensitive(ptr noundef %16) #10
  %17 = getelementptr [16 x ptr], ptr %0, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  tail call void @kfree_sensitive(ptr noundef %18) #10
  %19 = getelementptr [16 x ptr], ptr %0, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree_sensitive(ptr noundef %20) #10
  %21 = getelementptr [16 x ptr], ptr %0, i32 0, i32 10
  %22 = load ptr, ptr %21, align 4
  tail call void @kfree_sensitive(ptr noundef %22) #10
  %23 = getelementptr [16 x ptr], ptr %0, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  tail call void @kfree_sensitive(ptr noundef %24) #10
  %25 = getelementptr [16 x ptr], ptr %0, i32 0, i32 12
  %26 = load ptr, ptr %25, align 4
  tail call void @kfree_sensitive(ptr noundef %26) #10
  %27 = getelementptr [16 x ptr], ptr %0, i32 0, i32 13
  %28 = load ptr, ptr %27, align 4
  tail call void @kfree_sensitive(ptr noundef %28) #10
  %29 = getelementptr [16 x ptr], ptr %0, i32 0, i32 14
  %30 = load ptr, ptr %29, align 4
  tail call void @kfree_sensitive(ptr noundef %30) #10
  %31 = getelementptr [16 x ptr], ptr %0, i32 0, i32 15
  %32 = load ptr, ptr %31, align 4
  tail call void @kfree_sensitive(ptr noundef %32) #10
  tail call void @kfree_sensitive(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf128mul_64k_bbe(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #7 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %0, i32 15
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr [256 x %struct.be128], ptr %3, i32 0, i32 %6
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds i8, ptr %7, i32 8
  %10 = load i64, ptr %9, align 8
  br label %11

11:                                               ; preds = %11, %2
  %12 = phi i32 [ 1, %2 ], [ %27, %11 ]
  %13 = phi i64 [ %10, %2 ], [ %26, %11 ]
  %14 = phi i64 [ %8, %2 ], [ %23, %11 ]
  %15 = getelementptr [16 x ptr], ptr %1, i32 0, i32 %12
  %16 = load ptr, ptr %15, align 4
  %17 = sub nuw nsw i32 15, %12
  %18 = getelementptr i8, ptr %0, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = getelementptr [256 x %struct.be128], ptr %16, i32 0, i32 %20
  %22 = load i64, ptr %21, align 8
  %23 = xor i64 %22, %14
  %24 = getelementptr inbounds %struct.u128, ptr %21, i32 0, i32 1
  %25 = load i64, ptr %24, align 8
  %26 = xor i64 %25, %13
  %27 = add nuw nsw i32 %12, 1
  %28 = icmp eq i32 %27, 16
  br i1 %28, label %29, label %11

29:                                               ; preds = %11
  store i64 %23, ptr %0, align 8
  %30 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %26, ptr %30, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @gf128mul_init_4k_lle(ptr nocapture noundef readonly %0) #5 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4096) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5

5:                                                ; preds = %1
  %6 = getelementptr [256 x %struct.be128], ptr %3, i32 0, i32 128
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %6, ptr noundef align 8 dereferenceable(16) %0, i32 16, i1 false)
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 64, %5 ], [ %26, %7 ]
  %9 = getelementptr [256 x %struct.be128], ptr %3, i32 0, i32 %8
  %10 = shl nuw nsw i32 %8, 1
  %11 = getelementptr [256 x %struct.be128], ptr %3, i32 0, i32 %10
  %12 = load i64, ptr %11, align 8
  %13 = tail call i64 @llvm.bswap.i64(i64 %12) #10
  %14 = getelementptr [256 x %struct.be128], ptr %3, i32 0, i32 %10, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #10
  %17 = and i64 %16, 1
  %18 = sub nsw i64 0, %17
  %19 = and i64 %18, -2233785415175766016
  %20 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %16, i64 63) #10
  %21 = tail call i64 @llvm.bswap.i64(i64 %20) #10
  %22 = getelementptr [256 x %struct.be128], ptr %3, i32 0, i32 %8, i32 1
  store i64 %21, ptr %22, align 8
  %23 = lshr i64 %13, 1
  %24 = xor i64 %19, %23
  %25 = tail call i64 @llvm.bswap.i64(i64 %24) #10
  store i64 %25, ptr %9, align 8
  %26 = lshr i32 %8, 1
  %27 = icmp ult i32 %8, 2
  br i1 %27, label %28, label %7

28:                                               ; preds = %47, %7
  %29 = phi i32 [ %48, %47 ], [ 2, %7 ]
  %30 = getelementptr [256 x %struct.be128], ptr %3, i32 0, i32 %29
  %31 = getelementptr inbounds %struct.u128, ptr %30, i32 0, i32 1
  %32 = load i64, ptr %30, align 8
  %33 = load i64, ptr %31, align 8
  br label %34

34:                                               ; preds = %34, %28
  %35 = phi i32 [ 1, %28 ], [ %45, %34 ]
  %36 = add nuw nsw i32 %35, %29
  %37 = getelementptr [256 x %struct.be128], ptr %3, i32 0, i32 %36
  %38 = getelementptr [256 x %struct.be128], ptr %3, i32 0, i32 %35
  %39 = load i64, ptr %38, align 8
  %40 = xor i64 %39, %32
  store i64 %40, ptr %37, align 8
  %41 = getelementptr inbounds %struct.u128, ptr %38, i32 0, i32 1
  %42 = load i64, ptr %41, align 8
  %43 = xor i64 %42, %33
  %44 = getelementptr inbounds %struct.u128, ptr %37, i32 0, i32 1
  store i64 %43, ptr %44, align 8
  %45 = add nuw nsw i32 %35, 1
  %46 = icmp eq i32 %45, %29
  br i1 %46, label %47, label %34

47:                                               ; preds = %34
  %48 = shl i32 %29, 1
  %49 = icmp slt i32 %48, 256
  br i1 %49, label %28, label %50

50:                                               ; preds = %47, %1
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @gf128mul_init_4k_bbe(ptr nocapture noundef readonly %0) #5 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4096) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %1
  %6 = getelementptr [256 x %struct.be128], ptr %3, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %6, ptr noundef align 8 dereferenceable(16) %0, i32 16, i1 false)
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr [256 x %struct.be128], ptr %3, i32 0, i32 1, i32 1
  %9 = load i64, ptr %8, align 8
  br label %10

10:                                               ; preds = %10, %5
  %11 = phi i64 [ %9, %5 ], [ %24, %10 ]
  %12 = phi i64 [ %7, %5 ], [ %21, %10 ]
  %13 = phi i32 [ 1, %5 ], [ %14, %10 ]
  %14 = shl i32 %13, 1
  %15 = getelementptr [256 x %struct.be128], ptr %3, i32 0, i32 %14
  %16 = tail call i64 @llvm.bswap.i64(i64 %12) #10
  %17 = tail call i64 @llvm.bswap.i64(i64 %11) #10
  %18 = icmp slt i64 %16, 0
  %19 = select i1 %18, i64 135, i64 0
  %20 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %17, i64 1) #10
  %21 = tail call i64 @llvm.bswap.i64(i64 %20) #10
  store i64 %21, ptr %15, align 8
  %22 = shl i64 %17, 1
  %23 = xor i64 %22, %19
  %24 = tail call i64 @llvm.bswap.i64(i64 %23) #10
  %25 = getelementptr [256 x %struct.be128], ptr %3, i32 0, i32 %14, i32 1
  store i64 %24, ptr %25, align 8
  %26 = icmp slt i32 %14, 65
  br i1 %26, label %10, label %27

27:                                               ; preds = %46, %10
  %28 = phi i32 [ %47, %46 ], [ 2, %10 ]
  %29 = getelementptr [256 x %struct.be128], ptr %3, i32 0, i32 %28
  %30 = getelementptr inbounds %struct.u128, ptr %29, i32 0, i32 1
  %31 = load i64, ptr %29, align 8
  %32 = load i64, ptr %30, align 8
  br label %33

33:                                               ; preds = %33, %27
  %34 = phi i32 [ 1, %27 ], [ %44, %33 ]
  %35 = add nuw nsw i32 %34, %28
  %36 = getelementptr [256 x %struct.be128], ptr %3, i32 0, i32 %35
  %37 = getelementptr [256 x %struct.be128], ptr %3, i32 0, i32 %34
  %38 = load i64, ptr %37, align 8
  %39 = xor i64 %38, %31
  store i64 %39, ptr %36, align 8
  %40 = getelementptr inbounds %struct.u128, ptr %37, i32 0, i32 1
  %41 = load i64, ptr %40, align 8
  %42 = xor i64 %41, %32
  %43 = getelementptr inbounds %struct.u128, ptr %36, i32 0, i32 1
  store i64 %42, ptr %43, align 8
  %44 = add nuw nsw i32 %34, 1
  %45 = icmp eq i32 %44, %28
  br i1 %45, label %46, label %33

46:                                               ; preds = %33
  %47 = shl i32 %28, 1
  %48 = icmp slt i32 %47, 256
  br i1 %48, label %27, label %49

49:                                               ; preds = %46, %1
  ret ptr %3
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf128mul_4k_lle(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 15
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr [256 x %struct.be128], ptr %1, i32 0, i32 %5
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds i8, ptr %6, i32 8
  %9 = load i64, ptr %8, align 8
  br label %10

10:                                               ; preds = %10, %2
  %11 = phi i32 [ 15, %2 ], [ %14, %10 ]
  %12 = phi i64 [ %9, %2 ], [ %36, %10 ]
  %13 = phi i64 [ %7, %2 ], [ %33, %10 ]
  %14 = add nsw i32 %11, -1
  %15 = tail call i64 @llvm.bswap.i64(i64 %13) #10
  %16 = tail call i64 @llvm.bswap.i64(i64 %12) #10
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 255
  %19 = getelementptr [256 x i16], ptr @gf128mul_table_le, i32 0, i32 %18
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i64
  %22 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %16, i64 56) #10
  %23 = tail call i64 @llvm.bswap.i64(i64 %22) #10
  %24 = lshr i64 %15, 8
  %25 = shl nuw i64 %21, 48
  %26 = xor i64 %25, %24
  %27 = tail call i64 @llvm.bswap.i64(i64 %26) #10
  %28 = getelementptr i8, ptr %0, i32 %14
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = getelementptr [256 x %struct.be128], ptr %1, i32 0, i32 %30
  %32 = load i64, ptr %31, align 8
  %33 = xor i64 %27, %32
  %34 = getelementptr inbounds %struct.u128, ptr %31, i32 0, i32 1
  %35 = load i64, ptr %34, align 8
  %36 = xor i64 %35, %23
  %37 = icmp eq i32 %14, 0
  br i1 %37, label %38, label %10

38:                                               ; preds = %10
  store i64 %33, ptr %0, align 8
  %39 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %36, ptr %39, align 8
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf128mul_4k_bbe(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr [256 x %struct.be128], ptr %1, i32 0, i32 %4
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds i8, ptr %5, i32 8
  %8 = load i64, ptr %7, align 8
  br label %9

9:                                                ; preds = %9, %2
  %10 = phi i32 [ 1, %2 ], [ %34, %9 ]
  %11 = phi i64 [ %8, %2 ], [ %33, %9 ]
  %12 = phi i64 [ %6, %2 ], [ %30, %9 ]
  %13 = tail call i64 @llvm.bswap.i64(i64 %12) #10
  %14 = tail call i64 @llvm.bswap.i64(i64 %11) #10
  %15 = lshr i64 %13, 56
  %16 = trunc i64 %15 to i32
  %17 = getelementptr [256 x i16], ptr @gf128mul_table_be, i32 0, i32 %16
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i64
  %20 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %14, i64 8) #10
  %21 = tail call i64 @llvm.bswap.i64(i64 %20) #10
  %22 = shl i64 %14, 8
  %23 = xor i64 %22, %19
  %24 = tail call i64 @llvm.bswap.i64(i64 %23) #10
  %25 = getelementptr i8, ptr %0, i32 %10
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr [256 x %struct.be128], ptr %1, i32 0, i32 %27
  %29 = load i64, ptr %28, align 8
  %30 = xor i64 %29, %21
  %31 = getelementptr inbounds %struct.u128, ptr %28, i32 0, i32 1
  %32 = load i64, ptr %31, align 8
  %33 = xor i64 %32, %24
  %34 = add nuw nsw i32 %10, 1
  %35 = icmp eq i32 %34, 16
  br i1 %35, label %36, label %9

36:                                               ; preds = %9
  store i64 %30, ptr %0, align 8
  %37 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %33, ptr %37, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }

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
