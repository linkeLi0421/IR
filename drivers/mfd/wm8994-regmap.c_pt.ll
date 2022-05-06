; ModuleID = '/llk/IR/drivers/mfd/wm8994-regmap.c_pt.bc'
source_filename = "../drivers/mfd/wm8994-regmap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm1811_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22wm1811_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_wm1811_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8994_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8994_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_wm8994_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8958_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8958_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_wm8958_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8994_base_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8994_base_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_wm8994_base_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.reg_default = type { i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.wm8994 = type { %struct.wm8994_pdata, i32, i32, i32, ptr, ptr, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr }
%struct.wm8994_pdata = type { i32, [11 x i32], [2 x %struct.wm8994_ldo_pdata], i32, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i8, i32, i32, i32, i8, [2 x i32], i16, i8, i8, i8, [3 x i32], i32 }
%struct.wm8994_ldo_pdata = type { ptr }

@wm1811_defaults = internal constant [229 x %struct.reg_default] [%struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 24576 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 24, i32 139 }, %struct.reg_default { i32 25, i32 139 }, %struct.reg_default { i32 26, i32 139 }, %struct.reg_default { i32 27, i32 139 }, %struct.reg_default { i32 28, i32 109 }, %struct.reg_default { i32 29, i32 109 }, %struct.reg_default { i32 30, i32 102 }, %struct.reg_default { i32 31, i32 32 }, %struct.reg_default { i32 32, i32 121 }, %struct.reg_default { i32 33, i32 121 }, %struct.reg_default { i32 34, i32 3 }, %struct.reg_default { i32 35, i32 3 }, %struct.reg_default { i32 36, i32 17 }, %struct.reg_default { i32 37, i32 320 }, %struct.reg_default { i32 38, i32 121 }, %struct.reg_default { i32 39, i32 121 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 46, i32 0 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 55, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 57, i32 0 }, %struct.reg_default { i32 59, i32 13 }, %struct.reg_default { i32 60, i32 3 }, %struct.reg_default { i32 61, i32 57 }, %struct.reg_default { i32 62, i32 57 }, %struct.reg_default { i32 76, i32 7973 }, %struct.reg_default { i32 77, i32 43801 }, %struct.reg_default { i32 81, i32 4 }, %struct.reg_default { i32 85, i32 1354 }, %struct.reg_default { i32 89, i32 0 }, %struct.reg_default { i32 96, i32 0 }, %struct.reg_default { i32 197, i32 0 }, %struct.reg_default { i32 208, i32 30208 }, %struct.reg_default { i32 209, i32 127 }, %struct.reg_default { i32 257, i32 32772 }, %struct.reg_default { i32 512, i32 0 }, %struct.reg_default { i32 513, i32 0 }, %struct.reg_default { i32 516, i32 0 }, %struct.reg_default { i32 517, i32 0 }, %struct.reg_default { i32 520, i32 0 }, %struct.reg_default { i32 521, i32 0 }, %struct.reg_default { i32 528, i32 131 }, %struct.reg_default { i32 529, i32 131 }, %struct.reg_default { i32 544, i32 0 }, %struct.reg_default { i32 545, i32 0 }, %struct.reg_default { i32 546, i32 0 }, %struct.reg_default { i32 547, i32 0 }, %struct.reg_default { i32 548, i32 3200 }, %struct.reg_default { i32 550, i32 0 }, %struct.reg_default { i32 551, i32 6 }, %struct.reg_default { i32 576, i32 0 }, %struct.reg_default { i32 577, i32 0 }, %struct.reg_default { i32 578, i32 0 }, %struct.reg_default { i32 579, i32 0 }, %struct.reg_default { i32 580, i32 3200 }, %struct.reg_default { i32 582, i32 0 }, %struct.reg_default { i32 583, i32 6 }, %struct.reg_default { i32 768, i32 16464 }, %struct.reg_default { i32 769, i32 16384 }, %struct.reg_default { i32 770, i32 0 }, %struct.reg_default { i32 771, i32 64 }, %struct.reg_default { i32 772, i32 64 }, %struct.reg_default { i32 773, i32 64 }, %struct.reg_default { i32 774, i32 4 }, %struct.reg_default { i32 775, i32 256 }, %struct.reg_default { i32 784, i32 16464 }, %struct.reg_default { i32 785, i32 16384 }, %struct.reg_default { i32 786, i32 0 }, %struct.reg_default { i32 787, i32 64 }, %struct.reg_default { i32 788, i32 64 }, %struct.reg_default { i32 789, i32 64 }, %struct.reg_default { i32 790, i32 0 }, %struct.reg_default { i32 791, i32 0 }, %struct.reg_default { i32 792, i32 3 }, %struct.reg_default { i32 800, i32 64 }, %struct.reg_default { i32 801, i32 0 }, %struct.reg_default { i32 802, i32 0 }, %struct.reg_default { i32 803, i32 0 }, %struct.reg_default { i32 1024, i32 192 }, %struct.reg_default { i32 1025, i32 192 }, %struct.reg_default { i32 1026, i32 192 }, %struct.reg_default { i32 1027, i32 192 }, %struct.reg_default { i32 1040, i32 0 }, %struct.reg_default { i32 1041, i32 0 }, %struct.reg_default { i32 1056, i32 512 }, %struct.reg_default { i32 1057, i32 16 }, %struct.reg_default { i32 1058, i32 512 }, %struct.reg_default { i32 1059, i32 16 }, %struct.reg_default { i32 1072, i32 104 }, %struct.reg_default { i32 1073, i32 104 }, %struct.reg_default { i32 1088, i32 152 }, %struct.reg_default { i32 1089, i32 2117 }, %struct.reg_default { i32 1090, i32 0 }, %struct.reg_default { i32 1091, i32 0 }, %struct.reg_default { i32 1092, i32 0 }, %struct.reg_default { i32 1104, i32 152 }, %struct.reg_default { i32 1105, i32 2117 }, %struct.reg_default { i32 1106, i32 0 }, %struct.reg_default { i32 1107, i32 0 }, %struct.reg_default { i32 1108, i32 0 }, %struct.reg_default { i32 1152, i32 25368 }, %struct.reg_default { i32 1153, i32 25344 }, %struct.reg_default { i32 1154, i32 4042 }, %struct.reg_default { i32 1155, i32 1024 }, %struct.reg_default { i32 1156, i32 216 }, %struct.reg_default { i32 1157, i32 7861 }, %struct.reg_default { i32 1158, i32 61765 }, %struct.reg_default { i32 1159, i32 2933 }, %struct.reg_default { i32 1160, i32 453 }, %struct.reg_default { i32 1161, i32 7256 }, %struct.reg_default { i32 1162, i32 62323 }, %struct.reg_default { i32 1163, i32 2644 }, %struct.reg_default { i32 1164, i32 1368 }, %struct.reg_default { i32 1165, i32 5774 }, %struct.reg_default { i32 1166, i32 63529 }, %struct.reg_default { i32 1167, i32 1965 }, %struct.reg_default { i32 1168, i32 4355 }, %struct.reg_default { i32 1169, i32 1380 }, %struct.reg_default { i32 1170, i32 1369 }, %struct.reg_default { i32 1171, i32 16384 }, %struct.reg_default { i32 1172, i32 0 }, %struct.reg_default { i32 1184, i32 25368 }, %struct.reg_default { i32 1185, i32 25344 }, %struct.reg_default { i32 1186, i32 4042 }, %struct.reg_default { i32 1187, i32 1024 }, %struct.reg_default { i32 1188, i32 216 }, %struct.reg_default { i32 1189, i32 7861 }, %struct.reg_default { i32 1190, i32 61765 }, %struct.reg_default { i32 1191, i32 2933 }, %struct.reg_default { i32 1192, i32 453 }, %struct.reg_default { i32 1193, i32 7256 }, %struct.reg_default { i32 1194, i32 62323 }, %struct.reg_default { i32 1195, i32 2644 }, %struct.reg_default { i32 1196, i32 1368 }, %struct.reg_default { i32 1197, i32 5774 }, %struct.reg_default { i32 1198, i32 63529 }, %struct.reg_default { i32 1199, i32 1965 }, %struct.reg_default { i32 1200, i32 4355 }, %struct.reg_default { i32 1201, i32 1380 }, %struct.reg_default { i32 1202, i32 1369 }, %struct.reg_default { i32 1203, i32 16384 }, %struct.reg_default { i32 1204, i32 0 }, %struct.reg_default { i32 1280, i32 192 }, %struct.reg_default { i32 1281, i32 192 }, %struct.reg_default { i32 1282, i32 192 }, %struct.reg_default { i32 1283, i32 192 }, %struct.reg_default { i32 1296, i32 0 }, %struct.reg_default { i32 1312, i32 512 }, %struct.reg_default { i32 1313, i32 16 }, %struct.reg_default { i32 1328, i32 104 }, %struct.reg_default { i32 1344, i32 152 }, %struct.reg_default { i32 1345, i32 2117 }, %struct.reg_default { i32 1346, i32 0 }, %struct.reg_default { i32 1347, i32 0 }, %struct.reg_default { i32 1348, i32 0 }, %struct.reg_default { i32 1408, i32 25368 }, %struct.reg_default { i32 1409, i32 25344 }, %struct.reg_default { i32 1410, i32 4042 }, %struct.reg_default { i32 1411, i32 1024 }, %struct.reg_default { i32 1412, i32 216 }, %struct.reg_default { i32 1413, i32 7861 }, %struct.reg_default { i32 1414, i32 61765 }, %struct.reg_default { i32 1415, i32 2933 }, %struct.reg_default { i32 1416, i32 453 }, %struct.reg_default { i32 1417, i32 7256 }, %struct.reg_default { i32 1418, i32 62323 }, %struct.reg_default { i32 1419, i32 2644 }, %struct.reg_default { i32 1420, i32 1368 }, %struct.reg_default { i32 1421, i32 5774 }, %struct.reg_default { i32 1422, i32 63529 }, %struct.reg_default { i32 1423, i32 1965 }, %struct.reg_default { i32 1424, i32 4355 }, %struct.reg_default { i32 1425, i32 1380 }, %struct.reg_default { i32 1426, i32 1369 }, %struct.reg_default { i32 1427, i32 16384 }, %struct.reg_default { i32 1428, i32 0 }, %struct.reg_default { i32 1536, i32 0 }, %struct.reg_default { i32 1537, i32 0 }, %struct.reg_default { i32 1538, i32 0 }, %struct.reg_default { i32 1539, i32 0 }, %struct.reg_default { i32 1540, i32 0 }, %struct.reg_default { i32 1541, i32 0 }, %struct.reg_default { i32 1542, i32 0 }, %struct.reg_default { i32 1543, i32 0 }, %struct.reg_default { i32 1544, i32 0 }, %struct.reg_default { i32 1545, i32 0 }, %struct.reg_default { i32 1552, i32 704 }, %struct.reg_default { i32 1553, i32 704 }, %struct.reg_default { i32 1554, i32 704 }, %struct.reg_default { i32 1555, i32 704 }, %struct.reg_default { i32 1556, i32 0 }, %struct.reg_default { i32 1568, i32 2 }, %struct.reg_default { i32 1569, i32 0 }, %struct.reg_default { i32 1792, i32 33024 }, %struct.reg_default { i32 1793, i32 41217 }, %struct.reg_default { i32 1794, i32 41217 }, %struct.reg_default { i32 1795, i32 41217 }, %struct.reg_default { i32 1796, i32 41217 }, %struct.reg_default { i32 1799, i32 41217 }, %struct.reg_default { i32 1800, i32 41217 }, %struct.reg_default { i32 1801, i32 41217 }, %struct.reg_default { i32 1802, i32 41217 }, %struct.reg_default { i32 1824, i32 0 }, %struct.reg_default { i32 1825, i32 342 }, %struct.reg_default { i32 1842, i32 0 }, %struct.reg_default { i32 1848, i32 2047 }, %struct.reg_default { i32 1849, i32 57327 }, %struct.reg_default { i32 1856, i32 0 }, %struct.reg_default { i32 1864, i32 63 }], align 4
@wm1811_regmap_config = dso_local global %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr null, ptr @wm1811_readable_register, ptr @wm1811_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 12799, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm1811_defaults, i32 229, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@__kstrtab_wm1811_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm1811_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_wm1811_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm1811_regmap_config to i32), ptr @__kstrtab_wm1811_regmap_config, ptr @__kstrtabns_wm1811_regmap_config }, section "___ksymtab+wm1811_regmap_config", align 4
@wm8994_defaults = internal constant [216 x %struct.reg_default] [%struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 24576 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 24, i32 139 }, %struct.reg_default { i32 25, i32 139 }, %struct.reg_default { i32 26, i32 139 }, %struct.reg_default { i32 27, i32 139 }, %struct.reg_default { i32 28, i32 109 }, %struct.reg_default { i32 29, i32 109 }, %struct.reg_default { i32 30, i32 102 }, %struct.reg_default { i32 31, i32 32 }, %struct.reg_default { i32 32, i32 121 }, %struct.reg_default { i32 33, i32 121 }, %struct.reg_default { i32 34, i32 3 }, %struct.reg_default { i32 35, i32 3 }, %struct.reg_default { i32 36, i32 17 }, %struct.reg_default { i32 37, i32 320 }, %struct.reg_default { i32 38, i32 121 }, %struct.reg_default { i32 39, i32 121 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 46, i32 0 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 55, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 57, i32 0 }, %struct.reg_default { i32 58, i32 0 }, %struct.reg_default { i32 59, i32 13 }, %struct.reg_default { i32 60, i32 3 }, %struct.reg_default { i32 76, i32 7973 }, %struct.reg_default { i32 81, i32 4 }, %struct.reg_default { i32 85, i32 1354 }, %struct.reg_default { i32 87, i32 0 }, %struct.reg_default { i32 96, i32 0 }, %struct.reg_default { i32 257, i32 32772 }, %struct.reg_default { i32 272, i32 0 }, %struct.reg_default { i32 273, i32 0 }, %struct.reg_default { i32 512, i32 0 }, %struct.reg_default { i32 513, i32 0 }, %struct.reg_default { i32 516, i32 0 }, %struct.reg_default { i32 517, i32 0 }, %struct.reg_default { i32 520, i32 0 }, %struct.reg_default { i32 521, i32 0 }, %struct.reg_default { i32 528, i32 131 }, %struct.reg_default { i32 529, i32 131 }, %struct.reg_default { i32 544, i32 0 }, %struct.reg_default { i32 545, i32 0 }, %struct.reg_default { i32 546, i32 0 }, %struct.reg_default { i32 547, i32 0 }, %struct.reg_default { i32 548, i32 3200 }, %struct.reg_default { i32 576, i32 0 }, %struct.reg_default { i32 577, i32 0 }, %struct.reg_default { i32 578, i32 0 }, %struct.reg_default { i32 579, i32 0 }, %struct.reg_default { i32 580, i32 3200 }, %struct.reg_default { i32 768, i32 16464 }, %struct.reg_default { i32 769, i32 16384 }, %struct.reg_default { i32 770, i32 0 }, %struct.reg_default { i32 771, i32 64 }, %struct.reg_default { i32 772, i32 64 }, %struct.reg_default { i32 773, i32 64 }, %struct.reg_default { i32 774, i32 4 }, %struct.reg_default { i32 775, i32 256 }, %struct.reg_default { i32 784, i32 16464 }, %struct.reg_default { i32 785, i32 16384 }, %struct.reg_default { i32 786, i32 0 }, %struct.reg_default { i32 787, i32 64 }, %struct.reg_default { i32 788, i32 64 }, %struct.reg_default { i32 789, i32 64 }, %struct.reg_default { i32 790, i32 0 }, %struct.reg_default { i32 791, i32 0 }, %struct.reg_default { i32 1024, i32 192 }, %struct.reg_default { i32 1025, i32 192 }, %struct.reg_default { i32 1026, i32 192 }, %struct.reg_default { i32 1027, i32 192 }, %struct.reg_default { i32 1028, i32 192 }, %struct.reg_default { i32 1029, i32 192 }, %struct.reg_default { i32 1030, i32 192 }, %struct.reg_default { i32 1031, i32 192 }, %struct.reg_default { i32 1040, i32 0 }, %struct.reg_default { i32 1041, i32 0 }, %struct.reg_default { i32 1056, i32 512 }, %struct.reg_default { i32 1057, i32 16 }, %struct.reg_default { i32 1058, i32 512 }, %struct.reg_default { i32 1059, i32 16 }, %struct.reg_default { i32 1088, i32 152 }, %struct.reg_default { i32 1089, i32 2117 }, %struct.reg_default { i32 1090, i32 0 }, %struct.reg_default { i32 1091, i32 0 }, %struct.reg_default { i32 1092, i32 0 }, %struct.reg_default { i32 1104, i32 152 }, %struct.reg_default { i32 1105, i32 2117 }, %struct.reg_default { i32 1106, i32 0 }, %struct.reg_default { i32 1107, i32 0 }, %struct.reg_default { i32 1108, i32 0 }, %struct.reg_default { i32 1152, i32 25368 }, %struct.reg_default { i32 1153, i32 25344 }, %struct.reg_default { i32 1154, i32 4042 }, %struct.reg_default { i32 1155, i32 1024 }, %struct.reg_default { i32 1156, i32 216 }, %struct.reg_default { i32 1157, i32 7861 }, %struct.reg_default { i32 1158, i32 61765 }, %struct.reg_default { i32 1159, i32 2933 }, %struct.reg_default { i32 1160, i32 453 }, %struct.reg_default { i32 1161, i32 7256 }, %struct.reg_default { i32 1162, i32 62323 }, %struct.reg_default { i32 1163, i32 2644 }, %struct.reg_default { i32 1164, i32 1368 }, %struct.reg_default { i32 1165, i32 5774 }, %struct.reg_default { i32 1166, i32 63529 }, %struct.reg_default { i32 1167, i32 1965 }, %struct.reg_default { i32 1168, i32 4355 }, %struct.reg_default { i32 1169, i32 1380 }, %struct.reg_default { i32 1170, i32 1369 }, %struct.reg_default { i32 1171, i32 16384 }, %struct.reg_default { i32 1184, i32 25368 }, %struct.reg_default { i32 1185, i32 25344 }, %struct.reg_default { i32 1186, i32 4042 }, %struct.reg_default { i32 1187, i32 1024 }, %struct.reg_default { i32 1188, i32 216 }, %struct.reg_default { i32 1189, i32 7861 }, %struct.reg_default { i32 1190, i32 61765 }, %struct.reg_default { i32 1191, i32 2933 }, %struct.reg_default { i32 1192, i32 453 }, %struct.reg_default { i32 1193, i32 7256 }, %struct.reg_default { i32 1194, i32 62323 }, %struct.reg_default { i32 1195, i32 2644 }, %struct.reg_default { i32 1196, i32 1368 }, %struct.reg_default { i32 1197, i32 5774 }, %struct.reg_default { i32 1198, i32 63529 }, %struct.reg_default { i32 1199, i32 1965 }, %struct.reg_default { i32 1200, i32 4355 }, %struct.reg_default { i32 1201, i32 1380 }, %struct.reg_default { i32 1202, i32 1369 }, %struct.reg_default { i32 1203, i32 16384 }, %struct.reg_default { i32 1280, i32 192 }, %struct.reg_default { i32 1281, i32 192 }, %struct.reg_default { i32 1282, i32 192 }, %struct.reg_default { i32 1283, i32 192 }, %struct.reg_default { i32 1296, i32 0 }, %struct.reg_default { i32 1312, i32 512 }, %struct.reg_default { i32 1313, i32 16 }, %struct.reg_default { i32 1344, i32 152 }, %struct.reg_default { i32 1345, i32 2117 }, %struct.reg_default { i32 1346, i32 0 }, %struct.reg_default { i32 1347, i32 0 }, %struct.reg_default { i32 1348, i32 0 }, %struct.reg_default { i32 1408, i32 25368 }, %struct.reg_default { i32 1409, i32 25344 }, %struct.reg_default { i32 1410, i32 4042 }, %struct.reg_default { i32 1411, i32 1024 }, %struct.reg_default { i32 1412, i32 216 }, %struct.reg_default { i32 1413, i32 7861 }, %struct.reg_default { i32 1414, i32 61765 }, %struct.reg_default { i32 1415, i32 2933 }, %struct.reg_default { i32 1416, i32 453 }, %struct.reg_default { i32 1417, i32 7256 }, %struct.reg_default { i32 1418, i32 62323 }, %struct.reg_default { i32 1419, i32 2644 }, %struct.reg_default { i32 1420, i32 1368 }, %struct.reg_default { i32 1421, i32 5774 }, %struct.reg_default { i32 1422, i32 63529 }, %struct.reg_default { i32 1423, i32 1965 }, %struct.reg_default { i32 1424, i32 4355 }, %struct.reg_default { i32 1425, i32 1380 }, %struct.reg_default { i32 1426, i32 1369 }, %struct.reg_default { i32 1427, i32 16384 }, %struct.reg_default { i32 1536, i32 0 }, %struct.reg_default { i32 1537, i32 0 }, %struct.reg_default { i32 1538, i32 0 }, %struct.reg_default { i32 1539, i32 0 }, %struct.reg_default { i32 1540, i32 0 }, %struct.reg_default { i32 1541, i32 0 }, %struct.reg_default { i32 1542, i32 0 }, %struct.reg_default { i32 1543, i32 0 }, %struct.reg_default { i32 1544, i32 0 }, %struct.reg_default { i32 1545, i32 0 }, %struct.reg_default { i32 1552, i32 704 }, %struct.reg_default { i32 1553, i32 704 }, %struct.reg_default { i32 1554, i32 704 }, %struct.reg_default { i32 1555, i32 704 }, %struct.reg_default { i32 1556, i32 0 }, %struct.reg_default { i32 1568, i32 2 }, %struct.reg_default { i32 1569, i32 0 }, %struct.reg_default { i32 1792, i32 33024 }, %struct.reg_default { i32 1793, i32 41217 }, %struct.reg_default { i32 1794, i32 41217 }, %struct.reg_default { i32 1795, i32 41217 }, %struct.reg_default { i32 1796, i32 41217 }, %struct.reg_default { i32 1797, i32 41217 }, %struct.reg_default { i32 1798, i32 41217 }, %struct.reg_default { i32 1799, i32 41217 }, %struct.reg_default { i32 1800, i32 41217 }, %struct.reg_default { i32 1801, i32 41217 }, %struct.reg_default { i32 1802, i32 41217 }, %struct.reg_default { i32 1824, i32 0 }, %struct.reg_default { i32 1825, i32 342 }, %struct.reg_default { i32 1848, i32 2047 }, %struct.reg_default { i32 1849, i32 65535 }, %struct.reg_default { i32 1856, i32 0 }, %struct.reg_default { i32 1864, i32 63 }], align 4
@wm8994_regmap_config = dso_local global %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr null, ptr @wm8994_readable_register, ptr @wm8994_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 12799, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8994_defaults, i32 216, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@__kstrtab_wm8994_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8994_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8994_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8994_regmap_config to i32), ptr @__kstrtab_wm8994_regmap_config, ptr @__kstrtabns_wm8994_regmap_config }, section "___ksymtab+wm8994_regmap_config", align 4
@wm8958_defaults = internal constant [293 x %struct.reg_default] [%struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 24576 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 24, i32 139 }, %struct.reg_default { i32 25, i32 139 }, %struct.reg_default { i32 26, i32 139 }, %struct.reg_default { i32 27, i32 139 }, %struct.reg_default { i32 28, i32 109 }, %struct.reg_default { i32 29, i32 109 }, %struct.reg_default { i32 30, i32 102 }, %struct.reg_default { i32 31, i32 32 }, %struct.reg_default { i32 32, i32 121 }, %struct.reg_default { i32 33, i32 121 }, %struct.reg_default { i32 34, i32 3 }, %struct.reg_default { i32 35, i32 3 }, %struct.reg_default { i32 36, i32 17 }, %struct.reg_default { i32 37, i32 320 }, %struct.reg_default { i32 38, i32 121 }, %struct.reg_default { i32 39, i32 121 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 46, i32 0 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 55, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 57, i32 384 }, %struct.reg_default { i32 59, i32 13 }, %struct.reg_default { i32 60, i32 5 }, %struct.reg_default { i32 61, i32 57 }, %struct.reg_default { i32 62, i32 57 }, %struct.reg_default { i32 76, i32 7973 }, %struct.reg_default { i32 77, i32 43801 }, %struct.reg_default { i32 81, i32 4 }, %struct.reg_default { i32 85, i32 1354 }, %struct.reg_default { i32 87, i32 0 }, %struct.reg_default { i32 96, i32 0 }, %struct.reg_default { i32 197, i32 0 }, %struct.reg_default { i32 208, i32 22016 }, %struct.reg_default { i32 209, i32 127 }, %struct.reg_default { i32 257, i32 32772 }, %struct.reg_default { i32 272, i32 0 }, %struct.reg_default { i32 273, i32 0 }, %struct.reg_default { i32 512, i32 0 }, %struct.reg_default { i32 513, i32 0 }, %struct.reg_default { i32 516, i32 0 }, %struct.reg_default { i32 517, i32 0 }, %struct.reg_default { i32 520, i32 0 }, %struct.reg_default { i32 521, i32 0 }, %struct.reg_default { i32 528, i32 131 }, %struct.reg_default { i32 529, i32 131 }, %struct.reg_default { i32 544, i32 0 }, %struct.reg_default { i32 545, i32 0 }, %struct.reg_default { i32 546, i32 0 }, %struct.reg_default { i32 547, i32 0 }, %struct.reg_default { i32 548, i32 3200 }, %struct.reg_default { i32 550, i32 0 }, %struct.reg_default { i32 551, i32 6 }, %struct.reg_default { i32 576, i32 0 }, %struct.reg_default { i32 577, i32 0 }, %struct.reg_default { i32 578, i32 0 }, %struct.reg_default { i32 579, i32 0 }, %struct.reg_default { i32 580, i32 3200 }, %struct.reg_default { i32 582, i32 0 }, %struct.reg_default { i32 583, i32 6 }, %struct.reg_default { i32 768, i32 16464 }, %struct.reg_default { i32 769, i32 16384 }, %struct.reg_default { i32 770, i32 0 }, %struct.reg_default { i32 771, i32 64 }, %struct.reg_default { i32 772, i32 64 }, %struct.reg_default { i32 773, i32 64 }, %struct.reg_default { i32 774, i32 4 }, %struct.reg_default { i32 775, i32 256 }, %struct.reg_default { i32 784, i32 16467 }, %struct.reg_default { i32 785, i32 16384 }, %struct.reg_default { i32 786, i32 0 }, %struct.reg_default { i32 787, i32 64 }, %struct.reg_default { i32 788, i32 64 }, %struct.reg_default { i32 789, i32 64 }, %struct.reg_default { i32 790, i32 0 }, %struct.reg_default { i32 791, i32 0 }, %struct.reg_default { i32 800, i32 64 }, %struct.reg_default { i32 801, i32 0 }, %struct.reg_default { i32 802, i32 0 }, %struct.reg_default { i32 803, i32 0 }, %struct.reg_default { i32 1024, i32 192 }, %struct.reg_default { i32 1025, i32 192 }, %struct.reg_default { i32 1026, i32 192 }, %struct.reg_default { i32 1027, i32 192 }, %struct.reg_default { i32 1028, i32 192 }, %struct.reg_default { i32 1029, i32 192 }, %struct.reg_default { i32 1030, i32 192 }, %struct.reg_default { i32 1031, i32 192 }, %struct.reg_default { i32 1040, i32 0 }, %struct.reg_default { i32 1041, i32 0 }, %struct.reg_default { i32 1056, i32 512 }, %struct.reg_default { i32 1057, i32 16 }, %struct.reg_default { i32 1058, i32 512 }, %struct.reg_default { i32 1059, i32 16 }, %struct.reg_default { i32 1072, i32 104 }, %struct.reg_default { i32 1073, i32 104 }, %struct.reg_default { i32 1088, i32 152 }, %struct.reg_default { i32 1089, i32 2117 }, %struct.reg_default { i32 1090, i32 0 }, %struct.reg_default { i32 1091, i32 0 }, %struct.reg_default { i32 1092, i32 0 }, %struct.reg_default { i32 1104, i32 152 }, %struct.reg_default { i32 1105, i32 2117 }, %struct.reg_default { i32 1106, i32 0 }, %struct.reg_default { i32 1107, i32 0 }, %struct.reg_default { i32 1108, i32 0 }, %struct.reg_default { i32 1152, i32 25368 }, %struct.reg_default { i32 1153, i32 25344 }, %struct.reg_default { i32 1154, i32 4042 }, %struct.reg_default { i32 1155, i32 1024 }, %struct.reg_default { i32 1156, i32 216 }, %struct.reg_default { i32 1157, i32 7861 }, %struct.reg_default { i32 1158, i32 61765 }, %struct.reg_default { i32 1159, i32 2933 }, %struct.reg_default { i32 1160, i32 453 }, %struct.reg_default { i32 1161, i32 7256 }, %struct.reg_default { i32 1162, i32 62323 }, %struct.reg_default { i32 1163, i32 2644 }, %struct.reg_default { i32 1164, i32 1368 }, %struct.reg_default { i32 1165, i32 5774 }, %struct.reg_default { i32 1166, i32 63529 }, %struct.reg_default { i32 1167, i32 1965 }, %struct.reg_default { i32 1168, i32 4355 }, %struct.reg_default { i32 1169, i32 1380 }, %struct.reg_default { i32 1170, i32 1369 }, %struct.reg_default { i32 1171, i32 16384 }, %struct.reg_default { i32 1172, i32 0 }, %struct.reg_default { i32 1184, i32 25368 }, %struct.reg_default { i32 1185, i32 25344 }, %struct.reg_default { i32 1186, i32 4042 }, %struct.reg_default { i32 1187, i32 1024 }, %struct.reg_default { i32 1188, i32 216 }, %struct.reg_default { i32 1189, i32 7861 }, %struct.reg_default { i32 1190, i32 61765 }, %struct.reg_default { i32 1191, i32 2933 }, %struct.reg_default { i32 1192, i32 453 }, %struct.reg_default { i32 1193, i32 7256 }, %struct.reg_default { i32 1194, i32 62323 }, %struct.reg_default { i32 1195, i32 2644 }, %struct.reg_default { i32 1196, i32 1368 }, %struct.reg_default { i32 1197, i32 5774 }, %struct.reg_default { i32 1198, i32 63529 }, %struct.reg_default { i32 1199, i32 1965 }, %struct.reg_default { i32 1200, i32 4355 }, %struct.reg_default { i32 1201, i32 1380 }, %struct.reg_default { i32 1202, i32 1369 }, %struct.reg_default { i32 1203, i32 16384 }, %struct.reg_default { i32 1204, i32 0 }, %struct.reg_default { i32 1280, i32 192 }, %struct.reg_default { i32 1281, i32 192 }, %struct.reg_default { i32 1282, i32 192 }, %struct.reg_default { i32 1283, i32 192 }, %struct.reg_default { i32 1296, i32 0 }, %struct.reg_default { i32 1312, i32 512 }, %struct.reg_default { i32 1313, i32 16 }, %struct.reg_default { i32 1328, i32 104 }, %struct.reg_default { i32 1344, i32 152 }, %struct.reg_default { i32 1345, i32 2117 }, %struct.reg_default { i32 1346, i32 0 }, %struct.reg_default { i32 1347, i32 0 }, %struct.reg_default { i32 1348, i32 0 }, %struct.reg_default { i32 1408, i32 25368 }, %struct.reg_default { i32 1409, i32 25344 }, %struct.reg_default { i32 1410, i32 4042 }, %struct.reg_default { i32 1411, i32 1024 }, %struct.reg_default { i32 1412, i32 216 }, %struct.reg_default { i32 1413, i32 7861 }, %struct.reg_default { i32 1414, i32 61765 }, %struct.reg_default { i32 1415, i32 2933 }, %struct.reg_default { i32 1416, i32 453 }, %struct.reg_default { i32 1417, i32 7256 }, %struct.reg_default { i32 1418, i32 62323 }, %struct.reg_default { i32 1419, i32 2644 }, %struct.reg_default { i32 1420, i32 1368 }, %struct.reg_default { i32 1421, i32 5774 }, %struct.reg_default { i32 1422, i32 63529 }, %struct.reg_default { i32 1423, i32 1965 }, %struct.reg_default { i32 1424, i32 4355 }, %struct.reg_default { i32 1425, i32 1380 }, %struct.reg_default { i32 1426, i32 1369 }, %struct.reg_default { i32 1427, i32 16384 }, %struct.reg_default { i32 1428, i32 0 }, %struct.reg_default { i32 1536, i32 0 }, %struct.reg_default { i32 1537, i32 0 }, %struct.reg_default { i32 1538, i32 0 }, %struct.reg_default { i32 1539, i32 0 }, %struct.reg_default { i32 1540, i32 0 }, %struct.reg_default { i32 1541, i32 0 }, %struct.reg_default { i32 1542, i32 0 }, %struct.reg_default { i32 1543, i32 0 }, %struct.reg_default { i32 1544, i32 0 }, %struct.reg_default { i32 1545, i32 0 }, %struct.reg_default { i32 1552, i32 704 }, %struct.reg_default { i32 1553, i32 704 }, %struct.reg_default { i32 1554, i32 704 }, %struct.reg_default { i32 1555, i32 704 }, %struct.reg_default { i32 1556, i32 0 }, %struct.reg_default { i32 1568, i32 2 }, %struct.reg_default { i32 1569, i32 0 }, %struct.reg_default { i32 1792, i32 33024 }, %struct.reg_default { i32 1793, i32 41217 }, %struct.reg_default { i32 1794, i32 41217 }, %struct.reg_default { i32 1795, i32 41217 }, %struct.reg_default { i32 1796, i32 41217 }, %struct.reg_default { i32 1797, i32 41217 }, %struct.reg_default { i32 1799, i32 41217 }, %struct.reg_default { i32 1800, i32 41217 }, %struct.reg_default { i32 1801, i32 41217 }, %struct.reg_default { i32 1802, i32 41217 }, %struct.reg_default { i32 1824, i32 0 }, %struct.reg_default { i32 1825, i32 342 }, %struct.reg_default { i32 1848, i32 2047 }, %struct.reg_default { i32 1849, i32 65519 }, %struct.reg_default { i32 1856, i32 0 }, %struct.reg_default { i32 1864, i32 63 }, %struct.reg_default { i32 2304, i32 7168 }, %struct.reg_default { i32 2305, i32 0 }, %struct.reg_default { i32 2573, i32 0 }, %struct.reg_default { i32 9216, i32 63 }, %struct.reg_default { i32 9217, i32 35800 }, %struct.reg_default { i32 9218, i32 50 }, %struct.reg_default { i32 9219, i32 62765 }, %struct.reg_default { i32 9220, i32 101 }, %struct.reg_default { i32 9221, i32 44172 }, %struct.reg_default { i32 9222, i32 107 }, %struct.reg_default { i32 9223, i32 57479 }, %struct.reg_default { i32 9224, i32 114 }, %struct.reg_default { i32 9225, i32 5251 }, %struct.reg_default { i32 9226, i32 114 }, %struct.reg_default { i32 9227, i32 5251 }, %struct.reg_default { i32 9228, i32 67 }, %struct.reg_default { i32 9229, i32 13605 }, %struct.reg_default { i32 9230, i32 6 }, %struct.reg_default { i32 9231, i32 27210 }, %struct.reg_default { i32 9232, i32 67 }, %struct.reg_default { i32 9233, i32 24697 }, %struct.reg_default { i32 9234, i32 12 }, %struct.reg_default { i32 9235, i32 52429 }, %struct.reg_default { i32 9236, i32 0 }, %struct.reg_default { i32 9237, i32 2048 }, %struct.reg_default { i32 9238, i32 63 }, %struct.reg_default { i32 9239, i32 35800 }, %struct.reg_default { i32 9240, i32 50 }, %struct.reg_default { i32 9241, i32 62765 }, %struct.reg_default { i32 9242, i32 101 }, %struct.reg_default { i32 9243, i32 44172 }, %struct.reg_default { i32 9244, i32 107 }, %struct.reg_default { i32 9245, i32 57479 }, %struct.reg_default { i32 9246, i32 114 }, %struct.reg_default { i32 9247, i32 5251 }, %struct.reg_default { i32 9248, i32 114 }, %struct.reg_default { i32 9249, i32 5251 }, %struct.reg_default { i32 9250, i32 67 }, %struct.reg_default { i32 9251, i32 13605 }, %struct.reg_default { i32 9252, i32 6 }, %struct.reg_default { i32 9253, i32 27210 }, %struct.reg_default { i32 9254, i32 67 }, %struct.reg_default { i32 9255, i32 24697 }, %struct.reg_default { i32 9256, i32 12 }, %struct.reg_default { i32 9257, i32 52429 }, %struct.reg_default { i32 9258, i32 0 }, %struct.reg_default { i32 9259, i32 2048 }, %struct.reg_default { i32 9260, i32 90 }, %struct.reg_default { i32 9261, i32 32506 }, %struct.reg_default { i32 9262, i32 90 }, %struct.reg_default { i32 9263, i32 32506 }, %struct.reg_default { i32 9728, i32 167 }, %struct.reg_default { i32 9729, i32 3356 }, %struct.reg_default { i32 9730, i32 131 }, %struct.reg_default { i32 9731, i32 39085 }, %struct.reg_default { i32 9734, i32 8 }, %struct.reg_default { i32 9735, i32 59298 }, %struct.reg_default { i32 9738, i32 85 }, %struct.reg_default { i32 9739, i32 35915 }], align 4
@wm8958_regmap_config = dso_local global %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr null, ptr @wm8958_readable_register, ptr @wm8958_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 12799, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8958_defaults, i32 293, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@__kstrtab_wm8958_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8958_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8958_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8958_regmap_config to i32), ptr @__kstrtab_wm8958_regmap_config, ptr @__kstrtabns_wm8958_regmap_config }, section "___ksymtab+wm8958_regmap_config", align 4
@wm8994_base_regmap_config = dso_local global %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@__kstrtab_wm8994_base_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8994_base_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8994_base_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8994_base_regmap_config to i32), ptr @__kstrtab_wm8994_base_regmap_config, ptr @__kstrtabns_wm8994_base_regmap_config }, section "___ksymtab+wm8994_base_regmap_config", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_wm1811_regmap_config, ptr @__ksymtab_wm8958_regmap_config, ptr @__ksymtab_wm8994_base_regmap_config, ptr @__ksymtab_wm8994_regmap_config], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm1811_readable_register(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  switch i32 %1, label %3 [
    i32 0, label %4
    i32 1, label %4
    i32 2, label %4
    i32 3, label %4
    i32 4, label %4
    i32 5, label %4
    i32 6, label %4
    i32 21, label %4
    i32 24, label %4
    i32 25, label %4
    i32 26, label %4
    i32 27, label %4
    i32 28, label %4
    i32 29, label %4
    i32 30, label %4
    i32 31, label %4
    i32 32, label %4
    i32 33, label %4
    i32 34, label %4
    i32 35, label %4
    i32 36, label %4
    i32 37, label %4
    i32 38, label %4
    i32 39, label %4
    i32 40, label %4
    i32 41, label %4
    i32 42, label %4
    i32 43, label %4
    i32 44, label %4
    i32 45, label %4
    i32 46, label %4
    i32 47, label %4
    i32 48, label %4
    i32 49, label %4
    i32 50, label %4
    i32 51, label %4
    i32 52, label %4
    i32 53, label %4
    i32 54, label %4
    i32 55, label %4
    i32 56, label %4
    i32 57, label %4
    i32 59, label %4
    i32 60, label %4
    i32 61, label %4
    i32 62, label %4
    i32 76, label %4
    i32 77, label %4
    i32 81, label %4
    i32 84, label %4
    i32 85, label %4
    i32 88, label %4
    i32 87, label %4
    i32 89, label %4
    i32 96, label %4
    i32 208, label %4
    i32 209, label %4
    i32 210, label %4
    i32 256, label %4
    i32 257, label %4
    i32 512, label %4
    i32 513, label %4
    i32 516, label %4
    i32 517, label %4
    i32 520, label %4
    i32 521, label %4
    i32 528, label %4
    i32 529, label %4
    i32 530, label %4
    i32 544, label %4
    i32 545, label %4
    i32 546, label %4
    i32 547, label %4
    i32 548, label %4
    i32 550, label %4
    i32 551, label %4
    i32 576, label %4
    i32 577, label %4
    i32 578, label %4
    i32 579, label %4
    i32 580, label %4
    i32 582, label %4
    i32 583, label %4
    i32 768, label %4
    i32 769, label %4
    i32 770, label %4
    i32 771, label %4
    i32 772, label %4
    i32 773, label %4
    i32 774, label %4
    i32 775, label %4
    i32 784, label %4
    i32 785, label %4
    i32 786, label %4
    i32 787, label %4
    i32 788, label %4
    i32 789, label %4
    i32 790, label %4
    i32 791, label %4
    i32 792, label %4
    i32 800, label %4
    i32 801, label %4
    i32 802, label %4
    i32 803, label %4
    i32 1024, label %4
    i32 1025, label %4
    i32 1026, label %4
    i32 1027, label %4
    i32 1040, label %4
    i32 1041, label %4
    i32 1056, label %4
    i32 1057, label %4
    i32 1058, label %4
    i32 1059, label %4
    i32 1072, label %4
    i32 1073, label %4
    i32 1088, label %4
    i32 1089, label %4
    i32 1090, label %4
    i32 1091, label %4
    i32 1092, label %4
    i32 1104, label %4
    i32 1105, label %4
    i32 1106, label %4
    i32 1107, label %4
    i32 1108, label %4
    i32 1152, label %4
    i32 1153, label %4
    i32 1154, label %4
    i32 1155, label %4
    i32 1156, label %4
    i32 1157, label %4
    i32 1158, label %4
    i32 1159, label %4
    i32 1160, label %4
    i32 1161, label %4
    i32 1162, label %4
    i32 1163, label %4
    i32 1164, label %4
    i32 1165, label %4
    i32 1166, label %4
    i32 1167, label %4
    i32 1168, label %4
    i32 1169, label %4
    i32 1170, label %4
    i32 1171, label %4
    i32 1172, label %4
    i32 1184, label %4
    i32 1185, label %4
    i32 1186, label %4
    i32 1187, label %4
    i32 1188, label %4
    i32 1189, label %4
    i32 1190, label %4
    i32 1191, label %4
    i32 1192, label %4
    i32 1193, label %4
    i32 1194, label %4
    i32 1195, label %4
    i32 1196, label %4
    i32 1197, label %4
    i32 1198, label %4
    i32 1199, label %4
    i32 1200, label %4
    i32 1201, label %4
    i32 1202, label %4
    i32 1203, label %4
    i32 1204, label %4
    i32 1280, label %4
    i32 1281, label %4
    i32 1282, label %4
    i32 1283, label %4
    i32 1296, label %4
    i32 1312, label %4
    i32 1313, label %4
    i32 1328, label %4
    i32 1344, label %4
    i32 1345, label %4
    i32 1346, label %4
    i32 1347, label %4
    i32 1348, label %4
    i32 1408, label %4
    i32 1409, label %4
    i32 1410, label %4
    i32 1411, label %4
    i32 1412, label %4
    i32 1413, label %4
    i32 1414, label %4
    i32 1415, label %4
    i32 1416, label %4
    i32 1417, label %4
    i32 1418, label %4
    i32 1419, label %4
    i32 1420, label %4
    i32 1421, label %4
    i32 1422, label %4
    i32 1423, label %4
    i32 1424, label %4
    i32 1425, label %4
    i32 1426, label %4
    i32 1427, label %4
    i32 1428, label %4
    i32 1536, label %4
    i32 1537, label %4
    i32 1538, label %4
    i32 1539, label %4
    i32 1540, label %4
    i32 1541, label %4
    i32 1542, label %4
    i32 1543, label %4
    i32 1544, label %4
    i32 1545, label %4
    i32 1552, label %4
    i32 1553, label %4
    i32 1554, label %4
    i32 1555, label %4
    i32 1556, label %4
    i32 1568, label %4
    i32 1569, label %4
    i32 1792, label %4
    i32 1793, label %4
    i32 1794, label %4
    i32 1795, label %4
    i32 1796, label %4
    i32 1797, label %4
    i32 1799, label %4
    i32 1800, label %4
    i32 1801, label %4
    i32 1802, label %4
    i32 1824, label %4
    i32 1825, label %4
    i32 1840, label %4
    i32 1841, label %4
    i32 1842, label %4
    i32 1848, label %4
    i32 1849, label %4
    i32 1856, label %4
    i32 1864, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm1811_volatile_register(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  switch i32 %1, label %13 [
    i32 1797, label %5
    i32 0, label %14
    i32 84, label %14
    i32 88, label %14
    i32 530, label %14
    i32 210, label %14
    i32 89, label %14
    i32 1840, label %14
    i32 1841, label %14
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wm8994, ptr %4, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.wm8994, ptr %4, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 1
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %9, %5, %2, %2, %2, %2, %2, %2, %2, %2
  %15 = phi i1 [ true, %5 ], [ %12, %9 ], [ false, %13 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8994_readable_register(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  switch i32 %1, label %3 [
    i32 88, label %5
    i32 58, label %5
    i32 272, label %5
    i32 273, label %5
    i32 1028, label %5
    i32 1029, label %5
    i32 1030, label %5
    i32 1031, label %5
    i32 1041, label %5
    i32 1058, label %5
    i32 1059, label %5
    i32 1073, label %5
    i32 1104, label %5
    i32 1105, label %5
    i32 1106, label %5
    i32 1107, label %5
    i32 1108, label %5
    i32 1184, label %5
    i32 1185, label %5
    i32 1186, label %5
    i32 1187, label %5
    i32 1188, label %5
    i32 1189, label %5
    i32 1190, label %5
    i32 1191, label %5
    i32 1192, label %5
    i32 1193, label %5
    i32 1194, label %5
    i32 1195, label %5
    i32 1196, label %5
    i32 1197, label %5
    i32 1198, label %5
    i32 1199, label %5
    i32 1200, label %5
    i32 1201, label %5
    i32 1202, label %5
    i32 1203, label %5
    i32 1204, label %5
    i32 1539, label %5
    i32 1540, label %5
    i32 1541, label %5
    i32 1544, label %5
    i32 1545, label %5
    i32 1554, label %5
    i32 1555, label %5
  ]

3:                                                ; preds = %2
  %4 = tail call zeroext i1 @wm1811_readable_register(ptr noundef %0, i32 noundef %1)
  br label %5

5:                                                ; preds = %3, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %6 = phi i1 [ %4, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8994_volatile_register(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  switch i32 %1, label %3 [
    i32 0, label %4
    i32 84, label %4
    i32 88, label %4
    i32 530, label %4
    i32 210, label %4
    i32 89, label %4
    i32 1840, label %4
    i32 1841, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8958_readable_register(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  switch i32 %1, label %3 [
    i32 2304, label %5
    i32 2305, label %5
    i32 2560, label %5
    i32 2561, label %5
    i32 2562, label %5
    i32 2563, label %5
    i32 2564, label %5
    i32 2565, label %5
    i32 2566, label %5
    i32 2567, label %5
    i32 2568, label %5
    i32 2569, label %5
    i32 2570, label %5
    i32 2571, label %5
    i32 2572, label %5
    i32 2573, label %5
    i32 2574, label %5
    i32 2575, label %5
    i32 2576, label %5
    i32 2577, label %5
    i32 2578, label %5
    i32 2579, label %5
    i32 2580, label %5
    i32 2581, label %5
    i32 2582, label %5
    i32 2583, label %5
    i32 2584, label %5
    i32 2585, label %5
    i32 2586, label %5
    i32 2587, label %5
    i32 2588, label %5
    i32 2589, label %5
    i32 2590, label %5
    i32 2591, label %5
    i32 2592, label %5
    i32 8192, label %5
    i32 8193, label %5
    i32 8194, label %5
    i32 8195, label %5
    i32 8196, label %5
    i32 8197, label %5
    i32 8198, label %5
    i32 8199, label %5
    i32 8200, label %5
    i32 8201, label %5
    i32 9216, label %5
    i32 9217, label %5
    i32 9218, label %5
    i32 9219, label %5
    i32 9220, label %5
    i32 9221, label %5
    i32 9222, label %5
    i32 9223, label %5
    i32 9224, label %5
    i32 9225, label %5
    i32 9226, label %5
    i32 9227, label %5
    i32 9228, label %5
    i32 9229, label %5
    i32 9230, label %5
    i32 9231, label %5
    i32 9232, label %5
    i32 9233, label %5
    i32 9234, label %5
    i32 9235, label %5
    i32 9236, label %5
    i32 9237, label %5
    i32 9238, label %5
    i32 9239, label %5
    i32 9240, label %5
    i32 9241, label %5
    i32 9242, label %5
    i32 9243, label %5
    i32 9244, label %5
    i32 9245, label %5
    i32 9246, label %5
    i32 9247, label %5
    i32 9248, label %5
    i32 9249, label %5
    i32 9250, label %5
    i32 9251, label %5
    i32 9252, label %5
    i32 9253, label %5
    i32 9254, label %5
    i32 9255, label %5
    i32 9256, label %5
    i32 9257, label %5
    i32 9258, label %5
    i32 9259, label %5
    i32 9260, label %5
    i32 9261, label %5
    i32 9262, label %5
    i32 9263, label %5
    i32 9728, label %5
    i32 9729, label %5
    i32 9730, label %5
    i32 9731, label %5
    i32 9734, label %5
    i32 9735, label %5
    i32 9738, label %5
    i32 9739, label %5
  ]

3:                                                ; preds = %2
  %4 = tail call zeroext i1 @wm8994_readable_register(ptr noundef %0, i32 noundef %1)
  br label %5

5:                                                ; preds = %3, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %6 = phi i1 [ %4, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8958_volatile_register(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  switch i32 %1, label %3 [
    i32 2560, label %4
    i32 2561, label %4
    i32 2562, label %4
    i32 2563, label %4
    i32 2564, label %4
    i32 2565, label %4
    i32 2573, label %4
    i32 2589, label %4
    i32 2590, label %4
    i32 2591, label %4
    i32 2592, label %4
    i32 8192, label %4
    i32 8193, label %4
    i32 8194, label %4
    i32 8195, label %4
    i32 8196, label %4
    i32 8197, label %4
    i32 8198, label %4
    i32 8199, label %4
    i32 8200, label %4
    i32 8201, label %4
    i32 0, label %4
    i32 84, label %4
    i32 88, label %4
    i32 530, label %4
    i32 210, label %4
    i32 89, label %4
    i32 1840, label %4
    i32 1841, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %5 = phi i1 [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
