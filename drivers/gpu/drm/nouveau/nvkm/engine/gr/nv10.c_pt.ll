; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv10.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_bitfield = type { i32, ptr }
%struct.anon.122 = type { ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.120 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.120 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nv10_gr_chan = type { %struct.nvkm_object, ptr, i32, [319 x i32], [18 x i32], %struct.pipe_state, [4 x i32] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.pipe_state = type { [16 x i32], [4 x i32], [48 x i32], [32 x i32], [236 x i32], [188 x i32], [12 x i32], [76 x i32], [48 x i32], [48 x i32] }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nv10_gr = type { %struct.nvkm_gr, [32 x ptr], %struct.spinlock }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }

@nv10_gr_chan = internal constant %struct.nvkm_object_func { ptr @nv10_gr_chan_dtor, ptr null, ptr @nv10_gr_chan_fini, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [7 x i8] c"NOTIFY\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@nv10_gr_intr_name = dso_local constant [3 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str }, %struct.nvkm_bitfield { i32 1048576, ptr @.str.1 }, %struct.nvkm_bitfield zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"STATE_IN_USE\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"INVALID_STATE\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"BAD_ARGUMENT\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"PROTECTION_FAULT\00", align 1
@nv10_gr_nstatus = dso_local constant [5 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 8388608, ptr @.str.2 }, %struct.nvkm_bitfield { i32 16777216, ptr @.str.3 }, %struct.nvkm_bitfield { i32 33554432, ptr @.str.4 }, %struct.nvkm_bitfield { i32 67108864, ptr @.str.5 }, %struct.nvkm_bitfield zeroinitializer], align 4
@nv04_gr_nsource = external dso_local constant [0 x %struct.nvkm_bitfield], align 4
@.str.6 = private unnamed_addr constant [106 x i8] c"%s: intr %08x [%s] nsource %08x [%s] nstatus %08x [%s] ch %d [%s] subc %d class %04x mthd %04x data %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nv10_gr_ctx_regs = internal unnamed_addr constant [319 x i32] [i32 4194636, i32 4194640, i32 4194644, i32 4194648, i32 4194652, i32 4194656, i32 4194688, i32 4194720, i32 4194752, i32 4194784, i32 4194660, i32 4194692, i32 4194724, i32 4194756, i32 4194788, i32 4194664, i32 4194696, i32 4194728, i32 4194760, i32 4194792, i32 4194668, i32 4194700, i32 4194732, i32 4194764, i32 4194796, i32 4194672, i32 4194704, i32 4194736, i32 4194768, i32 4194800, i32 4194676, i32 4194708, i32 4194740, i32 4194772, i32 4194804, i32 4194680, i32 4194712, i32 4194744, i32 4194776, i32 4194808, i32 4194684, i32 4194716, i32 4194748, i32 4194780, i32 4194812, i32 4194632, i32 4198400, i32 4198404, i32 4198408, i32 4198412, i32 4196208, i32 4195904, i32 4195928, i32 4195972, i32 4195908, i32 4195932, i32 4195976, i32 4195912, i32 4195936, i32 4195980, i32 4195916, i32 4195940, i32 4195984, i32 4195920, i32 4195944, i32 4195988, i32 4195924, i32 4195948, i32 4195992, i32 4195952, i32 4195956, i32 4195960, i32 4195964, i32 4195968, i32 4196112, i32 4196116, i32 4195996, i32 4196000, i32 4196132, i32 4196120, i32 4196352, i32 4196356, i32 4196608, i32 4196612, i32 4196616, i32 4196620, i32 4196624, i32 4196628, i32 4196632, i32 4196636, i32 4196640, i32 4196644, i32 4196648, i32 4196652, i32 4196656, i32 4196660, i32 4196664, i32 4196668, i32 4196672, i32 4196676, i32 4196680, i32 4196684, i32 4196688, i32 4196692, i32 4196696, i32 4196700, i32 4196704, i32 4196708, i32 4196712, i32 4196716, i32 4196720, i32 4196724, i32 4196728, i32 4196732, i32 4196736, i32 4196740, i32 4196744, i32 4196748, i32 4196752, i32 4196756, i32 4196760, i32 4196764, i32 4196768, i32 4196772, i32 4196776, i32 4196780, i32 4196784, i32 4196788, i32 4196792, i32 4196796, i32 4196800, i32 4196804, i32 4196808, i32 4196812, i32 4196816, i32 4196820, i32 4196824, i32 4196828, i32 4196832, i32 4196836, i32 4196840, i32 4196844, i32 4196848, i32 4196852, i32 4196856, i32 4196860, i32 4196360, i32 4196364, i32 4196368, i32 4195840, i32 4195844, i32 4196372, i32 4195848, i32 4195852, i32 4198000, i32 4198004, i32 4198008, i32 4198012, i32 4198016, i32 4198020, i32 4198024, i32 4198028, i32 4198048, i32 4198052, i32 4198056, i32 4198032, i32 4198036, i32 4198040, i32 4198044, i32 4198144, i32 4198176, i32 4198148, i32 4198180, i32 4198152, i32 4198184, i32 4198156, i32 4198188, i32 4198160, i32 4198192, i32 4198164, i32 4198196, i32 4198168, i32 4198200, i32 4198172, i32 4198204, i32 4198208, i32 4198212, i32 4198216, i32 4198220, i32 4196400, i32 4195596, i32 4195328, i32 4195456, i32 4195332, i32 4195460, i32 4195336, i32 4195464, i32 4195340, i32 4195468, i32 4195344, i32 4195472, i32 4195348, i32 4195476, i32 4195352, i32 4195480, i32 4195356, i32 4195484, i32 4195360, i32 4195488, i32 4195364, i32 4195492, i32 4195368, i32 4195496, i32 4195372, i32 4195500, i32 4195376, i32 4195504, i32 4195380, i32 4195508, i32 4195384, i32 4195512, i32 4195388, i32 4195516, i32 4195392, i32 4195520, i32 4195396, i32 4195524, i32 4195400, i32 4195528, i32 4195404, i32 4195532, i32 4195408, i32 4195536, i32 4195412, i32 4195540, i32 4195416, i32 4195544, i32 4195420, i32 4195548, i32 4195424, i32 4195552, i32 4195428, i32 4195556, i32 4195432, i32 4195560, i32 4195436, i32 4195564, i32 4195440, i32 4195568, i32 4195444, i32 4195572, i32 4195448, i32 4195576, i32 4195452, i32 4195580, i32 4195644, i32 4195652, i32 4195648, i32 4195656, i32 4195664, i32 4195672, i32 4195668, i32 4195676, i32 4195680, i32 4195688, i32 4195684, i32 4195692, i32 4195636, i32 4195640, i32 4195604, i32 4195608, i32 4195612, i32 4195616, i32 4195620, i32 4195624, i32 4195628, i32 4195632, i32 4197952, i32 4197956, i32 4197960, i32 4197964, i32 4197968, i32 4197972, i32 4197976, i32 4197980, i32 4197984, i32 4197988, i32 4197992, i32 4197996, i32 4197888, i32 4197892, i32 4197896, i32 4197900, i32 4197904, i32 4197908, i32 4197912, i32 4197916, i32 4197920, i32 4197924, i32 4197928, i32 4197932, i32 4197936, i32 4197940, i32 4197944, i32 4197948, i32 4195708, i32 4195712, i32 4195716, i32 4195720, i32 4195724, i32 4196212, i32 4196216, i32 4195600, i32 4195696, i32 4195700, i32 4195584, i32 4195588, i32 4195592, i32 4195704], align 4
@nv17_gr_ctx_regs = internal unnamed_addr constant [18 x i32] [i32 4194448, i32 4196016, i32 4198060, i32 4198064, i32 4198068, i32 4198072, i32 4198076, i32 4198080, i32 4198084, i32 4198088, i32 4198092, i32 4198096, i32 4198100, i32 4198104, i32 4198108, i32 4198112, i32 4196864, i32 4196868], align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"%s: unknown offset nv10_ctx_regs %d\0A\00", align 1
@nv04_gr_object = external dso_local constant %struct.nvkm_object_func, align 4
@nv10_gr = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.122, [19 x %struct.nvkm_sclass] } { ptr null, ptr null, ptr @nv10_gr_init, ptr null, ptr @nv10_gr_intr, ptr @nv10_gr_tile, ptr null, ptr @nv10_gr_chan_new, ptr null, ptr null, ptr null, %struct.anon.122 zeroinitializer, [19 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 18, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 25, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 48, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 57, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 67, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 68, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 74, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 82, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 95, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 98, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 114, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 137, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 138, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 159, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 147, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 148, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 149, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 86, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass zeroinitializer] }, align 4
@switch.table.nv10_gr_intr = private unnamed_addr constant [9 x ptr] [ptr @nv17_gr_mthd_lma_window, ptr @nv17_gr_mthd_lma_window, ptr @nv17_gr_mthd_lma_window, ptr @nv17_gr_mthd_lma_window, ptr @nv17_gr_mthd_lma_window, ptr @nv17_gr_mthd_lma_window, ptr @nv17_gr_mthd_lma_window, ptr @nv17_gr_mthd_lma_window, ptr @nv17_gr_mthd_lma_enable], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv10_gr_chan_new(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 4280) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %231, label %10

10:                                               ; preds = %4
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nv10_gr_chan, ptr noundef %2, ptr noundef nonnull %8) #7
  %11 = getelementptr inbounds %struct.nv10_gr_chan, ptr %8, i32 0, i32 1
  store ptr %0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %1, i32 0, i32 5
  %13 = load i16, ptr %12, align 8
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.nv10_gr_chan, ptr %8, i32 0, i32 2
  store i32 %14, ptr %15, align 4
  store ptr %8, ptr %3, align 4
  br label %16

16:                                               ; preds = %20, %10
  %17 = phi i32 [ 0, %10 ], [ %21, %20 ]
  %18 = and i32 %17, 1073741823
  %19 = icmp eq i32 %18, 160
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = add nuw nsw i32 %17, 1
  %22 = icmp eq i32 %21, 319
  br i1 %22, label %23, label %16

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.8, ptr noundef %31, i32 noundef 4198024) #8
  br label %34

32:                                               ; preds = %16
  %33 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 3, i32 %17
  store i32 134217728, ptr %33, align 4
  br label %34

34:                                               ; preds = %32, %27, %23
  br label %35

35:                                               ; preds = %39, %34
  %36 = phi i32 [ %40, %39 ], [ 0, %34 ]
  %37 = and i32 %36, 1073741823
  %38 = icmp eq i32 %37, 168
  br i1 %38, label %51, label %39

39:                                               ; preds = %35
  %40 = add nuw nsw i32 %36, 1
  %41 = icmp eq i32 %40, 319
  br i1 %41, label %42, label %35

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %5, align 4
  %48 = getelementptr inbounds %struct.nvkm_device, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.8, ptr noundef %50, i32 noundef 4198044) #8
  br label %53

51:                                               ; preds = %35
  %52 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 3, i32 %36
  store i32 1266679807, ptr %52, align 4
  br label %53

53:                                               ; preds = %51, %46, %42
  br label %54

54:                                               ; preds = %58, %53
  %55 = phi i32 [ %59, %58 ], [ 0, %53 ]
  %56 = and i32 %55, 1073741823
  %57 = icmp eq i32 %56, 269
  br i1 %57, label %70, label %58

58:                                               ; preds = %54
  %59 = add nuw nsw i32 %55, 1
  %60 = icmp eq i32 %59, 319
  br i1 %60, label %61, label %54

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %5, align 4
  %67 = getelementptr inbounds %struct.nvkm_device, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.8, ptr noundef %69, i32 noundef 4195604) #8
  br label %72

70:                                               ; preds = %54
  %71 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 3, i32 %55
  store i32 131071, ptr %71, align 4
  br label %72

72:                                               ; preds = %70, %65, %61
  br label %73

73:                                               ; preds = %77, %72
  %74 = phi i32 [ %78, %77 ], [ 0, %72 ]
  %75 = and i32 %74, 1073741823
  %76 = icmp eq i32 %75, 293
  br i1 %76, label %89, label %77

77:                                               ; preds = %73
  %78 = add nuw nsw i32 %74, 1
  %79 = icmp eq i32 %78, 319
  br i1 %79, label %80, label %73

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %5, align 4
  %86 = getelementptr inbounds %struct.nvkm_device, ptr %85, i32 0, i32 2
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.8, ptr noundef %88, i32 noundef 4197904) #8
  br label %91

89:                                               ; preds = %73
  %90 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 3, i32 %74
  store i32 4096, ptr %90, align 4
  br label %91

91:                                               ; preds = %89, %84, %80
  br label %92

92:                                               ; preds = %96, %91
  %93 = phi i32 [ %97, %96 ], [ 0, %91 ]
  %94 = and i32 %93, 1073741823
  %95 = icmp eq i32 %94, 294
  br i1 %95, label %108, label %96

96:                                               ; preds = %92
  %97 = add nuw nsw i32 %93, 1
  %98 = icmp eq i32 %97, 319
  br i1 %98, label %99, label %92

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr %5, align 4
  %105 = getelementptr inbounds %struct.nvkm_device, ptr %104, i32 0, i32 2
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.8, ptr noundef %107, i32 noundef 4197908) #8
  br label %110

108:                                              ; preds = %92
  %109 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 3, i32 %93
  store i32 4096, ptr %109, align 4
  br label %110

110:                                              ; preds = %108, %103, %99
  br label %111

111:                                              ; preds = %115, %110
  %112 = phi i32 [ %116, %115 ], [ 0, %110 ]
  %113 = and i32 %112, 1073741823
  %114 = icmp eq i32 %113, 301
  br i1 %114, label %127, label %115

115:                                              ; preds = %111
  %116 = add nuw nsw i32 %112, 1
  %117 = icmp eq i32 %116, 319
  br i1 %117, label %118, label %111

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %5, align 4
  %124 = getelementptr inbounds %struct.nvkm_device, ptr %123, i32 0, i32 2
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.8, ptr noundef %126, i32 noundef 4197936) #8
  br label %129

127:                                              ; preds = %111
  %128 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 3, i32 %112
  store i32 524296, ptr %128, align 4
  br label %129

129:                                              ; preds = %127, %122, %118
  br label %130

130:                                              ; preds = %134, %129
  %131 = phi i32 [ %135, %134 ], [ 0, %129 ]
  %132 = and i32 %131, 1073741823
  %133 = icmp eq i32 %132, 302
  br i1 %133, label %146, label %134

134:                                              ; preds = %130
  %135 = add nuw nsw i32 %131, 1
  %136 = icmp eq i32 %135, 319
  br i1 %136, label %137, label %130

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %137
  %142 = load ptr, ptr %5, align 4
  %143 = getelementptr inbounds %struct.nvkm_device, ptr %142, i32 0, i32 2
  %144 = load ptr, ptr %143, align 8
  %145 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.8, ptr noundef %145, i32 noundef 4197940) #8
  br label %148

146:                                              ; preds = %130
  %147 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 3, i32 %131
  store i32 524296, ptr %147, align 4
  br label %148

148:                                              ; preds = %146, %141, %137
  %149 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 15
  %150 = load i32, ptr %149, align 8
  %151 = icmp ugt i32 %150, 16
  br i1 %151, label %152, label %166

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 16
  %154 = load i32, ptr %153, align 4
  %155 = icmp ugt i32 %154, 22
  br i1 %155, label %156, label %166

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr i8, ptr %158, i32 4196016
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %159) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %161 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 4, i32 1
  store i32 %160, ptr %161, align 8
  %162 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 4, i32 2
  store i32 268369920, ptr %162, align 4
  %163 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 4, i32 3
  store i32 268369920, ptr %163, align 8
  %164 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 4, i32 7
  store i32 128, ptr %164, align 8
  %165 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 4, i32 11
  store i32 128, ptr %165, align 8
  br label %166

166:                                              ; preds = %156, %152, %148
  %167 = load i32, ptr %15, align 4
  %168 = shl i32 %167, 24
  %169 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 3, i32 45
  store i32 %168, ptr %169, align 4
  %170 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(192) %170, i8 0, i32 192, i1 false) #7
  %171 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5
  %172 = getelementptr i8, ptr %8, i32 1700
  %173 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(844) %173, i8 0, i32 844, i1 false) #7
  %174 = getelementptr i8, ptr %8, i32 2672
  %175 = getelementptr i8, ptr %8, i32 2676
  store i32 1065353216, ptr %174, align 8
  %176 = getelementptr i8, ptr %8, i32 2680
  store i32 1073741824, ptr %175, align 4
  %177 = getelementptr i8, ptr %8, i32 2684
  store i32 1073741824, ptr %176, align 8
  %178 = getelementptr i8, ptr %8, i32 2688
  store i32 1073741824, ptr %177, align 4
  %179 = getelementptr i8, ptr %8, i32 2692
  store i32 1073741824, ptr %178, align 8
  %180 = getelementptr i8, ptr %8, i32 2696
  store i32 0, ptr %179, align 4
  %181 = getelementptr i8, ptr %8, i32 2700
  store i32 0, ptr %180, align 8
  %182 = getelementptr i8, ptr %8, i32 2704
  store i32 1065353216, ptr %181, align 4
  %183 = getelementptr i8, ptr %8, i32 2708
  store i32 0, ptr %182, align 8
  %184 = getelementptr i8, ptr %8, i32 2712
  store i32 1056964608, ptr %183, align 4
  %185 = getelementptr i8, ptr %8, i32 2716
  store i32 1056964608, ptr %184, align 8
  %186 = getelementptr i8, ptr %8, i32 2732
  %187 = getelementptr i8, ptr %8, i32 2736
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %185, i8 0, i64 16, i1 false) #7
  store i32 1065353216, ptr %186, align 4
  %188 = getelementptr i8, ptr %8, i32 2756
  %189 = getelementptr i8, ptr %8, i32 2760
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %187, i8 0, i64 20, i1 false) #7
  store i32 1065353216, ptr %188, align 4
  %190 = getelementptr i8, ptr %8, i32 2764
  store i32 1065353216, ptr %189, align 8
  %191 = getelementptr i8, ptr %8, i32 2768
  store i32 1065353216, ptr %190, align 4
  store i32 1065353216, ptr %191, align 8
  %192 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 5
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(648) %192, i8 0, i32 648, i1 false) #7
  %193 = getelementptr i8, ptr %8, i32 3420
  store i32 1065353216, ptr %193, align 4
  %194 = getelementptr i8, ptr %8, i32 3424
  %195 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 6, i32 4
  %196 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 6, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(116) %194, i8 0, i64 116, i1 false) #7
  store i32 -1082130432, ptr %195, align 4
  %197 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 12
  %198 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(76) %196, i8 0, i64 76, i1 false) #7
  store i32 1900671690, ptr %197, align 4
  %199 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 14
  store i32 0, ptr %198, align 8
  %200 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 15
  store i32 0, ptr %199, align 4
  %201 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 16
  store i32 0, ptr %200, align 8
  %202 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 17
  store i32 1900671690, ptr %201, align 4
  %203 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 18
  store i32 0, ptr %202, align 8
  %204 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 19
  store i32 0, ptr %203, align 4
  %205 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 20
  store i32 0, ptr %204, align 8
  %206 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 21
  store i32 1900671690, ptr %205, align 4
  %207 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 22
  store i32 0, ptr %206, align 8
  %208 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 23
  store i32 0, ptr %207, align 4
  %209 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 24
  store i32 0, ptr %208, align 8
  %210 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 25
  store i32 1900671690, ptr %209, align 4
  %211 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 26
  store i32 0, ptr %210, align 8
  %212 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 27
  store i32 0, ptr %211, align 4
  %213 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 28
  store i32 0, ptr %212, align 8
  %214 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 29
  store i32 1900671690, ptr %213, align 4
  %215 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 30
  store i32 0, ptr %214, align 8
  %216 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 31
  store i32 0, ptr %215, align 4
  %217 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 32
  store i32 0, ptr %216, align 8
  %218 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 33
  store i32 1900671690, ptr %217, align 4
  %219 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 34
  store i32 0, ptr %218, align 8
  %220 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 35
  store i32 0, ptr %219, align 4
  %221 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 36
  store i32 0, ptr %220, align 8
  %222 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 37
  store i32 1900671690, ptr %221, align 4
  %223 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 38
  store i32 0, ptr %222, align 8
  %224 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 39
  store i32 0, ptr %223, align 4
  %225 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 40
  store i32 0, ptr %224, align 8
  %226 = getelementptr %struct.nv10_gr_chan, ptr %8, i32 0, i32 5, i32 7, i32 41
  store i32 1900671690, ptr %225, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(128) %172, i8 0, i32 128, i1 false) #7
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(80) %171, i8 0, i64 80, i1 false) #7
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(524) %226, i8 0, i64 524, i1 false) #7
  %227 = getelementptr inbounds %struct.nv10_gr, ptr %0, i32 0, i32 2
  %228 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %227) #7
  %229 = load i32, ptr %15, align 4
  %230 = getelementptr %struct.nv10_gr, ptr %0, i32 0, i32 1, i32 %229
  store ptr %8, ptr %230, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %227, i32 noundef %228) #7
  br label %231

231:                                              ; preds = %166, %4
  %232 = phi i32 [ 0, %166 ], [ -12, %4 ]
  ret i32 %232
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv10_gr_tile(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 52
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !10
  call void @nvkm_fifo_pause(ptr noundef %8, ptr noundef nonnull %4) #7
  %9 = call zeroext i1 @nv04_gr_idle(ptr noundef %0) #7
  %10 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = shl i32 %1, 4
  %15 = add i32 %14, 4197124
  %16 = getelementptr i8, ptr %13, i32 %15
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %11) #7, !srcloc !12
  %17 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %12, align 4
  %20 = add i32 %14, 4197128
  %21 = getelementptr i8, ptr %19, i32 %20
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %18) #7, !srcloc !12
  %22 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %12, align 4
  %25 = add i32 %14, 4197120
  %26 = getelementptr i8, ptr %24, i32 %25
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %23) #7, !srcloc !12
  call void @nvkm_fifo_start(ptr noundef %8, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_pause(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nv04_gr_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv10_gr_intr(ptr noundef %0) #0 {
  %2 = alloca [24 x i32], align 4
  %3 = alloca [128 x i8], align 1
  %4 = alloca [128 x i8], align 1
  %5 = alloca [128 x i8], align 1
  %6 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 4194560
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr i8, ptr %12, i32 4194568
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr i8, ptr %15, i32 4194564
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr i8, ptr %18, i32 4196100
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %21 = lshr i32 %20, 20
  %22 = and i32 %21, 31
  %23 = lshr i32 %20, 16
  %24 = and i32 %23, 7
  %25 = and i32 %20, 8188
  %26 = load ptr, ptr %8, align 4
  %27 = getelementptr i8, ptr %26, i32 4196104
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %29 = load ptr, ptr %8, align 4
  %30 = shl nuw nsw i32 %24, 2
  %31 = or i32 %30, 4194656
  %32 = getelementptr i8, ptr %29, i32 %31
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %34 = and i32 %33, 4095
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %3, i8 0, i32 128, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %4, i8 0, i32 128, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %5, i8 0, i32 128, i1 false), !annotation !10
  %35 = getelementptr inbounds %struct.nv10_gr, ptr %0, i32 0, i32 2
  %36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %35) #7
  %37 = getelementptr %struct.nv10_gr, ptr %0, i32 0, i32 1, i32 %22
  %38 = load ptr, ptr %37, align 4
  %39 = and i32 %11, 1048576
  %40 = icmp ne i32 %39, 0
  %41 = icmp ne ptr %38, null
  %42 = select i1 %40, i1 %41, i1 false
  %43 = xor i1 %42, true
  %44 = and i32 %14, 64
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %64, label %47

47:                                               ; preds = %1
  %48 = trunc i32 %33 to i8
  %49 = icmp eq i8 %48, -103
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = add nsw i32 %25, -5688
  %52 = lshr exact i32 %51, 2
  %53 = icmp ult i32 %51, 36
  br i1 %53, label %56, label %54

54:                                               ; preds = %56, %50, %47
  %55 = and i32 %11, -1048577
  br label %64

56:                                               ; preds = %50
  %57 = trunc i32 %52 to i16
  %58 = lshr i16 271, %57
  %59 = and i16 %58, 1
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %54, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds [9 x ptr], ptr @switch.table.nv10_gr_intr, i32 0, i32 %52
  %63 = load ptr, ptr %62, align 4
  tail call void %63(ptr noundef %38, i32 noundef %25, i32 noundef %28) #7, !callees !13
  br label %64

64:                                               ; preds = %61, %54, %1
  %65 = phi i32 [ %11, %1 ], [ %11, %61 ], [ %55, %54 ]
  %66 = and i32 %11, 4096
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %615, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %8, align 4
  %70 = getelementptr i8, ptr %69, i32 4194560
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 4096) #7, !srcloc !12
  %71 = and i32 %11, -4097
  %72 = and i32 %65, -4097
  %73 = load ptr, ptr %6, align 4
  %74 = tail call zeroext i1 @nv04_gr_idle(ptr noundef %0) #7
  %75 = load ptr, ptr %6, align 4
  %76 = getelementptr inbounds %struct.nvkm_device, ptr %75, i32 0, i32 11
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr i8, ptr %77, i32 4194628
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %80 = and i32 %79, 65536
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %68
  %83 = load ptr, ptr %76, align 4
  %84 = getelementptr i8, ptr %83, i32 4194632
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %86 = icmp ult i32 %85, 536870912
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = lshr i32 %85, 24
  %89 = getelementptr %struct.nv10_gr, ptr %0, i32 0, i32 1, i32 %88
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  tail call fastcc void @nv10_gr_unload_context(ptr noundef nonnull %90) #7
  br label %93

93:                                               ; preds = %92, %87, %82, %68
  %94 = getelementptr inbounds %struct.nvkm_device, ptr %73, i32 0, i32 11
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr i8, ptr %95, i32 4196100
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %98 = lshr i32 %97, 20
  %99 = and i32 %98, 31
  %100 = getelementptr %struct.nv10_gr, ptr %0, i32 0, i32 1, i32 %99
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %615, label %103

103:                                              ; preds = %93
  %104 = getelementptr inbounds %struct.nv10_gr_chan, ptr %101, i32 0, i32 1
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %struct.nvkm_gr, ptr %105, i32 0, i32 1, i32 1, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.nvkm_device, ptr %107, i32 0, i32 11
  br label %109

109:                                              ; preds = %109, %103
  %110 = phi i32 [ 0, %103 ], [ %117, %109 ]
  %111 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 3, i32 %110
  %112 = load i32, ptr %111, align 4
  %113 = load ptr, ptr %108, align 4
  %114 = getelementptr [319 x i32], ptr @nv10_gr_ctx_regs, i32 0, i32 %110
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr i8, ptr %113, i32 %115
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %112) #7, !srcloc !12
  %117 = add nuw nsw i32 %110, 1
  %118 = icmp eq i32 %117, 319
  br i1 %118, label %119, label %109

119:                                              ; preds = %109
  %120 = getelementptr inbounds %struct.nvkm_device, ptr %107, i32 0, i32 15
  %121 = load i32, ptr %120, align 8
  %122 = icmp ugt i32 %121, 16
  br i1 %122, label %123, label %137

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.nvkm_device, ptr %107, i32 0, i32 16
  %125 = load i32, ptr %124, align 4
  %126 = icmp ugt i32 %125, 22
  br i1 %126, label %127, label %137

127:                                              ; preds = %127, %123
  %128 = phi i32 [ %135, %127 ], [ 0, %123 ]
  %129 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 4, i32 %128
  %130 = load i32, ptr %129, align 4
  %131 = load ptr, ptr %108, align 4
  %132 = getelementptr [18 x i32], ptr @nv17_gr_ctx_regs, i32 0, i32 %128
  %133 = load i32, ptr %132, align 4
  %134 = getelementptr i8, ptr %131, i32 %133
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %130) #7, !srcloc !12
  %135 = add nuw nsw i32 %128, 1
  %136 = icmp eq i32 %135, 18
  br i1 %136, label %137, label %127

137:                                              ; preds = %127, %123, %119
  %138 = load ptr, ptr %104, align 8
  %139 = getelementptr inbounds %struct.nvkm_gr, ptr %138, i32 0, i32 1, i32 1, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = tail call zeroext i1 @nv04_gr_idle(ptr noundef %138) #7
  %142 = getelementptr inbounds %struct.nvkm_device, ptr %140, i32 0, i32 11
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr i8, ptr %143, i32 4198208
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %146 = load ptr, ptr %142, align 4
  %147 = getelementptr i8, ptr %146, i32 4198212
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %147) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %149 = load ptr, ptr %142, align 4
  %150 = getelementptr i8, ptr %149, i32 4198208
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 268435456) #7, !srcloc !12
  %151 = load ptr, ptr %142, align 4
  %152 = getelementptr i8, ptr %151, i32 4198212
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 0) #7, !srcloc !12
  %153 = load ptr, ptr %142, align 4
  %154 = getelementptr i8, ptr %153, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 25792) #7, !srcloc !12
  %155 = load ptr, ptr %142, align 4
  %156 = getelementptr i8, ptr %155, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 1065353216) #7, !srcloc !12
  %157 = load ptr, ptr %142, align 4
  %158 = getelementptr i8, ptr %157, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 1065353216) #7, !srcloc !12
  %159 = load ptr, ptr %142, align 4
  %160 = getelementptr i8, ptr %159, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 1065353216) #7, !srcloc !12
  %161 = load ptr, ptr %142, align 4
  %162 = getelementptr i8, ptr %161, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 1065353216) #7, !srcloc !12
  %163 = load ptr, ptr %142, align 4
  %164 = getelementptr i8, ptr %163, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 0) #7, !srcloc !12
  %165 = load ptr, ptr %142, align 4
  %166 = getelementptr i8, ptr %165, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 0) #7, !srcloc !12
  %167 = load ptr, ptr %142, align 4
  %168 = getelementptr i8, ptr %167, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 0) #7, !srcloc !12
  %169 = load ptr, ptr %142, align 4
  %170 = getelementptr i8, ptr %169, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 0) #7, !srcloc !12
  %171 = load ptr, ptr %142, align 4
  %172 = getelementptr i8, ptr %171, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 27312) #7, !srcloc !12
  %173 = load ptr, ptr %142, align 4
  %174 = getelementptr i8, ptr %173, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 1065353216) #7, !srcloc !12
  %175 = load ptr, ptr %142, align 4
  %176 = getelementptr i8, ptr %175, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 1065353216) #7, !srcloc !12
  %177 = load ptr, ptr %142, align 4
  %178 = getelementptr i8, ptr %177, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %178, i32 1065353216) #7, !srcloc !12
  %179 = load ptr, ptr %142, align 4
  %180 = getelementptr i8, ptr %179, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %180, i32 27264) #7, !srcloc !12
  %181 = load ptr, ptr %142, align 4
  %182 = getelementptr i8, ptr %181, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 0) #7, !srcloc !12
  %183 = load ptr, ptr %142, align 4
  %184 = getelementptr i8, ptr %183, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 0) #7, !srcloc !12
  %185 = load ptr, ptr %142, align 4
  %186 = getelementptr i8, ptr %185, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 0) #7, !srcloc !12
  %187 = load ptr, ptr %142, align 4
  %188 = getelementptr i8, ptr %187, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 64) #7, !srcloc !12
  %189 = load ptr, ptr %142, align 4
  %190 = getelementptr i8, ptr %189, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 8) #7, !srcloc !12
  %191 = load ptr, ptr %142, align 4
  %192 = getelementptr i8, ptr %191, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %192, i32 512) #7, !srcloc !12
  br label %193

193:                                              ; preds = %193, %137
  %194 = phi i32 [ 0, %137 ], [ %199, %193 ]
  %195 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 2, i32 %194
  %196 = load i32, ptr %195, align 4
  %197 = load ptr, ptr %142, align 4
  %198 = getelementptr i8, ptr %197, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 %196) #7, !srcloc !12
  %199 = add nuw nsw i32 %194, 1
  %200 = icmp eq i32 %199, 48
  br i1 %200, label %201, label %193

201:                                              ; preds = %193
  %202 = tail call zeroext i1 @nv04_gr_idle(ptr noundef %138) #7
  %203 = load ptr, ptr %142, align 4
  %204 = getelementptr i8, ptr %203, i32 4198208
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %145) #7, !srcloc !12
  %205 = load ptr, ptr %142, align 4
  %206 = getelementptr i8, ptr %205, i32 4198212
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %206, i32 %148) #7, !srcloc !12
  %207 = load ptr, ptr %142, align 4
  %208 = getelementptr i8, ptr %207, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %208, i32 25600) #7, !srcloc !12
  br label %209

209:                                              ; preds = %209, %201
  %210 = phi i32 [ 0, %201 ], [ %215, %209 ]
  %211 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 4, i32 %210
  %212 = load i32, ptr %211, align 4
  %213 = load ptr, ptr %142, align 4
  %214 = getelementptr i8, ptr %213, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 %212) #7, !srcloc !12
  %215 = add nuw nsw i32 %210, 1
  %216 = icmp eq i32 %215, 236
  br i1 %216, label %217, label %209

217:                                              ; preds = %209
  %218 = load ptr, ptr %142, align 4
  %219 = getelementptr i8, ptr %218, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %219, i32 26624) #7, !srcloc !12
  br label %220

220:                                              ; preds = %220, %217
  %221 = phi i32 [ 0, %217 ], [ %226, %220 ]
  %222 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 5, i32 %221
  %223 = load i32, ptr %222, align 4
  %224 = load ptr, ptr %142, align 4
  %225 = getelementptr i8, ptr %224, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 %223) #7, !srcloc !12
  %226 = add nuw nsw i32 %221, 1
  %227 = icmp eq i32 %226, 188
  br i1 %227, label %228, label %220

228:                                              ; preds = %220
  %229 = load ptr, ptr %142, align 4
  %230 = getelementptr i8, ptr %229, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %230, i32 27648) #7, !srcloc !12
  %231 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 6, i32 0
  %232 = load i32, ptr %231, align 4
  %233 = load ptr, ptr %142, align 4
  %234 = getelementptr i8, ptr %233, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %234, i32 %232) #7, !srcloc !12
  %235 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 6, i32 1
  %236 = load i32, ptr %235, align 4
  %237 = load ptr, ptr %142, align 4
  %238 = getelementptr i8, ptr %237, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %238, i32 %236) #7, !srcloc !12
  %239 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 6, i32 2
  %240 = load i32, ptr %239, align 4
  %241 = load ptr, ptr %142, align 4
  %242 = getelementptr i8, ptr %241, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %242, i32 %240) #7, !srcloc !12
  %243 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 6, i32 3
  %244 = load i32, ptr %243, align 4
  %245 = load ptr, ptr %142, align 4
  %246 = getelementptr i8, ptr %245, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %246, i32 %244) #7, !srcloc !12
  %247 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 6, i32 4
  %248 = load i32, ptr %247, align 4
  %249 = load ptr, ptr %142, align 4
  %250 = getelementptr i8, ptr %249, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %250, i32 %248) #7, !srcloc !12
  %251 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 6, i32 5
  %252 = load i32, ptr %251, align 4
  %253 = load ptr, ptr %142, align 4
  %254 = getelementptr i8, ptr %253, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %254, i32 %252) #7, !srcloc !12
  %255 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 6, i32 6
  %256 = load i32, ptr %255, align 4
  %257 = load ptr, ptr %142, align 4
  %258 = getelementptr i8, ptr %257, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %258, i32 %256) #7, !srcloc !12
  %259 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 6, i32 7
  %260 = load i32, ptr %259, align 4
  %261 = load ptr, ptr %142, align 4
  %262 = getelementptr i8, ptr %261, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %262, i32 %260) #7, !srcloc !12
  %263 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 6, i32 8
  %264 = load i32, ptr %263, align 4
  %265 = load ptr, ptr %142, align 4
  %266 = getelementptr i8, ptr %265, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %266, i32 %264) #7, !srcloc !12
  %267 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 6, i32 9
  %268 = load i32, ptr %267, align 4
  %269 = load ptr, ptr %142, align 4
  %270 = getelementptr i8, ptr %269, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %270, i32 %268) #7, !srcloc !12
  %271 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 6, i32 10
  %272 = load i32, ptr %271, align 4
  %273 = load ptr, ptr %142, align 4
  %274 = getelementptr i8, ptr %273, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %274, i32 %272) #7, !srcloc !12
  %275 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 6, i32 11
  %276 = load i32, ptr %275, align 4
  %277 = load ptr, ptr %142, align 4
  %278 = getelementptr i8, ptr %277, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %278, i32 %276) #7, !srcloc !12
  %279 = load ptr, ptr %142, align 4
  %280 = getelementptr i8, ptr %279, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %280, i32 28672) #7, !srcloc !12
  br label %281

281:                                              ; preds = %281, %228
  %282 = phi i32 [ 0, %228 ], [ %287, %281 ]
  %283 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 7, i32 %282
  %284 = load i32, ptr %283, align 4
  %285 = load ptr, ptr %142, align 4
  %286 = getelementptr i8, ptr %285, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %286, i32 %284) #7, !srcloc !12
  %287 = add nuw nsw i32 %282, 1
  %288 = icmp eq i32 %287, 76
  br i1 %288, label %289, label %281

289:                                              ; preds = %281
  %290 = load ptr, ptr %142, align 4
  %291 = getelementptr i8, ptr %290, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %291, i32 29696) #7, !srcloc !12
  br label %292

292:                                              ; preds = %292, %289
  %293 = phi i32 [ 0, %289 ], [ %298, %292 ]
  %294 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 8, i32 %293
  %295 = load i32, ptr %294, align 4
  %296 = load ptr, ptr %142, align 4
  %297 = getelementptr i8, ptr %296, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %297, i32 %295) #7, !srcloc !12
  %298 = add nuw nsw i32 %293, 1
  %299 = icmp eq i32 %298, 48
  br i1 %299, label %300, label %292

300:                                              ; preds = %292
  %301 = load ptr, ptr %142, align 4
  %302 = getelementptr i8, ptr %301, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %302, i32 30720) #7, !srcloc !12
  br label %303

303:                                              ; preds = %303, %300
  %304 = phi i32 [ 0, %300 ], [ %309, %303 ]
  %305 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 9, i32 %304
  %306 = load i32, ptr %305, align 4
  %307 = load ptr, ptr %142, align 4
  %308 = getelementptr i8, ptr %307, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %308, i32 %306) #7, !srcloc !12
  %309 = add nuw nsw i32 %304, 1
  %310 = icmp eq i32 %309, 48
  br i1 %310, label %311, label %303

311:                                              ; preds = %303
  %312 = load ptr, ptr %142, align 4
  %313 = getelementptr i8, ptr %312, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %313, i32 17408) #7, !srcloc !12
  br label %314

314:                                              ; preds = %314, %311
  %315 = phi i32 [ 0, %311 ], [ %320, %314 ]
  %316 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 3, i32 %315
  %317 = load i32, ptr %316, align 4
  %318 = load ptr, ptr %142, align 4
  %319 = getelementptr i8, ptr %318, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %319, i32 %317) #7, !srcloc !12
  %320 = add nuw nsw i32 %315, 1
  %321 = icmp eq i32 %320, 32
  br i1 %321, label %322, label %314

322:                                              ; preds = %314
  %323 = getelementptr inbounds %struct.nv10_gr_chan, ptr %101, i32 0, i32 5
  %324 = load ptr, ptr %142, align 4
  %325 = getelementptr i8, ptr %324, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %325, i32 0) #7, !srcloc !12
  %326 = load i32, ptr %323, align 4
  %327 = load ptr, ptr %142, align 4
  %328 = getelementptr i8, ptr %327, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %328, i32 %326) #7, !srcloc !12
  %329 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 0, i32 1
  %330 = load i32, ptr %329, align 4
  %331 = load ptr, ptr %142, align 4
  %332 = getelementptr i8, ptr %331, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %332, i32 %330) #7, !srcloc !12
  %333 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 0, i32 2
  %334 = load i32, ptr %333, align 4
  %335 = load ptr, ptr %142, align 4
  %336 = getelementptr i8, ptr %335, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %336, i32 %334) #7, !srcloc !12
  %337 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 0, i32 3
  %338 = load i32, ptr %337, align 4
  %339 = load ptr, ptr %142, align 4
  %340 = getelementptr i8, ptr %339, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %340, i32 %338) #7, !srcloc !12
  %341 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 0, i32 4
  %342 = load i32, ptr %341, align 4
  %343 = load ptr, ptr %142, align 4
  %344 = getelementptr i8, ptr %343, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %344, i32 %342) #7, !srcloc !12
  %345 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 0, i32 5
  %346 = load i32, ptr %345, align 4
  %347 = load ptr, ptr %142, align 4
  %348 = getelementptr i8, ptr %347, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %348, i32 %346) #7, !srcloc !12
  %349 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 0, i32 6
  %350 = load i32, ptr %349, align 4
  %351 = load ptr, ptr %142, align 4
  %352 = getelementptr i8, ptr %351, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %352, i32 %350) #7, !srcloc !12
  %353 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 0, i32 7
  %354 = load i32, ptr %353, align 4
  %355 = load ptr, ptr %142, align 4
  %356 = getelementptr i8, ptr %355, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %356, i32 %354) #7, !srcloc !12
  %357 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 0, i32 8
  %358 = load i32, ptr %357, align 4
  %359 = load ptr, ptr %142, align 4
  %360 = getelementptr i8, ptr %359, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %360, i32 %358) #7, !srcloc !12
  %361 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 0, i32 9
  %362 = load i32, ptr %361, align 4
  %363 = load ptr, ptr %142, align 4
  %364 = getelementptr i8, ptr %363, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %364, i32 %362) #7, !srcloc !12
  %365 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 0, i32 10
  %366 = load i32, ptr %365, align 4
  %367 = load ptr, ptr %142, align 4
  %368 = getelementptr i8, ptr %367, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %368, i32 %366) #7, !srcloc !12
  %369 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 0, i32 11
  %370 = load i32, ptr %369, align 4
  %371 = load ptr, ptr %142, align 4
  %372 = getelementptr i8, ptr %371, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %372, i32 %370) #7, !srcloc !12
  %373 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 0, i32 12
  %374 = load i32, ptr %373, align 4
  %375 = load ptr, ptr %142, align 4
  %376 = getelementptr i8, ptr %375, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %376, i32 %374) #7, !srcloc !12
  %377 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 0, i32 13
  %378 = load i32, ptr %377, align 4
  %379 = load ptr, ptr %142, align 4
  %380 = getelementptr i8, ptr %379, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %380, i32 %378) #7, !srcloc !12
  %381 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 0, i32 14
  %382 = load i32, ptr %381, align 4
  %383 = load ptr, ptr %142, align 4
  %384 = getelementptr i8, ptr %383, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %384, i32 %382) #7, !srcloc !12
  %385 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 0, i32 15
  %386 = load i32, ptr %385, align 4
  %387 = load ptr, ptr %142, align 4
  %388 = getelementptr i8, ptr %387, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %388, i32 %386) #7, !srcloc !12
  %389 = load ptr, ptr %142, align 4
  %390 = getelementptr i8, ptr %389, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %390, i32 64) #7, !srcloc !12
  %391 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 1, i32 0
  %392 = load i32, ptr %391, align 4
  %393 = load ptr, ptr %142, align 4
  %394 = getelementptr i8, ptr %393, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %394, i32 %392) #7, !srcloc !12
  %395 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 1, i32 1
  %396 = load i32, ptr %395, align 4
  %397 = load ptr, ptr %142, align 4
  %398 = getelementptr i8, ptr %397, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %398, i32 %396) #7, !srcloc !12
  %399 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 1, i32 2
  %400 = load i32, ptr %399, align 4
  %401 = load ptr, ptr %142, align 4
  %402 = getelementptr i8, ptr %401, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %402, i32 %400) #7, !srcloc !12
  %403 = getelementptr %struct.nv10_gr_chan, ptr %101, i32 0, i32 5, i32 1, i32 3
  %404 = load i32, ptr %403, align 4
  %405 = load ptr, ptr %142, align 4
  %406 = getelementptr i8, ptr %405, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %406, i32 %404) #7, !srcloc !12
  %407 = tail call zeroext i1 @nv04_gr_idle(ptr noundef %138) #7
  %408 = load ptr, ptr %108, align 4
  %409 = getelementptr i8, ptr %408, i32 4198220
  %410 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %409) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %411 = and i32 %410, 65535
  %412 = load ptr, ptr %104, align 8
  %413 = getelementptr inbounds %struct.nvkm_gr, ptr %412, i32 0, i32 1, i32 1, i32 1
  %414 = load ptr, ptr %413, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %2, i8 0, i32 96, i1 false) #7, !annotation !10
  %415 = getelementptr inbounds %struct.nvkm_device, ptr %414, i32 0, i32 11
  %416 = load ptr, ptr %415, align 4
  %417 = getelementptr i8, ptr %416, i32 4194656
  %418 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %417) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %419 = and i32 %418, 4095
  switch i32 %419, label %420 [
    i32 153, label %455
    i32 150, label %455
    i32 86, label %455
  ]

420:                                              ; preds = %322
  %421 = load ptr, ptr %415, align 4
  %422 = getelementptr i8, ptr %421, i32 4194660
  %423 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %422) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %424 = and i32 %423, 4095
  switch i32 %424, label %425 [
    i32 153, label %455
    i32 150, label %455
    i32 86, label %455
  ]

425:                                              ; preds = %420
  %426 = load ptr, ptr %415, align 4
  %427 = getelementptr i8, ptr %426, i32 4194664
  %428 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %427) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %429 = and i32 %428, 4095
  switch i32 %429, label %430 [
    i32 153, label %455
    i32 150, label %455
    i32 86, label %455
  ]

430:                                              ; preds = %425
  %431 = load ptr, ptr %415, align 4
  %432 = getelementptr i8, ptr %431, i32 4194668
  %433 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %432) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %434 = and i32 %433, 4095
  switch i32 %434, label %435 [
    i32 153, label %455
    i32 150, label %455
    i32 86, label %455
  ]

435:                                              ; preds = %430
  %436 = load ptr, ptr %415, align 4
  %437 = getelementptr i8, ptr %436, i32 4194672
  %438 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %437) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %439 = and i32 %438, 4095
  switch i32 %439, label %440 [
    i32 153, label %455
    i32 150, label %455
    i32 86, label %455
  ]

440:                                              ; preds = %435
  %441 = load ptr, ptr %415, align 4
  %442 = getelementptr i8, ptr %441, i32 4194676
  %443 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %442) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %444 = and i32 %443, 4095
  switch i32 %444, label %445 [
    i32 153, label %455
    i32 150, label %455
    i32 86, label %455
  ]

445:                                              ; preds = %440
  %446 = load ptr, ptr %415, align 4
  %447 = getelementptr i8, ptr %446, i32 4194680
  %448 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %447) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %449 = and i32 %448, 4095
  switch i32 %449, label %450 [
    i32 153, label %455
    i32 150, label %455
    i32 86, label %455
  ]

450:                                              ; preds = %445
  %451 = load ptr, ptr %415, align 4
  %452 = getelementptr i8, ptr %451, i32 4194684
  %453 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %452) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %454 = and i32 %453, 4095
  switch i32 %454, label %598 [
    i32 153, label %455
    i32 150, label %455
    i32 86, label %455
  ]

455:                                              ; preds = %450, %450, %450, %445, %445, %445, %440, %440, %440, %435, %435, %435, %430, %430, %430, %425, %425, %425, %420, %420, %420, %322, %322, %322
  %456 = phi i32 [ 0, %322 ], [ 0, %322 ], [ 0, %322 ], [ 1, %420 ], [ 1, %420 ], [ 1, %420 ], [ 2, %425 ], [ 2, %425 ], [ 2, %425 ], [ 3, %430 ], [ 3, %430 ], [ 3, %430 ], [ 4, %435 ], [ 4, %435 ], [ 4, %435 ], [ 5, %440 ], [ 5, %440 ], [ 5, %440 ], [ 6, %445 ], [ 6, %445 ], [ 6, %445 ], [ 7, %450 ], [ 7, %450 ], [ 7, %450 ]
  %457 = icmp eq i32 %411, 0
  br i1 %457, label %598, label %458

458:                                              ; preds = %455
  %459 = load ptr, ptr %415, align 4
  %460 = getelementptr i8, ptr %459, i32 4194632
  %461 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %460) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %462 = load ptr, ptr %415, align 4
  %463 = getelementptr i8, ptr %462, i32 4194636
  %464 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %463) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %465 = load ptr, ptr %415, align 4
  %466 = getelementptr i8, ptr %465, i32 4194640
  %467 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %466) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %468 = load ptr, ptr %415, align 4
  %469 = getelementptr i8, ptr %468, i32 4194644
  %470 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %469) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %471 = load ptr, ptr %415, align 4
  %472 = getelementptr i8, ptr %471, i32 4194648
  %473 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %472) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %474 = load ptr, ptr %415, align 4
  %475 = getelementptr i8, ptr %474, i32 4194652
  %476 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %475) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %477 = load ptr, ptr %415, align 4
  %478 = getelementptr i8, ptr %477, i32 4196196
  %479 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %478) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %480 = load ptr, ptr %415, align 4
  %481 = getelementptr i8, ptr %480, i32 4196200
  %482 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %481) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %483 = load ptr, ptr %415, align 4
  %484 = getelementptr i8, ptr %483, i32 4196204
  %485 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %484) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %486 = load ptr, ptr %415, align 4
  %487 = getelementptr i8, ptr %486, i32 4196192
  %488 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %487) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  br label %557

489:                                              ; preds = %557
  %490 = shl nuw nsw i32 %456, 2
  %491 = or i32 %490, 4194656
  %492 = load ptr, ptr %415, align 4
  %493 = getelementptr i8, ptr %492, i32 %491
  %494 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %493) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %495 = load ptr, ptr %415, align 4
  %496 = getelementptr i8, ptr %495, i32 4194636
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %496, i32 %494) #7, !srcloc !12
  %497 = load ptr, ptr %415, align 4
  %498 = or i32 %490, 4194688
  %499 = getelementptr i8, ptr %497, i32 %498
  %500 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %499) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %501 = load ptr, ptr %415, align 4
  %502 = getelementptr i8, ptr %501, i32 4194640
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %502, i32 %500) #7, !srcloc !12
  %503 = load ptr, ptr %415, align 4
  %504 = or i32 %490, 4194720
  %505 = getelementptr i8, ptr %503, i32 %504
  %506 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %505) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %507 = load ptr, ptr %415, align 4
  %508 = getelementptr i8, ptr %507, i32 4194644
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %508, i32 %506) #7, !srcloc !12
  %509 = load ptr, ptr %415, align 4
  %510 = or i32 %490, 4194752
  %511 = getelementptr i8, ptr %509, i32 %510
  %512 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %511) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %513 = load ptr, ptr %415, align 4
  %514 = getelementptr i8, ptr %513, i32 4194648
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %514, i32 %512) #7, !srcloc !12
  %515 = load ptr, ptr %415, align 4
  %516 = or i32 %490, 4194784
  %517 = getelementptr i8, ptr %515, i32 %516
  %518 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %517) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %519 = load ptr, ptr %415, align 4
  %520 = getelementptr i8, ptr %519, i32 4194652
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %520, i32 %518) #7, !srcloc !12
  %521 = load ptr, ptr %415, align 4
  %522 = getelementptr i8, ptr %521, i32 4194632
  %523 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %522) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %524 = and i32 %523, -57345
  %525 = shl nuw nsw i32 %456, 13
  %526 = or i32 %524, %525
  %527 = load ptr, ptr %415, align 4
  %528 = getelementptr i8, ptr %527, i32 4194632
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %528, i32 %526) #7, !srcloc !12
  %529 = load ptr, ptr %415, align 4
  %530 = getelementptr i8, ptr %529, i32 4196192
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %530, i32 0) #7, !srcloc !12
  %531 = shl nuw nsw i32 %99, 20
  %532 = shl nuw nsw i32 %456, 16
  %533 = or i32 %532, %531
  %534 = or i32 %533, 738197900
  %535 = load ptr, ptr %415, align 4
  %536 = getelementptr i8, ptr %535, i32 4196196
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %536, i32 %534) #7, !srcloc !12
  %537 = load ptr, ptr %415, align 4
  %538 = getelementptr i8, ptr %537, i32 4196200
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %538, i32 %411) #7, !srcloc !12
  %539 = load ptr, ptr %415, align 4
  %540 = getelementptr i8, ptr %539, i32 4194628
  %541 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %540) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %542 = or i32 %541, 65536
  %543 = load ptr, ptr %415, align 4
  %544 = getelementptr i8, ptr %543, i32 4194628
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %544, i32 %542) #7, !srcloc !12
  %545 = load ptr, ptr %415, align 4
  %546 = getelementptr i8, ptr %545, i32 4196128
  %547 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %546) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %548 = or i32 %547, 1
  %549 = load ptr, ptr %415, align 4
  %550 = getelementptr i8, ptr %549, i32 4196128
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %550, i32 %548) #7, !srcloc !12
  %551 = load ptr, ptr %415, align 4
  %552 = getelementptr i8, ptr %551, i32 4196128
  %553 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %552) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %554 = and i32 %553, -2
  %555 = load ptr, ptr %415, align 4
  %556 = getelementptr i8, ptr %555, i32 4196128
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %556, i32 %554) #7, !srcloc !12
  br label %567

557:                                              ; preds = %557, %458
  %558 = phi i32 [ 0, %458 ], [ %565, %557 ]
  %559 = load ptr, ptr %415, align 4
  %560 = shl nuw nsw i32 %558, 2
  %561 = add nuw nsw i32 %560, 4196256
  %562 = getelementptr i8, ptr %559, i32 %561
  %563 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %562) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %564 = getelementptr [24 x i32], ptr %2, i32 0, i32 %558
  store i32 %563, ptr %564, align 4
  %565 = add nuw nsw i32 %558, 1
  %566 = icmp eq i32 %565, 24
  br i1 %566, label %489, label %557

567:                                              ; preds = %567, %489
  %568 = phi i32 [ 0, %489 ], [ %575, %567 ]
  %569 = getelementptr [24 x i32], ptr %2, i32 0, i32 %568
  %570 = load i32, ptr %569, align 4
  %571 = load ptr, ptr %415, align 4
  %572 = shl nuw nsw i32 %568, 2
  %573 = add nuw nsw i32 %572, 4196256
  %574 = getelementptr i8, ptr %571, i32 %573
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %574, i32 %570) #7, !srcloc !12
  %575 = add nuw nsw i32 %568, 1
  %576 = icmp eq i32 %575, 24
  br i1 %576, label %577, label %567

577:                                              ; preds = %567
  %578 = load ptr, ptr %415, align 4
  %579 = getelementptr i8, ptr %578, i32 4196192
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %579, i32 %488) #7, !srcloc !12
  %580 = load ptr, ptr %415, align 4
  %581 = getelementptr i8, ptr %580, i32 4196196
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %581, i32 %479) #7, !srcloc !12
  %582 = load ptr, ptr %415, align 4
  %583 = getelementptr i8, ptr %582, i32 4196200
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %583, i32 %482) #7, !srcloc !12
  %584 = load ptr, ptr %415, align 4
  %585 = getelementptr i8, ptr %584, i32 4196204
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %585, i32 %485) #7, !srcloc !12
  %586 = load ptr, ptr %415, align 4
  %587 = getelementptr i8, ptr %586, i32 4194636
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %587, i32 %464) #7, !srcloc !12
  %588 = load ptr, ptr %415, align 4
  %589 = getelementptr i8, ptr %588, i32 4194640
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %589, i32 %467) #7, !srcloc !12
  %590 = load ptr, ptr %415, align 4
  %591 = getelementptr i8, ptr %590, i32 4194644
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %591, i32 %470) #7, !srcloc !12
  %592 = load ptr, ptr %415, align 4
  %593 = getelementptr i8, ptr %592, i32 4194648
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %593, i32 %473) #7, !srcloc !12
  %594 = load ptr, ptr %415, align 4
  %595 = getelementptr i8, ptr %594, i32 4194652
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %595, i32 %476) #7, !srcloc !12
  %596 = load ptr, ptr %415, align 4
  %597 = getelementptr i8, ptr %596, i32 4194632
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %597, i32 %461) #7, !srcloc !12
  br label %598

598:                                              ; preds = %577, %455, %450
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #7
  %599 = load ptr, ptr %108, align 4
  %600 = getelementptr i8, ptr %599, i32 4194628
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %600, i32 268501248) #7, !srcloc !12
  %601 = load ptr, ptr %108, align 4
  %602 = getelementptr i8, ptr %601, i32 4194632
  %603 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %602) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %604 = and i32 %603, 16777215
  %605 = shl nuw nsw i32 %99, 24
  %606 = or i32 %604, %605
  %607 = load ptr, ptr %108, align 4
  %608 = getelementptr i8, ptr %607, i32 4194632
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %608, i32 %606) #7, !srcloc !12
  %609 = load ptr, ptr %108, align 4
  %610 = getelementptr i8, ptr %609, i32 4196196
  %611 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %610) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %612 = and i32 %611, -805306369
  %613 = load ptr, ptr %108, align 4
  %614 = getelementptr i8, ptr %613, i32 4196196
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %614, i32 %612) #7, !srcloc !12
  br label %615

615:                                              ; preds = %598, %93, %64
  %616 = phi i32 [ %11, %64 ], [ %71, %93 ], [ %71, %598 ]
  %617 = phi i32 [ %65, %64 ], [ %72, %93 ], [ %72, %598 ]
  %618 = load ptr, ptr %8, align 4
  %619 = getelementptr i8, ptr %618, i32 4194560
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %619, i32 %616) #7, !srcloc !12
  %620 = load ptr, ptr %8, align 4
  %621 = getelementptr i8, ptr %620, i32 4196128
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %621, i32 1) #7, !srcloc !12
  %622 = icmp eq i32 %617, 0
  br i1 %622, label %638, label %623

623:                                              ; preds = %615
  call void @nvkm_snprintbf(ptr noundef nonnull %3, i32 noundef 128, ptr noundef nonnull @nv10_gr_intr_name, i32 noundef %617) #7
  call void @nvkm_snprintbf(ptr noundef nonnull %4, i32 noundef 128, ptr noundef nonnull @nv04_gr_nsource, i32 noundef %14) #7
  call void @nvkm_snprintbf(ptr noundef nonnull %5, i32 noundef 128, ptr noundef nonnull @nv10_gr_nstatus, i32 noundef %17) #7
  %624 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %625 = load i32, ptr %624, align 4
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %638, label %627

627:                                              ; preds = %623
  %628 = load ptr, ptr %6, align 4
  %629 = getelementptr inbounds %struct.nvkm_device, ptr %628, i32 0, i32 2
  %630 = load ptr, ptr %629, align 8
  %631 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  br i1 %41, label %632, label %636

632:                                              ; preds = %627
  %633 = getelementptr inbounds %struct.nvkm_object, ptr %38, i32 0, i32 1
  %634 = load ptr, ptr %633, align 4
  %635 = getelementptr inbounds %struct.nvkm_client, ptr %634, i32 0, i32 1
  br label %636

636:                                              ; preds = %632, %627
  %637 = phi ptr [ %635, %632 ], [ @.str.7, %627 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %630, ptr noundef nonnull @.str.6, ptr noundef %631, i32 noundef %617, ptr noundef nonnull %3, i32 noundef %14, ptr noundef nonnull %4, i32 noundef %17, ptr noundef nonnull %5, i32 noundef %22, ptr noundef %637, i32 noundef %24, i32 noundef %34, i32 noundef %25, i32 noundef %28) #8
  br label %638

638:                                              ; preds = %636, %623, %615
  call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %36) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #7
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_snprintbf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv10_gr_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4194560
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 -1) #7, !srcloc !12
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 4194624
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 -1) #7, !srcloc !12
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 4194432
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 -1) #7, !srcloc !12
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 4194432
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #7, !srcloc !12
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 4194436
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 1148672) #7, !srcloc !12
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 4194440
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 637086425) #7, !srcloc !12
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 4194444
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 -169998288) #7, !srcloc !12
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 15
  %20 = load i32, ptr %19, align 8
  %21 = icmp ugt i32 %20, 16
  br i1 %21, label %22, label %37

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 16
  %24 = load i32, ptr %23, align 4
  %25 = icmp ugt i32 %24, 22
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr i8, ptr %27, i32 4194448
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 520093696) #7, !srcloc !12
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr i8, ptr %29, i32 4196880
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 67059638) #7, !srcloc !12
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr i8, ptr %31, i32 4196408
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 3114628) #7, !srcloc !12
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr i8, ptr %33, i32 4196412
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 1138495) #7, !srcloc !12
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr i8, ptr %35, i32 4196016
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 1073741856) #7, !srcloc !12
  br label %40

37:                                               ; preds = %22, %1
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr i8, ptr %38, i32 4194448
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 0) #7, !srcloc !12
  br label %40

40:                                               ; preds = %37, %26
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr i8, ptr %41, i32 4194636
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #7, !srcloc !12
  %43 = load ptr, ptr %4, align 4
  %44 = getelementptr i8, ptr %43, i32 4194640
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 0) #7, !srcloc !12
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr i8, ptr %45, i32 4194644
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 0) #7, !srcloc !12
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr i8, ptr %47, i32 4194648
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 0) #7, !srcloc !12
  %49 = load ptr, ptr %4, align 4
  %50 = getelementptr i8, ptr %49, i32 4194652
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 0) #7, !srcloc !12
  %51 = load ptr, ptr %4, align 4
  %52 = getelementptr i8, ptr %51, i32 4196116
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 -1) #7, !srcloc !12
  %53 = load ptr, ptr %4, align 4
  %54 = getelementptr i8, ptr %53, i32 4194632
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %56 = and i32 %55, 16777215
  %57 = or i32 %56, 520093696
  %58 = load ptr, ptr %4, align 4
  %59 = getelementptr i8, ptr %58, i32 4194632
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #7, !srcloc !12
  %60 = load ptr, ptr %4, align 4
  %61 = getelementptr i8, ptr %60, i32 4194628
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 268435712) #7, !srcloc !12
  %62 = load ptr, ptr %4, align 4
  %63 = getelementptr i8, ptr %62, i32 4196196
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 134217728) #7, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv10_gr_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 224) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nv10_gr, ptr %7, i32 0, i32 2
  store i32 0, ptr %10, align 4
  store ptr %7, ptr %4, align 4
  %11 = tail call i32 @nvkm_gr_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext true, ptr noundef nonnull %7) #7
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi i32 [ %11, %9 ], [ -12, %5 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gr_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv10_gr_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 224) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nv10_gr, ptr %6, i32 0, i32 2
  store i32 0, ptr %9, align 4
  store ptr %6, ptr %3, align 4
  %10 = tail call i32 @nvkm_gr_ctor(ptr noundef nonnull @nv10_gr, ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef nonnull %6) #7
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ %10, %8 ], [ -12, %4 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nv10_gr_chan_dtor(ptr noundef readonly returned %0) #0 {
  %2 = getelementptr inbounds %struct.nv10_gr_chan, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nv10_gr, ptr %3, i32 0, i32 2
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %6 = getelementptr inbounds %struct.nv10_gr_chan, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.nv10_gr, ptr %3, i32 0, i32 1, i32 %7
  store ptr null, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv10_gr_chan_fini(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.nv10_gr_chan, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_gr, ptr %4, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nv10_gr, ptr %4, i32 0, i32 2
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #7
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 4196128
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %13 = and i32 %12, -2
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr i8, ptr %14, i32 4196128
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #7, !srcloc !12
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 4194628
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %21 = and i32 %20, 65536
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %2
  %24 = load ptr, ptr %17, align 4
  %25 = getelementptr i8, ptr %24, i32 4194632
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %27 = icmp ult i32 %26, 536870912
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = lshr i32 %26, 24
  %30 = getelementptr %struct.nv10_gr, ptr %4, i32 0, i32 1, i32 %29
  %31 = load ptr, ptr %30, align 4
  br label %32

32:                                               ; preds = %28, %23, %2
  %33 = phi ptr [ null, %2 ], [ %31, %28 ], [ null, %23 ]
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call fastcc void @nv10_gr_unload_context(ptr noundef %0)
  br label %36

36:                                               ; preds = %35, %32
  %37 = load ptr, ptr %9, align 4
  %38 = getelementptr i8, ptr %37, i32 4196128
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %40 = or i32 %39, 1
  %41 = load ptr, ptr %9, align 4
  %42 = getelementptr i8, ptr %41, i32 4196128
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #7, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv10_gr_unload_context(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nv10_gr_chan, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_gr, ptr %3, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  br label %7

7:                                                ; preds = %7, %1
  %8 = phi i32 [ 0, %1 ], [ %15, %7 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr [319 x i32], ptr @nv10_gr_ctx_regs, i32 0, i32 %8
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %14 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 3, i32 %8
  store i32 %13, ptr %14, align 4
  %15 = add nuw nsw i32 %8, 1
  %16 = icmp eq i32 %15, 319
  br i1 %16, label %17, label %7

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 15
  %19 = load i32, ptr %18, align 8
  %20 = icmp ugt i32 %19, 16
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 16
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %23, 22
  br i1 %24, label %25, label %35

25:                                               ; preds = %25, %21
  %26 = phi i32 [ %33, %25 ], [ 0, %21 ]
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr [18 x i32], ptr @nv17_gr_ctx_regs, i32 0, i32 %26
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr i8, ptr %27, i32 %29
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %32 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 4, i32 %26
  store i32 %31, ptr %32, align 4
  %33 = add nuw nsw i32 %26, 1
  %34 = icmp eq i32 %33, 18
  br i1 %34, label %35, label %25

35:                                               ; preds = %25, %21, %17
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr inbounds %struct.nvkm_gr, ptr %36, i32 0, i32 1, i32 1, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 11
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 17408) #7, !srcloc !12
  br label %42

42:                                               ; preds = %42, %35
  %43 = phi i32 [ 0, %35 ], [ %48, %42 ]
  %44 = load ptr, ptr %39, align 4
  %45 = getelementptr i8, ptr %44, i32 4198228
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %47 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 3, i32 %43
  store i32 %46, ptr %47, align 4
  %48 = add nuw nsw i32 %43, 1
  %49 = icmp eq i32 %48, 32
  br i1 %49, label %50, label %42

50:                                               ; preds = %42
  %51 = load ptr, ptr %39, align 4
  %52 = getelementptr i8, ptr %51, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 512) #7, !srcloc !12
  br label %53

53:                                               ; preds = %53, %50
  %54 = phi i32 [ 0, %50 ], [ %59, %53 ]
  %55 = load ptr, ptr %39, align 4
  %56 = getelementptr i8, ptr %55, i32 4198228
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %58 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 2, i32 %54
  store i32 %57, ptr %58, align 4
  %59 = add nuw nsw i32 %54, 1
  %60 = icmp eq i32 %59, 48
  br i1 %60, label %61, label %53

61:                                               ; preds = %53
  %62 = load ptr, ptr %39, align 4
  %63 = getelementptr i8, ptr %62, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 25600) #7, !srcloc !12
  br label %64

64:                                               ; preds = %64, %61
  %65 = phi i32 [ 0, %61 ], [ %70, %64 ]
  %66 = load ptr, ptr %39, align 4
  %67 = getelementptr i8, ptr %66, i32 4198228
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %69 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 4, i32 %65
  store i32 %68, ptr %69, align 4
  %70 = add nuw nsw i32 %65, 1
  %71 = icmp eq i32 %70, 236
  br i1 %71, label %72, label %64

72:                                               ; preds = %64
  %73 = load ptr, ptr %39, align 4
  %74 = getelementptr i8, ptr %73, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 26624) #7, !srcloc !12
  br label %75

75:                                               ; preds = %75, %72
  %76 = phi i32 [ 0, %72 ], [ %81, %75 ]
  %77 = load ptr, ptr %39, align 4
  %78 = getelementptr i8, ptr %77, i32 4198228
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %80 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 5, i32 %76
  store i32 %79, ptr %80, align 4
  %81 = add nuw nsw i32 %76, 1
  %82 = icmp eq i32 %81, 188
  br i1 %82, label %83, label %75

83:                                               ; preds = %75
  %84 = load ptr, ptr %39, align 4
  %85 = getelementptr i8, ptr %84, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 27648) #7, !srcloc !12
  %86 = load ptr, ptr %39, align 4
  %87 = getelementptr i8, ptr %86, i32 4198228
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %89 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 6, i32 0
  store i32 %88, ptr %89, align 4
  %90 = load ptr, ptr %39, align 4
  %91 = getelementptr i8, ptr %90, i32 4198228
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %93 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 6, i32 1
  store i32 %92, ptr %93, align 4
  %94 = load ptr, ptr %39, align 4
  %95 = getelementptr i8, ptr %94, i32 4198228
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %97 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 6, i32 2
  store i32 %96, ptr %97, align 4
  %98 = load ptr, ptr %39, align 4
  %99 = getelementptr i8, ptr %98, i32 4198228
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %101 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 6, i32 3
  store i32 %100, ptr %101, align 4
  %102 = load ptr, ptr %39, align 4
  %103 = getelementptr i8, ptr %102, i32 4198228
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %105 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 6, i32 4
  store i32 %104, ptr %105, align 4
  %106 = load ptr, ptr %39, align 4
  %107 = getelementptr i8, ptr %106, i32 4198228
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %109 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 6, i32 5
  store i32 %108, ptr %109, align 4
  %110 = load ptr, ptr %39, align 4
  %111 = getelementptr i8, ptr %110, i32 4198228
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %113 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 6, i32 6
  store i32 %112, ptr %113, align 4
  %114 = load ptr, ptr %39, align 4
  %115 = getelementptr i8, ptr %114, i32 4198228
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %117 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 6, i32 7
  store i32 %116, ptr %117, align 4
  %118 = load ptr, ptr %39, align 4
  %119 = getelementptr i8, ptr %118, i32 4198228
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %121 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 6, i32 8
  store i32 %120, ptr %121, align 4
  %122 = load ptr, ptr %39, align 4
  %123 = getelementptr i8, ptr %122, i32 4198228
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %125 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 6, i32 9
  store i32 %124, ptr %125, align 4
  %126 = load ptr, ptr %39, align 4
  %127 = getelementptr i8, ptr %126, i32 4198228
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %129 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 6, i32 10
  store i32 %128, ptr %129, align 4
  %130 = load ptr, ptr %39, align 4
  %131 = getelementptr i8, ptr %130, i32 4198228
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %133 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 6, i32 11
  store i32 %132, ptr %133, align 4
  %134 = load ptr, ptr %39, align 4
  %135 = getelementptr i8, ptr %134, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 28672) #7, !srcloc !12
  br label %136

136:                                              ; preds = %136, %83
  %137 = phi i32 [ 0, %83 ], [ %142, %136 ]
  %138 = load ptr, ptr %39, align 4
  %139 = getelementptr i8, ptr %138, i32 4198228
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %141 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 7, i32 %137
  store i32 %140, ptr %141, align 4
  %142 = add nuw nsw i32 %137, 1
  %143 = icmp eq i32 %142, 76
  br i1 %143, label %144, label %136

144:                                              ; preds = %136
  %145 = load ptr, ptr %39, align 4
  %146 = getelementptr i8, ptr %145, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 29696) #7, !srcloc !12
  br label %147

147:                                              ; preds = %147, %144
  %148 = phi i32 [ 0, %144 ], [ %153, %147 ]
  %149 = load ptr, ptr %39, align 4
  %150 = getelementptr i8, ptr %149, i32 4198228
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %152 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 8, i32 %148
  store i32 %151, ptr %152, align 4
  %153 = add nuw nsw i32 %148, 1
  %154 = icmp eq i32 %153, 48
  br i1 %154, label %155, label %147

155:                                              ; preds = %147
  %156 = load ptr, ptr %39, align 4
  %157 = getelementptr i8, ptr %156, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 30720) #7, !srcloc !12
  br label %158

158:                                              ; preds = %158, %155
  %159 = phi i32 [ 0, %155 ], [ %164, %158 ]
  %160 = load ptr, ptr %39, align 4
  %161 = getelementptr i8, ptr %160, i32 4198228
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %161) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %163 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 9, i32 %159
  store i32 %162, ptr %163, align 4
  %164 = add nuw nsw i32 %159, 1
  %165 = icmp eq i32 %164, 48
  br i1 %165, label %166, label %158

166:                                              ; preds = %158
  %167 = load ptr, ptr %39, align 4
  %168 = getelementptr i8, ptr %167, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 64) #7, !srcloc !12
  %169 = load ptr, ptr %39, align 4
  %170 = getelementptr i8, ptr %169, i32 4198228
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %172 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 1, i32 0
  store i32 %171, ptr %172, align 4
  %173 = load ptr, ptr %39, align 4
  %174 = getelementptr i8, ptr %173, i32 4198228
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %174) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %176 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 1, i32 1
  store i32 %175, ptr %176, align 4
  %177 = load ptr, ptr %39, align 4
  %178 = getelementptr i8, ptr %177, i32 4198228
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %178) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %180 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 1, i32 2
  store i32 %179, ptr %180, align 4
  %181 = load ptr, ptr %39, align 4
  %182 = getelementptr i8, ptr %181, i32 4198228
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %182) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %184 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 1, i32 3
  store i32 %183, ptr %184, align 4
  %185 = getelementptr inbounds %struct.nv10_gr_chan, ptr %0, i32 0, i32 5
  %186 = load ptr, ptr %39, align 4
  %187 = getelementptr i8, ptr %186, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 0) #7, !srcloc !12
  %188 = load ptr, ptr %39, align 4
  %189 = getelementptr i8, ptr %188, i32 4198228
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  store i32 %190, ptr %185, align 4
  %191 = load ptr, ptr %39, align 4
  %192 = getelementptr i8, ptr %191, i32 4198228
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %192) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %194 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 0, i32 1
  store i32 %193, ptr %194, align 4
  %195 = load ptr, ptr %39, align 4
  %196 = getelementptr i8, ptr %195, i32 4198228
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %196) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %198 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 0, i32 2
  store i32 %197, ptr %198, align 4
  %199 = load ptr, ptr %39, align 4
  %200 = getelementptr i8, ptr %199, i32 4198228
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %200) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %202 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 0, i32 3
  store i32 %201, ptr %202, align 4
  %203 = load ptr, ptr %39, align 4
  %204 = getelementptr i8, ptr %203, i32 4198228
  %205 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %204) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %206 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 0, i32 4
  store i32 %205, ptr %206, align 4
  %207 = load ptr, ptr %39, align 4
  %208 = getelementptr i8, ptr %207, i32 4198228
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %208) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %210 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 0, i32 5
  store i32 %209, ptr %210, align 4
  %211 = load ptr, ptr %39, align 4
  %212 = getelementptr i8, ptr %211, i32 4198228
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %212) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %214 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 0, i32 6
  store i32 %213, ptr %214, align 4
  %215 = load ptr, ptr %39, align 4
  %216 = getelementptr i8, ptr %215, i32 4198228
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %216) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %218 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 0, i32 7
  store i32 %217, ptr %218, align 4
  %219 = load ptr, ptr %39, align 4
  %220 = getelementptr i8, ptr %219, i32 4198228
  %221 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %220) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %222 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 0, i32 8
  store i32 %221, ptr %222, align 4
  %223 = load ptr, ptr %39, align 4
  %224 = getelementptr i8, ptr %223, i32 4198228
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %224) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %226 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 0, i32 9
  store i32 %225, ptr %226, align 4
  %227 = load ptr, ptr %39, align 4
  %228 = getelementptr i8, ptr %227, i32 4198228
  %229 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %228) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %230 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 0, i32 10
  store i32 %229, ptr %230, align 4
  %231 = load ptr, ptr %39, align 4
  %232 = getelementptr i8, ptr %231, i32 4198228
  %233 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %232) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %234 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 0, i32 11
  store i32 %233, ptr %234, align 4
  %235 = load ptr, ptr %39, align 4
  %236 = getelementptr i8, ptr %235, i32 4198228
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %236) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %238 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 0, i32 12
  store i32 %237, ptr %238, align 4
  %239 = load ptr, ptr %39, align 4
  %240 = getelementptr i8, ptr %239, i32 4198228
  %241 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %240) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %242 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 0, i32 13
  store i32 %241, ptr %242, align 4
  %243 = load ptr, ptr %39, align 4
  %244 = getelementptr i8, ptr %243, i32 4198228
  %245 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %244) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %246 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 0, i32 14
  store i32 %245, ptr %246, align 4
  %247 = load ptr, ptr %39, align 4
  %248 = getelementptr i8, ptr %247, i32 4198228
  %249 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %248) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %250 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 0, i32 15
  store i32 %249, ptr %250, align 4
  %251 = load ptr, ptr %6, align 4
  %252 = getelementptr i8, ptr %251, i32 4194628
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %252, i32 268435456) #7, !srcloc !12
  %253 = load ptr, ptr %6, align 4
  %254 = getelementptr i8, ptr %253, i32 4194632
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %254) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %256 = and i32 %255, 16777215
  %257 = or i32 %256, 520093696
  %258 = load ptr, ptr %6, align 4
  %259 = getelementptr i8, ptr %258, i32 4194632
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %259, i32 %257) #7, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv17_gr_mthd_lma_window(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_engine, ptr %5, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nv10_gr_chan, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = add i32 %1, -5688
  %11 = lshr i32 %10, 2
  %12 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 6, i32 %11
  store i32 %2, ptr %12, align 4
  %13 = icmp eq i32 %1, 5700
  br i1 %13, label %14, label %230

14:                                               ; preds = %3
  %15 = tail call zeroext i1 @nv04_gr_idle(ptr noundef %9) #7
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 64) #7, !srcloc !12
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr i8, ptr %19, i32 4198228
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %22 = load ptr, ptr %16, align 4
  %23 = getelementptr i8, ptr %22, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 512) #7, !srcloc !12
  br label %24

24:                                               ; preds = %24, %14
  %25 = phi i32 [ 0, %14 ], [ %30, %24 ]
  %26 = load ptr, ptr %16, align 4
  %27 = getelementptr i8, ptr %26, i32 4198228
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %29 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 2, i32 %25
  store i32 %28, ptr %29, align 4
  %30 = add nuw nsw i32 %25, 1
  %31 = icmp eq i32 %30, 48
  br i1 %31, label %32, label %24

32:                                               ; preds = %24
  %33 = load ptr, ptr %16, align 4
  %34 = getelementptr i8, ptr %33, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 26512) #7, !srcloc !12
  %35 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 6, i32 0
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %16, align 4
  %38 = getelementptr i8, ptr %37, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #7, !srcloc !12
  %39 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 6, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = load ptr, ptr %16, align 4
  %42 = getelementptr i8, ptr %41, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #7, !srcloc !12
  %43 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 6, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %16, align 4
  %46 = getelementptr i8, ptr %45, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #7, !srcloc !12
  %47 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 6, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %16, align 4
  %50 = getelementptr i8, ptr %49, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #7, !srcloc !12
  %51 = tail call zeroext i1 @nv04_gr_idle(ptr noundef %9) #7
  %52 = load ptr, ptr %16, align 4
  %53 = getelementptr i8, ptr %52, i32 4198208
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %55 = load ptr, ptr %16, align 4
  %56 = getelementptr i8, ptr %55, i32 4198212
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %58 = load ptr, ptr %16, align 4
  %59 = getelementptr i8, ptr %58, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 17408) #7, !srcloc !12
  br label %60

60:                                               ; preds = %60, %32
  %61 = phi i32 [ 0, %32 ], [ %66, %60 ]
  %62 = load ptr, ptr %16, align 4
  %63 = getelementptr i8, ptr %62, i32 4198228
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %65 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 3, i32 %61
  store i32 %64, ptr %65, align 4
  %66 = add nuw nsw i32 %61, 1
  %67 = icmp eq i32 %66, 32
  br i1 %67, label %68, label %60

68:                                               ; preds = %60
  %69 = load ptr, ptr %16, align 4
  %70 = getelementptr i8, ptr %69, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 25792) #7, !srcloc !12
  %71 = load ptr, ptr %16, align 4
  %72 = getelementptr i8, ptr %71, i32 4198228
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %74 = load ptr, ptr %16, align 4
  %75 = getelementptr i8, ptr %74, i32 4198228
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %77 = load ptr, ptr %16, align 4
  %78 = getelementptr i8, ptr %77, i32 4198228
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %80 = load ptr, ptr %16, align 4
  %81 = getelementptr i8, ptr %80, i32 4198228
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %83 = load ptr, ptr %16, align 4
  %84 = getelementptr i8, ptr %83, i32 4198228
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %86 = load ptr, ptr %16, align 4
  %87 = getelementptr i8, ptr %86, i32 4198228
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %89 = load ptr, ptr %16, align 4
  %90 = getelementptr i8, ptr %89, i32 4198228
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %92 = load ptr, ptr %16, align 4
  %93 = getelementptr i8, ptr %92, i32 4198228
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %95 = load ptr, ptr %16, align 4
  %96 = getelementptr i8, ptr %95, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 27312) #7, !srcloc !12
  %97 = load ptr, ptr %16, align 4
  %98 = getelementptr i8, ptr %97, i32 4198228
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %100 = load ptr, ptr %16, align 4
  %101 = getelementptr i8, ptr %100, i32 4198228
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %103 = load ptr, ptr %16, align 4
  %104 = getelementptr i8, ptr %103, i32 4198228
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %106 = load ptr, ptr %16, align 4
  %107 = getelementptr i8, ptr %106, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 27264) #7, !srcloc !12
  %108 = load ptr, ptr %16, align 4
  %109 = getelementptr i8, ptr %108, i32 4198228
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %111 = load ptr, ptr %16, align 4
  %112 = getelementptr i8, ptr %111, i32 4198228
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %114 = load ptr, ptr %16, align 4
  %115 = getelementptr i8, ptr %114, i32 4198228
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %117 = tail call zeroext i1 @nv04_gr_idle(ptr noundef %9) #7
  %118 = load ptr, ptr %16, align 4
  %119 = getelementptr i8, ptr %118, i32 4198208
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 268435456) #7, !srcloc !12
  %120 = load ptr, ptr %16, align 4
  %121 = getelementptr i8, ptr %120, i32 4198212
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 0) #7, !srcloc !12
  %122 = load ptr, ptr %16, align 4
  %123 = getelementptr i8, ptr %122, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 25792) #7, !srcloc !12
  %124 = load ptr, ptr %16, align 4
  %125 = getelementptr i8, ptr %124, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 1065353216) #7, !srcloc !12
  %126 = load ptr, ptr %16, align 4
  %127 = getelementptr i8, ptr %126, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 1065353216) #7, !srcloc !12
  %128 = load ptr, ptr %16, align 4
  %129 = getelementptr i8, ptr %128, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 1065353216) #7, !srcloc !12
  %130 = load ptr, ptr %16, align 4
  %131 = getelementptr i8, ptr %130, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 1065353216) #7, !srcloc !12
  %132 = load ptr, ptr %16, align 4
  %133 = getelementptr i8, ptr %132, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 0) #7, !srcloc !12
  %134 = load ptr, ptr %16, align 4
  %135 = getelementptr i8, ptr %134, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 0) #7, !srcloc !12
  %136 = load ptr, ptr %16, align 4
  %137 = getelementptr i8, ptr %136, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 0) #7, !srcloc !12
  %138 = load ptr, ptr %16, align 4
  %139 = getelementptr i8, ptr %138, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 0) #7, !srcloc !12
  %140 = load ptr, ptr %16, align 4
  %141 = getelementptr i8, ptr %140, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 27312) #7, !srcloc !12
  %142 = load ptr, ptr %16, align 4
  %143 = getelementptr i8, ptr %142, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 1065353216) #7, !srcloc !12
  %144 = load ptr, ptr %16, align 4
  %145 = getelementptr i8, ptr %144, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 1065353216) #7, !srcloc !12
  %146 = load ptr, ptr %16, align 4
  %147 = getelementptr i8, ptr %146, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 1065353216) #7, !srcloc !12
  %148 = load ptr, ptr %16, align 4
  %149 = getelementptr i8, ptr %148, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 27264) #7, !srcloc !12
  %150 = load ptr, ptr %16, align 4
  %151 = getelementptr i8, ptr %150, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 0) #7, !srcloc !12
  %152 = load ptr, ptr %16, align 4
  %153 = getelementptr i8, ptr %152, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 0) #7, !srcloc !12
  %154 = load ptr, ptr %16, align 4
  %155 = getelementptr i8, ptr %154, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 0) #7, !srcloc !12
  %156 = load ptr, ptr %16, align 4
  %157 = getelementptr i8, ptr %156, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 64) #7, !srcloc !12
  %158 = load ptr, ptr %16, align 4
  %159 = getelementptr i8, ptr %158, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 8) #7, !srcloc !12
  %160 = load ptr, ptr %16, align 4
  %161 = getelementptr i8, ptr %160, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 512) #7, !srcloc !12
  br label %162

162:                                              ; preds = %162, %68
  %163 = phi i32 [ 0, %68 ], [ %168, %162 ]
  %164 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 2, i32 %163
  %165 = load i32, ptr %164, align 4
  %166 = load ptr, ptr %16, align 4
  %167 = getelementptr i8, ptr %166, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 %165) #7, !srcloc !12
  %168 = add nuw nsw i32 %163, 1
  %169 = icmp eq i32 %168, 48
  br i1 %169, label %170, label %162

170:                                              ; preds = %162
  %171 = tail call zeroext i1 @nv04_gr_idle(ptr noundef %9) #7
  %172 = load ptr, ptr %16, align 4
  %173 = getelementptr i8, ptr %172, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 64) #7, !srcloc !12
  %174 = load ptr, ptr %16, align 4
  %175 = getelementptr i8, ptr %174, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 %21) #7, !srcloc !12
  %176 = load ptr, ptr %16, align 4
  %177 = getelementptr i8, ptr %176, i32 4198208
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 %54) #7, !srcloc !12
  %178 = load ptr, ptr %16, align 4
  %179 = getelementptr i8, ptr %178, i32 4198212
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 %57) #7, !srcloc !12
  %180 = load ptr, ptr %16, align 4
  %181 = getelementptr i8, ptr %180, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 25792) #7, !srcloc !12
  %182 = load ptr, ptr %16, align 4
  %183 = getelementptr i8, ptr %182, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 %73) #7, !srcloc !12
  %184 = load ptr, ptr %16, align 4
  %185 = getelementptr i8, ptr %184, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %185, i32 %76) #7, !srcloc !12
  %186 = load ptr, ptr %16, align 4
  %187 = getelementptr i8, ptr %186, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 %79) #7, !srcloc !12
  %188 = load ptr, ptr %16, align 4
  %189 = getelementptr i8, ptr %188, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 %82) #7, !srcloc !12
  %190 = load ptr, ptr %16, align 4
  %191 = getelementptr i8, ptr %190, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 %85) #7, !srcloc !12
  %192 = load ptr, ptr %16, align 4
  %193 = getelementptr i8, ptr %192, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 %88) #7, !srcloc !12
  %194 = load ptr, ptr %16, align 4
  %195 = getelementptr i8, ptr %194, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 %91) #7, !srcloc !12
  %196 = load ptr, ptr %16, align 4
  %197 = getelementptr i8, ptr %196, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 %94) #7, !srcloc !12
  %198 = load ptr, ptr %16, align 4
  %199 = getelementptr i8, ptr %198, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 27312) #7, !srcloc !12
  %200 = load ptr, ptr %16, align 4
  %201 = getelementptr i8, ptr %200, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 %99) #7, !srcloc !12
  %202 = load ptr, ptr %16, align 4
  %203 = getelementptr i8, ptr %202, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 %102) #7, !srcloc !12
  %204 = load ptr, ptr %16, align 4
  %205 = getelementptr i8, ptr %204, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %205, i32 %105) #7, !srcloc !12
  %206 = load ptr, ptr %16, align 4
  %207 = getelementptr i8, ptr %206, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %207, i32 27264) #7, !srcloc !12
  %208 = load ptr, ptr %16, align 4
  %209 = getelementptr i8, ptr %208, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %209, i32 %110) #7, !srcloc !12
  %210 = load ptr, ptr %16, align 4
  %211 = getelementptr i8, ptr %210, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %211, i32 %113) #7, !srcloc !12
  %212 = load ptr, ptr %16, align 4
  %213 = getelementptr i8, ptr %212, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 %116) #7, !srcloc !12
  %214 = load ptr, ptr %16, align 4
  %215 = getelementptr i8, ptr %214, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 17408) #7, !srcloc !12
  br label %216

216:                                              ; preds = %216, %170
  %217 = phi i32 [ 0, %170 ], [ %222, %216 ]
  %218 = getelementptr %struct.nv10_gr_chan, ptr %0, i32 0, i32 5, i32 3, i32 %217
  %219 = load i32, ptr %218, align 4
  %220 = load ptr, ptr %16, align 4
  %221 = getelementptr i8, ptr %220, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %221, i32 %219) #7, !srcloc !12
  %222 = add nuw nsw i32 %217, 1
  %223 = icmp eq i32 %222, 32
  br i1 %223, label %224, label %216

224:                                              ; preds = %216
  %225 = load ptr, ptr %16, align 4
  %226 = getelementptr i8, ptr %225, i32 4198224
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %226, i32 192) #7, !srcloc !12
  %227 = load ptr, ptr %16, align 4
  %228 = getelementptr i8, ptr %227, i32 4198228
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 0) #7, !srcloc !12
  %229 = tail call zeroext i1 @nv04_gr_idle(ptr noundef %9) #7
  br label %230

230:                                              ; preds = %224, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv17_gr_mthd_lma_enable(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_engine, ptr %5, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nv10_gr_chan, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = tail call zeroext i1 @nv04_gr_idle(ptr noundef %9) #7
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 4194448
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %15 = or i32 %14, 256
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr i8, ptr %16, i32 4194448
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #7, !srcloc !12
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr i8, ptr %18, i32 4196016
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %21 = or i32 %20, 134217728
  %22 = load ptr, ptr %11, align 4
  %23 = getelementptr i8, ptr %22, i32 4196016
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #7, !srcloc !12
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{i64 3977230}
!9 = !{i64 2151516683}
!10 = !{!"auto-init"}
!11 = !{i64 2151517905}
!12 = !{i64 3976812}
!13 = !{ptr @nv17_gr_mthd_lma_enable, ptr @nv17_gr_mthd_lma_window}
