; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_bitfield = type { i32, ptr }
%struct.anon.124 = type { ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.123 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.123 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nv04_gr = type { %struct.nvkm_gr, [16 x ptr], %struct.spinlock }
%struct.nv04_gr_chan = type { %struct.nvkm_object, ptr, i32, [311 x i32] }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }

@nv04_gr_object = dso_local constant %struct.nvkm_object_func { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv04_gr_object_bind, ptr null }, align 4
@.str = private unnamed_addr constant [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/gr/nv04.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%s: idle timed out with status %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"NOTIFICATION\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"DATA_ERROR\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"PROTECTION_ERROR\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"RANGE_EXCEPTION\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"LIMIT_COLOR\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"LIMIT_ZETA\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"ILLEGAL_MTHD\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"DMA_R_PROTECTION\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"DMA_W_PROTECTION\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"FORMAT_EXCEPTION\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"PATCH_EXCEPTION\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"STATE_INVALID\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"DOUBLE_NOTIFY\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"NOTIFY_IN_USE\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"METHOD_CNT\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"BFR_NOTIFICATION\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"DMA_VTX_PROTECTION\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"DMA_WIDTH_A\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"DMA_WIDTH_B\00", align 1
@nv04_gr_nsource = dso_local constant [20 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.3 }, %struct.nvkm_bitfield { i32 2, ptr @.str.4 }, %struct.nvkm_bitfield { i32 4, ptr @.str.5 }, %struct.nvkm_bitfield { i32 8, ptr @.str.6 }, %struct.nvkm_bitfield { i32 16, ptr @.str.7 }, %struct.nvkm_bitfield { i32 32, ptr @.str.8 }, %struct.nvkm_bitfield { i32 64, ptr @.str.9 }, %struct.nvkm_bitfield { i32 128, ptr @.str.10 }, %struct.nvkm_bitfield { i32 256, ptr @.str.11 }, %struct.nvkm_bitfield { i32 512, ptr @.str.12 }, %struct.nvkm_bitfield { i32 1024, ptr @.str.13 }, %struct.nvkm_bitfield { i32 2048, ptr @.str.14 }, %struct.nvkm_bitfield { i32 4096, ptr @.str.15 }, %struct.nvkm_bitfield { i32 8192, ptr @.str.16 }, %struct.nvkm_bitfield { i32 16384, ptr @.str.17 }, %struct.nvkm_bitfield { i32 32768, ptr @.str.18 }, %struct.nvkm_bitfield { i32 65536, ptr @.str.19 }, %struct.nvkm_bitfield { i32 131072, ptr @.str.20 }, %struct.nvkm_bitfield { i32 262144, ptr @.str.21 }, %struct.nvkm_bitfield zeroinitializer], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nv04_gr = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.124, [42 x %struct.nvkm_sclass] } { ptr null, ptr null, ptr @nv04_gr_init, ptr null, ptr @nv04_gr_intr, ptr null, ptr null, ptr @nv04_gr_chan_new, ptr null, ptr null, ptr null, %struct.anon.124 zeroinitializer, [42 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 18, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 23, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 24, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 25, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 28, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 29, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 30, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 31, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 33, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 48, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 54, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 55, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 56, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 57, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 66, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 67, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 68, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 72, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 74, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 75, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 82, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 83, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 84, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 85, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 87, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 88, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 89, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 90, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 91, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 92, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 93, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 94, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 95, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 96, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 97, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 100, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 101, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 102, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 114, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 118, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 119, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass zeroinitializer] }, align 4
@nv04_gr_intr_name = internal constant [2 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.25 }, %struct.nvkm_bitfield zeroinitializer], align 4
@nv04_gr_nstatus = internal constant [5 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 2048, ptr @.str.26 }, %struct.nvkm_bitfield { i32 4096, ptr @.str.27 }, %struct.nvkm_bitfield { i32 8192, ptr @.str.28 }, %struct.nvkm_bitfield { i32 16384, ptr @.str.29 }, %struct.nvkm_bitfield zeroinitializer], align 4
@.str.23 = private unnamed_addr constant [106 x i8] c"%s: intr %08x [%s] nsource %08x [%s] nstatus %08x [%s] ch %d [%s] subc %d class %04x mthd %04x data %08x\0A\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@nv04_gr_ctx_regs = internal unnamed_addr constant [311 x i32] [i32 4195644, i32 4195652, i32 4195648, i32 4195656, i32 4194656, i32 4194660, i32 4194664, i32 4194668, i32 4194688, i32 4194720, i32 4194752, i32 4194784, i32 4194692, i32 4194724, i32 4194756, i32 4194788, i32 4194696, i32 4194728, i32 4194760, i32 4194792, i32 4194700, i32 4194732, i32 4194764, i32 4194796, i32 4194704, i32 4194736, i32 4194768, i32 4194800, i32 4194708, i32 4194740, i32 4194772, i32 4194804, i32 4194712, i32 4194744, i32 4194776, i32 4194808, i32 4194716, i32 4194748, i32 4194780, i32 4194812, i32 4194676, i32 4198400, i32 4198404, i32 4198408, i32 4198412, i32 4196192, i32 4195904, i32 4195928, i32 4195972, i32 4195908, i32 4195932, i32 4195976, i32 4195912, i32 4195936, i32 4195980, i32 4195916, i32 4195940, i32 4195984, i32 4195920, i32 4195944, i32 4195988, i32 4195924, i32 4195948, i32 4195992, i32 4195952, i32 4195956, i32 4195960, i32 4195964, i32 4195968, i32 4196108, i32 4196112, i32 4195996, i32 4196000, i32 4196132, i32 4196116, i32 4196352, i32 4196356, i32 4196608, i32 4196612, i32 4196616, i32 4196620, i32 4196624, i32 4196628, i32 4196632, i32 4196636, i32 4196640, i32 4196644, i32 4196648, i32 4196652, i32 4196656, i32 4196660, i32 4196664, i32 4196668, i32 4196672, i32 4196676, i32 4196680, i32 4196684, i32 4196688, i32 4196692, i32 4196696, i32 4196700, i32 4196704, i32 4196708, i32 4196712, i32 4196716, i32 4196720, i32 4196724, i32 4196728, i32 4196732, i32 4196736, i32 4196740, i32 4196744, i32 4196748, i32 4196752, i32 4196756, i32 4196760, i32 4196764, i32 4196768, i32 4196772, i32 4196776, i32 4196780, i32 4196784, i32 4196788, i32 4196792, i32 4196796, i32 4196800, i32 4196804, i32 4196808, i32 4196812, i32 4196816, i32 4196820, i32 4196824, i32 4196828, i32 4196832, i32 4196836, i32 4196840, i32 4196844, i32 4196848, i32 4196852, i32 4196856, i32 4196860, i32 4196360, i32 4196364, i32 4196368, i32 4195840, i32 4195844, i32 4196372, i32 4195848, i32 4195852, i32 4196376, i32 4196380, i32 4196384, i32 4196388, i32 4196400, i32 4195596, i32 4195680, i32 4195688, i32 4195684, i32 4195692, i32 4195328, i32 4195456, i32 4195332, i32 4195460, i32 4195336, i32 4195464, i32 4195340, i32 4195468, i32 4195344, i32 4195472, i32 4195348, i32 4195476, i32 4195352, i32 4195480, i32 4195356, i32 4195484, i32 4195360, i32 4195488, i32 4195364, i32 4195492, i32 4195368, i32 4195496, i32 4195372, i32 4195500, i32 4195376, i32 4195504, i32 4195380, i32 4195508, i32 4195384, i32 4195512, i32 4195388, i32 4195516, i32 4195392, i32 4195520, i32 4195396, i32 4195524, i32 4195400, i32 4195528, i32 4195404, i32 4195532, i32 4195408, i32 4195536, i32 4195412, i32 4195540, i32 4195416, i32 4195544, i32 4195420, i32 4195548, i32 4195424, i32 4195552, i32 4195428, i32 4195556, i32 4195432, i32 4195560, i32 4195436, i32 4195564, i32 4195440, i32 4195568, i32 4195444, i32 4195572, i32 4195448, i32 4195576, i32 4195452, i32 4195580, i32 4195636, i32 4195640, i32 4195604, i32 4195608, i32 4195612, i32 4195616, i32 4195620, i32 4195624, i32 4195628, i32 4195632, i32 4197632, i32 4197696, i32 4197760, i32 4197636, i32 4197700, i32 4197764, i32 4197640, i32 4197704, i32 4197768, i32 4197644, i32 4197708, i32 4197772, i32 4197648, i32 4197712, i32 4197776, i32 4197652, i32 4197716, i32 4197780, i32 4197656, i32 4197720, i32 4197784, i32 4197660, i32 4197724, i32 4197788, i32 4197664, i32 4197728, i32 4197792, i32 4197668, i32 4197732, i32 4197796, i32 4197672, i32 4197736, i32 4197800, i32 4197676, i32 4197740, i32 4197804, i32 4197680, i32 4197744, i32 4197808, i32 4197684, i32 4197748, i32 4197812, i32 4197688, i32 4197752, i32 4197816, i32 4197692, i32 4197756, i32 4197820, i32 4195728, i32 4195732, i32 4195736, i32 4195740, i32 4195752, i32 4195756, i32 4195760, i32 4195764, i32 4195776, i32 4195780, i32 4195784, i32 4195788, i32 4195792, i32 4195796, i32 4195800, i32 4195804, i32 4195808, i32 4195708, i32 4195712, i32 4195716, i32 4196196, i32 4196200, i32 4195600, i32 4195696, i32 4195700, i32 4195584, i32 4195588, i32 4195592, i32 4195704, i32 4194444], align 4
@.str.25 = private unnamed_addr constant [7 x i8] c"NOTIFY\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"STATE_IN_USE\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"INVALID_STATE\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"BAD_ARGUMENT\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"PROTECTION_FAULT\00", align 1
@nv04_gr_chan = internal constant %struct.nvkm_object_func { ptr @nv04_gr_chan_dtor, ptr null, ptr @nv04_gr_chan_fini, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv04_gr_object_bind(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_engine, ptr %6, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @nvkm_gpuobj_new(ptr noundef %8, i32 noundef 16, i32 noundef %2, i1 noundef zeroext false, ptr noundef %1, ptr noundef %3) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %4
  %12 = load ptr, ptr %3, align 4
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr %14(ptr noundef %12) #6
  %16 = load ptr, ptr %3, align 4
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  tail call void %19(ptr noundef %16, i32 noundef 0, i32 noundef %21) #6
  %22 = load ptr, ptr %3, align 4
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %22, i32 noundef 4, i32 noundef 0) #6
  %26 = load ptr, ptr %3, align 4
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  tail call void %29(ptr noundef %26, i32 noundef 8, i32 noundef 0) #6
  %30 = load ptr, ptr %3, align 4
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  tail call void %33(ptr noundef %30, i32 noundef 12, i32 noundef 0) #6
  %34 = load ptr, ptr %3, align 4
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void %37(ptr noundef %34) #6
  br label %38

38:                                               ; preds = %11, %4
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nv04_gr_idle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 15
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 64
  %8 = select i1 %7, i32 -16385, i32 -1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !8
  call void @nvkm_timer_wait_init(ptr noundef %4, i64 noundef 2000000000, ptr noundef nonnull %2) #6
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  br label %10

10:                                               ; preds = %16, %1
  %11 = load ptr, ptr %9, align 4
  %12 = getelementptr i8, ptr %11, i32 4196096
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %14 = and i32 %13, %8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %49, label %16

16:                                               ; preds = %10
  %17 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #6
  %18 = icmp sgt i64 %17, -1
  br i1 %18, label %10, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.nvkm_timer, ptr %20, i32 0, i32 1, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = call ptr @dev_driver_string(ptr noundef %24) #6
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds %struct.nvkm_timer, ptr %26, i32 0, i32 1, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = load ptr, ptr %30, align 4
  br label %36

36:                                               ; preds = %34, %19
  %37 = phi ptr [ %35, %34 ], [ %32, %19 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1223, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %25, ptr noundef %37) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #6
  %38 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %3, align 4
  %43 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  %46 = load ptr, ptr %9, align 4
  %47 = getelementptr i8, ptr %46, i32 4196096
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.2, ptr noundef %45, i32 noundef %48) #7
  br label %50

49:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #6
  br label %50

50:                                               ; preds = %49, %41, %36
  ret i1 %15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_gr_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 160) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nv04_gr, ptr %6, i32 0, i32 2
  store i32 0, ptr %9, align 4
  store ptr %6, ptr %3, align 4
  %10 = tail call i32 @nvkm_gr_ctor(ptr noundef nonnull @nv04_gr, ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef nonnull %6) #6
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ %10, %8 ], [ -12, %4 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gr_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv04_gr_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4194560
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 -1) #6, !srcloc !12
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 4194624
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 -1) #6, !srcloc !12
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 4195592
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #6, !srcloc !12
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 4195704
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #6, !srcloc !12
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 4194432
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 305250304) #6, !srcloc !12
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 4194436
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 1913721088) #6, !srcloc !12
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 4194440
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 299233393) #6, !srcloc !12
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i8, ptr %19, i32 4194444
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 -254476495) #6, !srcloc !12
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i8, ptr %21, i32 4196112
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 -1) #6, !srcloc !12
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 4194672
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 268435712) #6, !srcloc !12
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr i8, ptr %25, i32 4194676
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %28 = and i32 %27, 16777215
  %29 = or i32 %28, 251658240
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr i8, ptr %30, i32 4194676
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #6, !srcloc !12
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr i8, ptr %32, i32 4196368
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 0) #6, !srcloc !12
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr i8, ptr %34, i32 4195848
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 -1) #6, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_gr_intr(ptr noundef %0) #0 {
  %2 = alloca [128 x i8], align 1
  %3 = alloca [128 x i8], align 1
  %4 = alloca [128 x i8], align 1
  %5 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 4194560
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr i8, ptr %11, i32 4194568
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr i8, ptr %14, i32 4194564
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr i8, ptr %17, i32 4196100
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %20 = lshr i32 %19, 24
  %21 = and i32 %20, 15
  %22 = lshr i32 %19, 13
  %23 = and i32 %22, 7
  %24 = and i32 %19, 8188
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr i8, ptr %25, i32 4196104
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %28 = load ptr, ptr %7, align 4
  %29 = shl nuw nsw i32 %23, 2
  %30 = or i32 %29, 4194688
  %31 = getelementptr i8, ptr %28, i32 %30
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %33 = and i32 %32, 255
  %34 = load ptr, ptr %7, align 4
  %35 = getelementptr i8, ptr %34, i32 4194668
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %37 = shl i32 %36, 4
  %38 = and i32 %37, 1048560
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %2, i8 0, i32 128, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %3, i8 0, i32 128, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %4, i8 0, i32 128, i1 false), !annotation !8
  %39 = getelementptr inbounds %struct.nv04_gr, ptr %0, i32 0, i32 2
  %40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %39) #6
  %41 = getelementptr %struct.nv04_gr, ptr %0, i32 0, i32 1, i32 %21
  %42 = load ptr, ptr %41, align 4
  %43 = and i32 %10, 1
  %44 = icmp ne i32 %43, 0
  %45 = icmp ne ptr %42, null
  %46 = select i1 %44, i1 %45, i1 false
  %47 = xor i1 %46, true
  %48 = and i32 %13, 64
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %47, i1 true, i1 %49
  br i1 %50, label %78, label %51

51:                                               ; preds = %1
  %52 = load ptr, ptr %7, align 4
  %53 = or i32 %38, 7340032
  %54 = getelementptr i8, ptr %52, i32 %53
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %56 = trunc i32 %55 to i8
  switch i8 %56, label %57 [
    i8 28, label %73
    i8 29, label %73
    i8 30, label %73
    i8 31, label %59
    i8 33, label %60
    i8 54, label %61
    i8 55, label %62
    i8 72, label %63
    i8 74, label %64
    i8 75, label %65
    i8 83, label %66
    i8 92, label %67
    i8 93, label %67
    i8 94, label %67
    i8 95, label %68
    i8 96, label %69
    i8 97, label %70
    i8 118, label %71
    i8 119, label %72
  ]

57:                                               ; preds = %51
  %58 = and i32 %10, -2
  br label %78

59:                                               ; preds = %51
  br label %73

60:                                               ; preds = %51
  br label %73

61:                                               ; preds = %51
  br label %73

62:                                               ; preds = %51
  br label %73

63:                                               ; preds = %51
  br label %73

64:                                               ; preds = %51
  br label %73

65:                                               ; preds = %51
  br label %73

66:                                               ; preds = %51
  br label %73

67:                                               ; preds = %51, %51, %51
  br label %73

68:                                               ; preds = %51
  br label %73

69:                                               ; preds = %51
  br label %73

70:                                               ; preds = %51
  br label %73

71:                                               ; preds = %51
  br label %73

72:                                               ; preds = %51
  br label %73

73:                                               ; preds = %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %51, %51, %51
  %74 = phi ptr [ @nv04_gr_mthd_sifm, %72 ], [ @nv04_gr_mthd_sifc, %71 ], [ @nv04_gr_mthd_ifc, %70 ], [ @nv04_gr_mthd_iifc, %69 ], [ @nv04_gr_mthd_blit, %68 ], [ @nv04_gr_mthd_prim, %67 ], [ @nv04_gr_mthd_surf3d, %66 ], [ @nv03_gr_mthd_gdi, %65 ], [ @nv04_gr_mthd_gdi, %64 ], [ @nv03_gr_mthd_ttri, %63 ], [ @nv03_gr_mthd_sifm, %62 ], [ @nv03_gr_mthd_sifc, %61 ], [ @nv01_gr_mthd_ifc, %60 ], [ @nv01_gr_mthd_blit, %59 ], [ @nv01_gr_mthd_prim, %51 ], [ @nv01_gr_mthd_prim, %51 ], [ @nv01_gr_mthd_prim, %51 ]
  %75 = tail call zeroext i1 %74(ptr noundef %6, i32 noundef %38, i32 noundef %24, i32 noundef %27) #6
  %76 = and i32 %10, -2
  %77 = select i1 %75, i32 %10, i32 %76
  br label %78

78:                                               ; preds = %73, %57, %1
  %79 = phi i32 [ %10, %1 ], [ %58, %57 ], [ %77, %73 ]
  %80 = and i32 %10, 4096
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %175, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %7, align 4
  %84 = getelementptr i8, ptr %83, i32 4194560
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 4096) #6, !srcloc !12
  %85 = and i32 %10, -4097
  %86 = and i32 %79, -4097
  %87 = load ptr, ptr %5, align 4
  %88 = tail call zeroext i1 @nv04_gr_idle(ptr noundef %0) #6
  %89 = load ptr, ptr %5, align 4
  %90 = getelementptr inbounds %struct.nvkm_device, ptr %89, i32 0, i32 11
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr i8, ptr %91, i32 4194672
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %94 = and i32 %93, 65536
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %132, label %96

96:                                               ; preds = %82
  %97 = load ptr, ptr %90, align 4
  %98 = getelementptr i8, ptr %97, i32 4194676
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %100 = icmp ult i32 %99, 268435456
  br i1 %100, label %101, label %132

101:                                              ; preds = %96
  %102 = lshr i32 %99, 24
  %103 = getelementptr %struct.nv04_gr, ptr %0, i32 0, i32 1, i32 %102
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %132, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.nv04_gr_chan, ptr %104, i32 0, i32 1
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds %struct.nvkm_gr, ptr %108, i32 0, i32 1, i32 1, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.nvkm_device, ptr %110, i32 0, i32 11
  br label %112

112:                                              ; preds = %112, %106
  %113 = phi i32 [ 0, %106 ], [ %120, %112 ]
  %114 = load ptr, ptr %111, align 4
  %115 = getelementptr [311 x i32], ptr @nv04_gr_ctx_regs, i32 0, i32 %113
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr i8, ptr %114, i32 %116
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %119 = getelementptr %struct.nv04_gr_chan, ptr %104, i32 0, i32 3, i32 %113
  store i32 %118, ptr %119, align 4
  %120 = add nuw nsw i32 %113, 1
  %121 = icmp eq i32 %120, 311
  br i1 %121, label %122, label %112

122:                                              ; preds = %112
  %123 = load ptr, ptr %111, align 4
  %124 = getelementptr i8, ptr %123, i32 4194672
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 268435456) #6, !srcloc !12
  %125 = load ptr, ptr %111, align 4
  %126 = getelementptr i8, ptr %125, i32 4194676
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %128 = and i32 %127, 16777215
  %129 = or i32 %128, 251658240
  %130 = load ptr, ptr %111, align 4
  %131 = getelementptr i8, ptr %130, i32 4194676
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %129) #6, !srcloc !12
  br label %132

132:                                              ; preds = %122, %101, %96, %82
  %133 = getelementptr inbounds %struct.nvkm_device, ptr %87, i32 0, i32 11
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr i8, ptr %134, i32 4196100
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %137 = lshr i32 %136, 24
  %138 = and i32 %137, 15
  %139 = getelementptr %struct.nv04_gr, ptr %0, i32 0, i32 1, i32 %138
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %175, label %142

142:                                              ; preds = %132
  %143 = getelementptr inbounds %struct.nv04_gr_chan, ptr %140, i32 0, i32 1
  %144 = load ptr, ptr %143, align 8
  %145 = getelementptr inbounds %struct.nvkm_gr, ptr %144, i32 0, i32 1, i32 1, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.nvkm_device, ptr %146, i32 0, i32 11
  br label %148

148:                                              ; preds = %148, %142
  %149 = phi i32 [ 0, %142 ], [ %156, %148 ]
  %150 = getelementptr %struct.nv04_gr_chan, ptr %140, i32 0, i32 3, i32 %149
  %151 = load i32, ptr %150, align 4
  %152 = load ptr, ptr %147, align 4
  %153 = getelementptr [311 x i32], ptr @nv04_gr_ctx_regs, i32 0, i32 %149
  %154 = load i32, ptr %153, align 4
  %155 = getelementptr i8, ptr %152, i32 %154
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %151) #6, !srcloc !12
  %156 = add nuw nsw i32 %149, 1
  %157 = icmp eq i32 %156, 311
  br i1 %157, label %158, label %148

158:                                              ; preds = %148
  %159 = load ptr, ptr %147, align 4
  %160 = getelementptr i8, ptr %159, i32 4194672
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 268501248) #6, !srcloc !12
  %161 = load ptr, ptr %147, align 4
  %162 = getelementptr i8, ptr %161, i32 4194676
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %164 = and i32 %163, 16777215
  %165 = shl nuw nsw i32 %138, 24
  %166 = or i32 %164, %165
  %167 = load ptr, ptr %147, align 4
  %168 = getelementptr i8, ptr %167, i32 4194676
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 %166) #6, !srcloc !12
  %169 = load ptr, ptr %147, align 4
  %170 = getelementptr i8, ptr %169, i32 4196180
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %172 = and i32 %171, 1048575
  %173 = load ptr, ptr %147, align 4
  %174 = getelementptr i8, ptr %173, i32 4196180
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 %172) #6, !srcloc !12
  br label %175

175:                                              ; preds = %158, %132, %78
  %176 = phi i32 [ %10, %78 ], [ %85, %132 ], [ %85, %158 ]
  %177 = phi i32 [ %79, %78 ], [ %86, %132 ], [ %86, %158 ]
  %178 = load ptr, ptr %7, align 4
  %179 = getelementptr i8, ptr %178, i32 4194560
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 %176) #6, !srcloc !12
  %180 = load ptr, ptr %7, align 4
  %181 = getelementptr i8, ptr %180, i32 4196128
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 1) #6, !srcloc !12
  %182 = icmp eq i32 %177, 0
  br i1 %182, label %198, label %183

183:                                              ; preds = %175
  call void @nvkm_snprintbf(ptr noundef nonnull %2, i32 noundef 128, ptr noundef nonnull @nv04_gr_intr_name, i32 noundef %177) #6
  call void @nvkm_snprintbf(ptr noundef nonnull %3, i32 noundef 128, ptr noundef nonnull @nv04_gr_nsource, i32 noundef %13) #6
  call void @nvkm_snprintbf(ptr noundef nonnull %4, i32 noundef 128, ptr noundef nonnull @nv04_gr_nstatus, i32 noundef %16) #6
  %184 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %185 = load i32, ptr %184, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %198, label %187

187:                                              ; preds = %183
  %188 = load ptr, ptr %5, align 4
  %189 = getelementptr inbounds %struct.nvkm_device, ptr %188, i32 0, i32 2
  %190 = load ptr, ptr %189, align 8
  %191 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  br i1 %45, label %192, label %196

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.nvkm_object, ptr %42, i32 0, i32 1
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr inbounds %struct.nvkm_client, ptr %194, i32 0, i32 1
  br label %196

196:                                              ; preds = %192, %187
  %197 = phi ptr [ %195, %192 ], [ @.str.24, %187 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %190, ptr noundef nonnull @.str.23, ptr noundef %191, i32 noundef %177, ptr noundef nonnull %2, i32 noundef %13, ptr noundef nonnull %3, i32 noundef %16, ptr noundef nonnull %4, i32 noundef %21, ptr noundef %197, i32 noundef %23, i32 noundef %33, i32 noundef %24, i32 noundef %27) #7
  br label %198

198:                                              ; preds = %196, %183, %175
  call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %40) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv04_gr_chan_new(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1328) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nv04_gr_chan, ptr noundef %2, ptr noundef nonnull %6) #6
  %9 = getelementptr inbounds %struct.nv04_gr_chan, ptr %6, i32 0, i32 1
  store ptr %0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %1, i32 0, i32 5
  %11 = load i16, ptr %10, align 8
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.nv04_gr_chan, ptr %6, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  store ptr %6, ptr %3, align 4
  %14 = getelementptr %struct.nv04_gr_chan, ptr %6, i32 0, i32 3, i32 310
  store i32 -86704335, ptr %14, align 8
  %15 = getelementptr inbounds %struct.nv04_gr, ptr %0, i32 0, i32 2
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #6
  %17 = load i32, ptr %13, align 4
  %18 = getelementptr %struct.nv04_gr, ptr %0, i32 0, i32 1, i32 %17
  store ptr %6, ptr %18, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #6
  br label %19

19:                                               ; preds = %8, %4
  %20 = phi i32 [ 0, %8 ], [ -12, %4 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_snprintbf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv01_gr_mthd_prim(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  switch i32 %2, label %13 [
    i32 388, label %10
    i32 392, label %5
    i32 396, label %6
    i32 400, label %7
    i32 404, label %8
    i32 764, label %9
  ]

5:                                                ; preds = %4
  br label %10

6:                                                ; preds = %4
  br label %10

7:                                                ; preds = %4
  br label %10

8:                                                ; preds = %4
  br label %10

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9, %8, %7, %6, %5, %4
  %11 = phi ptr [ @nv04_gr_mthd_set_operation, %9 ], [ @nv04_gr_mthd_bind_surf_dst, %8 ], [ @nv04_gr_mthd_bind_beta1, %7 ], [ @nv04_gr_mthd_bind_rop, %6 ], [ @nv01_gr_mthd_bind_patt, %5 ], [ @nv01_gr_mthd_bind_clip, %4 ]
  %12 = tail call zeroext i1 %11(ptr noundef %0, i32 noundef %1, i32 noundef %3) #6
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi i1 [ %12, %10 ], [ false, %4 ]
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv01_gr_mthd_blit(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  switch i32 %2, label %15 [
    i32 388, label %12
    i32 392, label %5
    i32 396, label %6
    i32 400, label %7
    i32 404, label %8
    i32 408, label %9
    i32 412, label %10
    i32 764, label %11
  ]

5:                                                ; preds = %4
  br label %12

6:                                                ; preds = %4
  br label %12

7:                                                ; preds = %4
  br label %12

8:                                                ; preds = %4
  br label %12

9:                                                ; preds = %4
  br label %12

10:                                               ; preds = %4
  br label %12

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %11, %10, %9, %8, %7, %6, %5, %4
  %13 = phi ptr [ @nv04_gr_mthd_set_operation, %11 ], [ @nv04_gr_mthd_bind_surf_src, %10 ], [ @nv04_gr_mthd_bind_surf_dst, %9 ], [ @nv04_gr_mthd_bind_beta1, %8 ], [ @nv04_gr_mthd_bind_rop, %7 ], [ @nv01_gr_mthd_bind_patt, %6 ], [ @nv01_gr_mthd_bind_clip, %5 ], [ @nv01_gr_mthd_bind_chroma, %4 ]
  %14 = tail call zeroext i1 %13(ptr noundef %0, i32 noundef %1, i32 noundef %3) #6
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi i1 [ %14, %12 ], [ false, %4 ]
  ret i1 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv01_gr_mthd_ifc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  switch i32 %2, label %14 [
    i32 388, label %11
    i32 392, label %5
    i32 396, label %6
    i32 400, label %7
    i32 404, label %8
    i32 408, label %9
    i32 764, label %10
  ]

5:                                                ; preds = %4
  br label %11

6:                                                ; preds = %4
  br label %11

7:                                                ; preds = %4
  br label %11

8:                                                ; preds = %4
  br label %11

9:                                                ; preds = %4
  br label %11

10:                                               ; preds = %4
  br label %11

11:                                               ; preds = %10, %9, %8, %7, %6, %5, %4
  %12 = phi ptr [ @nv04_gr_mthd_set_operation, %10 ], [ @nv04_gr_mthd_bind_surf_dst, %9 ], [ @nv04_gr_mthd_bind_beta1, %8 ], [ @nv04_gr_mthd_bind_rop, %7 ], [ @nv01_gr_mthd_bind_patt, %6 ], [ @nv01_gr_mthd_bind_clip, %5 ], [ @nv01_gr_mthd_bind_chroma, %4 ]
  %13 = tail call zeroext i1 %12(ptr noundef %0, i32 noundef %1, i32 noundef %3) #6
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi i1 [ %13, %11 ], [ false, %4 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv03_gr_mthd_sifc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  switch i32 %2, label %13 [
    i32 388, label %10
    i32 392, label %5
    i32 396, label %6
    i32 400, label %7
    i32 404, label %8
    i32 764, label %9
  ]

5:                                                ; preds = %4
  br label %10

6:                                                ; preds = %4
  br label %10

7:                                                ; preds = %4
  br label %10

8:                                                ; preds = %4
  br label %10

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9, %8, %7, %6, %5, %4
  %11 = phi ptr [ @nv04_gr_mthd_set_operation, %9 ], [ @nv04_gr_mthd_bind_surf_dst, %8 ], [ @nv04_gr_mthd_bind_beta1, %7 ], [ @nv04_gr_mthd_bind_rop, %6 ], [ @nv01_gr_mthd_bind_patt, %5 ], [ @nv01_gr_mthd_bind_chroma, %4 ]
  %12 = tail call zeroext i1 %11(ptr noundef %0, i32 noundef %1, i32 noundef %3) #6
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi i1 [ %12, %10 ], [ false, %4 ]
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv03_gr_mthd_sifm(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  switch i32 %2, label %12 [
    i32 392, label %9
    i32 396, label %5
    i32 400, label %6
    i32 404, label %7
    i32 772, label %8
  ]

5:                                                ; preds = %4
  br label %9

6:                                                ; preds = %4
  br label %9

7:                                                ; preds = %4
  br label %9

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %8, %7, %6, %5, %4
  %10 = phi ptr [ @nv04_gr_mthd_set_operation, %8 ], [ @nv04_gr_mthd_bind_surf_dst, %7 ], [ @nv04_gr_mthd_bind_beta1, %6 ], [ @nv04_gr_mthd_bind_rop, %5 ], [ @nv01_gr_mthd_bind_patt, %4 ]
  %11 = tail call zeroext i1 %10(ptr noundef %0, i32 noundef %1, i32 noundef %3) #6
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi i1 [ %11, %9 ], [ false, %4 ]
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv03_gr_mthd_ttri(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  switch i32 %2, label %10 [
    i32 392, label %7
    i32 396, label %5
    i32 400, label %6
  ]

5:                                                ; preds = %4
  br label %7

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6, %5, %4
  %8 = phi ptr [ @nv04_gr_mthd_bind_surf_zeta, %6 ], [ @nv04_gr_mthd_bind_surf_color, %5 ], [ @nv01_gr_mthd_bind_clip, %4 ]
  %9 = tail call zeroext i1 %8(ptr noundef %0, i32 noundef %1, i32 noundef %3) #6, !callees !13
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi i1 [ %9, %7 ], [ false, %4 ]
  ret i1 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_gdi(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  switch i32 %2, label %13 [
    i32 392, label %10
    i32 396, label %5
    i32 400, label %6
    i32 404, label %7
    i32 408, label %8
    i32 764, label %9
  ]

5:                                                ; preds = %4
  br label %10

6:                                                ; preds = %4
  br label %10

7:                                                ; preds = %4
  br label %10

8:                                                ; preds = %4
  br label %10

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9, %8, %7, %6, %5, %4
  %11 = phi ptr [ @nv04_gr_mthd_set_operation, %9 ], [ @nv04_gr_mthd_bind_surf2d, %8 ], [ @nv04_gr_mthd_bind_beta4, %7 ], [ @nv04_gr_mthd_bind_beta1, %6 ], [ @nv04_gr_mthd_bind_rop, %5 ], [ @nv04_gr_mthd_bind_patt, %4 ]
  %12 = tail call zeroext i1 %11(ptr noundef %0, i32 noundef %1, i32 noundef %3) #6
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi i1 [ %12, %10 ], [ false, %4 ]
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv03_gr_mthd_gdi(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  switch i32 %2, label %12 [
    i32 388, label %9
    i32 392, label %5
    i32 396, label %6
    i32 400, label %7
    i32 764, label %8
  ]

5:                                                ; preds = %4
  br label %9

6:                                                ; preds = %4
  br label %9

7:                                                ; preds = %4
  br label %9

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %8, %7, %6, %5, %4
  %10 = phi ptr [ @nv04_gr_mthd_set_operation, %8 ], [ @nv04_gr_mthd_bind_surf_dst, %7 ], [ @nv04_gr_mthd_bind_beta1, %6 ], [ @nv04_gr_mthd_bind_rop, %5 ], [ @nv01_gr_mthd_bind_patt, %4 ]
  %11 = tail call zeroext i1 %10(ptr noundef %0, i32 noundef %1, i32 noundef %3) #6
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi i1 [ %11, %9 ], [ false, %4 ]
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_surf3d(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  switch i32 %2, label %9 [
    i32 760, label %6
    i32 764, label %5
  ]

5:                                                ; preds = %4
  br label %6

6:                                                ; preds = %5, %4
  %7 = phi ptr [ @nv04_gr_mthd_surf3d_clip_v, %5 ], [ @nv04_gr_mthd_surf3d_clip_h, %4 ]
  %8 = tail call zeroext i1 %7(ptr noundef %0, i32 noundef %1, i32 noundef %3) #6, !callees !14
  br label %9

9:                                                ; preds = %6, %4
  %10 = phi i1 [ %8, %6 ], [ false, %4 ]
  ret i1 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_prim(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  switch i32 %2, label %14 [
    i32 388, label %11
    i32 392, label %5
    i32 396, label %6
    i32 400, label %7
    i32 404, label %8
    i32 408, label %9
    i32 764, label %10
  ]

5:                                                ; preds = %4
  br label %11

6:                                                ; preds = %4
  br label %11

7:                                                ; preds = %4
  br label %11

8:                                                ; preds = %4
  br label %11

9:                                                ; preds = %4
  br label %11

10:                                               ; preds = %4
  br label %11

11:                                               ; preds = %10, %9, %8, %7, %6, %5, %4
  %12 = phi ptr [ @nv04_gr_mthd_set_operation, %10 ], [ @nv04_gr_mthd_bind_surf2d, %9 ], [ @nv04_gr_mthd_bind_beta4, %8 ], [ @nv04_gr_mthd_bind_beta1, %7 ], [ @nv04_gr_mthd_bind_rop, %6 ], [ @nv04_gr_mthd_bind_patt, %5 ], [ @nv01_gr_mthd_bind_clip, %4 ]
  %13 = tail call zeroext i1 %12(ptr noundef %0, i32 noundef %1, i32 noundef %3) #6
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi i1 [ %13, %11 ], [ false, %4 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_blit(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  switch i32 %2, label %15 [
    i32 388, label %12
    i32 392, label %5
    i32 396, label %6
    i32 400, label %7
    i32 404, label %8
    i32 408, label %9
    i32 412, label %10
    i32 764, label %11
  ]

5:                                                ; preds = %4
  br label %12

6:                                                ; preds = %4
  br label %12

7:                                                ; preds = %4
  br label %12

8:                                                ; preds = %4
  br label %12

9:                                                ; preds = %4
  br label %12

10:                                               ; preds = %4
  br label %12

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %11, %10, %9, %8, %7, %6, %5, %4
  %13 = phi ptr [ @nv04_gr_mthd_set_operation, %11 ], [ @nv04_gr_mthd_bind_surf2d, %10 ], [ @nv04_gr_mthd_bind_beta4, %9 ], [ @nv04_gr_mthd_bind_beta1, %8 ], [ @nv04_gr_mthd_bind_rop, %7 ], [ @nv04_gr_mthd_bind_patt, %6 ], [ @nv01_gr_mthd_bind_clip, %5 ], [ @nv01_gr_mthd_bind_chroma, %4 ]
  %14 = tail call zeroext i1 %13(ptr noundef %0, i32 noundef %1, i32 noundef %3) #6
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi i1 [ %14, %12 ], [ false, %4 ]
  ret i1 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_iifc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  switch i32 %2, label %15 [
    i32 392, label %12
    i32 396, label %5
    i32 400, label %6
    i32 404, label %7
    i32 408, label %8
    i32 412, label %9
    i32 416, label %10
    i32 996, label %11
  ]

5:                                                ; preds = %4
  br label %12

6:                                                ; preds = %4
  br label %12

7:                                                ; preds = %4
  br label %12

8:                                                ; preds = %4
  br label %12

9:                                                ; preds = %4
  br label %12

10:                                               ; preds = %4
  br label %12

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %11, %10, %9, %8, %7, %6, %5, %4
  %13 = phi ptr [ @nv04_gr_mthd_set_operation, %11 ], [ @nv04_gr_mthd_bind_surf2d_swzsurf, %10 ], [ @nv04_gr_mthd_bind_beta4, %9 ], [ @nv04_gr_mthd_bind_beta1, %8 ], [ @nv04_gr_mthd_bind_rop, %7 ], [ @nv04_gr_mthd_bind_patt, %6 ], [ @nv01_gr_mthd_bind_clip, %5 ], [ @nv01_gr_mthd_bind_chroma, %4 ]
  %14 = tail call zeroext i1 %13(ptr noundef %0, i32 noundef %1, i32 noundef %3) #6
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi i1 [ %14, %12 ], [ false, %4 ]
  ret i1 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_ifc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  switch i32 %2, label %15 [
    i32 388, label %12
    i32 392, label %5
    i32 396, label %6
    i32 400, label %7
    i32 404, label %8
    i32 408, label %9
    i32 412, label %10
    i32 764, label %11
  ]

5:                                                ; preds = %4
  br label %12

6:                                                ; preds = %4
  br label %12

7:                                                ; preds = %4
  br label %12

8:                                                ; preds = %4
  br label %12

9:                                                ; preds = %4
  br label %12

10:                                               ; preds = %4
  br label %12

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %11, %10, %9, %8, %7, %6, %5, %4
  %13 = phi ptr [ @nv04_gr_mthd_set_operation, %11 ], [ @nv04_gr_mthd_bind_surf2d, %10 ], [ @nv04_gr_mthd_bind_beta4, %9 ], [ @nv04_gr_mthd_bind_beta1, %8 ], [ @nv04_gr_mthd_bind_rop, %7 ], [ @nv04_gr_mthd_bind_patt, %6 ], [ @nv01_gr_mthd_bind_clip, %5 ], [ @nv01_gr_mthd_bind_chroma, %4 ]
  %14 = tail call zeroext i1 %13(ptr noundef %0, i32 noundef %1, i32 noundef %3) #6
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi i1 [ %14, %12 ], [ false, %4 ]
  ret i1 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_sifc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  switch i32 %2, label %14 [
    i32 388, label %11
    i32 392, label %5
    i32 396, label %6
    i32 400, label %7
    i32 404, label %8
    i32 408, label %9
    i32 764, label %10
  ]

5:                                                ; preds = %4
  br label %11

6:                                                ; preds = %4
  br label %11

7:                                                ; preds = %4
  br label %11

8:                                                ; preds = %4
  br label %11

9:                                                ; preds = %4
  br label %11

10:                                               ; preds = %4
  br label %11

11:                                               ; preds = %10, %9, %8, %7, %6, %5, %4
  %12 = phi ptr [ @nv04_gr_mthd_set_operation, %10 ], [ @nv04_gr_mthd_bind_surf2d, %9 ], [ @nv04_gr_mthd_bind_beta4, %8 ], [ @nv04_gr_mthd_bind_beta1, %7 ], [ @nv04_gr_mthd_bind_rop, %6 ], [ @nv04_gr_mthd_bind_patt, %5 ], [ @nv01_gr_mthd_bind_chroma, %4 ]
  %13 = tail call zeroext i1 %12(ptr noundef %0, i32 noundef %1, i32 noundef %3) #6
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi i1 [ %13, %11 ], [ false, %4 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_sifm(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  switch i32 %2, label %13 [
    i32 392, label %10
    i32 396, label %5
    i32 400, label %6
    i32 404, label %7
    i32 408, label %8
    i32 772, label %9
  ]

5:                                                ; preds = %4
  br label %10

6:                                                ; preds = %4
  br label %10

7:                                                ; preds = %4
  br label %10

8:                                                ; preds = %4
  br label %10

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9, %8, %7, %6, %5, %4
  %11 = phi ptr [ @nv04_gr_mthd_set_operation, %9 ], [ @nv04_gr_mthd_bind_surf2d, %8 ], [ @nv04_gr_mthd_bind_beta4, %7 ], [ @nv04_gr_mthd_bind_beta1, %6 ], [ @nv04_gr_mthd_bind_rop, %5 ], [ @nv04_gr_mthd_bind_patt, %4 ]
  %12 = tail call zeroext i1 %11(ptr noundef %0, i32 noundef %1, i32 noundef %3) #6
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi i1 [ %12, %10 ], [ false, %4 ]
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv01_gr_mthd_bind_clip(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %2, 4
  %7 = add i32 %6, 7340032
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %47 [
    i8 48, label %11
    i8 25, label %29
  ]

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr i8, ptr %12, i32 4196100
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %15 = load ptr, ptr %4, align 4
  %16 = add i32 %1, 7340032
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %19 = and i32 %18, -8193
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr i8, ptr %20, i32 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #6, !srcloc !12
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr i8, ptr %22, i32 4194656
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %19) #6, !srcloc !12
  %24 = load ptr, ptr %4, align 4
  %25 = lshr i32 %14, 11
  %26 = and i32 %25, 28
  %27 = or i32 %26, 4194688
  %28 = getelementptr i8, ptr %24, i32 %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %19) #6, !srcloc !12
  br label %47

29:                                               ; preds = %3
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr i8, ptr %30, i32 4196100
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %33 = load ptr, ptr %4, align 4
  %34 = add i32 %1, 7340032
  %35 = getelementptr i8, ptr %33, i32 %34
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %37 = or i32 %36, 8192
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr i8, ptr %38, i32 %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #6, !srcloc !12
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr i8, ptr %40, i32 4194656
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %37) #6, !srcloc !12
  %42 = load ptr, ptr %4, align 4
  %43 = lshr i32 %32, 11
  %44 = and i32 %43, 28
  %45 = or i32 %44, 4194688
  %46 = getelementptr i8, ptr %42, i32 %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %37) #6, !srcloc !12
  br label %47

47:                                               ; preds = %29, %11, %3
  %48 = phi i1 [ true, %29 ], [ true, %11 ], [ false, %3 ]
  ret i1 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv01_gr_mthd_bind_patt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %2, 4
  %7 = add i32 %6, 7340032
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %14 [
    i8 48, label %12
    i8 24, label %11
  ]

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %11, %3
  %13 = phi i32 [ 134217728, %11 ], [ 0, %3 ]
  tail call fastcc void @nv04_gr_set_ctx_val(ptr noundef %0, i32 noundef %1, i32 noundef 134217728, i32 noundef %13)
  br label %14

14:                                               ; preds = %12, %3
  %15 = phi i1 [ false, %3 ], [ true, %12 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_bind_rop(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %2, 4
  %7 = add i32 %6, 7340032
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %14 [
    i8 48, label %12
    i8 67, label %11
  ]

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %11, %3
  %13 = phi i32 [ 268435456, %11 ], [ 0, %3 ]
  tail call fastcc void @nv04_gr_set_ctx_val(ptr noundef %0, i32 noundef %1, i32 noundef 268435456, i32 noundef %13)
  br label %14

14:                                               ; preds = %12, %3
  %15 = phi i1 [ false, %3 ], [ true, %12 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_bind_beta1(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %2, 4
  %7 = add i32 %6, 7340032
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %14 [
    i8 48, label %12
    i8 18, label %11
  ]

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %11, %3
  %13 = phi i32 [ 536870912, %11 ], [ 0, %3 ]
  tail call fastcc void @nv04_gr_set_ctx_val(ptr noundef %0, i32 noundef %1, i32 noundef 536870912, i32 noundef %13)
  br label %14

14:                                               ; preds = %12, %3
  %15 = phi i1 [ false, %3 ], [ true, %12 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_bind_surf_dst(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %2, 4
  %7 = add i32 %6, 7340032
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %14 [
    i8 48, label %12
    i8 88, label %11
  ]

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %11, %3
  %13 = phi i32 [ 33554432, %11 ], [ 0, %3 ]
  tail call fastcc void @nv04_gr_set_ctx_val(ptr noundef %0, i32 noundef %1, i32 noundef 33554432, i32 noundef %13)
  br label %14

14:                                               ; preds = %12, %3
  %15 = phi i1 [ false, %3 ], [ true, %12 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_set_operation(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 7340032
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %8 = icmp ugt i32 %2, 5
  br i1 %8, label %34, label %9

9:                                                ; preds = %3
  %10 = icmp ugt i32 %2, 2
  %11 = and i32 %7, 192
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %34, label %14

14:                                               ; preds = %9
  %15 = shl nuw nsw i32 %2, 15
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 4196100
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %19 = load ptr, ptr %4, align 4
  %20 = add i32 %1, 7340032
  %21 = getelementptr i8, ptr %19, i32 %20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %23 = and i32 %22, -229377
  %24 = or i32 %23, %15
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr i8, ptr %25, i32 %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #6, !srcloc !12
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr i8, ptr %27, i32 4194656
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %24) #6, !srcloc !12
  %29 = load ptr, ptr %4, align 4
  %30 = lshr i32 %18, 11
  %31 = and i32 %30, 28
  %32 = or i32 %31, 4194688
  %33 = getelementptr i8, ptr %29, i32 %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %24) #6, !srcloc !12
  tail call fastcc void @nv04_gr_set_ctx_val(ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 0)
  br label %34

34:                                               ; preds = %14, %9, %3
  %35 = phi i1 [ true, %14 ], [ false, %3 ], [ false, %9 ]
  ret i1 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv04_gr_set_ctx_val(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = add i32 %1, 7340032
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %10 = and i32 %9, 255
  %11 = lshr i32 %9, 15
  %12 = and i32 %11, 7
  %13 = load ptr, ptr %5, align 4
  %14 = add i32 %1, 7340044
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %17 = xor i32 %2, -1
  %18 = and i32 %16, %17
  %19 = or i32 %18, %3
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr i8, ptr %20, i32 %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #6, !srcloc !12
  %22 = lshr i32 %19, 25
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %10, 31
  %25 = icmp eq i32 %10, 72
  %26 = or i1 %24, %25
  %27 = and i32 %19, 67108864
  %28 = icmp eq i32 %27, 0
  %29 = and i1 %26, %28
  %30 = select i1 %29, i32 0, i32 %23
  switch i32 %12, label %43 [
    i32 5, label %39
    i32 4, label %39
    i32 1, label %31
    i32 2, label %35
  ]

31:                                               ; preds = %4
  %32 = and i32 %19, 402653184
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 0, i32 %30
  br label %43

35:                                               ; preds = %4
  %36 = and i32 %19, 536870912
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 0, i32 %30
  br label %43

39:                                               ; preds = %4, %4
  %40 = and i32 %19, 1073741824
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 0, i32 %30
  br label %43

43:                                               ; preds = %39, %35, %31, %4
  %44 = phi i32 [ %30, %4 ], [ %34, %31 ], [ %38, %35 ], [ %42, %39 ]
  %45 = shl nuw nsw i32 %44, 24
  %46 = load ptr, ptr %5, align 4
  %47 = getelementptr i8, ptr %46, i32 4196100
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %49 = load ptr, ptr %5, align 4
  %50 = getelementptr i8, ptr %49, i32 %7
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %52 = and i32 %51, -16777217
  %53 = or i32 %52, %45
  %54 = load ptr, ptr %5, align 4
  %55 = getelementptr i8, ptr %54, i32 %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #6, !srcloc !12
  %56 = load ptr, ptr %5, align 4
  %57 = getelementptr i8, ptr %56, i32 4194656
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %53) #6, !srcloc !12
  %58 = load ptr, ptr %5, align 4
  %59 = lshr i32 %48, 11
  %60 = and i32 %59, 28
  %61 = or i32 %60, 4194688
  %62 = getelementptr i8, ptr %58, i32 %61
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %53) #6, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv01_gr_mthd_bind_chroma(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %2, 4
  %7 = add i32 %6, 7340032
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %47 [
    i8 48, label %11
    i8 87, label %29
  ]

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr i8, ptr %12, i32 4196100
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %15 = load ptr, ptr %4, align 4
  %16 = add i32 %1, 7340032
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %19 = and i32 %18, -4097
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr i8, ptr %20, i32 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #6, !srcloc !12
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr i8, ptr %22, i32 4194656
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %19) #6, !srcloc !12
  %24 = load ptr, ptr %4, align 4
  %25 = lshr i32 %14, 11
  %26 = and i32 %25, 28
  %27 = or i32 %26, 4194688
  %28 = getelementptr i8, ptr %24, i32 %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %19) #6, !srcloc !12
  br label %47

29:                                               ; preds = %3
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr i8, ptr %30, i32 4196100
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %33 = load ptr, ptr %4, align 4
  %34 = add i32 %1, 7340032
  %35 = getelementptr i8, ptr %33, i32 %34
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %37 = or i32 %36, 4096
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr i8, ptr %38, i32 %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #6, !srcloc !12
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr i8, ptr %40, i32 4194656
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %37) #6, !srcloc !12
  %42 = load ptr, ptr %4, align 4
  %43 = lshr i32 %32, 11
  %44 = and i32 %43, 28
  %45 = or i32 %44, 4194688
  %46 = getelementptr i8, ptr %42, i32 %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %37) #6, !srcloc !12
  br label %47

47:                                               ; preds = %29, %11, %3
  %48 = phi i1 [ true, %29 ], [ true, %11 ], [ false, %3 ]
  ret i1 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_bind_surf_src(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %2, 4
  %7 = add i32 %6, 7340032
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %14 [
    i8 48, label %12
    i8 89, label %11
  ]

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %11, %3
  %13 = phi i32 [ 67108864, %11 ], [ 0, %3 ]
  tail call fastcc void @nv04_gr_set_ctx_val(ptr noundef %0, i32 noundef %1, i32 noundef 67108864, i32 noundef %13)
  br label %14

14:                                               ; preds = %12, %3
  %15 = phi i1 [ false, %3 ], [ true, %12 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_bind_surf_color(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %2, 4
  %7 = add i32 %6, 7340032
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %14 [
    i8 48, label %12
    i8 90, label %11
  ]

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %11, %3
  %13 = phi i32 [ 33554432, %11 ], [ 0, %3 ]
  tail call fastcc void @nv04_gr_set_ctx_val(ptr noundef %0, i32 noundef %1, i32 noundef 33554432, i32 noundef %13)
  br label %14

14:                                               ; preds = %12, %3
  %15 = phi i1 [ false, %3 ], [ true, %12 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_bind_surf_zeta(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %2, 4
  %7 = add i32 %6, 7340032
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %14 [
    i8 48, label %12
    i8 91, label %11
  ]

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %11, %3
  %13 = phi i32 [ 67108864, %11 ], [ 0, %3 ]
  tail call fastcc void @nv04_gr_set_ctx_val(ptr noundef %0, i32 noundef %1, i32 noundef 67108864, i32 noundef %13)
  br label %14

14:                                               ; preds = %12, %3
  %15 = phi i1 [ false, %3 ], [ true, %12 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_bind_patt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %2, 4
  %7 = add i32 %6, 7340032
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %14 [
    i8 48, label %12
    i8 68, label %11
  ]

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %11, %3
  %13 = phi i32 [ 134217728, %11 ], [ 0, %3 ]
  tail call fastcc void @nv04_gr_set_ctx_val(ptr noundef %0, i32 noundef %1, i32 noundef 134217728, i32 noundef %13)
  br label %14

14:                                               ; preds = %12, %3
  %15 = phi i1 [ false, %3 ], [ true, %12 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_bind_beta4(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %2, 4
  %7 = add i32 %6, 7340032
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %14 [
    i8 48, label %12
    i8 114, label %11
  ]

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %11, %3
  %13 = phi i32 [ 1073741824, %11 ], [ 0, %3 ]
  tail call fastcc void @nv04_gr_set_ctx_val(ptr noundef %0, i32 noundef %1, i32 noundef 1073741824, i32 noundef %13)
  br label %14

14:                                               ; preds = %12, %3
  %15 = phi i1 [ false, %3 ], [ true, %12 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_bind_surf2d(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %2, 4
  %7 = add i32 %6, 7340032
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %49 [
    i8 48, label %11
    i8 66, label %29
  ]

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr i8, ptr %12, i32 4196100
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %15 = load ptr, ptr %4, align 4
  %16 = add i32 %1, 7340032
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %19 = and i32 %18, -16385
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr i8, ptr %20, i32 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #6, !srcloc !12
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr i8, ptr %22, i32 4194656
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %19) #6, !srcloc !12
  %24 = load ptr, ptr %4, align 4
  %25 = lshr i32 %14, 11
  %26 = and i32 %25, 28
  %27 = or i32 %26, 4194688
  %28 = getelementptr i8, ptr %24, i32 %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %19) #6, !srcloc !12
  br label %47

29:                                               ; preds = %3
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr i8, ptr %30, i32 4196100
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %33 = load ptr, ptr %4, align 4
  %34 = add i32 %1, 7340032
  %35 = getelementptr i8, ptr %33, i32 %34
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %37 = and i32 %36, -16385
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr i8, ptr %38, i32 %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #6, !srcloc !12
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr i8, ptr %40, i32 4194656
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %37) #6, !srcloc !12
  %42 = load ptr, ptr %4, align 4
  %43 = lshr i32 %32, 11
  %44 = and i32 %43, 28
  %45 = or i32 %44, 4194688
  %46 = getelementptr i8, ptr %42, i32 %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %37) #6, !srcloc !12
  br label %47

47:                                               ; preds = %29, %11
  %48 = phi i32 [ 33554432, %29 ], [ 0, %11 ]
  tail call fastcc void @nv04_gr_set_ctx_val(ptr noundef %0, i32 noundef %1, i32 noundef 33554432, i32 noundef %48)
  br label %49

49:                                               ; preds = %47, %3
  %50 = phi i1 [ false, %3 ], [ true, %47 ]
  ret i1 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_surf3d_clip_h(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, 32768
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = lshr i32 %2, 16
  %8 = and i32 %2, 65535
  %9 = or i32 %7, 196608
  %10 = icmp slt i32 %2, 0
  %11 = select i1 %10, i32 %9, i32 %7
  %12 = add nuw nsw i32 %11, %8
  %13 = and i32 %12, 262143
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 4195644
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %8) #6, !srcloc !12
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr i8, ptr %17, i32 4195652
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %13) #6, !srcloc !12
  br label %19

19:                                               ; preds = %6, %3
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_surf3d_clip_v(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, 32768
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = lshr i32 %2, 16
  %8 = and i32 %2, 65535
  %9 = or i32 %7, 196608
  %10 = icmp slt i32 %2, 0
  %11 = select i1 %10, i32 %9, i32 %7
  %12 = add nuw nsw i32 %11, %8
  %13 = and i32 %12, 262143
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 4195648
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %8) #6, !srcloc !12
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr i8, ptr %17, i32 4195656
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %13) #6, !srcloc !12
  br label %19

19:                                               ; preds = %6, %3
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv04_gr_mthd_bind_surf2d_swzsurf(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %2, 4
  %7 = add i32 %6, 7340032
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %67 [
    i8 48, label %11
    i8 66, label %29
    i8 82, label %47
  ]

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr i8, ptr %12, i32 4196100
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %15 = load ptr, ptr %4, align 4
  %16 = add i32 %1, 7340032
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %19 = and i32 %18, -16385
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr i8, ptr %20, i32 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #6, !srcloc !12
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr i8, ptr %22, i32 4194656
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %19) #6, !srcloc !12
  %24 = load ptr, ptr %4, align 4
  %25 = lshr i32 %14, 11
  %26 = and i32 %25, 28
  %27 = or i32 %26, 4194688
  %28 = getelementptr i8, ptr %24, i32 %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %19) #6, !srcloc !12
  br label %65

29:                                               ; preds = %3
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr i8, ptr %30, i32 4196100
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %33 = load ptr, ptr %4, align 4
  %34 = add i32 %1, 7340032
  %35 = getelementptr i8, ptr %33, i32 %34
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %37 = and i32 %36, -16385
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr i8, ptr %38, i32 %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #6, !srcloc !12
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr i8, ptr %40, i32 4194656
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %37) #6, !srcloc !12
  %42 = load ptr, ptr %4, align 4
  %43 = lshr i32 %32, 11
  %44 = and i32 %43, 28
  %45 = or i32 %44, 4194688
  %46 = getelementptr i8, ptr %42, i32 %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %37) #6, !srcloc !12
  br label %65

47:                                               ; preds = %3
  %48 = load ptr, ptr %4, align 4
  %49 = getelementptr i8, ptr %48, i32 4196100
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %51 = load ptr, ptr %4, align 4
  %52 = add i32 %1, 7340032
  %53 = getelementptr i8, ptr %51, i32 %52
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %55 = or i32 %54, 16384
  %56 = load ptr, ptr %4, align 4
  %57 = getelementptr i8, ptr %56, i32 %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #6, !srcloc !12
  %58 = load ptr, ptr %4, align 4
  %59 = getelementptr i8, ptr %58, i32 4194656
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %55) #6, !srcloc !12
  %60 = load ptr, ptr %4, align 4
  %61 = lshr i32 %50, 11
  %62 = and i32 %61, 28
  %63 = or i32 %62, 4194688
  %64 = getelementptr i8, ptr %60, i32 %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %55) #6, !srcloc !12
  br label %65

65:                                               ; preds = %47, %29, %11
  %66 = phi i32 [ 33554432, %47 ], [ 33554432, %29 ], [ 0, %11 ]
  tail call fastcc void @nv04_gr_set_ctx_val(ptr noundef %0, i32 noundef %1, i32 noundef 33554432, i32 noundef %66)
  br label %67

67:                                               ; preds = %65, %3
  %68 = phi i1 [ false, %3 ], [ true, %65 ]
  ret i1 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nv04_gr_chan_dtor(ptr noundef readonly returned %0) #0 {
  %2 = getelementptr inbounds %struct.nv04_gr_chan, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nv04_gr, ptr %3, i32 0, i32 2
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #6
  %6 = getelementptr inbounds %struct.nv04_gr_chan, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.nv04_gr, ptr %3, i32 0, i32 1, i32 %7
  store ptr null, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #6
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv04_gr_chan_fini(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.nv04_gr_chan, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_gr, ptr %4, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nv04_gr, ptr %4, i32 0, i32 2
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #6
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 4196128
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %13 = and i32 %12, -2
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr i8, ptr %14, i32 4196128
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #6, !srcloc !12
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 4194672
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %21 = and i32 %20, 65536
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %2
  %24 = load ptr, ptr %17, align 4
  %25 = getelementptr i8, ptr %24, i32 4194676
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %27 = icmp ult i32 %26, 268435456
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = lshr i32 %26, 24
  %30 = getelementptr %struct.nv04_gr, ptr %4, i32 0, i32 1, i32 %29
  %31 = load ptr, ptr %30, align 4
  br label %32

32:                                               ; preds = %28, %23, %2
  %33 = phi ptr [ null, %2 ], [ %31, %28 ], [ null, %23 ]
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %35, label %60

35:                                               ; preds = %32
  %36 = load ptr, ptr %3, align 8
  %37 = getelementptr inbounds %struct.nvkm_gr, ptr %36, i32 0, i32 1, i32 1, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 11
  br label %40

40:                                               ; preds = %40, %35
  %41 = phi i32 [ 0, %35 ], [ %48, %40 ]
  %42 = load ptr, ptr %39, align 4
  %43 = getelementptr [311 x i32], ptr @nv04_gr_ctx_regs, i32 0, i32 %41
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i8, ptr %42, i32 %44
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %47 = getelementptr %struct.nv04_gr_chan, ptr %0, i32 0, i32 3, i32 %41
  store i32 %46, ptr %47, align 4
  %48 = add nuw nsw i32 %41, 1
  %49 = icmp eq i32 %48, 311
  br i1 %49, label %50, label %40

50:                                               ; preds = %40
  %51 = load ptr, ptr %39, align 4
  %52 = getelementptr i8, ptr %51, i32 4194672
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 268435456) #6, !srcloc !12
  %53 = load ptr, ptr %39, align 4
  %54 = getelementptr i8, ptr %53, i32 4194676
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %56 = and i32 %55, 16777215
  %57 = or i32 %56, 251658240
  %58 = load ptr, ptr %39, align 4
  %59 = getelementptr i8, ptr %58, i32 4194676
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #6, !srcloc !12
  br label %60

60:                                               ; preds = %50, %32
  %61 = load ptr, ptr %9, align 4
  %62 = getelementptr i8, ptr %61, i32 4196128
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %64 = or i32 %63, 1
  %65 = load ptr, ptr %9, align 4
  %66 = getelementptr i8, ptr %65, i32 4196128
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #6, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #6
  ret i32 0
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!9 = !{i64 3983143}
!10 = !{i64 2151522596}
!11 = !{i64 2151523818}
!12 = !{i64 3982725}
!13 = !{ptr @nv01_gr_mthd_bind_clip, ptr @nv04_gr_mthd_bind_surf_color, ptr @nv04_gr_mthd_bind_surf_zeta}
!14 = !{ptr @nv04_gr_mthd_surf3d_clip_h, ptr @nv04_gr_mthd_surf3d_clip_v}
