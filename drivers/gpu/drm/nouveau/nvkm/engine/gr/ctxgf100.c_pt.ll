; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_init = type { i32, i8, i32, i32 }
%struct.gf100_gr_pack = type { ptr, i32 }
%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gf100_grctx = type { ptr, ptr, ptr, i32, [4 x i64], i64 }
%struct.gf100_gr_data = type { i32, i32, i8 }
%struct.gf100_gr = type { ptr, %struct.nvkm_gr, %struct.anon.125, %struct.anon.131, i8, ptr, ptr, ptr, ptr, [16 x %struct.gf100_gr_zbc_color], [16 x %struct.gf100_gr_zbc_depth], [16 x %struct.gf100_gr_zbc_stencil], i8, i8, [32 x i8], i8, i8, [32 x i8], [32 x i8], [32 x [4 x i8]], [32 x [4 x i8]], i8, i8, i8, [256 x i8], [256 x %struct.anon.132], i8, [4 x %struct.gf100_gr_data], [512 x %struct.gf100_gr_mmio], i32, ptr, i32, i32 }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.122 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.anon.122 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.125 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob, %struct.mutex, i32 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.129, %struct.anon.130, %struct.nvkm_engine }
%struct.anon.129 = type { i32, ptr, i32, i8 }
%struct.anon.130 = type { i32, ptr, i32, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.131 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob }
%struct.gf100_gr_zbc_color = type { i32, [4 x i32], [4 x i32] }
%struct.gf100_gr_zbc_depth = type { i32, i32, i32 }
%struct.gf100_gr_zbc_stencil = type { i32, i32, i32 }
%struct.anon.132 = type { i8, i8 }
%struct.gf100_gr_mmio = type { i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.gf100_gr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.0 = type { ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.rb_root = type { ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }

@gf100_grctx_init_icmd_0 = internal constant [234 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4096, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 169, i8 1, i32 1, i32 65535 }, %struct.gf100_gr_init { i32 56, i8 1, i32 1, i32 262957185 }, %struct.gf100_gr_init { i32 61, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 232, i8 8, i32 1, i32 1024 }, %struct.gf100_gr_init { i32 120, i8 8, i32 1, i32 768 }, %struct.gf100_gr_init { i32 80, i8 1, i32 1, i32 17 }, %struct.gf100_gr_init { i32 88, i8 8, i32 1, i32 8 }, %struct.gf100_gr_init { i32 520, i8 8, i32 1, i32 1 }, %struct.gf100_gr_init { i32 129, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 133, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 136, i8 1, i32 1, i32 1024 }, %struct.gf100_gr_init { i32 144, i8 1, i32 1, i32 768 }, %struct.gf100_gr_init { i32 152, i8 1, i32 1, i32 4097 }, %struct.gf100_gr_init { i32 227, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 218, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 248, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 250, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 159, i8 4, i32 1, i32 65535 }, %struct.gf100_gr_init { i32 177, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 178, i8 40, i32 1, i32 0 }, %struct.gf100_gr_init { i32 528, i8 8, i32 1, i32 64 }, %struct.gf100_gr_init { i32 536, i8 8, i32 1, i32 49280 }, %struct.gf100_gr_init { i32 173, i8 1, i32 1, i32 318 }, %struct.gf100_gr_init { i32 225, i8 1, i32 1, i32 16 }, %struct.gf100_gr_init { i32 656, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 944, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 672, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1056, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 688, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1072, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 704, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1232, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1824, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2240, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2192, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2272, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2208, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2288, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2380, i8 1, i32 1, i32 255 }, %struct.gf100_gr_init { i32 2381, i8 1, i32 1, i32 -1 }, %struct.gf100_gr_init { i32 2382, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 748, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 771, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 742, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1126, i8 1, i32 1, i32 82 }, %struct.gf100_gr_init { i32 769, i8 1, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 772, i8 1, i32 1, i32 807407616 }, %struct.gf100_gr_init { i32 773, i8 1, i32 1, i32 1885360192 }, %struct.gf100_gr_init { i32 774, i8 1, i32 1, i32 -1196910456 }, %struct.gf100_gr_init { i32 775, i8 1, i32 1, i32 -118957880 }, %struct.gf100_gr_init { i32 778, i8 1, i32 1, i32 16776960 }, %struct.gf100_gr_init { i32 779, i8 1, i32 1, i32 26 }, %struct.gf100_gr_init { i32 780, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 792, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 832, i8 1, i32 1, i32 0 }, %struct.gf100_gr_init { i32 885, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 849, i8 1, i32 1, i32 256 }, %struct.gf100_gr_init { i32 893, i8 1, i32 1, i32 6 }, %struct.gf100_gr_init { i32 928, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 938, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 937, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 896, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 864, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 870, i8 2, i32 1, i32 0 }, %struct.gf100_gr_init { i32 872, i8 1, i32 1, i32 8191 }, %struct.gf100_gr_init { i32 880, i8 2, i32 1, i32 0 }, %struct.gf100_gr_init { i32 882, i8 1, i32 1, i32 4194303 }, %struct.gf100_gr_init { i32 890, i8 1, i32 1, i32 18 }, %struct.gf100_gr_init { i32 1504, i8 5, i32 1, i32 34 }, %struct.gf100_gr_init { i32 1561, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2065, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2066, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 2067, i8 1, i32 1, i32 6 }, %struct.gf100_gr_init { i32 2068, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 2069, i8 1, i32 1, i32 11 }, %struct.gf100_gr_init { i32 2048, i8 6, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1586, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1587, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1588, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 1589, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 1620, i8 1, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 1623, i8 1, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 1621, i8 2, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 1741, i8 1, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 2037, i8 1, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 2012, i8 1, i32 1, i32 958994697 }, %struct.gf100_gr_init { i32 2013, i8 1, i32 1, i32 2036947273 }, %struct.gf100_gr_init { i32 2014, i8 1, i32 1, i32 -1180067447 }, %struct.gf100_gr_init { i32 2015, i8 1, i32 1, i32 -102114871 }, %struct.gf100_gr_init { i32 2024, i8 1, i32 1, i32 12816 }, %struct.gf100_gr_init { i32 2025, i8 1, i32 1, i32 30292 }, %struct.gf100_gr_init { i32 2026, i8 1, i32 1, i32 152 }, %struct.gf100_gr_init { i32 2028, i8 1, i32 1, i32 958994697 }, %struct.gf100_gr_init { i32 2029, i8 1, i32 1, i32 2036947273 }, %struct.gf100_gr_init { i32 2030, i8 1, i32 1, i32 -1180067447 }, %struct.gf100_gr_init { i32 2031, i8 1, i32 1, i32 -102114871 }, %struct.gf100_gr_init { i32 2032, i8 1, i32 1, i32 12816 }, %struct.gf100_gr_init { i32 2033, i8 1, i32 1, i32 30292 }, %struct.gf100_gr_init { i32 2034, i8 1, i32 1, i32 152 }, %struct.gf100_gr_init { i32 1445, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2432, i8 -128, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1128, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 1132, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1136, i8 96, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1296, i8 16, i32 1, i32 1065353216 }, %struct.gf100_gr_init { i32 1312, i8 1, i32 1, i32 694 }, %struct.gf100_gr_init { i32 1321, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1328, i8 16, i32 1, i32 -65536 }, %struct.gf100_gr_init { i32 1413, i8 1, i32 1, i32 63 }, %struct.gf100_gr_init { i32 1398, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 1414, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 1410, i8 2, i32 1, i32 128 }, %struct.gf100_gr_init { i32 1474, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1592, i8 2, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1594, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1595, i8 2, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1597, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1598, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2232, i8 8, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2304, i8 8, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2312, i8 8, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2320, i8 16, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2336, i8 8, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2344, i8 8, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1608, i8 9, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1624, i8 1, i32 1, i32 15 }, %struct.gf100_gr_init { i32 2047, i8 1, i32 1, i32 10 }, %struct.gf100_gr_init { i32 1642, i8 1, i32 1, i32 1073741824 }, %struct.gf100_gr_init { i32 1643, i8 1, i32 1, i32 268435456 }, %struct.gf100_gr_init { i32 1644, i8 2, i32 1, i32 -65536 }, %struct.gf100_gr_init { i32 1967, i8 2, i32 1, i32 8 }, %struct.gf100_gr_init { i32 2038, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1714, i8 1, i32 1, i32 85 }, %struct.gf100_gr_init { i32 1965, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2359, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2417, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 2418, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 2419, i8 1, i32 1, i32 300 }, %struct.gf100_gr_init { i32 2428, i8 1, i32 1, i32 64 }, %struct.gf100_gr_init { i32 2425, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2421, i8 1, i32 1, i32 32 }, %struct.gf100_gr_init { i32 2422, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2423, i8 1, i32 1, i32 32 }, %struct.gf100_gr_init { i32 2424, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2391, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2398, i8 1, i32 1, i32 538329104 }, %struct.gf100_gr_init { i32 2399, i8 1, i32 1, i32 32 }, %struct.gf100_gr_init { i32 1667, i8 1, i32 1, i32 6 }, %struct.gf100_gr_init { i32 1669, i8 1, i32 1, i32 4194303 }, %struct.gf100_gr_init { i32 1671, i8 1, i32 1, i32 3144 }, %struct.gf100_gr_init { i32 1696, i8 1, i32 1, i32 5 }, %struct.gf100_gr_init { i32 2112, i8 1, i32 1, i32 3145736 }, %struct.gf100_gr_init { i32 2113, i8 1, i32 1, i32 67108992 }, %struct.gf100_gr_init { i32 2114, i8 1, i32 1, i32 3145736 }, %struct.gf100_gr_init { i32 2115, i8 1, i32 1, i32 67108992 }, %struct.gf100_gr_init { i32 2072, i8 8, i32 1, i32 0 }, %struct.gf100_gr_init { i32 2120, i8 16, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1848, i8 1, i32 1, i32 0 }, %struct.gf100_gr_init { i32 1706, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1707, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1708, i8 1, i32 1, i32 128 }, %struct.gf100_gr_init { i32 1709, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 1713, i8 1, i32 1, i32 17 }, %struct.gf100_gr_init { i32 1723, i8 1, i32 1, i32 207 }, %struct.gf100_gr_init { i32 1742, i8 1, i32 1, i32 712057992 }, %struct.gf100_gr_init { i32 1849, i8 1, i32 1, i32 1082507264 }, %struct.gf100_gr_init { i32 1850, i8 1, i32 1, i32 128 }, %struct.gf100_gr_init { i32 1926, i8 1, i32 1, i32 -2147483392 }, %struct.gf100_gr_init { i32 1852, i8 1, i32 1, i32 65792 }, %struct.gf100_gr_init { i32 1853, i8 1, i32 1, i32 41943040 }, %struct.gf100_gr_init { i32 1927, i8 1, i32 1, i32 207 }, %struct.gf100_gr_init { i32 1932, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 1938, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1940, i8 3, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1943, i8 1, i32 1, i32 207 }, %struct.gf100_gr_init { i32 2102, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1946, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2099, i8 1, i32 1, i32 71582848 }, %struct.gf100_gr_init { i32 1953, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1955, i8 3, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2097, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 2060, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2061, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 2063, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2083, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2084, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 2086, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2397, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2091, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 2370, i8 1, i32 1, i32 65537 }, %struct.gf100_gr_init { i32 2371, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2372, i8 1, i32 1, i32 34 }, %struct.gf100_gr_init { i32 1989, i8 1, i32 1, i32 65537 }, %struct.gf100_gr_init { i32 2100, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1991, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 49584, i8 8, i32 1, i32 15 }, %struct.gf100_gr_init { i32 49592, i8 1, i32 1, i32 262957185 }, %struct.gf100_gr_init { i32 49593, i8 1, i32 1, i32 16434824 }, %struct.gf100_gr_init { i32 123136, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 4096, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 1706, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1709, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 1713, i8 1, i32 1, i32 17 }, %struct.gf100_gr_init { i32 1932, i8 1, i32 1, i32 8 }, %struct.gf100_gr_init { i32 1938, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1940, i8 3, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1943, i8 1, i32 1, i32 207 }, %struct.gf100_gr_init { i32 1946, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2099, i8 1, i32 1, i32 71582848 }, %struct.gf100_gr_init { i32 1953, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1955, i8 3, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2097, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 123136, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 4096, i8 1, i32 1, i32 20 }, %struct.gf100_gr_init { i32 849, i8 1, i32 1, i32 256 }, %struct.gf100_gr_init { i32 2391, i8 1, i32 1, i32 3 }, %struct.gf100_gr_init { i32 2397, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2091, i8 1, i32 1, i32 4 }, %struct.gf100_gr_init { i32 2370, i8 1, i32 1, i32 65537 }, %struct.gf100_gr_init { i32 2371, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1989, i8 1, i32 1, i32 65537 }, %struct.gf100_gr_init { i32 2100, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 1991, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 123136, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 4096, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2060, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2061, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 2063, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 2083, i8 1, i32 1, i32 2 }, %struct.gf100_gr_init { i32 2084, i8 2, i32 1, i32 256 }, %struct.gf100_gr_init { i32 2086, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init { i32 123136, i8 1, i32 1, i32 1 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_pack_icmd = dso_local constant [2 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_grctx_init_icmd_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], align 4
@gf100_grctx_init_902d_0 = dso_local constant [15 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 512, i8 1, i32 4, i32 207 }, %struct.gf100_gr_init { i32 516, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 520, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 524, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 528, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 532, i8 1, i32 4, i32 128 }, %struct.gf100_gr_init { i32 536, i8 2, i32 4, i32 256 }, %struct.gf100_gr_init { i32 544, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 560, i8 1, i32 4, i32 207 }, %struct.gf100_gr_init { i32 564, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 568, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 572, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 580, i8 1, i32 4, i32 128 }, %struct.gf100_gr_init { i32 584, i8 2, i32 4, i32 256 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_9039_0 = dso_local constant [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 780, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 800, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 568, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 792, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_90c0_0 = dso_local constant [14 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 9996, i8 8, i32 32, i32 0 }, %struct.gf100_gr_init { i32 780, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 6468, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1880, i8 1, i32 4, i32 256 }, %struct.gf100_gr_init { i32 708, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1936, i8 5, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1916, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 516, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 532, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 588, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3476, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5640, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5732, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_9097_0 = internal constant [299 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 2048, i8 8, i32 64, i32 0 }, %struct.gf100_gr_init { i32 2052, i8 8, i32 64, i32 0 }, %struct.gf100_gr_init { i32 2056, i8 8, i32 64, i32 1024 }, %struct.gf100_gr_init { i32 2060, i8 8, i32 64, i32 768 }, %struct.gf100_gr_init { i32 2064, i8 1, i32 4, i32 207 }, %struct.gf100_gr_init { i32 2128, i8 7, i32 64, i32 0 }, %struct.gf100_gr_init { i32 2068, i8 8, i32 64, i32 64 }, %struct.gf100_gr_init { i32 2072, i8 8, i32 64, i32 1 }, %struct.gf100_gr_init { i32 2076, i8 8, i32 64, i32 0 }, %struct.gf100_gr_init { i32 2080, i8 8, i32 64, i32 0 }, %struct.gf100_gr_init { i32 9984, i8 8, i32 32, i32 0 }, %struct.gf100_gr_init { i32 9988, i8 8, i32 32, i32 0 }, %struct.gf100_gr_init { i32 9992, i8 8, i32 32, i32 0 }, %struct.gf100_gr_init { i32 9996, i8 8, i32 32, i32 0 }, %struct.gf100_gr_init { i32 10000, i8 8, i32 32, i32 81920 }, %struct.gf100_gr_init { i32 10004, i8 8, i32 32, i32 64 }, %struct.gf100_gr_init { i32 7168, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7172, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7176, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7180, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7424, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7428, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7432, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7436, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 7936, i8 16, i32 8, i32 0 }, %struct.gf100_gr_init { i32 7940, i8 16, i32 8, i32 0 }, %struct.gf100_gr_init { i32 8064, i8 16, i32 8, i32 0 }, %struct.gf100_gr_init { i32 8068, i8 16, i32 8, i32 0 }, %struct.gf100_gr_init { i32 8704, i8 5, i32 16, i32 34 }, %struct.gf100_gr_init { i32 8192, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 8256, i8 1, i32 4, i32 17 }, %struct.gf100_gr_init { i32 8320, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 8384, i8 1, i32 4, i32 48 }, %struct.gf100_gr_init { i32 8448, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 8512, i8 1, i32 4, i32 81 }, %struct.gf100_gr_init { i32 8204, i8 6, i32 64, i32 1 }, %struct.gf100_gr_init { i32 8208, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 8272, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 8336, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 8400, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 8464, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 8528, i8 1, i32 4, i32 4 }, %struct.gf100_gr_init { i32 896, i8 4, i32 32, i32 0 }, %struct.gf100_gr_init { i32 900, i8 4, i32 32, i32 0 }, %struct.gf100_gr_init { i32 904, i8 4, i32 32, i32 0 }, %struct.gf100_gr_init { i32 908, i8 4, i32 32, i32 0 }, %struct.gf100_gr_init { i32 1792, i8 4, i32 16, i32 0 }, %struct.gf100_gr_init { i32 1796, i8 4, i32 16, i32 0 }, %struct.gf100_gr_init { i32 1800, i8 4, i32 16, i32 0 }, %struct.gf100_gr_init { i32 10240, i8 -128, i32 4, i32 0 }, %struct.gf100_gr_init { i32 2560, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 2564, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 2568, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 2572, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 2576, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 2580, i8 16, i32 32, i32 0 }, %struct.gf100_gr_init { i32 3072, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 3076, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 3080, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 3084, i8 16, i32 16, i32 1065353216 }, %struct.gf100_gr_init { i32 3328, i8 8, i32 8, i32 -65536 }, %struct.gf100_gr_init { i32 3332, i8 8, i32 8, i32 -65536 }, %struct.gf100_gr_init { i32 3584, i8 16, i32 16, i32 0 }, %struct.gf100_gr_init { i32 3588, i8 16, i32 16, i32 -65536 }, %struct.gf100_gr_init { i32 3592, i8 16, i32 16, i32 -65536 }, %struct.gf100_gr_init { i32 3392, i8 4, i32 8, i32 0 }, %struct.gf100_gr_init { i32 3396, i8 4, i32 8, i32 0 }, %struct.gf100_gr_init { i32 7680, i8 8, i32 32, i32 1 }, %struct.gf100_gr_init { i32 7684, i8 8, i32 32, i32 1 }, %struct.gf100_gr_init { i32 7688, i8 8, i32 32, i32 2 }, %struct.gf100_gr_init { i32 7692, i8 8, i32 32, i32 1 }, %struct.gf100_gr_init { i32 7696, i8 8, i32 32, i32 1 }, %struct.gf100_gr_init { i32 7700, i8 8, i32 32, i32 2 }, %struct.gf100_gr_init { i32 7704, i8 8, i32 32, i32 1 }, %struct.gf100_gr_init { i32 13312, i8 -128, i32 4, i32 0 }, %struct.gf100_gr_init { i32 780, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 6468, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5396, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3432, i8 1, i32 4, i32 65535 }, %struct.gf100_gr_init { i32 4636, i8 1, i32 4, i32 262957185 }, %struct.gf100_gr_init { i32 4012, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5432, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4064, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4072, i8 1, i32 4, i32 20 }, %struct.gf100_gr_init { i32 4076, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 4080, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6044, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4648, i8 1, i32 4, i32 1024 }, %struct.gf100_gr_init { i32 4652, i8 1, i32 4, i32 768 }, %struct.gf100_gr_init { i32 4656, i8 1, i32 4, i32 65537 }, %struct.gf100_gr_init { i32 2040, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5556, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5580, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5428, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4016, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5584, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5436, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5812, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 4028, i8 4, i32 4, i32 65535 }, %struct.gf100_gr_init { i32 3576, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6472, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6512, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5660, i8 1, i32 4, i32 2544 }, %struct.gf100_gr_init { i32 3532, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 5692, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5604, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4448, i8 32, i32 4, i32 635437120 }, %struct.gf100_gr_init { i32 6272, i8 32, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3972, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6088, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6096, i8 1, i32 4, i32 255 }, %struct.gf100_gr_init { i32 6100, i8 1, i32 4, i32 -1 }, %struct.gf100_gr_init { i32 6104, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 6108, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5620, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5172, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3444, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3564, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5028, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4888, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5700, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1864, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3560, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5704, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4772, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4384, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4376, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5708, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5720, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6416, i8 1, i32 4, i32 656 }, %struct.gf100_gr_init { i32 5400, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5724, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5408, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5636, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5488, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5040, i8 2, i32 4, i32 1065353216 }, %struct.gf100_gr_init { i32 524, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5744, i8 1, i32 4, i32 807407616 }, %struct.gf100_gr_init { i32 5748, i8 1, i32 4, i32 1885360192 }, %struct.gf100_gr_init { i32 5752, i8 1, i32 4, i32 -1196910456 }, %struct.gf100_gr_init { i32 5756, i8 1, i32 4, i32 -118957880 }, %struct.gf100_gr_init { i32 5740, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5760, i8 1, i32 4, i32 16776960 }, %struct.gf100_gr_init { i32 4816, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 4820, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 5764, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3500, i8 2, i32 4, i32 6914 }, %struct.gf100_gr_init { i32 3508, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5772, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5564, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5484, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6268, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4368, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 3520, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4660, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5776, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4780, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 708, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1936, i8 5, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1916, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4096, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 4348, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4752, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 536, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 4824, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4828, i8 1, i32 4, i32 16 }, %struct.gf100_gr_init { i32 3476, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5468, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5476, i8 1, i32 4, i32 8191 }, %struct.gf100_gr_init { i32 5492, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5500, i8 1, i32 4, i32 4194303 }, %struct.gf100_gr_init { i32 4948, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5732, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5648, i8 1, i32 4, i32 18 }, %struct.gf100_gr_init { i32 5640, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5676, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 528, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 800, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 804, i8 6, i32 4, i32 1065353216 }, %struct.gf100_gr_init { i32 1872, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1888, i8 1, i32 4, i32 958994697 }, %struct.gf100_gr_init { i32 1892, i8 1, i32 4, i32 2036947273 }, %struct.gf100_gr_init { i32 1896, i8 1, i32 4, i32 -1180067447 }, %struct.gf100_gr_init { i32 1900, i8 1, i32 4, i32 -102114871 }, %struct.gf100_gr_init { i32 1904, i8 1, i32 4, i32 807407616 }, %struct.gf100_gr_init { i32 1908, i8 1, i32 4, i32 1885360192 }, %struct.gf100_gr_init { i32 1912, i8 1, i32 4, i32 36992 }, %struct.gf100_gr_init { i32 1920, i8 1, i32 4, i32 958994697 }, %struct.gf100_gr_init { i32 1924, i8 1, i32 4, i32 2036947273 }, %struct.gf100_gr_init { i32 1928, i8 1, i32 4, i32 -1180067447 }, %struct.gf100_gr_init { i32 1932, i8 1, i32 4, i32 -102114871 }, %struct.gf100_gr_init { i32 2000, i8 1, i32 4, i32 807407616 }, %struct.gf100_gr_init { i32 2004, i8 1, i32 4, i32 1885360192 }, %struct.gf100_gr_init { i32 2008, i8 1, i32 4, i32 36992 }, %struct.gf100_gr_init { i32 892, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 1856, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 9728, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6424, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6428, i8 1, i32 4, i32 2304 }, %struct.gf100_gr_init { i32 6432, i8 1, i32 4, i32 1029 }, %struct.gf100_gr_init { i32 4872, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 6436, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5036, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6444, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 6460, i8 1, i32 4, i32 11292 }, %struct.gf100_gr_init { i32 3452, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3980, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 704, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5392, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6464, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4084, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6476, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6504, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5520, i8 1, i32 4, i32 63 }, %struct.gf100_gr_init { i32 2024, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6508, i8 1, i32 4, i32 17 }, %struct.gf100_gr_init { i32 6524, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4044, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 728, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 6528, i8 1, i32 4, i32 128 }, %struct.gf100_gr_init { i32 5380, i8 1, i32 4, i32 128 }, %struct.gf100_gr_init { i32 6532, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 768, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5032, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4844, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4880, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4884, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4992, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4996, i8 4, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5012, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5020, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5016, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5524, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5528, i8 4, i32 4, i32 1 }, %struct.gf100_gr_init { i32 3924, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6588, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3996, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4812, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4840, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4876, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4960, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4924, i8 2, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4932, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4936, i8 2, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4944, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4952, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4836, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4892, i8 4, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6592, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4416, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6596, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6600, i8 1, i32 4, i32 5376 }, %struct.gf100_gr_init { i32 4956, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3984, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6624, i8 8, i32 4, i32 1 }, %struct.gf100_gr_init { i32 6604, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5560, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6656, i8 1, i32 4, i32 4369 }, %struct.gf100_gr_init { i32 6660, i8 7, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3436, i8 2, i32 4, i32 -65536 }, %struct.gf100_gr_init { i32 4344, i8 1, i32 4, i32 4112 }, %struct.gf100_gr_init { i32 3456, i8 5, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3488, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 5384, i8 1, i32 4, i32 -2147483648 }, %struct.gf100_gr_init { i32 5388, i8 1, i32 4, i32 1073741824 }, %struct.gf100_gr_init { i32 5736, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 792, i8 2, i32 4, i32 8 }, %struct.gf100_gr_init { i32 3484, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 2012, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 1868, i8 1, i32 4, i32 85 }, %struct.gf100_gr_init { i32 5152, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 6076, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 6084, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4104, i8 1, i32 4, i32 8 }, %struct.gf100_gr_init { i32 4108, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 4112, i8 1, i32 4, i32 300 }, %struct.gf100_gr_init { i32 3424, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 1884, i8 1, i32 4, i32 3 }, %struct.gf100_gr_init { i32 4120, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 4124, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4128, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 4132, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 5188, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 864, i8 1, i32 4, i32 538329104 }, %struct.gf100_gr_init { i32 868, i8 1, i32 4, i32 32 }, %struct.gf100_gr_init { i32 872, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3556, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 516, i8 1, i32 4, i32 6 }, %struct.gf100_gr_init { i32 520, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 716, i8 1, i32 4, i32 4194303 }, %struct.gf100_gr_init { i32 720, i8 1, i32 4, i32 3144 }, %struct.gf100_gr_init { i32 4640, i8 1, i32 4, i32 5 }, %struct.gf100_gr_init { i32 4060, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 3992, i8 1, i32 4, i32 3145736 }, %struct.gf100_gr_init { i32 4740, i8 1, i32 4, i32 67108992 }, %struct.gf100_gr_init { i32 5200, i8 1, i32 4, i32 3145736 }, %struct.gf100_gr_init { i32 5204, i8 1, i32 4, i32 67108992 }, %struct.gf100_gr_init { i32 532, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_pack_mthd = dso_local constant [5 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_grctx_init_9097_0, i32 37015 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_902d_0, i32 36909 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_9039_0, i32 36921 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_90c0_0, i32 37056 }, %struct.gf100_gr_pack zeroinitializer], align 4
@gf100_grctx_init_main_0 = dso_local constant [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4194820, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_fe_0 = dso_local constant [17 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4210692, i8 11, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4210756, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4210836, i8 13, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4210888, i8 1, i32 4, i32 -268435321 }, %struct.gf100_gr_init { i32 4210896, i8 6, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4210920, i8 1, i32 4, i32 4096 }, %struct.gf100_gr_init { i32 4210936, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4210992, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4211000, i8 1, i32 4, i32 536870976 }, %struct.gf100_gr_init { i32 4211024, i8 1, i32 4, i32 46 }, %struct.gf100_gr_init { i32 4211028, i8 1, i32 4, i32 1024 }, %struct.gf100_gr_init { i32 4211032, i8 1, i32 4, i32 512 }, %struct.gf100_gr_init { i32 4211044, i8 1, i32 4, i32 85 }, %struct.gf100_gr_init { i32 4211048, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4211060, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4211200, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_pri_0 = dso_local constant [7 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4211716, i8 14, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4211808, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4211816, i8 1, i32 4, i32 16777215 }, %struct.gf100_gr_init { i32 4211820, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4211840, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4211864, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_memfmt_0 = dso_local constant [18 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4212228, i8 1, i32 4, i32 21 }, %struct.gf100_gr_init { i32 4212232, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4212236, i8 1, i32 4, i32 11776 }, %struct.gf100_gr_init { i32 4212240, i8 1, i32 4, i32 256 }, %struct.gf100_gr_init { i32 4212248, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4212280, i8 1, i32 4, i32 4 }, %struct.gf100_gr_init { i32 4212284, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4212316, i8 1, i32 4, i32 8323328 }, %struct.gf100_gr_init { i32 4212320, i8 7, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4212348, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4212352, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4212384, i8 1, i32 4, i32 8323200 }, %struct.gf100_gr_init { i32 4212388, i8 18, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4212464, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4212480, i8 13, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4212532, i8 1, i32 4, i32 256 }, %struct.gf100_gr_init { i32 4212536, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_rstr2d_0 = dso_local constant [9 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4225028, i8 1, i32 4, i32 35 }, %struct.gf100_gr_init { i32 4225036, i8 1, i32 4, i32 172066848 }, %struct.gf100_gr_init { i32 4225040, i8 1, i32 4, i32 102793446 }, %struct.gf100_gr_init { i32 4225044, i8 1, i32 4, i32 33790116 }, %struct.gf100_gr_init { i32 4225048, i8 1, i32 4, i32 241340514 }, %struct.gf100_gr_init { i32 4225052, i8 1, i32 4, i32 172066848 }, %struct.gf100_gr_init { i32 4225056, i8 1, i32 4, i32 230 }, %struct.gf100_gr_init { i32 4225212, i8 1, i32 4, i32 259 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_scc_0 = dso_local constant [7 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4227072, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4227080, i8 1, i32 4, i32 24 }, %struct.gf100_gr_init { i32 4227084, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4227092, i8 1, i32 4, i32 105 }, %struct.gf100_gr_init { i32 4227096, i8 1, i32 4, i32 -520036096 }, %struct.gf100_gr_init { i32 4227172, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_ds_0 = internal constant [8 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4216832, i8 1, i32 4, i32 125829311 }, %struct.gf100_gr_init { i32 4216880, i8 1, i32 4, i32 35127296 }, %struct.gf100_gr_init { i32 4216884, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4216916, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4216944, i8 4, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4217344, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4217368, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_pd_0 = internal constant [6 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4218912, i8 1, i32 4, i32 66497 }, %struct.gf100_gr_init { i32 4218920, i8 4, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4220072, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4220076, i8 1, i32 4, i32 16383 }, %struct.gf100_gr_init { i32 4220084, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_be_0 = internal constant [8 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4229120, i8 1, i32 4, i32 41953852 }, %struct.gf100_gr_init { i32 4229124, i8 1, i32 4, i32 64 }, %struct.gf100_gr_init { i32 4229128, i8 1, i32 4, i32 253965 }, %struct.gf100_gr_init { i32 4229376, i8 1, i32 4, i32 813742081 }, %struct.gf100_gr_init { i32 4229380, i8 1, i32 4, i32 33554433 }, %struct.gf100_gr_init { i32 4229384, i8 1, i32 4, i32 13109545 }, %struct.gf100_gr_init { i32 4229504, i8 1, i32 4, i32 285 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_pack_hub = dso_local constant [10 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_grctx_init_main_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_fe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_pri_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_memfmt_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_ds_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_pd_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_rstr2d_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_scc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_be_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], align 4
@gf100_grctx_init_gpc_unk_0 = dso_local constant [2 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4293504, i8 1, i32 4, i32 22 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_prop_0 = dso_local constant [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4293632, i8 1, i32 4, i32 939544064 }, %struct.gf100_gr_init { i32 4293636, i8 1, i32 4, i32 1910571007 }, %struct.gf100_gr_init { i32 4293640, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4293644, i8 1, i32 4, i32 4104 }, %struct.gf100_gr_init { i32 4293648, i8 1, i32 4, i32 268374015 }, %struct.gf100_gr_init { i32 4293652, i8 1, i32 4, i32 2101247 }, %struct.gf100_gr_init { i32 4293712, i8 6, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4293736, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4293740, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_gpc_unk_1 = dso_local constant [8 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294144, i8 1, i32 4, i32 31 }, %struct.gf100_gr_init { i32 4294276, i8 1, i32 4, i32 15 }, %struct.gf100_gr_init { i32 4294400, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4294404, i8 1, i32 4, i32 128 }, %struct.gf100_gr_init { i32 4294408, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294412, i8 1, i32 4, i32 130547712 }, %struct.gf100_gr_init { i32 4294416, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_zcull_0 = dso_local constant [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294940, i8 1, i32 4, i32 16711935 }, %struct.gf100_gr_init { i32 4294948, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294952, i8 1, i32 4, i32 16776960 }, %struct.gf100_gr_init { i32 4294956, i8 1, i32 4, i32 65280 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_crstr_0 = dso_local constant [9 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4295424, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295432, i8 1, i32 4, i32 172066848 }, %struct.gf100_gr_init { i32 4295436, i8 1, i32 4, i32 102793446 }, %struct.gf100_gr_init { i32 4295440, i8 1, i32 4, i32 33790116 }, %struct.gf100_gr_init { i32 4295444, i8 1, i32 4, i32 241340514 }, %struct.gf100_gr_init { i32 4295448, i8 1, i32 4, i32 172066848 }, %struct.gf100_gr_init { i32 4295452, i8 1, i32 4, i32 230 }, %struct.gf100_gr_init { i32 4295608, i8 1, i32 4, i32 259 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_gpm_0 = dso_local constant [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4295688, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4295696, i8 8, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295808, i8 1, i32 4, i32 538968068 }, %struct.gf100_gr_init { i32 4295820, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_gcc_0 = dso_local constant [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4296704, i8 1, i32 4, i32 1920 }, %struct.gf100_gr_init { i32 4296708, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4296724, i8 1, i32 4, i32 4 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_setup_0 = internal constant [9 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4294656, i8 1, i32 4, i32 427530 }, %struct.gf100_gr_init { i32 4294664, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294696, i8 1, i32 4, i32 33858 }, %struct.gf100_gr_init { i32 4294704, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4294872, i8 1, i32 4, i32 8 }, %struct.gf100_gr_init { i32 4294880, i8 1, i32 4, i32 16777216 }, %struct.gf100_gr_init { i32 4294888, i8 5, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4294908, i8 1, i32 4, i32 1048576 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_pack_gpc_0 = dso_local constant [6 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_grctx_init_gpc_unk_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_prop_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_gpc_unk_1, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_setup_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_zcull_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], align 4
@gf100_grctx_pack_gpc_1 = dso_local constant [4 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_grctx_init_crstr_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_gpm_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_gcc_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], align 4
@gf100_grctx_init_zcullr_0 = internal constant [25 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4295168, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295180, i8 1, i32 4, i32 65536 }, %struct.gf100_gr_init { i32 4295184, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295200, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295212, i8 1, i32 4, i32 65536 }, %struct.gf100_gr_init { i32 4295216, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295232, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295244, i8 1, i32 4, i32 65536 }, %struct.gf100_gr_init { i32 4295248, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295264, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295276, i8 1, i32 4, i32 65536 }, %struct.gf100_gr_init { i32 4295280, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295296, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295308, i8 1, i32 4, i32 65536 }, %struct.gf100_gr_init { i32 4295312, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295328, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295340, i8 1, i32 4, i32 65536 }, %struct.gf100_gr_init { i32 4295344, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295360, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295372, i8 1, i32 4, i32 65536 }, %struct.gf100_gr_init { i32 4295376, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295392, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4295404, i8 1, i32 4, i32 65536 }, %struct.gf100_gr_init { i32 4295408, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_pack_zcull = dso_local constant [2 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_grctx_init_zcullr_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], align 4
@gf100_grctx_init_pe_0 = dso_local constant [6 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4298776, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4298812, i8 1, i32 4, i32 232391 }, %struct.gf100_gr_init { i32 4298824, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4298852, i8 1, i32 4, i32 298 }, %struct.gf100_gr_init { i32 4298888, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_wwdx_0 = dso_local constant [10 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299520, i8 1, i32 4, i32 172066848 }, %struct.gf100_gr_init { i32 4299524, i8 1, i32 4, i32 102793446 }, %struct.gf100_gr_init { i32 4299528, i8 1, i32 4, i32 33790116 }, %struct.gf100_gr_init { i32 4299532, i8 1, i32 4, i32 241340514 }, %struct.gf100_gr_init { i32 4299536, i8 1, i32 4, i32 172066848 }, %struct.gf100_gr_init { i32 4299540, i8 1, i32 4, i32 230 }, %struct.gf100_gr_init { i32 4299728, i8 1, i32 4, i32 9437443 }, %struct.gf100_gr_init { i32 4299744, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4299748, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_mpc_0 = dso_local constant [5 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299776, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4299780, i8 1, i32 4, i32 6 }, %struct.gf100_gr_init { i32 4299784, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4299808, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_tpccs_0 = dso_local constant [3 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300064, i8 1, i32 4, i32 35127296 }, %struct.gf100_gr_init { i32 4300068, i8 1, i32 4, i32 8191 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_tex_0 = internal constant [7 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299264, i8 1, i32 4, i32 496 }, %struct.gf100_gr_init { i32 4299268, i8 1, i32 4, i32 1 }, %struct.gf100_gr_init { i32 4299272, i8 1, i32 4, i32 35 }, %struct.gf100_gr_init { i32 4299276, i8 1, i32 4, i32 131072 }, %struct.gf100_gr_init { i32 4299280, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4299284, i8 1, i32 4, i32 512 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_l1c_0 = internal constant [4 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4299952, i8 1, i32 4, i32 393288 }, %struct.gf100_gr_init { i32 4300008, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300020, i8 1, i32 4, i32 387 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_init_sm_0 = internal constant [9 x %struct.gf100_gr_init] [%struct.gf100_gr_init { i32 4300292, i8 3, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300304, i8 1, i32 4, i32 2 }, %struct.gf100_gr_init { i32 4300356, i8 1, i32 4, i32 1830898 }, %struct.gf100_gr_init { i32 4300360, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300364, i8 1, i32 4, i32 15 }, %struct.gf100_gr_init { i32 4300368, i8 17, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300440, i8 1, i32 4, i32 0 }, %struct.gf100_gr_init { i32 4300624, i8 2, i32 4, i32 0 }, %struct.gf100_gr_init zeroinitializer], align 4
@gf100_grctx_pack_tpc = dso_local constant [8 x %struct.gf100_gr_pack] [%struct.gf100_gr_pack { ptr @gf100_grctx_init_pe_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_tex_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_wwdx_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_mpc_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_l1c_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_tpccs_0, i32 0 }, %struct.gf100_gr_pack { ptr @gf100_grctx_init_sm_0, i32 0 }, %struct.gf100_gr_pack zeroinitializer], align 4
@gf100_grctx_alpha_beta_map = internal unnamed_addr constant [17 x [32 x i32]] [[32 x i32] zeroinitializer, [32 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [32 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [32 x i32] zeroinitializer, [32 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3], [32 x i32] zeroinitializer, [32 x i32] zeroinitializer, [32 x i32] [i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6], [32 x i32] [i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7], [32 x i32] zeroinitializer, [32 x i32] zeroinitializer, [32 x i32] [i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 9, i32 10, i32 10], [32 x i32] zeroinitializer, [32 x i32] zeroinitializer, [32 x i32] [i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 10, i32 11, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13], [32 x i32] [i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 14, i32 14], [32 x i32] [i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15]], align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: missing alpha/beta mapping table\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxgf100.c\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"grctx\00", align 1
@gf100_grctx = dso_local local_unnamed_addr constant %struct.gf100_grctx_func { ptr null, ptr @gf100_grctx_generate_main, ptr @gf100_grctx_generate_unkn, ptr @gf100_grctx_pack_hub, ptr @gf100_grctx_pack_gpc_0, ptr @gf100_grctx_pack_gpc_1, ptr @gf100_grctx_pack_zcull, ptr @gf100_grctx_pack_tpc, ptr null, ptr @gf100_grctx_pack_icmd, ptr @gf100_grctx_pack_mthd, ptr null, ptr @gf100_grctx_generate_bundle, i32 6144, i32 0, i32 0, ptr @gf100_grctx_generate_pagepool, i32 32768, ptr @gf100_grctx_generate_attrib, i32 804, i32 536, i32 0, i32 0, i32 0, ptr null, ptr @gf100_grctx_generate_sm_id, ptr @gf100_grctx_generate_tpc_nr, i8 0, ptr @gf100_grctx_generate_r4060a8, ptr @gf100_grctx_generate_rop_mapping, ptr @gf100_grctx_generate_alpha_beta_tables, ptr @gf100_grctx_generate_max_ways_evict, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gf100_grctx_generate_r419cb8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @gf100_grctx_mmio_data(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %4
  %9 = zext i1 %3 to i8
  %10 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 5
  %11 = load i64, ptr %10, align 8
  %12 = add i64 %11, -1
  %13 = add i32 %2, -1
  %14 = zext i32 %13 to i64
  %15 = or i64 %12, %14
  %16 = add i64 %15, 1
  %17 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr %struct.gf100_grctx, ptr %0, i32 0, i32 4, i32 %18
  store i64 %16, ptr %19, align 8
  %20 = load i32, ptr %17, align 4
  %21 = getelementptr %struct.gf100_grctx, ptr %0, i32 0, i32 4, i32 %20
  %22 = load i64, ptr %21, align 8
  %23 = zext i32 %1 to i64
  %24 = add i64 %22, %23
  store i64 %24, ptr %10, align 8
  %25 = load ptr, ptr %5, align 4
  store i32 %1, ptr %25, align 4
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr inbounds %struct.gf100_gr_data, ptr %26, i32 0, i32 1
  store i32 %2, ptr %27, align 4
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr inbounds %struct.gf100_gr_data, ptr %28, i32 0, i32 2
  store i8 %9, ptr %29, align 4
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr %struct.gf100_gr_data, ptr %30, i32 1
  store ptr %31, ptr %5, align 4
  %32 = load i32, ptr %17, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %17, align 4
  br label %34

34:                                               ; preds = %8, %4
  %35 = phi i32 [ %32, %8 ], [ -1, %4 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_grctx_mmio_item(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.gf100_gr, ptr %6, i32 0, i32 1, i32 1, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %5
  %13 = icmp sgt i32 %3, -1
  br i1 %13, label %14, label %42

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  store i32 %1, ptr %16, align 4
  %17 = load ptr, ptr %15, align 8
  %18 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %17, i32 0, i32 1
  store i32 %2, ptr %18, align 4
  %19 = load ptr, ptr %15, align 8
  %20 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %19, i32 0, i32 2
  store i32 %3, ptr %20, align 4
  %21 = load ptr, ptr %15, align 8
  %22 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %21, i32 0, i32 3
  store i32 %4, ptr %22, align 4
  %23 = icmp sgt i32 %4, -1
  br i1 %23, label %24, label %31

24:                                               ; preds = %14
  %25 = getelementptr %struct.gf100_grctx, ptr %0, i32 0, i32 4, i32 %4
  %26 = load i64, ptr %25, align 8
  %27 = zext i32 %3 to i64
  %28 = lshr i64 %26, %27
  %29 = trunc i64 %28 to i32
  %30 = or i32 %29, %2
  br label %31

31:                                               ; preds = %24, %14
  %32 = phi i32 [ %30, %24 ], [ %2, %14 ]
  %33 = load ptr, ptr %15, align 8
  %34 = getelementptr %struct.gf100_gr_mmio, ptr %33, i32 1
  store ptr %34, ptr %15, align 8
  br label %37

35:                                               ; preds = %5
  %36 = icmp sgt i32 %4, -1
  br i1 %36, label %42, label %37

37:                                               ; preds = %35, %31
  %38 = phi i32 [ %32, %31 ], [ %2, %35 ]
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %38) #9, !srcloc !9
  br label %42

42:                                               ; preds = %37, %35, %12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_grctx_generate_r419cb8(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4299960
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %8 = and i32 %7, -31745
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 4299960
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_grctx_generate_bundle(ptr nocapture noundef %0) #1 {
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gf100_gr_func, ptr %3, i32 0, i32 36
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 13
  %7 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.gf100_gr, ptr %2, i32 0, i32 1, i32 1, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  br label %66

13:                                               ; preds = %1
  %14 = load i32, ptr %6, align 4
  %15 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 5
  %16 = load i64, ptr %15, align 8
  %17 = add i64 %16, -1
  %18 = or i64 %17, 255
  %19 = add i64 %18, 1
  %20 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr %struct.gf100_grctx, ptr %0, i32 0, i32 4, i32 %21
  store i64 %19, ptr %22, align 8
  %23 = load i32, ptr %20, align 4
  %24 = getelementptr %struct.gf100_grctx, ptr %0, i32 0, i32 4, i32 %23
  %25 = load i64, ptr %24, align 8
  %26 = zext i32 %14 to i64
  %27 = add i64 %25, %26
  store i64 %27, ptr %15, align 8
  %28 = load ptr, ptr %7, align 4
  store i32 %14, ptr %28, align 4
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr inbounds %struct.gf100_gr_data, ptr %29, i32 0, i32 1
  store i32 256, ptr %30, align 4
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr inbounds %struct.gf100_gr_data, ptr %31, i32 0, i32 2
  store i8 1, ptr %32, align 4
  %33 = load ptr, ptr %7, align 4
  %34 = getelementptr %struct.gf100_gr_data, ptr %33, i32 1
  store ptr %34, ptr %7, align 4
  %35 = load i32, ptr %20, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %20, align 4
  %37 = load ptr, ptr %0, align 8
  %38 = getelementptr inbounds %struct.gf100_gr, ptr %37, i32 0, i32 1, i32 1, i32 1, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %34, null
  br i1 %40, label %60, label %41

41:                                               ; preds = %13
  %42 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  store i32 4227076, ptr %43, align 4
  %44 = load ptr, ptr %42, align 8
  %45 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %44, i32 0, i32 1
  store i32 0, ptr %45, align 4
  %46 = load ptr, ptr %42, align 8
  %47 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %46, i32 0, i32 2
  store i32 8, ptr %47, align 4
  %48 = load ptr, ptr %42, align 8
  %49 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %48, i32 0, i32 3
  store i32 %35, ptr %49, align 4
  %50 = icmp sgt i32 %35, -1
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = getelementptr %struct.gf100_grctx, ptr %0, i32 0, i32 4, i32 %35
  %53 = load i64, ptr %52, align 8
  %54 = lshr i64 %53, 8
  %55 = trunc i64 %54 to i32
  br label %56

56:                                               ; preds = %51, %41
  %57 = phi i32 [ %55, %51 ], [ 0, %41 ]
  %58 = load ptr, ptr %42, align 8
  %59 = getelementptr %struct.gf100_gr_mmio, ptr %58, i32 1
  store ptr %59, ptr %42, align 8
  br label %66

60:                                               ; preds = %13
  %61 = icmp sgt i32 %35, -1
  br i1 %61, label %62, label %66

62:                                               ; preds = %60
  %63 = load i32, ptr %6, align 4
  %64 = lshr i32 %63, 8
  %65 = or i32 %64, -2147483648
  br label %92

66:                                               ; preds = %60, %56, %10
  %67 = phi ptr [ %39, %56 ], [ %39, %60 ], [ %12, %10 ]
  %68 = phi i32 [ %35, %56 ], [ %35, %60 ], [ -1, %10 ]
  %69 = phi i32 [ %57, %56 ], [ 0, %60 ], [ 0, %10 ]
  %70 = getelementptr inbounds %struct.nvkm_device, ptr %67, i32 0, i32 11
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr i8, ptr %71, i32 4227076
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %69) #9, !srcloc !9
  %73 = load ptr, ptr %0, align 8
  %74 = getelementptr inbounds %struct.gf100_gr, ptr %73, i32 0, i32 1, i32 1, i32 1, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = load ptr, ptr %7, align 4
  %77 = icmp eq ptr %76, null
  %78 = load i32, ptr %6, align 4
  %79 = lshr i32 %78, 8
  %80 = or i32 %79, -2147483648
  br i1 %77, label %92, label %81

81:                                               ; preds = %66
  %82 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 2
  %83 = load ptr, ptr %82, align 8
  store i32 4227080, ptr %83, align 4
  %84 = load ptr, ptr %82, align 8
  %85 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %84, i32 0, i32 1
  store i32 %80, ptr %85, align 4
  %86 = load ptr, ptr %82, align 8
  %87 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %86, i32 0, i32 2
  store i32 0, ptr %87, align 4
  %88 = load ptr, ptr %82, align 8
  %89 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %88, i32 0, i32 3
  store i32 -1, ptr %89, align 4
  %90 = load ptr, ptr %82, align 8
  %91 = getelementptr %struct.gf100_gr_mmio, ptr %90, i32 1
  store ptr %91, ptr %82, align 8
  br label %92

92:                                               ; preds = %81, %66, %62
  %93 = phi i32 [ %65, %62 ], [ %80, %66 ], [ %80, %81 ]
  %94 = phi i32 [ %35, %62 ], [ %68, %66 ], [ %68, %81 ]
  %95 = phi ptr [ %39, %62 ], [ %75, %66 ], [ %75, %81 ]
  %96 = getelementptr inbounds %struct.nvkm_device, ptr %95, i32 0, i32 11
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr i8, ptr %97, i32 4227080
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %93) #9, !srcloc !9
  %99 = load ptr, ptr %0, align 8
  %100 = getelementptr inbounds %struct.gf100_gr, ptr %99, i32 0, i32 1, i32 1, i32 1, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = load ptr, ptr %7, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %123, label %104

104:                                              ; preds = %92
  %105 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 2
  %106 = load ptr, ptr %105, align 8
  store i32 4294664, ptr %106, align 4
  %107 = load ptr, ptr %105, align 8
  %108 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %107, i32 0, i32 1
  store i32 0, ptr %108, align 4
  %109 = load ptr, ptr %105, align 8
  %110 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %109, i32 0, i32 2
  store i32 8, ptr %110, align 4
  %111 = load ptr, ptr %105, align 8
  %112 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %111, i32 0, i32 3
  store i32 %94, ptr %112, align 4
  %113 = icmp sgt i32 %94, -1
  br i1 %113, label %114, label %119

114:                                              ; preds = %104
  %115 = getelementptr %struct.gf100_grctx, ptr %0, i32 0, i32 4, i32 %94
  %116 = load i64, ptr %115, align 8
  %117 = lshr i64 %116, 8
  %118 = trunc i64 %117 to i32
  br label %119

119:                                              ; preds = %114, %104
  %120 = phi i32 [ %118, %114 ], [ 0, %104 ]
  %121 = load ptr, ptr %105, align 8
  %122 = getelementptr %struct.gf100_gr_mmio, ptr %121, i32 1
  store ptr %122, ptr %105, align 8
  br label %129

123:                                              ; preds = %92
  %124 = icmp sgt i32 %94, -1
  br i1 %124, label %125, label %129

125:                                              ; preds = %123
  %126 = load i32, ptr %6, align 4
  %127 = lshr i32 %126, 8
  %128 = or i32 %127, -2147483648
  br label %153

129:                                              ; preds = %123, %119
  %130 = phi i32 [ %120, %119 ], [ 0, %123 ]
  %131 = getelementptr inbounds %struct.nvkm_device, ptr %101, i32 0, i32 11
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr i8, ptr %132, i32 4294664
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %130) #9, !srcloc !9
  %134 = load ptr, ptr %7, align 4
  %135 = load i32, ptr %6, align 4
  %136 = lshr i32 %135, 8
  %137 = or i32 %136, -2147483648
  %138 = load ptr, ptr %0, align 8
  %139 = getelementptr inbounds %struct.gf100_gr, ptr %138, i32 0, i32 1, i32 1, i32 1, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %134, null
  br i1 %141, label %153, label %142

142:                                              ; preds = %129
  %143 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 2
  %144 = load ptr, ptr %143, align 8
  store i32 4294668, ptr %144, align 4
  %145 = load ptr, ptr %143, align 8
  %146 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %145, i32 0, i32 1
  store i32 %137, ptr %146, align 4
  %147 = load ptr, ptr %143, align 8
  %148 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %147, i32 0, i32 2
  store i32 0, ptr %148, align 4
  %149 = load ptr, ptr %143, align 8
  %150 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %149, i32 0, i32 3
  store i32 -1, ptr %150, align 4
  %151 = load ptr, ptr %143, align 8
  %152 = getelementptr %struct.gf100_gr_mmio, ptr %151, i32 1
  store ptr %152, ptr %143, align 8
  br label %153

153:                                              ; preds = %142, %129, %125
  %154 = phi ptr [ %140, %142 ], [ %101, %125 ], [ %140, %129 ]
  %155 = phi i32 [ %137, %142 ], [ %128, %125 ], [ %137, %129 ]
  %156 = getelementptr inbounds %struct.nvkm_device, ptr %154, i32 0, i32 11
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr i8, ptr %157, i32 4294668
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %155) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_grctx_generate_pagepool(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  %5 = load ptr, ptr %0, align 8
  br i1 %4, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gf100_gr, ptr %5, i32 0, i32 1, i32 1, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  br label %62

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.gf100_gr_func, ptr %10, i32 0, i32 36
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.gf100_grctx_func, ptr %12, i32 0, i32 17
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 5
  %16 = load i64, ptr %15, align 8
  %17 = add i64 %16, -1
  %18 = or i64 %17, 255
  %19 = add i64 %18, 1
  %20 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr %struct.gf100_grctx, ptr %0, i32 0, i32 4, i32 %21
  store i64 %19, ptr %22, align 8
  %23 = load i32, ptr %20, align 4
  %24 = getelementptr %struct.gf100_grctx, ptr %0, i32 0, i32 4, i32 %23
  %25 = load i64, ptr %24, align 8
  %26 = zext i32 %14 to i64
  %27 = add i64 %25, %26
  store i64 %27, ptr %15, align 8
  %28 = load ptr, ptr %2, align 4
  store i32 %14, ptr %28, align 4
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr inbounds %struct.gf100_gr_data, ptr %29, i32 0, i32 1
  store i32 256, ptr %30, align 4
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr inbounds %struct.gf100_gr_data, ptr %31, i32 0, i32 2
  store i8 1, ptr %32, align 4
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr %struct.gf100_gr_data, ptr %33, i32 1
  store ptr %34, ptr %2, align 4
  %35 = load i32, ptr %20, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %20, align 4
  %37 = load ptr, ptr %0, align 8
  %38 = getelementptr inbounds %struct.gf100_gr, ptr %37, i32 0, i32 1, i32 1, i32 1, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %34, null
  br i1 %40, label %60, label %41

41:                                               ; preds = %9
  %42 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  store i32 4227084, ptr %43, align 4
  %44 = load ptr, ptr %42, align 8
  %45 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %44, i32 0, i32 1
  store i32 0, ptr %45, align 4
  %46 = load ptr, ptr %42, align 8
  %47 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %46, i32 0, i32 2
  store i32 8, ptr %47, align 4
  %48 = load ptr, ptr %42, align 8
  %49 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %48, i32 0, i32 3
  store i32 %35, ptr %49, align 4
  %50 = icmp sgt i32 %35, -1
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = getelementptr %struct.gf100_grctx, ptr %0, i32 0, i32 4, i32 %35
  %53 = load i64, ptr %52, align 8
  %54 = lshr i64 %53, 8
  %55 = trunc i64 %54 to i32
  br label %56

56:                                               ; preds = %51, %41
  %57 = phi i32 [ %55, %51 ], [ 0, %41 ]
  %58 = load ptr, ptr %42, align 8
  %59 = getelementptr %struct.gf100_gr_mmio, ptr %58, i32 1
  store ptr %59, ptr %42, align 8
  br label %62

60:                                               ; preds = %9
  %61 = icmp sgt i32 %35, -1
  br i1 %61, label %85, label %62

62:                                               ; preds = %60, %56, %6
  %63 = phi ptr [ %39, %56 ], [ %39, %60 ], [ %8, %6 ]
  %64 = phi i32 [ %35, %56 ], [ %35, %60 ], [ -1, %6 ]
  %65 = phi i32 [ %57, %56 ], [ 0, %60 ], [ 0, %6 ]
  %66 = getelementptr inbounds %struct.nvkm_device, ptr %63, i32 0, i32 11
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i8, ptr %67, i32 4227084
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %65) #9, !srcloc !9
  %69 = load ptr, ptr %0, align 8
  %70 = getelementptr inbounds %struct.gf100_gr, ptr %69, i32 0, i32 1, i32 1, i32 1, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %2, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %85, label %74

74:                                               ; preds = %62
  %75 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 2
  %76 = load ptr, ptr %75, align 8
  store i32 4227088, ptr %76, align 4
  %77 = load ptr, ptr %75, align 8
  %78 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %77, i32 0, i32 1
  store i32 -2147483648, ptr %78, align 4
  %79 = load ptr, ptr %75, align 8
  %80 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %79, i32 0, i32 2
  store i32 0, ptr %80, align 4
  %81 = load ptr, ptr %75, align 8
  %82 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %81, i32 0, i32 3
  store i32 -1, ptr %82, align 4
  %83 = load ptr, ptr %75, align 8
  %84 = getelementptr %struct.gf100_gr_mmio, ptr %83, i32 1
  store ptr %84, ptr %75, align 8
  br label %85

85:                                               ; preds = %74, %62, %60
  %86 = phi i32 [ %64, %62 ], [ %64, %74 ], [ %35, %60 ]
  %87 = phi ptr [ %71, %62 ], [ %71, %74 ], [ %39, %60 ]
  %88 = getelementptr inbounds %struct.nvkm_device, ptr %87, i32 0, i32 11
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i8, ptr %89, i32 4227088
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 -2147483648) #9, !srcloc !9
  %91 = load ptr, ptr %0, align 8
  %92 = getelementptr inbounds %struct.gf100_gr, ptr %91, i32 0, i32 1, i32 1, i32 1, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = load ptr, ptr %2, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %115, label %96

96:                                               ; preds = %85
  %97 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 2
  %98 = load ptr, ptr %97, align 8
  store i32 4296708, ptr %98, align 4
  %99 = load ptr, ptr %97, align 8
  %100 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %99, i32 0, i32 1
  store i32 0, ptr %100, align 4
  %101 = load ptr, ptr %97, align 8
  %102 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %101, i32 0, i32 2
  store i32 8, ptr %102, align 4
  %103 = load ptr, ptr %97, align 8
  %104 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %103, i32 0, i32 3
  store i32 %86, ptr %104, align 4
  %105 = icmp sgt i32 %86, -1
  br i1 %105, label %106, label %111

106:                                              ; preds = %96
  %107 = getelementptr %struct.gf100_grctx, ptr %0, i32 0, i32 4, i32 %86
  %108 = load i64, ptr %107, align 8
  %109 = lshr i64 %108, 8
  %110 = trunc i64 %109 to i32
  br label %111

111:                                              ; preds = %106, %96
  %112 = phi i32 [ %110, %106 ], [ 0, %96 ]
  %113 = load ptr, ptr %97, align 8
  %114 = getelementptr %struct.gf100_gr_mmio, ptr %113, i32 1
  store ptr %114, ptr %97, align 8
  br label %117

115:                                              ; preds = %85
  %116 = icmp sgt i32 %86, -1
  br i1 %116, label %138, label %117

117:                                              ; preds = %115, %111
  %118 = phi i32 [ %112, %111 ], [ 0, %115 ]
  %119 = getelementptr inbounds %struct.nvkm_device, ptr %93, i32 0, i32 11
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr i8, ptr %120, i32 4296708
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %118) #9, !srcloc !9
  %122 = load ptr, ptr %2, align 4
  %123 = load ptr, ptr %0, align 8
  %124 = getelementptr inbounds %struct.gf100_gr, ptr %123, i32 0, i32 1, i32 1, i32 1, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %122, null
  br i1 %126, label %138, label %127

127:                                              ; preds = %117
  %128 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 2
  %129 = load ptr, ptr %128, align 8
  store i32 4296712, ptr %129, align 4
  %130 = load ptr, ptr %128, align 8
  %131 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %130, i32 0, i32 1
  store i32 0, ptr %131, align 4
  %132 = load ptr, ptr %128, align 8
  %133 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %132, i32 0, i32 2
  store i32 0, ptr %133, align 4
  %134 = load ptr, ptr %128, align 8
  %135 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %134, i32 0, i32 3
  store i32 -1, ptr %135, align 4
  %136 = load ptr, ptr %128, align 8
  %137 = getelementptr %struct.gf100_gr_mmio, ptr %136, i32 1
  store ptr %137, ptr %128, align 8
  br label %138

138:                                              ; preds = %127, %117, %115
  %139 = phi ptr [ %125, %127 ], [ %125, %117 ], [ %93, %115 ]
  %140 = getelementptr inbounds %struct.nvkm_device, ptr %139, i32 0, i32 11
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr i8, ptr %141, i32 4296712
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 0) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_grctx_generate_attrib(ptr noundef %0) #1 {
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gf100_gr_func, ptr %3, i32 0, i32 36
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 19
  %9 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.gf100_gr, ptr %2, i32 0, i32 1, i32 1, i32 1, i32 1
  %14 = load ptr, ptr %13, align 4
  br label %73

15:                                               ; preds = %1
  %16 = load i32, ptr %8, align 4
  %17 = getelementptr inbounds %struct.gf100_grctx_func, ptr %5, i32 0, i32 21
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %16
  %20 = shl i32 %19, 5
  %21 = getelementptr inbounds %struct.gf100_gr, ptr %2, i32 0, i32 16
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = mul i32 %20, %23
  %25 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 5
  %26 = load i64, ptr %25, align 8
  %27 = add i64 %26, -1
  %28 = or i64 %27, 4095
  %29 = add i64 %28, 1
  %30 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr %struct.gf100_grctx, ptr %0, i32 0, i32 4, i32 %31
  store i64 %29, ptr %32, align 8
  %33 = load i32, ptr %30, align 4
  %34 = getelementptr %struct.gf100_grctx, ptr %0, i32 0, i32 4, i32 %33
  %35 = load i64, ptr %34, align 8
  %36 = zext i32 %24 to i64
  %37 = add i64 %35, %36
  store i64 %37, ptr %25, align 8
  %38 = load ptr, ptr %9, align 4
  store i32 %24, ptr %38, align 4
  %39 = load ptr, ptr %9, align 4
  %40 = getelementptr inbounds %struct.gf100_gr_data, ptr %39, i32 0, i32 1
  store i32 4096, ptr %40, align 4
  %41 = load ptr, ptr %9, align 4
  %42 = getelementptr inbounds %struct.gf100_gr_data, ptr %41, i32 0, i32 2
  store i8 0, ptr %42, align 4
  %43 = load ptr, ptr %9, align 4
  %44 = getelementptr %struct.gf100_gr_data, ptr %43, i32 1
  store ptr %44, ptr %9, align 4
  %45 = load i32, ptr %30, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %30, align 4
  %47 = load ptr, ptr %0, align 8
  %48 = getelementptr inbounds %struct.gf100_gr, ptr %47, i32 0, i32 1, i32 1, i32 1, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %44, null
  br i1 %50, label %71, label %51

51:                                               ; preds = %15
  %52 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 2
  %53 = load ptr, ptr %52, align 8
  store i32 4294672, ptr %53, align 4
  %54 = load ptr, ptr %52, align 8
  %55 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %54, i32 0, i32 1
  store i32 -2147483648, ptr %55, align 4
  %56 = load ptr, ptr %52, align 8
  %57 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %56, i32 0, i32 2
  store i32 12, ptr %57, align 4
  %58 = load ptr, ptr %52, align 8
  %59 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %58, i32 0, i32 3
  store i32 %45, ptr %59, align 4
  %60 = icmp sgt i32 %45, -1
  br i1 %60, label %61, label %67

61:                                               ; preds = %51
  %62 = getelementptr %struct.gf100_grctx, ptr %0, i32 0, i32 4, i32 %45
  %63 = load i64, ptr %62, align 8
  %64 = lshr i64 %63, 12
  %65 = trunc i64 %64 to i32
  %66 = or i32 %65, -2147483648
  br label %67

67:                                               ; preds = %61, %51
  %68 = phi i32 [ %66, %61 ], [ -2147483648, %51 ]
  %69 = load ptr, ptr %52, align 8
  %70 = getelementptr %struct.gf100_gr_mmio, ptr %69, i32 1
  store ptr %70, ptr %52, align 8
  br label %73

71:                                               ; preds = %15
  %72 = icmp sgt i32 %45, -1
  br i1 %72, label %107, label %73

73:                                               ; preds = %71, %67, %12
  %74 = phi ptr [ %49, %67 ], [ %49, %71 ], [ %14, %12 ]
  %75 = phi i32 [ %45, %67 ], [ %45, %71 ], [ -1, %12 ]
  %76 = phi i32 [ %68, %67 ], [ -2147483648, %71 ], [ -2147483648, %12 ]
  %77 = getelementptr inbounds %struct.nvkm_device, ptr %74, i32 0, i32 11
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %78, i32 4294672
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %76) #9, !srcloc !9
  %80 = load ptr, ptr %0, align 8
  %81 = getelementptr inbounds %struct.gf100_gr, ptr %80, i32 0, i32 1, i32 1, i32 1, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = load ptr, ptr %9, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %105, label %85

85:                                               ; preds = %73
  %86 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 2
  %87 = load ptr, ptr %86, align 8
  store i32 4298824, ptr %87, align 4
  %88 = load ptr, ptr %86, align 8
  %89 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %88, i32 0, i32 1
  store i32 268435456, ptr %89, align 4
  %90 = load ptr, ptr %86, align 8
  %91 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %90, i32 0, i32 2
  store i32 12, ptr %91, align 4
  %92 = load ptr, ptr %86, align 8
  %93 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %92, i32 0, i32 3
  store i32 %75, ptr %93, align 4
  %94 = icmp sgt i32 %75, -1
  br i1 %94, label %95, label %101

95:                                               ; preds = %85
  %96 = getelementptr %struct.gf100_grctx, ptr %0, i32 0, i32 4, i32 %75
  %97 = load i64, ptr %96, align 8
  %98 = lshr i64 %97, 12
  %99 = trunc i64 %98 to i32
  %100 = or i32 %99, 268435456
  br label %101

101:                                              ; preds = %95, %85
  %102 = phi i32 [ %100, %95 ], [ 268435456, %85 ]
  %103 = load ptr, ptr %86, align 8
  %104 = getelementptr %struct.gf100_gr_mmio, ptr %103, i32 1
  store ptr %104, ptr %86, align 8
  br label %110

105:                                              ; preds = %73
  %106 = icmp sgt i32 %75, -1
  br i1 %106, label %107, label %110

107:                                              ; preds = %105, %71
  %108 = phi ptr [ %82, %105 ], [ %49, %71 ]
  %109 = shl i32 %7, 16
  br label %132

110:                                              ; preds = %105, %101
  %111 = phi i32 [ %102, %101 ], [ 268435456, %105 ]
  %112 = getelementptr inbounds %struct.nvkm_device, ptr %82, i32 0, i32 11
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr i8, ptr %113, i32 4298824
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %111) #9, !srcloc !9
  %115 = load ptr, ptr %9, align 4
  %116 = shl i32 %7, 16
  %117 = load ptr, ptr %0, align 8
  %118 = getelementptr inbounds %struct.gf100_gr, ptr %117, i32 0, i32 1, i32 1, i32 1, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %115, null
  br i1 %120, label %132, label %121

121:                                              ; preds = %110
  %122 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 2
  %123 = load ptr, ptr %122, align 8
  store i32 4216880, ptr %123, align 4
  %124 = load ptr, ptr %122, align 8
  %125 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %124, i32 0, i32 1
  store i32 %116, ptr %125, align 4
  %126 = load ptr, ptr %122, align 8
  %127 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %126, i32 0, i32 2
  store i32 0, ptr %127, align 4
  %128 = load ptr, ptr %122, align 8
  %129 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %128, i32 0, i32 3
  store i32 -1, ptr %129, align 4
  %130 = load ptr, ptr %122, align 8
  %131 = getelementptr %struct.gf100_gr_mmio, ptr %130, i32 1
  store ptr %131, ptr %122, align 8
  br label %132

132:                                              ; preds = %121, %110, %107
  %133 = phi ptr [ %119, %121 ], [ %108, %107 ], [ %119, %110 ]
  %134 = phi i32 [ %116, %121 ], [ %109, %107 ], [ %116, %110 ]
  %135 = getelementptr inbounds %struct.nvkm_device, ptr %133, i32 0, i32 11
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr i8, ptr %136, i32 4216880
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %134) #9, !srcloc !9
  %138 = getelementptr inbounds %struct.gf100_gr, ptr %2, i32 0, i32 13
  %139 = load i8, ptr %138, align 1
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %212, label %141

141:                                              ; preds = %132
  %142 = getelementptr inbounds %struct.gf100_grctx, ptr %0, i32 0, i32 2
  br label %143

143:                                              ; preds = %206, %141
  %144 = phi i8 [ %139, %141 ], [ %207, %206 ]
  %145 = phi i32 [ 0, %141 ], [ %208, %206 ]
  %146 = phi i32 [ 0, %141 ], [ %209, %206 ]
  %147 = getelementptr %struct.gf100_gr, ptr %2, i32 0, i32 14, i32 %146
  %148 = load i8, ptr %147, align 1
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %206, label %150

150:                                              ; preds = %143
  %151 = shl i32 %146, 15
  %152 = add nuw nsw i32 %151, 5260576
  br label %153

153:                                              ; preds = %192, %150
  %154 = phi i32 [ %145, %150 ], [ %199, %192 ]
  %155 = phi i32 [ 0, %150 ], [ %200, %192 ]
  %156 = shl i32 %155, 11
  %157 = add nuw nsw i32 %152, %156
  %158 = load ptr, ptr %9, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %165, label %160

160:                                              ; preds = %153
  %161 = or i32 %154, %134
  %162 = load ptr, ptr %0, align 8
  %163 = getelementptr inbounds %struct.gf100_gr, ptr %162, i32 0, i32 1, i32 1, i32 1, i32 1
  %164 = load ptr, ptr %163, align 4
  br label %180

165:                                              ; preds = %153
  %166 = load ptr, ptr %0, align 8
  %167 = getelementptr inbounds %struct.gf100_gr, ptr %166, i32 0, i32 1, i32 1, i32 1, i32 1
  %168 = load ptr, ptr %167, align 4
  %169 = add i32 %154, 1
  %170 = or i32 %169, %134
  %171 = getelementptr inbounds %struct.nvkm_device, ptr %168, i32 0, i32 11
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr i8, ptr %172, i32 %157
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 %170) #9, !srcloc !9
  %174 = load ptr, ptr %9, align 4
  %175 = or i32 %154, %134
  %176 = load ptr, ptr %0, align 8
  %177 = getelementptr inbounds %struct.gf100_gr, ptr %176, i32 0, i32 1, i32 1, i32 1, i32 1
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %174, null
  br i1 %179, label %192, label %180

180:                                              ; preds = %165, %160
  %181 = phi ptr [ %164, %160 ], [ %178, %165 ]
  %182 = phi i32 [ %161, %160 ], [ %175, %165 ]
  %183 = load ptr, ptr %142, align 8
  store i32 %157, ptr %183, align 4
  %184 = load ptr, ptr %142, align 8
  %185 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %184, i32 0, i32 1
  store i32 %182, ptr %185, align 4
  %186 = load ptr, ptr %142, align 8
  %187 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %186, i32 0, i32 2
  store i32 0, ptr %187, align 4
  %188 = load ptr, ptr %142, align 8
  %189 = getelementptr inbounds %struct.gf100_gr_mmio, ptr %188, i32 0, i32 3
  store i32 -1, ptr %189, align 4
  %190 = load ptr, ptr %142, align 8
  %191 = getelementptr %struct.gf100_gr_mmio, ptr %190, i32 1
  store ptr %191, ptr %142, align 8
  br label %192

192:                                              ; preds = %180, %165
  %193 = phi ptr [ %181, %180 ], [ %178, %165 ]
  %194 = phi i32 [ %182, %180 ], [ %175, %165 ]
  %195 = getelementptr inbounds %struct.nvkm_device, ptr %193, i32 0, i32 11
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr i8, ptr %196, i32 %157
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 %194) #9, !srcloc !9
  %198 = load i32, ptr %8, align 4
  %199 = add i32 %198, %154
  %200 = add nuw nsw i32 %155, 1
  %201 = load i8, ptr %147, align 1
  %202 = zext i8 %201 to i32
  %203 = icmp ult i32 %200, %202
  br i1 %203, label %153, label %204

204:                                              ; preds = %192
  %205 = load i8, ptr %138, align 1
  br label %206

206:                                              ; preds = %204, %143
  %207 = phi i8 [ %144, %143 ], [ %205, %204 ]
  %208 = phi i32 [ %145, %143 ], [ %199, %204 ]
  %209 = add nuw nsw i32 %146, 1
  %210 = zext i8 %207 to i32
  %211 = icmp ult i32 %209, %210
  br i1 %211, label %143, label %212

212:                                              ; preds = %206, %132
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @gf100_grctx_generate_unkn(ptr nocapture %0) #3 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_grctx_generate_r4060a8(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 140336
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 140340
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %11 = mul i32 %10, %7
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %71, label %14

14:                                               ; preds = %1
  %15 = add nuw nsw i32 %12, 3
  %16 = lshr i32 %15, 2
  %17 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 26
  br label %18

18:                                               ; preds = %61, %14
  %19 = phi i32 [ 0, %14 ], [ %62, %61 ]
  %20 = phi i32 [ 0, %14 ], [ %69, %61 ]
  %21 = load i8, ptr %17, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = add nsw i32 %19, 1
  %26 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 25, i32 %19
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  br label %29

29:                                               ; preds = %24, %18
  %30 = phi i32 [ %25, %24 ], [ %19, %18 ]
  %31 = phi i32 [ %28, %24 ], [ 31, %18 ]
  %32 = icmp slt i32 %30, %22
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = add nsw i32 %30, 1
  %35 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 25, i32 %30
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 8
  br label %39

39:                                               ; preds = %33, %29
  %40 = phi i32 [ %34, %33 ], [ %30, %29 ]
  %41 = phi i32 [ %38, %33 ], [ 7936, %29 ]
  %42 = or i32 %41, %31
  %43 = icmp slt i32 %40, %22
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = add nsw i32 %40, 1
  %46 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 25, i32 %40
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 16
  br label %50

50:                                               ; preds = %44, %39
  %51 = phi i32 [ %45, %44 ], [ %40, %39 ]
  %52 = phi i32 [ %49, %44 ], [ 2031616, %39 ]
  %53 = or i32 %52, %42
  %54 = icmp slt i32 %51, %22
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = add nsw i32 %51, 1
  %57 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 25, i32 %51
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = shl nuw i32 %59, 24
  br label %61

61:                                               ; preds = %55, %50
  %62 = phi i32 [ %56, %55 ], [ %51, %50 ]
  %63 = phi i32 [ %60, %55 ], [ 520093696, %50 ]
  %64 = or i32 %63, %53
  %65 = load ptr, ptr %4, align 4
  %66 = shl i32 %20, 2
  %67 = add nuw nsw i32 %66, 4219048
  %68 = getelementptr i8, ptr %65, i32 %67
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %64) #9, !srcloc !9
  %69 = add nuw nsw i32 %20, 1
  %70 = icmp eq i32 %69, %16
  br i1 %70, label %71, label %18

71:                                               ; preds = %61, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_grctx_generate_rop_mapping(ptr nocapture noundef readonly %0) #1 {
  %2 = alloca [6 x i32], align 4
  %3 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false)
  br label %5

5:                                                ; preds = %5, %1
  %6 = phi i32 [ 0, %1 ], [ %20, %5 ]
  %7 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 24, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, 7
  %10 = zext i8 %9 to i32
  %11 = freeze i32 %6
  %12 = udiv i32 %11, 6
  %13 = mul i32 %12, 6
  %14 = sub i32 %11, %13
  %15 = mul nuw nsw i32 %14, 5
  %16 = shl nuw nsw i32 %10, %15
  %17 = getelementptr [6 x i32], ptr %2, i32 0, i32 %12
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %16, %18
  store i32 %19, ptr %17, align 4
  %20 = add nuw nsw i32 %6, 1
  %21 = icmp eq i32 %20, 32
  br i1 %21, label %22, label %5

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 16
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %28, %22
  %29 = phi i8 [ %31, %28 ], [ %24, %22 ]
  %30 = phi i8 [ %32, %28 ], [ 0, %22 ]
  %31 = shl i8 %29, 1
  %32 = add i8 %30, 1
  %33 = zext i8 %31 to i32
  %34 = and i32 %33, 16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %28, label %36

36:                                               ; preds = %28
  %37 = zext i8 %32 to i32
  %38 = shl nuw nsw i32 %37, 21
  br label %39

39:                                               ; preds = %36, %22
  %40 = phi i32 [ 0, %22 ], [ %38, %36 ]
  %41 = phi i8 [ %24, %22 ], [ %31, %36 ]
  %42 = phi i32 [ %25, %22 ], [ %33, %36 ]
  %43 = urem i8 32, %41
  %44 = zext i8 %43 to i32
  %45 = trunc i32 %42 to i8
  %46 = urem i8 64, %45
  %47 = zext i8 %46 to i32
  %48 = trunc i32 %42 to i8
  %49 = urem i8 -128, %48
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 5
  %52 = or i32 %51, %47
  %53 = trunc i32 %42 to i16
  %54 = urem i16 256, %53
  %55 = zext i16 %54 to i32
  %56 = shl nuw nsw i32 %55, 10
  %57 = or i32 %56, %52
  %58 = trunc i32 %42 to i16
  %59 = urem i16 512, %58
  %60 = zext i16 %59 to i32
  %61 = shl nuw nsw i32 %60, 15
  %62 = or i32 %61, %57
  %63 = trunc i32 %42 to i16
  %64 = urem i16 1024, %63
  %65 = zext i16 %64 to i32
  %66 = shl nuw nsw i32 %65, 20
  %67 = or i32 %66, %62
  %68 = trunc i32 %42 to i16
  %69 = urem i16 2048, %68
  %70 = zext i16 %69 to i32
  %71 = shl i32 %70, 25
  %72 = or i32 %71, %67
  %73 = shl nuw nsw i32 %25, 8
  %74 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 23
  %75 = load i8, ptr %74, align 2
  %76 = zext i8 %75 to i32
  %77 = or i32 %73, %76
  %78 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %79, i32 4295608
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %77) #9, !srcloc !9
  %81 = load i32, ptr %2, align 4
  %82 = load ptr, ptr %78, align 4
  %83 = getelementptr i8, ptr %82, i32 4295432
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #9, !srcloc !9
  %84 = getelementptr inbounds [6 x i32], ptr %2, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = load ptr, ptr %78, align 4
  %87 = getelementptr i8, ptr %86, i32 4295436
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #9, !srcloc !9
  %88 = getelementptr inbounds [6 x i32], ptr %2, i32 0, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = load ptr, ptr %78, align 4
  %91 = getelementptr i8, ptr %90, i32 4295440
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #9, !srcloc !9
  %92 = getelementptr inbounds [6 x i32], ptr %2, i32 0, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = load ptr, ptr %78, align 4
  %95 = getelementptr i8, ptr %94, i32 4295444
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %93) #9, !srcloc !9
  %96 = getelementptr inbounds [6 x i32], ptr %2, i32 0, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = load ptr, ptr %78, align 4
  %99 = getelementptr i8, ptr %98, i32 4295448
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %97) #9, !srcloc !9
  %100 = getelementptr inbounds [6 x i32], ptr %2, i32 0, i32 5
  %101 = load i32, ptr %100, align 4
  %102 = load ptr, ptr %78, align 4
  %103 = getelementptr i8, ptr %102, i32 4295452
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %101) #9, !srcloc !9
  %104 = shl nuw nsw i32 %42, 16
  %105 = shl nuw nsw i32 %44, 24
  %106 = load i8, ptr %23, align 1
  %107 = zext i8 %106 to i32
  %108 = shl nuw nsw i32 %107, 8
  %109 = load i8, ptr %74, align 2
  %110 = zext i8 %109 to i32
  %111 = or i32 %104, %40
  %112 = or i32 %111, %105
  %113 = or i32 %112, %110
  %114 = or i32 %113, %108
  %115 = load ptr, ptr %78, align 4
  %116 = getelementptr i8, ptr %115, i32 4299728
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %114) #9, !srcloc !9
  %117 = load ptr, ptr %78, align 4
  %118 = getelementptr i8, ptr %117, i32 4299748
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %72) #9, !srcloc !9
  %119 = load ptr, ptr %78, align 4
  %120 = getelementptr i8, ptr %119, i32 4299520
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %81) #9, !srcloc !9
  %121 = load ptr, ptr %78, align 4
  %122 = getelementptr i8, ptr %121, i32 4299524
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %85) #9, !srcloc !9
  %123 = load ptr, ptr %78, align 4
  %124 = getelementptr i8, ptr %123, i32 4299528
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %89) #9, !srcloc !9
  %125 = load ptr, ptr %78, align 4
  %126 = getelementptr i8, ptr %125, i32 4299532
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %93) #9, !srcloc !9
  %127 = load ptr, ptr %78, align 4
  %128 = getelementptr i8, ptr %127, i32 4299536
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %97) #9, !srcloc !9
  %129 = load ptr, ptr %78, align 4
  %130 = getelementptr i8, ptr %129, i32 4299540
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %101) #9, !srcloc !9
  %131 = load i8, ptr %23, align 1
  %132 = zext i8 %131 to i32
  %133 = shl nuw nsw i32 %132, 8
  %134 = load i8, ptr %74, align 2
  %135 = zext i8 %134 to i32
  %136 = or i32 %133, %135
  %137 = load ptr, ptr %78, align 4
  %138 = getelementptr i8, ptr %137, i32 4225212
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %136) #9, !srcloc !9
  %139 = load i32, ptr %2, align 4
  %140 = load ptr, ptr %78, align 4
  %141 = getelementptr i8, ptr %140, i32 4225036
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %139) #9, !srcloc !9
  %142 = load i32, ptr %84, align 4
  %143 = load ptr, ptr %78, align 4
  %144 = getelementptr i8, ptr %143, i32 4225040
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %142) #9, !srcloc !9
  %145 = load i32, ptr %88, align 4
  %146 = load ptr, ptr %78, align 4
  %147 = getelementptr i8, ptr %146, i32 4225044
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %145) #9, !srcloc !9
  %148 = load i32, ptr %92, align 4
  %149 = load ptr, ptr %78, align 4
  %150 = getelementptr i8, ptr %149, i32 4225048
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %148) #9, !srcloc !9
  %151 = load ptr, ptr %78, align 4
  %152 = getelementptr i8, ptr %151, i32 4225052
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %97) #9, !srcloc !9
  %153 = load ptr, ptr %78, align 4
  %154 = getelementptr i8, ptr %153, i32 4225056
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %101) #9, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #9
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_grctx_generate_max_ways_evict(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1186932
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr i8, ptr %10, i32 1567004
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %13 = and i32 %12, -2031617
  %14 = or i32 %13, 589824
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 1567004
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #9, !srcloc !9
  br label %17

17:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_grctx_generate_alpha_beta_tables(ptr noundef %0) #1 {
  %2 = alloca [32 x i32], align 4
  %3 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 16
  %6 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %7 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  %8 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 13
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  br label %10

10:                                               ; preds = %80, %1
  %11 = phi i32 [ 0, %1 ], [ %90, %80 ]
  %12 = load i8, ptr %5, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr [17 x [32 x i32]], ptr @gf100_grctx_alpha_beta_map, i32 0, i32 %13, i32 %11
  %15 = load i32, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %2, i8 0, i32 128, i1 false)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %10
  %18 = load i32, ptr %6, align 4
  %19 = icmp ugt i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %23, ptr noundef nonnull @.str, ptr noundef %7) #10
  %24 = load i8, ptr %5, align 1
  %25 = zext i8 %24 to i32
  br label %26

26:                                               ; preds = %20, %17
  %27 = phi i32 [ %25, %20 ], [ %13, %17 ]
  %28 = mul i32 %11, %27
  %29 = sdiv i32 %28, 32
  %30 = tail call i32 @llvm.umax.i32(i32 %29, i32 1)
  br label %31

31:                                               ; preds = %26, %10
  %32 = phi i32 [ %15, %10 ], [ %30, %26 ]
  %33 = load i8, ptr %8, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i8 %33, 0
  br label %54

36:                                               ; preds = %50
  %37 = icmp eq i8 %33, 0
  br i1 %37, label %80, label %58

38:                                               ; preds = %54, %38
  br i1 %35, label %38, label %39, !llvm.loop !12

39:                                               ; preds = %54, %38
  %40 = phi i32 [ %55, %54 ], [ 0, %38 ]
  %41 = getelementptr [32 x i32], ptr %2, i32 0, i32 %40
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 14, i32 %40
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = add nuw i32 %42, 1
  store i32 %48, ptr %41, align 4
  %49 = add i32 %56, -1
  br label %50

50:                                               ; preds = %47, %39
  %51 = phi i32 [ %49, %47 ], [ %56, %39 ]
  %52 = add nuw nsw i32 %40, 1
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %36, label %54

54:                                               ; preds = %50, %31
  %55 = phi i32 [ 0, %31 ], [ %52, %50 ]
  %56 = phi i32 [ %32, %31 ], [ %51, %50 ]
  %57 = icmp eq i32 %55, %34
  br i1 %57, label %38, label %39

58:                                               ; preds = %58, %36
  %59 = phi i32 [ %78, %58 ], [ 0, %36 ]
  %60 = phi i32 [ %77, %58 ], [ 0, %36 ]
  %61 = phi i32 [ %72, %58 ], [ 0, %36 ]
  %62 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 14, i32 %59
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = getelementptr [32 x i32], ptr %2, i32 0, i32 %59
  %66 = load i32, ptr %65, align 4
  %67 = sub i32 %64, %66
  %68 = shl nsw i32 -1, %66
  %69 = xor i32 %68, -1
  %70 = shl i32 %59, 3
  %71 = shl i32 %69, %70
  %72 = or i32 %71, %61
  %73 = shl nsw i32 -1, %67
  %74 = xor i32 %73, -1
  %75 = shl i32 %74, %66
  %76 = shl i32 %75, %70
  %77 = or i32 %76, %60
  %78 = add nuw nsw i32 %59, 1
  %79 = icmp eq i32 %78, %34
  br i1 %79, label %80, label %58

80:                                               ; preds = %58, %36
  %81 = phi i32 [ 0, %36 ], [ %72, %58 ]
  %82 = phi i32 [ 0, %36 ], [ %77, %58 ]
  %83 = load ptr, ptr %9, align 4
  %84 = shl i32 %11, 5
  %85 = add nuw nsw i32 %84, 4220928
  %86 = getelementptr i8, ptr %83, i32 %85
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %81) #9, !srcloc !9
  %87 = load ptr, ptr %9, align 4
  %88 = add nuw nsw i32 %84, 4221952
  %89 = getelementptr i8, ptr %87, i32 %88
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %82) #9, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #9
  %90 = add nuw nsw i32 %11, 1
  %91 = icmp eq i32 %90, 32
  br i1 %91, label %92, label %10

92:                                               ; preds = %80
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_grctx_generate_tpc_nr(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 14, i32 %1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = shl i32 %1, 15
  %11 = add i32 %10, 5245960
  %12 = getelementptr i8, ptr %9, i32 %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %7) #9, !srcloc !9
  %13 = load i8, ptr %5, align 1
  %14 = zext i8 %13 to i32
  %15 = load ptr, ptr %8, align 4
  %16 = add i32 %10, 5246092
  %17 = getelementptr i8, ptr %15, i32 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %14) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_grctx_generate_sm_id(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = shl i32 %1, 15
  %10 = add i32 %9, 5259264
  %11 = shl i32 %2, 11
  %12 = add i32 %10, %11
  %13 = or i32 %12, 1688
  %14 = getelementptr i8, ptr %8, i32 %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %3) #9, !srcloc !9
  %15 = load ptr, ptr %7, align 4
  %16 = or i32 %12, 1256
  %17 = getelementptr i8, ptr %15, i32 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %3) #9, !srcloc !9
  %18 = load ptr, ptr %7, align 4
  %19 = shl i32 %2, 2
  %20 = add i32 %9, 5245968
  %21 = add i32 %20, %19
  %22 = getelementptr i8, ptr %18, i32 %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %3) #9, !srcloc !9
  %23 = load ptr, ptr %7, align 4
  %24 = or i32 %12, 136
  %25 = getelementptr i8, ptr %23, i32 %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %3) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_grctx_generate_floorsweep(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.gf100_gr_func, ptr %2, i32 0, i32 36
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 26
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.gf100_grctx_func, ptr %4, i32 0, i32 25
  %10 = getelementptr inbounds %struct.gf100_grctx_func, ptr %4, i32 0, i32 26
  br label %11

11:                                               ; preds = %25, %8
  %12 = phi i32 [ 0, %8 ], [ %26, %25 ]
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 25, i32 %12
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr %struct.gf100_gr, ptr %0, i32 0, i32 25, i32 %12, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  tail call void %13(ptr noundef %0, i32 noundef %16, i32 noundef %19, i32 noundef %12) #9
  %20 = load ptr, ptr %10, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %11
  %23 = load i8, ptr %14, align 1
  %24 = zext i8 %23 to i32
  tail call void %20(ptr noundef %0, i32 noundef %24) #9
  br label %25

25:                                               ; preds = %22, %11
  %26 = add nuw nsw i32 %12, 1
  %27 = load i8, ptr %5, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %11, label %30

30:                                               ; preds = %25, %1
  tail call void @gf100_gr_init_num_tpc_per_gpc(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %31 = getelementptr inbounds %struct.gf100_grctx_func, ptr %4, i32 0, i32 27
  %32 = load i8, ptr %31, align 4, !range !14
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void @gf100_gr_init_num_tpc_per_gpc(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext false) #9
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr inbounds %struct.gf100_grctx_func, ptr %4, i32 0, i32 28
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void %37(ptr noundef %0) #9
  br label %40

40:                                               ; preds = %39, %35
  %41 = getelementptr inbounds %struct.gf100_grctx_func, ptr %4, i32 0, i32 29
  %42 = load ptr, ptr %41, align 4
  tail call void %42(ptr noundef %0) #9
  %43 = getelementptr inbounds %struct.gf100_grctx_func, ptr %4, i32 0, i32 30
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  tail call void %44(ptr noundef %0) #9
  br label %47

47:                                               ; preds = %46, %40
  %48 = getelementptr inbounds %struct.gf100_grctx_func, ptr %4, i32 0, i32 31
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  tail call void %49(ptr noundef %0) #9
  br label %52

52:                                               ; preds = %51, %47
  %53 = getelementptr inbounds %struct.gf100_grctx_func, ptr %4, i32 0, i32 32
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void %54(ptr noundef %0) #9
  br label %57

57:                                               ; preds = %56, %52
  %58 = getelementptr inbounds %struct.gf100_grctx_func, ptr %4, i32 0, i32 33
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  tail call void %59(ptr noundef %0) #9
  br label %62

62:                                               ; preds = %61, %57
  %63 = getelementptr inbounds %struct.gf100_grctx_func, ptr %4, i32 0, i32 34
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  tail call void %64(ptr noundef %0) #9
  br label %67

67:                                               ; preds = %66, %62
  %68 = getelementptr inbounds %struct.gf100_grctx_func, ptr %4, i32 0, i32 35
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  tail call void %69(ptr noundef %0) #9
  br label %72

72:                                               ; preds = %71, %67
  %73 = getelementptr inbounds %struct.gf100_grctx_func, ptr %4, i32 0, i32 36
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  tail call void %74(ptr noundef %0) #9
  br label %77

77:                                               ; preds = %76, %72
  %78 = getelementptr inbounds %struct.gf100_grctx_func, ptr %4, i32 0, i32 37
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  tail call void %79(ptr noundef %0) #9
  br label %82

82:                                               ; preds = %81, %77
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_init_num_tpc_per_gpc(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_grctx_generate_main(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.gf100_gr_func, ptr %5, i32 0, i32 36
  %7 = load ptr, ptr %6, align 4
  tail call void @nvkm_mc_unk260(ptr noundef %4, i32 noundef 0) #9
  %8 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  tail call void @gf100_gr_mmio(ptr noundef %0, ptr noundef %13) #9
  %14 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  tail call void @gf100_gr_mmio(ptr noundef %0, ptr noundef %15) #9
  %16 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  tail call void @gf100_gr_mmio(ptr noundef %0, ptr noundef %17) #9
  %18 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  tail call void @gf100_gr_mmio(ptr noundef %0, ptr noundef %19) #9
  %20 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  tail call void @gf100_gr_mmio(ptr noundef %0, ptr noundef %21) #9
  %22 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  tail call void @gf100_gr_mmio(ptr noundef %0, ptr noundef %23) #9
  br label %25

24:                                               ; preds = %2
  tail call void @gf100_gr_mmio(ptr noundef %0, ptr noundef nonnull %9) #9
  br label %25

25:                                               ; preds = %24, %11
  %26 = tail call i32 @gf100_gr_wait_idle(ptr noundef %0) #9
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 4211028
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %31 = load ptr, ptr %27, align 4
  %32 = getelementptr i8, ptr %31, i32 4211028
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #9, !srcloc !9
  %33 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 16
  %34 = load ptr, ptr %33, align 4
  tail call void %34(ptr noundef %1) #9
  %35 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 12
  %36 = load ptr, ptr %35, align 4
  tail call void %36(ptr noundef %1) #9
  %37 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 18
  %38 = load ptr, ptr %37, align 4
  tail call void %38(ptr noundef %1) #9
  %39 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 24
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %25
  tail call void %40(ptr noundef %1) #9
  br label %43

43:                                               ; preds = %42, %25
  %44 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  tail call void %45(ptr noundef %0) #9
  tail call void @gf100_grctx_generate_floorsweep(ptr noundef %0)
  %46 = tail call i32 @gf100_gr_wait_idle(ptr noundef %0) #9
  %47 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 38
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  tail call void %48(ptr noundef %0, i1 noundef zeroext false) #9
  br label %51

51:                                               ; preds = %50, %43
  %52 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 7
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @gf100_gr_icmd(ptr noundef %0, ptr noundef nonnull %53) #9
  br label %59

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 9
  %58 = load ptr, ptr %57, align 4
  tail call void @gf100_gr_icmd(ptr noundef %0, ptr noundef %58) #9
  br label %59

59:                                               ; preds = %56, %55
  %60 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 11
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  tail call void @gf100_gr_icmd(ptr noundef %0, ptr noundef nonnull %61) #9
  br label %64

64:                                               ; preds = %63, %59
  %65 = load ptr, ptr %47, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  tail call void %65(ptr noundef %0, i1 noundef zeroext true) #9
  br label %68

68:                                               ; preds = %67, %64
  %69 = load ptr, ptr %27, align 4
  %70 = getelementptr i8, ptr %69, i32 4211028
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %30) #9, !srcloc !9
  %71 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 8
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  tail call void @gf100_gr_mthd(ptr noundef %0, ptr noundef nonnull %72) #9
  br label %78

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 10
  %77 = load ptr, ptr %76, align 4
  tail call void @gf100_gr_mthd(ptr noundef %0, ptr noundef %77) #9
  br label %78

78:                                               ; preds = %75, %74
  tail call void @nvkm_mc_unk260(ptr noundef %4, i32 noundef 1) #9
  %79 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 39
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  tail call void %80(ptr noundef %0) #9
  br label %83

83:                                               ; preds = %82, %78
  %84 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 40
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  tail call void %85(ptr noundef %0) #9
  br label %88

88:                                               ; preds = %87, %83
  %89 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 41
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  tail call void %90(ptr noundef %0) #9
  br label %93

93:                                               ; preds = %92, %88
  %94 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 42
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  tail call void %95(ptr noundef %0) #9
  br label %98

98:                                               ; preds = %97, %93
  %99 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 43
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  tail call void %100(ptr noundef %0) #9
  br label %103

103:                                              ; preds = %102, %98
  %104 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 44
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  tail call void %105(ptr noundef %0) #9
  br label %108

108:                                              ; preds = %107, %103
  %109 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 45
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  tail call void %110(ptr noundef %0) #9
  br label %113

113:                                              ; preds = %112, %108
  %114 = getelementptr inbounds %struct.gf100_grctx_func, ptr %7, i32 0, i32 46
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  tail call void %115(ptr noundef %0) #9
  br label %118

118:                                              ; preds = %117, %113
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_unk260(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_mmio(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_wait_idle(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_icmd(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_mthd(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_grctx_generate(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct.gf100_grctx, align 8
  %7 = alloca %struct.nvkm_timer_wait, align 8
  %8 = alloca %struct.nvkm_timer_wait, align 8
  %9 = alloca %struct.nvkm_timer_wait, align 8
  %10 = alloca %struct.nvkm_timer_wait, align 8
  %11 = alloca %struct.nvkm_timer_wait, align 8
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.gf100_gr_func, ptr %12, i32 0, i32 36
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store ptr null, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store ptr null, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store ptr null, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i32 56, i1 false), !annotation !15
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 4211056
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 18) #9, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i32 40, i1 false), !annotation !15
  call void @nvkm_timer_wait_init(ptr noundef %16, i64 noundef 2000000000, ptr noundef nonnull %7) #9
  br label %20

20:                                               ; preds = %26, %1
  %21 = load ptr, ptr %17, align 4
  %22 = getelementptr i8, ptr %21, i32 4211056
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %24 = and i32 %23, 16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %48, label %26

26:                                               ; preds = %20
  %27 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %7) #9
  %28 = icmp sgt i64 %27, -1
  br i1 %28, label %20, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %7, align 8
  %31 = getelementptr inbounds %struct.nvkm_timer, ptr %30, i32 0, i32 1, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = call ptr @dev_driver_string(ptr noundef %34) #9
  %36 = load ptr, ptr %7, align 8
  %37 = getelementptr inbounds %struct.nvkm_timer, ptr %36, i32 0, i32 1, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load ptr, ptr %40, align 4
  br label %46

46:                                               ; preds = %44, %29
  %47 = phi ptr [ %45, %44 ], [ %42, %29 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1454, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %35, ptr noundef %47) #9
  br label %48

48:                                               ; preds = %46, %20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #9
  %49 = load ptr, ptr %14, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  call void %49(ptr noundef %0, i1 noundef zeroext true) #9
  br label %52

52:                                               ; preds = %51, %48
  %53 = load ptr, ptr %17, align 4
  %54 = getelementptr i8, ptr %53, i32 4232724
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 112) #9, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i32 40, i1 false), !annotation !15
  call void @nvkm_timer_wait_init(ptr noundef %16, i64 noundef 10000, ptr noundef nonnull %8) #9
  br label %55

55:                                               ; preds = %55, %52
  %56 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %8) #9
  %57 = icmp sgt i64 %56, -1
  br i1 %57, label %55, label %58

58:                                               ; preds = %55
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #9
  %59 = load ptr, ptr %17, align 4
  %60 = getelementptr i8, ptr %59, i32 4232724
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %62 = or i32 %61, 1792
  %63 = load ptr, ptr %17, align 4
  %64 = getelementptr i8, ptr %63, i32 4232724
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #9, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %9, i8 0, i32 40, i1 false), !annotation !15
  call void @nvkm_timer_wait_init(ptr noundef %16, i64 noundef 10000, ptr noundef nonnull %9) #9
  br label %65

65:                                               ; preds = %65, %58
  %66 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %9) #9
  %67 = icmp sgt i64 %66, -1
  br i1 %67, label %65, label %68

68:                                               ; preds = %65
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #9
  %69 = load ptr, ptr %17, align 4
  %70 = getelementptr i8, ptr %69, i32 4232724
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %72 = load ptr, ptr %14, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  call void %72(ptr noundef %0, i1 noundef zeroext false) #9
  br label %75

75:                                               ; preds = %74, %68
  %76 = load ptr, ptr %17, align 4
  %77 = getelementptr i8, ptr %76, i32 4211056
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 16) #9, !srcloc !9
  %78 = load ptr, ptr %17, align 4
  %79 = getelementptr i8, ptr %78, i32 4227116
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 1) #9, !srcloc !9
  %80 = call i32 @nvkm_memory_new(ptr noundef %16, i32 noundef 0, i64 noundef 4096, i32 noundef 4096, i1 noundef zeroext true, ptr noundef nonnull %2) #9
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %311

82:                                               ; preds = %75
  %83 = call i32 @nvkm_vmm_new(ptr noundef %16, i64 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #9
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %311

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %87 = load i32, ptr %86, align 4
  %88 = load ptr, ptr %4, align 4
  %89 = getelementptr inbounds %struct.nvkm_vmm, ptr %88, i32 0, i32 3
  store i32 %87, ptr %89, align 4
  %90 = load ptr, ptr %2, align 4
  %91 = call i32 @nvkm_vmm_join(ptr noundef %88, ptr noundef %90) #9
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %311

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 29
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, 524288
  %97 = zext i32 %96 to i64
  %98 = call i32 @nvkm_memory_new(ptr noundef %16, i32 noundef 0, i64 noundef %97, i32 noundef 0, i1 noundef zeroext true, ptr noundef nonnull %3) #9
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %311

100:                                              ; preds = %93
  %101 = load ptr, ptr %4, align 4
  %102 = load ptr, ptr %3, align 4
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.nvkm_memory_func, ptr %103, i32 0, i32 5
  %105 = load ptr, ptr %104, align 4
  %106 = call i64 %105(ptr noundef %102) #9
  %107 = call i32 @nvkm_vmm_get(ptr noundef %101, i8 noundef zeroext 0, i64 noundef %106, ptr noundef nonnull %5) #9
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %311

109:                                              ; preds = %100
  %110 = load ptr, ptr %3, align 4
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.nvkm_memory_func, ptr %111, i32 0, i32 9
  %113 = load ptr, ptr %112, align 4
  %114 = load ptr, ptr %4, align 4
  %115 = load ptr, ptr %5, align 4
  %116 = call i32 %113(ptr noundef %110, i64 noundef 0, ptr noundef %114, ptr noundef %115, ptr noundef null, i32 noundef 0) #9
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %311

118:                                              ; preds = %109
  %119 = load ptr, ptr %2, align 4
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.nvkm_memory_func, ptr %120, i32 0, i32 7
  %122 = load ptr, ptr %121, align 4
  %123 = call ptr %122(ptr noundef %119) #9
  %124 = load ptr, ptr %2, align 4
  %125 = getelementptr inbounds %struct.nvkm_memory, ptr %124, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %126, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = load ptr, ptr %5, align 4
  %130 = getelementptr inbounds %struct.nvkm_vma, ptr %129, i32 0, i32 2
  %131 = load i64, ptr %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = add i32 %132, 524288
  %134 = or i32 %133, 4
  call void %128(ptr noundef %124, i64 noundef 528, i32 noundef %134) #9
  %135 = load ptr, ptr %2, align 4
  %136 = getelementptr inbounds %struct.nvkm_memory, ptr %135, i32 0, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %137, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = load ptr, ptr %5, align 4
  %141 = getelementptr inbounds %struct.nvkm_vma, ptr %140, i32 0, i32 2
  %142 = load i64, ptr %141, align 8
  %143 = add i64 %142, 524288
  %144 = lshr i64 %143, 32
  %145 = trunc i64 %144 to i32
  call void %139(ptr noundef %135, i64 noundef 532, i32 noundef %145) #9
  %146 = load ptr, ptr %2, align 4
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.nvkm_memory_func, ptr %147, i32 0, i32 8
  %149 = load ptr, ptr %148, align 4
  call void %149(ptr noundef %146) #9
  store ptr %0, ptr %6, align 8
  %150 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 27
  %151 = getelementptr inbounds %struct.gf100_grctx, ptr %6, i32 0, i32 1
  store ptr %150, ptr %151, align 4
  %152 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 28
  %153 = getelementptr inbounds %struct.gf100_grctx, ptr %6, i32 0, i32 2
  store ptr %152, ptr %153, align 8
  %154 = load ptr, ptr %5, align 4
  %155 = getelementptr inbounds %struct.nvkm_vma, ptr %154, i32 0, i32 2
  %156 = load i64, ptr %155, align 8
  %157 = getelementptr inbounds %struct.gf100_grctx, ptr %6, i32 0, i32 5
  store i64 %156, ptr %157, align 8
  %158 = getelementptr inbounds %struct.gf100_grctx, ptr %6, i32 0, i32 3
  store i32 0, ptr %158, align 4
  %159 = load ptr, ptr %2, align 4
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.nvkm_memory_func, ptr %160, i32 0, i32 4
  %162 = load ptr, ptr %161, align 4
  %163 = call i64 %162(ptr noundef %159) #9
  %164 = lshr i64 %163, 12
  %165 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 4
  %166 = load i8, ptr %165, align 4, !range !14
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %203, label %168

168:                                              ; preds = %118
  %169 = trunc i64 %164 to i32
  %170 = or i32 %169, -2147483648
  %171 = call i32 @gf100_gr_fecs_bind_pointer(ptr noundef %0, i32 noundef %170) #9
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %311

173:                                              ; preds = %168
  %174 = load ptr, ptr %3, align 4
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.nvkm_memory_func, ptr %175, i32 0, i32 7
  %177 = load ptr, ptr %176, align 4
  %178 = call ptr %177(ptr noundef %174) #9
  %179 = load ptr, ptr %3, align 4
  %180 = getelementptr inbounds %struct.nvkm_memory, ptr %179, i32 0, i32 1
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %181, i32 0, i32 1
  %183 = load ptr, ptr %182, align 4
  call void %183(ptr noundef %179, i64 noundef 28, i32 noundef 1) #9
  %184 = load ptr, ptr %3, align 4
  %185 = getelementptr inbounds %struct.nvkm_memory, ptr %184, i32 0, i32 1
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %186, i32 0, i32 1
  %188 = load ptr, ptr %187, align 4
  call void %188(ptr noundef %184, i64 noundef 32, i32 noundef 0) #9
  %189 = load ptr, ptr %3, align 4
  %190 = getelementptr inbounds %struct.nvkm_memory, ptr %189, i32 0, i32 1
  %191 = load ptr, ptr %190, align 4
  %192 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %191, i32 0, i32 1
  %193 = load ptr, ptr %192, align 4
  call void %193(ptr noundef %189, i64 noundef 40, i32 noundef 0) #9
  %194 = load ptr, ptr %3, align 4
  %195 = getelementptr inbounds %struct.nvkm_memory, ptr %194, i32 0, i32 1
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %196, i32 0, i32 1
  %198 = load ptr, ptr %197, align 4
  call void %198(ptr noundef %194, i64 noundef 44, i32 noundef 0) #9
  %199 = load ptr, ptr %3, align 4
  %200 = load ptr, ptr %199, align 4
  %201 = getelementptr inbounds %struct.nvkm_memory_func, ptr %200, i32 0, i32 8
  %202 = load ptr, ptr %201, align 4
  call void %202(ptr noundef %199) #9
  br label %240

203:                                              ; preds = %118
  %204 = load ptr, ptr %17, align 4
  %205 = getelementptr i8, ptr %204, i32 4233280
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %205, i32 -2147483648) #9, !srcloc !9
  %206 = trunc i64 %164 to i32
  %207 = or i32 %206, -2147483648
  %208 = load ptr, ptr %17, align 4
  %209 = getelementptr i8, ptr %208, i32 4232448
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %209, i32 %207) #9, !srcloc !9
  %210 = load ptr, ptr %17, align 4
  %211 = getelementptr i8, ptr %210, i32 4232452
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %211, i32 1) #9, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %10, i8 0, i32 40, i1 false), !annotation !15
  call void @nvkm_timer_wait_init(ptr noundef %16, i64 noundef 2000000000, ptr noundef nonnull %10) #9
  br label %212

212:                                              ; preds = %217, %203
  %213 = load ptr, ptr %17, align 4
  %214 = getelementptr i8, ptr %213, i32 4233216
  %215 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %214) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %216 = icmp sgt i32 %215, -1
  br i1 %216, label %217, label %239

217:                                              ; preds = %212
  %218 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %10) #9
  %219 = icmp sgt i64 %218, -1
  br i1 %219, label %212, label %220

220:                                              ; preds = %217
  %221 = load ptr, ptr %10, align 8
  %222 = getelementptr inbounds %struct.nvkm_timer, ptr %221, i32 0, i32 1, i32 1
  %223 = load ptr, ptr %222, align 4
  %224 = getelementptr inbounds %struct.nvkm_device, ptr %223, i32 0, i32 2
  %225 = load ptr, ptr %224, align 8
  %226 = call ptr @dev_driver_string(ptr noundef %225) #9
  %227 = load ptr, ptr %10, align 8
  %228 = getelementptr inbounds %struct.nvkm_timer, ptr %227, i32 0, i32 1, i32 1
  %229 = load ptr, ptr %228, align 4
  %230 = getelementptr inbounds %struct.nvkm_device, ptr %229, i32 0, i32 2
  %231 = load ptr, ptr %230, align 8
  %232 = getelementptr inbounds %struct.device, ptr %231, i32 0, i32 3
  %233 = load ptr, ptr %232, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %235, label %237

235:                                              ; preds = %220
  %236 = load ptr, ptr %231, align 4
  br label %237

237:                                              ; preds = %235, %220
  %238 = phi ptr [ %236, %235 ], [ %233, %220 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1540, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %226, ptr noundef %238) #9
  br label %239

239:                                              ; preds = %237, %212
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #9
  br label %240

240:                                              ; preds = %239, %173
  %241 = getelementptr inbounds %struct.gf100_grctx_func, ptr %14, i32 0, i32 1
  %242 = load ptr, ptr %241, align 4
  call void %242(ptr noundef %0, ptr noundef nonnull %6) #9
  %243 = load ptr, ptr %17, align 4
  %244 = getelementptr i8, ptr %243, i32 4233988
  %245 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %244) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %246 = and i32 %245, 2147483647
  %247 = load ptr, ptr %17, align 4
  %248 = getelementptr i8, ptr %247, i32 4233988
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %248, i32 %246) #9, !srcloc !9
  %249 = load ptr, ptr %17, align 4
  %250 = getelementptr i8, ptr %249, i32 4231168
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %250, i32 256) #9, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i32 40, i1 false), !annotation !15
  call void @nvkm_timer_wait_init(ptr noundef %16, i64 noundef 2000000000, ptr noundef nonnull %11) #9
  br label %251

251:                                              ; preds = %256, %240
  %252 = load ptr, ptr %17, align 4
  %253 = getelementptr i8, ptr %252, i32 4233984
  %254 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %253) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %255 = icmp sgt i32 %254, -1
  br i1 %255, label %278, label %256

256:                                              ; preds = %251
  %257 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %11) #9
  %258 = icmp sgt i64 %257, -1
  br i1 %258, label %251, label %259

259:                                              ; preds = %256
  %260 = load ptr, ptr %11, align 8
  %261 = getelementptr inbounds %struct.nvkm_timer, ptr %260, i32 0, i32 1, i32 1
  %262 = load ptr, ptr %261, align 4
  %263 = getelementptr inbounds %struct.nvkm_device, ptr %262, i32 0, i32 2
  %264 = load ptr, ptr %263, align 8
  %265 = call ptr @dev_driver_string(ptr noundef %264) #9
  %266 = load ptr, ptr %11, align 8
  %267 = getelementptr inbounds %struct.nvkm_timer, ptr %266, i32 0, i32 1, i32 1
  %268 = load ptr, ptr %267, align 4
  %269 = getelementptr inbounds %struct.nvkm_device, ptr %268, i32 0, i32 2
  %270 = load ptr, ptr %269, align 8
  %271 = getelementptr inbounds %struct.device, ptr %270, i32 0, i32 3
  %272 = load ptr, ptr %271, align 4
  %273 = icmp eq ptr %272, null
  br i1 %273, label %274, label %276

274:                                              ; preds = %259
  %275 = load ptr, ptr %270, align 4
  br label %276

276:                                              ; preds = %274, %259
  %277 = phi ptr [ %275, %274 ], [ %272, %259 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1553, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %265, ptr noundef %277) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #9
  br label %311

278:                                              ; preds = %251
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #9
  %279 = load i32, ptr %94, align 4
  %280 = call noalias align 64 ptr @__kmalloc(i32 noundef %279, i32 noundef 3264) #11
  %281 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 30
  store ptr %280, ptr %281, align 4
  %282 = icmp eq ptr %280, null
  br i1 %282, label %311, label %283

283:                                              ; preds = %278
  %284 = load ptr, ptr %3, align 4
  %285 = load ptr, ptr %284, align 4
  %286 = getelementptr inbounds %struct.nvkm_memory_func, ptr %285, i32 0, i32 7
  %287 = load ptr, ptr %286, align 4
  %288 = call ptr %287(ptr noundef %284) #9
  %289 = load i32, ptr %94, align 4
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %306, label %291

291:                                              ; preds = %291, %283
  %292 = phi i32 [ %303, %291 ], [ 0, %283 ]
  %293 = load ptr, ptr %3, align 4
  %294 = getelementptr inbounds %struct.nvkm_memory, ptr %293, i32 0, i32 1
  %295 = load ptr, ptr %294, align 4
  %296 = load ptr, ptr %295, align 4
  %297 = add i32 %292, 524288
  %298 = sext i32 %297 to i64
  %299 = call i32 %296(ptr noundef %293, i64 noundef %298) #9
  %300 = load ptr, ptr %281, align 4
  %301 = sdiv i32 %292, 4
  %302 = getelementptr i32, ptr %300, i32 %301
  store i32 %299, ptr %302, align 4
  %303 = add i32 %292, 4
  %304 = load i32, ptr %94, align 4
  %305 = icmp ult i32 %303, %304
  br i1 %305, label %291, label %306

306:                                              ; preds = %291, %283
  %307 = load ptr, ptr %3, align 4
  %308 = load ptr, ptr %307, align 4
  %309 = getelementptr inbounds %struct.nvkm_memory_func, ptr %308, i32 0, i32 8
  %310 = load ptr, ptr %309, align 4
  call void %310(ptr noundef %307) #9
  br label %311

311:                                              ; preds = %306, %278, %276, %168, %109, %100, %93, %85, %82, %75
  %312 = phi i32 [ %80, %75 ], [ %83, %82 ], [ %91, %85 ], [ %98, %93 ], [ %107, %100 ], [ %116, %109 ], [ %171, %168 ], [ -16, %276 ], [ 0, %306 ], [ -12, %278 ]
  %313 = load ptr, ptr %4, align 4
  call void @nvkm_vmm_put(ptr noundef %313, ptr noundef nonnull %5) #9
  call void @nvkm_memory_unref(ptr noundef nonnull %3) #9
  %314 = load ptr, ptr %4, align 4
  %315 = load ptr, ptr %2, align 4
  call void @nvkm_vmm_part(ptr noundef %314, ptr noundef %315) #9
  call void @nvkm_vmm_unref(ptr noundef nonnull %4) #9
  call void @nvkm_memory_unref(ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %312
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_new(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_join(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_get(ptr noundef, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_fecs_bind_pointer(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_put(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_part(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_unref(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

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
!8 = !{i64 2151556725}
!9 = !{i64 4015632}
!10 = !{i64 4016050}
!11 = !{i64 2151555503}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.peeled.count", i32 1}
!14 = !{i8 0, i8 2}
!15 = !{!"auto-init"}
