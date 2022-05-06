; ModuleID = '/llk/IR/fs/ubifs/scan.c_pt.bc'
source_filename = "../fs/ubifs/scan.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_pad_node = type <{ %struct.ubifs_ch, i32 }>
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
%struct.ubifs_scan_leb = type { i32, i32, %struct.list_head, i32, ptr }
%struct.ubifs_scan_node = type { %struct.list_head, %union.ubifs_key, i64, i32, i32, i32, ptr }
%struct.ubifs_ino_node = type { %struct.ubifs_ch, [16 x i8], i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i16, [26 x i8], [0 x i8] }

@.str = private unnamed_addr constant [26 x i8] c"bad pad node at LEB %d:%d\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"bad padding length %d - %d\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"cannot read %d bytes from LEB %d:%d, error %d\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"offs % c->min_io_size == 0\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"fs/ubifs/scan.c\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"corruption at LEB %d:%d\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"first %d bytes from LEB %d:%d\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"garbage\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"bad node\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"empty space starts at non-aligned offset %d\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"corrupt empty space at LEB %d:%d\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"LEB %d scanning failed\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"LEB %d scanning failed, error %d\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_scan_a_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = load i32, ptr %1, align 1
  %8 = trunc i32 %7 to i8
  switch i32 %7, label %9 [
    i32 -1, label %60
    i32 101718065, label %30
  ]

9:                                                ; preds = %6
  %10 = icmp sgt i32 %2, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %9
  %12 = tail call i32 @llvm.smin.i32(i32 %2, i32 28) #4
  %13 = icmp eq i8 %8, -50
  br i1 %13, label %14, label %23

14:                                               ; preds = %19, %11
  %15 = phi ptr [ %20, %19 ], [ %1, %11 ]
  %16 = phi i32 [ %17, %19 ], [ 0, %11 ]
  %17 = add nuw nsw i32 %16, 1
  %18 = icmp eq i32 %17, %12
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %15, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, -50
  br i1 %22, label %14, label %23

23:                                               ; preds = %19, %14, %11, %9
  %24 = phi i32 [ 0, %9 ], [ 0, %11 ], [ %17, %19 ], [ %12, %14 ]
  %25 = icmp ne i32 %24, 0
  %26 = and i32 %24, 7
  %27 = icmp eq i32 %26, 0
  %28 = and i1 %25, %27
  %29 = select i1 %28, i32 %24, i32 0
  br label %60

30:                                               ; preds = %6
  %31 = icmp ult i32 %2, 24
  br i1 %31, label %60, label %32

32:                                               ; preds = %30
  %33 = tail call i32 @ubifs_check_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 1) #4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 4
  %37 = load i8, ptr %36, align 1
  %38 = icmp eq i8 %37, 5
  br i1 %38, label %39, label %60

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ubifs_pad_node, ptr %1, i32 0, i32 1
  %41 = load i32, ptr %40, align 1
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 3
  %45 = load i32, ptr %44, align 1
  %46 = add i32 %45, %41
  %47 = add i32 %46, %4
  %48 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %49 = load i32, ptr %48, align 8
  %50 = icmp sgt i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %43, %39
  %52 = icmp eq i32 %5, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %3, i32 noundef %4) #4
  tail call void @ubifs_dump_node(ptr noundef %0, ptr noundef %1, i32 noundef %2) #4
  br label %60

54:                                               ; preds = %43
  %55 = and i32 %46, 7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = icmp eq i32 %5, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %57
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %4, i32 noundef %47) #4
  br label %60

60:                                               ; preds = %59, %57, %54, %53, %51, %35, %32, %30, %23, %6
  %61 = phi i32 [ %29, %23 ], [ %7, %6 ], [ 0, %30 ], [ -3, %32 ], [ -4, %53 ], [ -4, %51 ], [ -4, %59 ], [ -4, %57 ], [ %46, %54 ], [ -2, %35 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_check_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubifs_start_scan(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3392, i32 noundef 24) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %4
  store i32 %1, ptr %6, align 8
  %9 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %6, i32 0, i32 2
  store volatile ptr %9, ptr %9, align 8
  %10 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %6, i32 0, i32 2, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %6, i32 0, i32 4
  store ptr %3, ptr %11, align 4
  %12 = getelementptr i8, ptr %3, i32 %2
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %14 = load i32, ptr %13, align 8
  %15 = sub i32 %14, %2
  %16 = tail call i32 @ubifs_leb_read(ptr noundef %0, i32 noundef %1, ptr noundef %12, i32 noundef %2, i32 noundef %15, i32 noundef 0) #4
  switch i32 %16, label %17 [
    i32 -74, label %21
    i32 0, label %21
  ]

17:                                               ; preds = %8
  %18 = load i32, ptr %13, align 8
  %19 = sub i32 %18, %2
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %19, i32 noundef %1, i32 noundef %2, i32 noundef %16) #4
  tail call void @kfree(ptr noundef nonnull %6) #4
  %20 = inttoptr i32 %16 to ptr
  br label %21

21:                                               ; preds = %17, %8, %8, %4
  %22 = phi ptr [ %20, %17 ], [ %6, %8 ], [ %6, %8 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_end_scan(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %6 = load i32, ptr %5, align 8
  %7 = srem i32 %3, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !8

9:                                                ; preds = %4
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 167) #4
  %10 = load i32, ptr %5, align 8
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi i32 [ %6, %4 ], [ %10, %9 ]
  %13 = add i32 %3, -1
  %14 = add i32 %13, %12
  %15 = sub i32 0, %12
  %16 = and i32 %14, %15
  %17 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %1, i32 0, i32 3
  store i32 %16, ptr %17, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_add_snod(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3136, i32 noundef 40) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %41, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ubifs_ch, ptr %2, i32 0, i32 2
  %10 = load i64, ptr %9, align 1
  %11 = getelementptr inbounds %struct.ubifs_scan_node, ptr %6, i32 0, i32 2
  store i64 %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.ubifs_ch, ptr %2, i32 0, i32 4
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.ubifs_scan_node, ptr %6, i32 0, i32 3
  store i32 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.ubifs_scan_node, ptr %6, i32 0, i32 4
  store i32 %3, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ubifs_ch, ptr %2, i32 0, i32 3
  %18 = load i32, ptr %17, align 1
  %19 = getelementptr inbounds %struct.ubifs_scan_node, ptr %6, i32 0, i32 5
  store i32 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.ubifs_scan_node, ptr %6, i32 0, i32 6
  store ptr %2, ptr %20, align 4
  %21 = icmp ult i8 %13, 4
  br i1 %21, label %22, label %28

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.ubifs_ino_node, ptr %2, i32 0, i32 1
  %24 = getelementptr inbounds %struct.ubifs_scan_node, ptr %6, i32 0, i32 1
  %25 = load i32, ptr %23, align 8
  store i32 %25, ptr %24, align 8
  %26 = getelementptr %struct.ubifs_ino_node, ptr %2, i32 0, i32 1, i32 4
  %27 = load i32, ptr %26, align 4
  br label %30

28:                                               ; preds = %8
  %29 = getelementptr inbounds %struct.ubifs_scan_node, ptr %6, i32 0, i32 1
  store i32 -559038801, ptr %29, align 8
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi i32 [ 4, %28 ], [ %27, %22 ]
  %32 = getelementptr inbounds %struct.ubifs_scan_node, ptr %6, i32 0, i32 1
  %33 = getelementptr [2 x i32], ptr %32, i32 0, i32 1
  store i32 %31, ptr %33, align 4
  %34 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %1, i32 0, i32 2
  %35 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %1, i32 0, i32 2, i32 1
  %36 = load ptr, ptr %35, align 4
  store ptr %6, ptr %35, align 4
  store ptr %34, ptr %6, align 8
  %37 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %36, ptr %37, align 4
  store volatile ptr %6, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %1, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 4
  br label %41

41:                                               ; preds = %30, %4
  %42 = phi i32 [ 0, %30 ], [ -12, %4 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_scanned_corruption(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %1, i32 noundef %2) #4
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %6 = load i32, ptr %5, align 8
  %7 = sub i32 %6, %2
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 8192)
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %8, i32 noundef %1, i32 noundef %2) #4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 2, i32 noundef 32, i32 noundef 4, ptr noundef %3, i32 noundef %8, i1 noundef zeroext true) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubifs_scan(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr i8, ptr %3, i32 %2
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %8 = load i32, ptr %7, align 8
  %9 = sub i32 %8, %2
  %10 = tail call ptr @ubifs_start_scan(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3)
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %157, label %12

12:                                               ; preds = %5
  %13 = icmp sgt i32 %9, 7
  br i1 %13, label %14, label %68

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %10, i32 0, i32 2
  %16 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %10, i32 0, i32 2, i32 1
  %17 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %10, i32 0, i32 1
  br label %18

18:                                               ; preds = %62, %14
  %19 = phi i32 [ %2, %14 ], [ %64, %62 ]
  %20 = phi i32 [ %9, %14 ], [ %65, %62 ]
  %21 = phi ptr [ %6, %14 ], [ %66, %62 ]
  %22 = tail call i32 @__cond_resched() #4
  %23 = tail call i32 @ubifs_scan_a_node(ptr noundef %0, ptr noundef %21, i32 noundef %20, i32 noundef %1, i32 noundef %19, i32 noundef %4)
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %62, label %25

25:                                               ; preds = %18
  switch i32 %23, label %26 [
    i32 -1, label %68
    i32 0, label %121
    i32 -2, label %27
    i32 -3, label %120
    i32 -4, label %120
  ]

26:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.11) #4
  br label %143

27:                                               ; preds = %25
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %29 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3136, i32 noundef 40) #5
  %30 = icmp eq ptr %29, null
  br i1 %30, label %143, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ubifs_ch, ptr %21, i32 0, i32 2
  %33 = load i64, ptr %32, align 1
  %34 = getelementptr inbounds %struct.ubifs_scan_node, ptr %29, i32 0, i32 2
  store i64 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.ubifs_ch, ptr %21, i32 0, i32 4
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds %struct.ubifs_scan_node, ptr %29, i32 0, i32 3
  store i32 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.ubifs_scan_node, ptr %29, i32 0, i32 4
  store i32 %19, ptr %39, align 4
  %40 = getelementptr inbounds %struct.ubifs_ch, ptr %21, i32 0, i32 3
  %41 = load i32, ptr %40, align 1
  %42 = getelementptr inbounds %struct.ubifs_scan_node, ptr %29, i32 0, i32 5
  store i32 %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.ubifs_scan_node, ptr %29, i32 0, i32 6
  store ptr %21, ptr %43, align 4
  %44 = icmp ult i8 %36, 4
  br i1 %44, label %45, label %50

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.ubifs_ino_node, ptr %21, i32 0, i32 1
  %47 = load i32, ptr %46, align 8
  %48 = getelementptr %struct.ubifs_ino_node, ptr %21, i32 0, i32 1, i32 4
  %49 = load i32, ptr %48, align 4
  br label %50

50:                                               ; preds = %45, %31
  %51 = phi i32 [ %47, %45 ], [ -559038801, %31 ]
  %52 = phi i32 [ %49, %45 ], [ 4, %31 ]
  %53 = getelementptr inbounds %struct.ubifs_scan_node, ptr %29, i32 0, i32 1
  store i32 %51, ptr %53, align 8
  %54 = getelementptr [2 x i32], ptr %53, i32 0, i32 1
  store i32 %52, ptr %54, align 4
  %55 = load ptr, ptr %16, align 4
  store ptr %29, ptr %16, align 4
  store ptr %15, ptr %29, align 8
  %56 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %55, ptr %56, align 4
  store volatile ptr %29, ptr %55, align 4
  %57 = load i32, ptr %17, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %17, align 4
  %59 = load i32, ptr %40, align 1
  %60 = add i32 %59, 7
  %61 = and i32 %60, -8
  br label %62

62:                                               ; preds = %50, %18
  %63 = phi i32 [ %61, %50 ], [ %23, %18 ]
  %64 = add i32 %63, %19
  %65 = sub i32 %20, %63
  %66 = getelementptr i8, ptr %21, i32 %63
  %67 = icmp sgt i32 %65, 7
  br i1 %67, label %18, label %68

68:                                               ; preds = %62, %25, %12
  %69 = phi ptr [ %6, %12 ], [ %21, %25 ], [ %66, %62 ]
  %70 = phi i32 [ %9, %12 ], [ %20, %25 ], [ %65, %62 ]
  %71 = phi i32 [ %2, %12 ], [ %19, %25 ], [ %64, %62 ]
  %72 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %73 = load i32, ptr %72, align 8
  %74 = srem i32 %71, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %68
  %77 = icmp eq i32 %4, 0
  br i1 %77, label %78, label %130

78:                                               ; preds = %76
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %71) #4
  br label %124

79:                                               ; preds = %68
  %80 = add i32 %71, -1
  %81 = add i32 %80, %73
  %82 = sub i32 0, %73
  %83 = and i32 %81, %82
  %84 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %10, i32 0, i32 3
  store i32 %83, ptr %84, align 4
  %85 = icmp sgt i32 %70, 4
  br i1 %85, label %86, label %97

86:                                               ; preds = %92, %79
  %87 = phi i32 [ %93, %92 ], [ %71, %79 ]
  %88 = phi i32 [ %95, %92 ], [ %70, %79 ]
  %89 = phi ptr [ %94, %92 ], [ %69, %79 ]
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %102

92:                                               ; preds = %86
  %93 = add i32 %87, 4
  %94 = getelementptr i8, ptr %89, i32 4
  %95 = add nsw i32 %88, -4
  %96 = icmp sgt i32 %88, 8
  br i1 %96, label %86, label %97

97:                                               ; preds = %92, %79
  %98 = phi ptr [ %69, %79 ], [ %94, %92 ]
  %99 = phi i32 [ %70, %79 ], [ %95, %92 ]
  %100 = phi i32 [ %71, %79 ], [ %93, %92 ]
  %101 = icmp eq i32 %99, 0
  br i1 %101, label %157, label %102

102:                                              ; preds = %97, %86
  %103 = phi i32 [ %100, %97 ], [ %87, %86 ]
  %104 = phi i32 [ %99, %97 ], [ %88, %86 ]
  %105 = phi ptr [ %98, %97 ], [ %89, %86 ]
  br label %106

106:                                              ; preds = %115, %102
  %107 = phi i32 [ %116, %115 ], [ %103, %102 ]
  %108 = phi i32 [ %118, %115 ], [ %104, %102 ]
  %109 = phi ptr [ %117, %115 ], [ %105, %102 ]
  %110 = load i8, ptr %109, align 1
  %111 = icmp eq i8 %110, -1
  br i1 %111, label %115, label %112

112:                                              ; preds = %106
  %113 = icmp eq i32 %4, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %112
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %1, i32 noundef %107) #4
  br label %124

115:                                              ; preds = %106
  %116 = add i32 %107, 1
  %117 = getelementptr i8, ptr %109, i32 1
  %118 = add i32 %108, -1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %157, label %106

120:                                              ; preds = %25, %25
  br label %121

121:                                              ; preds = %120, %25
  %122 = phi ptr [ @.str.10, %120 ], [ @.str.9, %25 ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull %122) #4
  %123 = icmp eq i32 %4, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %121, %114, %78
  %125 = phi i32 [ %19, %121 ], [ %107, %114 ], [ %71, %78 ]
  %126 = phi ptr [ %21, %121 ], [ %109, %114 ], [ %69, %78 ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %1, i32 noundef %125) #4
  %127 = load i32, ptr %7, align 8
  %128 = sub i32 %127, %125
  %129 = tail call i32 @llvm.smin.i32(i32 %128, i32 8192) #4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %129, i32 noundef %1, i32 noundef %125) #4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 2, i32 noundef 32, i32 noundef 4, ptr noundef %126, i32 noundef %129, i1 noundef zeroext true) #4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %1) #4
  br label %130

130:                                              ; preds = %124, %121, %112, %76
  %131 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %10, i32 0, i32 2
  %132 = load volatile ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, %131
  br i1 %133, label %142, label %134

134:                                              ; preds = %134, %130
  %135 = phi ptr [ %140, %134 ], [ %132, %130 ]
  %136 = getelementptr inbounds %struct.list_head, ptr %135, i32 0, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = load ptr, ptr %135, align 4
  %139 = getelementptr inbounds %struct.list_head, ptr %138, i32 0, i32 1
  store ptr %137, ptr %139, align 4
  store volatile ptr %138, ptr %137, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %135, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %136, align 4
  tail call void @kfree(ptr noundef %135) #4
  %140 = load volatile ptr, ptr %131, align 4
  %141 = icmp eq ptr %140, %131
  br i1 %141, label %142, label %134

142:                                              ; preds = %134, %130
  tail call void @kfree(ptr noundef %10) #4
  br label %157

143:                                              ; preds = %27, %26
  %144 = phi i32 [ -22, %26 ], [ -12, %27 ]
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %1, i32 noundef %144) #4
  %145 = load volatile ptr, ptr %15, align 4
  %146 = icmp eq ptr %145, %15
  br i1 %146, label %155, label %147

147:                                              ; preds = %147, %143
  %148 = phi ptr [ %153, %147 ], [ %145, %143 ]
  %149 = getelementptr inbounds %struct.list_head, ptr %148, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = load ptr, ptr %148, align 4
  %152 = getelementptr inbounds %struct.list_head, ptr %151, i32 0, i32 1
  store ptr %150, ptr %152, align 4
  store volatile ptr %151, ptr %150, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %148, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %149, align 4
  tail call void @kfree(ptr noundef %148) #4
  %153 = load volatile ptr, ptr %15, align 4
  %154 = icmp eq ptr %153, %15
  br i1 %154, label %155, label %147

155:                                              ; preds = %147, %143
  tail call void @kfree(ptr noundef %10) #4
  %156 = inttoptr i32 %144 to ptr
  br label %157

157:                                              ; preds = %155, %142, %115, %97, %5
  %158 = phi ptr [ %156, %155 ], [ inttoptr (i32 -117 to ptr), %142 ], [ %10, %5 ], [ %10, %97 ], [ %10, %115 ]
  ret ptr %158
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_scan_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %0, i32 0, i32 2
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %11, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  tail call void @kfree(ptr noundef %6) #4
  %11 = load volatile ptr, ptr %2, align 4
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %1
  tail call void @kfree(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(2) }

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
