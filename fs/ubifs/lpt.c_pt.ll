; ModuleID = '/llk/IR/fs/ubifs/lpt.c_pt.bc'
source_filename = "../fs/ubifs/lpt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ubifs_global_debug_info = type { i8, [3 x i8] }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.72, i32, i32, i32, [0 x i8] }
%union.ubifs_key = type { [1 x i64] }
%union.anon.72 = type { ptr }
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ubifs_budg_info = type { i64, i64, i64, i64, i64, i32, i8, i32, i32, i32 }
%struct.ubifs_node_range = type { %union.anon.73, i32 }
%union.anon.73 = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.ubifs_pnode = type { ptr, ptr, i32, i32, i32, i32, [4 x %struct.ubifs_lprops] }
%struct.ubifs_lprops = type { i32, i32, i32, i32, %union.anon.75 }
%union.anon.75 = type { %struct.list_head }
%struct.ubifs_nnode = type { ptr, ptr, i32, i32, i32, i32, [4 x %struct.ubifs_nbranch] }
%struct.ubifs_nbranch = type { i32, i32, %union.anon.74 }
%union.anon.74 = type { ptr }
%struct.ubifs_lpt_lprops = type { i32, i32, i8 }
%struct.lpt_scan_node = type { %union.anon.78, i32, %union.anon.79 }
%union.anon.78 = type { %struct.ubifs_pnode }
%union.anon.79 = type { ptr }
%struct.ubifs_debug_info = type { %struct.ubifs_zbranch, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i8, [10 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubifs_cnode = type { ptr, ptr, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"too few LPT LEBs\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"LPT ltab too big\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"nrbits > 0\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"fs/ubifs/lpt.c\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"nrbits <= 32\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"*pos >= 0\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"*pos < 8\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"(val >> nrbits) == 0 || nrbits - b == 32\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"lnum >= c->lpt_first && lnum <= c->lpt_last\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"!c->ltab\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"error %d reading nnode at %d:%d\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"test_bit(DIRTY_CNODE, &pnode->flags)\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"start_lnum >= c->main_first && start_lnum < c->leb_cnt\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"end_lnum >= c->main_first && end_lnum < c->leb_cnt\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"h >= 0\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"row >= 0\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"nnode num %d expected %d parent num %d iip %d\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"(val >> nrbits) == 0 || nrbits == 32\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"invalid type (%d) in LPT node type %d\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"invalid crc in LPT node: crc %hx calc %hx\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"error %d reading pnode at %d:%d\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"calc num: %d\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"!test_bit(OBSOLETE_CNODE, &nnode->flags)\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"!test_bit(OBSOLETE_CNODE, &pnode->flags)\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.25 = private unnamed_addr constant [60 x i8] c"branch->lnum >= c->lpt_first && branch->lnum <= c->lpt_last\00", align 1
@.str.26 = private unnamed_addr constant [48 x i8] c"branch->offs >= 0 && branch->offs < c->leb_size\00", align 1
@ubifs_dbg = external dso_local local_unnamed_addr global %struct.ubifs_global_debug_info, align 4
@.str.27 = private unnamed_addr constant [46 x i8] c"pnode num %d expected %d parent num %d iip %d\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"bad LEB number %d expected %d\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"LEB %d taken but not uncat %d\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"LEB %d index but cat %d\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"LEB %d not index but cat %d\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"LEB %d cat %d not found in cat heap/list\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"LEB %d cat %d free %d dirty %d\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_calc_lpt_geom(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @do_calc_lpt_geom(ptr noundef %0)
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 153
  %3 = load i64, ptr %2, align 8
  %4 = shl i64 %3, 1
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %6 = load i32, ptr %5, align 8
  %7 = sext i32 %6 to i64
  %8 = add i64 %4, -1
  %9 = add i64 %8, %7
  %10 = icmp ult i64 %9, 4294967296
  br i1 %10, label %11, label %14, !prof !8

11:                                               ; preds = %1
  %12 = trunc i64 %9 to i32
  %13 = udiv i32 %12, %6
  br label %18

14:                                               ; preds = %1
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %6, i64 %9) #11, !srcloc !9
  %16 = extractvalue { i64, i64 } %15, 1
  %17 = trunc i64 %16 to i32
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i32 [ %13, %11 ], [ %17, %14 ]
  %20 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 56
  %21 = load i32, ptr %20, align 4
  %22 = icmp slt i32 %21, %19
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str) #12
  br label %35

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 138
  %26 = load i32, ptr %25, align 8
  %27 = icmp sgt i32 %26, %6
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.1) #12
  br label %35

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %31 = load i16, ptr %30, align 4
  %32 = and i16 %31, 1
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 152
  store i32 %33, ptr %34, align 8
  br label %35

35:                                               ; preds = %29, %28, %23
  %36 = phi i32 [ -22, %23 ], [ -22, %28 ], [ 0, %29 ]
  ret i32 %36
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @do_calc_lpt_geom(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 80
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  %7 = load i32, ptr %6, align 8
  %8 = add i32 %3, 3
  %9 = add i32 %8, %5
  %10 = sub i32 %9, %7
  %11 = sdiv i32 %10, 4
  %12 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 142
  store i32 1, ptr %12, align 8
  %13 = icmp sgt i32 %10, 19
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = sdiv i32 %8, 4
  %16 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 140
  store i32 %15, ptr %16, align 8
  %17 = add nsw i32 %15, 3
  %18 = sdiv i32 %17, 4
  %19 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 141
  store i32 %18, ptr %19, align 4
  br label %43

20:                                               ; preds = %20, %1
  %21 = phi i32 [ %23, %20 ], [ 1, %1 ]
  %22 = phi i32 [ %24, %20 ], [ 4, %1 ]
  %23 = add i32 %21, 1
  %24 = shl i32 %22, 2
  %25 = icmp slt i32 %24, %11
  br i1 %25, label %20, label %26

26:                                               ; preds = %20
  store i32 %23, ptr %12, align 8
  %27 = sdiv i32 %8, 4
  %28 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 140
  store i32 %27, ptr %28, align 8
  %29 = add nsw i32 %27, 3
  %30 = sdiv i32 %29, 4
  %31 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 141
  store i32 %30, ptr %31, align 4
  %32 = icmp sgt i32 %23, 1
  br i1 %32, label %33, label %43

33:                                               ; preds = %33, %26
  %34 = phi i32 [ %39, %33 ], [ %30, %26 ]
  %35 = phi i32 [ %40, %33 ], [ 1, %26 ]
  %36 = phi i32 [ %38, %33 ], [ %30, %26 ]
  %37 = add nsw i32 %36, 3
  %38 = sdiv i32 %37, 4
  %39 = add i32 %34, %38
  %40 = add nuw nsw i32 %35, 1
  %41 = icmp eq i32 %35, %21
  br i1 %41, label %42, label %33

42:                                               ; preds = %33
  store i32 %39, ptr %31, align 4
  br label %43

43:                                               ; preds = %42, %26, %14
  %44 = phi i32 [ %27, %42 ], [ %27, %26 ], [ %15, %14 ]
  %45 = phi i32 [ %39, %42 ], [ %30, %26 ], [ %18, %14 ]
  %46 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %47 = load i32, ptr %46, align 8
  %48 = icmp eq i32 %47, 0
  %49 = tail call i32 @llvm.ctlz.i32(i32 %47, i1 false) #12, !range !10
  %50 = sub nuw nsw i32 32, %49
  %51 = select i1 %48, i32 0, i32 %50
  %52 = add nsw i32 %51, -3
  %53 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 130
  store i32 %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 56
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  %57 = tail call i32 @llvm.ctlz.i32(i32 %55, i1 false) #12, !range !10
  %58 = sub nuw nsw i32 32, %57
  %59 = select i1 %56, i32 0, i32 %58
  %60 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 131
  store i32 %59, ptr %60, align 4
  %61 = add i32 %47, -1
  %62 = icmp eq i32 %61, 0
  %63 = tail call i32 @llvm.ctlz.i32(i32 %61, i1 false) #12, !range !10
  %64 = sub nuw nsw i32 32, %63
  %65 = select i1 %62, i32 0, i32 %64
  %66 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 132
  store i32 %65, ptr %66, align 8
  %67 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 133
  store i32 %51, ptr %67, align 4
  %68 = add i32 %5, 3
  %69 = sdiv i32 %68, 4
  %70 = add nsw i32 %69, -1
  %71 = icmp eq i32 %70, 0
  %72 = tail call i32 @llvm.ctlz.i32(i32 %70, i1 false) #12, !range !10
  %73 = sub nuw nsw i32 32, %72
  %74 = select i1 %71, i32 0, i32 %73
  %75 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 134
  store i32 %74, ptr %75, align 8
  %76 = add i32 %5, -1
  %77 = icmp eq i32 %76, 0
  %78 = tail call i32 @llvm.ctlz.i32(i32 %76, i1 false) #12, !range !10
  %79 = sub nuw nsw i32 32, %78
  %80 = select i1 %77, i32 0, i32 %79
  %81 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 135
  store i32 %80, ptr %81, align 4
  %82 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %83 = load i16, ptr %82, align 4
  %84 = and i16 %83, 1
  %85 = icmp eq i16 %84, 0
  %86 = shl nsw i32 %52, 3
  %87 = add nuw nsw i32 %74, 31
  %88 = add nuw nsw i32 %74, 20
  %89 = select i1 %85, i32 31, i32 %87
  %90 = add nsw i32 %86, %89
  %91 = select i1 %85, i32 20, i32 %88
  %92 = sdiv i32 %90, 8
  %93 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 137
  store i32 %92, ptr %93, align 4
  %94 = add nuw nsw i32 %59, %65
  %95 = shl nuw nsw i32 %94, 2
  %96 = add nuw nsw i32 %95, 7
  %97 = add nuw nsw i32 %96, %91
  %98 = lshr i32 %97, 3
  %99 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 136
  store i32 %98, ptr %99, align 8
  %100 = shl i32 %55, 1
  %101 = mul i32 %100, %51
  %102 = add i32 %101, 27
  %103 = sdiv i32 %102, 8
  %104 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 138
  store i32 %103, ptr %104, align 8
  %105 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 170
  %106 = load i32, ptr %105, align 8
  %107 = mul i32 %106, %80
  %108 = add i32 %107, 27
  %109 = sdiv i32 %108, 8
  %110 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 139
  store i32 %109, ptr %110, align 4
  %111 = sext i32 %44 to i64
  %112 = sext i32 %92 to i64
  %113 = mul nsw i64 %112, %111
  %114 = sext i32 %45 to i64
  %115 = zext i32 %98 to i64
  %116 = mul nsw i64 %114, %115
  %117 = sext i32 %103 to i64
  %118 = add nsw i64 %113, %117
  %119 = add nsw i64 %118, %116
  %120 = sext i32 %109 to i64
  %121 = select i1 %85, i64 0, i64 %120
  %122 = add nsw i64 %119, %121
  %123 = tail call i32 @llvm.smax.i32(i32 %92, i32 %98)
  %124 = zext i32 %123 to i64
  %125 = add nsw i64 %122, %124
  %126 = sext i32 %47 to i64
  %127 = icmp sgt i64 %125, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %43
  %129 = sub nsw i64 %124, %126
  br label %130

130:                                              ; preds = %130, %128
  %131 = phi i64 [ %124, %128 ], [ %134, %130 ]
  %132 = phi i64 [ %125, %128 ], [ %133, %130 ]
  %133 = add i64 %129, %132
  %134 = add i64 %131, %124
  %135 = icmp sgt i64 %133, %126
  br i1 %135, label %130, label %136

136:                                              ; preds = %130, %43
  %137 = phi i64 [ %125, %43 ], [ %133, %130 ]
  %138 = phi i64 [ %124, %43 ], [ %134, %130 ]
  %139 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 153
  %140 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %141 = load i32, ptr %140, align 8
  %142 = sext i32 %141 to i64
  %143 = add i64 %137, -1
  %144 = add i64 %143, %142
  %145 = sub nsw i64 0, %142
  %146 = and i64 %144, %145
  %147 = sub i64 %122, %137
  %148 = add i64 %147, %138
  %149 = add i64 %148, %146
  store i64 %149, ptr %139, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_unpack_bits(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sub i32 32, %3
  %6 = load ptr, ptr %1, align 4
  %7 = load i32, ptr %2, align 4
  %8 = add i32 %7, %3
  %9 = add i32 %8, 7
  %10 = ashr i32 %9, 3
  %11 = icmp slt i32 %3, 1
  br i1 %11, label %12, label %13, !prof !11

12:                                               ; preds = %4
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 281) #12
  br label %16

13:                                               ; preds = %4
  %14 = icmp ugt i32 %3, 32
  br i1 %14, label %15, label %16, !prof !11

15:                                               ; preds = %13
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 282) #12
  br label %16

16:                                               ; preds = %15, %13, %12
  %17 = load i32, ptr %2, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21, !prof !11

19:                                               ; preds = %16
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 283) #12
  %20 = load i32, ptr %2, align 4
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i32 [ %17, %16 ], [ %20, %19 ]
  %23 = icmp sgt i32 %22, 7
  br i1 %23, label %24, label %25, !prof !11

24:                                               ; preds = %21
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef 284) #12
  br label %25

25:                                               ; preds = %24, %21
  %26 = icmp eq i32 %7, 0
  br i1 %26, label %82, label %27

27:                                               ; preds = %25
  switch i32 %10, label %74 [
    i32 2, label %28
    i32 3, label %32
    i32 4, label %41
    i32 5, label %55
  ]

28:                                               ; preds = %27
  %29 = getelementptr i8, ptr %6, i32 1
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  br label %74

32:                                               ; preds = %27
  %33 = getelementptr i8, ptr %6, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = getelementptr i8, ptr %6, i32 2
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 8
  %40 = or i32 %39, %35
  br label %74

41:                                               ; preds = %27
  %42 = getelementptr i8, ptr %6, i32 1
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = getelementptr i8, ptr %6, i32 2
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 8
  %49 = or i32 %48, %44
  %50 = getelementptr i8, ptr %6, i32 3
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 16
  %54 = or i32 %49, %53
  br label %74

55:                                               ; preds = %27
  %56 = getelementptr i8, ptr %6, i32 1
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = getelementptr i8, ptr %6, i32 2
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 8
  %63 = or i32 %62, %58
  %64 = getelementptr i8, ptr %6, i32 3
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = shl nuw nsw i32 %66, 16
  %68 = or i32 %63, %67
  %69 = getelementptr i8, ptr %6, i32 4
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = shl nuw i32 %71, 24
  %73 = or i32 %68, %72
  br label %74

74:                                               ; preds = %55, %41, %32, %28, %27
  %75 = phi i32 [ 0, %27 ], [ %73, %55 ], [ %54, %41 ], [ %40, %32 ], [ %31, %28 ]
  %76 = sub i32 8, %7
  %77 = shl i32 %75, %76
  %78 = load i8, ptr %6, align 1
  %79 = zext i8 %78 to i32
  %80 = lshr i32 %79, %7
  %81 = or i32 %80, %77
  br label %125

82:                                               ; preds = %25
  switch i32 %10, label %125 [
    i32 1, label %83
    i32 2, label %86
    i32 3, label %94
    i32 4, label %107
  ]

83:                                               ; preds = %82
  %84 = load i8, ptr %6, align 1
  %85 = zext i8 %84 to i32
  br label %125

86:                                               ; preds = %82
  %87 = load i8, ptr %6, align 1
  %88 = zext i8 %87 to i32
  %89 = getelementptr i8, ptr %6, i32 1
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  %92 = shl nuw nsw i32 %91, 8
  %93 = or i32 %92, %88
  br label %125

94:                                               ; preds = %82
  %95 = load i8, ptr %6, align 1
  %96 = zext i8 %95 to i32
  %97 = getelementptr i8, ptr %6, i32 1
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = shl nuw nsw i32 %99, 8
  %101 = or i32 %100, %96
  %102 = getelementptr i8, ptr %6, i32 2
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = shl nuw nsw i32 %104, 16
  %106 = or i32 %101, %105
  br label %125

107:                                              ; preds = %82
  %108 = load i8, ptr %6, align 1
  %109 = zext i8 %108 to i32
  %110 = getelementptr i8, ptr %6, i32 1
  %111 = load i8, ptr %110, align 1
  %112 = zext i8 %111 to i32
  %113 = shl nuw nsw i32 %112, 8
  %114 = or i32 %113, %109
  %115 = getelementptr i8, ptr %6, i32 2
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = shl nuw nsw i32 %117, 16
  %119 = or i32 %114, %118
  %120 = getelementptr i8, ptr %6, i32 3
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i32
  %123 = shl nuw i32 %122, 24
  %124 = or i32 %119, %123
  br label %125

125:                                              ; preds = %107, %94, %86, %83, %82, %74
  %126 = phi i32 [ %8, %74 ], [ %3, %82 ], [ %3, %107 ], [ %3, %94 ], [ %3, %86 ], [ %3, %83 ]
  %127 = phi i32 [ %81, %74 ], [ 0, %82 ], [ %124, %107 ], [ %106, %94 ], [ %93, %86 ], [ %85, %83 ]
  %128 = lshr i32 -1, %5
  %129 = and i32 %127, %128
  %130 = and i32 %126, 7
  %131 = ashr i32 %126, 3
  %132 = getelementptr i8, ptr %6, i32 %131
  store ptr %132, ptr %1, align 4
  store i32 %130, ptr %2, align 4
  %133 = lshr i32 %129, %126
  %134 = icmp ne i32 %133, 0
  %135 = and i32 %126, -8
  %136 = icmp ne i32 %135, 32
  %137 = and i1 %136, %134
  br i1 %137, label %138, label %139, !prof !11

138:                                              ; preds = %125
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, i32 noundef 330) #12
  br label %139

139:                                              ; preds = %138, %125
  ret i32 %129
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_pack_pnode(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %6 = getelementptr i8, ptr %1, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %4, align 4
  store i32 4, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ubifs_pnode, ptr %2, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 134
  %15 = load i32, ptr %14, align 8
  call fastcc void @pack_bits(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %13, i32 noundef %15)
  br label %16

16:                                               ; preds = %11, %3
  %17 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 130
  br label %18

18:                                               ; preds = %98, %16
  %19 = phi i32 [ 0, %16 ], [ %105, %98 ]
  %20 = getelementptr %struct.ubifs_pnode, ptr %2, i32 0, i32 6, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = ashr i32 %21, 3
  %23 = load i32, ptr %17, align 8
  call fastcc void @pack_bits(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %22, i32 noundef %23)
  %24 = getelementptr %struct.ubifs_pnode, ptr %2, i32 0, i32 6, i32 %19, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = ashr i32 %25, 3
  %27 = load i32, ptr %17, align 8
  call fastcc void @pack_bits(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %26, i32 noundef %27)
  %28 = getelementptr %struct.ubifs_pnode, ptr %2, i32 0, i32 6, i32 %19, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 32
  %31 = icmp eq i32 %30, 0
  %32 = load ptr, ptr %4, align 4
  %33 = load i32, ptr %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %31, label %74, label %35

35:                                               ; preds = %18
  br i1 %34, label %36, label %42, !prof !11

36:                                               ; preds = %35
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 229) #12
  %37 = shl nuw nsw i32 1, %33
  %38 = load i8, ptr %32, align 1
  %39 = trunc i32 %37 to i8
  %40 = or i8 %38, %39
  store i8 %40, ptr %32, align 1
  %41 = add nsw i32 %33, 1
  br label %98

42:                                               ; preds = %35
  %43 = icmp ugt i32 %33, 7
  br i1 %43, label %52, label %44, !prof !11

44:                                               ; preds = %42
  %45 = icmp eq i32 %33, 0
  br i1 %45, label %73, label %46

46:                                               ; preds = %44
  %47 = shl nuw nsw i32 1, %33
  %48 = load i8, ptr %32, align 1
  %49 = trunc i32 %47 to i8
  %50 = or i8 %48, %49
  store i8 %50, ptr %32, align 1
  %51 = add nuw nsw i32 %33, 1
  br label %98

52:                                               ; preds = %42
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef 230) #12
  %53 = shl nuw i32 1, %33
  %54 = load i8, ptr %32, align 1
  %55 = trunc i32 %53 to i8
  %56 = or i8 %54, %55
  store i8 %56, ptr %32, align 1
  %57 = add nuw i32 %33, 1
  %58 = icmp sgt i32 %57, 8
  br i1 %58, label %59, label %98

59:                                               ; preds = %52
  %60 = sub nsw i32 8, %33
  %61 = lshr i32 1, %60
  %62 = trunc i32 %61 to i8
  %63 = getelementptr i8, ptr %32, i32 1
  store i8 %62, ptr %63, align 1
  %64 = icmp ugt i32 %33, 15
  br i1 %64, label %65, label %98

65:                                               ; preds = %59
  %66 = getelementptr i8, ptr %32, i32 2
  store i8 0, ptr %66, align 1
  %67 = icmp ugt i32 %33, 23
  br i1 %67, label %68, label %98

68:                                               ; preds = %65
  %69 = getelementptr i8, ptr %32, i32 3
  store i8 0, ptr %69, align 1
  %70 = icmp ugt i32 %33, 31
  br i1 %70, label %71, label %98

71:                                               ; preds = %68
  %72 = getelementptr i8, ptr %32, i32 4
  store i8 0, ptr %72, align 1
  br label %98

73:                                               ; preds = %44
  store i8 1, ptr %32, align 1
  br label %98

74:                                               ; preds = %18
  br i1 %34, label %75, label %77, !prof !11

75:                                               ; preds = %74
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 229) #12
  %76 = add nsw i32 %33, 1
  br label %98

77:                                               ; preds = %74
  %78 = icmp ugt i32 %33, 7
  br i1 %78, label %83, label %79, !prof !11

79:                                               ; preds = %77
  %80 = icmp eq i32 %33, 0
  br i1 %80, label %97, label %81

81:                                               ; preds = %79
  %82 = add nuw nsw i32 %33, 1
  br label %98

83:                                               ; preds = %77
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef 230) #12
  %84 = add nuw i32 %33, 1
  %85 = icmp sgt i32 %84, 8
  br i1 %85, label %86, label %98

86:                                               ; preds = %83
  %87 = getelementptr i8, ptr %32, i32 1
  store i8 0, ptr %87, align 1
  %88 = icmp ugt i32 %33, 15
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = getelementptr i8, ptr %32, i32 2
  store i8 0, ptr %90, align 1
  %91 = icmp ugt i32 %33, 23
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = getelementptr i8, ptr %32, i32 3
  store i8 0, ptr %93, align 1
  %94 = icmp ugt i32 %33, 31
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = getelementptr i8, ptr %32, i32 4
  store i8 0, ptr %96, align 1
  br label %98

97:                                               ; preds = %79
  store i8 0, ptr %32, align 1
  br label %98

98:                                               ; preds = %97, %95, %92, %89, %86, %83, %81, %75, %73, %71, %68, %65, %59, %52, %46, %36
  %99 = phi i32 [ %57, %71 ], [ %57, %68 ], [ %57, %65 ], [ %57, %59 ], [ -2147483648, %52 ], [ 1, %73 ], [ %51, %46 ], [ %41, %36 ], [ %84, %95 ], [ %84, %92 ], [ %84, %89 ], [ %84, %86 ], [ -2147483648, %83 ], [ 1, %97 ], [ %82, %81 ], [ %76, %75 ]
  %100 = phi ptr [ %72, %71 ], [ %69, %68 ], [ %66, %65 ], [ %63, %59 ], [ %32, %52 ], [ %32, %73 ], [ %32, %46 ], [ %32, %36 ], [ %96, %95 ], [ %93, %92 ], [ %90, %89 ], [ %87, %86 ], [ %32, %83 ], [ %32, %97 ], [ %32, %81 ], [ %32, %75 ]
  %101 = and i32 %99, 7
  %102 = icmp eq i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = getelementptr i8, ptr %100, i32 %103
  store ptr %104, ptr %4, align 4
  store i32 %101, ptr %5, align 4
  %105 = add nuw nsw i32 %19, 1
  %106 = icmp eq i32 %105, 4
  br i1 %106, label %107, label %18

107:                                              ; preds = %98
  %108 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 137
  %109 = load i32, ptr %108, align 4
  %110 = add i32 %109, -2
  %111 = tail call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef %6, i32 noundef %110) #12
  store ptr %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %112 = zext i16 %111 to i32
  call fastcc void @pack_bits(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %112, i32 noundef 16)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pack_bits(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = load ptr, ptr %1, align 4
  %7 = load i32, ptr %2, align 4
  %8 = icmp slt i32 %4, 1
  br i1 %8, label %9, label %10, !prof !11

9:                                                ; preds = %5
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 227) #12
  br label %13

10:                                               ; preds = %5
  %11 = icmp ugt i32 %4, 32
  br i1 %11, label %12, label %15, !prof !11

12:                                               ; preds = %10
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 228) #12
  br label %13

13:                                               ; preds = %12, %9
  %14 = load i32, ptr %2, align 4
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ %14, %13 ], [ %7, %10 ]
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20, !prof !11

18:                                               ; preds = %15
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 229) #12
  %19 = load i32, ptr %2, align 4
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32 [ %16, %15 ], [ %19, %18 ]
  %22 = icmp sgt i32 %21, 7
  br i1 %22, label %23, label %24, !prof !11

23:                                               ; preds = %20
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef 230) #12
  br label %24

24:                                               ; preds = %23, %20
  %25 = lshr i32 %3, %4
  %26 = icmp ne i32 %25, 0
  %27 = icmp ne i32 %4, 32
  %28 = and i1 %27, %26
  br i1 %28, label %29, label %30, !prof !11

29:                                               ; preds = %24
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.3, i32 noundef 231) #12
  br label %30

30:                                               ; preds = %29, %24
  %31 = icmp eq i32 %7, 0
  br i1 %31, label %59, label %32

32:                                               ; preds = %30
  %33 = shl i32 %3, %7
  %34 = load i8, ptr %6, align 1
  %35 = trunc i32 %33 to i8
  %36 = or i8 %34, %35
  store i8 %36, ptr %6, align 1
  %37 = add i32 %7, %4
  %38 = icmp sgt i32 %37, 8
  br i1 %38, label %39, label %76

39:                                               ; preds = %32
  %40 = sub i32 8, %7
  %41 = lshr i32 %3, %40
  %42 = trunc i32 %41 to i8
  %43 = getelementptr i8, ptr %6, i32 1
  store i8 %42, ptr %43, align 1
  %44 = icmp ugt i32 %37, 16
  br i1 %44, label %45, label %76

45:                                               ; preds = %39
  %46 = lshr i32 %41, 8
  %47 = trunc i32 %46 to i8
  %48 = getelementptr i8, ptr %6, i32 2
  store i8 %47, ptr %48, align 1
  %49 = icmp ugt i32 %37, 24
  br i1 %49, label %50, label %76

50:                                               ; preds = %45
  %51 = lshr i32 %41, 16
  %52 = trunc i32 %51 to i8
  %53 = getelementptr i8, ptr %6, i32 3
  store i8 %52, ptr %53, align 1
  %54 = icmp ugt i32 %37, 32
  br i1 %54, label %55, label %76

55:                                               ; preds = %50
  %56 = lshr i32 %41, 24
  %57 = trunc i32 %56 to i8
  %58 = getelementptr i8, ptr %6, i32 4
  store i8 %57, ptr %58, align 1
  br label %76

59:                                               ; preds = %30
  %60 = trunc i32 %3 to i8
  store i8 %60, ptr %6, align 1
  %61 = icmp sgt i32 %4, 8
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  %63 = lshr i32 %3, 8
  %64 = trunc i32 %63 to i8
  %65 = getelementptr i8, ptr %6, i32 1
  store i8 %64, ptr %65, align 1
  %66 = icmp ugt i32 %4, 16
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = lshr i32 %3, 16
  %69 = trunc i32 %68 to i8
  %70 = getelementptr i8, ptr %6, i32 2
  store i8 %69, ptr %70, align 1
  %71 = icmp ugt i32 %4, 24
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = lshr i32 %3, 24
  %74 = trunc i32 %73 to i8
  %75 = getelementptr i8, ptr %6, i32 3
  store i8 %74, ptr %75, align 1
  br label %76

76:                                               ; preds = %72, %67, %62, %59, %55, %50, %45, %39, %32
  %77 = phi i32 [ %37, %55 ], [ %37, %50 ], [ %37, %45 ], [ %37, %39 ], [ %37, %32 ], [ %4, %72 ], [ %4, %67 ], [ %4, %62 ], [ %4, %59 ]
  %78 = phi ptr [ %58, %55 ], [ %53, %50 ], [ %48, %45 ], [ %43, %39 ], [ %6, %32 ], [ %75, %72 ], [ %70, %67 ], [ %65, %62 ], [ %6, %59 ]
  %79 = and i32 %77, 7
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = getelementptr i8, ptr %78, i32 %81
  store ptr %82, ptr %1, align 4
  store i32 %79, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc16(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_pack_nnode(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %6 = getelementptr i8, ptr %1, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i8 1, ptr %6, align 1
  store ptr %6, ptr %4, align 4
  store i32 4, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ubifs_nnode, ptr %2, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 134
  %15 = load i32, ptr %14, align 8
  call fastcc void @pack_bits(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %13, i32 noundef %15)
  br label %16

16:                                               ; preds = %11, %3
  %17 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %18 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 131
  %19 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 58
  %20 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 132
  %21 = getelementptr %struct.ubifs_nnode, ptr %2, i32 0, i32 6, i32 0
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, ptr %19, align 4
  %26 = add i32 %25, 1
  br label %27

27:                                               ; preds = %24, %16
  %28 = phi i32 [ %26, %24 ], [ %22, %16 ]
  %29 = load i32, ptr %17, align 8
  %30 = sub i32 %28, %29
  %31 = load i32, ptr %18, align 4
  call fastcc void @pack_bits(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %30, i32 noundef %31)
  %32 = getelementptr %struct.ubifs_nnode, ptr %2, i32 0, i32 6, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = load i32, ptr %20, align 8
  call fastcc void @pack_bits(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %33, i32 noundef %34)
  %35 = getelementptr %struct.ubifs_nnode, ptr %2, i32 0, i32 6, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i32, ptr %19, align 4
  %40 = add i32 %39, 1
  br label %41

41:                                               ; preds = %38, %27
  %42 = phi i32 [ %40, %38 ], [ %36, %27 ]
  %43 = load i32, ptr %17, align 8
  %44 = sub i32 %42, %43
  %45 = load i32, ptr %18, align 4
  call fastcc void @pack_bits(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %44, i32 noundef %45)
  %46 = getelementptr %struct.ubifs_nnode, ptr %2, i32 0, i32 6, i32 1, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = load i32, ptr %20, align 8
  call fastcc void @pack_bits(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %47, i32 noundef %48)
  %49 = getelementptr %struct.ubifs_nnode, ptr %2, i32 0, i32 6, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i32, ptr %19, align 4
  %54 = add i32 %53, 1
  br label %55

55:                                               ; preds = %52, %41
  %56 = phi i32 [ %54, %52 ], [ %50, %41 ]
  %57 = load i32, ptr %17, align 8
  %58 = sub i32 %56, %57
  %59 = load i32, ptr %18, align 4
  call fastcc void @pack_bits(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %58, i32 noundef %59)
  %60 = getelementptr %struct.ubifs_nnode, ptr %2, i32 0, i32 6, i32 2, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = load i32, ptr %20, align 8
  call fastcc void @pack_bits(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %61, i32 noundef %62)
  %63 = getelementptr %struct.ubifs_nnode, ptr %2, i32 0, i32 6, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = load i32, ptr %19, align 4
  %68 = add i32 %67, 1
  br label %69

69:                                               ; preds = %66, %55
  %70 = phi i32 [ %68, %66 ], [ %64, %55 ]
  %71 = load i32, ptr %17, align 8
  %72 = sub i32 %70, %71
  %73 = load i32, ptr %18, align 4
  call fastcc void @pack_bits(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %72, i32 noundef %73)
  %74 = getelementptr %struct.ubifs_nnode, ptr %2, i32 0, i32 6, i32 3, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = load i32, ptr %20, align 8
  call fastcc void @pack_bits(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %75, i32 noundef %76)
  %77 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 136
  %78 = load i32, ptr %77, align 8
  %79 = add i32 %78, -2
  %80 = tail call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef %6, i32 noundef %79) #12
  store ptr %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %81 = zext i16 %80 to i32
  call fastcc void @pack_bits(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %81, i32 noundef 16)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_pack_ltab(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %6 = getelementptr i8, ptr %1, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i8 2, ptr %6, align 1
  store ptr %6, ptr %4, align 4
  store i32 4, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 56
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 133
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ 0, %10 ], [ %20, %12 ]
  %14 = getelementptr %struct.ubifs_lpt_lprops, ptr %2, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %11, align 4
  call fastcc void @pack_bits(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %15, i32 noundef %16)
  %17 = getelementptr %struct.ubifs_lpt_lprops, ptr %2, i32 %13, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %11, align 4
  call fastcc void @pack_bits(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %18, i32 noundef %19)
  %20 = add nuw nsw i32 %13, 1
  %21 = load i32, ptr %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %12, label %23

23:                                               ; preds = %12, %3
  %24 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 138
  %25 = load i32, ptr %24, align 8
  %26 = add i32 %25, -2
  %27 = tail call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef %6, i32 noundef %26) #12
  store ptr %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %28 = zext i16 %27 to i32
  call fastcc void @pack_bits(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %28, i32 noundef 16)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_pack_lsave(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %6 = getelementptr i8, ptr %1, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i8 3, ptr %6, align 1
  store ptr %6, ptr %4, align 4
  store i32 4, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 170
  %8 = load i32, ptr %7, align 8
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 135
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ 0, %10 ], [ %17, %12 ]
  %14 = getelementptr i32, ptr %2, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %11, align 4
  call fastcc void @pack_bits(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %15, i32 noundef %16)
  %17 = add nuw nsw i32 %13, 1
  %18 = load i32, ptr %7, align 8
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %12, label %20

20:                                               ; preds = %12, %3
  %21 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 139
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, -2
  %24 = tail call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef %6, i32 noundef %23) #12
  store ptr %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %25 = zext i16 %24 to i32
  call fastcc void @pack_bits(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %25, i32 noundef 16)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_add_lpt_dirt(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne i32 %2, 0
  %5 = icmp ne i32 %1, 0
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %9 = load i32, ptr %8, align 8
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %15, label %11, !prof !11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 58
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %13, %1
  br i1 %14, label %15, label %17, !prof !11

15:                                               ; preds = %11, %7
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef 458) #12
  %16 = load i32, ptr %8, align 8
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i32 [ %9, %11 ], [ %16, %15 ]
  %19 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  %20 = load ptr, ptr %19, align 8
  %21 = sub i32 %1, %18
  %22 = getelementptr %struct.ubifs_lpt_lprops, ptr %20, i32 %21, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %2
  store i32 %24, ptr %22, align 4
  br label %25

25:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_add_nnode_dirt(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ubifs_nnode, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.ubifs_nnode, ptr %3, i32 0, i32 6, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 136
  %11 = load i32, ptr %10, align 8
  %12 = icmp ne i32 %11, 0
  %13 = icmp ne i32 %9, 0
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %92

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %17 = load i32, ptr %16, align 8
  %18 = icmp sgt i32 %17, %9
  br i1 %18, label %23, label %19, !prof !11

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 58
  %21 = load i32, ptr %20, align 4
  %22 = icmp slt i32 %21, %9
  br i1 %22, label %23, label %25, !prof !11

23:                                               ; preds = %19, %15
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef 458) #12
  %24 = load i32, ptr %16, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i32 [ %17, %19 ], [ %24, %23 ]
  %27 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  %28 = load ptr, ptr %27, align 8
  %29 = sub i32 %9, %26
  %30 = getelementptr %struct.ubifs_lpt_lprops, ptr %28, i32 %29, i32 1
  br label %87

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 145
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 136
  %35 = load i32, ptr %34, align 8
  %36 = icmp ne i32 %35, 0
  %37 = icmp ne i32 %33, 0
  %38 = and i1 %37, %36
  br i1 %38, label %39, label %57

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %41 = load i32, ptr %40, align 8
  %42 = icmp sgt i32 %41, %33
  br i1 %42, label %47, label %43, !prof !11

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 58
  %45 = load i32, ptr %44, align 4
  %46 = icmp slt i32 %45, %33
  br i1 %46, label %47, label %49, !prof !11

47:                                               ; preds = %43, %39
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef 458) #12
  %48 = load i32, ptr %40, align 8
  br label %49

49:                                               ; preds = %47, %43
  %50 = phi i32 [ %41, %43 ], [ %48, %47 ]
  %51 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  %52 = load ptr, ptr %51, align 8
  %53 = sub i32 %33, %50
  %54 = getelementptr %struct.ubifs_lpt_lprops, ptr %52, i32 %53, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, %35
  store i32 %56, ptr %54, align 4
  br label %57

57:                                               ; preds = %49, %31
  %58 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 149
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %92

62:                                               ; preds = %57
  %63 = or i32 %59, 1
  store i32 %63, ptr %58, align 4
  %64 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 166
  %65 = load i32, ptr %64, align 8
  %66 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 138
  %67 = load i32, ptr %66, align 8
  %68 = icmp ne i32 %67, 0
  %69 = icmp ne i32 %65, 0
  %70 = and i1 %69, %68
  br i1 %70, label %71, label %92

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %73 = load i32, ptr %72, align 8
  %74 = icmp sgt i32 %73, %65
  br i1 %74, label %79, label %75, !prof !11

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 58
  %77 = load i32, ptr %76, align 4
  %78 = icmp slt i32 %77, %65
  br i1 %78, label %79, label %81, !prof !11

79:                                               ; preds = %75, %71
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef 458) #12
  %80 = load i32, ptr %72, align 8
  br label %81

81:                                               ; preds = %79, %75
  %82 = phi i32 [ %73, %75 ], [ %80, %79 ]
  %83 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  %84 = load ptr, ptr %83, align 8
  %85 = sub i32 %65, %82
  %86 = getelementptr %struct.ubifs_lpt_lprops, ptr %84, i32 %85, i32 1
  br label %87

87:                                               ; preds = %81, %25
  %88 = phi ptr [ %86, %81 ], [ %30, %25 ]
  %89 = phi i32 [ %67, %81 ], [ %11, %25 ]
  %90 = load i32, ptr %88, align 4
  %91 = add i32 %90, %89
  store i32 %91, ptr %88, align 4
  br label %92

92:                                               ; preds = %87, %62, %57, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_create_dflt_lpt(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, ptr nocapture noundef readnone %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 56
  store i32 2, ptr %7, align 4
  %8 = load i32, ptr %1, align 4
  %9 = add i32 %8, -2
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  store i32 %9, ptr %10, align 4
  %11 = icmp slt i32 %9, 1
  br i1 %11, label %490, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, -2
  store i16 %15, ptr %13, align 4
  tail call fastcc void @do_calc_lpt_geom(ptr noundef %0) #12
  %16 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 153
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %19 = load i32, ptr %18, align 8
  %20 = sext i32 %19 to i64
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load i16, ptr %13, align 4
  %24 = or i16 %23, 1
  store i16 %24, ptr %13, align 4
  tail call fastcc void @do_calc_lpt_geom(ptr noundef %0) #12
  br label %25

25:                                               ; preds = %22, %12
  br label %26

26:                                               ; preds = %50, %25
  %27 = phi i32 [ %51, %50 ], [ 0, %25 ]
  %28 = load i64, ptr %16, align 8
  %29 = shl i64 %28, 2
  %30 = load i32, ptr %18, align 8
  %31 = sext i32 %30 to i64
  %32 = add i64 %29, -1
  %33 = add i64 %32, %31
  %34 = icmp ult i64 %33, 4294967296
  br i1 %34, label %35, label %38, !prof !8

35:                                               ; preds = %26
  %36 = trunc i64 %33 to i32
  %37 = udiv i32 %36, %30
  br label %42

38:                                               ; preds = %26
  %39 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %30, i64 %33) #11, !srcloc !9
  %40 = extractvalue { i64, i64 } %39, 1
  %41 = trunc i64 %40 to i32
  br label %42

42:                                               ; preds = %38, %35
  %43 = phi i32 [ %37, %35 ], [ %41, %38 ]
  %44 = load i32, ptr %7, align 4
  %45 = icmp slt i32 %44, %43
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  store i32 %43, ptr %7, align 4
  %47 = load i32, ptr %1, align 4
  %48 = sub i32 %47, %43
  store i32 %48, ptr %10, align 4
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %490, label %50

50:                                               ; preds = %46
  tail call fastcc void @do_calc_lpt_geom(ptr noundef %0) #12
  %51 = add nuw nsw i32 %27, 1
  %52 = icmp eq i32 %51, 64
  br i1 %52, label %490, label %26

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 138
  %55 = load i32, ptr %54, align 8
  %56 = icmp sgt i32 %55, %30
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.1) #12
  br label %490

58:                                               ; preds = %53
  %59 = load i32, ptr %10, align 4
  store i32 %59, ptr %1, align 4
  %60 = load i16, ptr %13, align 4
  %61 = and i16 %60, 1
  %62 = zext i16 %61 to i32
  store i32 %62, ptr %4, align 4
  %63 = load i32, ptr %7, align 4
  store i32 %63, ptr %3, align 4
  %64 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  store i32 %2, ptr %64, align 8
  %65 = load i32, ptr %7, align 4
  %66 = add i32 %2, -1
  %67 = add i32 %66, %65
  %68 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 58
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  %70 = load i32, ptr %69, align 8
  %71 = load i32, ptr %1, align 4
  %72 = sub i32 %70, %71
  %73 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 63
  store i32 %72, ptr %73, align 8
  %74 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 170
  %75 = load i32, ptr %74, align 8
  %76 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %75, i32 4) #12
  %77 = extractvalue { i32, i1 } %76, 1
  br i1 %77, label %81, label %78, !prof !11

78:                                               ; preds = %58
  %79 = extractvalue { i32, i1 } %76, 0
  %80 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %79, i32 noundef 3264) #13
  br label %81

81:                                               ; preds = %78, %58
  %82 = phi ptr [ %80, %78 ], [ null, %58 ]
  %83 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %84 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %83, i32 noundef 3520, i32 noundef 120) #14
  %85 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %86 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %85, i32 noundef 3520, i32 noundef 72) #14
  %87 = load i32, ptr %18, align 8
  %88 = tail call noalias ptr @vmalloc(i32 noundef %87) #13
  %89 = load i32, ptr %7, align 4
  %90 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %89, i32 12) #12
  %91 = extractvalue { i32, i1 } %90, 1
  %92 = extractvalue { i32, i1 } %90, 0
  %93 = select i1 %91, i32 -1, i32 %92
  %94 = tail call noalias ptr @vmalloc(i32 noundef %93) #13
  %95 = icmp ne ptr %84, null
  %96 = icmp ne ptr %86, null
  %97 = select i1 %95, i1 %96, i1 false
  %98 = icmp ne ptr %88, null
  %99 = select i1 %97, i1 %98, i1 false
  %100 = icmp ne ptr %94, null
  %101 = select i1 %99, i1 %100, i1 false
  %102 = icmp ne ptr %82, null
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %104, label %487

104:                                              ; preds = %81
  %105 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  %106 = load ptr, ptr %105, align 8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %109, label %108, !prof !8

108:                                              ; preds = %104
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, i32 noundef 638) #12
  br label %109

109:                                              ; preds = %108, %104
  store ptr %94, ptr %105, align 8
  %110 = load i32, ptr %7, align 4
  %111 = icmp sgt i32 %110, 0
  %112 = load i32, ptr %18, align 8
  br i1 %111, label %113, label %122

113:                                              ; preds = %113, %109
  %114 = phi i32 [ %120, %113 ], [ 0, %109 ]
  %115 = getelementptr %struct.ubifs_lpt_lprops, ptr %94, i32 %114
  store i32 %112, ptr %115, align 4
  %116 = getelementptr %struct.ubifs_lpt_lprops, ptr %94, i32 %114, i32 1
  store i32 0, ptr %116, align 4
  %117 = getelementptr %struct.ubifs_lpt_lprops, ptr %94, i32 %114, i32 2
  %118 = load i8, ptr %117, align 4
  %119 = and i8 %118, -4
  store i8 %119, ptr %117, align 4
  %120 = add nuw nsw i32 %114, 1
  %121 = icmp eq i32 %120, %110
  br i1 %121, label %122, label %113

122:                                              ; preds = %113, %109
  %123 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 140
  %124 = load i32, ptr %123, align 8
  %125 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 68
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 69
  %128 = load i32, ptr %127, align 8
  %129 = add i32 %126, 47
  %130 = add i32 %129, %128
  %131 = and i32 %130, -8
  %132 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %133 = load i32, ptr %132, align 8
  %134 = add i32 %133, -1
  %135 = add i32 %134, %131
  %136 = sub i32 0, %133
  %137 = and i32 %135, %136
  %138 = sub i32 %112, %137
  %139 = getelementptr inbounds %struct.ubifs_pnode, ptr %84, i32 0, i32 6
  store i32 %138, ptr %139, align 8
  %140 = sub i32 %137, %131
  %141 = getelementptr inbounds %struct.ubifs_pnode, ptr %84, i32 0, i32 6, i32 0, i32 1
  store i32 %140, ptr %141, align 4
  %142 = getelementptr inbounds %struct.ubifs_pnode, ptr %84, i32 0, i32 6, i32 0, i32 2
  store i32 32, ptr %142, align 8
  %143 = add i32 %133, 159
  %144 = and i32 %143, %136
  %145 = sub i32 %112, %144
  %146 = getelementptr %struct.ubifs_pnode, ptr %84, i32 0, i32 6, i32 1
  store i32 %145, ptr %146, align 8
  %147 = add i32 %144, -160
  %148 = getelementptr %struct.ubifs_pnode, ptr %84, i32 0, i32 6, i32 1, i32 1
  store i32 %147, ptr %148, align 4
  %149 = getelementptr %struct.ubifs_pnode, ptr %84, i32 0, i32 6, i32 2
  store i32 %112, ptr %149, align 8
  %150 = getelementptr %struct.ubifs_pnode, ptr %84, i32 0, i32 6, i32 3
  store i32 %112, ptr %150, align 8
  tail call void @ubifs_pack_pnode(ptr noundef %0, ptr noundef nonnull %88, ptr noundef nonnull %84)
  %151 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 137
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr i8, ptr %88, i32 %152
  %154 = getelementptr inbounds %struct.ubifs_pnode, ptr %84, i32 0, i32 5
  %155 = load i32, ptr %154, align 4
  %156 = add i32 %155, 1
  store i32 %156, ptr %154, align 4
  %157 = load i32, ptr %18, align 8
  store i32 %157, ptr %139, align 8
  store i32 0, ptr %141, align 4
  store i32 0, ptr %142, align 8
  store i32 %157, ptr %146, align 8
  store i32 0, ptr %148, align 4
  %158 = icmp sgt i32 %124, 1
  br i1 %158, label %161, label %211

159:                                              ; preds = %198
  %160 = icmp sgt i32 %124, 4
  br i1 %160, label %234, label %211

161:                                              ; preds = %209, %122
  %162 = phi i32 [ %210, %209 ], [ %157, %122 ]
  %163 = phi i32 [ %202, %209 ], [ %152, %122 ]
  %164 = phi i32 [ %201, %209 ], [ %2, %122 ]
  %165 = phi i32 [ %207, %209 ], [ 1, %122 ]
  %166 = phi i32 [ %204, %209 ], [ %152, %122 ]
  %167 = phi ptr [ %203, %209 ], [ %153, %122 ]
  %168 = add i32 %163, %166
  %169 = icmp sgt i32 %168, %162
  br i1 %169, label %170, label %198

170:                                              ; preds = %161
  %171 = load i32, ptr %132, align 8
  %172 = add i32 %166, -1
  %173 = add i32 %172, %171
  %174 = sub i32 0, %171
  %175 = and i32 %173, %174
  %176 = sub i32 %162, %175
  %177 = sub i32 %175, %166
  %178 = load i32, ptr %64, align 8
  %179 = icmp sgt i32 %178, %164
  br i1 %179, label %183, label %180, !prof !11

180:                                              ; preds = %170
  %181 = load i32, ptr %68, align 4
  %182 = icmp slt i32 %181, %164
  br i1 %182, label %183, label %185, !prof !11

183:                                              ; preds = %180, %170
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef 474) #12
  %184 = load i32, ptr %64, align 8
  br label %185

185:                                              ; preds = %183, %180
  %186 = phi i32 [ %178, %180 ], [ %184, %183 ]
  %187 = load ptr, ptr %105, align 8
  %188 = sub i32 %164, %186
  %189 = getelementptr %struct.ubifs_lpt_lprops, ptr %187, i32 %188
  store i32 %176, ptr %189, align 4
  %190 = load ptr, ptr %105, align 8
  %191 = load i32, ptr %64, align 8
  %192 = sub i32 %164, %191
  %193 = getelementptr %struct.ubifs_lpt_lprops, ptr %190, i32 %192, i32 1
  store i32 %177, ptr %193, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %167, i8 -1, i32 %177, i1 false)
  %194 = tail call i32 @ubifs_leb_change(ptr noundef %0, i32 noundef %164, ptr noundef nonnull %88, i32 noundef %175) #12
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %487

196:                                              ; preds = %185
  %197 = add i32 %164, 1
  br label %198

198:                                              ; preds = %196, %161
  %199 = phi ptr [ %88, %196 ], [ %167, %161 ]
  %200 = phi i32 [ 0, %196 ], [ %166, %161 ]
  %201 = phi i32 [ %197, %196 ], [ %164, %161 ]
  tail call void @ubifs_pack_pnode(ptr noundef %0, ptr noundef %199, ptr noundef nonnull %84)
  %202 = load i32, ptr %151, align 4
  %203 = getelementptr i8, ptr %199, i32 %202
  %204 = add i32 %202, %200
  %205 = load i32, ptr %154, align 4
  %206 = add i32 %205, 1
  store i32 %206, ptr %154, align 4
  %207 = add nuw nsw i32 %165, 1
  %208 = icmp eq i32 %207, %124
  br i1 %208, label %159, label %209

209:                                              ; preds = %198
  %210 = load i32, ptr %18, align 8
  br label %161

211:                                              ; preds = %234, %159, %122
  %212 = phi i32 [ %201, %159 ], [ %2, %122 ], [ %201, %234 ]
  %213 = phi i32 [ %204, %159 ], [ %152, %122 ], [ %204, %234 ]
  %214 = phi ptr [ %203, %159 ], [ %153, %122 ], [ %203, %234 ]
  %215 = phi i32 [ 0, %159 ], [ 0, %122 ], [ %237, %234 ]
  %216 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 136
  %217 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 145
  %218 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 146
  %219 = getelementptr inbounds %struct.ubifs_nnode, ptr %86, i32 0, i32 5
  %220 = getelementptr %struct.ubifs_nnode, ptr %86, i32 0, i32 6, i32 0
  %221 = getelementptr %struct.ubifs_nnode, ptr %86, i32 0, i32 6, i32 0, i32 1
  %222 = getelementptr %struct.ubifs_nnode, ptr %86, i32 0, i32 6, i32 1
  %223 = getelementptr %struct.ubifs_nnode, ptr %86, i32 0, i32 6, i32 1, i32 1
  %224 = getelementptr %struct.ubifs_nnode, ptr %86, i32 0, i32 6, i32 2
  %225 = getelementptr %struct.ubifs_nnode, ptr %86, i32 0, i32 6, i32 2, i32 1
  %226 = getelementptr %struct.ubifs_nnode, ptr %86, i32 0, i32 6, i32 0
  %227 = getelementptr %struct.ubifs_nnode, ptr %86, i32 0, i32 6, i32 0, i32 1
  %228 = getelementptr %struct.ubifs_nnode, ptr %86, i32 0, i32 6, i32 1
  %229 = getelementptr %struct.ubifs_nnode, ptr %86, i32 0, i32 6, i32 1, i32 1
  %230 = getelementptr %struct.ubifs_nnode, ptr %86, i32 0, i32 6, i32 2
  %231 = getelementptr %struct.ubifs_nnode, ptr %86, i32 0, i32 6, i32 2, i32 1
  %232 = getelementptr %struct.ubifs_nnode, ptr %86, i32 0, i32 6, i32 3
  %233 = getelementptr %struct.ubifs_nnode, ptr %86, i32 0, i32 6, i32 3, i32 1
  br label %240

234:                                              ; preds = %234, %159
  %235 = phi i32 [ %238, %234 ], [ 4, %159 ]
  %236 = phi i32 [ %237, %234 ], [ 0, %159 ]
  %237 = add i32 %236, 1
  %238 = shl i32 %235, 2
  %239 = icmp sgt i32 %124, %238
  br i1 %239, label %234, label %211

240:                                              ; preds = %372, %211
  %241 = phi ptr [ %377, %372 ], [ %214, %211 ]
  %242 = phi i32 [ %378, %372 ], [ %152, %211 ]
  %243 = phi i32 [ %376, %372 ], [ 0, %211 ]
  %244 = phi i32 [ %375, %372 ], [ %2, %211 ]
  %245 = phi i32 [ %379, %372 ], [ %215, %211 ]
  %246 = phi i32 [ %374, %372 ], [ %213, %211 ]
  %247 = phi i32 [ %250, %372 ], [ %124, %211 ]
  %248 = phi i32 [ %373, %372 ], [ %212, %211 ]
  %249 = add i32 %247, 3
  %250 = sdiv i32 %249, 4
  %251 = icmp sgt i32 %249, 3
  br i1 %251, label %252, label %372

252:                                              ; preds = %240
  %253 = add nsw i32 %247, -1
  %254 = icmp ult i32 %253, 4
  %255 = icmp eq i32 %245, 0
  %256 = load i32, ptr %216, align 8
  br label %257

257:                                              ; preds = %363, %252
  %258 = phi i32 [ %256, %252 ], [ %365, %363 ]
  %259 = phi i32 [ %248, %252 ], [ %300, %363 ]
  %260 = phi i32 [ 0, %252 ], [ %368, %363 ]
  %261 = phi i32 [ %246, %252 ], [ %367, %363 ]
  %262 = phi i32 [ %244, %252 ], [ %352, %363 ]
  %263 = phi i32 [ %243, %252 ], [ %351, %363 ]
  %264 = phi i32 [ %247, %252 ], [ %350, %363 ]
  %265 = phi ptr [ %241, %252 ], [ %366, %363 ]
  %266 = add i32 %258, %261
  %267 = load i32, ptr %18, align 8
  %268 = icmp sgt i32 %266, %267
  br i1 %268, label %269, label %297

269:                                              ; preds = %257
  %270 = load i32, ptr %132, align 8
  %271 = add i32 %261, -1
  %272 = add i32 %271, %270
  %273 = sub i32 0, %270
  %274 = and i32 %272, %273
  %275 = sub i32 %267, %274
  %276 = sub i32 %274, %261
  %277 = load i32, ptr %64, align 8
  %278 = icmp sgt i32 %277, %259
  br i1 %278, label %282, label %279, !prof !11

279:                                              ; preds = %269
  %280 = load i32, ptr %68, align 4
  %281 = icmp slt i32 %280, %259
  br i1 %281, label %282, label %284, !prof !11

282:                                              ; preds = %279, %269
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef 474) #12
  %283 = load i32, ptr %64, align 8
  br label %284

284:                                              ; preds = %282, %279
  %285 = phi i32 [ %277, %279 ], [ %283, %282 ]
  %286 = load ptr, ptr %105, align 8
  %287 = sub i32 %259, %285
  %288 = getelementptr %struct.ubifs_lpt_lprops, ptr %286, i32 %287
  store i32 %275, ptr %288, align 4
  %289 = load ptr, ptr %105, align 8
  %290 = load i32, ptr %64, align 8
  %291 = sub i32 %259, %290
  %292 = getelementptr %struct.ubifs_lpt_lprops, ptr %289, i32 %291, i32 1
  store i32 %276, ptr %292, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %265, i8 -1, i32 %276, i1 false)
  %293 = tail call i32 @ubifs_leb_change(ptr noundef %0, i32 noundef %259, ptr noundef nonnull %88, i32 noundef %274) #12
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %487

295:                                              ; preds = %284
  %296 = add i32 %259, 1
  br label %297

297:                                              ; preds = %295, %257
  %298 = phi ptr [ %88, %295 ], [ %265, %257 ]
  %299 = phi i32 [ 0, %295 ], [ %261, %257 ]
  %300 = phi i32 [ %296, %295 ], [ %259, %257 ]
  br i1 %254, label %301, label %302

301:                                              ; preds = %297
  store i32 %300, ptr %217, align 4
  store i32 %299, ptr %218, align 8
  br label %302

302:                                              ; preds = %301, %297
  %303 = icmp eq i32 %264, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %302
  store i32 0, ptr %226, align 8
  store i32 0, ptr %227, align 4
  br label %314

305:                                              ; preds = %302
  %306 = add i32 %263, %242
  %307 = load i32, ptr %18, align 8
  %308 = icmp sgt i32 %306, %307
  %309 = select i1 %308, i32 0, i32 %263
  %310 = zext i1 %308 to i32
  %311 = add i32 %262, %310
  %312 = add i32 %309, %242
  store i32 %311, ptr %220, align 8
  store i32 %309, ptr %221, align 4
  %313 = icmp eq i32 %264, 1
  br i1 %313, label %314, label %317

314:                                              ; preds = %305, %304
  %315 = phi i32 [ %312, %305 ], [ %263, %304 ]
  %316 = phi i32 [ %311, %305 ], [ %262, %304 ]
  store i32 0, ptr %228, align 4
  store i32 0, ptr %229, align 8
  br label %326

317:                                              ; preds = %305
  %318 = add i32 %312, %242
  %319 = load i32, ptr %18, align 8
  %320 = icmp sgt i32 %318, %319
  %321 = select i1 %320, i32 0, i32 %312
  %322 = zext i1 %320 to i32
  %323 = add i32 %311, %322
  %324 = add i32 %321, %242
  store i32 %323, ptr %222, align 4
  store i32 %321, ptr %223, align 8
  %325 = icmp eq i32 %264, 2
  br i1 %325, label %326, label %329

326:                                              ; preds = %317, %314
  %327 = phi i32 [ %324, %317 ], [ %315, %314 ]
  %328 = phi i32 [ %323, %317 ], [ %316, %314 ]
  store i32 0, ptr %230, align 8
  store i32 0, ptr %231, align 4
  br label %347

329:                                              ; preds = %317
  %330 = add i32 %324, %242
  %331 = load i32, ptr %18, align 8
  %332 = icmp sgt i32 %330, %331
  %333 = select i1 %332, i32 0, i32 %324
  %334 = zext i1 %332 to i32
  %335 = add i32 %323, %334
  %336 = add i32 %333, %242
  store i32 %335, ptr %224, align 8
  store i32 %333, ptr %225, align 4
  %337 = icmp eq i32 %264, 3
  br i1 %337, label %347, label %338

338:                                              ; preds = %329
  %339 = add i32 %336, %242
  %340 = load i32, ptr %18, align 8
  %341 = icmp sgt i32 %339, %340
  %342 = select i1 %341, i32 0, i32 %336
  %343 = zext i1 %341 to i32
  %344 = add i32 %335, %343
  %345 = add i32 %342, %242
  %346 = add i32 %264, -4
  br label %347

347:                                              ; preds = %338, %329, %326
  %348 = phi i32 [ %344, %338 ], [ 0, %326 ], [ 0, %329 ]
  %349 = phi i32 [ %342, %338 ], [ 0, %326 ], [ 0, %329 ]
  %350 = phi i32 [ %346, %338 ], [ 0, %326 ], [ 0, %329 ]
  %351 = phi i32 [ %345, %338 ], [ %327, %326 ], [ %336, %329 ]
  %352 = phi i32 [ %344, %338 ], [ %328, %326 ], [ %335, %329 ]
  store i32 %348, ptr %232, align 4
  store i32 %349, ptr %233, align 8
  br i1 %255, label %363, label %353

353:                                              ; preds = %353, %347
  %354 = phi i32 [ %361, %353 ], [ 1, %347 ]
  %355 = phi i32 [ %359, %353 ], [ %260, %347 ]
  %356 = phi i32 [ %357, %353 ], [ %245, %347 ]
  %357 = add i32 %356, -1
  %358 = and i32 %355, 3
  %359 = lshr i32 %355, 2
  %360 = shl i32 %354, 2
  %361 = or i32 %358, %360
  %362 = icmp eq i32 %357, 0
  br i1 %362, label %363, label %353

363:                                              ; preds = %353, %347
  %364 = phi i32 [ 1, %347 ], [ %361, %353 ]
  store i32 %364, ptr %219, align 4
  tail call void @ubifs_pack_nnode(ptr noundef %0, ptr noundef %298, ptr noundef nonnull %86)
  %365 = load i32, ptr %216, align 8
  %366 = getelementptr i8, ptr %298, i32 %365
  %367 = add i32 %365, %299
  %368 = add nuw nsw i32 %260, 1
  %369 = icmp eq i32 %368, %250
  br i1 %369, label %370, label %257

370:                                              ; preds = %363
  %371 = icmp ult i32 %253, 4
  br i1 %371, label %380, label %372

372:                                              ; preds = %370, %240
  %373 = phi i32 [ %300, %370 ], [ %248, %240 ]
  %374 = phi i32 [ %367, %370 ], [ %246, %240 ]
  %375 = phi i32 [ %352, %370 ], [ %244, %240 ]
  %376 = phi i32 [ %351, %370 ], [ %243, %240 ]
  %377 = phi ptr [ %366, %370 ], [ %241, %240 ]
  %378 = load i32, ptr %216, align 8
  %379 = add i32 %245, -1
  br label %240

380:                                              ; preds = %370
  %381 = load i32, ptr %4, align 4
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %438, label %383

383:                                              ; preds = %380
  %384 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 139
  %385 = load i32, ptr %384, align 4
  %386 = add i32 %385, %367
  %387 = load i32, ptr %18, align 8
  %388 = icmp sgt i32 %386, %387
  br i1 %388, label %389, label %401

389:                                              ; preds = %383
  %390 = load i32, ptr %132, align 8
  %391 = add i32 %367, -1
  %392 = add i32 %391, %390
  %393 = sub i32 0, %390
  %394 = and i32 %392, %393
  %395 = sub i32 %387, %394
  %396 = sub i32 %394, %367
  tail call fastcc void @set_ltab(ptr noundef %0, i32 noundef %300, i32 noundef %395, i32 noundef %396)
  tail call void @llvm.memset.p0.i32(ptr align 1 %366, i8 -1, i32 %396, i1 false)
  %397 = tail call i32 @ubifs_leb_change(ptr noundef %0, i32 noundef %300, ptr noundef nonnull %88, i32 noundef %394) #12
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %487

399:                                              ; preds = %389
  %400 = add i32 %300, 1
  br label %401

401:                                              ; preds = %399, %383
  %402 = phi ptr [ %88, %399 ], [ %366, %383 ]
  %403 = phi i32 [ 0, %399 ], [ %367, %383 ]
  %404 = phi i32 [ %400, %399 ], [ %300, %383 ]
  %405 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 171
  store i32 %404, ptr %405, align 4
  %406 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 172
  store i32 %403, ptr %406, align 8
  %407 = load i32, ptr %74, align 8
  %408 = icmp sgt i32 %407, 0
  br i1 %408, label %409, label %423

409:                                              ; preds = %401
  %410 = load i32, ptr %1, align 4
  %411 = icmp sgt i32 %410, 0
  br i1 %411, label %415, label %423

412:                                              ; preds = %415
  %413 = load i32, ptr %1, align 4
  %414 = icmp slt i32 %420, %413
  br i1 %414, label %415, label %423

415:                                              ; preds = %412, %409
  %416 = phi i32 [ %420, %412 ], [ 0, %409 ]
  %417 = load i32, ptr %73, align 8
  %418 = add i32 %417, %416
  %419 = getelementptr i32, ptr %82, i32 %416
  store i32 %418, ptr %419, align 4
  %420 = add nuw nsw i32 %416, 1
  %421 = load i32, ptr %74, align 8
  %422 = icmp slt i32 %420, %421
  br i1 %422, label %412, label %423

423:                                              ; preds = %415, %412, %409, %401
  %424 = phi i32 [ %407, %401 ], [ %407, %409 ], [ %421, %412 ], [ %421, %415 ]
  %425 = phi i32 [ 0, %401 ], [ 0, %409 ], [ %420, %412 ], [ %420, %415 ]
  %426 = icmp slt i32 %425, %424
  br i1 %426, label %427, label %434

427:                                              ; preds = %427, %423
  %428 = phi i32 [ %431, %427 ], [ %425, %423 ]
  %429 = load i32, ptr %73, align 8
  %430 = getelementptr i32, ptr %82, i32 %428
  store i32 %429, ptr %430, align 4
  %431 = add nuw nsw i32 %428, 1
  %432 = load i32, ptr %74, align 8
  %433 = icmp slt i32 %431, %432
  br i1 %433, label %427, label %434

434:                                              ; preds = %427, %423
  tail call void @ubifs_pack_lsave(ptr noundef %0, ptr noundef %402, ptr noundef nonnull %82)
  %435 = load i32, ptr %384, align 4
  %436 = getelementptr i8, ptr %402, i32 %435
  %437 = add i32 %435, %403
  br label %438

438:                                              ; preds = %434, %380
  %439 = phi ptr [ %436, %434 ], [ %366, %380 ]
  %440 = phi i32 [ %437, %434 ], [ %367, %380 ]
  %441 = phi i32 [ %404, %434 ], [ %300, %380 ]
  %442 = load i32, ptr %54, align 8
  %443 = add i32 %442, %440
  %444 = load i32, ptr %18, align 8
  %445 = icmp sgt i32 %443, %444
  br i1 %445, label %446, label %460

446:                                              ; preds = %438
  %447 = load i32, ptr %132, align 8
  %448 = add i32 %440, -1
  %449 = add i32 %448, %447
  %450 = sub i32 0, %447
  %451 = and i32 %449, %450
  %452 = sub i32 %444, %451
  %453 = sub i32 %451, %440
  tail call fastcc void @set_ltab(ptr noundef %0, i32 noundef %441, i32 noundef %452, i32 noundef %453)
  tail call void @llvm.memset.p0.i32(ptr align 1 %439, i8 -1, i32 %453, i1 false)
  %454 = tail call i32 @ubifs_leb_change(ptr noundef %0, i32 noundef %441, ptr noundef nonnull %88, i32 noundef %451) #12
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %487

456:                                              ; preds = %446
  %457 = add i32 %441, 1
  %458 = load i32, ptr %54, align 8
  %459 = load i32, ptr %18, align 8
  br label %460

460:                                              ; preds = %456, %438
  %461 = phi i32 [ %459, %456 ], [ %444, %438 ]
  %462 = phi i32 [ %458, %456 ], [ %442, %438 ]
  %463 = phi ptr [ %88, %456 ], [ %439, %438 ]
  %464 = phi i32 [ 0, %456 ], [ %440, %438 ]
  %465 = phi i32 [ %457, %456 ], [ %441, %438 ]
  %466 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 166
  store i32 %465, ptr %466, align 8
  %467 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 167
  store i32 %464, ptr %467, align 4
  %468 = add i32 %462, %464
  %469 = load i32, ptr %132, align 8
  %470 = add i32 %468, -1
  %471 = add i32 %470, %469
  %472 = sub i32 0, %469
  %473 = and i32 %471, %472
  %474 = sub i32 %461, %473
  %475 = sub i32 %473, %468
  tail call fastcc void @set_ltab(ptr noundef %0, i32 noundef %465, i32 noundef %474, i32 noundef %475)
  tail call void @ubifs_pack_ltab(ptr noundef %0, ptr noundef %463, ptr noundef nonnull %94)
  %476 = load i32, ptr %54, align 8
  %477 = getelementptr i8, ptr %463, i32 %476
  tail call void @llvm.memset.p0.i32(ptr align 1 %477, i8 -1, i32 %475, i1 false)
  %478 = tail call i32 @ubifs_leb_change(ptr noundef %0, i32 noundef %465, ptr noundef nonnull %88, i32 noundef %473) #12
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %480, label %487

480:                                              ; preds = %460
  %481 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 147
  store i32 %465, ptr %481, align 4
  %482 = load i32, ptr %132, align 8
  %483 = add i32 %470, %482
  %484 = sub i32 0, %482
  %485 = and i32 %483, %484
  %486 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 148
  store i32 %485, ptr %486, align 8
  br label %487

487:                                              ; preds = %480, %460, %446, %389, %284, %185, %81
  %488 = phi i32 [ %397, %389 ], [ %454, %446 ], [ %478, %460 ], [ -12, %81 ], [ 0, %480 ], [ %293, %284 ], [ %194, %185 ]
  %489 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  store ptr null, ptr %489, align 8
  tail call void @kfree(ptr noundef null) #12
  tail call void @kfree(ptr noundef %82) #12
  tail call void @vfree(ptr noundef %94) #12
  tail call void @vfree(ptr noundef %88) #12
  tail call void @kfree(ptr noundef %86) #12
  tail call void @kfree(ptr noundef %84) #12
  br label %490

490:                                              ; preds = %487, %57, %50, %46, %6
  %491 = phi i32 [ %488, %487 ], [ -22, %57 ], [ -22, %6 ], [ -22, %46 ], [ -22, %50 ]
  ret i32 %491
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @set_ltab(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %6 = load i32, ptr %5, align 8
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %12, label %8, !prof !11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 58
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %10, %1
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %8, %4
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef 474) #12
  %13 = load i32, ptr %5, align 8
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %6, %8 ], [ %13, %12 ]
  %16 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  %17 = load ptr, ptr %16, align 8
  %18 = sub i32 %1, %15
  %19 = getelementptr %struct.ubifs_lpt_lprops, ptr %17, i32 %18
  store i32 %2, ptr %19, align 4
  %20 = load ptr, ptr %16, align 8
  %21 = load i32, ptr %5, align 8
  %22 = sub i32 %1, %21
  %23 = getelementptr %struct.ubifs_lpt_lprops, ptr %20, i32 %22, i32 1
  store i32 %3, ptr %23, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_change(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_unpack_nnode(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  %8 = getelementptr i8, ptr %1, i32 2
  store ptr %8, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4
  %9 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 4) #12
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %9, i32 noundef 1) #12
  tail call void @dump_stack() #15
  br label %86

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 134
  %19 = load i32, ptr %18, align 8
  %20 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %19)
  %21 = getelementptr inbounds %struct.ubifs_nnode, ptr %2, i32 0, i32 5
  store i32 %20, ptr %21, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 131
  %24 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %25 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 58
  %26 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 132
  %27 = load i32, ptr %23, align 4
  %28 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %27)
  %29 = load i32, ptr %24, align 8
  %30 = add i32 %29, %28
  %31 = load i32, ptr %25, align 4
  %32 = add i32 %31, 1
  %33 = icmp eq i32 %30, %32
  %34 = select i1 %33, i32 0, i32 %30
  %35 = getelementptr %struct.ubifs_nnode, ptr %2, i32 0, i32 6, i32 0
  store i32 %34, ptr %35, align 4
  %36 = load i32, ptr %26, align 8
  %37 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %36)
  %38 = getelementptr %struct.ubifs_nnode, ptr %2, i32 0, i32 6, i32 0, i32 1
  store i32 %37, ptr %38, align 4
  %39 = load i32, ptr %23, align 4
  %40 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %39)
  %41 = load i32, ptr %24, align 8
  %42 = add i32 %41, %40
  %43 = load i32, ptr %25, align 4
  %44 = add i32 %43, 1
  %45 = icmp eq i32 %42, %44
  %46 = select i1 %45, i32 0, i32 %42
  %47 = getelementptr %struct.ubifs_nnode, ptr %2, i32 0, i32 6, i32 1
  store i32 %46, ptr %47, align 4
  %48 = load i32, ptr %26, align 8
  %49 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %48)
  %50 = getelementptr %struct.ubifs_nnode, ptr %2, i32 0, i32 6, i32 1, i32 1
  store i32 %49, ptr %50, align 4
  %51 = load i32, ptr %23, align 4
  %52 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %51)
  %53 = load i32, ptr %24, align 8
  %54 = add i32 %53, %52
  %55 = load i32, ptr %25, align 4
  %56 = add i32 %55, 1
  %57 = icmp eq i32 %54, %56
  %58 = select i1 %57, i32 0, i32 %54
  %59 = getelementptr %struct.ubifs_nnode, ptr %2, i32 0, i32 6, i32 2
  store i32 %58, ptr %59, align 4
  %60 = load i32, ptr %26, align 8
  %61 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %60)
  %62 = getelementptr %struct.ubifs_nnode, ptr %2, i32 0, i32 6, i32 2, i32 1
  store i32 %61, ptr %62, align 4
  %63 = load i32, ptr %23, align 4
  %64 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %63)
  %65 = load i32, ptr %24, align 8
  %66 = add i32 %65, %64
  %67 = load i32, ptr %25, align 4
  %68 = add i32 %67, 1
  %69 = icmp eq i32 %66, %68
  %70 = select i1 %69, i32 0, i32 %66
  %71 = getelementptr %struct.ubifs_nnode, ptr %2, i32 0, i32 6, i32 3
  store i32 %70, ptr %71, align 4
  %72 = load i32, ptr %26, align 8
  %73 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %72)
  %74 = getelementptr %struct.ubifs_nnode, ptr %2, i32 0, i32 6, i32 3, i32 1
  store i32 %73, ptr %74, align 4
  %75 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 136
  %76 = load i32, ptr %75, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store ptr %1, ptr %5, align 4
  %77 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 16) #12
  %78 = add i32 %76, -2
  %79 = tail call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef %8, i32 noundef %78) #12
  %80 = and i32 %77, 65535
  %81 = zext i16 %79 to i32
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %84, label %83

83:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %80, i32 noundef %81) #12
  tail call void @dump_stack() #15
  br label %84

84:                                               ; preds = %83, %22
  %85 = phi i32 [ -22, %83 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %86

86:                                               ; preds = %84, %11
  %87 = phi i32 [ %85, %84 ], [ -22, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_read_nnode(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 154
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %1, null
  %7 = getelementptr %struct.ubifs_nnode, ptr %1, i32 0, i32 6, i32 %2
  %8 = getelementptr %struct.ubifs_nnode, ptr %1, i32 0, i32 6, i32 %2, i32 1
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 145
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 146
  %11 = select i1 %6, ptr null, ptr %7
  %12 = select i1 %6, ptr %9, ptr %7
  %13 = select i1 %6, ptr %10, ptr %8
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %12, align 4
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3392, i32 noundef 72) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %92, label %19

19:                                               ; preds = %3
  %20 = icmp eq i32 %15, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %23 = load i16, ptr %22, align 4
  %24 = and i16 %23, 1
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %52, label %26

26:                                               ; preds = %21
  br i1 %6, label %41, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 142
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.ubifs_nnode, ptr %1, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = sub i32 %29, %31
  %33 = shl i32 %32, 1
  %34 = getelementptr inbounds %struct.ubifs_nnode, ptr %1, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = shl nuw i32 1, %33
  %37 = xor i32 %36, %35
  %38 = add i32 %2, 4
  %39 = shl i32 %38, %33
  %40 = or i32 %37, %39
  br label %41

41:                                               ; preds = %27, %26
  %42 = phi i32 [ %40, %27 ], [ 1, %26 ]
  %43 = getelementptr inbounds %struct.ubifs_nnode, ptr %17, i32 0, i32 5
  store i32 %42, ptr %43, align 4
  br label %52

44:                                               ; preds = %19
  %45 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 136
  %46 = load i32, ptr %45, align 8
  %47 = tail call i32 @ubifs_leb_read(ptr noundef %0, i32 noundef %15, ptr noundef %5, i32 noundef %14, i32 noundef %46, i32 noundef 1) #12
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %92

49:                                               ; preds = %44
  %50 = tail call i32 @ubifs_unpack_nnode(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %17)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %92

52:                                               ; preds = %49, %41, %21
  %53 = tail call fastcc i32 @validate_nnode(ptr noundef %0, ptr noundef nonnull %17, ptr noundef %1, i32 noundef %2)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %92

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %57 = load i16, ptr %56, align 4
  %58 = and i16 %57, 1
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %55
  br i1 %6, label %75, label %61

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 142
  %63 = load i32, ptr %62, align 8
  %64 = getelementptr inbounds %struct.ubifs_nnode, ptr %1, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = sub i32 %63, %65
  %67 = shl i32 %66, 1
  %68 = getelementptr inbounds %struct.ubifs_nnode, ptr %1, i32 0, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = shl nuw i32 1, %67
  %71 = xor i32 %70, %69
  %72 = add i32 %2, 4
  %73 = shl i32 %72, %67
  %74 = or i32 %71, %73
  br label %75

75:                                               ; preds = %61, %60
  %76 = phi i32 [ %74, %61 ], [ 1, %60 ]
  %77 = getelementptr inbounds %struct.ubifs_nnode, ptr %17, i32 0, i32 5
  store i32 %76, ptr %77, align 4
  br label %78

78:                                               ; preds = %75, %55
  br i1 %6, label %84, label %79

79:                                               ; preds = %78
  %80 = getelementptr inbounds %struct.ubifs_nbranch, ptr %11, i32 0, i32 2
  store ptr %17, ptr %80, align 4
  %81 = getelementptr inbounds %struct.ubifs_nnode, ptr %1, i32 0, i32 4
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, -1
  br label %88

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 156
  store ptr %17, ptr %85, align 8
  %86 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 142
  %87 = load i32, ptr %86, align 8
  br label %88

88:                                               ; preds = %84, %79
  %89 = phi i32 [ %87, %84 ], [ %83, %79 ]
  %90 = getelementptr inbounds %struct.ubifs_nnode, ptr %17, i32 0, i32 4
  store i32 %89, ptr %90, align 8
  store ptr %1, ptr %17, align 8
  %91 = getelementptr inbounds %struct.ubifs_nnode, ptr %17, i32 0, i32 3
  store i32 %2, ptr %91, align 4
  br label %94

92:                                               ; preds = %52, %49, %44, %3
  %93 = phi i32 [ %53, %52 ], [ %47, %44 ], [ %50, %49 ], [ -12, %3 ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %93, i32 noundef %15, i32 noundef %14) #12
  tail call void @dump_stack() #15
  tail call void @kfree(ptr noundef %17) #12
  br label %94

94:                                               ; preds = %92, %88
  %95 = phi i32 [ %93, %92 ], [ 0, %88 ]
  ret i32 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @validate_nnode(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3) unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %4
  %10 = icmp eq ptr %2, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 142
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.ubifs_nnode, ptr %2, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = sub i32 %13, %15
  %17 = shl i32 %16, 1
  %18 = getelementptr inbounds %struct.ubifs_nnode, ptr %2, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = shl nuw i32 1, %17
  %21 = xor i32 %20, %19
  %22 = add i32 %3, 4
  %23 = shl i32 %22, %17
  %24 = or i32 %21, %23
  br label %25

25:                                               ; preds = %11, %9
  %26 = phi i32 [ %24, %11 ], [ 1, %9 ]
  %27 = getelementptr inbounds %struct.ubifs_nnode, ptr %1, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %26
  br i1 %29, label %30, label %125

30:                                               ; preds = %25, %4
  %31 = icmp eq ptr %2, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.ubifs_nnode, ptr %2, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, -1
  br label %39

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 142
  %38 = load i32, ptr %37, align 8
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i32 [ %35, %32 ], [ %38, %36 ]
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %125, label %42

42:                                               ; preds = %39
  %43 = icmp eq i32 %40, 1
  %44 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 136
  %47 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 137
  %48 = select i1 %43, ptr %47, ptr %46
  %49 = load i32, ptr %48, align 4
  %50 = sub i32 %45, %49
  %51 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %52 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 58
  %53 = getelementptr %struct.ubifs_nnode, ptr %1, i32 0, i32 6, i32 0
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr %struct.ubifs_nnode, ptr %1, i32 0, i32 6, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %54, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %42
  %59 = icmp eq i32 %56, 0
  br i1 %59, label %70, label %125

60:                                               ; preds = %42
  %61 = load i32, ptr %51, align 8
  %62 = icmp slt i32 %54, %61
  br i1 %62, label %125, label %63

63:                                               ; preds = %60
  %64 = load i32, ptr %52, align 4
  %65 = icmp sgt i32 %54, %64
  br i1 %65, label %125, label %66

66:                                               ; preds = %63
  %67 = icmp slt i32 %56, 0
  %68 = icmp sgt i32 %56, %50
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %125, label %70

70:                                               ; preds = %66, %58
  %71 = getelementptr %struct.ubifs_nnode, ptr %1, i32 0, i32 6, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr %struct.ubifs_nnode, ptr %1, i32 0, i32 6, i32 1, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %72, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %70
  %77 = load i32, ptr %51, align 8
  %78 = icmp slt i32 %72, %77
  br i1 %78, label %125, label %79

79:                                               ; preds = %76
  %80 = load i32, ptr %52, align 4
  %81 = icmp sgt i32 %72, %80
  br i1 %81, label %125, label %82

82:                                               ; preds = %79
  %83 = icmp slt i32 %74, 0
  %84 = icmp sgt i32 %74, %50
  %85 = select i1 %83, i1 true, i1 %84
  br i1 %85, label %125, label %88

86:                                               ; preds = %70
  %87 = icmp eq i32 %74, 0
  br i1 %87, label %88, label %125

88:                                               ; preds = %86, %82
  %89 = getelementptr %struct.ubifs_nnode, ptr %1, i32 0, i32 6, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr %struct.ubifs_nnode, ptr %1, i32 0, i32 6, i32 2, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %90, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %88
  %95 = load i32, ptr %51, align 8
  %96 = icmp slt i32 %90, %95
  br i1 %96, label %125, label %97

97:                                               ; preds = %94
  %98 = load i32, ptr %52, align 4
  %99 = icmp sgt i32 %90, %98
  br i1 %99, label %125, label %100

100:                                              ; preds = %97
  %101 = icmp slt i32 %92, 0
  %102 = icmp sgt i32 %92, %50
  %103 = select i1 %101, i1 true, i1 %102
  br i1 %103, label %125, label %106

104:                                              ; preds = %88
  %105 = icmp eq i32 %92, 0
  br i1 %105, label %106, label %125

106:                                              ; preds = %104, %100
  %107 = getelementptr %struct.ubifs_nnode, ptr %1, i32 0, i32 6, i32 3
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr %struct.ubifs_nnode, ptr %1, i32 0, i32 6, i32 3, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %108, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %106
  %113 = load i32, ptr %51, align 8
  %114 = icmp slt i32 %108, %113
  br i1 %114, label %125, label %115

115:                                              ; preds = %112
  %116 = load i32, ptr %52, align 4
  %117 = icmp sgt i32 %108, %116
  br i1 %117, label %125, label %118

118:                                              ; preds = %115
  %119 = icmp slt i32 %110, 0
  %120 = icmp sgt i32 %110, %50
  %121 = select i1 %119, i1 true, i1 %120
  br i1 %121, label %125, label %124

122:                                              ; preds = %106
  %123 = icmp eq i32 %110, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %122, %118
  br label %125

125:                                              ; preds = %124, %122, %118, %115, %112, %104, %100, %97, %94, %86, %82, %79, %76, %66, %63, %60, %58, %39, %25
  %126 = phi i32 [ -22, %25 ], [ -22, %39 ], [ -22, %58 ], [ -22, %63 ], [ -22, %60 ], [ -22, %66 ], [ -22, %76 ], [ -22, %79 ], [ -22, %82 ], [ -22, %86 ], [ -22, %94 ], [ -22, %97 ], [ -22, %100 ], [ -22, %104 ], [ -22, %112 ], [ -22, %115 ], [ -22, %118 ], [ -22, %122 ], [ 0, %124 ]
  ret i32 %126
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubifs_get_nnode(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr %struct.ubifs_nnode, ptr %1, i32 0, i32 6, i32 %2, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = tail call i32 @ubifs_read_nnode(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = inttoptr i32 %8 to ptr
  br label %14

12:                                               ; preds = %7
  %13 = load ptr, ptr %4, align 4
  br label %14

14:                                               ; preds = %12, %10, %3
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ], [ %5, %3 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubifs_get_pnode(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr %struct.ubifs_nnode, ptr %1, i32 0, i32 6, i32 %2, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %162

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 154
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr %struct.ubifs_nnode, ptr %1, i32 0, i32 6, i32 %2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.ubifs_nnode, ptr %1, i32 0, i32 6, i32 %2, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3392, i32 noundef 120) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %156, label %17

17:                                               ; preds = %7
  %18 = icmp eq i32 %11, 0
  br i1 %18, label %19, label %64

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %21 = load i16, ptr %20, align 4
  %22 = and i16 %21, 1
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 142
  %26 = load i32, ptr %25, align 8
  %27 = add i32 %26, -1
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ubifs_nnode, ptr %1, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  br label %32

32:                                               ; preds = %32, %29
  %33 = phi i32 [ %40, %32 ], [ 0, %29 ]
  %34 = phi i32 [ %38, %32 ], [ %31, %29 ]
  %35 = phi i32 [ %39, %32 ], [ 0, %29 ]
  %36 = and i32 %34, 3
  %37 = or i32 %36, %33
  %38 = ashr i32 %34, 2
  %39 = add nuw nsw i32 %35, 1
  %40 = shl i32 %37, 2
  %41 = icmp eq i32 %39, %27
  br i1 %41, label %42, label %32

42:                                               ; preds = %32, %24
  %43 = phi i32 [ 0, %24 ], [ %40, %32 ]
  %44 = or i32 %43, %2
  %45 = getelementptr inbounds %struct.ubifs_pnode, ptr %15, i32 0, i32 5
  store i32 %44, ptr %45, align 4
  br label %46

46:                                               ; preds = %42, %19
  %47 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %48 = getelementptr %struct.ubifs_pnode, ptr %15, i32 0, i32 6, i32 0
  %49 = load i32, ptr %47, align 8
  store i32 %49, ptr %48, align 8
  %50 = tail call i32 @ubifs_categorize_lprops(ptr noundef %0, ptr noundef %48) #12
  %51 = getelementptr %struct.ubifs_pnode, ptr %15, i32 0, i32 6, i32 0, i32 2
  store i32 %50, ptr %51, align 8
  %52 = getelementptr %struct.ubifs_pnode, ptr %15, i32 0, i32 6, i32 1
  %53 = load i32, ptr %47, align 8
  store i32 %53, ptr %52, align 8
  %54 = tail call i32 @ubifs_categorize_lprops(ptr noundef %0, ptr noundef %52) #12
  %55 = getelementptr %struct.ubifs_pnode, ptr %15, i32 0, i32 6, i32 1, i32 2
  store i32 %54, ptr %55, align 8
  %56 = getelementptr %struct.ubifs_pnode, ptr %15, i32 0, i32 6, i32 2
  %57 = load i32, ptr %47, align 8
  store i32 %57, ptr %56, align 8
  %58 = tail call i32 @ubifs_categorize_lprops(ptr noundef %0, ptr noundef %56) #12
  %59 = getelementptr %struct.ubifs_pnode, ptr %15, i32 0, i32 6, i32 2, i32 2
  store i32 %58, ptr %59, align 8
  %60 = getelementptr %struct.ubifs_pnode, ptr %15, i32 0, i32 6, i32 3
  %61 = load i32, ptr %47, align 8
  store i32 %61, ptr %60, align 8
  %62 = tail call i32 @ubifs_categorize_lprops(ptr noundef %0, ptr noundef %60) #12
  %63 = getelementptr %struct.ubifs_pnode, ptr %15, i32 0, i32 6, i32 3, i32 2
  store i32 %62, ptr %63, align 8
  br label %72

64:                                               ; preds = %17
  %65 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 137
  %66 = load i32, ptr %65, align 4
  %67 = tail call i32 @ubifs_leb_read(ptr noundef %0, i32 noundef %11, ptr noundef %9, i32 noundef %13, i32 noundef %66, i32 noundef 1) #12
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %133

69:                                               ; preds = %64
  %70 = tail call fastcc i32 @unpack_pnode(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %15) #12
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %133

72:                                               ; preds = %69, %46
  %73 = tail call fastcc i32 @validate_pnode(ptr noundef %0, ptr noundef nonnull %15, ptr noundef %1, i32 noundef %2) #12
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %133

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %77 = load i16, ptr %76, align 4
  %78 = and i16 %77, 1
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.ubifs_pnode, ptr %15, i32 0, i32 5
  %82 = load i32, ptr %81, align 4
  br label %105

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 142
  %85 = load i32, ptr %84, align 8
  %86 = add i32 %85, -1
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.ubifs_nnode, ptr %1, i32 0, i32 5
  %90 = load i32, ptr %89, align 4
  br label %91

91:                                               ; preds = %91, %88
  %92 = phi i32 [ %99, %91 ], [ 0, %88 ]
  %93 = phi i32 [ %97, %91 ], [ %90, %88 ]
  %94 = phi i32 [ %98, %91 ], [ 0, %88 ]
  %95 = and i32 %93, 3
  %96 = or i32 %95, %92
  %97 = ashr i32 %93, 2
  %98 = add nuw nsw i32 %94, 1
  %99 = shl i32 %96, 2
  %100 = icmp eq i32 %98, %86
  br i1 %100, label %101, label %91

101:                                              ; preds = %91, %83
  %102 = phi i32 [ 0, %83 ], [ %99, %91 ]
  %103 = or i32 %102, %2
  %104 = getelementptr inbounds %struct.ubifs_pnode, ptr %15, i32 0, i32 5
  store i32 %103, ptr %104, align 4
  br label %105

105:                                              ; preds = %101, %80
  %106 = phi i32 [ %82, %80 ], [ %103, %101 ]
  store ptr %15, ptr %4, align 4
  store ptr %1, ptr %15, align 8
  %107 = getelementptr inbounds %struct.ubifs_pnode, ptr %15, i32 0, i32 3
  store i32 %2, ptr %107, align 4
  %108 = shl i32 %106, 2
  %109 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 63
  %110 = load i32, ptr %109, align 8
  %111 = add i32 %110, %108
  %112 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  %113 = load i32, ptr %112, align 8
  %114 = icmp slt i32 %111, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %105
  %116 = add nsw i32 %111, 1
  %117 = getelementptr %struct.ubifs_pnode, ptr %15, i32 0, i32 6, i32 0, i32 3
  store i32 %111, ptr %117, align 4
  %118 = icmp slt i32 %116, %113
  br i1 %118, label %119, label %129

119:                                              ; preds = %115
  %120 = add nsw i32 %111, 2
  %121 = getelementptr %struct.ubifs_pnode, ptr %15, i32 0, i32 6, i32 1, i32 3
  store i32 %116, ptr %121, align 4
  %122 = icmp slt i32 %120, %113
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = add nsw i32 %111, 3
  %125 = getelementptr %struct.ubifs_pnode, ptr %15, i32 0, i32 6, i32 2, i32 3
  store i32 %120, ptr %125, align 4
  %126 = icmp slt i32 %124, %113
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = getelementptr %struct.ubifs_pnode, ptr %15, i32 0, i32 6, i32 3, i32 3
  store i32 %124, ptr %128, align 4
  br label %129

129:                                              ; preds = %127, %123, %119, %115, %105
  %130 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 143
  %131 = load i32, ptr %130, align 4
  %132 = add i32 %131, 1
  store i32 %132, ptr %130, align 4
  br label %159

133:                                              ; preds = %72, %69, %64
  %134 = phi i32 [ %73, %72 ], [ %67, %64 ], [ %70, %69 ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %134, i32 noundef %11, i32 noundef %13) #12
  tail call void @ubifs_dump_pnode(ptr noundef %0, ptr noundef nonnull %15, ptr noundef %1, i32 noundef %2) #12
  tail call void @dump_stack() #15
  %135 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 142
  %136 = load i32, ptr %135, align 8
  %137 = add i32 %136, -1
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.ubifs_nnode, ptr %1, i32 0, i32 5
  %141 = load i32, ptr %140, align 4
  br label %142

142:                                              ; preds = %142, %139
  %143 = phi i32 [ %150, %142 ], [ 0, %139 ]
  %144 = phi i32 [ %148, %142 ], [ %141, %139 ]
  %145 = phi i32 [ %149, %142 ], [ 0, %139 ]
  %146 = and i32 %144, 3
  %147 = or i32 %146, %143
  %148 = ashr i32 %144, 2
  %149 = add nuw nsw i32 %145, 1
  %150 = shl i32 %147, 2
  %151 = icmp eq i32 %149, %137
  br i1 %151, label %152, label %142

152:                                              ; preds = %142, %133
  %153 = phi i32 [ 0, %133 ], [ %150, %142 ]
  %154 = or i32 %153, %2
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %154) #12
  tail call void @kfree(ptr noundef nonnull %15) #12
  %155 = icmp eq i32 %134, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %152, %7
  %157 = phi i32 [ %134, %152 ], [ -12, %7 ]
  %158 = inttoptr i32 %157 to ptr
  br label %162

159:                                              ; preds = %152, %129
  %160 = load ptr, ptr %4, align 4
  tail call fastcc void @update_cats(ptr noundef %0, ptr noundef %160)
  %161 = load ptr, ptr %4, align 4
  br label %162

162:                                              ; preds = %159, %156, %3
  %163 = phi ptr [ %158, %156 ], [ %161, %159 ], [ %5, %3 ]
  ret ptr %163
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @update_cats(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %2
  %7 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 0
  %8 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 15
  tail call void @ubifs_add_to_cat(ptr noundef %0, ptr noundef %7, i32 noundef %10) #12
  %11 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 1, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %6
  %15 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 1
  %16 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 1, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 15
  tail call void @ubifs_add_to_cat(ptr noundef %0, ptr noundef %15, i32 noundef %18) #12
  %19 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 2, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %14
  %23 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 2
  %24 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 2, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 15
  tail call void @ubifs_add_to_cat(ptr noundef %0, ptr noundef %23, i32 noundef %26) #12
  %27 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 3, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %22
  %31 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 3
  %32 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 3, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 15
  tail call void @ubifs_add_to_cat(ptr noundef %0, ptr noundef %31, i32 noundef %34) #12
  br label %35

35:                                               ; preds = %30, %22, %14, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubifs_pnode_lookup(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 156
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = tail call i32 @ubifs_read_nnode(ptr noundef %0, ptr noundef null, i32 noundef 0)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = load ptr, ptr %3, align 8
  br label %13

11:                                               ; preds = %6
  %12 = inttoptr i32 %7 to ptr
  br label %50

13:                                               ; preds = %9, %2
  %14 = phi ptr [ %10, %9 ], [ %4, %2 ]
  %15 = shl i32 %1, 2
  %16 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 142
  %17 = load i32, ptr %16, align 8
  %18 = shl i32 %17, 1
  %19 = icmp sgt i32 %17, 1
  br i1 %19, label %20, label %44

20:                                               ; preds = %39, %13
  %21 = phi ptr [ %37, %39 ], [ %14, %13 ]
  %22 = phi i32 [ %40, %39 ], [ %18, %13 ]
  %23 = phi i32 [ %41, %39 ], [ 1, %13 ]
  %24 = ashr i32 %15, %22
  %25 = and i32 %24, 3
  %26 = getelementptr %struct.ubifs_nnode, ptr %21, i32 0, i32 6, i32 %25, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = tail call i32 @ubifs_read_nnode(ptr noundef %0, ptr noundef %21, i32 noundef %25) #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = inttoptr i32 %30 to ptr
  br label %36

34:                                               ; preds = %29
  %35 = load ptr, ptr %26, align 4
  br label %36

36:                                               ; preds = %34, %32, %20
  %37 = phi ptr [ %33, %32 ], [ %35, %34 ], [ %27, %20 ]
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %50, label %39

39:                                               ; preds = %36
  %40 = add i32 %22, -2
  %41 = add nuw nsw i32 %23, 1
  %42 = load i32, ptr %16, align 8
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %20, label %44

44:                                               ; preds = %39, %13
  %45 = phi i32 [ %18, %13 ], [ %40, %39 ]
  %46 = phi ptr [ %14, %13 ], [ %37, %39 ]
  %47 = ashr i32 %15, %45
  %48 = and i32 %47, 3
  %49 = tail call ptr @ubifs_get_pnode(ptr noundef %0, ptr noundef %46, i32 noundef %48)
  br label %50

50:                                               ; preds = %44, %36, %11
  %51 = phi ptr [ %49, %44 ], [ %12, %11 ], [ %37, %36 ]
  ret ptr %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubifs_lpt_lookup(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 63
  %4 = load i32, ptr %3, align 8
  %5 = sub i32 %1, %4
  %6 = ashr i32 %5, 2
  %7 = tail call ptr @ubifs_pnode_lookup(ptr noundef %0, i32 noundef %6)
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %9 = and i32 %5, 3
  %10 = getelementptr %struct.ubifs_pnode, ptr %7, i32 0, i32 6, i32 %9
  %11 = select i1 %8, ptr %7, ptr %10
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubifs_lpt_lookup_dirty(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 156
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = tail call i32 @ubifs_read_nnode(ptr noundef %0, ptr noundef null, i32 noundef 0)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = load ptr, ptr %3, align 8
  br label %13

11:                                               ; preds = %6
  %12 = inttoptr i32 %7 to ptr
  br label %190

13:                                               ; preds = %9, %2
  %14 = phi ptr [ %10, %9 ], [ %4, %2 ]
  %15 = tail call fastcc ptr @dirty_cow_nnode(ptr noundef %0, ptr noundef %14)
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %190, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 63
  %19 = load i32, ptr %18, align 8
  %20 = sub i32 %1, %19
  %21 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 142
  %22 = load i32, ptr %21, align 8
  %23 = shl i32 %22, 1
  %24 = icmp sgt i32 %22, 1
  br i1 %24, label %29, label %52

25:                                               ; preds = %49
  %26 = add nuw nsw i32 %32, 1
  %27 = load i32, ptr %21, align 8
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %25, %17
  %30 = phi ptr [ %50, %25 ], [ %15, %17 ]
  %31 = phi i32 [ %35, %25 ], [ %23, %17 ]
  %32 = phi i32 [ %26, %25 ], [ 1, %17 ]
  %33 = ashr i32 %20, %31
  %34 = and i32 %33, 3
  %35 = add i32 %31, -2
  %36 = getelementptr %struct.ubifs_nnode, ptr %30, i32 0, i32 6, i32 %34, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = tail call i32 @ubifs_read_nnode(ptr noundef %0, ptr noundef %30, i32 noundef %34) #12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = inttoptr i32 %40 to ptr
  br label %46

44:                                               ; preds = %39
  %45 = load ptr, ptr %36, align 4
  br label %46

46:                                               ; preds = %44, %42, %29
  %47 = phi ptr [ %43, %42 ], [ %45, %44 ], [ %37, %29 ]
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %190, label %49

49:                                               ; preds = %46
  %50 = tail call fastcc ptr @dirty_cow_nnode(ptr noundef %0, ptr noundef %47)
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %190, label %25

52:                                               ; preds = %25, %17
  %53 = phi i32 [ %23, %17 ], [ %35, %25 ]
  %54 = phi ptr [ %15, %17 ], [ %50, %25 ]
  %55 = ashr i32 %20, %53
  %56 = and i32 %55, 3
  %57 = tail call ptr @ubifs_get_pnode(ptr noundef %0, ptr noundef %54, i32 noundef %56)
  %58 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %190, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.ubifs_pnode, ptr %57, i32 0, i32 2
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %99

64:                                               ; preds = %59
  %65 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %60) #12
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %178

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 151
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, 1
  store i32 %70, ptr %68, align 4
  %71 = load ptr, ptr %57, align 4
  %72 = getelementptr inbounds %struct.ubifs_pnode, ptr %57, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr %struct.ubifs_nnode, ptr %71, i32 0, i32 6, i32 %73
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 137
  %77 = load i32, ptr %76, align 4
  %78 = icmp ne i32 %77, 0
  %79 = icmp ne i32 %75, 0
  %80 = and i1 %79, %78
  br i1 %80, label %81, label %178

81:                                               ; preds = %67
  %82 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %83 = load i32, ptr %82, align 8
  %84 = icmp sgt i32 %83, %75
  br i1 %84, label %89, label %85, !prof !11

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 58
  %87 = load i32, ptr %86, align 4
  %88 = icmp slt i32 %87, %75
  br i1 %88, label %89, label %91, !prof !11

89:                                               ; preds = %85, %81
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef 458) #12
  %90 = load i32, ptr %82, align 8
  br label %91

91:                                               ; preds = %89, %85
  %92 = phi i32 [ %83, %85 ], [ %90, %89 ]
  %93 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  %94 = load ptr, ptr %93, align 8
  %95 = sub i32 %75, %92
  %96 = getelementptr %struct.ubifs_lpt_lprops, ptr %94, i32 %95, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = add i32 %97, %77
  store i32 %98, ptr %96, align 4
  br label %178

99:                                               ; preds = %59
  %100 = tail call ptr @kmemdup(ptr noundef %57, i32 noundef 120, i32 noundef 3136) #12
  %101 = icmp eq ptr %100, null
  br i1 %101, label %190, label %102, !prof !11

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.ubifs_pnode, ptr %100, i32 0, i32 1
  store ptr null, ptr %103, align 4
  %104 = getelementptr inbounds %struct.ubifs_pnode, ptr %100, i32 0, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = and i32 %105, -6
  %107 = or i32 %106, 1
  store i32 %107, ptr %104, align 4
  %108 = getelementptr %struct.ubifs_pnode, ptr %100, i32 0, i32 6, i32 0, i32 3
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %132, label %111

111:                                              ; preds = %102
  %112 = getelementptr %struct.ubifs_pnode, ptr %100, i32 0, i32 6, i32 0
  %113 = getelementptr %struct.ubifs_pnode, ptr %57, i32 0, i32 6, i32 0
  tail call void @ubifs_replace_cat(ptr noundef %0, ptr noundef %113, ptr noundef %112) #12
  %114 = getelementptr %struct.ubifs_pnode, ptr %100, i32 0, i32 6, i32 1, i32 3
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %132, label %117

117:                                              ; preds = %111
  %118 = getelementptr %struct.ubifs_pnode, ptr %100, i32 0, i32 6, i32 1
  %119 = getelementptr %struct.ubifs_pnode, ptr %57, i32 0, i32 6, i32 1
  tail call void @ubifs_replace_cat(ptr noundef %0, ptr noundef %119, ptr noundef %118) #12
  %120 = getelementptr %struct.ubifs_pnode, ptr %100, i32 0, i32 6, i32 2, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %132, label %123

123:                                              ; preds = %117
  %124 = getelementptr %struct.ubifs_pnode, ptr %100, i32 0, i32 6, i32 2
  %125 = getelementptr %struct.ubifs_pnode, ptr %57, i32 0, i32 6, i32 2
  tail call void @ubifs_replace_cat(ptr noundef %0, ptr noundef %125, ptr noundef %124) #12
  %126 = getelementptr %struct.ubifs_pnode, ptr %100, i32 0, i32 6, i32 3, i32 3
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %123
  %130 = getelementptr %struct.ubifs_pnode, ptr %100, i32 0, i32 6, i32 3
  %131 = getelementptr %struct.ubifs_pnode, ptr %57, i32 0, i32 6, i32 3
  tail call void @ubifs_replace_cat(ptr noundef %0, ptr noundef %131, ptr noundef %130) #12
  br label %132

132:                                              ; preds = %129, %123, %117, %111, %102
  %133 = load volatile i32, ptr %60, align 4
  %134 = and i32 %133, 2
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %138, label %136, !prof !8

136:                                              ; preds = %132
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.3, i32 noundef 1586) #12
  %137 = load i32, ptr %60, align 4
  br label %138

138:                                              ; preds = %136, %132
  %139 = phi i32 [ %137, %136 ], [ %133, %132 ]
  %140 = or i32 %139, 2
  store i32 %140, ptr %60, align 4
  %141 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 151
  %142 = load i32, ptr %141, align 4
  %143 = add i32 %142, 1
  store i32 %143, ptr %141, align 4
  %144 = load ptr, ptr %57, align 4
  %145 = getelementptr inbounds %struct.ubifs_pnode, ptr %57, i32 0, i32 3
  %146 = load i32, ptr %145, align 4
  %147 = getelementptr %struct.ubifs_nnode, ptr %144, i32 0, i32 6, i32 %146
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 137
  %150 = load i32, ptr %149, align 4
  %151 = icmp ne i32 %150, 0
  %152 = icmp ne i32 %148, 0
  %153 = and i1 %152, %151
  br i1 %153, label %154, label %173

154:                                              ; preds = %138
  %155 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %156 = load i32, ptr %155, align 8
  %157 = icmp sgt i32 %156, %148
  br i1 %157, label %162, label %158, !prof !11

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 58
  %160 = load i32, ptr %159, align 4
  %161 = icmp slt i32 %160, %148
  br i1 %161, label %162, label %164, !prof !11

162:                                              ; preds = %158, %154
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef 458) #12
  %163 = load i32, ptr %155, align 8
  br label %164

164:                                              ; preds = %162, %158
  %165 = phi i32 [ %156, %158 ], [ %163, %162 ]
  %166 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  %167 = load ptr, ptr %166, align 8
  %168 = sub i32 %148, %165
  %169 = getelementptr %struct.ubifs_lpt_lprops, ptr %167, i32 %168, i32 1
  %170 = load i32, ptr %169, align 4
  %171 = add i32 %170, %150
  store i32 %171, ptr %169, align 4
  %172 = load ptr, ptr %57, align 4
  br label %173

173:                                              ; preds = %164, %138
  %174 = phi ptr [ %144, %138 ], [ %172, %164 ]
  %175 = getelementptr inbounds %struct.ubifs_pnode, ptr %100, i32 0, i32 3
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr %struct.ubifs_nnode, ptr %174, i32 0, i32 6, i32 %176, i32 2
  store ptr %100, ptr %177, align 4
  br label %178

178:                                              ; preds = %173, %91, %67, %64
  %179 = phi ptr [ %100, %173 ], [ %57, %64 ], [ %57, %67 ], [ %57, %91 ]
  %180 = icmp ugt ptr %179, inttoptr (i32 -4096 to ptr)
  br i1 %180, label %190, label %181

181:                                              ; preds = %178
  %182 = and i32 %20, 3
  %183 = getelementptr inbounds %struct.ubifs_pnode, ptr %179, i32 0, i32 2
  %184 = load volatile i32, ptr %183, align 4
  %185 = and i32 %184, 1
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %188, !prof !11

187:                                              ; preds = %181
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 1641) #12
  br label %188

188:                                              ; preds = %187, %181
  %189 = getelementptr %struct.ubifs_pnode, ptr %179, i32 0, i32 6, i32 %182
  br label %190

190:                                              ; preds = %188, %178, %99, %52, %49, %46, %13, %11
  %191 = phi ptr [ %189, %188 ], [ %12, %11 ], [ %15, %13 ], [ %57, %52 ], [ %179, %178 ], [ inttoptr (i32 -12 to ptr), %99 ], [ %50, %49 ], [ %47, %46 ]
  ret ptr %191
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @dirty_cow_nnode(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_nnode, ptr %1, i32 0, i32 2
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %3) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %62

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 150
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 8
  tail call void @ubifs_add_nnode_dirt(ptr noundef %0, ptr noundef %1)
  br label %62

14:                                               ; preds = %2
  %15 = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 72, i32 noundef 3136) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %62, label %17, !prof !11

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ubifs_nnode, ptr %15, i32 0, i32 1
  store ptr null, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ubifs_nnode, ptr %15, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, -6
  %22 = or i32 %21, 1
  store i32 %22, ptr %19, align 4
  %23 = getelementptr %struct.ubifs_nnode, ptr %15, i32 0, i32 6, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  store ptr %15, ptr %24, align 4
  br label %27

27:                                               ; preds = %26, %17
  %28 = getelementptr %struct.ubifs_nnode, ptr %15, i32 0, i32 6, i32 1, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store ptr %15, ptr %29, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr %struct.ubifs_nnode, ptr %15, i32 0, i32 6, i32 2, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store ptr %15, ptr %34, align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr %struct.ubifs_nnode, ptr %15, i32 0, i32 6, i32 3, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store ptr %15, ptr %39, align 4
  br label %42

42:                                               ; preds = %41, %37
  %43 = load volatile i32, ptr %3, align 4
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46, !prof !8

46:                                               ; preds = %42
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.3, i32 noundef 1543) #12
  %47 = load i32, ptr %3, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i32 [ %47, %46 ], [ %43, %42 ]
  %50 = or i32 %49, 2
  store i32 %50, ptr %3, align 4
  %51 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 150
  %52 = load i32, ptr %51, align 8
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 8
  tail call void @ubifs_add_nnode_dirt(ptr noundef %0, ptr noundef %1)
  %54 = load ptr, ptr %1, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.ubifs_nnode, ptr %15, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr %struct.ubifs_nnode, ptr %54, i32 0, i32 6, i32 %58, i32 2
  store ptr %15, ptr %59, align 4
  br label %62

60:                                               ; preds = %48
  %61 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 156
  store ptr %15, ptr %61, align 8
  br label %62

62:                                               ; preds = %60, %56, %14, %10, %7
  %63 = phi ptr [ %1, %10 ], [ %1, %7 ], [ %15, %60 ], [ %15, %56 ], [ inttoptr (i32 -12 to ptr), %14 ]
  ret ptr %63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ubifs_lpt_calc_hash(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #8 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_lpt_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %128, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 56
  %15 = load i32, ptr %14, align 4
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 12) #12
  %17 = extractvalue { i32, i1 } %16, 1
  %18 = extractvalue { i32, i1 } %16, 0
  %19 = select i1 %17, i32 -1, i32 %18
  %20 = tail call noalias ptr @vmalloc(i32 noundef %19) #13
  %21 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  store ptr %20, ptr %21, align 8
  %22 = icmp eq ptr %20, null
  br i1 %22, label %274, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 136
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 137
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @llvm.smax.i32(i32 %25, i32 %27) #12
  %29 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %28, i32 noundef 3264) #13
  %30 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 154
  store ptr %29, ptr %30, align 8
  %31 = icmp eq ptr %29, null
  br i1 %31, label %274, label %32

32:                                               ; preds = %23
  %33 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %34 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3264, i32 noundef 1024) #14
  %35 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 0
  store ptr %34, ptr %35, align 4
  %36 = icmp eq ptr %34, null
  br i1 %36, label %274, label %37

37:                                               ; preds = %32
  %38 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 0, i32 1
  store i32 0, ptr %38, align 4
  %39 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 0, i32 2
  store i32 256, ptr %39, align 4
  %40 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %41 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3264, i32 noundef 1024) #14
  %42 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 1
  store ptr %41, ptr %42, align 4
  %43 = icmp eq ptr %41, null
  br i1 %43, label %274, label %44

44:                                               ; preds = %37
  %45 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 1, i32 1
  store i32 0, ptr %45, align 4
  %46 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 1, i32 2
  store i32 256, ptr %46, align 4
  %47 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %48 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3264, i32 noundef 1024) #14
  %49 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 2
  store ptr %48, ptr %49, align 4
  %50 = icmp eq ptr %48, null
  br i1 %50, label %274, label %51

51:                                               ; preds = %44
  %52 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 2, i32 1
  store i32 0, ptr %52, align 4
  %53 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 2, i32 2
  store i32 256, ptr %53, align 4
  %54 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %55 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 3264, i32 noundef 1024) #14
  %56 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 159
  store ptr %55, ptr %56, align 4
  %57 = icmp eq ptr %55, null
  br i1 %57, label %274, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 159, i32 1
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 159, i32 2
  store i32 256, ptr %60, align 4
  %61 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 138
  %62 = load i32, ptr %61, align 8
  %63 = tail call noalias ptr @vmalloc(i32 noundef %62) #13
  %64 = icmp eq ptr %63, null
  br i1 %64, label %274, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 166
  %67 = load i32, ptr %66, align 8
  %68 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 167
  %69 = load i32, ptr %68, align 4
  %70 = load i32, ptr %61, align 8
  %71 = tail call i32 @ubifs_leb_read(ptr noundef %0, i32 noundef %67, ptr noundef nonnull %63, i32 noundef %69, i32 noundef %70, i32 noundef 1) #12
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %271

73:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  %74 = getelementptr i8, ptr %63, i32 2
  store ptr %74, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #12
  store i32 0, ptr %11, align 4
  %75 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef 4) #12
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i32, ptr %14, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %117

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 133
  %82 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  br label %84

83:                                               ; preds = %73
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %75, i32 noundef 2) #12
  tail call void @dump_stack() #15
  br label %125

84:                                               ; preds = %101, %80
  %85 = phi i32 [ 0, %80 ], [ %114, %101 ]
  %86 = load i32, ptr %81, align 4
  %87 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef %86) #12
  %88 = load i32, ptr %81, align 4
  %89 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef %88) #12
  %90 = icmp slt i32 %87, 0
  br i1 %90, label %125, label %91

91:                                               ; preds = %84
  %92 = load i32, ptr %82, align 8
  %93 = icmp sgt i32 %87, %92
  %94 = icmp slt i32 %89, 0
  %95 = select i1 %93, i1 true, i1 %94
  %96 = icmp sgt i32 %89, %92
  %97 = select i1 %95, i1 true, i1 %96
  %98 = add i32 %89, %87
  %99 = icmp sgt i32 %98, %92
  %100 = select i1 %97, i1 true, i1 %99
  br i1 %100, label %125, label %101

101:                                              ; preds = %91
  %102 = load ptr, ptr %21, align 8
  %103 = getelementptr %struct.ubifs_lpt_lprops, ptr %102, i32 %85
  store i32 %87, ptr %103, align 4
  %104 = load ptr, ptr %21, align 8
  %105 = getelementptr %struct.ubifs_lpt_lprops, ptr %104, i32 %85, i32 1
  store i32 %89, ptr %105, align 4
  %106 = load ptr, ptr %21, align 8
  %107 = getelementptr %struct.ubifs_lpt_lprops, ptr %106, i32 %85, i32 2
  %108 = load i8, ptr %107, align 4
  %109 = and i8 %108, -2
  store i8 %109, ptr %107, align 4
  %110 = load ptr, ptr %21, align 8
  %111 = getelementptr %struct.ubifs_lpt_lprops, ptr %110, i32 %85, i32 2
  %112 = load i8, ptr %111, align 4
  %113 = and i8 %112, -3
  store i8 %113, ptr %111, align 4
  %114 = add nuw nsw i32 %85, 1
  %115 = load i32, ptr %14, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %84, label %117

117:                                              ; preds = %101, %77
  %118 = load i32, ptr %61, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  store ptr %63, ptr %9, align 4
  %119 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %8, i32 noundef 16) #12
  %120 = add i32 %118, -2
  %121 = tail call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef %74, i32 noundef %120) #12
  %122 = and i32 %119, 65535
  %123 = zext i16 %121 to i32
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %127, label %126

125:                                              ; preds = %91, %84, %83
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  br label %271

126:                                              ; preds = %117
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %122, i32 noundef %123) #12
  tail call void @dump_stack() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  br label %271

127:                                              ; preds = %117
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  tail call void @vfree(ptr noundef nonnull %63) #12
  br label %128

128:                                              ; preds = %127, %3
  %129 = icmp eq i32 %2, 0
  br i1 %129, label %282, label %130

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 56
  %132 = load i32, ptr %131, align 4
  %133 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %132, i32 12) #12
  %134 = extractvalue { i32, i1 } %133, 1
  %135 = extractvalue { i32, i1 } %133, 0
  %136 = select i1 %134, i32 -1, i32 %135
  %137 = tail call noalias ptr @vmalloc(i32 noundef %136) #13
  %138 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 169
  store ptr %137, ptr %138, align 4
  %139 = icmp eq ptr %137, null
  br i1 %139, label %277, label %140

140:                                              ; preds = %130
  %141 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %142 = load i32, ptr %141, align 8
  %143 = tail call noalias ptr @vmalloc(i32 noundef %142) #13
  %144 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 155
  store ptr %143, ptr %144, align 4
  %145 = icmp eq ptr %143, null
  br i1 %145, label %277, label %146

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %148 = load i16, ptr %147, align 4
  %149 = and i16 %148, 1
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %244, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 170
  %153 = load i32, ptr %152, align 8
  %154 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %153, i32 4) #12
  %155 = extractvalue { i32, i1 } %154, 1
  br i1 %155, label %156, label %158, !prof !11

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 173
  store ptr null, ptr %157, align 4
  br label %277

158:                                              ; preds = %151
  %159 = extractvalue { i32, i1 } %154, 0
  %160 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %159, i32 noundef 3136) #13
  %161 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 173
  store ptr %160, ptr %161, align 4
  %162 = icmp eq ptr %160, null
  br i1 %162, label %277, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 139
  %165 = load i32, ptr %164, align 4
  %166 = tail call noalias ptr @vmalloc(i32 noundef %165) #13
  %167 = icmp eq ptr %166, null
  br i1 %167, label %277, label %168

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 171
  %170 = load i32, ptr %169, align 4
  %171 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 172
  %172 = load i32, ptr %171, align 8
  %173 = load i32, ptr %164, align 4
  %174 = tail call i32 @ubifs_leb_read(ptr noundef %0, i32 noundef %170, ptr noundef nonnull %166, i32 noundef %172, i32 noundef %173, i32 noundef 1) #12
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %271

176:                                              ; preds = %168
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  %177 = getelementptr i8, ptr %166, i32 2
  store ptr %177, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4
  %178 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 4) #12
  %179 = icmp eq i32 %178, 3
  br i1 %179, label %180, label %187

180:                                              ; preds = %176
  %181 = load i32, ptr %152, align 8
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %203

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 135
  %185 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 63
  %186 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  br label %188

187:                                              ; preds = %176
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %178, i32 noundef 3) #12
  tail call void @dump_stack() #15
  br label %212

188:                                              ; preds = %197, %183
  %189 = phi i32 [ 0, %183 ], [ %200, %197 ]
  %190 = load i32, ptr %184, align 4
  %191 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %190) #12
  %192 = load i32, ptr %185, align 8
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %212, label %194

194:                                              ; preds = %188
  %195 = load i32, ptr %186, align 8
  %196 = icmp slt i32 %191, %195
  br i1 %196, label %197, label %212

197:                                              ; preds = %194
  %198 = load ptr, ptr %161, align 4
  %199 = getelementptr i32, ptr %198, i32 %189
  store i32 %191, ptr %199, align 4
  %200 = add nuw nsw i32 %189, 1
  %201 = load i32, ptr %152, align 8
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %188, label %203

203:                                              ; preds = %197, %180
  %204 = load i32, ptr %164, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store ptr %166, ptr %5, align 4
  %205 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 16) #12
  %206 = add i32 %204, -2
  %207 = tail call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef %177, i32 noundef %206) #12
  %208 = and i32 %205, 65535
  %209 = zext i16 %207 to i32
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %213, label %211

211:                                              ; preds = %203
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %208, i32 noundef %209) #12
  tail call void @dump_stack() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  br label %271

212:                                              ; preds = %194, %188, %187
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  br label %271

213:                                              ; preds = %203
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %214 = load i32, ptr %152, align 8
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %243

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  %218 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 63
  br label %219

219:                                              ; preds = %239, %216
  %220 = phi i32 [ %214, %216 ], [ %240, %239 ]
  %221 = phi i32 [ 0, %216 ], [ %241, %239 ]
  %222 = load ptr, ptr %161, align 4
  %223 = getelementptr i32, ptr %222, i32 %221
  %224 = load i32, ptr %223, align 4
  %225 = load i32, ptr %217, align 8
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %239

227:                                              ; preds = %219
  %228 = load i32, ptr %218, align 8
  %229 = sub i32 %224, %228
  %230 = ashr i32 %229, 2
  %231 = tail call ptr @ubifs_pnode_lookup(ptr noundef %0, i32 noundef %230) #12
  %232 = icmp ugt ptr %231, inttoptr (i32 -4096 to ptr)
  %233 = and i32 %229, 3
  %234 = getelementptr %struct.ubifs_pnode, ptr %231, i32 0, i32 6, i32 %233
  %235 = select i1 %232, ptr %231, ptr %234
  %236 = icmp ugt ptr %235, inttoptr (i32 -4096 to ptr)
  br i1 %236, label %269, label %237

237:                                              ; preds = %227
  %238 = load i32, ptr %152, align 8
  br label %239

239:                                              ; preds = %237, %219
  %240 = phi i32 [ %238, %237 ], [ %220, %219 ]
  %241 = add nuw nsw i32 %221, 1
  %242 = icmp slt i32 %241, %240
  br i1 %242, label %219, label %243

243:                                              ; preds = %239, %213
  tail call void @vfree(ptr noundef nonnull %166) #12
  br label %244

244:                                              ; preds = %243, %146
  %245 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %246 = load i32, ptr %131, align 4
  %247 = icmp sgt i32 %246, 0
  br i1 %247, label %248, label %282

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  br label %250

250:                                              ; preds = %265, %248
  %251 = phi i32 [ %246, %248 ], [ %266, %265 ]
  %252 = phi i32 [ 0, %248 ], [ %267, %265 ]
  %253 = load ptr, ptr %249, align 8
  %254 = getelementptr %struct.ubifs_lpt_lprops, ptr %253, i32 %252
  %255 = load i32, ptr %254, align 4
  %256 = load i32, ptr %141, align 8
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %265

258:                                              ; preds = %250
  %259 = load i32, ptr %245, align 8
  %260 = add i32 %259, %252
  %261 = tail call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %260) #12
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %274

263:                                              ; preds = %258
  %264 = load i32, ptr %131, align 4
  br label %265

265:                                              ; preds = %263, %250
  %266 = phi i32 [ %264, %263 ], [ %251, %250 ]
  %267 = add nuw nsw i32 %252, 1
  %268 = icmp slt i32 %267, %266
  br i1 %268, label %250, label %282

269:                                              ; preds = %227
  %270 = ptrtoint ptr %235 to i32
  br label %271

271:                                              ; preds = %269, %212, %211, %168, %126, %125, %65
  %272 = phi ptr [ %166, %269 ], [ %63, %125 ], [ %63, %126 ], [ %63, %65 ], [ %166, %212 ], [ %166, %211 ], [ %166, %168 ]
  %273 = phi i32 [ %270, %269 ], [ -22, %125 ], [ -22, %126 ], [ %71, %65 ], [ -22, %212 ], [ -22, %211 ], [ %174, %168 ]
  tail call void @vfree(ptr noundef nonnull %272) #12
  br label %274

274:                                              ; preds = %271, %258, %58, %51, %44, %37, %32, %23, %13
  %275 = phi i32 [ -12, %13 ], [ -12, %23 ], [ -12, %51 ], [ -12, %58 ], [ -12, %44 ], [ -12, %37 ], [ -12, %32 ], [ %273, %271 ], [ %261, %258 ]
  %276 = icmp eq i32 %2, 0
  br i1 %276, label %279, label %277

277:                                              ; preds = %274, %163, %158, %156, %140, %130
  %278 = phi i32 [ %275, %274 ], [ -12, %163 ], [ -12, %156 ], [ -12, %158 ], [ -12, %140 ], [ -12, %130 ]
  tail call void @ubifs_lpt_free(ptr noundef %0, i32 noundef 1) #12
  br label %279

279:                                              ; preds = %277, %274
  %280 = phi i32 [ %278, %277 ], [ %275, %274 ]
  br i1 %12, label %282, label %281

281:                                              ; preds = %279
  tail call void @ubifs_lpt_free(ptr noundef %0, i32 noundef 0) #12
  br label %282

282:                                              ; preds = %281, %279, %265, %244, %128
  %283 = phi i32 [ 0, %128 ], [ %280, %281 ], [ %280, %279 ], [ 0, %244 ], [ 0, %265 ]
  ret i32 %283
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_lpt_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_lpt_scan_nolock(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i32 %1, -1
  br i1 %6, label %7, label %15

7:                                                ; preds = %5
  %8 = add i32 %2, 1
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  %10 = load i32, ptr %9, align 8
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 63
  %14 = load i32, ptr %13, align 8
  br label %15

15:                                               ; preds = %12, %7, %5
  %16 = phi i32 [ %14, %12 ], [ %8, %7 ], [ %1, %5 ]
  %17 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 63
  %18 = load i32, ptr %17, align 8
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %24, label %20, !prof !11

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  %22 = load i32, ptr %21, align 8
  %23 = icmp slt i32 %16, %22
  br i1 %23, label %26, label %24, !prof !8

24:                                               ; preds = %20, %15
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, i32 noundef 2092) #12
  %25 = load i32, ptr %17, align 8
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi i32 [ %18, %20 ], [ %25, %24 ]
  %28 = icmp sgt i32 %27, %2
  br i1 %28, label %33, label %29, !prof !11

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  %31 = load i32, ptr %30, align 8
  %32 = icmp sgt i32 %31, %2
  br i1 %32, label %34, label %33, !prof !8

33:                                               ; preds = %29, %26
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.3, i32 noundef 2093) #12
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 156
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = tail call i32 @ubifs_read_nnode(ptr noundef %0, ptr noundef null, i32 noundef 0)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %233

41:                                               ; preds = %38, %34
  %42 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 142
  %43 = load i32, ptr %42, align 8
  %44 = add i32 %43, 1
  %45 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %44, i32 128) #12
  %46 = extractvalue { i32, i1 } %45, 1
  br i1 %46, label %233, label %47, !prof !11

47:                                               ; preds = %41
  %48 = extractvalue { i32, i1 } %45, 0
  %49 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %48, i32 noundef 3136) #13
  %50 = icmp eq ptr %49, null
  br i1 %50, label %233, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %35, align 8
  %53 = getelementptr inbounds %struct.lpt_scan_node, ptr %49, i32 0, i32 2
  store ptr %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.lpt_scan_node, ptr %49, i32 0, i32 1
  store i32 1, ptr %54, align 8
  %55 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 143
  %56 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  br label %59

57:                                               ; preds = %173
  %58 = load i32, ptr %17, align 8
  br label %59

59:                                               ; preds = %57, %51
  %60 = phi i32 [ %16, %51 ], [ %58, %57 ]
  %61 = load ptr, ptr %35, align 8
  %62 = load i32, ptr %17, align 8
  %63 = sub i32 %60, %62
  %64 = load i32, ptr %42, align 8
  %65 = shl i32 %64, 1
  %66 = icmp sgt i32 %64, 1
  br i1 %66, label %67, label %83

67:                                               ; preds = %78, %59
  %68 = phi ptr [ %74, %78 ], [ %61, %59 ]
  %69 = phi i32 [ %79, %78 ], [ %65, %59 ]
  %70 = phi i32 [ %80, %78 ], [ 1, %59 ]
  %71 = ashr i32 %63, %69
  %72 = and i32 %71, 3
  %73 = getelementptr %struct.lpt_scan_node, ptr %49, i32 %70
  %74 = tail call fastcc ptr @scan_get_nnode(ptr noundef %0, ptr noundef %73, ptr noundef %68, i32 noundef %72)
  %75 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = ptrtoint ptr %74 to i32
  br label %231

78:                                               ; preds = %67
  %79 = add i32 %69, -2
  %80 = add nuw nsw i32 %70, 1
  %81 = load i32, ptr %42, align 8
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %67, label %83

83:                                               ; preds = %78, %59
  %84 = phi i32 [ 1, %59 ], [ %80, %78 ]
  %85 = phi i32 [ %65, %59 ], [ %79, %78 ]
  %86 = phi ptr [ %61, %59 ], [ %74, %78 ]
  %87 = ashr i32 %63, %85
  %88 = and i32 %87, 3
  %89 = getelementptr %struct.lpt_scan_node, ptr %49, i32 %84
  %90 = tail call fastcc ptr @scan_get_pnode(ptr noundef %0, ptr noundef %89, ptr noundef %86, i32 noundef %88)
  %91 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = ptrtoint ptr %90 to i32
  br label %231

94:                                               ; preds = %83
  %95 = and i32 %63, 3
  %96 = getelementptr %struct.ubifs_pnode, ptr %90, i32 0, i32 6, i32 %95
  %97 = getelementptr %struct.ubifs_pnode, ptr %90, i32 0, i32 6, i32 %95, i32 3
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr %struct.lpt_scan_node, ptr %49, i32 %84, i32 1
  %100 = load i32, ptr %99, align 8
  %101 = tail call i32 %3(ptr noundef %0, ptr noundef %96, i32 noundef %100, ptr noundef %4) #12
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %231, label %103

103:                                              ; preds = %220, %94
  %104 = phi i32 [ %229, %220 ], [ %101, %94 ]
  %105 = phi i32 [ %226, %220 ], [ %98, %94 ]
  %106 = phi ptr [ %224, %220 ], [ %96, %94 ]
  %107 = phi ptr [ %223, %220 ], [ %90, %94 ]
  %108 = phi i32 [ %222, %220 ], [ %95, %94 ]
  %109 = phi i32 [ %221, %220 ], [ %84, %94 ]
  %110 = and i32 %104, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %166, label %112

112:                                              ; preds = %103
  %113 = load i32, ptr %42, align 8
  %114 = icmp sgt i32 %113, 1
  br i1 %114, label %115, label %140

115:                                              ; preds = %136, %112
  %116 = phi i32 [ %138, %136 ], [ %113, %112 ]
  %117 = phi i32 [ %137, %136 ], [ 1, %112 ]
  %118 = getelementptr %struct.lpt_scan_node, ptr %49, i32 %117, i32 1
  %119 = load i32, ptr %118, align 8
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %115
  %122 = add nuw nsw i32 %117, 1
  br label %136

123:                                              ; preds = %115
  %124 = getelementptr %struct.lpt_scan_node, ptr %49, i32 %117
  %125 = tail call ptr @kmemdup(ptr noundef %124, i32 noundef 72, i32 noundef 3136) #12
  %126 = icmp eq ptr %125, null
  br i1 %126, label %231, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr %125, align 4
  %129 = getelementptr inbounds %struct.ubifs_nnode, ptr %125, i32 0, i32 3
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr %struct.ubifs_nnode, ptr %128, i32 0, i32 6, i32 %130, i32 2
  store ptr %125, ptr %131, align 4
  %132 = getelementptr %struct.lpt_scan_node, ptr %49, i32 %117, i32 2
  store ptr %125, ptr %132, align 4
  store i32 1, ptr %118, align 8
  %133 = add nuw nsw i32 %117, 1
  %134 = getelementptr %struct.lpt_scan_node, ptr %49, i32 %133
  store ptr %125, ptr %134, align 64
  %135 = load i32, ptr %42, align 8
  br label %136

136:                                              ; preds = %127, %121
  %137 = phi i32 [ %122, %121 ], [ %133, %127 ]
  %138 = phi i32 [ %116, %121 ], [ %135, %127 ]
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %115, label %140

140:                                              ; preds = %136, %112
  %141 = phi i32 [ 1, %112 ], [ %137, %136 ]
  %142 = getelementptr %struct.lpt_scan_node, ptr %49, i32 %141, i32 1
  %143 = load i32, ptr %142, align 8
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %140
  tail call void @ubifs_ensure_cat(ptr noundef %0, ptr noundef %106) #12
  br label %158

146:                                              ; preds = %140
  %147 = getelementptr %struct.lpt_scan_node, ptr %49, i32 %141
  %148 = tail call ptr @kmemdup(ptr noundef %147, i32 noundef 120, i32 noundef 3136) #12
  %149 = icmp eq ptr %148, null
  br i1 %149, label %231, label %150

150:                                              ; preds = %146
  %151 = load ptr, ptr %148, align 4
  %152 = getelementptr inbounds %struct.ubifs_pnode, ptr %148, i32 0, i32 3
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr %struct.ubifs_nnode, ptr %151, i32 0, i32 6, i32 %153, i32 2
  store ptr %148, ptr %154, align 4
  %155 = getelementptr %struct.lpt_scan_node, ptr %49, i32 %141, i32 2
  store ptr %148, ptr %155, align 4
  store i32 1, ptr %142, align 8
  tail call fastcc void @update_cats(ptr noundef %0, ptr noundef nonnull %148)
  %156 = load i32, ptr %55, align 4
  %157 = add i32 %156, 1
  store i32 %157, ptr %55, align 4
  br label %158

158:                                              ; preds = %150, %145
  %159 = phi ptr [ %107, %145 ], [ %148, %150 ]
  %160 = load ptr, ptr %35, align 8
  %161 = tail call i32 @dbg_check_lpt_nodes(ptr noundef %0, ptr noundef %160, i32 noundef 0, i32 noundef 0)
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %231

163:                                              ; preds = %158
  %164 = tail call i32 @dbg_check_cats(ptr noundef %0) #12
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %231

166:                                              ; preds = %163, %103
  %167 = phi i32 [ %141, %163 ], [ %109, %103 ]
  %168 = phi ptr [ %159, %163 ], [ %107, %103 ]
  %169 = and i32 %104, 2
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %231

171:                                              ; preds = %166
  %172 = icmp eq i32 %105, %2
  br i1 %172, label %231, label %173

173:                                              ; preds = %171
  %174 = add i32 %105, 1
  %175 = load i32, ptr %56, align 8
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %57

177:                                              ; preds = %173
  %178 = add i32 %108, 1
  %179 = icmp slt i32 %178, 4
  br i1 %179, label %220, label %180

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.ubifs_pnode, ptr %168, i32 0, i32 3
  br label %182

182:                                              ; preds = %189, %180
  %183 = phi i32 [ %167, %180 ], [ %186, %189 ]
  %184 = phi ptr [ %181, %180 ], [ %194, %189 ]
  %185 = load i32, ptr %184, align 4
  %186 = add i32 %183, -1
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %189, !prof !11

188:                                              ; preds = %182
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.3, i32 noundef 2212) #12
  br label %189

189:                                              ; preds = %188, %182
  %190 = getelementptr %struct.lpt_scan_node, ptr %49, i32 %186, i32 2
  %191 = load ptr, ptr %190, align 4
  %192 = add i32 %185, 1
  %193 = icmp slt i32 %192, 4
  %194 = getelementptr inbounds %struct.ubifs_nnode, ptr %191, i32 0, i32 3
  br i1 %193, label %195, label %182

195:                                              ; preds = %189
  %196 = load i32, ptr %42, align 8
  %197 = icmp slt i32 %183, %196
  br i1 %197, label %198, label %211

198:                                              ; preds = %207, %195
  %199 = phi ptr [ %203, %207 ], [ %191, %195 ]
  %200 = phi i32 [ 0, %207 ], [ %192, %195 ]
  %201 = phi i32 [ %208, %207 ], [ %183, %195 ]
  %202 = getelementptr %struct.lpt_scan_node, ptr %49, i32 %201
  %203 = tail call fastcc ptr @scan_get_nnode(ptr noundef %0, ptr noundef %202, ptr noundef %199, i32 noundef %200)
  %204 = icmp ugt ptr %203, inttoptr (i32 -4096 to ptr)
  br i1 %204, label %205, label %207

205:                                              ; preds = %198
  %206 = ptrtoint ptr %203 to i32
  br label %231

207:                                              ; preds = %198
  %208 = add nsw i32 %201, 1
  %209 = load i32, ptr %42, align 8
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %198, label %211

211:                                              ; preds = %207, %195
  %212 = phi i32 [ %183, %195 ], [ %208, %207 ]
  %213 = phi i32 [ %192, %195 ], [ 0, %207 ]
  %214 = phi ptr [ %191, %195 ], [ %203, %207 ]
  %215 = getelementptr %struct.lpt_scan_node, ptr %49, i32 %212
  %216 = tail call fastcc ptr @scan_get_pnode(ptr noundef %0, ptr noundef %215, ptr noundef %214, i32 noundef %213)
  %217 = icmp ugt ptr %216, inttoptr (i32 -4096 to ptr)
  br i1 %217, label %218, label %220

218:                                              ; preds = %211
  %219 = ptrtoint ptr %216 to i32
  br label %231

220:                                              ; preds = %211, %177
  %221 = phi i32 [ %212, %211 ], [ %167, %177 ]
  %222 = phi i32 [ 0, %211 ], [ %178, %177 ]
  %223 = phi ptr [ %216, %211 ], [ %168, %177 ]
  %224 = getelementptr %struct.ubifs_pnode, ptr %223, i32 0, i32 6, i32 %222
  %225 = getelementptr %struct.ubifs_pnode, ptr %223, i32 0, i32 6, i32 %222, i32 3
  %226 = load i32, ptr %225, align 4
  %227 = getelementptr %struct.lpt_scan_node, ptr %49, i32 %221, i32 1
  %228 = load i32, ptr %227, align 8
  %229 = tail call i32 %3(ptr noundef %0, ptr noundef %224, i32 noundef %228, ptr noundef %4) #12
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %103

231:                                              ; preds = %220, %218, %205, %171, %166, %163, %158, %146, %123, %94, %92, %76
  %232 = phi i32 [ %77, %76 ], [ %93, %92 ], [ %219, %218 ], [ %206, %205 ], [ -12, %123 ], [ %229, %220 ], [ %161, %158 ], [ %164, %163 ], [ 0, %166 ], [ -28, %171 ], [ -12, %146 ], [ %101, %94 ]
  tail call void @kfree(ptr noundef nonnull %49) #12
  br label %233

233:                                              ; preds = %231, %47, %41, %38
  %234 = phi i32 [ %232, %231 ], [ %39, %38 ], [ -12, %47 ], [ -12, %41 ]
  ret i32 %234
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @scan_get_nnode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 154
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr %struct.ubifs_nnode, ptr %2, i32 0, i32 6, i32 %3, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.lpt_scan_node, ptr %1, i32 0, i32 1
  store i32 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.lpt_scan_node, ptr %1, i32 0, i32 2
  store ptr %8, ptr %12, align 4
  br label %92

13:                                               ; preds = %4
  %14 = getelementptr %struct.ubifs_nnode, ptr %2, i32 0, i32 6, i32 %3
  %15 = getelementptr inbounds %struct.lpt_scan_node, ptr %1, i32 0, i32 1
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.lpt_scan_node, ptr %1, i32 0, i32 2
  store ptr %1, ptr %16, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(72) %1, i8 0, i32 72, i1 false)
  %17 = load i32, ptr %14, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %21 = load i16, ptr %20, align 4
  %22 = and i16 %21, 1
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %57, label %24

24:                                               ; preds = %19
  %25 = icmp eq ptr %2, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 142
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.ubifs_nnode, ptr %2, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = sub i32 %28, %30
  %32 = shl i32 %31, 1
  %33 = getelementptr inbounds %struct.ubifs_nnode, ptr %2, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = shl nuw i32 1, %32
  %36 = xor i32 %35, %34
  %37 = add i32 %3, 4
  %38 = shl i32 %37, %32
  %39 = or i32 %36, %38
  br label %40

40:                                               ; preds = %26, %24
  %41 = phi i32 [ %39, %26 ], [ 1, %24 ]
  %42 = getelementptr inbounds %struct.ubifs_nnode, ptr %1, i32 0, i32 5
  store i32 %41, ptr %42, align 4
  br label %57

43:                                               ; preds = %13
  %44 = getelementptr %struct.ubifs_nnode, ptr %2, i32 0, i32 6, i32 %3, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 136
  %47 = load i32, ptr %46, align 8
  %48 = tail call i32 @ubifs_leb_read(ptr noundef %0, i32 noundef %17, ptr noundef %6, i32 noundef %45, i32 noundef %47, i32 noundef 1) #12
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = inttoptr i32 %48 to ptr
  br label %92

52:                                               ; preds = %43
  %53 = tail call i32 @ubifs_unpack_nnode(ptr noundef %0, ptr noundef %6, ptr noundef %1)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = inttoptr i32 %53 to ptr
  br label %92

57:                                               ; preds = %52, %40, %19
  %58 = tail call fastcc i32 @validate_nnode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = inttoptr i32 %58 to ptr
  br label %92

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %64 = load i16, ptr %63, align 4
  %65 = and i16 %64, 1
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %62
  %68 = icmp eq ptr %2, null
  br i1 %68, label %83, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 142
  %71 = load i32, ptr %70, align 8
  %72 = getelementptr inbounds %struct.ubifs_nnode, ptr %2, i32 0, i32 4
  %73 = load i32, ptr %72, align 4
  %74 = sub i32 %71, %73
  %75 = shl i32 %74, 1
  %76 = getelementptr inbounds %struct.ubifs_nnode, ptr %2, i32 0, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = shl nuw i32 1, %75
  %79 = xor i32 %78, %77
  %80 = add i32 %3, 4
  %81 = shl i32 %80, %75
  %82 = or i32 %79, %81
  br label %83

83:                                               ; preds = %69, %67
  %84 = phi i32 [ %82, %69 ], [ 1, %67 ]
  %85 = getelementptr inbounds %struct.ubifs_nnode, ptr %1, i32 0, i32 5
  store i32 %84, ptr %85, align 4
  br label %86

86:                                               ; preds = %83, %62
  %87 = getelementptr inbounds %struct.ubifs_nnode, ptr %2, i32 0, i32 4
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %88, -1
  %90 = getelementptr inbounds %struct.ubifs_nnode, ptr %1, i32 0, i32 4
  store i32 %89, ptr %90, align 4
  store ptr %2, ptr %1, align 4
  %91 = getelementptr inbounds %struct.ubifs_nnode, ptr %1, i32 0, i32 3
  store i32 %3, ptr %91, align 4
  br label %92

92:                                               ; preds = %86, %60, %55, %50, %10
  %93 = phi ptr [ %8, %10 ], [ %61, %60 ], [ %1, %86 ], [ %51, %50 ], [ %56, %55 ]
  ret ptr %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @scan_get_pnode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 154
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr %struct.ubifs_nnode, ptr %2, i32 0, i32 6, i32 %3
  %8 = getelementptr %struct.ubifs_nnode, ptr %2, i32 0, i32 6, i32 %3, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.lpt_scan_node, ptr %1, i32 0, i32 1
  br i1 %10, label %14, label %12

12:                                               ; preds = %4
  store i32 1, ptr %11, align 4
  %13 = getelementptr inbounds %struct.lpt_scan_node, ptr %1, i32 0, i32 2
  store ptr %9, ptr %13, align 4
  br label %158

14:                                               ; preds = %4
  store i32 0, ptr %11, align 4
  %15 = getelementptr inbounds %struct.lpt_scan_node, ptr %1, i32 0, i32 2
  store ptr %1, ptr %15, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(120) %1, i8 0, i32 120, i1 false)
  %16 = load i32, ptr %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %63

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %20 = load i16, ptr %19, align 4
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 142
  %25 = load i32, ptr %24, align 8
  %26 = add i32 %25, -1
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ubifs_nnode, ptr %2, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  br label %31

31:                                               ; preds = %31, %28
  %32 = phi i32 [ %39, %31 ], [ 0, %28 ]
  %33 = phi i32 [ %37, %31 ], [ %30, %28 ]
  %34 = phi i32 [ %38, %31 ], [ 0, %28 ]
  %35 = and i32 %33, 3
  %36 = or i32 %35, %32
  %37 = ashr i32 %33, 2
  %38 = add nuw nsw i32 %34, 1
  %39 = shl i32 %36, 2
  %40 = icmp eq i32 %38, %26
  br i1 %40, label %41, label %31

41:                                               ; preds = %31, %23
  %42 = phi i32 [ 0, %23 ], [ %39, %31 ]
  %43 = or i32 %42, %3
  %44 = getelementptr inbounds %struct.ubifs_pnode, ptr %1, i32 0, i32 5
  store i32 %43, ptr %44, align 4
  br label %45

45:                                               ; preds = %41, %18
  %46 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %47 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 0
  %48 = load i32, ptr %46, align 8
  store i32 %48, ptr %47, align 4
  %49 = tail call i32 @ubifs_categorize_lprops(ptr noundef %0, ptr noundef %47) #12
  %50 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 0, i32 2
  store i32 %49, ptr %50, align 4
  %51 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 1
  %52 = load i32, ptr %46, align 8
  store i32 %52, ptr %51, align 4
  %53 = tail call i32 @ubifs_categorize_lprops(ptr noundef %0, ptr noundef %51) #12
  %54 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 1, i32 2
  store i32 %53, ptr %54, align 4
  %55 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 2
  %56 = load i32, ptr %46, align 8
  store i32 %56, ptr %55, align 4
  %57 = tail call i32 @ubifs_categorize_lprops(ptr noundef %0, ptr noundef %55) #12
  %58 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 2, i32 2
  store i32 %57, ptr %58, align 4
  %59 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 3
  %60 = load i32, ptr %46, align 8
  store i32 %60, ptr %59, align 4
  %61 = tail call i32 @ubifs_categorize_lprops(ptr noundef %0, ptr noundef %59) #12
  %62 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 3, i32 2
  store i32 %61, ptr %62, align 4
  br label %96

63:                                               ; preds = %14
  %64 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %65 = load i32, ptr %64, align 8
  %66 = icmp slt i32 %16, %65
  br i1 %66, label %71, label %67, !prof !11

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 58
  %69 = load i32, ptr %68, align 4
  %70 = icmp sgt i32 %16, %69
  br i1 %70, label %71, label %72, !prof !11

71:                                               ; preds = %67, %63
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.3, i32 noundef 2047) #12
  br label %72

72:                                               ; preds = %71, %67
  %73 = getelementptr %struct.ubifs_nnode, ptr %2, i32 0, i32 6, i32 %3, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %76, label %80, !prof !8

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %78 = load i32, ptr %77, align 8
  %79 = icmp slt i32 %74, %78
  br i1 %79, label %82, label %80, !prof !8

80:                                               ; preds = %76, %72
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.3, i32 noundef 2048) #12
  %81 = load i32, ptr %73, align 4
  br label %82

82:                                               ; preds = %80, %76
  %83 = phi i32 [ %81, %80 ], [ %74, %76 ]
  %84 = load i32, ptr %7, align 4
  %85 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 137
  %86 = load i32, ptr %85, align 4
  %87 = tail call i32 @ubifs_leb_read(ptr noundef %0, i32 noundef %84, ptr noundef %6, i32 noundef %83, i32 noundef %86, i32 noundef 1) #12
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %82
  %90 = inttoptr i32 %87 to ptr
  br label %158

91:                                               ; preds = %82
  %92 = tail call fastcc i32 @unpack_pnode(ptr noundef %0, ptr noundef %6, ptr noundef %1)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = inttoptr i32 %92 to ptr
  br label %158

96:                                               ; preds = %91, %45
  %97 = tail call fastcc i32 @validate_pnode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = inttoptr i32 %97 to ptr
  br label %158

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %103 = load i16, ptr %102, align 4
  %104 = and i16 %103, 1
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.ubifs_pnode, ptr %1, i32 0, i32 5
  %108 = load i32, ptr %107, align 4
  br label %131

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 142
  %111 = load i32, ptr %110, align 8
  %112 = add i32 %111, -1
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.ubifs_nnode, ptr %2, i32 0, i32 5
  %116 = load i32, ptr %115, align 4
  br label %117

117:                                              ; preds = %117, %114
  %118 = phi i32 [ %125, %117 ], [ 0, %114 ]
  %119 = phi i32 [ %123, %117 ], [ %116, %114 ]
  %120 = phi i32 [ %124, %117 ], [ 0, %114 ]
  %121 = and i32 %119, 3
  %122 = or i32 %121, %118
  %123 = ashr i32 %119, 2
  %124 = add nuw nsw i32 %120, 1
  %125 = shl i32 %122, 2
  %126 = icmp eq i32 %124, %112
  br i1 %126, label %127, label %117

127:                                              ; preds = %117, %109
  %128 = phi i32 [ 0, %109 ], [ %125, %117 ]
  %129 = or i32 %128, %3
  %130 = getelementptr inbounds %struct.ubifs_pnode, ptr %1, i32 0, i32 5
  store i32 %129, ptr %130, align 4
  br label %131

131:                                              ; preds = %127, %106
  %132 = phi i32 [ %108, %106 ], [ %129, %127 ]
  store ptr %2, ptr %1, align 4
  %133 = getelementptr inbounds %struct.ubifs_pnode, ptr %1, i32 0, i32 3
  store i32 %3, ptr %133, align 4
  %134 = shl i32 %132, 2
  %135 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 63
  %136 = load i32, ptr %135, align 8
  %137 = add i32 %134, %136
  %138 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  %139 = load i32, ptr %138, align 8
  %140 = icmp slt i32 %137, %139
  br i1 %140, label %141, label %158

141:                                              ; preds = %131
  %142 = add nsw i32 %137, 1
  %143 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 0, i32 3
  store i32 %137, ptr %143, align 4
  %144 = load i32, ptr %138, align 8
  %145 = icmp slt i32 %142, %144
  br i1 %145, label %146, label %158

146:                                              ; preds = %141
  %147 = add nsw i32 %137, 2
  %148 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 1, i32 3
  store i32 %142, ptr %148, align 4
  %149 = load i32, ptr %138, align 8
  %150 = icmp slt i32 %147, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = add nsw i32 %137, 3
  %153 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 2, i32 3
  store i32 %147, ptr %153, align 4
  %154 = load i32, ptr %138, align 8
  %155 = icmp slt i32 %152, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 3, i32 3
  store i32 %152, ptr %157, align 4
  br label %158

158:                                              ; preds = %156, %151, %146, %141, %131, %99, %94, %89, %12
  %159 = phi ptr [ %9, %12 ], [ %100, %99 ], [ %90, %89 ], [ %95, %94 ], [ %1, %131 ], [ %1, %141 ], [ %1, %146 ], [ %1, %151 ], [ %1, %156 ]
  ret ptr %159
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_ensure_cat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dbg_check_lpt_nodes(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load i8, ptr @ubifs_dbg, align 4
  %6 = and i8 %5, 8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ubifs_debug_info, ptr %10, i32 0, i32 19
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 8
  %14 = icmp eq i8 %13, 0
  br label %15

15:                                               ; preds = %8, %4
  %16 = phi i1 [ false, %4 ], [ %14, %8 ]
  %17 = icmp eq ptr %1, null
  %18 = or i1 %16, %17
  br i1 %18, label %176, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 63
  %21 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  %22 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 163
  %23 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 162
  %24 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 161
  %25 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 160
  %26 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  br label %27

27:                                               ; preds = %170, %19
  %28 = phi i32 [ 0, %19 ], [ %174, %170 ]
  %29 = phi i32 [ %3, %19 ], [ %173, %170 ]
  %30 = phi i32 [ %2, %19 ], [ %172, %170 ]
  %31 = phi ptr [ %1, %19 ], [ %171, %170 ]
  %32 = icmp slt i32 %30, 0
  br i1 %32, label %33, label %34, !prof !11

33:                                               ; preds = %27
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.3, i32 noundef 2391) #12
  br label %34

34:                                               ; preds = %33, %27
  %35 = load ptr, ptr %31, align 4
  %36 = getelementptr inbounds %struct.ubifs_cnode, ptr %31, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %79, label %39

39:                                               ; preds = %34
  %40 = icmp eq i32 %30, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %41, %39
  %42 = phi i32 [ %49, %41 ], [ 1, %39 ]
  %43 = phi i32 [ %47, %41 ], [ %29, %39 ]
  %44 = phi i32 [ %45, %41 ], [ %30, %39 ]
  %45 = add i32 %44, -1
  %46 = and i32 %43, 3
  %47 = ashr i32 %43, 2
  %48 = shl i32 %42, 2
  %49 = or i32 %46, %48
  %50 = icmp eq i32 %45, 0
  br i1 %50, label %51, label %41

51:                                               ; preds = %41, %39
  %52 = phi i32 [ 1, %39 ], [ %49, %41 ]
  %53 = getelementptr inbounds %struct.ubifs_cnode, ptr %31, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, %52
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = icmp slt i32 %28, 4
  br i1 %57, label %67, label %164

58:                                               ; preds = %51
  %59 = icmp eq ptr %35, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.ubifs_nnode, ptr %35, i32 0, i32 5
  %62 = load i32, ptr %61, align 4
  br label %63

63:                                               ; preds = %60, %58
  %64 = phi i32 [ %62, %60 ], [ 0, %58 ]
  %65 = getelementptr inbounds %struct.ubifs_cnode, ptr %31, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %54, i32 noundef %52, i32 noundef %64, i32 noundef %66) #12
  br label %176

67:                                               ; preds = %72, %56
  %68 = phi i32 [ %73, %72 ], [ %28, %56 ]
  %69 = getelementptr %struct.ubifs_nnode, ptr %31, i32 0, i32 6, i32 %68, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = add i32 %68, 1
  %74 = icmp eq i32 %73, 4
  br i1 %74, label %164, label %67

75:                                               ; preds = %67
  %76 = add i32 %30, 1
  %77 = shl i32 %29, 2
  %78 = add i32 %68, %77
  br label %170

79:                                               ; preds = %34
  %80 = getelementptr inbounds %struct.ubifs_pnode, ptr %31, i32 0, i32 5
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, %29
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = shl i32 %29, 2
  %85 = load i32, ptr %20, align 8
  %86 = load i32, ptr %21, align 8
  %87 = add i32 %85, %84
  br label %93

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.ubifs_nnode, ptr %35, i32 0, i32 5
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.ubifs_pnode, ptr %31, i32 0, i32 3
  %92 = load i32, ptr %91, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %81, i32 noundef %29, i32 noundef %90, i32 noundef %92) #12
  br label %176

93:                                               ; preds = %161, %83
  %94 = phi i32 [ 0, %83 ], [ %162, %161 ]
  %95 = getelementptr %struct.ubifs_pnode, ptr %31, i32 0, i32 6, i32 %94
  %96 = add i32 %87, %94
  %97 = getelementptr %struct.ubifs_pnode, ptr %31, i32 0, i32 6, i32 %94, i32 2
  %98 = load i32, ptr %97, align 4
  %99 = and i32 %98, 15
  %100 = icmp slt i32 %96, %86
  br i1 %100, label %101, label %161

101:                                              ; preds = %93
  %102 = getelementptr %struct.ubifs_pnode, ptr %31, i32 0, i32 6, i32 %94, i32 3
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, %96
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %103, i32 noundef %96) #12
  br label %176

106:                                              ; preds = %101
  %107 = and i32 %98, 16
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = icmp eq i32 %99, 0
  br i1 %110, label %161, label %111

111:                                              ; preds = %109
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %96, i32 noundef %99) #12
  br label %176

112:                                              ; preds = %106
  %113 = and i32 %98, 32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  switch i32 %99, label %116 [
    i32 0, label %135
    i32 6, label %121
    i32 2, label %122
  ]

116:                                              ; preds = %115
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %96, i32 noundef %99) #12
  br label %176

117:                                              ; preds = %112
  switch i32 %99, label %118 [
    i32 0, label %135
    i32 4, label %119
    i32 5, label %120
    i32 1, label %122
    i32 3, label %122
  ]

118:                                              ; preds = %117
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %96, i32 noundef %99) #12
  br label %176

119:                                              ; preds = %117
  br label %135

120:                                              ; preds = %117
  br label %135

121:                                              ; preds = %115
  br label %135

122:                                              ; preds = %117, %117, %115
  %123 = add nsw i32 %99, -1
  %124 = getelementptr %struct.ubifs_pnode, ptr %31, i32 0, i32 6, i32 %94, i32 4
  %125 = load i32, ptr %124, align 4
  %126 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 %123, i32 1
  %127 = load i32, ptr %126, align 4
  %128 = icmp slt i32 %125, %127
  br i1 %128, label %129, label %144

129:                                              ; preds = %122
  %130 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 158, i32 %123
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr ptr, ptr %131, i32 %125
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, %95
  br i1 %134, label %145, label %144

135:                                              ; preds = %121, %120, %119, %117, %115
  %136 = phi ptr [ %24, %119 ], [ %23, %120 ], [ %22, %121 ], [ %25, %117 ], [ %25, %115 ]
  br label %137

137:                                              ; preds = %141, %135
  %138 = phi ptr [ %136, %135 ], [ %139, %141 ]
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, %136
  br i1 %140, label %144, label %141

141:                                              ; preds = %137
  %142 = getelementptr i8, ptr %139, i32 -16
  %143 = icmp eq ptr %95, %142
  br i1 %143, label %145, label %137

144:                                              ; preds = %137, %129, %122
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %96, i32 noundef %99) #12
  br label %176

145:                                              ; preds = %141, %129
  switch i32 %99, label %161 [
    i32 4, label %146
    i32 5, label %153
    i32 6, label %153
  ]

146:                                              ; preds = %145
  %147 = load i32, ptr %95, align 4
  %148 = load i32, ptr %26, align 8
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %161, label %150

150:                                              ; preds = %146
  %151 = getelementptr %struct.ubifs_pnode, ptr %31, i32 0, i32 6, i32 %94, i32 1
  %152 = load i32, ptr %151, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %96, i32 noundef 4, i32 noundef %147, i32 noundef %152) #12
  br label %176

153:                                              ; preds = %145, %145
  %154 = load i32, ptr %95, align 4
  %155 = getelementptr %struct.ubifs_pnode, ptr %31, i32 0, i32 6, i32 %94, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = add i32 %156, %154
  %158 = load i32, ptr %26, align 8
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %161, label %160

160:                                              ; preds = %153
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %96, i32 noundef %99, i32 noundef %154, i32 noundef %156) #12
  br label %176

161:                                              ; preds = %153, %146, %145, %109, %93
  %162 = add nuw nsw i32 %94, 1
  %163 = icmp eq i32 %162, 4
  br i1 %163, label %164, label %93

164:                                              ; preds = %161, %72, %56
  %165 = add i32 %30, -1
  %166 = ashr i32 %29, 2
  %167 = getelementptr inbounds %struct.ubifs_cnode, ptr %31, i32 0, i32 3
  %168 = load i32, ptr %167, align 4
  %169 = add i32 %168, 1
  br label %170

170:                                              ; preds = %164, %75
  %171 = phi ptr [ %70, %75 ], [ %35, %164 ]
  %172 = phi i32 [ %76, %75 ], [ %165, %164 ]
  %173 = phi i32 [ %78, %75 ], [ %166, %164 ]
  %174 = phi i32 [ 0, %75 ], [ %169, %164 ]
  %175 = icmp eq ptr %171, null
  br i1 %175, label %176, label %27

176:                                              ; preds = %170, %160, %150, %144, %118, %116, %111, %105, %88, %63, %15
  %177 = phi i32 [ -22, %63 ], [ 0, %15 ], [ -22, %88 ], [ -22, %105 ], [ -22, %111 ], [ -22, %116 ], [ -22, %160 ], [ -22, %150 ], [ -22, %144 ], [ -22, %118 ], [ 0, %170 ]
  ret i32 %177
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_cats(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_categorize_lprops(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @unpack_pnode(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  %8 = getelementptr i8, ptr %1, i32 2
  store ptr %8, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4
  %9 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 4) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %9, i32 noundef 0) #12
  tail call void @dump_stack() #15
  br label %95

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 134
  %19 = load i32, ptr %18, align 8
  %20 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %19)
  %21 = getelementptr inbounds %struct.ubifs_pnode, ptr %2, i32 0, i32 5
  store i32 %20, ptr %21, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 130
  %24 = getelementptr %struct.ubifs_pnode, ptr %2, i32 0, i32 6, i32 0
  %25 = load i32, ptr %23, align 8
  %26 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %25)
  %27 = shl i32 %26, 3
  store i32 %27, ptr %24, align 4
  %28 = load i32, ptr %23, align 8
  %29 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %28)
  %30 = getelementptr %struct.ubifs_pnode, ptr %2, i32 0, i32 6, i32 0, i32 1
  %31 = shl i32 %29, 3
  store i32 %31, ptr %30, align 4
  %32 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 1)
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 0, i32 32
  %35 = getelementptr %struct.ubifs_pnode, ptr %2, i32 0, i32 6, i32 0, i32 2
  store i32 %34, ptr %35, align 4
  %36 = tail call i32 @ubifs_categorize_lprops(ptr noundef %0, ptr noundef %24) #12
  %37 = load i32, ptr %35, align 4
  %38 = or i32 %37, %36
  store i32 %38, ptr %35, align 4
  %39 = getelementptr %struct.ubifs_pnode, ptr %2, i32 0, i32 6, i32 1
  %40 = load i32, ptr %23, align 8
  %41 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %40)
  %42 = shl i32 %41, 3
  store i32 %42, ptr %39, align 4
  %43 = load i32, ptr %23, align 8
  %44 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %43)
  %45 = getelementptr %struct.ubifs_pnode, ptr %2, i32 0, i32 6, i32 1, i32 1
  %46 = shl i32 %44, 3
  store i32 %46, ptr %45, align 4
  %47 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 1)
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 0, i32 32
  %50 = getelementptr %struct.ubifs_pnode, ptr %2, i32 0, i32 6, i32 1, i32 2
  store i32 %49, ptr %50, align 4
  %51 = tail call i32 @ubifs_categorize_lprops(ptr noundef %0, ptr noundef %39) #12
  %52 = load i32, ptr %50, align 4
  %53 = or i32 %52, %51
  store i32 %53, ptr %50, align 4
  %54 = getelementptr %struct.ubifs_pnode, ptr %2, i32 0, i32 6, i32 2
  %55 = load i32, ptr %23, align 8
  %56 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %55)
  %57 = shl i32 %56, 3
  store i32 %57, ptr %54, align 4
  %58 = load i32, ptr %23, align 8
  %59 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %58)
  %60 = getelementptr %struct.ubifs_pnode, ptr %2, i32 0, i32 6, i32 2, i32 1
  %61 = shl i32 %59, 3
  store i32 %61, ptr %60, align 4
  %62 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 1)
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, i32 0, i32 32
  %65 = getelementptr %struct.ubifs_pnode, ptr %2, i32 0, i32 6, i32 2, i32 2
  store i32 %64, ptr %65, align 4
  %66 = tail call i32 @ubifs_categorize_lprops(ptr noundef %0, ptr noundef %54) #12
  %67 = load i32, ptr %65, align 4
  %68 = or i32 %67, %66
  store i32 %68, ptr %65, align 4
  %69 = getelementptr %struct.ubifs_pnode, ptr %2, i32 0, i32 6, i32 3
  %70 = load i32, ptr %23, align 8
  %71 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %70)
  %72 = shl i32 %71, 3
  store i32 %72, ptr %69, align 4
  %73 = load i32, ptr %23, align 8
  %74 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %73)
  %75 = getelementptr %struct.ubifs_pnode, ptr %2, i32 0, i32 6, i32 3, i32 1
  %76 = shl i32 %74, 3
  store i32 %76, ptr %75, align 4
  %77 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 1)
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i32 0, i32 32
  %80 = getelementptr %struct.ubifs_pnode, ptr %2, i32 0, i32 6, i32 3, i32 2
  store i32 %79, ptr %80, align 4
  %81 = tail call i32 @ubifs_categorize_lprops(ptr noundef %0, ptr noundef %69) #12
  %82 = load i32, ptr %80, align 4
  %83 = or i32 %82, %81
  store i32 %83, ptr %80, align 4
  %84 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 137
  %85 = load i32, ptr %84, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store ptr %1, ptr %5, align 4
  %86 = call i32 @ubifs_unpack_bits(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 16) #12
  %87 = add i32 %85, -2
  %88 = tail call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef %8, i32 noundef %87) #12
  %89 = and i32 %86, 65535
  %90 = zext i16 %88 to i32
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %93, label %92

92:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %89, i32 noundef %90) #12
  tail call void @dump_stack() #15
  br label %93

93:                                               ; preds = %92, %22
  %94 = phi i32 [ -22, %92 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %95

95:                                               ; preds = %93, %11
  %96 = phi i32 [ %94, %93 ], [ -22, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  ret i32 %96
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @validate_pnode(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 142
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, -1
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ubifs_nnode, ptr %2, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %17, %14
  %18 = phi i32 [ %25, %17 ], [ 0, %14 ]
  %19 = phi i32 [ %23, %17 ], [ %16, %14 ]
  %20 = phi i32 [ %24, %17 ], [ 0, %14 ]
  %21 = and i32 %19, 3
  %22 = or i32 %21, %18
  %23 = ashr i32 %19, 2
  %24 = add nuw nsw i32 %20, 1
  %25 = shl i32 %22, 2
  %26 = icmp eq i32 %24, %12
  br i1 %26, label %27, label %17

27:                                               ; preds = %17, %9
  %28 = phi i32 [ 0, %9 ], [ %25, %17 ]
  %29 = or i32 %28, %3
  %30 = getelementptr inbounds %struct.ubifs_pnode, ptr %1, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %29
  br i1 %32, label %33, label %134

33:                                               ; preds = %27, %4
  %34 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %35 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 0
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp slt i32 %36, 0
  br i1 %39, label %134, label %113

40:                                               ; preds = %123
  %41 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 1, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp slt i32 %42, 0
  %46 = icmp sgt i32 %42, %115
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %134, label %48

48:                                               ; preds = %40
  %49 = srem i32 %42, %118
  %50 = and i32 %42, 7
  %51 = or i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %134

53:                                               ; preds = %48
  %54 = icmp sgt i32 %44, -1
  %55 = icmp sle i32 %44, %115
  %56 = select i1 %54, i1 %55, i1 false
  %57 = and i32 %44, 7
  %58 = icmp eq i32 %57, 0
  %59 = and i1 %58, %56
  %60 = xor i1 %59, true
  %61 = add i32 %44, %42
  %62 = icmp sgt i32 %61, %115
  %63 = select i1 %60, i1 true, i1 %62
  br i1 %63, label %134, label %64

64:                                               ; preds = %53
  %65 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 2, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = icmp slt i32 %66, 0
  %70 = icmp sgt i32 %66, %115
  %71 = select i1 %69, i1 true, i1 %70
  br i1 %71, label %134, label %72

72:                                               ; preds = %64
  %73 = srem i32 %66, %118
  %74 = and i32 %66, 7
  %75 = or i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %134

77:                                               ; preds = %72
  %78 = icmp sgt i32 %68, -1
  %79 = icmp sle i32 %68, %115
  %80 = select i1 %78, i1 %79, i1 false
  %81 = and i32 %68, 7
  %82 = icmp eq i32 %81, 0
  %83 = and i1 %82, %80
  %84 = xor i1 %83, true
  %85 = add i32 %68, %66
  %86 = icmp sgt i32 %85, %115
  %87 = select i1 %84, i1 true, i1 %86
  br i1 %87, label %134, label %88

88:                                               ; preds = %77
  %89 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 3, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = icmp slt i32 %90, 0
  %94 = icmp sgt i32 %90, %115
  %95 = select i1 %93, i1 true, i1 %94
  br i1 %95, label %134, label %96

96:                                               ; preds = %88
  %97 = srem i32 %90, %118
  %98 = and i32 %90, 7
  %99 = or i32 %97, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %134

101:                                              ; preds = %96
  %102 = icmp sgt i32 %92, -1
  %103 = icmp sle i32 %92, %115
  %104 = select i1 %102, i1 %103, i1 false
  %105 = and i32 %92, 7
  %106 = icmp eq i32 %105, 0
  %107 = and i1 %106, %104
  %108 = xor i1 %107, true
  %109 = add i32 %92, %90
  %110 = icmp sgt i32 %109, %115
  %111 = select i1 %108, i1 true, i1 %110
  %112 = select i1 %111, i32 -22, i32 0
  br label %134

113:                                              ; preds = %33
  %114 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %115 = load i32, ptr %114, align 8
  %116 = icmp sgt i32 %36, %115
  br i1 %116, label %134, label %117

117:                                              ; preds = %113
  %118 = load i32, ptr %34, align 8
  %119 = srem i32 %36, %118
  %120 = and i32 %36, 7
  %121 = or i32 %119, %120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %117
  %124 = icmp sgt i32 %38, -1
  %125 = icmp sle i32 %38, %115
  %126 = select i1 %124, i1 %125, i1 false
  %127 = and i32 %38, 7
  %128 = icmp eq i32 %127, 0
  %129 = and i1 %128, %126
  %130 = xor i1 %129, true
  %131 = add i32 %38, %36
  %132 = icmp sgt i32 %131, %115
  %133 = select i1 %130, i1 true, i1 %132
  br i1 %133, label %134, label %40

134:                                              ; preds = %123, %117, %113, %101, %96, %88, %77, %72, %64, %53, %48, %40, %33, %27
  %135 = phi i32 [ -22, %27 ], [ -22, %117 ], [ -22, %113 ], [ -22, %33 ], [ -22, %123 ], [ -22, %40 ], [ -22, %48 ], [ -22, %53 ], [ -22, %64 ], [ -22, %72 ], [ -22, %77 ], [ -22, %88 ], [ -22, %96 ], [ %112, %101 ]
  ret i32 %135
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_pnode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_add_to_cat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_replace_cat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2147812478, i64 2147812758, i64 2147813092, i64 2147813426}
!10 = !{i32 0, i32 33}
!11 = !{!"branch_weights", i32 1, i32 2000}
