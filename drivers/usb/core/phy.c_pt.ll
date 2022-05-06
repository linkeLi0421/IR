; ModuleID = '/llk/IR/drivers/usb/core/phy.c_pt.bc'
source_filename = "../drivers/usb/core/phy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_phy_roothub_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_phy_roothub_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_usb_phy_roothub_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_phy_roothub_init:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_phy_roothub_init\22\09\09\09\09\09"
module asm "__kstrtabns_usb_phy_roothub_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_phy_roothub_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_phy_roothub_exit\22\09\09\09\09\09"
module asm "__kstrtabns_usb_phy_roothub_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_phy_roothub_set_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_phy_roothub_set_mode\22\09\09\09\09\09"
module asm "__kstrtabns_usb_phy_roothub_set_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_phy_roothub_calibrate:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_phy_roothub_calibrate\22\09\09\09\09\09"
module asm "__kstrtabns_usb_phy_roothub_calibrate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_phy_roothub_power_on:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_phy_roothub_power_on\22\09\09\09\09\09"
module asm "__kstrtabns_usb_phy_roothub_power_on:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_phy_roothub_power_off:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_phy_roothub_power_off\22\09\09\09\09\09"
module asm "__kstrtabns_usb_phy_roothub_power_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_phy_roothub_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_phy_roothub_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_usb_phy_roothub_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_phy_roothub_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_phy_roothub_resume\22\09\09\09\09\09"
module asm "__kstrtabns_usb_phy_roothub_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.usb_phy_roothub = type { ptr, %struct.list_head }

@.str = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"#phy-cells\00", align 1
@__kstrtab_usb_phy_roothub_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_phy_roothub_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_phy_roothub_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_phy_roothub_alloc to i32), ptr @__kstrtab_usb_phy_roothub_alloc, ptr @__kstrtabns_usb_phy_roothub_alloc }, section "___ksymtab_gpl+usb_phy_roothub_alloc", align 4
@__kstrtab_usb_phy_roothub_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_phy_roothub_init = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_phy_roothub_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_phy_roothub_init to i32), ptr @__kstrtab_usb_phy_roothub_init, ptr @__kstrtabns_usb_phy_roothub_init }, section "___ksymtab_gpl+usb_phy_roothub_init", align 4
@__kstrtab_usb_phy_roothub_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_phy_roothub_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_phy_roothub_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_phy_roothub_exit to i32), ptr @__kstrtab_usb_phy_roothub_exit, ptr @__kstrtabns_usb_phy_roothub_exit }, section "___ksymtab_gpl+usb_phy_roothub_exit", align 4
@__kstrtab_usb_phy_roothub_set_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_phy_roothub_set_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_phy_roothub_set_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_phy_roothub_set_mode to i32), ptr @__kstrtab_usb_phy_roothub_set_mode, ptr @__kstrtabns_usb_phy_roothub_set_mode }, section "___ksymtab_gpl+usb_phy_roothub_set_mode", align 4
@__kstrtab_usb_phy_roothub_calibrate = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_phy_roothub_calibrate = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_phy_roothub_calibrate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_phy_roothub_calibrate to i32), ptr @__kstrtab_usb_phy_roothub_calibrate, ptr @__kstrtabns_usb_phy_roothub_calibrate }, section "___ksymtab_gpl+usb_phy_roothub_calibrate", align 4
@__kstrtab_usb_phy_roothub_power_on = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_phy_roothub_power_on = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_phy_roothub_power_on = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_phy_roothub_power_on to i32), ptr @__kstrtab_usb_phy_roothub_power_on, ptr @__kstrtabns_usb_phy_roothub_power_on }, section "___ksymtab_gpl+usb_phy_roothub_power_on", align 4
@__kstrtab_usb_phy_roothub_power_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_phy_roothub_power_off = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_phy_roothub_power_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_phy_roothub_power_off to i32), ptr @__kstrtab_usb_phy_roothub_power_off, ptr @__kstrtabns_usb_phy_roothub_power_off }, section "___ksymtab_gpl+usb_phy_roothub_power_off", align 4
@__kstrtab_usb_phy_roothub_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_phy_roothub_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_phy_roothub_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_phy_roothub_suspend to i32), ptr @__kstrtab_usb_phy_roothub_suspend, ptr @__kstrtabns_usb_phy_roothub_suspend }, section "___ksymtab_gpl+usb_phy_roothub_suspend", align 4
@__kstrtab_usb_phy_roothub_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_phy_roothub_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_phy_roothub_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_phy_roothub_resume to i32), ptr @__kstrtab_usb_phy_roothub_resume, ptr @__kstrtabns_usb_phy_roothub_resume }, section "___ksymtab_gpl+usb_phy_roothub_resume", align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_usb_phy_roothub_alloc, ptr @__ksymtab_usb_phy_roothub_calibrate, ptr @__ksymtab_usb_phy_roothub_exit, ptr @__ksymtab_usb_phy_roothub_init, ptr @__ksymtab_usb_phy_roothub_power_off, ptr @__ksymtab_usb_phy_roothub_power_on, ptr @__ksymtab_usb_phy_roothub_resume, ptr @__ksymtab_usb_phy_roothub_set_mode, ptr @__ksymtab_usb_phy_roothub_suspend], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_phy_roothub_alloc(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @of_count_phandle_with_args(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #2
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %29, label %6

6:                                                ; preds = %1
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 12, i32 noundef 3520) #2
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.usb_phy_roothub, ptr %7, i32 0, i32 1
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.usb_phy_roothub, ptr %7, i32 0, i32 1, i32 1
  store ptr %10, ptr %11, align 4
  br label %12

12:                                               ; preds = %26, %9
  %13 = phi i32 [ %27, %26 ], [ 0, %9 ]
  %14 = load ptr, ptr %2, align 8
  %15 = tail call ptr @devm_of_phy_get_by_index(ptr noundef %0, ptr noundef %14, i32 noundef %13) #2
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = ptrtoint ptr %15 to i32
  switch i32 %18, label %29 [
    i32 -19, label %26
    i32 0, label %26
  ]

19:                                               ; preds = %12
  %20 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 12, i32 noundef 3520) #2
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.usb_phy_roothub, ptr %20, i32 0, i32 1
  store volatile ptr %23, ptr %23, align 4
  %24 = getelementptr inbounds %struct.usb_phy_roothub, ptr %20, i32 0, i32 1, i32 1
  store ptr %15, ptr %20, align 4
  %25 = load ptr, ptr %11, align 4
  store ptr %23, ptr %11, align 4
  store ptr %10, ptr %23, align 4
  store ptr %25, ptr %24, align 4
  store volatile ptr %23, ptr %25, align 4
  br label %26

26:                                               ; preds = %22, %17, %17
  %27 = add nuw nsw i32 %13, 1
  %28 = icmp eq i32 %27, %4
  br i1 %28, label %29, label %12

29:                                               ; preds = %26, %19, %17, %6, %1
  %30 = phi ptr [ null, %1 ], [ inttoptr (i32 -12 to ptr), %6 ], [ %7, %26 ], [ inttoptr (i32 -12 to ptr), %19 ], [ %15, %17 ]
  ret ptr %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_phy_roothub_init(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %26, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_phy_roothub, ptr %0, i32 0, i32 1
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %4
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %7, i32 -4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @phy_init(ptr noundef %11) #2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %5, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %4
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %14
  %19 = phi ptr [ %24, %18 ], [ %16, %14 ]
  %20 = getelementptr i8, ptr %19, i32 -4
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @phy_exit(ptr noundef %21) #2
  %23 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %4
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %14, %5, %1
  %27 = phi i32 [ 0, %1 ], [ %12, %14 ], [ %12, %18 ], [ 0, %5 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_phy_roothub_exit(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_phy_roothub, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %17, label %7

7:                                                ; preds = %7, %3
  %8 = phi ptr [ %15, %7 ], [ %5, %3 ]
  %9 = phi i32 [ %14, %7 ], [ 0, %3 ]
  %10 = getelementptr i8, ptr %8, i32 -4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @phy_exit(ptr noundef %11) #2
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 %9, i32 %12
  %15 = load ptr, ptr %8, align 4
  %16 = icmp eq ptr %15, %4
  br i1 %16, label %17, label %7

17:                                               ; preds = %7, %3, %1
  %18 = phi i32 [ 0, %1 ], [ 0, %3 ], [ %14, %7 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_phy_roothub_set_mode(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.usb_phy_roothub, ptr %0, i32 0, i32 1
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %8, i32 -4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @phy_set_mode_ext(ptr noundef %12, i32 noundef %1, i32 noundef 0) #2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %6, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %5
  br i1 %18, label %27, label %19

19:                                               ; preds = %19, %15
  %20 = phi ptr [ %25, %19 ], [ %17, %15 ]
  %21 = getelementptr i8, ptr %20, i32 -4
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @phy_power_off(ptr noundef %22) #2
  %24 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %5
  br i1 %26, label %27, label %19

27:                                               ; preds = %19, %15, %6, %2
  %28 = phi i32 [ 0, %2 ], [ %13, %15 ], [ %13, %19 ], [ 0, %6 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_phy_roothub_calibrate(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_phy_roothub, ptr %0, i32 0, i32 1
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %4
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %7, i32 -4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @phy_calibrate(ptr noundef %11) #2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %5, label %14

14:                                               ; preds = %9, %5, %1
  %15 = phi i32 [ 0, %1 ], [ 0, %5 ], [ %12, %9 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_calibrate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_phy_roothub_power_on(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %26, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_phy_roothub, ptr %0, i32 0, i32 1
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %4
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %7, i32 -4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @phy_power_on(ptr noundef %11) #2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %5, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %4
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %14
  %19 = phi ptr [ %24, %18 ], [ %16, %14 ]
  %20 = getelementptr i8, ptr %19, i32 -4
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @phy_power_off(ptr noundef %21) #2
  %23 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %4
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %14, %5, %1
  %27 = phi i32 [ 0, %1 ], [ %12, %14 ], [ %12, %18 ], [ 0, %5 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_phy_roothub_power_off(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_phy_roothub, ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.usb_phy_roothub, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %3
  %9 = phi ptr [ %14, %8 ], [ %6, %3 ]
  %10 = getelementptr i8, ptr %9, i32 -4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @phy_power_off(ptr noundef %11) #2
  %13 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %4
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_phy_roothub_suspend(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %47, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.usb_phy_roothub, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.usb_phy_roothub, ptr %1, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %5
  br i1 %8, label %22, label %9

9:                                                ; preds = %9, %4
  %10 = phi ptr [ %15, %9 ], [ %7, %4 ]
  %11 = getelementptr i8, ptr %10, i32 -4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @phy_power_off(ptr noundef %12) #2
  %14 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %5
  br i1 %16, label %17, label %9

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %19 = load i16, ptr %18, align 4
  %20 = and i16 %19, 1
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %32, label %27

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %24 = load i16, ptr %23, align 4
  %25 = and i16 %24, 1
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22, %17
  %28 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %29 = load ptr, ptr %28, align 8
  %30 = icmp ne ptr %29, null
  %31 = or i1 %3, %30
  br i1 %31, label %47, label %33

32:                                               ; preds = %17
  br i1 %3, label %47, label %33

33:                                               ; preds = %32, %27, %22
  %34 = getelementptr inbounds %struct.usb_phy_roothub, ptr %1, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %34
  br i1 %36, label %47, label %37

37:                                               ; preds = %37, %33
  %38 = phi ptr [ %45, %37 ], [ %35, %33 ]
  %39 = phi i32 [ %44, %37 ], [ 0, %33 ]
  %40 = getelementptr i8, ptr %38, i32 -4
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @phy_exit(ptr noundef %41) #2
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 %39, i32 %42
  %45 = load ptr, ptr %38, align 4
  %46 = icmp eq ptr %45, %34
  br i1 %46, label %47, label %37

47:                                               ; preds = %37, %33, %32, %27, %2
  %48 = phi i32 [ 0, %27 ], [ 0, %32 ], [ 0, %33 ], [ 0, %2 ], [ %44, %37 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_phy_roothub_resume(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, 1
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %36

11:                                               ; preds = %7, %2
  %12 = icmp eq ptr %1, null
  br i1 %12, label %79, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.usb_phy_roothub, ptr %1, i32 0, i32 1
  br label %15

15:                                               ; preds = %19, %13
  %16 = phi ptr [ %14, %13 ], [ %17, %19 ]
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %14
  br i1 %18, label %36, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %17, i32 -4
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @phy_init(ptr noundef %21) #2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %15, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %14
  br i1 %27, label %79, label %28

28:                                               ; preds = %28, %24
  %29 = phi ptr [ %34, %28 ], [ %26, %24 ]
  %30 = getelementptr i8, ptr %29, i32 -4
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @phy_exit(ptr noundef %31) #2
  %33 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %14
  br i1 %35, label %79, label %28

36:                                               ; preds = %15, %7
  %37 = icmp eq ptr %1, null
  br i1 %37, label %79, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.usb_phy_roothub, ptr %1, i32 0, i32 1
  br label %40

40:                                               ; preds = %44, %38
  %41 = phi ptr [ %39, %38 ], [ %42, %44 ]
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %39
  br i1 %43, label %79, label %44

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %42, i32 -4
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 @phy_power_on(ptr noundef %46) #2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %40, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %39
  br i1 %52, label %61, label %53

53:                                               ; preds = %53, %49
  %54 = phi ptr [ %59, %53 ], [ %51, %49 ]
  %55 = getelementptr i8, ptr %54, i32 -4
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 @phy_power_off(ptr noundef %56) #2
  %58 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %39
  br i1 %60, label %61, label %53

61:                                               ; preds = %53, %49
  %62 = load i16, ptr %3, align 4
  %63 = and i16 %62, 1
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %67 = load ptr, ptr %66, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %65, %61
  %70 = load ptr, ptr %39, align 4
  %71 = icmp eq ptr %70, %39
  br i1 %71, label %79, label %72

72:                                               ; preds = %72, %69
  %73 = phi ptr [ %77, %72 ], [ %70, %69 ]
  %74 = getelementptr i8, ptr %73, i32 -4
  %75 = load ptr, ptr %74, align 4
  %76 = tail call i32 @phy_exit(ptr noundef %75) #2
  %77 = load ptr, ptr %73, align 4
  %78 = icmp eq ptr %77, %39
  br i1 %78, label %79, label %72

79:                                               ; preds = %72, %69, %65, %40, %36, %28, %24, %11
  %80 = phi i32 [ %47, %65 ], [ %47, %69 ], [ %22, %24 ], [ 0, %36 ], [ 0, %11 ], [ %47, %72 ], [ 0, %40 ], [ %22, %28 ]
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get_by_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
