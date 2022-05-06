; ModuleID = '/llk/IR/drivers/media/dvb-frontends/stv6111.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stv6111.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stv6111_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stv6111_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stv6111_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.slookup = type { i16, i16 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.stv = type { ptr, i8, [11 x i8], i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }

@tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"ST STV6111\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 0, i32 0 }, ptr @release, ptr null, ptr null, ptr null, ptr null, ptr @set_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @get_rf_strength, ptr null, ptr null, ptr null, ptr @set_bandwidth }, align 4
@__kstrtab_stv6111_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stv6111_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stv6111_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stv6111_attach to i32), ptr @__kstrtab_stv6111_attach, ptr @__kstrtabns_stv6111_attach }, section "___ksymtab_gpl+stv6111_attach", align 4
@__UNIQUE_ID_description249 = internal constant [46 x i8] c"description=ST STV6111 satellite tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [38 x i8] c"author=Ralph Metzler, Manfred Voelkel\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [17 x i8] c"i2c write error\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"i2c read error\0A\00", align 1
@lnagain_nf_lookup = internal unnamed_addr constant [32 x %struct.slookup] [%struct.slookup { i16 2572, i16 0 }, %struct.slookup { i16 2575, i16 1 }, %struct.slookup { i16 2580, i16 2 }, %struct.slookup { i16 2588, i16 3 }, %struct.slookup { i16 2596, i16 4 }, %struct.slookup { i16 2611, i16 5 }, %struct.slookup { i16 2633, i16 6 }, %struct.slookup { i16 2664, i16 7 }, %struct.slookup { i16 2701, i16 8 }, %struct.slookup { i16 2753, i16 9 }, %struct.slookup { i16 2816, i16 10 }, %struct.slookup { i16 2902, i16 11 }, %struct.slookup { i16 2995, i16 12 }, %struct.slookup { i16 3104, i16 13 }, %struct.slookup { i16 3215, i16 14 }, %struct.slookup { i16 3337, i16 15 }, %struct.slookup { i16 3492, i16 16 }, %struct.slookup { i16 3614, i16 17 }, %struct.slookup { i16 3731, i16 18 }, %struct.slookup { i16 3861, i16 19 }, %struct.slookup { i16 3988, i16 20 }, %struct.slookup { i16 4124, i16 21 }, %struct.slookup { i16 4253, i16 22 }, %struct.slookup { i16 4386, i16 23 }, %struct.slookup { i16 4505, i16 24 }, %struct.slookup { i16 4623, i16 25 }, %struct.slookup { i16 4726, i16 26 }, %struct.slookup { i16 4821, i16 27 }, %struct.slookup { i16 4903, i16 28 }, %struct.slookup { i16 4979, i16 29 }, %struct.slookup { i16 5045, i16 30 }, %struct.slookup { i16 5102, i16 31 }], align 2
@lnagain_iip3_lookup = internal unnamed_addr constant [32 x %struct.slookup] [%struct.slookup { i16 1548, i16 0 }, %struct.slookup { i16 1552, i16 1 }, %struct.slookup { i16 1569, i16 2 }, %struct.slookup { i16 1565, i16 3 }, %struct.slookup { i16 1577, i16 4 }, %struct.slookup { i16 1594, i16 5 }, %struct.slookup { i16 1627, i16 6 }, %struct.slookup { i16 1656, i16 7 }, %struct.slookup { i16 1700, i16 8 }, %struct.slookup { i16 1748, i16 9 }, %struct.slookup { i16 1805, i16 10 }, %struct.slookup { i16 1896, i16 11 }, %struct.slookup { i16 1995, i16 12 }, %struct.slookup { i16 2113, i16 13 }, %struct.slookup { i16 2233, i16 14 }, %struct.slookup { i16 2366, i16 15 }, %struct.slookup { i16 2543, i16 16 }, %struct.slookup { i16 2687, i16 17 }, %struct.slookup { i16 2842, i16 18 }, %struct.slookup { i16 2999, i16 19 }, %struct.slookup { i16 3167, i16 20 }, %struct.slookup { i16 3342, i16 21 }, %struct.slookup { i16 3507, i16 22 }, %struct.slookup { i16 3679, i16 23 }, %struct.slookup { i16 3827, i16 24 }, %struct.slookup { i16 3970, i16 25 }, %struct.slookup { i16 4094, i16 26 }, %struct.slookup { i16 4210, i16 27 }, %struct.slookup { i16 4308, i16 28 }, %struct.slookup { i16 4396, i16 29 }, %struct.slookup { i16 4468, i16 30 }, %struct.slookup { i16 4535, i16 31 }], align 2
@gain_rfagc_lookup = internal unnamed_addr constant [52 x %struct.slookup] [%struct.slookup { i16 4870, i16 12288 }, %struct.slookup { i16 4850, i16 15360 }, %struct.slookup { i16 4800, i16 17664 }, %struct.slookup { i16 4750, i16 18432 }, %struct.slookup { i16 4700, i16 19200 }, %struct.slookup { i16 4650, i16 19712 }, %struct.slookup { i16 4600, i16 20224 }, %struct.slookup { i16 4550, i16 20736 }, %struct.slookup { i16 4500, i16 20992 }, %struct.slookup { i16 4420, i16 21760 }, %struct.slookup { i16 4316, i16 22528 }, %struct.slookup { i16 4200, i16 23296 }, %struct.slookup { i16 4119, i16 23808 }, %struct.slookup { i16 3999, i16 24576 }, %struct.slookup { i16 3950, i16 24832 }, %struct.slookup { i16 3876, i16 25344 }, %struct.slookup { i16 3755, i16 26112 }, %struct.slookup { i16 3641, i16 26880 }, %struct.slookup { i16 3567, i16 27392 }, %struct.slookup { i16 3425, i16 28416 }, %struct.slookup { i16 3350, i16 28928 }, %struct.slookup { i16 3236, i16 29696 }, %struct.slookup { i16 3118, i16 30464 }, %struct.slookup { i16 3004, i16 31232 }, %struct.slookup { i16 2917, i16 31744 }, %struct.slookup { i16 2776, i16 32512 }, %struct.slookup { i16 2635, i16 -32256 }, %struct.slookup { i16 2516, i16 -31488 }, %struct.slookup { i16 2406, i16 -30720 }, %struct.slookup { i16 2290, i16 -29952 }, %struct.slookup { i16 2170, i16 -29184 }, %struct.slookup { i16 2073, i16 -28416 }, %struct.slookup { i16 1949, i16 -27648 }, %struct.slookup { i16 1836, i16 -26880 }, %struct.slookup { i16 1712, i16 -26112 }, %struct.slookup { i16 1631, i16 -25600 }, %struct.slookup { i16 1515, i16 -24832 }, %struct.slookup { i16 1400, i16 -24064 }, %struct.slookup { i16 1323, i16 -23552 }, %struct.slookup { i16 1203, i16 -22784 }, %struct.slookup { i16 1091, i16 -22016 }, %struct.slookup { i16 1011, i16 -21504 }, %struct.slookup { i16 904, i16 -20736 }, %struct.slookup { i16 787, i16 -19968 }, %struct.slookup { i16 685, i16 -19200 }, %struct.slookup { i16 571, i16 -18432 }, %struct.slookup { i16 464, i16 -17664 }, %struct.slookup { i16 374, i16 -16896 }, %struct.slookup { i16 275, i16 -15872 }, %struct.slookup { i16 181, i16 -14848 }, %struct.slookup { i16 102, i16 -13312 }, %struct.slookup { i16 49, i16 -9984 }], align 2
@gain_channel_agc_nf_lookup = internal unnamed_addr constant [55 x %struct.slookup] [%struct.slookup { i16 7082, i16 12288 }, %struct.slookup { i16 7052, i16 16384 }, %struct.slookup { i16 7007, i16 17920 }, %struct.slookup { i16 6954, i16 18944 }, %struct.slookup { i16 6909, i16 19712 }, %struct.slookup { i16 6833, i16 20736 }, %struct.slookup { i16 6753, i16 21504 }, %struct.slookup { i16 6659, i16 22272 }, %struct.slookup { i16 6561, i16 23040 }, %struct.slookup { i16 6472, i16 23552 }, %struct.slookup { i16 6366, i16 24320 }, %struct.slookup { i16 6259, i16 24832 }, %struct.slookup { i16 6151, i16 25600 }, %struct.slookup { i16 6026, i16 26368 }, %struct.slookup { i16 5920, i16 26880 }, %struct.slookup { i16 5835, i16 27392 }, %struct.slookup { i16 5770, i16 27648 }, %struct.slookup { i16 5681, i16 28160 }, %struct.slookup { i16 5596, i16 28672 }, %struct.slookup { i16 5503, i16 29184 }, %struct.slookup { i16 5429, i16 29440 }, %struct.slookup { i16 5319, i16 29952 }, %struct.slookup { i16 5220, i16 30464 }, %struct.slookup { i16 5111, i16 30976 }, %struct.slookup { i16 4983, i16 31488 }, %struct.slookup { i16 4876, i16 32000 }, %struct.slookup { i16 4755, i16 32512 }, %struct.slookup { i16 4635, i16 -32512 }, %struct.slookup { i16 4499, i16 -32000 }, %struct.slookup { i16 4405, i16 -31488 }, %struct.slookup { i16 4323, i16 -31232 }, %struct.slookup { i16 4233, i16 -30720 }, %struct.slookup { i16 4156, i16 -30208 }, %struct.slookup { i16 4038, i16 -29696 }, %struct.slookup { i16 3935, i16 -29184 }, %struct.slookup { i16 3823, i16 -28672 }, %struct.slookup { i16 3712, i16 -28160 }, %struct.slookup { i16 3601, i16 -27392 }, %struct.slookup { i16 3511, i16 -26880 }, %struct.slookup { i16 3413, i16 -26368 }, %struct.slookup { i16 3309, i16 -25856 }, %struct.slookup { i16 3213, i16 -25344 }, %struct.slookup { i16 3088, i16 -24832 }, %struct.slookup { i16 2992, i16 -24320 }, %struct.slookup { i16 2878, i16 -23552 }, %struct.slookup { i16 2769, i16 -22784 }, %struct.slookup { i16 2645, i16 -22016 }, %struct.slookup { i16 2538, i16 -21248 }, %struct.slookup { i16 2441, i16 -20480 }, %struct.slookup { i16 2350, i16 -18944 }, %struct.slookup { i16 2237, i16 -17920 }, %struct.slookup { i16 2137, i16 -16640 }, %struct.slookup { i16 2039, i16 -15104 }, %struct.slookup { i16 1938, i16 -8448 }, %struct.slookup { i16 1927, i16 -256 }], align 2
@gain_channel_agc_iip3_lookup = internal unnamed_addr constant [55 x %struct.slookup] [%struct.slookup { i16 7070, i16 12288 }, %struct.slookup { i16 7028, i16 16384 }, %struct.slookup { i16 7019, i16 17920 }, %struct.slookup { i16 6900, i16 18944 }, %struct.slookup { i16 6811, i16 19712 }, %struct.slookup { i16 6763, i16 20736 }, %struct.slookup { i16 6690, i16 21504 }, %struct.slookup { i16 6644, i16 22272 }, %struct.slookup { i16 6617, i16 23040 }, %struct.slookup { i16 6598, i16 23552 }, %struct.slookup { i16 6462, i16 24320 }, %struct.slookup { i16 6348, i16 24832 }, %struct.slookup { i16 6197, i16 25600 }, %struct.slookup { i16 6154, i16 26368 }, %struct.slookup { i16 6098, i16 26880 }, %struct.slookup { i16 5893, i16 27392 }, %struct.slookup { i16 5812, i16 27648 }, %struct.slookup { i16 5773, i16 28160 }, %struct.slookup { i16 5723, i16 28672 }, %struct.slookup { i16 5661, i16 29184 }, %struct.slookup { i16 5579, i16 29440 }, %struct.slookup { i16 5460, i16 29952 }, %struct.slookup { i16 5308, i16 30464 }, %struct.slookup { i16 5099, i16 30976 }, %struct.slookup { i16 4910, i16 31488 }, %struct.slookup { i16 4800, i16 32000 }, %struct.slookup { i16 4785, i16 32512 }, %struct.slookup { i16 4635, i16 -32512 }, %struct.slookup { i16 4466, i16 -32000 }, %struct.slookup { i16 4314, i16 -31488 }, %struct.slookup { i16 4295, i16 -31232 }, %struct.slookup { i16 4144, i16 -30720 }, %struct.slookup { i16 3920, i16 -30208 }, %struct.slookup { i16 3889, i16 -29696 }, %struct.slookup { i16 3771, i16 -29184 }, %struct.slookup { i16 3655, i16 -28672 }, %struct.slookup { i16 3446, i16 -28160 }, %struct.slookup { i16 3298, i16 -27392 }, %struct.slookup { i16 3083, i16 -26880 }, %struct.slookup { i16 3015, i16 -26368 }, %struct.slookup { i16 2833, i16 -25856 }, %struct.slookup { i16 2746, i16 -25344 }, %struct.slookup { i16 2632, i16 -24832 }, %struct.slookup { i16 2598, i16 -24320 }, %struct.slookup { i16 2480, i16 -23552 }, %struct.slookup { i16 2236, i16 -22784 }, %struct.slookup { i16 2171, i16 -22016 }, %struct.slookup { i16 2060, i16 -21248 }, %struct.slookup { i16 1999, i16 -20480 }, %struct.slookup { i16 1974, i16 -18944 }, %struct.slookup { i16 1820, i16 -17920 }, %struct.slookup { i16 1741, i16 -16640 }, %struct.slookup { i16 1655, i16 -15104 }, %struct.slookup { i16 1444, i16 -8448 }, %struct.slookup { i16 1325, i16 -256 }], align 2
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_stv6111_attach], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @stv6111_attach(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [12 x i8], align 1
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 24) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %50, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.stv, ptr %7, i32 0, i32 1
  store i8 %2, ptr %10, align 4
  store ptr %1, ptr %7, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %11, ptr noundef nonnull align 4 dereferenceable(220) @tuner_ops, i32 220, i1 false)
  %12 = getelementptr %struct.stv, ptr %7, i32 0, i32 2
  store i8 8, ptr %12, align 1
  %13 = getelementptr %struct.stv, ptr %7, i32 0, i32 2, i32 1
  store i8 65, ptr %13, align 2
  %14 = getelementptr %struct.stv, ptr %7, i32 0, i32 2, i32 2
  store i8 -113, ptr %14, align 1
  %15 = getelementptr %struct.stv, ptr %7, i32 0, i32 2, i32 3
  %16 = getelementptr %struct.stv, ptr %7, i32 0, i32 2, i32 4
  store i8 -50, ptr %16, align 1
  %17 = getelementptr %struct.stv, ptr %7, i32 0, i32 2, i32 5
  store i8 84, ptr %17, align 2
  %18 = getelementptr %struct.stv, ptr %7, i32 0, i32 2, i32 6
  store i8 85, ptr %18, align 1
  %19 = getelementptr %struct.stv, ptr %7, i32 0, i32 2, i32 7
  store i8 69, ptr %19, align 4
  %20 = getelementptr %struct.stv, ptr %7, i32 0, i32 2, i32 8
  store i8 70, ptr %20, align 1
  %21 = getelementptr %struct.stv, ptr %7, i32 0, i32 2, i32 9
  store i8 -67, ptr %21, align 2
  %22 = getelementptr %struct.stv, ptr %7, i32 0, i32 2, i32 10
  store i8 17, ptr %22, align 1
  %23 = getelementptr inbounds %struct.stv, ptr %7, i32 0, i32 3
  store i32 16000, ptr %23, align 8
  store i8 2, ptr %15, align 8
  %24 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %9
  %28 = tail call i32 %25(ptr noundef %0, i32 noundef 1) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %27, %9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %31 = getelementptr inbounds i8, ptr %5, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(11) %31, ptr noundef align 1 dereferenceable(11) %12, i32 11, i1 false) #9
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %32 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 12, ptr %32, align 4, !annotation !8
  %33 = zext i8 %2 to i16
  store i16 %33, ptr %4, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %34, align 2
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %35, align 4
  %36 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 1) #9
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %40, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  br label %41

40:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  br label %41

41:                                               ; preds = %40, %38
  %42 = load ptr, ptr %24, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = call i32 %42(ptr noundef %0, i32 noundef 0) #9
  br label %46

46:                                               ; preds = %44, %41
  br i1 %37, label %48, label %47

47:                                               ; preds = %46, %27
  call void @kfree(ptr noundef nonnull %7) #9
  br label %50

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %7, ptr %49, align 4
  br label %50

50:                                               ; preds = %48, %47, %3
  %51 = phi ptr [ null, %47 ], [ %0, %48 ], [ null, %3 ]
  ret ptr %51
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_params(ptr noundef %0) #0 {
  %2 = alloca [2 x %struct.i2c_msg], align 4
  %3 = alloca i8, align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [12 x i8], align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [12 x i8], align 1
  %13 = alloca i8, align 1
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -5
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %20, label %216

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = mul i32 %22, 1000
  %24 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = zext i32 %25 to i64
  %27 = mul nuw nsw i64 %26, 135
  %28 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %27, i32 0) #11, !srcloc !9
  %29 = extractvalue { i64, i32 } %28, 0
  %30 = extractvalue { i64, i32 } %28, 1
  %31 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %27, i64 %29, i32 %30) #11, !srcloc !10
  %32 = extractvalue { i64, i32 } %31, 0
  %33 = lshr i64 %32, 7
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %20
  %39 = tail call i32 %36(ptr noundef %0, i32 noundef 1) #9
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %216

41:                                               ; preds = %38, %20
  %42 = add i32 %34, 5999999
  %43 = udiv i32 %42, 1000000
  %44 = add i32 %23, 500
  %45 = udiv i32 %44, 1000
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #9
  store i8 0, ptr %13, align 1, !annotation !8
  %46 = tail call i32 @llvm.umax.i32(i32 %43, i32 6) #9
  %47 = tail call i32 @llvm.umin.i32(i32 %46, i32 50) #9
  %48 = icmp ult i32 %44, 1300001000
  %49 = select i1 %48, i32 4, i32 2
  %50 = select i1 %48, i8 -128, i8 0
  %51 = mul nuw nsw i32 %49, %45
  %52 = getelementptr inbounds %struct.stv, ptr %15, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = freeze i32 %51
  %55 = freeze i32 %53
  %56 = udiv i32 %54, %55
  %57 = mul i32 %56, %55
  %58 = sub i32 %54, %57
  %59 = zext i32 %58 to i64
  %60 = shl nuw nsw i64 %59, 18
  %61 = icmp ult i32 %58, 16384
  br i1 %61, label %62, label %65, !prof !11

62:                                               ; preds = %41
  %63 = trunc i64 %60 to i32
  %64 = udiv i32 %63, %53
  br label %69

65:                                               ; preds = %41
  %66 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %53, i64 %60) #11, !srcloc !12
  %67 = extractvalue { i64, i64 } %66, 1
  %68 = trunc i64 %67 to i32
  br label %69

69:                                               ; preds = %65, %62
  %70 = phi i32 [ %64, %62 ], [ %68, %65 ]
  %71 = icmp ult i32 %51, 2700000
  br i1 %71, label %83, label %72

72:                                               ; preds = %69
  %73 = icmp ult i32 %51, 2950000
  br i1 %73, label %83, label %74

74:                                               ; preds = %72
  %75 = icmp ult i32 %51, 3300000
  br i1 %75, label %83, label %76

76:                                               ; preds = %74
  %77 = icmp ult i32 %51, 3700000
  br i1 %77, label %83, label %78

78:                                               ; preds = %76
  %79 = icmp ult i32 %51, 4200000
  br i1 %79, label %83, label %80

80:                                               ; preds = %78
  %81 = icmp ult i32 %51, 4800000
  %82 = select i1 %81, i8 -64, i8 -32
  br label %83

83:                                               ; preds = %80, %78, %76, %74, %72, %69
  %84 = phi i8 [ 0, %69 ], [ 32, %72 ], [ 64, %74 ], [ 96, %76 ], [ -96, %78 ], [ %82, %80 ]
  %85 = getelementptr %struct.stv, ptr %15, i32 0, i32 2, i32 2
  %86 = load i8, ptr %85, align 1
  %87 = or i8 %86, -128
  store i8 %87, ptr %85, align 1
  %88 = getelementptr %struct.stv, ptr %15, i32 0, i32 2, i32 3
  %89 = load i8, ptr %88, align 1
  %90 = and i8 %89, 127
  %91 = or i8 %90, %50
  store i8 %91, ptr %88, align 1
  %92 = trunc i32 %56 to i8
  %93 = getelementptr %struct.stv, ptr %15, i32 0, i32 2, i32 4
  store i8 %92, ptr %93, align 1
  %94 = lshr i32 %56, 8
  %95 = and i32 %94, 1
  %96 = shl i32 %70, 1
  %97 = or i32 %96, %95
  %98 = trunc i32 %97 to i8
  %99 = getelementptr %struct.stv, ptr %15, i32 0, i32 2, i32 5
  store i8 %98, ptr %99, align 1
  %100 = lshr i32 %70, 7
  %101 = trunc i32 %100 to i8
  %102 = getelementptr %struct.stv, ptr %15, i32 0, i32 2, i32 6
  store i8 %101, ptr %102, align 1
  %103 = getelementptr %struct.stv, ptr %15, i32 0, i32 2, i32 7
  %104 = load i8, ptr %103, align 1
  %105 = and i8 %104, 24
  %106 = lshr i32 %70, 15
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 7
  %109 = or i8 %84, %108
  %110 = or i8 %109, %105
  store i8 %110, ptr %103, align 1
  %111 = getelementptr %struct.stv, ptr %15, i32 0, i32 2, i32 8
  %112 = load i8, ptr %111, align 1
  %113 = and i8 %112, 3
  %114 = trunc i32 %47 to i8
  %115 = shl nuw i8 %114, 2
  %116 = add i8 %115, -24
  %117 = or i8 %113, %116
  store i8 %117, ptr %111, align 1
  %118 = getelementptr %struct.stv, ptr %15, i32 0, i32 2, i32 9
  %119 = load i8, ptr %118, align 1
  %120 = or i8 %119, 12
  store i8 %120, ptr %118, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #9
  %121 = getelementptr inbounds i8, ptr %12, i32 1
  %122 = getelementptr inbounds i8, ptr %12, i32 9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %122, i8 0, i32 3, i1 false) #9, !annotation !8
  %123 = load i64, ptr %85, align 1
  store i64 %123, ptr %121, align 1
  store i8 2, ptr %12, align 1
  %124 = load ptr, ptr %15, align 4
  %125 = getelementptr inbounds %struct.stv, ptr %15, i32 0, i32 1
  %126 = load i8, ptr %125, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  %127 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 9, ptr %127, align 4, !annotation !8
  %128 = zext i8 %126 to i16
  store i16 %128, ptr %11, align 4
  %129 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %129, align 2
  %130 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %12, ptr %130, align 4
  %131 = call i32 @i2c_transfer(ptr noundef %124, ptr noundef nonnull %11, i32 noundef 1) #9
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %135, label %133

133:                                              ; preds = %83
  %134 = getelementptr inbounds %struct.i2c_adapter, ptr %124, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str) #10
  br label %135

135:                                              ; preds = %133, %83
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #9
  %136 = getelementptr inbounds i8, ptr %8, i32 4
  %137 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  %138 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  %139 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  %141 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  %142 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  br label %143

143:                                              ; preds = %157, %135
  %144 = phi i32 [ 10, %135 ], [ %158, %157 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #9
  store i8 0, ptr %10, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #9
  store i8 9, ptr %9, align 1
  %145 = load ptr, ptr %15, align 4
  %146 = load i8, ptr %125, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %136, i8 0, i32 16, i1 false) #9, !annotation !8
  %147 = zext i8 %146 to i16
  store i16 %147, ptr %8, align 4
  store i16 0, ptr %137, align 2
  store i16 1, ptr %136, align 4
  store ptr %9, ptr %138, align 4
  store i16 %147, ptr %139, align 4
  store i16 1, ptr %140, align 2
  store i16 1, ptr %141, align 4
  store ptr %10, ptr %142, align 4
  %148 = call i32 @i2c_transfer(ptr noundef %145, ptr noundef nonnull %8, i32 noundef 2) #9
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %152, label %150

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.i2c_adapter, ptr %145, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.1) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  br label %156

152:                                              ; preds = %143
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  %153 = load i8, ptr %10, align 1
  %154 = and i8 %153, 12
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %152, %150
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  br label %160

157:                                              ; preds = %152
  call void @usleep_range_state(i32 noundef 4000, i32 noundef 6000, i32 noundef 2) #9
  %158 = add nsw i32 %144, -1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %143

160:                                              ; preds = %157, %156
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 3, ptr %7, align 1
  %161 = load ptr, ptr %15, align 4
  %162 = load i8, ptr %125, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %163 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %163, i8 0, i32 16, i1 false) #9, !annotation !8
  %164 = zext i8 %162 to i16
  store i16 %164, ptr %6, align 4
  %165 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %165, align 2
  store i16 1, ptr %163, align 4
  %166 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %7, ptr %166, align 4
  %167 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %164, ptr %167, align 4
  %168 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %168, align 2
  %169 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %169, align 4
  %170 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %13, ptr %170, align 4
  %171 = call i32 @i2c_transfer(ptr noundef %161, ptr noundef nonnull %6, i32 noundef 2) #9
  %172 = icmp eq i32 %171, 2
  br i1 %172, label %175, label %173

173:                                              ; preds = %160
  %174 = getelementptr inbounds %struct.i2c_adapter, ptr %161, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %174, ptr noundef nonnull @.str.1) #10
  br label %175

175:                                              ; preds = %173, %160
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  %176 = load i8, ptr %13, align 1
  %177 = and i8 %176, 16
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %195, label %179

179:                                              ; preds = %175
  %180 = load i8, ptr %85, align 1
  %181 = and i8 %180, 127
  store i8 %181, ptr %85, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %182 = getelementptr inbounds i8, ptr %5, i32 1
  %183 = getelementptr inbounds i8, ptr %5, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %183, i8 0, i32 10, i1 false) #9, !annotation !8
  store i8 %181, ptr %182, align 1
  store i8 2, ptr %5, align 1
  %184 = load ptr, ptr %15, align 4
  %185 = load i8, ptr %125, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %186 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %186, align 4, !annotation !8
  %187 = zext i8 %185 to i16
  store i16 %187, ptr %4, align 4
  %188 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %188, align 2
  %189 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %189, align 4
  %190 = call i32 @i2c_transfer(ptr noundef %184, ptr noundef nonnull %4, i32 noundef 1) #9
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %194, label %192

192:                                              ; preds = %179
  %193 = getelementptr inbounds %struct.i2c_adapter, ptr %184, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %193, ptr noundef nonnull @.str) #10
  br label %194

194:                                              ; preds = %192, %179
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  br label %195

195:                                              ; preds = %194, %175
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 8, ptr %3, align 1
  %196 = load ptr, ptr %15, align 4
  %197 = load i8, ptr %125, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #9
  %198 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %198, i8 0, i32 16, i1 false) #9, !annotation !8
  %199 = zext i8 %197 to i16
  store i16 %199, ptr %2, align 4
  %200 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %200, align 2
  store i16 1, ptr %198, align 4
  %201 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %3, ptr %201, align 4
  %202 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 1
  store i16 %199, ptr %202, align 4
  %203 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 1, i32 1
  store i16 1, ptr %203, align 2
  %204 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 1, i32 2
  store i16 1, ptr %204, align 4
  %205 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 1, i32 3
  store ptr %13, ptr %205, align 4
  %206 = call i32 @i2c_transfer(ptr noundef %196, ptr noundef nonnull %2, i32 noundef 2) #9
  %207 = icmp eq i32 %206, 2
  br i1 %207, label %210, label %208

208:                                              ; preds = %195
  %209 = getelementptr inbounds %struct.i2c_adapter, ptr %196, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %209, ptr noundef nonnull @.str.1) #10
  br label %210

210:                                              ; preds = %208, %195
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %211 = getelementptr inbounds %struct.stv, ptr %15, i32 0, i32 4
  store i32 %45, ptr %211, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #9
  %212 = load ptr, ptr %35, align 4
  %213 = icmp eq ptr %212, null
  br i1 %213, label %216, label %214

214:                                              ; preds = %210
  %215 = call i32 %212(ptr noundef %0, i32 noundef 0) #9
  br label %216

216:                                              ; preds = %214, %210, %38, %1
  %217 = phi i32 [ -22, %1 ], [ 0, %214 ], [ 0, %210 ], [ 0, %38 ]
  ret i32 %217
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @get_rf_strength(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [2 x %struct.i2c_msg], align 4
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca i8, align 1
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %1, align 2
  %13 = getelementptr %struct.stv, ptr %11, i32 0, i32 2, i32 3
  %14 = load i8, ptr %13, align 1
  %15 = and i8 %14, 96
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %226

17:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #9
  store i8 0, ptr %9, align 1
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call i32 %19(ptr noundef %0, i32 noundef 1) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %80

24:                                               ; preds = %21, %17
  %25 = getelementptr %struct.stv, ptr %11, i32 0, i32 2, i32 2
  %26 = load i8, ptr %25, align 1
  %27 = or i8 %26, 32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #9
  store i16 2, ptr %8, align 2, !annotation !8
  %28 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 %27, ptr %28, align 1
  %29 = load ptr, ptr %11, align 4
  %30 = getelementptr inbounds %struct.stv, ptr %11, i32 0, i32 1
  %31 = load i8, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %32 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %32, align 4, !annotation !8
  %33 = zext i8 %31 to i16
  store i16 %33, ptr %7, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %34, align 2
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %8, ptr %35, align 4
  %36 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %7, i32 noundef 1) #9
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %40, label %38

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.i2c_adapter, ptr %29, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str) #10
  br label %40

40:                                               ; preds = %38, %24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 2, ptr %6, align 1
  %41 = load ptr, ptr %11, align 4
  %42 = load i8, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %43 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %43, i8 0, i32 16, i1 false) #9, !annotation !8
  %44 = zext i8 %42 to i16
  store i16 %44, ptr %5, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %45, align 2
  store i16 1, ptr %43, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %6, ptr %46, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %44, ptr %47, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %48, align 2
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %49, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %9, ptr %50, align 4
  %51 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %5, i32 noundef 2) #9
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %55, label %53

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.i2c_adapter, ptr %41, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.1) #10
  br label %55

55:                                               ; preds = %53, %40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %56 = load i8, ptr %9, align 1
  %57 = and i8 %56, 32
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 2, ptr %4, align 1
  %60 = load ptr, ptr %11, align 4
  %61 = load i8, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  %62 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %62, i8 0, i32 16, i1 false) #9, !annotation !8
  %63 = zext i8 %61 to i16
  store i16 %63, ptr %3, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %64, align 2
  store i16 1, ptr %62, align 4
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %65, align 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1
  store i16 %63, ptr %66, align 4
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 1
  store i16 1, ptr %67, align 2
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 2
  store i16 1, ptr %68, align 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 3
  store ptr %9, ptr %69, align 4
  %70 = call i32 @i2c_transfer(ptr noundef %60, ptr noundef nonnull %3, i32 noundef 2) #9
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %74, label %72

72:                                               ; preds = %59
  %73 = getelementptr inbounds %struct.i2c_adapter, ptr %60, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.1) #10
  br label %74

74:                                               ; preds = %72, %59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  br label %75

75:                                               ; preds = %74, %55
  %76 = load ptr, ptr %18, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = call i32 %76(ptr noundef %0, i32 noundef 0) #9
  br label %80

80:                                               ; preds = %78, %75, %21
  %81 = getelementptr %struct.stv, ptr %11, i32 0, i32 2, i32 2
  %82 = load i8, ptr %81, align 1
  %83 = icmp sgt i8 %82, -1
  %84 = load i8, ptr %9, align 1
  %85 = and i8 %84, 31
  %86 = zext i8 %85 to i16
  %87 = zext i8 %85 to i32
  %88 = trunc i8 %84 to i5
  br i1 %83, label %89, label %131

89:                                               ; preds = %80
  switch i5 %88, label %90 [
    i5 0, label %175
    i5 -1, label %173
  ]

90:                                               ; preds = %107, %89
  %91 = phi i16 [ %109, %107 ], [ 0, %89 ]
  %92 = phi i32 [ %104, %107 ], [ 31, %89 ]
  %93 = phi i32 [ %103, %107 ], [ 0, %89 ]
  %94 = add i32 %93, %92
  %95 = sdiv i32 %94, 2
  %96 = icmp ugt i16 %91, %86
  br i1 %96, label %101, label %97

97:                                               ; preds = %90
  %98 = getelementptr %struct.slookup, ptr @lnagain_nf_lookup, i32 %95, i32 1
  %99 = load i16, ptr %98, align 2
  %100 = icmp ult i16 %99, %86
  br i1 %100, label %101, label %102

101:                                              ; preds = %97, %90
  br label %102

102:                                              ; preds = %101, %97
  %103 = phi i32 [ %95, %101 ], [ %93, %97 ]
  %104 = phi i32 [ %92, %101 ], [ %95, %97 ]
  %105 = sub i32 %104, %103
  %106 = icmp sgt i32 %105, 1
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = getelementptr %struct.slookup, ptr @lnagain_nf_lookup, i32 %103, i32 1
  %109 = load i16, ptr %108, align 2
  br label %90

110:                                              ; preds = %102
  %111 = getelementptr %struct.slookup, ptr @lnagain_nf_lookup, i32 %104, i32 1
  %112 = load i16, ptr %111, align 2
  %113 = getelementptr %struct.slookup, ptr @lnagain_nf_lookup, i32 %103, i32 1
  %114 = load i16, ptr %113, align 2
  %115 = getelementptr %struct.slookup, ptr @lnagain_nf_lookup, i32 %103
  %116 = load i16, ptr %115, align 2
  %117 = sext i16 %116 to i32
  %118 = icmp eq i16 %112, %114
  br i1 %118, label %175, label %119

119:                                              ; preds = %110
  %120 = zext i16 %114 to i32
  %121 = zext i16 %112 to i32
  %122 = sub nsw i32 %121, %120
  %123 = getelementptr %struct.slookup, ptr @lnagain_nf_lookup, i32 %104
  %124 = sub nsw i32 %87, %120
  %125 = load i16, ptr %123, align 2
  %126 = sext i16 %125 to i32
  %127 = sub nsw i32 %126, %117
  %128 = mul i32 %127, %124
  %129 = sdiv i32 %128, %122
  %130 = add i32 %129, %117
  br label %175

131:                                              ; preds = %80
  switch i5 %88, label %132 [
    i5 0, label %175
    i5 -1, label %174
  ]

132:                                              ; preds = %149, %131
  %133 = phi i16 [ %151, %149 ], [ 0, %131 ]
  %134 = phi i32 [ %146, %149 ], [ 31, %131 ]
  %135 = phi i32 [ %145, %149 ], [ 0, %131 ]
  %136 = add i32 %135, %134
  %137 = sdiv i32 %136, 2
  %138 = icmp ugt i16 %133, %86
  br i1 %138, label %143, label %139

139:                                              ; preds = %132
  %140 = getelementptr %struct.slookup, ptr @lnagain_iip3_lookup, i32 %137, i32 1
  %141 = load i16, ptr %140, align 2
  %142 = icmp ult i16 %141, %86
  br i1 %142, label %143, label %144

143:                                              ; preds = %139, %132
  br label %144

144:                                              ; preds = %143, %139
  %145 = phi i32 [ %137, %143 ], [ %135, %139 ]
  %146 = phi i32 [ %134, %143 ], [ %137, %139 ]
  %147 = sub i32 %146, %145
  %148 = icmp sgt i32 %147, 1
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = getelementptr %struct.slookup, ptr @lnagain_iip3_lookup, i32 %145, i32 1
  %151 = load i16, ptr %150, align 2
  br label %132

152:                                              ; preds = %144
  %153 = getelementptr %struct.slookup, ptr @lnagain_iip3_lookup, i32 %146, i32 1
  %154 = load i16, ptr %153, align 2
  %155 = getelementptr %struct.slookup, ptr @lnagain_iip3_lookup, i32 %145, i32 1
  %156 = load i16, ptr %155, align 2
  %157 = getelementptr %struct.slookup, ptr @lnagain_iip3_lookup, i32 %145
  %158 = load i16, ptr %157, align 2
  %159 = sext i16 %158 to i32
  %160 = icmp eq i16 %154, %156
  br i1 %160, label %175, label %161

161:                                              ; preds = %152
  %162 = zext i16 %156 to i32
  %163 = zext i16 %154 to i32
  %164 = sub nsw i32 %163, %162
  %165 = getelementptr %struct.slookup, ptr @lnagain_iip3_lookup, i32 %146
  %166 = sub nsw i32 %87, %162
  %167 = load i16, ptr %165, align 2
  %168 = sext i16 %167 to i32
  %169 = sub nsw i32 %168, %159
  %170 = mul i32 %169, %166
  %171 = sdiv i32 %170, %164
  %172 = add i32 %171, %159
  br label %175

173:                                              ; preds = %89
  br label %175

174:                                              ; preds = %131
  br label %175

175:                                              ; preds = %174, %173, %161, %152, %131, %119, %110, %89
  %176 = phi i32 [ %130, %119 ], [ %117, %110 ], [ 2572, %89 ], [ %172, %161 ], [ %159, %152 ], [ 1548, %131 ], [ 5102, %173 ], [ 4535, %174 ]
  %177 = zext i16 %12 to i32
  %178 = icmp ugt i16 %12, 12288
  br i1 %178, label %179, label %222

179:                                              ; preds = %175
  %180 = icmp ult i16 %12, -9984
  br i1 %180, label %181, label %222

181:                                              ; preds = %198, %179
  %182 = phi i16 [ %200, %198 ], [ 12288, %179 ]
  %183 = phi i32 [ %195, %198 ], [ 51, %179 ]
  %184 = phi i32 [ %194, %198 ], [ 0, %179 ]
  %185 = add i32 %184, %183
  %186 = sdiv i32 %185, 2
  %187 = icmp ugt i16 %182, %12
  br i1 %187, label %192, label %188

188:                                              ; preds = %181
  %189 = getelementptr %struct.slookup, ptr @gain_rfagc_lookup, i32 %186, i32 1
  %190 = load i16, ptr %189, align 2
  %191 = icmp ult i16 %190, %12
  br i1 %191, label %192, label %193

192:                                              ; preds = %188, %181
  br label %193

193:                                              ; preds = %192, %188
  %194 = phi i32 [ %186, %192 ], [ %184, %188 ]
  %195 = phi i32 [ %183, %192 ], [ %186, %188 ]
  %196 = sub i32 %195, %194
  %197 = icmp sgt i32 %196, 1
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  %199 = getelementptr %struct.slookup, ptr @gain_rfagc_lookup, i32 %194, i32 1
  %200 = load i16, ptr %199, align 2
  br label %181

201:                                              ; preds = %193
  %202 = getelementptr %struct.slookup, ptr @gain_rfagc_lookup, i32 %195, i32 1
  %203 = load i16, ptr %202, align 2
  %204 = getelementptr %struct.slookup, ptr @gain_rfagc_lookup, i32 %194, i32 1
  %205 = load i16, ptr %204, align 2
  %206 = getelementptr %struct.slookup, ptr @gain_rfagc_lookup, i32 %194
  %207 = load i16, ptr %206, align 2
  %208 = sext i16 %207 to i32
  %209 = icmp eq i16 %203, %205
  br i1 %209, label %222, label %210

210:                                              ; preds = %201
  %211 = zext i16 %205 to i32
  %212 = zext i16 %203 to i32
  %213 = sub nsw i32 %212, %211
  %214 = getelementptr %struct.slookup, ptr @gain_rfagc_lookup, i32 %195
  %215 = sub nsw i32 %177, %211
  %216 = load i16, ptr %214, align 2
  %217 = sext i16 %216 to i32
  %218 = sub nsw i32 %217, %208
  %219 = mul i32 %218, %215
  %220 = sdiv i32 %219, %213
  %221 = add i32 %220, %208
  br label %222

222:                                              ; preds = %210, %201, %179, %175
  %223 = phi i32 [ %221, %210 ], [ %208, %201 ], [ 4870, %175 ], [ 49, %179 ]
  %224 = add i32 %176, -2400
  %225 = add i32 %224, %223
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  br label %323

226:                                              ; preds = %2
  %227 = getelementptr %struct.stv, ptr %11, i32 0, i32 2, i32 2
  %228 = load i8, ptr %227, align 1
  %229 = icmp sgt i8 %228, -1
  %230 = zext i16 %12 to i32
  %231 = icmp ugt i16 %12, 12288
  br i1 %229, label %232, label %279

232:                                              ; preds = %226
  br i1 %231, label %233, label %276

233:                                              ; preds = %232
  %234 = icmp ult i16 %12, -256
  br i1 %234, label %235, label %276

235:                                              ; preds = %252, %233
  %236 = phi i16 [ %254, %252 ], [ 12288, %233 ]
  %237 = phi i32 [ %249, %252 ], [ 54, %233 ]
  %238 = phi i32 [ %248, %252 ], [ 0, %233 ]
  %239 = add i32 %238, %237
  %240 = sdiv i32 %239, 2
  %241 = icmp ugt i16 %236, %12
  br i1 %241, label %246, label %242

242:                                              ; preds = %235
  %243 = getelementptr %struct.slookup, ptr @gain_channel_agc_nf_lookup, i32 %240, i32 1
  %244 = load i16, ptr %243, align 2
  %245 = icmp ult i16 %244, %12
  br i1 %245, label %246, label %247

246:                                              ; preds = %242, %235
  br label %247

247:                                              ; preds = %246, %242
  %248 = phi i32 [ %240, %246 ], [ %238, %242 ]
  %249 = phi i32 [ %237, %246 ], [ %240, %242 ]
  %250 = sub i32 %249, %248
  %251 = icmp sgt i32 %250, 1
  br i1 %251, label %252, label %255

252:                                              ; preds = %247
  %253 = getelementptr %struct.slookup, ptr @gain_channel_agc_nf_lookup, i32 %248, i32 1
  %254 = load i16, ptr %253, align 2
  br label %235

255:                                              ; preds = %247
  %256 = getelementptr %struct.slookup, ptr @gain_channel_agc_nf_lookup, i32 %249, i32 1
  %257 = load i16, ptr %256, align 2
  %258 = getelementptr %struct.slookup, ptr @gain_channel_agc_nf_lookup, i32 %248, i32 1
  %259 = load i16, ptr %258, align 2
  %260 = getelementptr %struct.slookup, ptr @gain_channel_agc_nf_lookup, i32 %248
  %261 = load i16, ptr %260, align 2
  %262 = sext i16 %261 to i32
  %263 = icmp eq i16 %257, %259
  br i1 %263, label %276, label %264

264:                                              ; preds = %255
  %265 = zext i16 %259 to i32
  %266 = zext i16 %257 to i32
  %267 = sub nsw i32 %266, %265
  %268 = getelementptr %struct.slookup, ptr @gain_channel_agc_nf_lookup, i32 %249
  %269 = sub nsw i32 %230, %265
  %270 = load i16, ptr %268, align 2
  %271 = sext i16 %270 to i32
  %272 = sub nsw i32 %271, %262
  %273 = mul i32 %272, %269
  %274 = sdiv i32 %273, %267
  %275 = add i32 %274, %262
  br label %276

276:                                              ; preds = %264, %255, %233, %232
  %277 = phi i32 [ %275, %264 ], [ %262, %255 ], [ 7082, %232 ], [ 1927, %233 ]
  %278 = add i32 %277, 600
  br label %323

279:                                              ; preds = %226
  br i1 %231, label %280, label %323

280:                                              ; preds = %279
  %281 = icmp ult i16 %12, -256
  br i1 %281, label %282, label %323

282:                                              ; preds = %299, %280
  %283 = phi i16 [ %301, %299 ], [ 12288, %280 ]
  %284 = phi i32 [ %296, %299 ], [ 54, %280 ]
  %285 = phi i32 [ %295, %299 ], [ 0, %280 ]
  %286 = add i32 %285, %284
  %287 = sdiv i32 %286, 2
  %288 = icmp ugt i16 %283, %12
  br i1 %288, label %293, label %289

289:                                              ; preds = %282
  %290 = getelementptr %struct.slookup, ptr @gain_channel_agc_iip3_lookup, i32 %287, i32 1
  %291 = load i16, ptr %290, align 2
  %292 = icmp ult i16 %291, %12
  br i1 %292, label %293, label %294

293:                                              ; preds = %289, %282
  br label %294

294:                                              ; preds = %293, %289
  %295 = phi i32 [ %287, %293 ], [ %285, %289 ]
  %296 = phi i32 [ %284, %293 ], [ %287, %289 ]
  %297 = sub i32 %296, %295
  %298 = icmp sgt i32 %297, 1
  br i1 %298, label %299, label %302

299:                                              ; preds = %294
  %300 = getelementptr %struct.slookup, ptr @gain_channel_agc_iip3_lookup, i32 %295, i32 1
  %301 = load i16, ptr %300, align 2
  br label %282

302:                                              ; preds = %294
  %303 = getelementptr %struct.slookup, ptr @gain_channel_agc_iip3_lookup, i32 %296, i32 1
  %304 = load i16, ptr %303, align 2
  %305 = getelementptr %struct.slookup, ptr @gain_channel_agc_iip3_lookup, i32 %295, i32 1
  %306 = load i16, ptr %305, align 2
  %307 = getelementptr %struct.slookup, ptr @gain_channel_agc_iip3_lookup, i32 %295
  %308 = load i16, ptr %307, align 2
  %309 = sext i16 %308 to i32
  %310 = icmp eq i16 %304, %306
  br i1 %310, label %323, label %311

311:                                              ; preds = %302
  %312 = zext i16 %306 to i32
  %313 = zext i16 %304 to i32
  %314 = sub nsw i32 %313, %312
  %315 = getelementptr %struct.slookup, ptr @gain_channel_agc_iip3_lookup, i32 %296
  %316 = sub nsw i32 %230, %312
  %317 = load i16, ptr %315, align 2
  %318 = sext i16 %317 to i32
  %319 = sub nsw i32 %318, %309
  %320 = mul i32 %319, %316
  %321 = sdiv i32 %320, %314
  %322 = add i32 %321, %309
  br label %323

323:                                              ; preds = %311, %302, %280, %279, %276, %222
  %324 = phi i32 [ %225, %222 ], [ %278, %276 ], [ %322, %311 ], [ %309, %302 ], [ 7070, %279 ], [ 1325, %280 ]
  %325 = getelementptr inbounds %struct.stv, ptr %11, i32 0, i32 4
  %326 = load i32, ptr %325, align 4
  %327 = icmp eq i32 %326, 0
  %328 = udiv i32 %326, 1000
  %329 = shl nuw nsw i32 %328, 1
  %330 = add nsw i32 %329, -3100
  %331 = sdiv i32 %330, -12
  %332 = select i1 %327, i32 0, i32 %331
  %333 = getelementptr %struct.stv, ptr %11, i32 0, i32 2, i32 1
  %334 = load i8, ptr %333, align 1
  %335 = lshr i8 %334, 6
  %336 = zext i8 %335 to i32
  %337 = mul nuw nsw i32 %336, 600
  %338 = add i32 %324, -1300
  %339 = add i32 %338, %337
  %340 = add i32 %339, %332
  %341 = call i32 @llvm.smin.i32(i32 %340, i32 10000)
  %342 = call i32 @llvm.smax.i32(i32 %341, i32 0)
  %343 = trunc i32 %342 to i16
  %344 = sub nuw nsw i16 10000, %343
  store i16 %344, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_bandwidth(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca [2 x %struct.i2c_msg], align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [12 x i8], align 1
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = add i32 %1, 999999
  %11 = udiv i32 %10, 1000000
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 6)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 50)
  %14 = getelementptr %struct.stv, ptr %9, i32 0, i32 2, i32 8
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 3
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %13, 2
  %19 = add nsw i32 %18, -24
  %20 = icmp eq i32 %19, %17
  br i1 %20, label %79, label %21

21:                                               ; preds = %2
  %22 = trunc i32 %19 to i8
  %23 = or i8 %16, %22
  store i8 %23, ptr %14, align 1
  %24 = getelementptr %struct.stv, ptr %9, i32 0, i32 2, i32 9
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, -13
  %27 = or i8 %26, 8
  store i8 %27, ptr %24, align 1
  %28 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = tail call i32 %29(ptr noundef %0, i32 noundef 1) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %79

34:                                               ; preds = %31, %21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %35 = getelementptr inbounds i8, ptr %7, i32 1
  %36 = getelementptr inbounds i8, ptr %7, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %36, i8 0, i32 9, i1 false) #9, !annotation !8
  %37 = load i16, ptr %14, align 1
  store i16 %37, ptr %35, align 1
  store i8 8, ptr %7, align 1
  %38 = load ptr, ptr %9, align 4
  %39 = getelementptr inbounds %struct.stv, ptr %9, i32 0, i32 1
  %40 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %41 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 3, ptr %41, align 4, !annotation !8
  %42 = zext i8 %40 to i16
  store i16 %42, ptr %6, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %43, align 2
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %7, ptr %44, align 4
  %45 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %6, i32 noundef 1) #9
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %49, label %47

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.i2c_adapter, ptr %38, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str) #10
  br label %49

49:                                               ; preds = %47, %34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  %50 = getelementptr inbounds i8, ptr %3, i32 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 1
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 2
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 3
  br label %57

57:                                               ; preds = %71, %49
  %58 = phi i32 [ 10, %49 ], [ %72, %71 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 9, ptr %4, align 1
  %59 = load ptr, ptr %9, align 4
  %60 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %50, i8 0, i32 16, i1 false) #9, !annotation !8
  %61 = zext i8 %60 to i16
  store i16 %61, ptr %3, align 4
  store i16 0, ptr %51, align 2
  store i16 1, ptr %50, align 4
  store ptr %4, ptr %52, align 4
  store i16 %61, ptr %53, align 4
  store i16 1, ptr %54, align 2
  store i16 1, ptr %55, align 4
  store ptr %5, ptr %56, align 4
  %62 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %3, i32 noundef 2) #9
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.i2c_adapter, ptr %59, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.1) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  br label %70

66:                                               ; preds = %57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  %67 = load i8, ptr %5, align 1
  %68 = and i8 %67, 8
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %64
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  br label %74

71:                                               ; preds = %66
  call void @usleep_range_state(i32 noundef 4000, i32 noundef 6000, i32 noundef 2) #9
  %72 = add nsw i32 %58, -1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %57

74:                                               ; preds = %71, %70
  %75 = load ptr, ptr %28, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = call i32 %75(ptr noundef %0, i32 noundef 0) #9
  br label %79

79:                                               ; preds = %77, %74, %31, %2
  %80 = phi i32 [ 0, %2 ], [ 0, %77 ], [ 0, %74 ], [ %32, %31 ]
  ret i32 %80
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

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
!8 = !{!"auto-init"}
!9 = !{i64 852195, i64 852222, i64 852244, i64 852272}
!10 = !{i64 852603, i64 852630, i64 852663, i64 852684, i64 852711, i64 852737}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148337739, i64 2148338019, i64 2148338353, i64 2148338687}
