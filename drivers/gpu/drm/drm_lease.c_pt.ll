; ModuleID = '/llk/IR/drivers/gpu/drm/drm_lease.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_lease.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_master = type { %struct.kref, ptr, ptr, i32, %struct.idr, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.idr, %struct.idr, %struct.drm_lock_data }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.drm_lock_data = type { ptr, ptr, %struct.wait_queue_head, i32, %struct.spinlock, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.71, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.71 = type { i32, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_mode_create_lease = type { i64, i32, i32, i32, i32 }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.drm_mode_list_lessees = type { i32, i32, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_mode_get_lease = type { i32, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"drm_lease_destroy %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"drivers/gpu/drm/drm_lease.c\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"remove master %d from device list of lessees\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"drm_lease_destroy done %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"invalid flags\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"recursive leasing not allowed\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"lease object lookup failed: %i\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Creating lease\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Allocating lease file\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Returning fd %d id %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"drm_mode_create_lease_ioctl succeeded\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"drm_mode_create_lease_ioctl failed: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"List lessees for %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Add lessee %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Lessor leases to %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"get lease for %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"adding object %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"lease holds %d objects\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"revoke lease for %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"revoke leases for %p %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"invalid object for lease\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"lease validation failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"Adding object %d to lease\0A\00", align 1
@drm_lease_idr_object = internal global i64 0, align 8
@.str.23 = private unnamed_addr constant [47 x i8] c"Object %d cannot be inserted into leases (%d)\0A\00", align 1
@.str.24 = private unnamed_addr constant [61 x i8] c"Object primary plane %d cannot be inserted into leases (%d)\0A\00", align 1
@.str.25 = private unnamed_addr constant [60 x i8] c"Object cursor plane %d cannot be inserted into leases (%d)\0A\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"lessor %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"drm_master_create failed\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"object %d failed %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"new lessee %d %p, lessor %d %p\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @drm_lease_owner(ptr noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @_drm_lease_held(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %4 = icmp eq ptr %0, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @drm_file_get_master(ptr noundef nonnull %0) #9
  store ptr %6, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.drm_master, ptr %6, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.drm_master, ptr %6, i32 0, i32 10
  %14 = tail call ptr @idr_find(ptr noundef %13, i32 noundef %1) #9
  %15 = icmp ne ptr %14, null
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i1 [ %15, %12 ], [ true, %8 ]
  call void @drm_master_put(ptr noundef nonnull %3) #9
  br label %18

18:                                               ; preds = %16, %5, %2
  %19 = phi i1 [ %17, %16 ], [ true, %2 ], [ true, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i1 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_file_get_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_master_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_lease_held(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %4 = icmp eq ptr %0, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @drm_file_get_master(ptr noundef nonnull %0) #9
  store ptr %6, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.drm_master, ptr %6, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.drm_master, ptr %6, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 30, i32 3
  tail call void @mutex_lock(ptr noundef %15) #9
  %16 = load ptr, ptr %9, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.drm_master, ptr %6, i32 0, i32 10
  %20 = tail call ptr @idr_find(ptr noundef %19, i32 noundef %1) #9
  %21 = icmp ne ptr %20, null
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi i1 [ %21, %18 ], [ true, %12 ]
  %24 = load ptr, ptr %13, align 4
  %25 = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 30, i32 3
  tail call void @mutex_unlock(ptr noundef %25) #9
  br label %26

26:                                               ; preds = %22, %8
  %27 = phi i1 [ %23, %22 ], [ true, %8 ]
  call void @drm_master_put(ptr noundef nonnull %3) #9
  br label %28

28:                                               ; preds = %26, %5, %2
  %29 = phi i1 [ %27, %26 ], [ true, %2 ], [ true, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i1 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_lease_filter_crtcs(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %4 = icmp eq ptr %0, null
  br i1 %4, label %53, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @drm_file_get_master(ptr noundef nonnull %0) #9
  store ptr %6, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %53, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.drm_master, ptr %6, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %51, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.drm_master, ptr %6, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 30, i32 3
  tail call void @mutex_lock(ptr noundef %15) #9
  %16 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 30, i32 20
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %47, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.drm_master, ptr %6, i32 0, i32 10
  br label %21

21:                                               ; preds = %41, %19
  %22 = phi ptr [ %17, %19 ], [ %45, %41 ]
  %23 = phi i32 [ 0, %19 ], [ %44, %41 ]
  %24 = phi i32 [ 0, %19 ], [ %43, %41 ]
  %25 = phi i32 [ 0, %19 ], [ %42, %41 ]
  %26 = load ptr, ptr %9, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = getelementptr i8, ptr %22, i32 44
  %30 = load i32, ptr %29, align 4
  %31 = tail call ptr @idr_find(ptr noundef %20, i32 noundef %30) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %28, %21
  %34 = shl nuw i32 1, %23
  %35 = and i32 %34, %1
  %36 = icmp eq i32 %35, 0
  %37 = shl nuw i32 1, %24
  %38 = select i1 %36, i32 0, i32 %37
  %39 = or i32 %38, %25
  %40 = add i32 %24, 1
  br label %41

41:                                               ; preds = %33, %28
  %42 = phi i32 [ %39, %33 ], [ %25, %28 ]
  %43 = phi i32 [ %40, %33 ], [ %24, %28 ]
  %44 = add i32 %23, 1
  %45 = load ptr, ptr %22, align 4
  %46 = icmp eq ptr %45, %16
  br i1 %46, label %47, label %21

47:                                               ; preds = %41, %12
  %48 = phi i32 [ 0, %12 ], [ %42, %41 ]
  %49 = load ptr, ptr %13, align 4
  %50 = getelementptr inbounds %struct.drm_device, ptr %49, i32 0, i32 30, i32 3
  tail call void @mutex_unlock(ptr noundef %50) #9
  br label %51

51:                                               ; preds = %47, %8
  %52 = phi i32 [ %48, %47 ], [ %1, %8 ]
  call void @drm_master_put(ptr noundef nonnull %3) #9
  br label %53

53:                                               ; preds = %51, %5, %2
  %54 = phi i32 [ %52, %51 ], [ %1, %2 ], [ %1, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_lease_destroy(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.drm_master, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 3
  tail call void @mutex_lock(ptr noundef %4) #9
  %5 = getelementptr inbounds %struct.drm_master, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str, i32 noundef %6) #9
  %7 = getelementptr inbounds %struct.drm_master, ptr %0, i32 0, i32 9
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %11, label %10, !prof !8

10:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 276, i32 noundef 9, ptr noundef null) #9
  br label %11

11:                                               ; preds = %10, %1
  %12 = load i32, ptr %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.2, i32 noundef %12) #9
  br label %15

15:                                               ; preds = %15, %14
  %16 = phi ptr [ %0, %14 ], [ %18, %15 ]
  %17 = getelementptr inbounds %struct.drm_master, ptr %16, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %15

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.drm_master, ptr %16, i32 0, i32 11
  %22 = load i32, ptr %5, align 4
  %23 = tail call ptr @idr_remove(ptr noundef %21, i32 noundef %22) #9
  br label %24

24:                                               ; preds = %20, %11
  %25 = getelementptr inbounds %struct.drm_master, ptr %0, i32 0, i32 8
  %26 = getelementptr inbounds %struct.drm_master, ptr %0, i32 0, i32 8, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %25, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %26, align 4
  tail call void @mutex_unlock(ptr noundef %4) #9
  %30 = getelementptr inbounds %struct.drm_master, ptr %0, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  tail call void @drm_sysfs_lease_event(ptr noundef %3) #9
  tail call void @drm_master_put(ptr noundef %30) #9
  br label %34

34:                                               ; preds = %33, %24
  %35 = load i32, ptr %5, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.3, i32 noundef %35) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sysfs_lease_event(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_lease_revoke(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.drm_master, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 3
  tail call void @mutex_lock(ptr noundef %4) #9
  tail call fastcc void @_drm_lease_revoke(ptr noundef %0)
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 3
  tail call void @mutex_unlock(ptr noundef %6) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_drm_lease_revoke(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !9
  br label %3

3:                                                ; preds = %34, %1
  %4 = phi ptr [ %0, %1 ], [ %36, %34 ]
  %5 = getelementptr inbounds %struct.drm_master, ptr %4, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.19, ptr noundef %4, i32 noundef %6) #9
  %7 = getelementptr inbounds %struct.drm_master, ptr %4, i32 0, i32 10
  store i32 0, ptr %2, align 4
  %8 = call ptr @idr_get_next(ptr noundef %7, ptr noundef nonnull %2) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %10, %3
  %11 = load i32, ptr %2, align 4
  %12 = call ptr @idr_remove(ptr noundef %7, i32 noundef %11) #9
  %13 = load i32, ptr %2, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %2, align 4
  %15 = call ptr @idr_get_next(ptr noundef %7, ptr noundef nonnull %2) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %10

17:                                               ; preds = %10, %3
  %18 = getelementptr inbounds %struct.drm_master, ptr %4, i32 0, i32 9
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %21, label %34

21:                                               ; preds = %24, %17
  %22 = phi ptr [ %26, %24 ], [ %4, %17 ]
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %37, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.drm_master, ptr %22, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.drm_master, ptr %26, i32 0, i32 9, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 -48
  %30 = icmp eq ptr %22, %29
  br i1 %30, label %21, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.drm_master, ptr %22, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %17
  %35 = phi ptr [ %33, %31 ], [ %19, %17 ]
  %36 = getelementptr i8, ptr %35, i32 -48
  br label %3

37:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_create_lease_ioctl(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.idr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 18
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_driver, ptr %12, i32 0, i32 24
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %14, 2
  %18 = and i32 %17, %16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %267, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.drm_mode_create_lease, ptr %1, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, -526337
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.4) #9
  br label %267

26:                                               ; preds = %20
  %27 = tail call ptr @drm_file_get_master(ptr noundef %2) #9
  store ptr %27, ptr %7, align 4
  %28 = getelementptr inbounds %struct.drm_master, ptr %27, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.5) #9
  br label %265

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.drm_mode_create_lease, ptr %1, i32 0, i32 1
  %34 = load i32, ptr %33, align 8
  store i32 0, ptr %6, align 4
  %35 = getelementptr inbounds %struct.xarray, ptr %6, i32 0, i32 1
  store i32 33554436, ptr %35, align 4
  %36 = getelementptr inbounds %struct.xarray, ptr %6, i32 0, i32 2
  store ptr null, ptr %36, align 4
  %37 = getelementptr inbounds %struct.idr, ptr %6, i32 0, i32 1
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.idr, ptr %6, i32 0, i32 2
  store i32 0, ptr %38, align 4
  %39 = icmp eq i32 %34, 0
  br i1 %39, label %161, label %40

40:                                               ; preds = %32
  %41 = load i64, ptr %1, align 8
  %42 = trunc i64 %41 to i32
  %43 = inttoptr i32 %42 to ptr
  %44 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %34, i32 4) #9
  %45 = extractvalue { i32, i1 } %44, 1
  %46 = extractvalue { i32, i1 } %44, 0
  %47 = select i1 %45, i32 -1, i32 %46
  %48 = tail call ptr @memdup_user(ptr noundef %43, i32 noundef %47) #9
  %49 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = ptrtoint ptr %48 to i32
  call void @idr_destroy(ptr noundef nonnull %6) #9
  br label %265

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 2
  %54 = load volatile i8, ptr %53, align 2, !range !10
  %55 = icmp ne i8 %54, 0
  br i1 %45, label %156, label %56, !prof !11

56:                                               ; preds = %52
  %57 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %46, i32 noundef 3520) #10
  %58 = icmp eq ptr %57, null
  br i1 %58, label %156, label %62

59:                                               ; preds = %69
  %60 = add nuw i32 %63, 1
  %61 = icmp eq i32 %60, %34
  br i1 %61, label %74, label %62

62:                                               ; preds = %59, %56
  %63 = phi i32 [ %60, %59 ], [ 0, %56 ]
  %64 = getelementptr i32, ptr %48, i32 %63
  %65 = load i32, ptr %64, align 4
  %66 = tail call ptr @drm_mode_object_find(ptr noundef %0, ptr noundef %2, i32 noundef %65, i32 noundef 0) #9
  %67 = getelementptr ptr, ptr %57, i32 %63
  store ptr %66, ptr %67, align 4
  %68 = icmp eq ptr %66, null
  br i1 %68, label %145, label %69

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.drm_mode_object, ptr %66, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = tail call zeroext i1 @drm_mode_object_lease_required(i32 noundef %71) #9
  br i1 %72, label %59, label %73

73:                                               ; preds = %69
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.20) #9
  br label %145

74:                                               ; preds = %59
  %75 = icmp sgt i32 %34, 0
  br i1 %75, label %76, label %107

76:                                               ; preds = %76, %74
  %77 = phi i32 [ %97, %76 ], [ -1, %74 ]
  %78 = phi i32 [ %92, %76 ], [ -1, %74 ]
  %79 = phi i32 [ %88, %76 ], [ -1, %74 ]
  %80 = phi i32 [ %98, %76 ], [ 0, %74 ]
  %81 = getelementptr ptr, ptr %57, i32 %80
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.drm_mode_object, ptr %82, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, -858993460
  %86 = icmp eq i32 %79, -1
  %87 = select i1 %85, i1 %86, i1 false
  %88 = select i1 %87, i32 %80, i32 %79
  %89 = icmp eq i32 %84, -1061109568
  %90 = icmp eq i32 %78, -1
  %91 = select i1 %89, i1 %90, i1 false
  %92 = select i1 %91, i32 %80, i32 %78
  %93 = icmp eq i32 %84, -286331154
  %94 = icmp eq i32 %77, -1
  %95 = select i1 %55, i1 %93, i1 false
  %96 = select i1 %95, i1 %94, i1 false
  %97 = select i1 %96, i32 %80, i32 %77
  %98 = add nuw nsw i32 %80, 1
  %99 = icmp eq i32 %98, %34
  br i1 %99, label %100, label %76

100:                                              ; preds = %76
  %101 = icmp eq i32 %88, -1
  %102 = icmp eq i32 %92, -1
  %103 = select i1 %101, i1 true, i1 %102
  %104 = icmp eq i32 %97, -1
  %105 = select i1 %55, i1 %104, i1 false
  %106 = select i1 %103, i1 true, i1 %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %100, %74
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.21) #9
  br label %145

108:                                              ; preds = %142, %100
  %109 = phi i32 [ %143, %142 ], [ 0, %100 ]
  %110 = getelementptr ptr, ptr %57, i32 %109
  %111 = load ptr, ptr %110, align 4
  %112 = load i32, ptr %111, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.22, i32 noundef %112) #9
  %113 = add i32 %112, 1
  %114 = call i32 @idr_alloc(ptr noundef nonnull %6, ptr noundef nonnull @drm_lease_idr_object, i32 noundef %112, i32 noundef %113, i32 noundef 3264) #9
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.23, i32 noundef %112, i32 noundef %114) #9
  br label %145

117:                                              ; preds = %108
  %118 = getelementptr inbounds %struct.drm_mode_object, ptr %111, i32 0, i32 1
  %119 = load i32, ptr %118, align 4
  %120 = icmp ne i32 %119, -858993460
  %121 = select i1 %120, i1 true, i1 %55
  br i1 %121, label %142, label %122

122:                                              ; preds = %117
  %123 = getelementptr i8, ptr %111, i32 20
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr inbounds %struct.drm_plane, ptr %124, i32 0, i32 4
  %126 = load i32, ptr %125, align 8
  %127 = add i32 %126, 1
  %128 = call i32 @idr_alloc(ptr noundef nonnull %6, ptr noundef nonnull @drm_lease_idr_object, i32 noundef %126, i32 noundef %127, i32 noundef 3264) #9
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.24, i32 noundef %112, i32 noundef %128) #9
  br label %145

131:                                              ; preds = %122
  %132 = getelementptr i8, ptr %111, i32 24
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %142, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.drm_plane, ptr %133, i32 0, i32 4
  %137 = load i32, ptr %136, align 8
  %138 = add i32 %137, 1
  %139 = call i32 @idr_alloc(ptr noundef nonnull %6, ptr noundef nonnull @drm_lease_idr_object, i32 noundef %137, i32 noundef %138, i32 noundef 3264) #9
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.25, i32 noundef %112, i32 noundef %139) #9
  br label %145

142:                                              ; preds = %135, %131, %117
  %143 = add nuw nsw i32 %109, 1
  %144 = icmp eq i32 %143, %34
  br i1 %144, label %145, label %108

145:                                              ; preds = %142, %141, %130, %116, %107, %73, %62
  %146 = phi i32 [ -22, %73 ], [ -22, %107 ], [ %139, %141 ], [ %128, %130 ], [ %114, %116 ], [ 0, %142 ], [ -2, %62 ]
  br label %147

147:                                              ; preds = %153, %145
  %148 = phi i32 [ %154, %153 ], [ 0, %145 ]
  %149 = getelementptr ptr, ptr %57, i32 %148
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %147
  call void @drm_mode_object_put(ptr noundef nonnull %150) #9
  br label %153

153:                                              ; preds = %152, %147
  %154 = add nuw i32 %148, 1
  %155 = icmp eq i32 %154, %34
  br i1 %155, label %157, label %147

156:                                              ; preds = %56, %52
  tail call void @kfree(ptr noundef %48) #9
  br label %159

157:                                              ; preds = %153
  call void @kfree(ptr noundef nonnull %57) #9
  call void @kfree(ptr noundef %48) #9
  %158 = icmp eq i32 %146, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %157, %156
  %160 = phi i32 [ -12, %156 ], [ %146, %157 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.6, i32 noundef %160) #9
  call void @idr_destroy(ptr noundef nonnull %6) #9
  br label %265

161:                                              ; preds = %157, %32
  %162 = load i32, ptr %21, align 4
  %163 = and i32 %162, 526336
  %164 = call i32 @get_unused_fd_flags(i32 noundef %163) #9
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  call void @idr_destroy(ptr noundef nonnull %6) #9
  br label %265

167:                                              ; preds = %161
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.7) #9
  %168 = load ptr, ptr %7, align 4
  %169 = getelementptr inbounds %struct.drm_master, ptr %168, i32 0, i32 1
  %170 = load ptr, ptr %169, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %171 = getelementptr inbounds %struct.drm_master, ptr %168, i32 0, i32 7
  %172 = load i32, ptr %171, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.26, i32 noundef %172) #9
  %173 = load ptr, ptr %169, align 4
  %174 = call ptr @drm_master_create(ptr noundef %173) #9
  store ptr %174, ptr %4, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %177

176:                                              ; preds = %167
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.27) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  store ptr inttoptr (i32 -12 to ptr), ptr %8, align 4
  br label %240

177:                                              ; preds = %167
  %178 = getelementptr inbounds %struct.drm_device, ptr %170, i32 0, i32 30, i32 3
  call void @mutex_lock(ptr noundef %178) #9
  store i32 0, ptr %5, align 4
  %179 = call ptr @idr_get_next(ptr noundef nonnull %6, ptr noundef nonnull %5) #9
  %180 = icmp eq ptr %179, null
  br i1 %180, label %210, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.drm_device, ptr %170, i32 0, i32 30, i32 4
  %183 = getelementptr inbounds %struct.drm_master, ptr %168, i32 0, i32 9
  br label %184

184:                                              ; preds = %205, %181
  %185 = load i32, ptr %5, align 4
  %186 = call ptr @idr_find(ptr noundef %182, i32 noundef %185) #9
  %187 = icmp eq ptr %186, null
  br i1 %187, label %202, label %188

188:                                              ; preds = %184
  %189 = load i32, ptr %5, align 4
  br label %190

190:                                              ; preds = %198, %188
  %191 = phi ptr [ %183, %188 ], [ %192, %198 ]
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, %183
  br i1 %193, label %205, label %194

194:                                              ; preds = %190
  %195 = getelementptr i8, ptr %192, i32 -8
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %202, label %198

198:                                              ; preds = %194
  %199 = getelementptr i8, ptr %192, i32 16
  %200 = call ptr @idr_find(ptr noundef %199, i32 noundef %189) #9
  %201 = icmp eq ptr %200, null
  br i1 %201, label %190, label %202

202:                                              ; preds = %198, %194, %184
  %203 = phi i32 [ -16, %194 ], [ -16, %198 ], [ -2, %184 ]
  %204 = load i32, ptr %5, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.28, i32 noundef %204, i32 noundef %203) #9
  br label %234

205:                                              ; preds = %190
  %206 = load i32, ptr %5, align 4
  %207 = add i32 %206, 1
  store i32 %207, ptr %5, align 4
  %208 = call ptr @idr_get_next(ptr noundef nonnull %6, ptr noundef nonnull %5) #9
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %184

210:                                              ; preds = %205, %177
  br label %211

211:                                              ; preds = %211, %210
  %212 = phi ptr [ %214, %211 ], [ %168, %210 ]
  %213 = getelementptr inbounds %struct.drm_master, ptr %212, i32 0, i32 6
  %214 = load ptr, ptr %213, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %211

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.drm_master, ptr %212, i32 0, i32 11
  %218 = call i32 @idr_alloc(ptr noundef %217, ptr noundef nonnull %174, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #9
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %234, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.drm_master, ptr %174, i32 0, i32 7
  store i32 %218, ptr %221, align 4
  %222 = call ptr @drm_master_get(ptr noundef %168) #9
  %223 = getelementptr inbounds %struct.drm_master, ptr %174, i32 0, i32 6
  store ptr %222, ptr %223, align 4
  %224 = getelementptr inbounds %struct.drm_master, ptr %174, i32 0, i32 8
  %225 = getelementptr inbounds %struct.drm_master, ptr %168, i32 0, i32 9
  %226 = getelementptr inbounds %struct.drm_master, ptr %168, i32 0, i32 9, i32 1
  %227 = load ptr, ptr %226, align 4
  store ptr %224, ptr %226, align 4
  store ptr %225, ptr %224, align 4
  %228 = getelementptr inbounds %struct.drm_master, ptr %174, i32 0, i32 8, i32 1
  store ptr %227, ptr %228, align 4
  store volatile ptr %224, ptr %227, align 4
  %229 = load ptr, ptr %4, align 4
  %230 = getelementptr inbounds %struct.drm_master, ptr %229, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %230, ptr noundef nonnull align 4 dereferenceable(20) %6, i32 20, i1 false) #9
  %231 = getelementptr inbounds %struct.drm_master, ptr %229, i32 0, i32 7
  %232 = load i32, ptr %231, align 4
  %233 = load i32, ptr %171, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.29, i32 noundef %232, ptr noundef %229, i32 noundef %233, ptr noundef %168) #9
  call void @mutex_unlock(ptr noundef %178) #9
  br label %237

234:                                              ; preds = %216, %202
  %235 = phi i32 [ %203, %202 ], [ %218, %216 ]
  call void @mutex_unlock(ptr noundef %178) #9
  call void @drm_master_put(ptr noundef nonnull %4) #9
  %236 = inttoptr i32 %235 to ptr
  br label %237

237:                                              ; preds = %234, %220
  %238 = phi ptr [ %236, %234 ], [ %229, %220 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  store ptr %238, ptr %8, align 4
  %239 = icmp ugt ptr %238, inttoptr (i32 -4096 to ptr)
  br i1 %239, label %240, label %242

240:                                              ; preds = %237, %176
  %241 = phi ptr [ inttoptr (i32 -12 to ptr), %176 ], [ %238, %237 ]
  call void @idr_destroy(ptr noundef nonnull %6) #9
  br label %262

242:                                              ; preds = %237
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.8) #9
  %243 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 1
  %244 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 7
  %245 = load i32, ptr %244, align 4
  %246 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 12
  %247 = load ptr, ptr %246, align 8
  %248 = call ptr @dentry_open(ptr noundef %243, i32 noundef %245, ptr noundef %247) #9
  %249 = icmp ugt ptr %248, inttoptr (i32 -4096 to ptr)
  br i1 %249, label %250, label %251

250:                                              ; preds = %242
  call void @drm_master_put(ptr noundef nonnull %8) #9
  br label %262

251:                                              ; preds = %242
  %252 = getelementptr inbounds %struct.file, ptr %248, i32 0, i32 15
  %253 = load ptr, ptr %252, align 8
  %254 = getelementptr inbounds %struct.drm_file, ptr %253, i32 0, i32 8
  call void @drm_master_put(ptr noundef %254) #9
  store ptr %238, ptr %254, align 4
  %255 = getelementptr inbounds %struct.drm_file, ptr %253, i32 0, i32 7
  store i8 1, ptr %255, align 1
  store i8 1, ptr %253, align 4
  %256 = load ptr, ptr %8, align 4
  %257 = getelementptr inbounds %struct.drm_master, ptr %256, i32 0, i32 7
  %258 = load i32, ptr %257, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.9, i32 noundef %164, i32 noundef %258) #9
  %259 = getelementptr inbounds %struct.drm_mode_create_lease, ptr %1, i32 0, i32 4
  store i32 %164, ptr %259, align 4
  %260 = load i32, ptr %257, align 4
  %261 = getelementptr inbounds %struct.drm_mode_create_lease, ptr %1, i32 0, i32 3
  store i32 %260, ptr %261, align 8
  call void @fd_install(i32 noundef %164, ptr noundef %248) #9
  call void @drm_master_put(ptr noundef nonnull %7) #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.10) #9
  br label %267

262:                                              ; preds = %250, %240
  %263 = phi ptr [ %241, %240 ], [ %248, %250 ]
  %264 = ptrtoint ptr %263 to i32
  call void @put_unused_fd(i32 noundef %164) #9
  br label %265

265:                                              ; preds = %262, %166, %159, %50, %31
  %266 = phi i32 [ -22, %31 ], [ %51, %50 ], [ %160, %159 ], [ %164, %166 ], [ %264, %262 ]
  call void @drm_master_put(ptr noundef nonnull %7) #9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.11, i32 noundef %266) #9
  br label %267

267:                                              ; preds = %265, %251, %25, %3
  %268 = phi i32 [ -22, %25 ], [ %266, %265 ], [ 0, %251 ], [ -95, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #9
  ret i32 %268
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_list_lessees_ioctl(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.drm_mode_list_lessees, ptr %1, i32 0, i32 2
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = inttoptr i32 %7 to ptr
  %9 = load i32, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %10 = getelementptr inbounds %struct.drm_mode_list_lessees, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %66

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_driver, ptr %15, i32 0, i32 24
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %17, 2
  %21 = and i32 %20, %19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %66, label %23

23:                                               ; preds = %13
  %24 = tail call ptr @drm_file_get_master(ptr noundef %2) #9
  store ptr %24, ptr %4, align 4
  %25 = getelementptr inbounds %struct.drm_master, ptr %24, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.12, i32 noundef %26) #9
  %27 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 3
  tail call void @mutex_lock(ptr noundef %27) #9
  %28 = getelementptr inbounds %struct.drm_master, ptr %24, i32 0, i32 9
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %62, label %31

31:                                               ; preds = %57, %23
  %32 = phi ptr [ %59, %57 ], [ %29, %23 ]
  %33 = phi i32 [ %58, %57 ], [ 0, %23 ]
  %34 = getelementptr i8, ptr %32, i32 24
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = getelementptr i8, ptr %32, i32 16
  %39 = tail call i32 @radix_tree_tagged(ptr noundef %38, i32 noundef 0) #9
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %37, %31
  %42 = icmp ugt i32 %9, %33
  br i1 %42, label %43, label %55

43:                                               ; preds = %41
  %44 = getelementptr i8, ptr %32, i32 -4
  %45 = load i32, ptr %44, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.13, i32 noundef %45) #9
  %46 = getelementptr i32, ptr %8, i32 %33
  %47 = load i32, ptr %44, align 4
  %48 = tail call ptr @llvm.thread.pointer() #9
  %49 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %50 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %49) #11, !srcloc !12
  %51 = and i32 %50, -13
  %52 = or i32 %51, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #9, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !14
  %53 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %46, i32 %47, i32 -1090519041) #9, !srcloc !15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #9, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !14
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %43, %41
  %56 = add i32 %33, 1
  br label %57

57:                                               ; preds = %55, %37
  %58 = phi i32 [ %33, %37 ], [ %56, %55 ]
  %59 = load ptr, ptr %32, align 4
  %60 = icmp eq ptr %59, %28
  br i1 %60, label %62, label %31

61:                                               ; preds = %43
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.14, i32 noundef %33) #9
  br label %64

62:                                               ; preds = %57, %23
  %63 = phi i32 [ 0, %23 ], [ %58, %57 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.14, i32 noundef %63) #9
  store i32 %63, ptr %1, align 8
  br label %64

64:                                               ; preds = %62, %61
  %65 = phi i32 [ 0, %62 ], [ %53, %61 ]
  tail call void @mutex_unlock(ptr noundef %27) #9
  call void @drm_master_put(ptr noundef nonnull %4) #9
  br label %66

66:                                               ; preds = %64, %13, %3
  %67 = phi i32 [ %65, %64 ], [ -22, %3 ], [ -95, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_get_lease_ioctl(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.drm_mode_get_lease, ptr %1, i32 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = inttoptr i32 %8 to ptr
  %10 = load i32, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %11 = getelementptr inbounds %struct.drm_mode_get_lease, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %67

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_driver, ptr %16, i32 0, i32 24
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %18, 2
  %22 = and i32 %21, %20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %67, label %24

24:                                               ; preds = %14
  %25 = tail call ptr @drm_file_get_master(ptr noundef %2) #9
  store ptr %25, ptr %4, align 4
  %26 = getelementptr inbounds %struct.drm_master, ptr %25, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.15, i32 noundef %27) #9
  %28 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 3
  tail call void @mutex_lock(ptr noundef %28) #9
  %29 = getelementptr inbounds %struct.drm_master, ptr %25, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.drm_master, ptr %25, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 30, i32 4
  br label %38

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.drm_master, ptr %25, i32 0, i32 10
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi ptr [ %35, %32 ], [ %37, %36 ]
  store i32 0, ptr %5, align 4
  %40 = call ptr @idr_get_next(ptr noundef %39, ptr noundef nonnull %5) #9
  %41 = icmp eq ptr %40, null
  br i1 %41, label %63, label %42

42:                                               ; preds = %56, %38
  %43 = phi i32 [ %57, %56 ], [ 0, %38 ]
  %44 = icmp ugt i32 %10, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load i32, ptr %5, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.16, i32 noundef %46) #9
  %47 = getelementptr i32, ptr %9, i32 %43
  %48 = load i32, ptr %5, align 4
  %49 = tail call ptr @llvm.thread.pointer() #9
  %50 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 3
  %51 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %50) #11, !srcloc !12
  %52 = and i32 %51, -13
  %53 = or i32 %52, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #9, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !14
  %54 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %47, i32 %48, i32 -1090519041) #9, !srcloc !16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #9, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !14
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %45, %42
  %57 = add i32 %43, 1
  %58 = load i32, ptr %5, align 4
  %59 = add i32 %58, 1
  store i32 %59, ptr %5, align 4
  %60 = call ptr @idr_get_next(ptr noundef %39, ptr noundef nonnull %5) #9
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %42

62:                                               ; preds = %45
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef %43) #9
  br label %65

63:                                               ; preds = %56, %38
  %64 = phi i32 [ 0, %38 ], [ %57, %56 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef %64) #9
  store i32 %64, ptr %1, align 8
  br label %65

65:                                               ; preds = %63, %62
  %66 = phi i32 [ 0, %63 ], [ %54, %62 ]
  call void @mutex_unlock(ptr noundef %28) #9
  call void @drm_master_put(ptr noundef nonnull %4) #9
  br label %67

67:                                               ; preds = %65, %14, %3
  %68 = phi i32 [ %66, %65 ], [ -22, %3 ], [ -95, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_revoke_lease_ioctl(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %5 = load i32, ptr %1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 128, ptr noundef nonnull @.str.18, i32 noundef %5) #9
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_driver, ptr %7, i32 0, i32 24
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %9, 2
  %13 = and i32 %12, %11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %3
  %16 = tail call ptr @drm_file_get_master(ptr noundef %2) #9
  store ptr %16, ptr %4, align 4
  %17 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 3
  tail call void @mutex_lock(ptr noundef %17) #9
  %18 = load i32, ptr %1, align 4
  br label %19

19:                                               ; preds = %19, %15
  %20 = phi ptr [ %16, %15 ], [ %22, %19 ]
  %21 = getelementptr inbounds %struct.drm_master, ptr %20, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %19

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.drm_master, ptr %20, i32 0, i32 11
  %26 = tail call ptr @idr_find(ptr noundef %25, i32 noundef %18) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.drm_master, ptr %26, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %16
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call fastcc void @_drm_lease_revoke(ptr noundef nonnull %26)
  br label %33

33:                                               ; preds = %32, %28, %24
  %34 = phi i32 [ 0, %32 ], [ -2, %24 ], [ -13, %28 ]
  tail call void @mutex_unlock(ptr noundef %17) #9
  call void @drm_master_put(ptr noundef nonnull %4) #9
  br label %35

35:                                               ; preds = %33, %3
  %36 = phi i32 [ %34, %33 ], [ -95, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_object_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_mode_object_lease_required(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_master_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_master_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_tagged(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readonly }

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
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2423426}
!13 = !{i64 2423623}
!14 = !{i64 2149908902}
!15 = !{i64 2155102212, i64 2155102492, i64 2155102826, i64 2155103160}
!16 = !{i64 2155110774, i64 2155111054, i64 2155111388, i64 2155111722}
