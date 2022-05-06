; ModuleID = '/llk/IR/drivers/mtd/mtdblock.c_pt.bc'
source_filename = "../drivers/mtd/mtdblock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mtd_blktrans_ops = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.mtd_blktrans_dev = type { ptr, %struct.list_head, ptr, %struct.mutex, i32, i8, i32, i32, i32, %struct.kref, ptr, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mtdblk_dev = type { %struct.mtd_blktrans_dev, i32, %struct.mutex, ptr, i32, i32, i32 }
%struct.erase_info = type { i64, i64, i64 }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.61 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.61 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }

@__initcall__kmod_mtdblock__208_353_mtdblock_tr_init6 = internal global ptr @mtdblock_tr_init, section ".initcall6.init", align 4
@mtdblock_tr = internal global %struct.mtd_blktrans_ops { ptr @.str, i32 31, i32 0, i32 512, i32 0, ptr @mtdblock_readsect, ptr @mtdblock_writesect, ptr null, ptr null, ptr null, ptr @mtdblock_flush, ptr @mtdblock_open, ptr @mtdblock_release, ptr @mtdblock_add_mtd, ptr @mtdblock_remove_dev, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, align 4
@__exitcall_mtdblock_tr_exit = internal global ptr @mtdblock_tr_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file209 = internal constant [35 x i8] c"mtdblock.file=drivers/mtd/mtdblock\00", section ".modinfo", align 1
@__UNIQUE_ID_license210 = internal constant [21 x i8] c"mtdblock.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author211 = internal constant [56 x i8] c"mtdblock.author=Nicolas Pitre <nico@fluxnic.net> et al.\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [95 x i8] c"mtdblock.description=Caching read/erase/writeback block device emulation access to MTD devices\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"mtdblock\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"\014mtdblock: erase of region [0x%lx, 0x%x] on \22%s\22 failed\0A\00", align 1
@mtdblock_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"&mtdblk->cache_mutex\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"\014%s: MTD device '%s' is NAND, please consider using UBI block devices instead.\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file209, ptr @__UNIQUE_ID_license210, ptr @__exitcall_mtdblock_tr_exit, ptr @__initcall__kmod_mtdblock__208_353_mtdblock_tr_init6, ptr @mtdblock_tr_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mtdblock_tr_init() #0 section ".init.text" {
  %1 = tail call i32 @register_mtd_blktrans(ptr noundef nonnull @mtdblock_tr) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mtdblock_tr_exit() #0 section ".exit.text" {
  %1 = tail call i32 @deregister_mtd_blktrans(ptr noundef nonnull @mtdblock_tr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @deregister_mtd_blktrans(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_mtd_blktrans(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtdblock_readsect(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = shl i32 %1, 9
  %6 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mtdblk_dev, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.mtdblk_dev, ptr %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.mtdblk_dev, ptr %0, i32 0, i32 4
  %14 = getelementptr inbounds %struct.mtdblk_dev, ptr %0, i32 0, i32 3
  br label %18

15:                                               ; preds = %3
  %16 = zext i32 %5 to i64
  %17 = call i32 @mtd_read(ptr noundef %7, i64 noundef %16, i32 noundef 512, ptr noundef nonnull %4, ptr noundef %2) #9
  br label %46

18:                                               ; preds = %41, %11
  %19 = phi ptr [ %2, %11 ], [ %42, %41 ]
  %20 = phi i32 [ 512, %11 ], [ %44, %41 ]
  %21 = phi i32 [ %5, %11 ], [ %43, %41 ]
  %22 = urem i32 %21, %9
  %23 = sub i32 %9, %22
  %24 = call i32 @llvm.umin.i32(i32 %23, i32 %20) #9
  %25 = load i32, ptr %12, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %18
  %28 = sub nuw i32 %21, %22
  %29 = load i32, ptr %13, align 4
  %30 = icmp eq i32 %29, %28
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load ptr, ptr %14, align 4
  %33 = getelementptr i8, ptr %32, i32 %22
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %19, ptr align 1 %33, i32 %24, i1 false) #9
  br label %41

34:                                               ; preds = %27, %18
  %35 = zext i32 %21 to i64
  %36 = call i32 @mtd_read(ptr noundef %7, i64 noundef %35, i32 noundef %24, ptr noundef nonnull %4, ptr noundef %19) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i32, ptr %4, align 4
  %40 = icmp eq i32 %39, %24
  br i1 %40, label %41, label %46

41:                                               ; preds = %38, %31
  %42 = getelementptr i8, ptr %19, i32 %24
  %43 = add i32 %24, %21
  %44 = sub nsw i32 %20, %24
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %18, label %46

46:                                               ; preds = %41, %38, %34, %15
  %47 = phi i32 [ %17, %15 ], [ 0, %41 ], [ -5, %38 ], [ %36, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtdblock_writesect(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = alloca %struct.erase_info, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.mtdblk_dev, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.mtdblk_dev, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14, !prof !9

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mtd_info, ptr %16, i32 0, i32 3
  %18 = load i32, ptr %17, align 8
  %19 = tail call noalias ptr @vmalloc(i32 noundef %18) #10
  store ptr %19, ptr %7, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %99, label %21

21:                                               ; preds = %14, %10, %3
  %22 = shl i32 %1, 9
  %23 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.mtdblk_dev, ptr %0, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.mtdblk_dev, ptr %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.mtdblk_dev, ptr %0, i32 0, i32 4
  %31 = getelementptr inbounds i8, ptr %4, i32 16
  %32 = getelementptr inbounds %struct.erase_info, ptr %4, i32 0, i32 1
  %33 = zext i32 %26 to i64
  br label %37

34:                                               ; preds = %21
  %35 = zext i32 %22 to i64
  %36 = call i32 @mtd_write(ptr noundef %24, i64 noundef %35, i32 noundef 512, ptr noundef nonnull %6, ptr noundef %2) #9
  br label %97

37:                                               ; preds = %92, %28
  %38 = phi ptr [ %2, %28 ], [ %93, %92 ]
  %39 = phi i32 [ 512, %28 ], [ %95, %92 ]
  %40 = phi i32 [ %22, %28 ], [ %94, %92 ]
  %41 = urem i32 %40, %26
  %42 = sub nuw i32 %40, %41
  %43 = sub i32 %26, %41
  %44 = call i32 @llvm.umin.i32(i32 %43, i32 %39) #9
  %45 = icmp eq i32 %44, %26
  br i1 %45, label %46, label %63

46:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  store i64 0, ptr %31, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %47 = zext i32 %40 to i64
  store i64 %47, ptr %4, align 8
  store i64 %33, ptr %32, align 8
  %48 = call i32 @mtd_erase(ptr noundef %24, ptr noundef nonnull %4) #9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.mtd_info, ptr %24, i32 0, i32 13
  %52 = load ptr, ptr %51, align 8
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %40, i32 noundef %26, ptr noundef %52) #11
  br label %60

54:                                               ; preds = %46
  %55 = call i32 @mtd_write(ptr noundef %24, i64 noundef %47, i32 noundef %26, ptr noundef nonnull %5, ptr noundef %38) #9
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, ptr %5, align 4
  %59 = icmp eq i32 %58, %26
  br i1 %59, label %62, label %60

60:                                               ; preds = %57, %54, %50
  %61 = phi i32 [ %48, %50 ], [ -5, %57 ], [ %55, %54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  br label %97

62:                                               ; preds = %57
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  br label %92

63:                                               ; preds = %37
  %64 = load i32, ptr %29, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i32, ptr %30, align 4
  %68 = icmp eq i32 %67, %42
  br i1 %68, label %89, label %69

69:                                               ; preds = %66
  %70 = call fastcc i32 @write_cached_data(ptr noundef %0) #9
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %69
  %73 = load i32, ptr %29, align 4
  br label %74

74:                                               ; preds = %72, %63
  %75 = phi i32 [ %64, %63 ], [ %73, %72 ]
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr %30, align 4
  %79 = icmp eq i32 %78, %42
  br i1 %79, label %89, label %80

80:                                               ; preds = %77, %74
  store i32 0, ptr %29, align 4
  %81 = zext i32 %42 to i64
  %82 = load ptr, ptr %7, align 4
  %83 = call i32 @mtd_read(ptr noundef %24, i64 noundef %81, i32 noundef %26, ptr noundef nonnull %6, ptr noundef %82) #9
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %80
  %86 = load i32, ptr %6, align 4
  %87 = icmp eq i32 %86, %26
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  store i32 %42, ptr %30, align 4
  store i32 %26, ptr %25, align 4
  store i32 1, ptr %29, align 4
  br label %89

89:                                               ; preds = %88, %77, %66
  %90 = load ptr, ptr %7, align 4
  %91 = getelementptr i8, ptr %90, i32 %41
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %91, ptr align 1 %38, i32 %44, i1 false) #9
  store i32 2, ptr %29, align 4
  br label %92

92:                                               ; preds = %89, %62
  %93 = getelementptr i8, ptr %38, i32 %44
  %94 = add i32 %44, %40
  %95 = sub nsw i32 %39, %44
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %37, label %97

97:                                               ; preds = %92, %85, %80, %69, %60, %34
  %98 = phi i32 [ %36, %34 ], [ %61, %60 ], [ 0, %92 ], [ -5, %85 ], [ %83, %80 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  br label %99

99:                                               ; preds = %97, %14
  %100 = phi i32 [ %98, %97 ], [ -4, %14 ]
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtdblock_flush(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mtdblk_dev, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %2) #9
  %3 = tail call fastcc i32 @write_cached_data(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %2) #9
  %4 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %5, %1 ], [ %9, %6 ]
  %8 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 62
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 37
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void %13(ptr noundef %7) #9
  br label %16

16:                                               ; preds = %15, %11
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtdblock_open(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mtdblk_dev, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, 1
  store i32 %6, ptr %2, align 4
  br label %23

7:                                                ; preds = %1
  store i32 1, ptr %2, align 4
  %8 = getelementptr inbounds %struct.mtdblk_dev, ptr %0, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %8, ptr noundef nonnull @.str.2, ptr noundef nonnull @mtdblock_open.__key) #9
  %9 = getelementptr inbounds %struct.mtdblk_dev, ptr %0, i32 0, i32 6
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mtd_info, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 4096
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.mtd_info, ptr %11, i32 0, i32 3
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mtdblk_dev, ptr %0, i32 0, i32 5
  store i32 %18, ptr %21, align 4
  %22 = getelementptr inbounds %struct.mtdblk_dev, ptr %0, i32 0, i32 3
  store ptr null, ptr %22, align 4
  br label %23

23:                                               ; preds = %20, %16, %7, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtdblock_release(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mtdblk_dev, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %2) #9
  %3 = tail call fastcc i32 @write_cached_data(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %2) #9
  %4 = getelementptr inbounds %struct.mtdblk_dev, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1
  store i32 %6, ptr %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 17
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi ptr [ %15, %13 ], [ %19, %16 ]
  %18 = getelementptr inbounds %struct.mtd_info, ptr %17, i32 0, i32 62
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %16

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.mtd_info, ptr %17, i32 0, i32 37
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void %23(ptr noundef %17) #9
  br label %26

26:                                               ; preds = %25, %21, %8
  %27 = getelementptr inbounds %struct.mtdblk_dev, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  tail call void @vfree(ptr noundef %28) #9
  br label %29

29:                                               ; preds = %26, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtdblock_add_mtd(ptr noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 136) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %4, i32 0, i32 2
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %4, i32 0, i32 4
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = lshr i64 %12, 9
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %4, i32 0, i32 6
  store i32 %14, ptr %15, align 4
  store ptr %0, ptr %4, align 8
  %16 = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1024
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %4, i32 0, i32 7
  store i32 1, ptr %21, align 8
  br label %22

22:                                               ; preds = %20, %6
  %23 = load i8, ptr %1, align 8
  switch i8 %23, label %29 [
    i8 8, label %24
    i8 4, label %24
  ]

24:                                               ; preds = %22, %22
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 13
  %27 = load ptr, ptr %26, align 8
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %25, ptr noundef %27) #11
  br label %29

29:                                               ; preds = %24, %22
  %30 = tail call i32 @add_mtd_blktrans_dev(ptr noundef nonnull %4) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @kfree(ptr noundef nonnull %4) #9
  br label %33

33:                                               ; preds = %32, %29, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtdblock_remove_dev(ptr noundef %0) #2 {
  %2 = tail call i32 @del_mtd_blktrans_dev(ptr noundef %0) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @write_cached_data(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.erase_info, align 8
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.mtdblk_dev, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %38

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mtdblk_dev, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mtdblk_dev, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mtdblk_dev, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #9
  %16 = getelementptr inbounds i8, ptr %2, i32 16
  store i64 0, ptr %16, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %17 = zext i32 %11 to i64
  store i64 %17, ptr %2, align 8
  %18 = zext i32 %13 to i64
  %19 = getelementptr inbounds %struct.erase_info, ptr %2, i32 0, i32 1
  store i64 %18, ptr %19, align 8
  %20 = call i32 @mtd_erase(ptr noundef %9, ptr noundef nonnull %2) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.mtd_info, ptr %9, i32 0, i32 13
  %24 = load ptr, ptr %23, align 8
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %11, i32 noundef %13, ptr noundef %24) #11
  br label %33

26:                                               ; preds = %7
  %27 = call i32 @mtd_write(ptr noundef %9, i64 noundef %17, i32 noundef %13, ptr noundef nonnull %3, ptr noundef %15) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, ptr %3, align 4
  %31 = icmp eq i32 %30, %13
  %32 = select i1 %31, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #9
  br label %36

33:                                               ; preds = %26, %22
  %34 = phi i32 [ %20, %22 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #9
  %35 = icmp eq i32 %34, -5
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %29
  %37 = phi i32 [ %32, %29 ], [ -5, %33 ]
  store i32 0, ptr %4, align 4
  br label %38

38:                                               ; preds = %36, %33, %1
  %39 = phi i32 [ 0, %1 ], [ %34, %33 ], [ %37, %36 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_mtd_blktrans_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_mtd_blktrans_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
