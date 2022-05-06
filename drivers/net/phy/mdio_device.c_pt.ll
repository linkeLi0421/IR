; ModuleID = '/llk/IR/drivers/net/phy/mdio_device.c_pt.bc'
source_filename = "../drivers/net/phy/mdio_device.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mdio_device_free:\09\09\09\09\09"
module asm "\09.asciz \09\22mdio_device_free\22\09\09\09\09\09"
module asm "__kstrtabns_mdio_device_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mdio_device_create:\09\09\09\09\09"
module asm "\09.asciz \09\22mdio_device_create\22\09\09\09\09\09"
module asm "__kstrtabns_mdio_device_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mdio_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22mdio_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_mdio_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mdio_device_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22mdio_device_remove\22\09\09\09\09\09"
module asm "__kstrtabns_mdio_device_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mdio_device_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22mdio_device_reset\22\09\09\09\09\09"
module asm "__kstrtabns_mdio_device_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mdio_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22mdio_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns_mdio_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mdio_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22mdio_driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_mdio_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.mdio_driver = type { %struct.mdio_driver_common, ptr, ptr, ptr }

@__kstrtab_mdio_device_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_mdio_device_free = external dso_local constant [0 x i8], align 1
@__ksymtab_mdio_device_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mdio_device_free to i32), ptr @__kstrtab_mdio_device_free, ptr @__kstrtabns_mdio_device_free }, section "___ksymtab+mdio_device_free", align 4
@mdio_bus_type = external dso_local global %struct.bus_type, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s:%02x\00", align 1
@__kstrtab_mdio_device_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_mdio_device_create = external dso_local constant [0 x i8], align 1
@__ksymtab_mdio_device_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mdio_device_create to i32), ptr @__kstrtab_mdio_device_create, ptr @__kstrtabns_mdio_device_create }, section "___ksymtab+mdio_device_create", align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"\013libphy: MDIO %d failed to add\0A\00", align 1
@__kstrtab_mdio_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_mdio_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_mdio_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mdio_device_register to i32), ptr @__kstrtab_mdio_device_register, ptr @__kstrtabns_mdio_device_register }, section "___ksymtab+mdio_device_register", align 4
@__kstrtab_mdio_device_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_mdio_device_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_mdio_device_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mdio_device_remove to i32), ptr @__kstrtab_mdio_device_remove, ptr @__kstrtabns_mdio_device_remove }, section "___ksymtab+mdio_device_remove", align 4
@__kstrtab_mdio_device_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_mdio_device_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_mdio_device_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mdio_device_reset to i32), ptr @__kstrtab_mdio_device_reset, ptr @__kstrtabns_mdio_device_reset }, section "___ksymtab+mdio_device_reset", align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"\013libphy: %s: Error %d in registering driver\0A\00", align 1
@__kstrtab_mdio_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_mdio_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab_mdio_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mdio_driver_register to i32), ptr @__kstrtab_mdio_driver_register, ptr @__kstrtabns_mdio_driver_register }, section "___ksymtab+mdio_driver_register", align 4
@__kstrtab_mdio_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_mdio_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_mdio_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mdio_driver_unregister to i32), ptr @__kstrtab_mdio_driver_unregister, ptr @__kstrtabns_mdio_driver_unregister }, section "___ksymtab+mdio_driver_unregister", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_mdio_device_create, ptr @__ksymtab_mdio_device_free, ptr @__ksymtab_mdio_device_register, ptr @__ksymtab_mdio_device_remove, ptr @__ksymtab_mdio_device_reset, ptr @__ksymtab_mdio_driver_register, ptr @__ksymtab_mdio_driver_unregister], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdio_device_free(ptr noundef %0) #0 {
  tail call void @put_device(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @mdio_device_bus_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.mdio_driver_common, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %1, align 4
  %9 = tail call i32 @strcmp(ptr noundef %7, ptr noundef %8)
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ %11, %6 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mdio_device_create(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 544) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 33
  store ptr @mdio_device_release, ptr %7, align 4
  %8 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 11
  %9 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 5
  store ptr @mdio_bus_type, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mdio_device, ptr %4, i32 0, i32 4
  store ptr @mdio_device_free, ptr %11, align 8
  %12 = getelementptr inbounds %struct.mdio_device, ptr %4, i32 0, i32 5
  store ptr @mdio_device_remove, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mdio_device, ptr %4, i32 0, i32 1
  store ptr %0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.mdio_device, ptr %4, i32 0, i32 6
  store i32 %1, ptr %14, align 8
  %15 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 2
  %16 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef %15, i32 noundef %1) #6
  tail call void @device_initialize(ptr noundef nonnull %4) #6
  br label %17

17:                                               ; preds = %6, %2
  %18 = phi ptr [ %4, %6 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdio_device_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdio_device_remove(ptr noundef %0) #0 {
  tail call void @device_del(ptr noundef %0) #6
  %2 = tail call i32 @mdiobus_unregister_device(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdio_device_register(ptr noundef %0) #0 {
  %2 = tail call i32 @mdiobus_register_device(ptr noundef %0) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  %5 = tail call i32 @device_add(ptr noundef %0) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %9) #8
  %11 = tail call i32 @mdiobus_unregister_device(ptr noundef %0) #6
  br label %12

12:                                               ; preds = %7, %4, %1
  %13 = phi i32 [ %5, %7 ], [ %2, %1 ], [ 0, %4 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdio_device_reset(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %39, label %14

10:                                               ; preds = %2
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %4, i32 noundef %1) #6
  %11 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %10, %6
  %15 = phi ptr [ %12, %10 ], [ %8, %6 ]
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @reset_control_assert(ptr noundef nonnull %15) #6
  br label %21

19:                                               ; preds = %14
  %20 = tail call i32 @reset_control_deassert(ptr noundef nonnull %15) #6
  br label %21

21:                                               ; preds = %19, %17, %10
  %22 = icmp eq i32 %1, 0
  %23 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 10
  %24 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 11
  %25 = select i1 %22, ptr %24, ptr %23
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %21
  %29 = icmp ult i32 %26, 11
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %26) #6
  br label %39

32:                                               ; preds = %28
  %33 = icmp ult i32 %26, 20001
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = shl nuw nsw i32 %26, 1
  tail call void @usleep_range_state(i32 noundef %26, i32 noundef %35, i32 noundef 2) #6
  br label %39

36:                                               ; preds = %32
  %37 = add i32 %26, 999
  %38 = udiv i32 %37, 1000
  tail call void @msleep(i32 noundef %38) #6
  br label %39

39:                                               ; preds = %36, %34, %30, %21, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdio_driver_register(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1
  store ptr @mdio_bus_type, ptr %2, align 4
  %3 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 8
  store ptr @mdio_probe, ptr %3, align 4
  %4 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 10
  store ptr @mdio_remove, ptr %4, align 4
  %5 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 11
  store ptr @mdio_shutdown, ptr %5, align 4
  %6 = tail call i32 @driver_register(ptr noundef %0) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 4
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %9, i32 noundef %6) #8
  br label %11

11:                                               ; preds = %8, %1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdio_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  tail call void @mdio_device_reset(ptr noundef %0, i32 noundef 0)
  %4 = getelementptr inbounds %struct.mdio_driver, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @mdio_device_reset(ptr noundef %0, i32 noundef 1)
  br label %11

11:                                               ; preds = %10, %7, %1
  %12 = phi i32 [ %8, %10 ], [ 0, %7 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdio_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_driver, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0) #6
  br label %8

8:                                                ; preds = %7, %1
  tail call void @mdio_device_reset(ptr noundef %0, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdio_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_driver, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0) #6
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdio_driver_unregister(ptr noundef %0) #0 {
  tail call void @driver_unregister(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
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
