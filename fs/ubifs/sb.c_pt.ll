; ModuleID = '/llk/IR/fs/ubifs/sb.c_pt.bc'
source_filename = "../fs/ubifs/sb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.timespec64 = type { i64, i32 }
%struct.ubifs_sb_node = type { %struct.ubifs_ch, [2 x i8], i8, i8, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i16, [2 x i8], i32, i32, i64, i32, [16 x i8], i32, [64 x i8], [64 x i8], i16, [64 x i8], [3774 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_compressor = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ubifs_mst_node = type { %struct.ubifs_ch, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], [64 x i8], [64 x i8], [152 x i8] }
%struct.ubifs_idx_node = type <{ %struct.ubifs_ch, i16, i16, [0 x i8] }>
%struct.ubifs_branch = type { i32, i32, i32, [0 x i8] }
%struct.ubifs_ino_node = type { %struct.ubifs_ch, [16 x i8], i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i16, [26 x i8], [0 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ubifs_lpt_lprops = type { i32, i32, i8 }

@.str = private unnamed_addr constant [28 x i8] c"!c->ro_media || c->ro_mount\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"fs/ubifs/sb.c\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"on-flash format version is w%d/r%d, but software only supports up to version w%d/r%d\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"only R/O mounting is possible\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"on-flash format version %d is not supported\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"unsupported key format\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Unknown feature flags found: %#x\00", align 1
@.str.7 = private unnamed_addr constant [81 x i8] c"file system contains encrypted files but UBIFS was built without crypto support.\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"c->space_fixup\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"!c->ro_mount\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"start fixing up free space\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"free space fixup complete\00", align 1
@ubifs_default_version = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"default file-system created\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"fs/ubifs/misc.h\00", align 1
@ubifs_compressors = external dso_local local_unnamed_addr global [4 x ptr], align 4
@.str.15 = private unnamed_addr constant [61 x i8] c"authenticated FS forced, but found FS without authentication\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"authenticated FS found, but no key given\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"Mounting in %sauthenticated mode\00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@.str.20 = private unnamed_addr constant [50 x i8] c"min. I/O unit mismatch: %d in superblock, %d real\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"LEB size mismatch: %d in superblock, %d real\00", align 1
@.str.22 = private unnamed_addr constant [71 x i8] c"bad LEB count: %d in superblock, %d on UBI volume, %d minimum required\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"max. LEB count %d less than LEB count %d\00", align 1
@.str.25 = private unnamed_addr constant [60 x i8] c"too small journal (%lld bytes), must be at least %lld bytes\00", align 1
@.str.26 = private unnamed_addr constant [80 x i8] c"too large journal size (%lld bytes), only %lld bytes available in the main area\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"bad superblock, error %d\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"len >= 0\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"len % c->min_io_size == 0\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"len < c->leb_size\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"mutex_is_locked(&c->lp_mutex)\00", align 1
@.str.32 = private unnamed_addr constant [60 x i8] c"c->lst.empty_lebs >= 0 && c->lst.empty_lebs <= c->main_lebs\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_write_sb_node(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %4 = load i32, ptr %3, align 8
  %5 = tail call i32 @ubifs_prepare_node_hmac(ptr noundef %0, ptr noundef %1, i32 noundef 4096, i32 noundef 128, i32 noundef 1) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = add i32 %4, 4095
  %9 = sub i32 0, %4
  %10 = and i32 %8, %9
  %11 = tail call i32 @ubifs_leb_change(ptr noundef %0, i32 noundef 0, ptr noundef %1, i32 noundef %10) #10
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i32 [ %11, %7 ], [ %5, %2 ]
  ret i32 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_prepare_node_hmac(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_change(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_read_superblock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [0 x i8], align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.timespec64, align 8
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 186
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %327, label %11

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %2) #10
  %12 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 68
  store i32 8, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  %14 = load i32, ptr %13, align 8
  %15 = icmp slt i32 %14, 429496729
  %16 = mul i32 %14, 5
  %17 = sdiv i32 %16, 100
  %18 = sdiv i32 %14, 100
  %19 = mul nsw i32 %18, 5
  %20 = select i1 %15, i32 %17, i32 %19
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 5) #10
  %22 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %23 = load i32, ptr %22, align 8
  %24 = mul i32 %21, %23
  %25 = icmp sgt i32 %24, 33554432
  br i1 %25, label %26, label %28

26:                                               ; preds = %11
  %27 = sdiv i32 33554432, %23
  br label %28

28:                                               ; preds = %26, %11
  %29 = phi i32 [ %27, %26 ], [ %21, %11 ]
  %30 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 89
  %31 = load i32, ptr %30, align 8
  %32 = shl nsw i32 %29, 1
  %33 = mul i32 %32, %31
  %34 = add i32 %23, -1
  %35 = add i32 %34, %33
  %36 = sdiv i32 %35, %23
  %37 = add i32 %14, -17
  %38 = icmp sgt i32 %37, 8
  %39 = select i1 %38, i32 2, i32 1
  %40 = add i32 %36, %39
  %41 = select i1 %38, i32 -18, i32 -17
  %42 = sub i32 %29, %40
  %43 = tail call i32 @llvm.smax.i32(i32 %42, i32 3) #10
  %44 = add i32 %41, %14
  %45 = icmp sgt i32 %44, 1
  %46 = select i1 %45, i32 -2, i32 -1
  %47 = select i1 %45, i32 2, i32 1
  %48 = add i32 %14, -3
  %49 = add i32 %48, %46
  %50 = sub i32 %49, %40
  store i32 %50, ptr %3, align 4
  %51 = add i32 %40, 3
  %52 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 170
  store i32 256, ptr %52, align 8
  %53 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 80
  store i32 %14, ptr %53, align 4
  %54 = call i32 @ubifs_create_dflt_lpt(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %51, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %2) #10
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %28
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %531

57:                                               ; preds = %28
  %58 = load i32, ptr %13, align 8
  %59 = load i32, ptr %3, align 4
  %60 = sub i32 %58, %59
  %61 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %62 = load i32, ptr %61, align 8
  %63 = add i32 %62, 4095
  %64 = sub i32 0, %62
  %65 = and i32 %63, %64
  %66 = call noalias align 64 ptr @__kmalloc(i32 noundef %65, i32 noundef 3520) #11
  %67 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 90
  %68 = load i32, ptr %67, align 4
  %69 = call noalias align 64 ptr @__kmalloc(i32 noundef %68, i32 noundef 3520) #11
  %70 = load i32, ptr %12, align 4
  %71 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 69
  %72 = load i32, ptr %71, align 8
  %73 = add i32 %70, 40
  %74 = add i32 %73, %72
  %75 = load i32, ptr %61, align 8
  %76 = add i32 %75, -1
  %77 = add i32 %76, %74
  %78 = sub i32 0, %75
  %79 = and i32 %77, %78
  %80 = call noalias align 64 ptr @__kmalloc(i32 noundef %79, i32 noundef 3520) #11
  %81 = load i32, ptr %61, align 8
  %82 = add i32 %81, 159
  %83 = sub i32 0, %81
  %84 = and i32 %82, %83
  %85 = call noalias align 64 ptr @__kmalloc(i32 noundef %84, i32 noundef 3520) #11
  %86 = load i32, ptr %61, align 8
  %87 = add i32 %86, 31
  %88 = sub i32 0, %86
  %89 = and i32 %87, %88
  %90 = call noalias align 64 ptr @__kmalloc(i32 noundef %89, i32 noundef 3520) #11
  %91 = icmp ne ptr %66, null
  %92 = icmp ne ptr %69, null
  %93 = select i1 %91, i1 %92, i1 false
  %94 = icmp ne ptr %80, null
  %95 = select i1 %93, i1 %94, i1 false
  %96 = icmp ne ptr %85, null
  %97 = select i1 %95, i1 %96, i1 false
  %98 = icmp ne ptr %90, null
  %99 = select i1 %97, i1 %98, i1 false
  br i1 %99, label %100, label %324

100:                                              ; preds = %57
  %101 = zext i32 %43 to i64
  %102 = load i32, ptr %22, align 8
  %103 = sext i32 %102 to i64
  %104 = mul nsw i64 %103, %101
  %105 = load i32, ptr %5, align 4
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %106, i32 0, i32 2
  %108 = load i32, ptr @ubifs_default_version, align 4
  %109 = icmp sgt i32 %108, 4
  %110 = or i32 %107, 8
  %111 = select i1 %109, i32 %110, i32 %107
  %112 = getelementptr inbounds %struct.ubifs_sb_node, ptr %66, i32 0, i32 27
  store i16 -1, ptr %112, align 64
  %113 = getelementptr inbounds %struct.ubifs_ch, ptr %66, i32 0, i32 4
  store i8 6, ptr %113, align 4
  %114 = getelementptr inbounds %struct.ubifs_sb_node, ptr %66, i32 0, i32 2
  store i8 0, ptr %114, align 2
  %115 = getelementptr inbounds %struct.ubifs_sb_node, ptr %66, i32 0, i32 4
  store i32 %111, ptr %115, align 4
  %116 = load i32, ptr %61, align 8
  %117 = getelementptr inbounds %struct.ubifs_sb_node, ptr %66, i32 0, i32 5
  store i32 %116, ptr %117, align 32
  %118 = load i32, ptr %22, align 8
  %119 = getelementptr inbounds %struct.ubifs_sb_node, ptr %66, i32 0, i32 6
  store i32 %118, ptr %119, align 4
  %120 = load i32, ptr %13, align 8
  %121 = getelementptr inbounds %struct.ubifs_sb_node, ptr %66, i32 0, i32 7
  store i32 %120, ptr %121, align 8
  %122 = load i32, ptr %53, align 4
  %123 = getelementptr inbounds %struct.ubifs_sb_node, ptr %66, i32 0, i32 8
  store i32 %122, ptr %123, align 4
  %124 = getelementptr inbounds %struct.ubifs_sb_node, ptr %66, i32 0, i32 9
  store i64 %104, ptr %124, align 16
  %125 = getelementptr inbounds %struct.ubifs_sb_node, ptr %66, i32 0, i32 10
  store i32 %40, ptr %125, align 8
  %126 = load i32, ptr %4, align 4
  %127 = getelementptr inbounds %struct.ubifs_sb_node, ptr %66, i32 0, i32 11
  store i32 %126, ptr %127, align 4
  %128 = getelementptr inbounds %struct.ubifs_sb_node, ptr %66, i32 0, i32 12
  store i32 %47, ptr %128, align 64
  %129 = getelementptr inbounds %struct.ubifs_sb_node, ptr %66, i32 0, i32 13
  store i32 1, ptr %129, align 4
  %130 = getelementptr inbounds %struct.ubifs_sb_node, ptr %66, i32 0, i32 14
  store i32 8, ptr %130, align 8
  %131 = load i32, ptr %52, align 8
  %132 = getelementptr inbounds %struct.ubifs_sb_node, ptr %66, i32 0, i32 15
  store i32 %131, ptr %132, align 4
  %133 = getelementptr inbounds %struct.ubifs_sb_node, ptr %66, i32 0, i32 16
  store i32 %108, ptr %133, align 16
  %134 = getelementptr inbounds %struct.ubifs_sb_node, ptr %66, i32 0, i32 22
  store i32 1000000000, ptr %134, align 8
  %135 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 193
  %136 = load i16, ptr %135, align 8
  %137 = and i16 %136, 64
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %100
  %140 = lshr i16 %136, 7
  %141 = and i16 %140, 3
  br label %158

142:                                              ; preds = %100
  %143 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @ubifs_compressors, i32 0, i32 3), align 4
  %144 = getelementptr inbounds %struct.ubifs_compressor, ptr %143, i32 0, i32 5
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %158

147:                                              ; preds = %142
  %148 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @ubifs_compressors, i32 0, i32 1), align 4
  %149 = getelementptr inbounds %struct.ubifs_compressor, ptr %148, i32 0, i32 5
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @ubifs_compressors, i32 0, i32 2), align 4
  %154 = getelementptr inbounds %struct.ubifs_compressor, ptr %153, i32 0, i32 5
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  %157 = select i1 %156, i16 0, i16 2
  br label %158

158:                                              ; preds = %152, %147, %142, %139
  %159 = phi i16 [ %141, %139 ], [ 3, %142 ], [ 1, %147 ], [ %157, %152 ]
  %160 = getelementptr inbounds %struct.ubifs_sb_node, ptr %66, i32 0, i32 17
  store i16 %159, ptr %160, align 4
  %161 = getelementptr inbounds %struct.ubifs_sb_node, ptr %66, i32 0, i32 23
  call void @generate_random_uuid(ptr noundef %161) #10
  %162 = load i32, ptr %3, align 4
  %163 = sext i32 %162 to i64
  %164 = load i32, ptr %22, align 8
  %165 = sext i32 %164 to i64
  %166 = mul nsw i64 %165, %163
  %167 = mul i64 %166, 5
  %168 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %167, i32 0) #12, !srcloc !9
  %169 = extractvalue { i64, i32 } %168, 0
  %170 = extractvalue { i64, i32 } %168, 1
  %171 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %167, i64 %169, i32 %170) #12, !srcloc !10
  %172 = extractvalue { i64, i32 } %171, 0
  %173 = lshr i64 %172, 6
  %174 = call i64 @llvm.smin.i64(i64 %173, i64 5242880) #10
  %175 = getelementptr inbounds %struct.ubifs_sb_node, ptr %66, i32 0, i32 21
  store i64 %174, ptr %175, align 32
  %176 = getelementptr inbounds %struct.ubifs_sb_node, ptr %66, i32 0, i32 24
  store i32 0, ptr %176, align 4
  %177 = getelementptr inbounds %struct.ubifs_ch, ptr %69, i32 0, i32 4
  store i8 7, ptr %177, align 4
  %178 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 4
  store i32 3, ptr %178, align 4
  %179 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 1
  store i64 64, ptr %179, align 8
  %180 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 2
  store i64 0, ptr %180, align 32
  %181 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 5
  store i32 %60, ptr %181, align 16
  %182 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 6
  store i32 0, ptr %182, align 4
  %183 = load i32, ptr %12, align 4
  %184 = add i32 %183, 12
  %185 = load i32, ptr %71, align 8
  %186 = add i32 %184, %185
  %187 = add i32 %186, 28
  %188 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 7
  store i32 %187, ptr %188, align 8
  %189 = add i32 %60, 2
  %190 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 8
  store i32 %189, ptr %190, align 4
  %191 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 9
  store i32 %60, ptr %191, align 64
  %192 = load i32, ptr %61, align 8
  %193 = add i32 %186, 27
  %194 = add i32 %193, %192
  %195 = sub i32 0, %192
  %196 = and i32 %194, %195
  %197 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 10
  store i32 %196, ptr %197, align 4
  %198 = add i32 %186, 35
  %199 = and i32 %198, -8
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 11
  store i64 %200, ptr %201, align 8
  %202 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 145
  %203 = load i32, ptr %202, align 4
  %204 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 17
  store i32 %203, ptr %204, align 8
  %205 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 146
  %206 = load i32, ptr %205, align 8
  %207 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 18
  store i32 %206, ptr %207, align 4
  %208 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 147
  %209 = load i32, ptr %208, align 4
  %210 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 19
  store i32 %209, ptr %210, align 64
  %211 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 148
  %212 = load i32, ptr %211, align 8
  %213 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 20
  store i32 %212, ptr %213, align 4
  %214 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 166
  %215 = load i32, ptr %214, align 8
  %216 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 21
  store i32 %215, ptr %216, align 8
  %217 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 167
  %218 = load i32, ptr %217, align 4
  %219 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 22
  store i32 %218, ptr %219, align 4
  %220 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 171
  %221 = load i32, ptr %220, align 4
  %222 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 23
  store i32 %221, ptr %222, align 16
  %223 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 172
  %224 = load i32, ptr %223, align 8
  %225 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 24
  store i32 %224, ptr %225, align 4
  %226 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 25
  store i32 %60, ptr %226, align 8
  %227 = add i32 %162, -2
  %228 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 26
  store i32 %227, ptr %228, align 4
  %229 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 27
  store i32 1, ptr %229, align 32
  %230 = load i32, ptr %13, align 8
  %231 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 28
  store i32 %230, ptr %231, align 4
  %232 = load i32, ptr %12, align 4
  %233 = load i32, ptr %71, align 8
  %234 = load i32, ptr %61, align 8
  %235 = add i32 %232, 39
  %236 = add i32 %235, %233
  %237 = add i32 %236, %234
  %238 = sub i32 0, %234
  %239 = and i32 %237, %238
  %240 = sext i32 %239 to i64
  %241 = add i32 %234, 159
  %242 = and i32 %241, %238
  %243 = zext i32 %242 to i64
  %244 = add nsw i64 %240, %243
  %245 = sub nsw i64 %166, %244
  %246 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 12
  store i64 %245, ptr %246, align 16
  %247 = load i32, ptr %12, align 4
  %248 = add i32 %247, 12
  %249 = load i32, ptr %71, align 8
  %250 = add i32 %248, %249
  %251 = load i32, ptr %61, align 8
  %252 = add i32 %251, 27
  %253 = add i32 %252, %250
  %254 = sub i32 0, %251
  %255 = and i32 %253, %254
  %256 = sext i32 %255 to i64
  %257 = add i32 %251, 159
  %258 = and i32 %257, %254
  %259 = add i32 %258, -160
  %260 = sext i32 %259 to i64
  %261 = add i32 %250, 35
  %262 = and i32 %261, -8
  %263 = sext i32 %262 to i64
  %264 = sub nsw i64 %260, %263
  %265 = add nsw i64 %264, %256
  %266 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 13
  store i64 %265, ptr %266, align 8
  %267 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %268 = load i32, ptr %267, align 4
  %269 = add i32 %268, -1
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 97
  %272 = load i32, ptr %271, align 4
  %273 = sext i32 %272 to i64
  %274 = mul nsw i64 %270, %273
  %275 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 16
  store i64 %274, ptr %275, align 16
  %276 = getelementptr inbounds %struct.ubifs_mst_node, ptr %69, i32 0, i32 14
  store i64 160, ptr %276, align 32
  %277 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 67
  store i32 0, ptr %277, align 8
  %278 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 66
  store ptr @key_r5_hash, ptr %278, align 4
  %279 = getelementptr inbounds %struct.ubifs_ch, ptr %80, i32 0, i32 4
  store i8 9, ptr %279, align 4
  %280 = getelementptr inbounds %struct.ubifs_idx_node, ptr %80, i32 0, i32 1
  store i16 1, ptr %280, align 8
  %281 = getelementptr inbounds %struct.ubifs_idx_node, ptr %80, i32 0, i32 3
  %282 = getelementptr inbounds %struct.ubifs_branch, ptr %281, i32 0, i32 3
  store i32 1, ptr %282, align 8
  %283 = getelementptr %struct.ubifs_idx_node, ptr %80, i32 1, i32 0, i32 3
  store i32 0, ptr %283, align 4
  %284 = add i32 %60, 1
  store i32 %284, ptr %281, align 4
  %285 = getelementptr inbounds %struct.ubifs_idx_node, ptr %80, i32 1, i32 0, i32 2
  store i32 160, ptr %285, align 4
  %286 = getelementptr inbounds %struct.ubifs_ino_node, ptr %85, i32 0, i32 1
  store i32 1, ptr %286, align 8
  %287 = getelementptr %struct.ubifs_ino_node, ptr %85, i32 0, i32 1, i32 4
  store i32 0, ptr %287, align 4
  %288 = getelementptr %struct.ubifs_ino_node, ptr %85, i32 0, i32 1, i32 8
  store i64 0, ptr %288, align 32
  %289 = getelementptr inbounds %struct.ubifs_ch, ptr %85, i32 0, i32 4
  store i8 0, ptr %289, align 4
  %290 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 3
  %291 = load i64, ptr %290, align 8
  %292 = add i64 %291, 1
  store i64 %292, ptr %290, align 8
  %293 = getelementptr inbounds %struct.ubifs_ino_node, ptr %85, i32 0, i32 2
  store i64 %292, ptr %293, align 8
  %294 = getelementptr inbounds %struct.ubifs_ino_node, ptr %85, i32 0, i32 10
  store i32 2, ptr %294, align 4
  call void @ktime_get_coarse_real_ts64(ptr noundef nonnull %6) #10
  %295 = load i64, ptr %6, align 8
  %296 = getelementptr inbounds %struct.ubifs_ino_node, ptr %85, i32 0, i32 4
  store i64 %295, ptr %296, align 8
  %297 = getelementptr inbounds %struct.ubifs_ino_node, ptr %85, i32 0, i32 5
  store i64 %295, ptr %297, align 64
  %298 = getelementptr inbounds %struct.ubifs_ino_node, ptr %85, i32 0, i32 6
  store i64 %295, ptr %298, align 8
  %299 = getelementptr inbounds %struct.ubifs_ino_node, ptr %85, i32 0, i32 7
  store i32 0, ptr %299, align 16
  %300 = getelementptr inbounds %struct.ubifs_ino_node, ptr %85, i32 0, i32 8
  store i32 0, ptr %300, align 4
  %301 = getelementptr inbounds %struct.ubifs_ino_node, ptr %85, i32 0, i32 9
  store i32 0, ptr %301, align 8
  %302 = getelementptr inbounds %struct.ubifs_ino_node, ptr %85, i32 0, i32 13
  store i32 16877, ptr %302, align 8
  %303 = getelementptr inbounds %struct.ubifs_ino_node, ptr %85, i32 0, i32 3
  store i64 160, ptr %303, align 16
  %304 = getelementptr inbounds %struct.ubifs_ino_node, ptr %85, i32 0, i32 14
  store i32 1, ptr %304, align 4
  %305 = getelementptr inbounds %struct.ubifs_ch, ptr %90, i32 0, i32 4
  store i8 10, ptr %305, align 4
  %306 = call i32 @ubifs_write_node_hmac(ptr noundef %0, ptr noundef nonnull %66, i32 noundef 4096, i32 noundef 0, i32 noundef 0, i32 noundef 128) #10
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %324

308:                                              ; preds = %158
  %309 = call i32 @ubifs_write_node(ptr noundef %0, ptr noundef nonnull %85, i32 noundef 160, i32 noundef %284, i32 noundef 0) #10
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %324

311:                                              ; preds = %308
  %312 = call i32 @ubifs_write_node(ptr noundef %0, ptr noundef nonnull %80, i32 noundef %74, i32 noundef %60, i32 noundef 0) #10
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %324

314:                                              ; preds = %311
  %315 = call i32 @ubifs_write_node_hmac(ptr noundef %0, ptr noundef nonnull %69, i32 noundef 512, i32 noundef 1, i32 noundef 0, i32 noundef 296) #10
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %324

317:                                              ; preds = %314
  %318 = call i32 @ubifs_write_node_hmac(ptr noundef %0, ptr noundef nonnull %69, i32 noundef 512, i32 noundef 2, i32 noundef 0, i32 noundef 296) #10
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %317
  %321 = call i32 @ubifs_write_node(ptr noundef %0, ptr noundef nonnull %90, i32 noundef 32, i32 noundef 3, i32 noundef 0) #10
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %320
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %0, ptr noundef nonnull @.str.12) #10
  br label %324

324:                                              ; preds = %323, %320, %317, %314, %311, %308, %158, %57
  %325 = phi i32 [ %306, %158 ], [ %309, %308 ], [ %312, %311 ], [ %315, %314 ], [ %318, %317 ], [ %321, %320 ], [ 0, %323 ], [ -12, %57 ]
  call void @kfree(ptr noundef %66) #10
  call void @kfree(ptr noundef %69) #10
  call void @kfree(ptr noundef %80) #10
  call void @kfree(ptr noundef %85) #10
  call void @kfree(ptr noundef %90) #10
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %531

327:                                              ; preds = %324, %1
  %328 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %329 = load i32, ptr %328, align 8
  %330 = add i32 %329, 4095
  %331 = sub i32 0, %329
  %332 = and i32 %330, %331
  %333 = call noalias align 64 ptr @__kmalloc(i32 noundef %332, i32 noundef 3136) #11
  %334 = icmp eq ptr %333, null
  br i1 %334, label %343, label %335

335:                                              ; preds = %327
  %336 = call i32 @ubifs_read_node(ptr noundef %0, ptr noundef nonnull %333, i32 noundef 6, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %340, label %338

338:                                              ; preds = %335
  call void @kfree(ptr noundef nonnull %333) #10
  %339 = inttoptr i32 %336 to ptr
  br label %340

340:                                              ; preds = %338, %335
  %341 = phi ptr [ %339, %338 ], [ %333, %335 ]
  %342 = icmp ugt ptr %341, inttoptr (i32 -4096 to ptr)
  br i1 %342, label %343, label %346

343:                                              ; preds = %340, %327
  %344 = phi ptr [ %341, %340 ], [ inttoptr (i32 -12 to ptr), %327 ]
  %345 = ptrtoint ptr %344 to i32
  br label %531

346:                                              ; preds = %340
  %347 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 1
  store ptr %341, ptr %347, align 4
  %348 = getelementptr inbounds %struct.ubifs_sb_node, ptr %341, i32 0, i32 16
  %349 = load i32, ptr %348, align 1
  %350 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 6
  store i32 %349, ptr %350, align 4
  %351 = getelementptr inbounds %struct.ubifs_sb_node, ptr %341, i32 0, i32 24
  %352 = load i32, ptr %351, align 1
  %353 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 7
  store i32 %352, ptr %353, align 8
  %354 = icmp sgt i32 %349, 5
  br i1 %354, label %355, label %379

355:                                              ; preds = %346
  %356 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 81
  %357 = load i8, ptr %356, align 8
  %358 = and i8 %357, 3
  %359 = icmp eq i8 %358, 1
  br i1 %359, label %360, label %362, !prof !11

360:                                              ; preds = %355
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 661) #10
  %361 = load i8, ptr %356, align 8
  br label %362

362:                                              ; preds = %360, %355
  %363 = phi i8 [ %361, %360 ], [ %357, %355 ]
  %364 = and i8 %363, 2
  %365 = icmp eq i8 %364, 0
  %366 = load i32, ptr %353, align 8
  %367 = icmp sgt i32 %366, 0
  %368 = select i1 %365, i1 true, i1 %367
  br i1 %368, label %369, label %374

369:                                              ; preds = %362
  %370 = load i32, ptr %350, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %370, i32 noundef %366, i32 noundef 5, i32 noundef 0) #10
  %371 = load i32, ptr %353, align 8
  %372 = icmp slt i32 %371, 1
  br i1 %372, label %373, label %531

373:                                              ; preds = %369
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %0, ptr noundef nonnull @.str.3) #10
  br label %531

374:                                              ; preds = %362
  %375 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %376 = load i16, ptr %375, align 4
  %377 = or i16 %376, 256
  store i16 %377, ptr %375, align 4
  %378 = load i32, ptr %350, align 4
  br label %379

379:                                              ; preds = %374, %346
  %380 = phi i32 [ %378, %374 ], [ %349, %346 ]
  %381 = icmp slt i32 %380, 3
  br i1 %381, label %382, label %383

382:                                              ; preds = %379
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %380) #10
  br label %531

383:                                              ; preds = %379
  %384 = getelementptr inbounds %struct.ubifs_sb_node, ptr %341, i32 0, i32 2
  %385 = load i8, ptr %384, align 1
  switch i8 %385, label %391 [
    i8 0, label %387
    i8 1, label %386
  ]

386:                                              ; preds = %383
  br label %387

387:                                              ; preds = %386, %383
  %388 = phi ptr [ @key_test_hash, %386 ], [ @key_r5_hash, %383 ]
  %389 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 66
  store ptr %388, ptr %389, align 4
  %390 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 65
  store i8 %385, ptr %390, align 8
  br label %391

391:                                              ; preds = %387, %383
  %392 = getelementptr inbounds %struct.ubifs_sb_node, ptr %341, i32 0, i32 3
  %393 = load i8, ptr %392, align 1
  %394 = zext i8 %393 to i32
  %395 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 67
  store i32 %394, ptr %395, align 8
  %396 = icmp eq i8 %393, 0
  br i1 %396, label %397, label %442

397:                                              ; preds = %391
  %398 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 68
  store i32 8, ptr %398, align 4
  %399 = getelementptr inbounds %struct.ubifs_sb_node, ptr %341, i32 0, i32 7
  %400 = load i32, ptr %399, align 1
  %401 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  store i32 %400, ptr %401, align 8
  %402 = getelementptr inbounds %struct.ubifs_sb_node, ptr %341, i32 0, i32 8
  %403 = load i32, ptr %402, align 1
  %404 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 80
  store i32 %403, ptr %404, align 4
  %405 = getelementptr inbounds %struct.ubifs_sb_node, ptr %341, i32 0, i32 9
  %406 = load i64, ptr %405, align 1
  %407 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 20
  store i64 %406, ptr %407, align 8
  %408 = getelementptr inbounds %struct.ubifs_sb_node, ptr %341, i32 0, i32 10
  %409 = load i32, ptr %408, align 1
  %410 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 53
  store i32 %409, ptr %410, align 8
  %411 = getelementptr inbounds %struct.ubifs_sb_node, ptr %341, i32 0, i32 11
  %412 = load i32, ptr %411, align 1
  %413 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 56
  store i32 %412, ptr %413, align 4
  %414 = getelementptr inbounds %struct.ubifs_sb_node, ptr %341, i32 0, i32 12
  %415 = load i32, ptr %414, align 1
  %416 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 59
  store i32 %415, ptr %416, align 8
  %417 = getelementptr inbounds %struct.ubifs_sb_node, ptr %341, i32 0, i32 13
  %418 = load i32, ptr %417, align 1
  %419 = add i32 %418, 2
  %420 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 18
  store i32 %419, ptr %420, align 4
  %421 = getelementptr inbounds %struct.ubifs_sb_node, ptr %341, i32 0, i32 14
  %422 = load i32, ptr %421, align 1
  %423 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 70
  store i32 %422, ptr %423, align 4
  %424 = getelementptr inbounds %struct.ubifs_sb_node, ptr %341, i32 0, i32 15
  %425 = load i32, ptr %424, align 1
  %426 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 170
  store i32 %425, ptr %426, align 8
  %427 = getelementptr inbounds %struct.ubifs_sb_node, ptr %341, i32 0, i32 21
  %428 = load i64, ptr %427, align 1
  %429 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 175
  store i64 %428, ptr %429, align 8
  %430 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 177
  %431 = getelementptr inbounds %struct.ubifs_sb_node, ptr %341, i32 0, i32 19
  %432 = load i32, ptr %431, align 1
  store i32 %432, ptr %430, align 8
  %433 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 178
  %434 = getelementptr inbounds %struct.ubifs_sb_node, ptr %341, i32 0, i32 20
  %435 = load i32, ptr %434, align 1
  store i32 %435, ptr %433, align 4
  %436 = getelementptr inbounds %struct.ubifs_sb_node, ptr %341, i32 0, i32 4
  %437 = load i32, ptr %436, align 1
  %438 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 193
  %439 = load i16, ptr %438, align 8
  %440 = and i16 %439, 64
  %441 = icmp eq i16 %440, 0
  br i1 %441, label %443, label %452

442:                                              ; preds = %391
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.5) #10
  br label %531

443:                                              ; preds = %397
  %444 = getelementptr inbounds %struct.ubifs_sb_node, ptr %341, i32 0, i32 17
  %445 = load i16, ptr %444, align 1
  %446 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %447 = load i16, ptr %446, align 4
  %448 = shl i16 %445, 6
  %449 = and i16 %448, 192
  %450 = and i16 %447, -193
  %451 = or i16 %450, %449
  store i16 %451, ptr %446, align 4
  br label %452

452:                                              ; preds = %443, %397
  %453 = getelementptr inbounds %struct.ubifs_sb_node, ptr %341, i32 0, i32 22
  %454 = load i32, ptr %453, align 1
  %455 = load ptr, ptr %0, align 8
  %456 = getelementptr inbounds %struct.super_block, ptr %455, i32 0, i32 28
  store i32 %454, ptr %456, align 32
  %457 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 8
  %458 = getelementptr inbounds %struct.ubifs_sb_node, ptr %341, i32 0, i32 23
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %457, ptr noundef align 1 dereferenceable(16) %458, i32 16, i1 false)
  %459 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %460 = trunc i32 %437 to i16
  %461 = lshr i16 %460, 1
  %462 = load i16, ptr %459, align 4
  %463 = and i16 %462, -16
  %464 = and i16 %461, 15
  %465 = or i16 %464, %463
  store i16 %465, ptr %459, align 4
  %466 = load i32, ptr %436, align 1
  %467 = and i32 %466, 32
  %468 = icmp ne i32 %467, 0
  %469 = and i16 %462, 2048
  %470 = icmp eq i16 %469, 0
  %471 = select i1 %470, i1 true, i1 %468
  br i1 %471, label %473, label %472

472:                                              ; preds = %452
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.15) #10
  br label %531

473:                                              ; preds = %452
  %474 = select i1 %470, i1 %468, i1 false
  br i1 %474, label %475, label %476

475:                                              ; preds = %473
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.16) #10
  br label %531

476:                                              ; preds = %473
  %477 = select i1 %470, ptr @.str.19, ptr @.str.18
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull %477) #10
  %478 = load i16, ptr %459, align 4
  %479 = and i16 %478, 2048
  %480 = icmp eq i16 %479, 0
  br i1 %480, label %481, label %531

481:                                              ; preds = %476
  %482 = and i32 %437, -63
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %485, label %484

484:                                              ; preds = %481
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %482) #10
  br label %531

485:                                              ; preds = %481
  %486 = and i16 %478, 8
  %487 = icmp eq i16 %486, 0
  br i1 %487, label %489, label %488

488:                                              ; preds = %485
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.7) #10
  br label %531

489:                                              ; preds = %485
  %490 = load i32, ptr %401, align 8
  %491 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 102, i32 2
  %492 = load i32, ptr %491, align 8
  %493 = icmp slt i32 %490, %492
  br i1 %493, label %494, label %502

494:                                              ; preds = %489
  %495 = load i32, ptr %404, align 4
  %496 = icmp slt i32 %490, %495
  br i1 %496, label %497, label %502

497:                                              ; preds = %494
  %498 = call i32 @llvm.smin.i32(i32 %495, i32 %492)
  store i32 %498, ptr %401, align 8
  store i32 %498, ptr %399, align 1
  %499 = load i16, ptr %459, align 4
  %500 = or i16 %499, 4096
  store i16 %500, ptr %459, align 4
  %501 = load i32, ptr %401, align 8
  br label %502

502:                                              ; preds = %497, %494, %489
  %503 = phi i32 [ %501, %497 ], [ %490, %494 ], [ %490, %489 ]
  %504 = load i32, ptr %410, align 8
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %507 = load i32, ptr %506, align 8
  %508 = sext i32 %507 to i64
  %509 = mul nsw i64 %508, %505
  %510 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 54
  store i64 %509, ptr %510, align 8
  %511 = add i32 %504, 2
  %512 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 55
  store i32 %511, ptr %512, align 8
  %513 = add i32 %504, 3
  %514 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  store i32 %513, ptr %514, align 8
  %515 = load i32, ptr %413, align 4
  %516 = add i32 %515, %513
  %517 = add i32 %516, -1
  %518 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 58
  store i32 %517, ptr %518, align 4
  %519 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 60
  store i32 %516, ptr %519, align 4
  %520 = load i32, ptr %416, align 8
  %521 = add i32 %517, %520
  %522 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 61
  store i32 %521, ptr %522, align 8
  %523 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %524 = add i32 %504, %515
  %525 = add i32 %524, %520
  %526 = add i32 %525, 3
  %527 = sub i32 -3, %525
  %528 = add i32 %527, %503
  store i32 %528, ptr %523, align 4
  %529 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 63
  store i32 %526, ptr %529, align 8
  %530 = call fastcc i32 @validate_sb(ptr noundef %0, ptr noundef %341)
  br label %531

531:                                              ; preds = %502, %488, %484, %476, %475, %472, %442, %382, %373, %369, %343, %324, %56
  %532 = phi i32 [ %345, %343 ], [ %325, %324 ], [ -30, %373 ], [ -22, %382 ], [ -22, %484 ], [ -22, %488 ], [ %530, %502 ], [ -22, %442 ], [ -22, %369 ], [ %54, %56 ], [ -95, %476 ], [ -22, %472 ], [ -22, %475 ]
  ret i32 %532
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @key_r5_hash(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %21, label %4

4:                                                ; preds = %4, %2
  %5 = phi ptr [ %16, %4 ], [ %0, %2 ]
  %6 = phi i32 [ %15, %4 ], [ 0, %2 ]
  %7 = phi i32 [ %8, %4 ], [ %1, %2 ]
  %8 = add i32 %7, -1
  %9 = load i8, ptr %5, align 1
  %10 = sext i8 %9 to i32
  %11 = shl nsw i32 %10, 4
  %12 = add i32 %11, %6
  %13 = ashr i32 %10, 4
  %14 = add i32 %12, %13
  %15 = mul i32 %14, 11
  %16 = getelementptr i8, ptr %5, i32 1
  %17 = icmp eq i32 %8, 0
  br i1 %17, label %18, label %4

18:                                               ; preds = %4
  %19 = and i32 %15, 536870911
  %20 = icmp ult i32 %19, 3
  br i1 %20, label %21, label %24, !prof !11

21:                                               ; preds = %18, %2
  %22 = phi i32 [ %19, %18 ], [ 0, %2 ]
  %23 = add nuw nsw i32 %22, 3
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i32 [ %23, %21 ], [ %19, %18 ]
  ret i32 %25
}

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @key_test_hash(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 0, ptr %3, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %1, i32 4)
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %3, ptr align 1 %0, i32 %4, i1 false)
  %5 = load i32, ptr %3, align 4
  %6 = and i32 %5, 536870911
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %8, label %10, !prof !11

8:                                                ; preds = %2
  %9 = add nuw nsw i32 %6, 3
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ %6, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  ret i32 %11
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @validate_sb(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 66
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %131, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 3
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %131

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 1
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %12, i32 noundef %14) #10
  br label %131

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 6
  %19 = load i32, ptr %18, align 1
  %20 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %19, i32 noundef %21) #10
  br label %131

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 53
  %26 = load i32, ptr %25, align 8
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %131, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 56
  %30 = load i32, ptr %29, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %131, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 59
  %34 = load i32, ptr %33, align 8
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %131, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %38 = load i32, ptr %37, align 4
  %39 = icmp slt i32 %38, 9
  br i1 %39, label %131, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 18
  %42 = load i32, ptr %41, align 4
  %43 = add nuw i32 %30, %26
  %44 = add i32 %43, 9
  %45 = add i32 %44, %34
  %46 = add i32 %45, %42
  %47 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  %48 = load i32, ptr %47, align 8
  %49 = icmp slt i32 %48, %46
  %50 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 102, i32 2
  %51 = load i32, ptr %50, align 8
  %52 = icmp sgt i32 %48, %51
  %53 = select i1 %49, i1 true, i1 %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %48, i32 noundef %51, i32 noundef %46) #10
  br label %131

55:                                               ; preds = %40
  %56 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 80
  %57 = load i32, ptr %56, align 4
  %58 = icmp slt i32 %57, %48
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %57, i32 noundef %48) #10
  br label %131

60:                                               ; preds = %55
  %61 = sext i32 %19 to i64
  %62 = mul nsw i64 %61, 3
  %63 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 20
  %64 = load i64, ptr %63, align 8
  %65 = icmp slt i64 %64, %62
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.25, i64 noundef %64, i64 noundef %62) #10
  br label %131

67:                                               ; preds = %60
  %68 = zext i32 %38 to i64
  %69 = mul nsw i64 %68, %61
  %70 = icmp sgt i64 %64, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.26, i64 noundef %64, i64 noundef %69) #10
  br label %131

72:                                               ; preds = %67
  %73 = icmp eq i32 %42, 3
  br i1 %73, label %74, label %131

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 70
  %76 = load i32, ptr %75, align 4
  %77 = icmp slt i32 %76, 3
  br i1 %77, label %131, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 68
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, 12
  %82 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 69
  %83 = load i32, ptr %82, align 8
  %84 = add i32 %81, %83
  %85 = mul i32 %84, %76
  %86 = add i32 %85, 28
  %87 = icmp sgt i32 %86, %19
  br i1 %87, label %131, label %88

88:                                               ; preds = %78
  %89 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 170
  %90 = load i32, ptr %89, align 8
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %131, label %92

92:                                               ; preds = %88
  %93 = icmp ugt i32 %90, 256
  br i1 %93, label %94, label %99

94:                                               ; preds = %92
  %95 = add i32 %43, %34
  %96 = sub i32 -3, %95
  %97 = add i32 %96, %57
  %98 = icmp sgt i32 %90, %97
  br i1 %98, label %131, label %99

99:                                               ; preds = %94, %92
  %100 = add i32 %43, 3
  %101 = add i32 %100, %34
  %102 = add i32 %101, %38
  %103 = icmp eq i32 %102, %48
  br i1 %103, label %104, label %131

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %106 = load i16, ptr %105, align 4
  %107 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 175
  %108 = load i64, ptr %107, align 8
  %109 = icmp slt i64 %108, 0
  %110 = icmp slt i64 %69, %108
  %111 = select i1 %109, i1 true, i1 %110
  br i1 %111, label %131, label %112

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 22
  %114 = load i32, ptr %113, align 1
  %115 = add i32 %114, -1000000001
  %116 = icmp ult i32 %115, -1000000000
  br i1 %116, label %131, label %117

117:                                              ; preds = %112
  %118 = and i16 %106, 4
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 6
  %122 = load i32, ptr %121, align 4
  %123 = icmp sgt i32 %122, 4
  br i1 %123, label %131, label %124

124:                                              ; preds = %120, %117
  %125 = and i16 %106, 8
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %138, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 6
  %129 = load i32, ptr %128, align 4
  %130 = icmp slt i32 %129, 5
  br i1 %130, label %131, label %138

131:                                              ; preds = %127, %120, %112, %104, %99, %94, %88, %78, %74, %72, %71, %66, %59, %54, %36, %32, %28, %24, %23, %16, %6, %2
  %132 = phi i32 [ 1, %16 ], [ 1, %23 ], [ 1, %54 ], [ 1, %59 ], [ 1, %66 ], [ 1, %71 ], [ 2, %2 ], [ 3, %6 ], [ 4, %36 ], [ 4, %32 ], [ 4, %28 ], [ 4, %24 ], [ 9, %72 ], [ 10, %78 ], [ 10, %74 ], [ 11, %94 ], [ 11, %88 ], [ 12, %99 ], [ 14, %104 ], [ 15, %112 ], [ 16, %120 ], [ 17, %127 ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %132) #10
  %133 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %134 = load i32, ptr %133, align 8
  %135 = add i32 %134, 4095
  %136 = sub i32 0, %134
  %137 = and i32 %135, %136
  tail call void @ubifs_dump_node(ptr noundef %0, ptr noundef %1, i32 noundef %137) #10
  br label %138

138:                                              ; preds = %131, %127, %124
  %139 = phi i32 [ -22, %131 ], [ 0, %127 ], [ 0, %124 ]
  ret i32 %139
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_fixup_free_space(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 2
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %1
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 911) #10
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 81
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14, !prof !12

14:                                               ; preds = %9
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 912) #10
  br label %15

15:                                               ; preds = %14, %9
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %0, ptr noundef nonnull @.str.10) #10
  %16 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 144
  tail call void @mutex_lock(ptr noundef %16) #10
  %17 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 47
  %18 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 90
  %19 = load i32, ptr %17, align 8
  %20 = load i32, ptr %18, align 4
  %21 = add i32 %20, %19
  %22 = tail call fastcc i32 @fixup_leb(ptr noundef %0, i32 noundef 1, i32 noundef %21) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %146

24:                                               ; preds = %15
  %25 = load i32, ptr %17, align 8
  %26 = load i32, ptr %18, align 4
  %27 = add i32 %26, %25
  %28 = tail call fastcc i32 @fixup_leb(ptr noundef %0, i32 noundef 2, i32 noundef %27) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %146

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 9
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  %34 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 55
  %35 = load i32, ptr %34, align 8
  %36 = icmp sgt i32 %33, %35
  %37 = select i1 %36, i32 3, i32 %33
  %38 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 11
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %60, label %41

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  br label %43

43:                                               ; preds = %51, %41
  %44 = phi i32 [ %37, %41 ], [ %55, %51 ]
  %45 = load i32, ptr %42, align 8
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %48, label %47, !prof !12

47:                                               ; preds = %43
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 801) #10
  br label %48

48:                                               ; preds = %47, %43
  %49 = tail call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %44) #10
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %146

51:                                               ; preds = %48
  %52 = add i32 %44, 1
  %53 = load i32, ptr %34, align 8
  %54 = icmp sgt i32 %52, %53
  %55 = select i1 %54, i32 3, i32 %52
  %56 = load i32, ptr %38, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %43

58:                                               ; preds = %51
  %59 = load i32, ptr %31, align 4
  br label %60

60:                                               ; preds = %58, %30
  %61 = phi i32 [ %59, %58 ], [ %32, %30 ]
  %62 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %63 = load i32, ptr %62, align 8
  %64 = add i32 %63, 31
  %65 = sub i32 0, %63
  %66 = and i32 %64, %65
  %67 = tail call fastcc i32 @fixup_leb(ptr noundef %0, i32 noundef %61, i32 noundef %66) #10
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %146

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %71 = load i32, ptr %70, align 8
  %72 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 58
  %73 = load i32, ptr %72, align 4
  %74 = icmp sgt i32 %71, %73
  br i1 %74, label %100, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  %77 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  br label %78

78:                                               ; preds = %98, %75
  %79 = phi i32 [ %73, %75 ], [ %95, %98 ]
  %80 = phi i32 [ %71, %75 ], [ %99, %98 ]
  %81 = phi i32 [ %71, %75 ], [ %96, %98 ]
  %82 = load ptr, ptr %76, align 8
  %83 = sub i32 %81, %80
  %84 = getelementptr %struct.ubifs_lpt_lprops, ptr %82, i32 %83
  %85 = load i32, ptr %84, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %78
  %88 = load i32, ptr %77, align 8
  %89 = sub i32 %88, %85
  %90 = tail call fastcc i32 @fixup_leb(ptr noundef %0, i32 noundef %81, i32 noundef %89) #10
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %146

92:                                               ; preds = %87
  %93 = load i32, ptr %72, align 4
  br label %94

94:                                               ; preds = %92, %78
  %95 = phi i32 [ %93, %92 ], [ %79, %78 ]
  %96 = add i32 %81, 1
  %97 = icmp sgt i32 %96, %95
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = load i32, ptr %70, align 8
  br label %78

100:                                              ; preds = %94, %69
  %101 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 60
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 61
  %104 = load i32, ptr %103, align 8
  %105 = icmp sgt i32 %102, %104
  br i1 %105, label %120, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  br label %112

108:                                              ; preds = %117
  %109 = add i32 %113, 1
  %110 = load i32, ptr %103, align 8
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %120, label %112

112:                                              ; preds = %108, %106
  %113 = phi i32 [ %102, %106 ], [ %109, %108 ]
  %114 = load i32, ptr %107, align 8
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %117, label %116, !prof !12

116:                                              ; preds = %112
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 801) #10
  br label %117

117:                                              ; preds = %116, %112
  %118 = tail call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %113) #10
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %108, label %146

120:                                              ; preds = %108, %100
  %121 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 63
  %122 = load i32, ptr %121, align 8
  %123 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  %124 = load i32, ptr %123, align 8
  %125 = icmp slt i32 %122, %124
  br i1 %125, label %126, label %146

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  br label %128

128:                                              ; preds = %142, %126
  %129 = phi i32 [ %122, %126 ], [ %143, %142 ]
  %130 = tail call ptr @ubifs_lpt_lookup(ptr noundef %0, i32 noundef %129) #10
  %131 = icmp ugt ptr %130, inttoptr (i32 -4096 to ptr)
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = ptrtoint ptr %130 to i32
  br label %146

134:                                              ; preds = %128
  %135 = load i32, ptr %130, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load i32, ptr %127, align 8
  %139 = sub i32 %138, %135
  %140 = tail call fastcc i32 @fixup_leb(ptr noundef %0, i32 noundef %129, i32 noundef %139) #10
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137, %134
  %143 = add nsw i32 %129, 1
  %144 = load i32, ptr %123, align 8
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %128, label %146

146:                                              ; preds = %142, %137, %132, %120, %117, %87, %60, %48, %24, %15
  %147 = phi i32 [ %67, %60 ], [ %133, %132 ], [ 0, %120 ], [ %22, %15 ], [ %28, %24 ], [ 0, %142 ], [ %140, %137 ], [ %118, %117 ], [ %90, %87 ], [ %49, %48 ]
  %148 = tail call zeroext i1 @mutex_is_locked(ptr noundef %16) #10
  br i1 %148, label %150, label %149, !prof !12

149:                                              ; preds = %146
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.14, i32 noundef 256) #10
  br label %150

150:                                              ; preds = %149, %146
  %151 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86
  %152 = load i32, ptr %151, align 8
  %153 = icmp sgt i32 %152, -1
  br i1 %153, label %154, label %158, !prof !12

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %156 = load i32, ptr %155, align 4
  %157 = icmp sgt i32 %152, %156
  br i1 %157, label %158, label %159, !prof !11

158:                                              ; preds = %154, %150
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.14, i32 noundef 258) #10
  br label %159

159:                                              ; preds = %158, %154
  tail call void @mutex_unlock(ptr noundef %16) #10
  %160 = icmp eq i32 %147, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %159
  %162 = load i16, ptr %4, align 4
  %163 = and i16 %162, -3
  store i16 %163, ptr %4, align 4
  %164 = getelementptr inbounds %struct.ubifs_sb_node, ptr %3, i32 0, i32 4
  %165 = load i32, ptr %164, align 1
  %166 = and i32 %165, -5
  store i32 %166, ptr %164, align 1
  %167 = load i16, ptr %4, align 4
  %168 = or i16 %167, 4096
  store i16 %168, ptr %4, align 4
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %0, ptr noundef nonnull @.str.11) #10
  br label %169

169:                                              ; preds = %161, %159
  ret i32 %147
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ubifs_enable_encryption(ptr nocapture noundef readnone %0) local_unnamed_addr #6 {
  ret i32 -95
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_create_dflt_lpt(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generate_random_uuid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_coarse_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_write_node_hmac(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_write_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_read_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fixup_leb(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %5, label %6, !prof !11

5:                                                ; preds = %3
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 799) #10
  br label %6

6:                                                ; preds = %5, %3
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %8 = load i32, ptr %7, align 8
  %9 = srem i32 %2, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !12

11:                                               ; preds = %6
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 800) #10
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %14 = load i32, ptr %13, align 8
  %15 = icmp sgt i32 %14, %2
  br i1 %15, label %17, label %16, !prof !12

16:                                               ; preds = %12
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 801) #10
  br label %17

17:                                               ; preds = %16, %12
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = tail call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %1) #10
  br label %29

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 122
  %23 = load ptr, ptr %22, align 8
  %24 = tail call i32 @ubifs_leb_read(ptr noundef %0, i32 noundef %1, ptr noundef %23, i32 noundef 0, i32 noundef %2, i32 noundef 1) #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load ptr, ptr %22, align 8
  %28 = tail call i32 @ubifs_leb_change(ptr noundef %0, i32 noundef %1, ptr noundef %27, i32 noundef %2) #10
  br label %29

29:                                               ; preds = %26, %21, %19
  %30 = phi i32 [ %20, %19 ], [ %28, %26 ], [ %24, %21 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_lpt_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readnone }

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
!9 = !{i64 268495, i64 268522, i64 268544, i64 268572}
!10 = !{i64 268903, i64 268930, i64 268963, i64 268984, i64 269011, i64 269037}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 1}
