; ModuleID = '/llk/IR/drivers/scsi/scsi_pm.c_pt.bc'
source_filename = "../drivers/scsi/scsi_pm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_autopm_get_device:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_autopm_get_device\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_autopm_get_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_autopm_put_device:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_autopm_put_device\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_autopm_put_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.execute_work = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_scsi_autopm_get_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_autopm_get_device = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_autopm_get_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_autopm_get_device to i32), ptr @__kstrtab_scsi_autopm_get_device, ptr @__kstrtabns_scsi_autopm_get_device }, section "___ksymtab_gpl+scsi_autopm_get_device", align 4
@__kstrtab_scsi_autopm_put_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_autopm_put_device = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_autopm_put_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_autopm_put_device to i32), ptr @__kstrtab_scsi_autopm_put_device, ptr @__kstrtabns_scsi_autopm_put_device }, section "___ksymtab_gpl+scsi_autopm_put_device", align 4
@scsi_bus_pm_ops = dso_local local_unnamed_addr constant %struct.dev_pm_ops { ptr @scsi_bus_prepare, ptr null, ptr @scsi_bus_suspend, ptr @scsi_bus_resume, ptr @scsi_bus_freeze, ptr @scsi_bus_thaw, ptr @scsi_bus_poweroff, ptr @scsi_bus_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scsi_runtime_suspend, ptr @scsi_runtime_resume, ptr @scsi_runtime_idle }, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_scsi_autopm_get_device, ptr @__ksymtab_scsi_autopm_put_device], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_autopm_get_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 54
  %3 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #2
  %4 = icmp slt i32 %3, 0
  %5 = icmp ne i32 %3, -13
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 4) #2
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %3, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_autopm_put_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 54
  %3 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 4) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_autopm_get_target(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 3
  %3 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_autopm_put_target(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 3
  %3 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 4) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_autopm_get_host(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 49
  %3 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #2
  %4 = icmp slt i32 %3, 0
  %5 = icmp ne i32 %3, -13
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 4) #2
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %3, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_autopm_put_host(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 49
  %3 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 4) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scsi_bus_prepare(ptr noundef %0) #0 {
  %2 = tail call i32 @scsi_is_host_device(ptr noundef %0) #2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @scsi_complete_async_scans() #2
  br label %6

6:                                                ; preds = %4, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scsi_bus_suspend(ptr noundef %0) #0 {
  %2 = tail call i32 @scsi_is_sdev_device(ptr noundef %0) #2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %29, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.device_driver, ptr %6, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %0, i32 -264
  %12 = tail call i32 @scsi_device_quiesce(ptr noundef %11) #2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %29

14:                                               ; preds = %4
  %15 = getelementptr i8, ptr %0, i32 -264
  %16 = tail call i32 @scsi_device_quiesce(ptr noundef %15) #2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %29

18:                                               ; preds = %8
  %19 = icmp eq ptr %10, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.dev_pm_ops, ptr %10, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %18, %14
  br label %29

25:                                               ; preds = %20
  %26 = tail call i32 %22(ptr noundef %0) #2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @scsi_device_resume(ptr noundef %11) #2
  br label %29

29:                                               ; preds = %28, %25, %24, %14, %8, %1
  %30 = phi i32 [ 0, %1 ], [ %26, %28 ], [ 0, %25 ], [ %12, %8 ], [ %16, %14 ], [ 0, %24 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scsi_bus_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @scsi_is_sdev_device(ptr noundef %0) #2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %13

10:                                               ; preds = %1
  %11 = tail call i32 @scsi_is_sdev_device(ptr noundef %0) #2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %21

13:                                               ; preds = %5
  %14 = icmp eq ptr %7, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.dev_pm_ops, ptr %7, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 %17(ptr noundef %0) #2
  br label %21

21:                                               ; preds = %19, %15, %13, %10
  %22 = phi i32 [ %20, %19 ], [ 0, %15 ], [ 0, %13 ], [ 0, %10 ]
  %23 = getelementptr i8, ptr %0, i32 -264
  tail call void @scsi_device_resume(ptr noundef %23) #2
  br label %24

24:                                               ; preds = %21, %10, %5
  %25 = phi i32 [ %22, %21 ], [ 0, %5 ], [ 0, %10 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scsi_bus_freeze(ptr noundef %0) #0 {
  %2 = tail call i32 @scsi_is_sdev_device(ptr noundef %0) #2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %29, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.device_driver, ptr %6, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %0, i32 -264
  %12 = tail call i32 @scsi_device_quiesce(ptr noundef %11) #2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %29

14:                                               ; preds = %4
  %15 = getelementptr i8, ptr %0, i32 -264
  %16 = tail call i32 @scsi_device_quiesce(ptr noundef %15) #2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %29

18:                                               ; preds = %8
  %19 = icmp eq ptr %10, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.dev_pm_ops, ptr %10, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %18, %14
  br label %29

25:                                               ; preds = %20
  %26 = tail call i32 %22(ptr noundef %0) #2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @scsi_device_resume(ptr noundef %11) #2
  br label %29

29:                                               ; preds = %28, %25, %24, %14, %8, %1
  %30 = phi i32 [ 0, %1 ], [ %26, %28 ], [ 0, %25 ], [ %12, %8 ], [ %16, %14 ], [ 0, %24 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scsi_bus_thaw(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @scsi_is_sdev_device(ptr noundef %0) #2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %13

10:                                               ; preds = %1
  %11 = tail call i32 @scsi_is_sdev_device(ptr noundef %0) #2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %21

13:                                               ; preds = %5
  %14 = icmp eq ptr %7, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.dev_pm_ops, ptr %7, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 %17(ptr noundef %0) #2
  br label %21

21:                                               ; preds = %19, %15, %13, %10
  %22 = phi i32 [ %20, %19 ], [ 0, %15 ], [ 0, %13 ], [ 0, %10 ]
  %23 = getelementptr i8, ptr %0, i32 -264
  tail call void @scsi_device_resume(ptr noundef %23) #2
  br label %24

24:                                               ; preds = %21, %10, %5
  %25 = phi i32 [ %22, %21 ], [ 0, %5 ], [ 0, %10 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scsi_bus_poweroff(ptr noundef %0) #0 {
  %2 = tail call i32 @scsi_is_sdev_device(ptr noundef %0) #2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %29, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.device_driver, ptr %6, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %0, i32 -264
  %12 = tail call i32 @scsi_device_quiesce(ptr noundef %11) #2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %29

14:                                               ; preds = %4
  %15 = getelementptr i8, ptr %0, i32 -264
  %16 = tail call i32 @scsi_device_quiesce(ptr noundef %15) #2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %29

18:                                               ; preds = %8
  %19 = icmp eq ptr %10, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.dev_pm_ops, ptr %10, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %18, %14
  br label %29

25:                                               ; preds = %20
  %26 = tail call i32 %22(ptr noundef %0) #2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @scsi_device_resume(ptr noundef %11) #2
  br label %29

29:                                               ; preds = %28, %25, %24, %14, %8, %1
  %30 = phi i32 [ 0, %1 ], [ %26, %28 ], [ 0, %25 ], [ %12, %8 ], [ %16, %14 ], [ 0, %24 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scsi_bus_restore(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @scsi_is_sdev_device(ptr noundef %0) #2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %13

10:                                               ; preds = %1
  %11 = tail call i32 @scsi_is_sdev_device(ptr noundef %0) #2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %21

13:                                               ; preds = %5
  %14 = icmp eq ptr %7, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.dev_pm_ops, ptr %7, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 %17(ptr noundef %0) #2
  br label %21

21:                                               ; preds = %19, %15, %13, %10
  %22 = phi i32 [ %20, %19 ], [ 0, %15 ], [ 0, %13 ], [ 0, %10 ]
  %23 = getelementptr i8, ptr %0, i32 -264
  tail call void @scsi_device_resume(ptr noundef %23) #2
  br label %24

24:                                               ; preds = %21, %10, %5
  %25 = phi i32 [ %22, %21 ], [ 0, %5 ], [ 0, %10 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scsi_runtime_suspend(ptr noundef %0) #0 {
  %2 = tail call i32 @scsi_is_sdev_device(ptr noundef %0) #2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.device_driver, ptr %6, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi ptr [ %10, %8 ], [ null, %4 ]
  %13 = getelementptr i8, ptr %0, i32 -260
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @blk_pre_runtime_suspend(ptr noundef %14) #2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = icmp eq ptr %12, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.dev_pm_ops, ptr %12, i32 0, i32 20
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 %21(ptr noundef %0) #2
  br label %25

25:                                               ; preds = %23, %19, %17
  %26 = phi i32 [ %24, %23 ], [ 0, %19 ], [ 0, %17 ]
  %27 = load ptr, ptr %13, align 4
  tail call void @blk_post_runtime_suspend(ptr noundef %27, i32 noundef %26) #2
  br label %28

28:                                               ; preds = %25, %11, %1
  %29 = phi i32 [ 0, %1 ], [ %26, %25 ], [ %15, %11 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scsi_runtime_resume(ptr noundef %0) #0 {
  %2 = tail call i32 @scsi_is_sdev_device(ptr noundef %0) #2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %27, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -260
  %10 = load ptr, ptr %9, align 4
  tail call void @blk_pre_runtime_resume(ptr noundef %10) #2
  br label %23

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.device_driver, ptr %6, i32 0, i32 16
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %0, i32 -260
  %15 = load ptr, ptr %14, align 4
  tail call void @blk_pre_runtime_resume(ptr noundef %15) #2
  %16 = icmp eq ptr %13, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.dev_pm_ops, ptr %13, i32 0, i32 21
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call i32 %19(ptr noundef %0) #2
  br label %23

23:                                               ; preds = %21, %17, %11, %8
  %24 = phi ptr [ %14, %21 ], [ %14, %17 ], [ %14, %11 ], [ %9, %8 ]
  %25 = phi i32 [ %22, %21 ], [ 0, %17 ], [ 0, %11 ], [ 0, %8 ]
  %26 = load ptr, ptr %24, align 4
  tail call void @blk_post_runtime_resume(ptr noundef %26) #2
  br label %27

27:                                               ; preds = %23, %1
  %28 = phi i32 [ %25, %23 ], [ 0, %1 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scsi_runtime_idle(ptr noundef %0) #0 {
  %2 = tail call i32 @scsi_is_sdev_device(ptr noundef %0) #2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call i64 @ktime_get_mono_fast_ns() #2
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 22
  store volatile i64 %5, ptr %6, align 8
  %7 = tail call i32 @__pm_runtime_suspend(ptr noundef %0, i32 noundef 8) #2
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ -16, %4 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_complete_async_scans() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_sdev_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_quiesce(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_pre_runtime_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_post_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_pre_runtime_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_post_runtime_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
