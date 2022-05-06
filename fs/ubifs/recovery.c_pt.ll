; ModuleID = '/llk/IR/fs/ubifs/recovery.c_pt.bc'
source_filename = "../fs/ubifs/recovery.c"
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
%struct.ubifs_mst_node = type { %struct.ubifs_ch, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], [64 x i8], [64 x i8], [152 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_jhead = type { %struct.ubifs_wbuf, %struct.list_head, i8, ptr }
%struct.ubifs_wbuf = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.spinlock, %struct.hrtimer, i8, i32, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ubifs_scan_leb = type { i32, i32, %struct.list_head, i32, ptr }
%struct.ubifs_scan_node = type { %struct.list_head, %union.ubifs_key, i64, i32, i32, i32, ptr }
%struct.ubifs_unclean_leb = type { %struct.list_head, i32, i32 }
%struct.ubifs_cs_node = type { %struct.ubifs_ch, i64 }
%struct.ubifs_lprops = type { i32, i32, i32, i32, %union.anon.75 }
%union.anon.75 = type { %struct.list_head }
%struct.size_entry = type { %struct.rb_node, i32, i64, i64, i32, ptr }
%struct.ubifs_ino_node = type { %struct.ubifs_ch, [16 x i8], i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i16, [26 x i8], [0 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.38, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.39, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.40, ptr, %struct.address_space, %struct.list_head, %union.anon.41, i32, i32, ptr, ptr }
%union.anon.38 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.39 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.40 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.41 = type { ptr }
%struct.ubifs_inode = type { %struct.inode, i64, i64, i32, i32, i32, i8, %struct.mutex, %struct.rw_semaphore, %struct.spinlock, i64, i64, i32, i32, i32, i32, ptr }

@.str = private unnamed_addr constant [34 x i8] c"recovered master node from LEB %d\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to recover master node\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"dumping first master node\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"dumping second master node\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"len >= 8\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"fs/ubifs/recovery.c\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"unexpected return value %d\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"corrupt empty space LEB %d:%d, corruption starts at %d\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"corruption %d\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"LEB %d scanning failed\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"unrecoverable log corruption in LEB %d\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"!c->ro_mount || c->remounting_rw\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"!(lp.flags & LPROPS_INDEX)\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"lp.free + lp.dirty >= wbuf->offs\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"GC failed, error %d\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"err == LEB_RETAINED\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"!(c->ro_mount && in_place)\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.17 = private unnamed_addr constant [13 x i8] c"!(*offs & 7)\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Not a valid node\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"Not a CS node, type is %d\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"CS node cmt_no %llu != current cmt_no %llu\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"failed to get CS sqnum\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"unexpected empty space at %d:%d\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"could not find an empty LEB\00", align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"inode %lu failed to fix size %lld -> %lld error %d\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"!e->inode\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_recover_master_node(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store ptr null, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store ptr null, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store ptr null, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store ptr null, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 90
  %9 = load i32, ptr %8, align 4
  %10 = call fastcc i32 @get_master_node(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %4)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %112

12:                                               ; preds = %1
  %13 = call fastcc i32 @get_master_node(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef nonnull %5)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %112

15:                                               ; preds = %12
  %16 = load ptr, ptr %6, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %59, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %2, align 4
  %20 = ptrtoint ptr %16 to i32
  %21 = ptrtoint ptr %19 to i32
  %22 = sub i32 %20, %21
  %23 = getelementptr inbounds %struct.ubifs_mst_node, ptr %16, i32 0, i32 3
  %24 = load i32, ptr %23, align 1
  %25 = and i32 %24, 4
  %26 = icmp ne i32 %25, 0
  %27 = icmp eq ptr %16, %19
  %28 = select i1 %26, i1 %27, i1 false
  %29 = xor i1 %28, true
  %30 = load ptr, ptr %4, align 4
  %31 = icmp ne ptr %30, null
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %33, label %73

33:                                               ; preds = %18
  %34 = load ptr, ptr %7, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %56, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %3, align 4
  %38 = ptrtoint ptr %34 to i32
  %39 = ptrtoint ptr %37 to i32
  %40 = sub i32 %38, %39
  %41 = icmp eq i32 %22, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = tail call i32 @ubifs_compare_master_node(ptr noundef %0, ptr noundef nonnull %16, ptr noundef nonnull %34) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %73, label %112

45:                                               ; preds = %36
  %46 = add i32 %40, %9
  %47 = icmp eq i32 %46, %22
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br i1 %31, label %112, label %73

49:                                               ; preds = %45
  br i1 %27, label %50, label %112

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %52 = load i32, ptr %51, align 8
  %53 = sub i32 %52, %46
  %54 = icmp sge i32 %53, %9
  %55 = select i1 %54, i1 true, i1 %31
  br i1 %55, label %112, label %73

56:                                               ; preds = %33
  %57 = icmp ne ptr %16, %19
  %58 = select i1 %57, i1 true, i1 %31
  br i1 %58, label %112, label %73

59:                                               ; preds = %15
  %60 = load ptr, ptr %7, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.1) #9
  br label %135

63:                                               ; preds = %59
  %64 = load ptr, ptr %3, align 4
  %65 = ptrtoint ptr %60 to i32
  %66 = ptrtoint ptr %64 to i32
  %67 = shl i32 %9, 1
  %68 = add i32 %67, %65
  %69 = sub i32 %68, %66
  %70 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %71 = load i32, ptr %70, align 8
  %72 = icmp sgt i32 %69, %71
  br i1 %72, label %73, label %112

73:                                               ; preds = %63, %56, %50, %48, %42, %18
  %74 = phi ptr [ %16, %18 ], [ %16, %48 ], [ %16, %50 ], [ %16, %56 ], [ %60, %63 ], [ %16, %42 ]
  %75 = icmp eq ptr %74, %16
  %76 = select i1 %75, i32 1, i32 2
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %76) #9
  %77 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 46
  %78 = load ptr, ptr %77, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(512) %78, ptr noundef nonnull align 1 dereferenceable(512) %74, i32 512, i1 false)
  %79 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 81
  %80 = load i8, ptr %79, align 8
  %81 = and i8 %80, 2
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %73
  %84 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %9, i32 noundef 3264) #10
  %85 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 191
  store ptr %84, ptr %85, align 8
  %86 = icmp eq ptr %84, null
  br i1 %86, label %112, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %77, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 64 dereferenceable(512) %84, ptr noundef align 1 dereferenceable(512) %88, i32 512, i1 false)
  %89 = getelementptr inbounds %struct.ubifs_mst_node, ptr %88, i32 0, i32 3
  %90 = load i32, ptr %89, align 1
  %91 = or i32 %90, 1
  store i32 %91, ptr %89, align 1
  br label %135

92:                                               ; preds = %73
  %93 = getelementptr inbounds %struct.ubifs_ch, ptr %74, i32 0, i32 2
  %94 = load i64, ptr %93, align 1
  %95 = add i64 %94, -1
  %96 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 3
  store i64 %95, ptr %96, align 8
  %97 = load ptr, ptr %77, align 4
  %98 = load i32, ptr %8, align 4
  %99 = getelementptr inbounds %struct.ubifs_mst_node, ptr %97, i32 0, i32 3
  %100 = load i32, ptr %99, align 1
  %101 = or i32 %100, 4
  store i32 %101, ptr %99, align 1
  %102 = tail call i32 @ubifs_prepare_node_hmac(ptr noundef %0, ptr noundef %97, i32 noundef 512, i32 noundef 296, i32 noundef 1) #9
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %92
  %105 = tail call i32 @ubifs_leb_change(ptr noundef %0, i32 noundef 1, ptr noundef %97, i32 noundef %98) #9
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %104, %92
  %108 = phi i32 [ %105, %104 ], [ %102, %92 ]
  store i32 %100, ptr %99, align 1
  br label %112

109:                                              ; preds = %104
  %110 = tail call i32 @ubifs_leb_change(ptr noundef %0, i32 noundef 2, ptr noundef %97, i32 noundef %98) #9
  store i32 %100, ptr %99, align 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %135, label %112

112:                                              ; preds = %109, %107, %83, %63, %56, %50, %49, %48, %42, %12, %1
  %113 = phi i32 [ %108, %107 ], [ -22, %42 ], [ -22, %48 ], [ -22, %50 ], [ -22, %49 ], [ -22, %56 ], [ -22, %63 ], [ -12, %83 ], [ %110, %109 ], [ %13, %12 ], [ %10, %1 ]
  %114 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.1) #9
  %115 = icmp eq ptr %114, null
  br i1 %115, label %124, label %116

116:                                              ; preds = %112
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.2) #9
  %117 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %118 = load i32, ptr %117, align 8
  %119 = load ptr, ptr %2, align 4
  %120 = ptrtoint ptr %114 to i32
  %121 = ptrtoint ptr %119 to i32
  %122 = sub i32 %118, %120
  %123 = add i32 %122, %121
  tail call void @ubifs_dump_node(ptr noundef %0, ptr noundef nonnull %114, i32 noundef %123) #9
  br label %124

124:                                              ; preds = %116, %112
  %125 = load ptr, ptr %7, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %135, label %127

127:                                              ; preds = %124
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.3) #9
  %128 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %129 = load i32, ptr %128, align 8
  %130 = load ptr, ptr %3, align 4
  %131 = ptrtoint ptr %125 to i32
  %132 = ptrtoint ptr %130 to i32
  %133 = sub i32 %129, %131
  %134 = add i32 %133, %132
  tail call void @ubifs_dump_node(ptr noundef %0, ptr noundef nonnull %125, i32 noundef %134) #9
  br label %135

135:                                              ; preds = %127, %124, %109, %87, %62
  %136 = phi i32 [ 0, %109 ], [ 0, %87 ], [ -22, %62 ], [ %113, %127 ], [ %113, %124 ]
  %137 = load ptr, ptr %3, align 4
  tail call void @vfree(ptr noundef %137) #9
  %138 = load ptr, ptr %2, align 4
  tail call void @vfree(ptr noundef %138) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %136
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @get_master_node(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 90
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %9 = load i32, ptr %8, align 8
  %10 = tail call noalias ptr @vmalloc(i32 noundef %9) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %108, label %12

12:                                               ; preds = %5
  %13 = load i32, ptr %8, align 8
  %14 = tail call i32 @ubifs_leb_read(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %10, i32 noundef 0, i32 noundef %13, i32 noundef 0) #9
  switch i32 %14, label %106 [
    i32 -74, label %15
    i32 0, label %15
  ]

15:                                               ; preds = %12, %12
  %16 = load i32, ptr %8, align 8
  %17 = icmp ult i32 %16, 512
  br i1 %17, label %63, label %18

18:                                               ; preds = %24, %15
  %19 = phi i32 [ %25, %24 ], [ 0, %15 ]
  %20 = phi i32 [ %27, %24 ], [ %16, %15 ]
  %21 = phi ptr [ %26, %24 ], [ %10, %15 ]
  %22 = load i32, ptr %21, align 1
  %23 = icmp eq i32 %22, 101718065
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = add i32 %19, %7
  %26 = getelementptr i8, ptr %21, i32 %7
  %27 = sub i32 %20, %7
  %28 = add i32 %25, 512
  %29 = icmp ugt i32 %28, %16
  br i1 %29, label %30, label %18

30:                                               ; preds = %24, %18
  %31 = phi ptr [ %26, %24 ], [ %21, %18 ]
  %32 = phi i32 [ %27, %24 ], [ %20, %18 ]
  %33 = phi i32 [ %25, %24 ], [ %19, %18 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %63, label %35

35:                                               ; preds = %30
  %36 = sub i32 %33, %7
  %37 = sub i32 0, %7
  %38 = getelementptr i8, ptr %31, i32 %37
  %39 = add i32 %32, %7
  %40 = tail call i32 @ubifs_scan_a_node(ptr noundef %0, ptr noundef %38, i32 noundef %39, i32 noundef %1, i32 noundef %36, i32 noundef 1) #9
  %41 = icmp ne i32 %40, -2
  %42 = icmp ne i32 %36, 0
  %43 = and i1 %42, %41
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = sub i32 %36, %7
  %46 = getelementptr i8, ptr %38, i32 %37
  %47 = add i32 %39, %7
  %48 = tail call i32 @ubifs_scan_a_node(ptr noundef %0, ptr noundef %46, i32 noundef %47, i32 noundef %1, i32 noundef %45, i32 noundef 1) #9
  %49 = icmp eq i32 %48, -2
  br i1 %49, label %52, label %106

50:                                               ; preds = %35
  %51 = icmp eq i32 %40, -2
  br i1 %51, label %52, label %63

52:                                               ; preds = %50, %44
  %53 = phi i32 [ %36, %50 ], [ %45, %44 ]
  %54 = phi i32 [ %39, %50 ], [ %47, %44 ]
  %55 = phi ptr [ %38, %50 ], [ %46, %44 ]
  %56 = getelementptr inbounds %struct.ubifs_ch, ptr %55, i32 0, i32 4
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, 7
  br i1 %58, label %59, label %106

59:                                               ; preds = %52
  store ptr %55, ptr %3, align 4
  %60 = add i32 %53, %7
  %61 = getelementptr i8, ptr %55, i32 %7
  %62 = sub i32 %54, %7
  br label %63

63:                                               ; preds = %59, %50, %30, %15
  %64 = phi ptr [ %31, %30 ], [ %61, %59 ], [ %38, %50 ], [ %10, %15 ]
  %65 = phi i32 [ %32, %30 ], [ %62, %59 ], [ %39, %50 ], [ %16, %15 ]
  %66 = phi i32 [ 0, %30 ], [ %60, %59 ], [ %36, %50 ], [ 0, %15 ]
  %67 = load i32, ptr %8, align 8
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %63
  %70 = tail call i32 @llvm.smin.i32(i32 %65, i32 %7)
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %77, %69
  %73 = phi i32 [ %79, %77 ], [ 0, %69 ]
  %74 = phi ptr [ %78, %77 ], [ %64, %69 ]
  %75 = load i8, ptr %74, align 1
  %76 = icmp eq i8 %75, -1
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = getelementptr i8, ptr %74, i32 1
  %79 = add nuw nsw i32 %73, 1
  %80 = icmp eq i32 %79, %70
  br i1 %80, label %83, label %72

81:                                               ; preds = %72
  store ptr %64, ptr %4, align 4
  %82 = load i32, ptr %8, align 8
  br label %83

83:                                               ; preds = %81, %77, %69
  %84 = phi i32 [ %67, %69 ], [ %82, %81 ], [ %67, %77 ]
  %85 = add i32 %66, %7
  %86 = getelementptr i8, ptr %64, i32 %7
  %87 = sub i32 %65, %7
  br label %88

88:                                               ; preds = %83, %63
  %89 = phi i32 [ %84, %83 ], [ %67, %63 ]
  %90 = phi ptr [ %86, %83 ], [ %64, %63 ]
  %91 = phi i32 [ %87, %83 ], [ %65, %63 ]
  %92 = phi i32 [ %85, %83 ], [ %66, %63 ]
  %93 = icmp slt i32 %92, %89
  %94 = icmp sgt i32 %91, 0
  %95 = select i1 %93, i1 %94, i1 false
  br i1 %95, label %96, label %105

96:                                               ; preds = %101, %88
  %97 = phi i32 [ %103, %101 ], [ 0, %88 ]
  %98 = phi ptr [ %102, %101 ], [ %90, %88 ]
  %99 = load i8, ptr %98, align 1
  %100 = icmp eq i8 %99, -1
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = getelementptr i8, ptr %98, i32 1
  %103 = add nuw nsw i32 %97, 1
  %104 = icmp eq i32 %103, %91
  br i1 %104, label %105, label %96

105:                                              ; preds = %101, %88
  store ptr %10, ptr %2, align 4
  br label %108

106:                                              ; preds = %96, %52, %44, %12
  %107 = phi i32 [ %14, %12 ], [ -22, %52 ], [ -22, %44 ], [ -22, %96 ]
  tail call void @vfree(ptr noundef nonnull %10) #9
  store ptr null, ptr %3, align 4
  store ptr null, ptr %4, align 4
  br label %108

108:                                              ; preds = %106, %105, %5
  %109 = phi i32 [ %107, %106 ], [ 0, %105 ], [ -12, %5 ]
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_compare_master_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_write_rcvrd_mst_node(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 191
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ubifs_mst_node, ptr %3, i32 0, i32 3
  %7 = load i32, ptr %6, align 1
  %8 = or i32 %7, 1
  store i32 %8, ptr %6, align 1
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 46
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ubifs_mst_node, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 1
  %13 = or i32 %12, 1
  store i32 %13, ptr %11, align 1
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 90
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ubifs_mst_node, ptr %14, i32 0, i32 3
  %18 = load i32, ptr %17, align 1
  %19 = or i32 %18, 4
  store i32 %19, ptr %17, align 1
  %20 = tail call i32 @ubifs_prepare_node_hmac(ptr noundef %0, ptr noundef %14, i32 noundef 512, i32 noundef 296, i32 noundef 1) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = tail call i32 @ubifs_leb_change(ptr noundef %0, i32 noundef 1, ptr noundef %14, i32 noundef %16) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22, %5
  %26 = phi i32 [ %23, %22 ], [ %20, %5 ]
  store i32 %18, ptr %17, align 1
  br label %32

27:                                               ; preds = %22
  %28 = tail call i32 @ubifs_leb_change(ptr noundef %0, i32 noundef 2, ptr noundef %14, i32 noundef %16) #9
  store i32 %18, ptr %17, align 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %31) #9
  store ptr null, ptr %2, align 8
  br label %32

32:                                               ; preds = %30, %27, %25, %1
  %33 = phi i32 [ 0, %30 ], [ 0, %1 ], [ %28, %27 ], [ %26, %25 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubifs_recover_leb(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %7 = load i32, ptr %6, align 8
  %8 = sub i32 %7, %2
  %9 = icmp eq i32 %4, -1
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr %struct.ubifs_jhead, ptr %12, i32 %4, i32 2
  %14 = load i8, ptr %13, align 8
  %15 = and i8 %14, 1
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %10, %5
  %18 = phi i32 [ %16, %10 ], [ 0, %5 ]
  %19 = getelementptr i8, ptr %3, i32 %2
  %20 = tail call ptr @ubifs_start_scan(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #9
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %335, label %22

22:                                               ; preds = %17
  %23 = icmp slt i32 %8, 8
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %22
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 636) #9
  br label %54

25:                                               ; preds = %44, %22
  %26 = phi ptr [ %46, %44 ], [ %19, %22 ]
  %27 = phi i32 [ %47, %44 ], [ %8, %22 ]
  %28 = phi i32 [ %48, %44 ], [ %2, %22 ]
  %29 = tail call i32 @__cond_resched() #9
  %30 = tail call i32 @ubifs_scan_a_node(ptr noundef %0, ptr noundef %26, i32 noundef %27, i32 noundef %1, i32 noundef %28, i32 noundef 1) #9
  %31 = icmp eq i32 %30, -2
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = tail call i32 @ubifs_add_snod(ptr noundef %0, ptr noundef %20, ptr noundef %26, i32 noundef %28) #9
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %332

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.ubifs_ch, ptr %26, i32 0, i32 3
  %37 = load i32, ptr %36, align 1
  %38 = add i32 %37, 7
  %39 = and i32 %38, -8
  br label %44

40:                                               ; preds = %25
  %41 = icmp sgt i32 %30, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  switch i32 %30, label %43 [
    i32 -1, label %50
    i32 -3, label %50
    i32 -4, label %50
    i32 0, label %50
  ]

43:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %30) #9
  br label %332

44:                                               ; preds = %40, %35
  %45 = phi i32 [ %39, %35 ], [ %30, %40 ]
  %46 = getelementptr i8, ptr %26, i32 %45
  %47 = sub i32 %27, %45
  %48 = add i32 %45, %28
  %49 = icmp sgt i32 %47, 7
  br i1 %49, label %25, label %50

50:                                               ; preds = %44, %42, %42, %42, %42
  %51 = phi i32 [ %28, %42 ], [ %28, %42 ], [ %28, %42 ], [ %28, %42 ], [ %48, %44 ]
  %52 = phi i32 [ %27, %42 ], [ %27, %42 ], [ %27, %42 ], [ %27, %42 ], [ %47, %44 ]
  %53 = phi ptr [ %26, %42 ], [ %26, %42 ], [ %26, %42 ], [ %26, %42 ], [ %46, %44 ]
  switch i32 %30, label %127 [
    i32 -4, label %54
    i32 0, label %54
    i32 -3, label %80
  ]

54:                                               ; preds = %50, %50, %24
  %55 = phi i32 [ 0, %24 ], [ %30, %50 ], [ %30, %50 ]
  %56 = phi ptr [ %19, %24 ], [ %53, %50 ], [ %53, %50 ]
  %57 = phi i32 [ %8, %24 ], [ %52, %50 ], [ %52, %50 ]
  %58 = phi i32 [ %2, %24 ], [ %51, %50 ], [ %51, %50 ]
  %59 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 73
  %60 = load i32, ptr %59, align 8
  %61 = add i32 %60, %58
  %62 = sub i32 0, %60
  %63 = and i32 %61, %62
  %64 = load i32, ptr %6, align 8
  %65 = sub i32 %64, %63
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %173

67:                                               ; preds = %54
  %68 = getelementptr i8, ptr %56, i32 %63
  %69 = sub i32 0, %58
  %70 = getelementptr i8, ptr %68, i32 %69
  br label %71

71:                                               ; preds = %76, %67
  %72 = phi i32 [ %78, %76 ], [ 0, %67 ]
  %73 = phi ptr [ %77, %76 ], [ %70, %67 ]
  %74 = load i8, ptr %73, align 1
  %75 = icmp eq i8 %74, -1
  br i1 %75, label %76, label %323

76:                                               ; preds = %71
  %77 = getelementptr i8, ptr %73, i32 1
  %78 = add nuw nsw i32 %72, 1
  %79 = icmp eq i32 %78, %65
  br i1 %79, label %173, label %71

80:                                               ; preds = %50
  %81 = getelementptr inbounds %struct.ubifs_ch, ptr %53, i32 0, i32 3
  %82 = load i32, ptr %81, align 1
  %83 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 73
  %84 = load i32, ptr %83, align 8
  %85 = add i32 %51, 23
  %86 = add i32 %85, %84
  %87 = sub i32 0, %84
  %88 = and i32 %86, %87
  %89 = sub i32 %88, %51
  %90 = sub i32 %52, %89
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %173

92:                                               ; preds = %80
  %93 = getelementptr i8, ptr %53, i32 %89
  br label %94

94:                                               ; preds = %99, %92
  %95 = phi i32 [ %101, %99 ], [ 0, %92 ]
  %96 = phi ptr [ %100, %99 ], [ %93, %92 ]
  %97 = load i8, ptr %96, align 1
  %98 = icmp eq i8 %97, -1
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = getelementptr i8, ptr %96, i32 1
  %101 = add nuw nsw i32 %95, 1
  %102 = icmp eq i32 %101, %90
  br i1 %102, label %173, label %94

103:                                              ; preds = %94
  %104 = tail call i32 @ubifs_check_node(ptr noundef %0, ptr noundef %53, i32 noundef %52, i32 noundef %1, i32 noundef %51, i32 noundef 1, i32 noundef 0) #9
  %105 = icmp eq i32 %104, -117
  br i1 %105, label %106, label %323

106:                                              ; preds = %103
  %107 = load i32, ptr %83, align 8
  %108 = add i32 %51, -1
  %109 = add i32 %108, %82
  %110 = add i32 %109, %107
  %111 = sub i32 0, %107
  %112 = and i32 %110, %111
  %113 = sub i32 %112, %51
  %114 = sub i32 %52, %113
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %173

116:                                              ; preds = %106
  %117 = getelementptr i8, ptr %53, i32 %113
  br label %118

118:                                              ; preds = %123, %116
  %119 = phi i32 [ %125, %123 ], [ 0, %116 ]
  %120 = phi ptr [ %124, %123 ], [ %117, %116 ]
  %121 = load i8, ptr %120, align 1
  %122 = icmp eq i8 %121, -1
  br i1 %122, label %123, label %323

123:                                              ; preds = %118
  %124 = getelementptr i8, ptr %120, i32 1
  %125 = add nuw nsw i32 %119, 1
  %126 = icmp eq i32 %125, %114
  br i1 %126, label %173, label %118

127:                                              ; preds = %50
  %128 = icmp sgt i32 %52, 0
  br i1 %128, label %129, label %173

129:                                              ; preds = %134, %127
  %130 = phi i32 [ %136, %134 ], [ 0, %127 ]
  %131 = phi ptr [ %135, %134 ], [ %53, %127 ]
  %132 = load i8, ptr %131, align 1
  %133 = icmp eq i8 %132, -1
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = getelementptr i8, ptr %131, i32 1
  %136 = add nuw nsw i32 %130, 1
  %137 = icmp eq i32 %136, %52
  br i1 %137, label %173, label %129

138:                                              ; preds = %129
  %139 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 73
  %140 = load i32, ptr %139, align 8
  %141 = add i32 %140, %51
  %142 = sub i32 0, %140
  %143 = and i32 %141, %142
  %144 = load i32, ptr %6, align 8
  %145 = sub i32 %144, %143
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %173

147:                                              ; preds = %138
  %148 = getelementptr i8, ptr %53, i32 %143
  %149 = sub i32 0, %51
  %150 = getelementptr i8, ptr %148, i32 %149
  br label %151

151:                                              ; preds = %156, %147
  %152 = phi i32 [ %158, %156 ], [ 0, %147 ]
  %153 = phi ptr [ %157, %156 ], [ %150, %147 ]
  %154 = load i8, ptr %153, align 1
  %155 = icmp eq i8 %154, -1
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = getelementptr i8, ptr %153, i32 1
  %158 = add nuw nsw i32 %152, 1
  %159 = icmp eq i32 %158, %145
  br i1 %159, label %173, label %151

160:                                              ; preds = %165, %151
  %161 = phi i32 [ %167, %165 ], [ 0, %151 ]
  %162 = phi ptr [ %166, %165 ], [ %53, %151 ]
  %163 = load i8, ptr %162, align 1
  %164 = icmp eq i8 %163, -1
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = getelementptr i8, ptr %162, i32 1
  %167 = add nuw nsw i32 %161, 1
  %168 = icmp eq i32 %167, %52
  br i1 %168, label %169, label %160

169:                                              ; preds = %165, %160
  %170 = phi i32 [ -1, %165 ], [ %161, %160 ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %1, i32 noundef %51, i32 noundef %170) #9
  %171 = add i32 %170, %51
  %172 = getelementptr i8, ptr %53, i32 %170
  br label %329

173:                                              ; preds = %156, %138, %134, %127, %123, %106, %99, %80, %76, %54
  %174 = phi i32 [ %51, %138 ], [ %51, %127 ], [ %51, %106 ], [ %51, %80 ], [ %58, %54 ], [ %58, %76 ], [ %51, %156 ], [ %51, %134 ], [ %51, %123 ], [ %51, %99 ]
  %175 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %176 = load i32, ptr %175, align 8
  %177 = sub i32 0, %176
  %178 = and i32 %174, %177
  %179 = icmp eq i32 %18, 0
  br i1 %179, label %212, label %180

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %20, i32 0, i32 2, i32 1
  %182 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %20, i32 0, i32 2
  %183 = load volatile ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, %182
  br i1 %184, label %212, label %185

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %20, i32 0, i32 1
  %187 = load ptr, ptr %181, align 4
  %188 = getelementptr inbounds %struct.ubifs_scan_node, ptr %187, i32 0, i32 6
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr inbounds %struct.ubifs_ch, ptr %189, i32 0, i32 5
  %191 = load i8, ptr %190, align 1
  %192 = icmp eq i8 %191, 1
  br i1 %192, label %200, label %212

193:                                              ; preds = %200
  %194 = load ptr, ptr %181, align 4
  %195 = getelementptr inbounds %struct.ubifs_scan_node, ptr %194, i32 0, i32 6
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr inbounds %struct.ubifs_ch, ptr %196, i32 0, i32 5
  %198 = load i8, ptr %197, align 1
  %199 = icmp eq i8 %198, 1
  br i1 %199, label %200, label %212

200:                                              ; preds = %193, %185
  %201 = phi ptr [ %194, %193 ], [ %187, %185 ]
  %202 = getelementptr inbounds %struct.ubifs_scan_node, ptr %201, i32 0, i32 4
  %203 = load i32, ptr %202, align 4
  %204 = getelementptr inbounds %struct.list_head, ptr %201, i32 0, i32 1
  %205 = load ptr, ptr %204, align 4
  %206 = load ptr, ptr %201, align 4
  %207 = getelementptr inbounds %struct.list_head, ptr %206, i32 0, i32 1
  store ptr %205, ptr %207, align 4
  store volatile ptr %206, ptr %205, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %201, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %204, align 4
  tail call void @kfree(ptr noundef %201) #9
  %208 = load i32, ptr %186, align 4
  %209 = add i32 %208, -1
  store i32 %209, ptr %186, align 4
  %210 = load volatile ptr, ptr %182, align 4
  %211 = icmp eq ptr %210, %182
  br i1 %211, label %212, label %193

212:                                              ; preds = %200, %193, %185, %180, %173
  %213 = phi i32 [ %174, %173 ], [ %174, %180 ], [ %174, %185 ], [ %203, %200 ], [ %203, %193 ]
  %214 = icmp eq i32 %4, 0
  %215 = icmp sgt i32 %213, %178
  %216 = select i1 %214, i1 %215, i1 false
  br i1 %216, label %217, label %238

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %20, i32 0, i32 2
  %219 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %20, i32 0, i32 2, i32 1
  %220 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %20, i32 0, i32 1
  br label %221

221:                                              ; preds = %235, %217
  %222 = phi i32 [ %236, %235 ], [ %213, %217 ]
  %223 = load volatile ptr, ptr %218, align 4
  %224 = icmp eq ptr %223, %218
  br i1 %224, label %235, label %225

225:                                              ; preds = %221
  %226 = load ptr, ptr %219, align 4
  %227 = getelementptr inbounds %struct.ubifs_scan_node, ptr %226, i32 0, i32 4
  %228 = load i32, ptr %227, align 4
  %229 = getelementptr inbounds %struct.list_head, ptr %226, i32 0, i32 1
  %230 = load ptr, ptr %229, align 4
  %231 = load ptr, ptr %226, align 4
  %232 = getelementptr inbounds %struct.list_head, ptr %231, i32 0, i32 1
  store ptr %230, ptr %232, align 4
  store volatile ptr %231, ptr %230, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %226, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %229, align 4
  tail call void @kfree(ptr noundef %226) #9
  %233 = load i32, ptr %220, align 4
  %234 = add i32 %233, -1
  store i32 %234, ptr %220, align 4
  br label %235

235:                                              ; preds = %225, %221
  %236 = phi i32 [ %222, %221 ], [ %228, %225 ]
  %237 = icmp sgt i32 %236, %178
  br i1 %237, label %221, label %238

238:                                              ; preds = %235, %212
  %239 = phi i32 [ %213, %212 ], [ %236, %235 ]
  %240 = getelementptr i8, ptr %3, i32 %239
  %241 = and i32 %239, 7
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %244, label %243, !prof !9

243:                                              ; preds = %238
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.5, i32 noundef 436) #9
  br label %244

244:                                              ; preds = %243, %238
  %245 = load i32, ptr %175, align 8
  %246 = add i32 %239, -1
  %247 = add i32 %246, %245
  %248 = sub i32 0, %245
  %249 = and i32 %247, %248
  %250 = sub i32 %249, %239
  tail call void @ubifs_pad(ptr noundef %0, ptr noundef %240, i32 noundef %250) #9
  %251 = getelementptr i8, ptr %3, i32 %249
  %252 = load i32, ptr %6, align 8
  %253 = sub i32 %252, %249
  tail call void @llvm.memset.p0.i32(ptr align 1 %251, i8 -1, i32 %253, i1 false) #9
  tail call void @ubifs_end_scan(ptr noundef %0, ptr noundef %20, i32 noundef %1, i32 noundef %249) #9
  %254 = load i32, ptr %20, align 4
  %255 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %20, i32 0, i32 2
  %256 = load volatile ptr, ptr %255, align 4
  %257 = icmp eq ptr %256, %255
  br i1 %257, label %266, label %258

258:                                              ; preds = %244
  %259 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %20, i32 0, i32 2, i32 1
  %260 = load ptr, ptr %259, align 4
  %261 = getelementptr inbounds %struct.ubifs_scan_node, ptr %260, i32 0, i32 4
  %262 = load i32, ptr %261, align 4
  %263 = getelementptr inbounds %struct.ubifs_scan_node, ptr %260, i32 0, i32 5
  %264 = load i32, ptr %263, align 8
  %265 = add i32 %264, %262
  br label %266

266:                                              ; preds = %258, %244
  %267 = phi i32 [ %2, %244 ], [ %265, %258 ]
  %268 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 81
  %269 = load i8, ptr %268, align 8
  %270 = and i8 %269, 2
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %288, label %272

272:                                              ; preds = %266
  %273 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 186
  %274 = load i8, ptr %273, align 4
  %275 = and i8 %274, 16
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %277, label %288

277:                                              ; preds = %272
  %278 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %279 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %278, i32 noundef 3392, i32 noundef 16) #11
  %280 = icmp eq ptr %279, null
  br i1 %280, label %332, label %281

281:                                              ; preds = %277
  %282 = getelementptr inbounds %struct.ubifs_unclean_leb, ptr %279, i32 0, i32 1
  store i32 %254, ptr %282, align 8
  %283 = getelementptr inbounds %struct.ubifs_unclean_leb, ptr %279, i32 0, i32 2
  store i32 %267, ptr %283, align 4
  %284 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 190
  %285 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 190, i32 1
  %286 = load ptr, ptr %285, align 4
  store ptr %279, ptr %285, align 4
  store ptr %284, ptr %279, align 8
  %287 = getelementptr inbounds %struct.list_head, ptr %279, i32 0, i32 1
  store ptr %286, ptr %287, align 4
  store volatile ptr %279, ptr %286, align 4
  br label %335

288:                                              ; preds = %272, %266
  %289 = icmp eq i32 %267, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %288
  %291 = tail call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %254) #9
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %335, label %332

293:                                              ; preds = %288
  %294 = load i32, ptr %175, align 8
  %295 = add i32 %267, -1
  %296 = add i32 %295, %294
  %297 = sub i32 0, %294
  %298 = and i32 %296, %297
  %299 = icmp eq i32 %2, 0
  br i1 %299, label %305, label %300

300:                                              ; preds = %293
  %301 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %20, i32 0, i32 4
  %302 = load ptr, ptr %301, align 4
  %303 = tail call i32 @ubifs_leb_read(ptr noundef %0, i32 noundef %254, ptr noundef %302, i32 noundef 0, i32 noundef %2, i32 noundef 1) #9
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %332

305:                                              ; preds = %300, %293
  %306 = icmp sgt i32 %298, %267
  br i1 %306, label %307, label %318

307:                                              ; preds = %305
  %308 = add i32 %267, 7
  %309 = and i32 %308, -8
  %310 = sub i32 %298, %309
  %311 = icmp sgt i32 %310, 0
  br i1 %311, label %312, label %318

312:                                              ; preds = %307
  %313 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %20, i32 0, i32 4
  %314 = load ptr, ptr %313, align 4
  %315 = getelementptr i8, ptr %314, i32 %298
  %316 = sub nsw i32 0, %310
  %317 = getelementptr i8, ptr %315, i32 %316
  tail call void @ubifs_pad(ptr noundef %0, ptr noundef %317, i32 noundef %310) #9
  br label %318

318:                                              ; preds = %312, %307, %305
  %319 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %20, i32 0, i32 4
  %320 = load ptr, ptr %319, align 4
  %321 = tail call i32 @ubifs_leb_change(ptr noundef %0, i32 noundef %254, ptr noundef %320, i32 noundef %298) #9
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %335, label %332

323:                                              ; preds = %118, %103, %71
  %324 = phi i32 [ %30, %103 ], [ %55, %71 ], [ %30, %118 ]
  %325 = phi ptr [ %53, %103 ], [ %56, %71 ], [ %53, %118 ]
  %326 = phi i32 [ %52, %103 ], [ %57, %71 ], [ %52, %118 ]
  %327 = phi i32 [ %51, %103 ], [ %58, %71 ], [ %51, %118 ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %324) #9
  %328 = tail call i32 @ubifs_scan_a_node(ptr noundef %0, ptr noundef %325, i32 noundef %326, i32 noundef %1, i32 noundef %327, i32 noundef 0) #9
  br label %329

329:                                              ; preds = %323, %169
  %330 = phi i32 [ %171, %169 ], [ %327, %323 ]
  %331 = phi ptr [ %172, %169 ], [ %325, %323 ]
  tail call void @ubifs_scanned_corruption(ptr noundef %0, i32 noundef %1, i32 noundef %330, ptr noundef %331) #9
  br label %332

332:                                              ; preds = %329, %318, %300, %290, %277, %43, %32
  %333 = phi i32 [ -117, %329 ], [ -22, %43 ], [ -12, %277 ], [ %291, %290 ], [ %321, %318 ], [ %303, %300 ], [ %33, %32 ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %1) #9
  tail call void @ubifs_scan_destroy(ptr noundef %20) #9
  %334 = inttoptr i32 %333 to ptr
  br label %335

335:                                              ; preds = %332, %318, %290, %281, %17
  %336 = phi ptr [ %334, %332 ], [ %20, %17 ], [ %20, %318 ], [ %20, %290 ], [ %20, %281 ]
  ret ptr %336
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_start_scan(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_scan_a_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_add_snod(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_end_scan(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_scanned_corruption(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_scan_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubifs_recover_log_leb(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = add i32 %1, 1
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 53
  %7 = load i32, ptr %6, align 8
  %8 = add i32 %7, 3
  %9 = icmp slt i32 %5, %8
  %10 = select i1 %9, i32 %5, i32 3
  %11 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %70, label %14

14:                                               ; preds = %4
  %15 = tail call ptr @ubifs_scan(ptr noundef %0, i32 noundef %10, i32 noundef 0, ptr noundef %3, i32 noundef 0) #9
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %72, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %15, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %69, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 189
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %15, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq i64 %23, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %21
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %29 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3264, i32 noundef 32) #11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %60, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %33 = load i32, ptr %32, align 8
  %34 = sub i32 %33, %2
  %35 = icmp ult i32 %34, 32
  br i1 %35, label %58, label %36

36:                                               ; preds = %31
  %37 = tail call i32 @ubifs_leb_read(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %29, i32 noundef %2, i32 noundef 32, i32 noundef 0) #9
  switch i32 %37, label %58 [
    i32 -74, label %38
    i32 0, label %38
  ]

38:                                               ; preds = %36, %36
  %39 = tail call i32 @ubifs_scan_a_node(ptr noundef %0, ptr noundef nonnull %29, i32 noundef 32, i32 noundef %1, i32 noundef %2, i32 noundef 0) #9
  %40 = icmp eq i32 %39, -2
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.18) #9
  br label %58

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ubifs_ch, ptr %29, i32 0, i32 4
  %44 = load i8, ptr %43, align 4
  %45 = icmp eq i8 %44, 10
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = zext i8 %44 to i32
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %47) #9
  br label %58

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.ubifs_cs_node, ptr %29, i32 0, i32 1
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 4
  %52 = load i64, ptr %51, align 8
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.20, i64 noundef %50, i64 noundef %52) #9
  br label %58

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.ubifs_ch, ptr %29, i32 0, i32 2
  %57 = load i64, ptr %56, align 8
  tail call void @kfree(ptr noundef nonnull %29) #9
  br label %63

58:                                               ; preds = %54, %46, %41, %36, %31
  %59 = phi i32 [ %37, %36 ], [ -22, %31 ], [ -22, %54 ], [ -22, %46 ], [ -22, %41 ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.21) #9
  tail call void @kfree(ptr noundef nonnull %29) #9
  br label %60

60:                                               ; preds = %58, %27
  %61 = phi i32 [ %59, %58 ], [ -12, %27 ]
  tail call void @ubifs_scan_destroy(ptr noundef %15) #9
  %62 = inttoptr i32 %61 to ptr
  br label %72

63:                                               ; preds = %55, %21
  %64 = phi i64 [ %23, %21 ], [ %57, %55 ]
  %65 = getelementptr inbounds %struct.ubifs_scan_node, ptr %25, i32 0, i32 2
  %66 = load i64, ptr %65, align 8
  %67 = icmp ugt i64 %66, %64
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %1) #9
  tail call void @ubifs_scan_destroy(ptr noundef %15) #9
  br label %72

69:                                               ; preds = %63, %17
  tail call void @ubifs_scan_destroy(ptr noundef %15) #9
  br label %70

70:                                               ; preds = %69, %4
  %71 = tail call ptr @ubifs_recover_leb(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef -1)
  br label %72

72:                                               ; preds = %70, %68, %60, %14
  %73 = phi ptr [ %71, %70 ], [ %15, %14 ], [ inttoptr (i32 -117 to ptr), %68 ], [ %62, %60 ]
  ret ptr %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_scan(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_recover_inl_heads(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 81
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 186
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %7
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.5, i32 noundef 958) #9
  br label %13

13:                                               ; preds = %12, %7, %2
  %14 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 39
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 40
  %17 = load i32, ptr %16, align 4
  %18 = tail call fastcc i32 @recover_head(ptr noundef %0, i32 noundef %15, i32 noundef %17, ptr noundef %1)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 147
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 148
  %24 = load i32, ptr %23, align 8
  %25 = tail call fastcc i32 @recover_head(ptr noundef %0, i32 noundef %22, i32 noundef %24, ptr noundef %1)
  br label %26

26:                                               ; preds = %20, %13
  %27 = phi i32 [ %25, %20 ], [ %18, %13 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @recover_head(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 73
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %6, %2
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %9 = load i32, ptr %8, align 8
  %10 = icmp sgt i32 %7, %9
  %11 = sub i32 %9, %2
  %12 = select i1 %10, i32 %11, i32 %6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %4
  %15 = tail call i32 @ubifs_leb_read(ptr noundef %0, i32 noundef %1, ptr noundef %3, i32 noundef %2, i32 noundef %12, i32 noundef 1) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = icmp sgt i32 %12, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %24, %17
  %20 = phi i32 [ %26, %24 ], [ 0, %17 ]
  %21 = phi ptr [ %25, %24 ], [ %3, %17 ]
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, -1
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %21, i32 1
  %26 = add nuw nsw i32 %20, 1
  %27 = icmp eq i32 %26, %12
  br i1 %27, label %37, label %19

28:                                               ; preds = %19, %14
  %29 = icmp eq i32 %2, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = tail call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %1) #9
  br label %37

32:                                               ; preds = %28
  %33 = tail call i32 @ubifs_leb_read(ptr noundef %0, i32 noundef %1, ptr noundef %3, i32 noundef 0, i32 noundef %2, i32 noundef 1) #9
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = tail call i32 @ubifs_leb_change(ptr noundef %0, i32 noundef %1, ptr noundef %3, i32 noundef %2) #9
  br label %37

37:                                               ; preds = %35, %32, %30, %24, %17, %4
  %38 = phi i32 [ %31, %30 ], [ %36, %35 ], [ 0, %4 ], [ %33, %32 ], [ 0, %17 ], [ 0, %24 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_clean_lebs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 190
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %86, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 122
  br label %9

9:                                                ; preds = %79, %6
  %10 = phi ptr [ %4, %6 ], [ %84, %79 ]
  %11 = getelementptr inbounds %struct.ubifs_unclean_leb, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ubifs_unclean_leb, ptr %10, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = tail call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %12) #9
  br label %76

18:                                               ; preds = %9
  %19 = tail call i32 @ubifs_leb_read(ptr noundef %0, i32 noundef %12, ptr noundef %1, i32 noundef 0, i32 noundef %14, i32 noundef 0) #9
  switch i32 %19, label %86 [
    i32 -74, label %20
    i32 0, label %20
  ]

20:                                               ; preds = %18, %18
  %21 = icmp sgt i32 %14, 7
  br i1 %21, label %22, label %56

22:                                               ; preds = %50, %20
  %23 = phi i32 [ %54, %50 ], [ 0, %20 ]
  %24 = phi i32 [ %53, %50 ], [ %14, %20 ]
  %25 = phi ptr [ %52, %50 ], [ %1, %20 ]
  %26 = phi i32 [ %51, %50 ], [ 1, %20 ]
  %27 = tail call i32 @__cond_resched() #9
  %28 = tail call i32 @ubifs_scan_a_node(ptr noundef %0, ptr noundef %25, i32 noundef %24, i32 noundef %12, i32 noundef %23, i32 noundef %26) #9
  %29 = icmp eq i32 %28, -2
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.ubifs_ch, ptr %25, i32 0, i32 3
  %32 = load i32, ptr %31, align 1
  %33 = add i32 %32, 7
  %34 = and i32 %33, -8
  %35 = add i32 %34, %23
  %36 = getelementptr i8, ptr %25, i32 %34
  %37 = sub i32 %24, %34
  br label %50

38:                                               ; preds = %22
  %39 = icmp sgt i32 %28, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = add i32 %28, %23
  %42 = getelementptr i8, ptr %25, i32 %28
  %43 = sub nsw i32 %24, %28
  br label %50

44:                                               ; preds = %38
  %45 = icmp eq i32 %28, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %12, i32 noundef %23) #9
  br label %86

47:                                               ; preds = %44
  %48 = icmp eq i32 %26, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  tail call void @ubifs_scanned_corruption(ptr noundef %0, i32 noundef %12, i32 noundef %23, ptr noundef %25) #9
  br label %86

50:                                               ; preds = %47, %40, %30
  %51 = phi i32 [ %26, %30 ], [ %26, %40 ], [ 0, %47 ]
  %52 = phi ptr [ %36, %30 ], [ %42, %40 ], [ %25, %47 ]
  %53 = phi i32 [ %37, %30 ], [ %43, %40 ], [ %24, %47 ]
  %54 = phi i32 [ %35, %30 ], [ %41, %40 ], [ %23, %47 ]
  %55 = icmp sgt i32 %53, 7
  br i1 %55, label %22, label %56

56:                                               ; preds = %50, %20
  %57 = load i32, ptr %13, align 4
  %58 = load i32, ptr %7, align 8
  %59 = add i32 %57, -1
  %60 = add i32 %59, %58
  %61 = sub i32 0, %58
  %62 = and i32 %60, %61
  %63 = icmp sgt i32 %62, %57
  br i1 %63, label %64, label %74

64:                                               ; preds = %56
  %65 = add i32 %57, 7
  %66 = and i32 %65, -8
  %67 = sub i32 %62, %66
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load ptr, ptr %8, align 8
  %71 = getelementptr i8, ptr %70, i32 %62
  %72 = sub nsw i32 0, %67
  %73 = getelementptr i8, ptr %71, i32 %72
  tail call void @ubifs_pad(ptr noundef %0, ptr noundef %73, i32 noundef %67) #9
  br label %74

74:                                               ; preds = %69, %64, %56
  %75 = tail call i32 @ubifs_leb_change(ptr noundef %0, i32 noundef %12, ptr noundef %1, i32 noundef %62) #9
  br label %76

76:                                               ; preds = %74, %16
  %77 = phi i32 [ %17, %16 ], [ %75, %74 ]
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = load ptr, ptr %10, align 4
  %83 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  store ptr %81, ptr %83, align 4
  store volatile ptr %82, ptr %81, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %80, align 4
  tail call void @kfree(ptr noundef %10) #9
  %84 = load volatile ptr, ptr %3, align 4
  %85 = icmp eq ptr %84, %3
  br i1 %85, label %86, label %9

86:                                               ; preds = %79, %76, %49, %46, %18, %2
  %87 = phi i32 [ -117, %49 ], [ -117, %46 ], [ 0, %2 ], [ 0, %79 ], [ %77, %76 ], [ %19, %18 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_rcvry_gc_commit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ubifs_lprops, align 4
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false), !annotation !10
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 121
  store i32 -1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ubifs_wbuf, ptr %4, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ubifs_wbuf, ptr %4, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9, %1
  %16 = tail call fastcc i32 @grab_empty_leb(ptr noundef %0)
  br label %59

17:                                               ; preds = %9
  %18 = call i32 @ubifs_find_dirty_leb(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %11, i32 noundef 2) #9
  switch i32 %18, label %59 [
    i32 0, label %21
    i32 -28, label %19
  ]

19:                                               ; preds = %17
  %20 = call fastcc i32 @grab_empty_leb(ptr noundef %0)
  br label %59

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ubifs_lprops, ptr %2, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !9

26:                                               ; preds = %21
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.5, i32 noundef 1179) #9
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i32, ptr %2, align 4
  %29 = getelementptr inbounds %struct.ubifs_lprops, ptr %2, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %28
  %32 = load i32, ptr %10, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %35, !prof !8

34:                                               ; preds = %27
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5, i32 noundef 1180) #9
  br label %35

35:                                               ; preds = %34, %27
  %36 = call i32 @ubifs_run_commit(ptr noundef %0) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.ubifs_wbuf, ptr %4, i32 0, i32 9
  call void @mutex_lock(ptr noundef %39) #9
  %40 = call i32 @ubifs_garbage_collect_leb(ptr noundef %0, ptr noundef nonnull %2) #9
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  call void @mutex_unlock(ptr noundef %39) #9
  br label %48

43:                                               ; preds = %38
  %44 = call i32 @ubifs_wbuf_sync_nolock(ptr noundef %4) #9
  %45 = icmp eq i32 %44, 0
  call void @mutex_unlock(ptr noundef %39) #9
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = icmp slt i32 %44, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %46, %42
  %49 = phi i32 [ %40, %42 ], [ %44, %46 ]
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %49) #9
  %50 = icmp eq i32 %49, -11
  %51 = select i1 %50, i32 -22, i32 %49
  br label %59

52:                                               ; preds = %46, %43
  %53 = phi i32 [ %44, %46 ], [ %40, %43 ]
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %56, label %55, !prof !9

55:                                               ; preds = %52
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.5, i32 noundef 1208) #9
  br label %59

56:                                               ; preds = %52
  %57 = load i32, ptr %5, align 4
  %58 = call i32 @ubifs_leb_unmap(ptr noundef %0, i32 noundef %57) #9
  br label %59

59:                                               ; preds = %56, %55, %48, %35, %19, %17, %15
  %60 = phi i32 [ %16, %15 ], [ %20, %19 ], [ %51, %48 ], [ %18, %17 ], [ %36, %35 ], [ -22, %55 ], [ %58, %56 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #9
  ret i32 %60
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @grab_empty_leb(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @ubifs_find_free_leb_for_idx(ptr noundef %0) #9
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.23) #9
  tail call void @ubifs_dump_lprops(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87
  tail call void @ubifs_dump_budg(ptr noundef %0, ptr noundef %5) #9
  br label %12

6:                                                ; preds = %1
  %7 = tail call i32 @ubifs_change_one_lp(ptr noundef %0, i32 noundef %2, i32 noundef -2147483647, i32 noundef -2147483647, i32 noundef 0, i32 noundef 32, i32 noundef 0) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 121
  store i32 %2, ptr %10, align 4
  %11 = tail call i32 @ubifs_run_commit(ptr noundef %0) #9
  br label %12

12:                                               ; preds = %9, %6, %4
  %13 = phi i32 [ %2, %4 ], [ %11, %9 ], [ %7, %6 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_find_dirty_leb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_run_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_garbage_collect_leb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_wbuf_sync_nolock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_destroy_size_tree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 192
  %3 = tail call ptr @rb_first_postorder(ptr noundef %2) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = tail call ptr @rb_next_postorder(ptr noundef nonnull %6) #9
  %8 = getelementptr inbounds %struct.size_entry, ptr %6, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  tail call void @iput(ptr noundef %9) #9
  tail call void @kfree(ptr noundef nonnull %6) #9
  %10 = icmp eq ptr %7, null
  br i1 %10, label %11, label %5

11:                                               ; preds = %5, %1
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_recover_size_accum(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr %1, align 8
  %6 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 29
  switch i32 %8, label %145 [
    i32 0, label %9
    i32 1, label %75
    i32 4, label %124
  ]

9:                                                ; preds = %4
  %10 = icmp eq i32 %2, 0
  %11 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 192
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %10, label %31, label %14

14:                                               ; preds = %9
  br i1 %13, label %145, label %15

15:                                               ; preds = %26, %14
  %16 = phi ptr [ %28, %26 ], [ %12, %14 ]
  %17 = getelementptr inbounds %struct.size_entry, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %18, %5
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rb_node, ptr %16, i32 0, i32 2
  br label %26

22:                                               ; preds = %15
  %23 = icmp ult i32 %18, %5
  br i1 %23, label %24, label %30

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.rb_node, ptr %16, i32 0, i32 1
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi ptr [ %21, %20 ], [ %25, %24 ]
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %145, label %15

30:                                               ; preds = %22
  tail call void @rb_erase(ptr noundef nonnull %16, ptr noundef %11) #9
  tail call void @kfree(ptr noundef nonnull %16) #9
  br label %145

31:                                               ; preds = %9
  br i1 %13, label %62, label %32

32:                                               ; preds = %43, %31
  %33 = phi ptr [ %45, %43 ], [ %12, %31 ]
  %34 = getelementptr inbounds %struct.size_entry, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp ugt i32 %35, %5
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.rb_node, ptr %33, i32 0, i32 2
  br label %43

39:                                               ; preds = %32
  %40 = icmp ult i32 %35, %5
  br i1 %40, label %41, label %47

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.rb_node, ptr %33, i32 0, i32 1
  br label %43

43:                                               ; preds = %41, %37
  %44 = phi ptr [ %38, %37 ], [ %42, %41 ]
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %32

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.size_entry, ptr %33, i32 0, i32 2
  store i64 %3, ptr %48, align 8
  %49 = getelementptr inbounds %struct.size_entry, ptr %33, i32 0, i32 4
  store i32 1, ptr %49, align 8
  br label %145

50:                                               ; preds = %50, %43
  %51 = phi ptr [ %58, %50 ], [ %12, %43 ]
  %52 = getelementptr inbounds %struct.size_entry, ptr %51, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp ugt i32 %53, %5
  %55 = getelementptr inbounds %struct.rb_node, ptr %51, i32 0, i32 2
  %56 = getelementptr inbounds %struct.rb_node, ptr %51, i32 0, i32 1
  %57 = select i1 %54, ptr %55, ptr %56
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %50

60:                                               ; preds = %50
  %61 = ptrtoint ptr %51 to i32
  br label %62

62:                                               ; preds = %60, %31
  %63 = phi i32 [ %61, %60 ], [ 0, %31 ]
  %64 = phi ptr [ %57, %60 ], [ %11, %31 ]
  %65 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %66 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3520, i32 noundef 40) #11
  %67 = icmp eq ptr %66, null
  br i1 %67, label %145, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.size_entry, ptr %66, i32 0, i32 1
  store i32 %5, ptr %69, align 4
  %70 = getelementptr inbounds %struct.size_entry, ptr %66, i32 0, i32 2
  store i64 %3, ptr %70, align 8
  %71 = getelementptr inbounds %struct.size_entry, ptr %66, i32 0, i32 3
  store i64 0, ptr %71, align 8
  %72 = getelementptr inbounds %struct.size_entry, ptr %66, i32 0, i32 4
  store i32 1, ptr %72, align 8
  store i32 %63, ptr %66, align 8
  %73 = getelementptr inbounds %struct.rb_node, ptr %66, i32 0, i32 1
  store ptr null, ptr %73, align 4
  %74 = getelementptr inbounds %struct.rb_node, ptr %66, i32 0, i32 2
  store ptr null, ptr %74, align 8
  store ptr %66, ptr %64, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %66, ptr noundef %11) #9
  br label %145

75:                                               ; preds = %4
  %76 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 192
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %111, label %79

79:                                               ; preds = %90, %75
  %80 = phi ptr [ %92, %90 ], [ %77, %75 ]
  %81 = getelementptr inbounds %struct.size_entry, ptr %80, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = icmp ugt i32 %82, %5
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.rb_node, ptr %80, i32 0, i32 2
  br label %90

86:                                               ; preds = %79
  %87 = icmp ult i32 %82, %5
  br i1 %87, label %88, label %94

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.rb_node, ptr %80, i32 0, i32 1
  br label %90

90:                                               ; preds = %88, %84
  %91 = phi ptr [ %85, %84 ], [ %89, %88 ]
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %99, label %79

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.size_entry, ptr %80, i32 0, i32 3
  %96 = load i64, ptr %95, align 8
  %97 = icmp slt i64 %96, %3
  br i1 %97, label %98, label %145

98:                                               ; preds = %94
  store i64 %3, ptr %95, align 8
  br label %145

99:                                               ; preds = %99, %90
  %100 = phi ptr [ %107, %99 ], [ %77, %90 ]
  %101 = getelementptr inbounds %struct.size_entry, ptr %100, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = icmp ugt i32 %102, %5
  %104 = getelementptr inbounds %struct.rb_node, ptr %100, i32 0, i32 2
  %105 = getelementptr inbounds %struct.rb_node, ptr %100, i32 0, i32 1
  %106 = select i1 %103, ptr %104, ptr %105
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %99

109:                                              ; preds = %99
  %110 = ptrtoint ptr %100 to i32
  br label %111

111:                                              ; preds = %109, %75
  %112 = phi i32 [ %110, %109 ], [ 0, %75 ]
  %113 = phi ptr [ %106, %109 ], [ %76, %75 ]
  %114 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %115 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %114, i32 noundef 3520, i32 noundef 40) #11
  %116 = icmp eq ptr %115, null
  br i1 %116, label %145, label %117

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.size_entry, ptr %115, i32 0, i32 1
  store i32 %5, ptr %118, align 4
  %119 = getelementptr inbounds %struct.size_entry, ptr %115, i32 0, i32 2
  store i64 0, ptr %119, align 8
  %120 = getelementptr inbounds %struct.size_entry, ptr %115, i32 0, i32 3
  store i64 %3, ptr %120, align 8
  %121 = getelementptr inbounds %struct.size_entry, ptr %115, i32 0, i32 4
  store i32 0, ptr %121, align 8
  store i32 %112, ptr %115, align 8
  %122 = getelementptr inbounds %struct.rb_node, ptr %115, i32 0, i32 1
  store ptr null, ptr %122, align 4
  %123 = getelementptr inbounds %struct.rb_node, ptr %115, i32 0, i32 2
  store ptr null, ptr %123, align 8
  store ptr %115, ptr %113, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %115, ptr noundef %76) #9
  br label %145

124:                                              ; preds = %4
  %125 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 192
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %145, label %128

128:                                              ; preds = %139, %124
  %129 = phi ptr [ %141, %139 ], [ %126, %124 ]
  %130 = getelementptr inbounds %struct.size_entry, ptr %129, i32 0, i32 1
  %131 = load i32, ptr %130, align 4
  %132 = icmp ugt i32 %131, %5
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.rb_node, ptr %129, i32 0, i32 2
  br label %139

135:                                              ; preds = %128
  %136 = icmp ult i32 %131, %5
  br i1 %136, label %137, label %143

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.rb_node, ptr %129, i32 0, i32 1
  br label %139

139:                                              ; preds = %137, %133
  %140 = phi ptr [ %134, %133 ], [ %138, %137 ]
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %145, label %128

143:                                              ; preds = %135
  %144 = getelementptr inbounds %struct.size_entry, ptr %129, i32 0, i32 3
  store i64 %3, ptr %144, align 8
  br label %145

145:                                              ; preds = %143, %139, %124, %117, %111, %98, %94, %68, %62, %47, %30, %26, %14, %4
  %146 = phi i32 [ -12, %62 ], [ -12, %111 ], [ 0, %117 ], [ 0, %68 ], [ 0, %30 ], [ 0, %14 ], [ 0, %143 ], [ 0, %98 ], [ 0, %94 ], [ 0, %47 ], [ 0, %4 ], [ 0, %124 ], [ 0, %26 ], [ 0, %139 ]
  ret i32 %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_recover_size(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %union.ubifs_key, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.ubifs_key, align 8
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 192
  %8 = tail call ptr @rb_first(ptr noundef %7) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %153, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds [2 x i32], ptr %6, i32 0, i32 1
  %12 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 122
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 81
  %14 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %16 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  br label %17

17:                                               ; preds = %151, %10
  %18 = phi ptr [ %8, %10 ], [ %19, %151 ]
  %19 = call ptr @rb_next(ptr noundef nonnull %18) #9
  %20 = getelementptr inbounds %struct.size_entry, ptr %18, i32 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %24 = getelementptr inbounds %struct.size_entry, ptr %18, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %6, align 8
  store i32 0, ptr %11, align 4
  %26 = load ptr, ptr %12, align 8
  %27 = call i32 @ubifs_tnc_locate(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %26, ptr noundef null, ptr noundef null) #9
  switch i32 %27, label %37 [
    i32 -2, label %28
    i32 0, label %32
  ]

28:                                               ; preds = %23
  %29 = load i32, ptr %24, align 4
  %30 = call i32 @ubifs_tnc_remove_ino(ptr noundef %0, i32 noundef %29) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %37

32:                                               ; preds = %23
  %33 = load ptr, ptr %12, align 8
  store i32 1, ptr %20, align 8
  %34 = getelementptr inbounds %struct.ubifs_ino_node, ptr %33, i32 0, i32 3
  %35 = load i64, ptr %34, align 1
  %36 = getelementptr inbounds %struct.size_entry, ptr %18, i32 0, i32 2
  store i64 %35, ptr %36, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %42

37:                                               ; preds = %28, %23
  %38 = phi i32 [ %30, %28 ], [ %27, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %153

39:                                               ; preds = %28
  %40 = load i32, ptr %20, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %150, label %42

42:                                               ; preds = %39, %32, %17
  %43 = getelementptr inbounds %struct.size_entry, ptr %18, i32 0, i32 2
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds %struct.size_entry, ptr %18, i32 0, i32 3
  %46 = load i64, ptr %45, align 8
  %47 = icmp slt i64 %44, %46
  br i1 %47, label %48, label %150

48:                                               ; preds = %42
  %49 = load i8, ptr %13, align 8
  %50 = and i8 %49, 2
  %51 = icmp ne i8 %50, 0
  %52 = and i1 %51, %1
  br i1 %52, label %53, label %54, !prof !8

53:                                               ; preds = %48
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5, i32 noundef 1563) #9
  br label %54

54:                                               ; preds = %53, %48
  br i1 %1, label %55, label %109

55:                                               ; preds = %54
  %56 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !10
  %57 = getelementptr inbounds %struct.size_entry, ptr %18, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  store i32 %58, ptr %3, align 8
  store i32 0, ptr %14, align 4
  %59 = call i32 @ubifs_tnc_locate(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %56, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %100

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.ubifs_ino_node, ptr %56, i32 0, i32 3
  %63 = load i64, ptr %62, align 1
  %64 = load i64, ptr %45, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %106

66:                                               ; preds = %61
  %67 = load i32, ptr %4, align 4
  %68 = load ptr, ptr %12, align 8
  %69 = load i32, ptr %15, align 8
  %70 = call i32 @ubifs_leb_read(ptr noundef %0, i32 noundef %67, ptr noundef %68, i32 noundef 0, i32 noundef %69, i32 noundef 1) #9
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %100

72:                                               ; preds = %66
  %73 = load ptr, ptr %12, align 8
  %74 = load i32, ptr %5, align 4
  %75 = getelementptr i8, ptr %73, i32 %74
  %76 = load i64, ptr %45, align 8
  %77 = getelementptr inbounds %struct.ubifs_ino_node, ptr %75, i32 0, i32 3
  store i64 %76, ptr %77, align 1
  %78 = getelementptr inbounds %struct.ubifs_ch, ptr %75, i32 0, i32 3
  %79 = load i32, ptr %78, align 1
  %80 = getelementptr i8, ptr %75, i32 8
  %81 = add i32 %79, -8
  %82 = call i32 @crc32_le(i32 noundef -1, ptr noundef %80, i32 noundef %81) #12
  %83 = getelementptr inbounds %struct.ubifs_ch, ptr %75, i32 0, i32 1
  store i32 %82, ptr %83, align 1
  %84 = load ptr, ptr %12, align 8
  %85 = load i32, ptr %15, align 8
  br label %86

86:                                               ; preds = %86, %72
  %87 = phi i32 [ %85, %72 ], [ %88, %86 ]
  %88 = add i32 %87, -1
  %89 = getelementptr i8, ptr %84, i32 %88
  %90 = load i8, ptr %89, align 1
  %91 = icmp eq i8 %90, -1
  br i1 %91, label %86, label %92

92:                                               ; preds = %86
  %93 = load i32, ptr %16, align 8
  %94 = add i32 %93, %88
  %95 = sub i32 0, %93
  %96 = and i32 %94, %95
  %97 = load i32, ptr %4, align 4
  %98 = call i32 @ubifs_leb_change(ptr noundef %0, i32 noundef %97, ptr noundef %84, i32 noundef %96) #9
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %92, %66, %55
  %101 = phi i32 [ %59, %55 ], [ %70, %66 ], [ %98, %92 ]
  %102 = getelementptr inbounds %struct.size_entry, ptr %18, i32 0, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = load i64, ptr %43, align 8
  %105 = load i64, ptr %45, align 8
  call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %103, i64 noundef %104, i64 noundef %105, i32 noundef %101) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %153

106:                                              ; preds = %92, %61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  %107 = getelementptr inbounds %struct.size_entry, ptr %18, i32 0, i32 5
  %108 = load ptr, ptr %107, align 4
  call void @iput(ptr noundef %108) #9
  br label %150

109:                                              ; preds = %54
  %110 = load i8, ptr %13, align 8
  %111 = and i8 %110, 2
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.size_entry, ptr %18, i32 0, i32 5
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117, !prof !9

117:                                              ; preds = %113
  call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.5, i32 noundef 1465) #9
  br label %118

118:                                              ; preds = %117, %113, %109
  %119 = getelementptr inbounds %struct.size_entry, ptr %18, i32 0, i32 5
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %139

122:                                              ; preds = %118
  %123 = load ptr, ptr %0, align 8
  %124 = getelementptr inbounds %struct.size_entry, ptr %18, i32 0, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = call ptr @ubifs_iget(ptr noundef %123, i32 noundef %125) #9
  %127 = icmp ugt ptr %126, inttoptr (i32 -4096 to ptr)
  br i1 %127, label %148, label %128

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.inode, ptr %126, i32 0, i32 13
  %130 = load i64, ptr %129, align 8
  %131 = load i64, ptr %45, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %134, label %133

133:                                              ; preds = %128
  call void @iput(ptr noundef %126) #9
  br label %151

134:                                              ; preds = %128
  store i64 %131, ptr %129, align 8
  %135 = load i64, ptr %45, align 8
  %136 = getelementptr inbounds %struct.ubifs_inode, ptr %126, i32 0, i32 11
  store i64 %135, ptr %136, align 8
  %137 = load i64, ptr %45, align 8
  %138 = getelementptr inbounds %struct.ubifs_inode, ptr %126, i32 0, i32 10
  store i64 %137, ptr %138, align 8
  store ptr %126, ptr %119, align 4
  br label %139

139:                                              ; preds = %134, %118
  %140 = phi ptr [ %126, %134 ], [ %120, %118 ]
  %141 = load i8, ptr %13, align 8
  %142 = and i8 %141, 2
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %139
  %145 = call i32 @ubifs_jnl_write_inode(ptr noundef %0, ptr noundef %140) #9
  call void @iput(ptr noundef %140) #9
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  call void @rb_erase(ptr noundef nonnull %18, ptr noundef %7) #9
  call void @kfree(ptr noundef nonnull %18) #9
  br label %151

148:                                              ; preds = %122
  %149 = ptrtoint ptr %126 to i32
  br label %153

150:                                              ; preds = %106, %42, %39
  call void @rb_erase(ptr noundef nonnull %18, ptr noundef %7) #9
  call void @kfree(ptr noundef nonnull %18) #9
  br label %151

151:                                              ; preds = %150, %147, %139, %133
  %152 = icmp eq ptr %19, null
  br i1 %152, label %153, label %17

153:                                              ; preds = %151, %148, %144, %100, %37, %2
  %154 = phi i32 [ %38, %37 ], [ %149, %148 ], [ %101, %100 ], [ 0, %2 ], [ 0, %151 ], [ %145, %144 ]
  ret i32 %154
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_remove_ino(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_prepare_node_hmac(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_change(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_check_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_find_free_leb_for_idx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_lprops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_budg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_change_one_lp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_locate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_iget(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_jnl_write_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readonly willreturn }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"auto-init"}
