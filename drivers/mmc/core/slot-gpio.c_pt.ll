; ModuleID = '/llk/IR/drivers/mmc/core/slot-gpio.c_pt.bc'
source_filename = "../drivers/mmc/core/slot-gpio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_gpio_get_ro:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_gpio_get_ro\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_gpio_get_ro:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_gpio_get_cd:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_gpio_get_cd\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_gpio_get_cd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_gpiod_request_cd_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_gpiod_request_cd_irq\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_gpiod_request_cd_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_gpio_set_cd_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_gpio_set_cd_wake\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_gpio_set_cd_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_gpio_set_cd_isr:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_gpio_set_cd_isr\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_gpio_set_cd_isr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_gpiod_request_cd:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_gpiod_request_cd\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_gpiod_request_cd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_can_gpio_cd:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_can_gpio_cd\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_can_gpio_cd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_gpiod_request_ro:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_gpiod_request_ro\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_gpiod_request_ro:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_can_gpio_ro:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_can_gpio_ro\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_can_gpio_ro:\09\09\09\09\09"
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
%struct.mmc_gpio = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"%s cd\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s ro\00", align 1
@__kstrtab_mmc_gpio_get_ro = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_gpio_get_ro = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_gpio_get_ro = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_gpio_get_ro to i32), ptr @__kstrtab_mmc_gpio_get_ro, ptr @__kstrtabns_mmc_gpio_get_ro }, section "___ksymtab+mmc_gpio_get_ro", align 4
@__kstrtab_mmc_gpio_get_cd = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_gpio_get_cd = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_gpio_get_cd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_gpio_get_cd to i32), ptr @__kstrtab_mmc_gpio_get_cd, ptr @__kstrtabns_mmc_gpio_get_cd }, section "___ksymtab+mmc_gpio_get_cd", align 4
@__kstrtab_mmc_gpiod_request_cd_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_gpiod_request_cd_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_gpiod_request_cd_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_gpiod_request_cd_irq to i32), ptr @__kstrtab_mmc_gpiod_request_cd_irq, ptr @__kstrtabns_mmc_gpiod_request_cd_irq }, section "___ksymtab+mmc_gpiod_request_cd_irq", align 4
@__kstrtab_mmc_gpio_set_cd_wake = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_gpio_set_cd_wake = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_gpio_set_cd_wake = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_gpio_set_cd_wake to i32), ptr @__kstrtab_mmc_gpio_set_cd_wake, ptr @__kstrtabns_mmc_gpio_set_cd_wake }, section "___ksymtab+mmc_gpio_set_cd_wake", align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"drivers/mmc/core/slot-gpio.c\00", align 1
@__kstrtab_mmc_gpio_set_cd_isr = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_gpio_set_cd_isr = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_gpio_set_cd_isr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_gpio_set_cd_isr to i32), ptr @__kstrtab_mmc_gpio_set_cd_isr, ptr @__kstrtabns_mmc_gpio_set_cd_isr }, section "___ksymtab+mmc_gpio_set_cd_isr", align 4
@__kstrtab_mmc_gpiod_request_cd = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_gpiod_request_cd = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_gpiod_request_cd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_gpiod_request_cd to i32), ptr @__kstrtab_mmc_gpiod_request_cd, ptr @__kstrtabns_mmc_gpiod_request_cd }, section "___ksymtab+mmc_gpiod_request_cd", align 4
@__kstrtab_mmc_can_gpio_cd = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_can_gpio_cd = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_can_gpio_cd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_can_gpio_cd to i32), ptr @__kstrtab_mmc_can_gpio_cd, ptr @__kstrtabns_mmc_can_gpio_cd }, section "___ksymtab+mmc_can_gpio_cd", align 4
@__kstrtab_mmc_gpiod_request_ro = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_gpiod_request_ro = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_gpiod_request_ro = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_gpiod_request_ro to i32), ptr @__kstrtab_mmc_gpiod_request_ro, ptr @__kstrtabns_mmc_gpiod_request_ro }, section "___ksymtab+mmc_gpiod_request_ro", align 4
@__kstrtab_mmc_can_gpio_ro = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_can_gpio_ro = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_can_gpio_ro = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_can_gpio_ro to i32), ptr @__kstrtab_mmc_can_gpio_ro, ptr @__kstrtabns_mmc_can_gpio_ro }, section "___ksymtab+mmc_can_gpio_ro", align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_mmc_can_gpio_cd, ptr @__ksymtab_mmc_can_gpio_ro, ptr @__ksymtab_mmc_gpio_get_cd, ptr @__ksymtab_mmc_gpio_get_ro, ptr @__ksymtab_mmc_gpio_set_cd_isr, ptr @__ksymtab_mmc_gpio_set_cd_wake, ptr @__ksymtab_mmc_gpiod_request_cd, ptr @__ksymtab_mmc_gpiod_request_cd_irq, ptr @__ksymtab_mmc_gpiod_request_ro], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_gpio_alloc(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 64
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi ptr [ %7, %6 ], [ %4, %1 ]
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 24, i32 noundef 3520) #3
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mmc_gpio, ptr %10, i32 0, i32 5
  store i32 200, ptr %13, align 4
  %14 = load ptr, ptr %0, align 64
  %15 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %14, i32 noundef 3264, ptr noundef nonnull @.str, ptr noundef %9) #3
  %16 = getelementptr inbounds %struct.mmc_gpio, ptr %10, i32 0, i32 4
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %0, align 64
  %20 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %19, i32 noundef 3264, ptr noundef nonnull @.str.1, ptr noundef %9) #3
  %21 = getelementptr inbounds %struct.mmc_gpio, ptr %10, i32 0, i32 3
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 44
  %25 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 44, i32 2
  store ptr %10, ptr %25, align 4
  store i32 -22, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %18, %12, %8
  %27 = phi i32 [ 0, %23 ], [ -12, %8 ], [ -12, %12 ], [ -12, %18 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_gpio_get_ro(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 44, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %6) #3
  br label %10

10:                                               ; preds = %8, %5, %1
  %11 = phi i32 [ %9, %8 ], [ -38, %5 ], [ -38, %1 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_gpio_get_cd(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 44, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmc_gpio, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @gpiod_cansleep(ptr noundef nonnull %7) #3
  %11 = icmp eq i32 %10, 0
  %12 = load ptr, ptr %6, align 4
  br i1 %11, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %12) #3
  br label %17

15:                                               ; preds = %9
  %16 = tail call i32 @gpiod_get_value(ptr noundef %12) #3
  br label %17

17:                                               ; preds = %15, %13, %5, %1
  %18 = phi i32 [ -38, %5 ], [ -38, %1 ], [ %14, %13 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_gpiod_request_cd_irq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 44
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 44, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %2, align 4
  %6 = icmp slt i32 %5, 0
  %7 = icmp ne ptr %4, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %38

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.mmc_gpio, ptr %4, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %11) #3
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.mmc_gpio, ptr %4, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store ptr @mmc_gpio_cd_irqt, ptr %22, align 4
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi ptr [ @mmc_gpio_cd_irqt, %25 ], [ %23, %21 ]
  %28 = load ptr, ptr %0, align 64
  %29 = getelementptr inbounds %struct.mmc_gpio, ptr %4, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @devm_request_threaded_irq(ptr noundef %28, i32 noundef %19, ptr noundef null, ptr noundef nonnull %27, i32 noundef 8195, ptr noundef %30, ptr noundef %0) #3
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 %19, ptr %2, align 4
  br label %38

34:                                               ; preds = %26, %18, %13
  %35 = phi i32 [ %19, %18 ], [ -22, %13 ], [ %31, %26 ]
  store i32 %35, ptr %2, align 4
  %36 = load i32, ptr %14, align 8
  %37 = or i32 %36, 32
  store i32 %37, ptr %14, align 8
  br label %38

38:                                               ; preds = %34, %33, %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_gpio_cd_irqt(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 44, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 36
  store i8 1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.mmc_gpio, ptr %4, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @__msecs_to_jiffies(i32 noundef %7) #3
  tail call void @mmc_detect_change(ptr noundef %1, i32 noundef %8) #3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_gpio_set_cd_wake(ptr nocapture noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 268435456
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 44
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 44, i32 1
  %13 = load i8, ptr %12, align 4, !range !8
  %14 = zext i1 %1 to i8
  %15 = icmp eq i8 %13, %14
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  br i1 %1, label %17, label %21

17:                                               ; preds = %16
  %18 = tail call i32 @irq_set_irq_wake(i32 noundef %9, i32 noundef 1) #3
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i8
  br label %23

21:                                               ; preds = %16
  %22 = tail call i32 @irq_set_irq_wake(i32 noundef %9, i32 noundef 0) #3
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i8 [ 0, %21 ], [ %20, %17 ]
  %25 = phi i32 [ 0, %21 ], [ %18, %17 ]
  store i8 %24, ptr %12, align 4
  br label %26

26:                                               ; preds = %23, %11, %7, %2
  %27 = phi i32 [ %25, %23 ], [ 0, %11 ], [ 0, %7 ], [ 0, %2 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_gpio_set_cd_isr(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 44, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_gpio, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !9

8:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 151, i32 noundef 9, ptr noundef null) #3
  br label %9

9:                                                ; preds = %8, %2
  store ptr %1, ptr %5, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_gpiod_request_cd(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 44, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %0, align 64
  %9 = tail call ptr @devm_gpiod_get_index(ptr noundef %8, ptr noundef %1, i32 noundef %2, i32 noundef 1) #3
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = ptrtoint ptr %9 to i32
  br label %40

13:                                               ; preds = %5
  %14 = icmp eq ptr %1, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.mmc_gpio, ptr %7, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @gpiod_set_consumer_name(ptr noundef %9, ptr noundef %17) #3
  br label %19

19:                                               ; preds = %15, %13
  %20 = icmp eq i32 %4, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %19
  %22 = tail call i32 @gpiod_set_debounce(ptr noundef %9, i32 noundef %4) #3
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = udiv i32 %4, 1000
  %26 = getelementptr inbounds %struct.mmc_gpio, ptr %7, i32 0, i32 5
  store i32 %25, ptr %26, align 4
  br label %27

27:                                               ; preds = %24, %21, %19
  br i1 %3, label %28, label %32

28:                                               ; preds = %27
  %29 = tail call i32 @gpiod_is_active_low(ptr noundef %9) #3
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  tail call void @gpiod_toggle_active_low(ptr noundef %9) #3
  br label %32

32:                                               ; preds = %31, %28, %27
  %33 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 1024
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void @gpiod_toggle_active_low(ptr noundef %9) #3
  br label %38

38:                                               ; preds = %37, %32
  %39 = getelementptr inbounds %struct.mmc_gpio, ptr %7, i32 0, i32 1
  store ptr %9, ptr %39, align 4
  br label %40

40:                                               ; preds = %38, %11
  %41 = phi i32 [ %12, %11 ], [ 0, %38 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_debounce(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_is_active_low(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_toggle_active_low(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mmc_can_gpio_cd(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 44, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mmc_gpio, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ne ptr %5, null
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_gpiod_request_ro(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 44, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %0, align 64
  %8 = tail call ptr @devm_gpiod_get_index(ptr noundef %7, ptr noundef %1, i32 noundef %2, i32 noundef 1) #3
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = ptrtoint ptr %8 to i32
  br label %30

12:                                               ; preds = %4
  %13 = icmp eq ptr %1, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.mmc_gpio, ptr %6, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @gpiod_set_consumer_name(ptr noundef %8, ptr noundef %16) #3
  br label %18

18:                                               ; preds = %14, %12
  %19 = icmp eq i32 %3, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = tail call i32 @gpiod_set_debounce(ptr noundef %8, i32 noundef %3) #3
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %20, %18
  %24 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 2048
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void @gpiod_toggle_active_low(ptr noundef %8) #3
  br label %29

29:                                               ; preds = %28, %23
  store ptr %8, ptr %6, align 4
  br label %30

30:                                               ; preds = %29, %20, %10
  %31 = phi i32 [ %11, %10 ], [ 0, %29 ], [ %21, %20 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mmc_can_gpio_ro(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 44, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ne ptr %4, null
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detect_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 2000, i32 1}
