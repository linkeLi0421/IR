; ModuleID = '/llk/IR/drivers/mfd/abx500-core.c_pt.bc'
source_filename = "../drivers/mfd/abx500-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_abx500_register_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22abx500_register_ops\22\09\09\09\09\09"
module asm "__kstrtabns_abx500_register_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_abx500_remove_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22abx500_remove_ops\22\09\09\09\09\09"
module asm "__kstrtabns_abx500_remove_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_abx500_set_register_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22abx500_set_register_interruptible\22\09\09\09\09\09"
module asm "__kstrtabns_abx500_set_register_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_abx500_get_register_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22abx500_get_register_interruptible\22\09\09\09\09\09"
module asm "__kstrtabns_abx500_get_register_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_abx500_get_register_page_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22abx500_get_register_page_interruptible\22\09\09\09\09\09"
module asm "__kstrtabns_abx500_get_register_page_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_abx500_mask_and_set_register_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22abx500_mask_and_set_register_interruptible\22\09\09\09\09\09"
module asm "__kstrtabns_abx500_mask_and_set_register_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_abx500_get_chip_id:\09\09\09\09\09"
module asm "\09.asciz \09\22abx500_get_chip_id\22\09\09\09\09\09"
module asm "__kstrtabns_abx500_get_chip_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_abx500_event_registers_startup_state_get:\09\09\09\09\09"
module asm "\09.asciz \09\22abx500_event_registers_startup_state_get\22\09\09\09\09\09"
module asm "__kstrtabns_abx500_event_registers_startup_state_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_abx500_startup_irq_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22abx500_startup_irq_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_abx500_startup_irq_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.abx500_device_entry = type { %struct.list_head, %struct.abx500_ops, ptr }
%struct.abx500_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@abx500_list = internal global %struct.list_head { ptr @abx500_list, ptr @abx500_list }, align 4
@__kstrtab_abx500_register_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_abx500_register_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_abx500_register_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @abx500_register_ops to i32), ptr @__kstrtab_abx500_register_ops, ptr @__kstrtabns_abx500_register_ops }, section "___ksymtab+abx500_register_ops", align 4
@__kstrtab_abx500_remove_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_abx500_remove_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_abx500_remove_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @abx500_remove_ops to i32), ptr @__kstrtab_abx500_remove_ops, ptr @__kstrtabns_abx500_remove_ops }, section "___ksymtab+abx500_remove_ops", align 4
@__kstrtab_abx500_set_register_interruptible = external dso_local constant [0 x i8], align 1
@__kstrtabns_abx500_set_register_interruptible = external dso_local constant [0 x i8], align 1
@__ksymtab_abx500_set_register_interruptible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @abx500_set_register_interruptible to i32), ptr @__kstrtab_abx500_set_register_interruptible, ptr @__kstrtabns_abx500_set_register_interruptible }, section "___ksymtab+abx500_set_register_interruptible", align 4
@__kstrtab_abx500_get_register_interruptible = external dso_local constant [0 x i8], align 1
@__kstrtabns_abx500_get_register_interruptible = external dso_local constant [0 x i8], align 1
@__ksymtab_abx500_get_register_interruptible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @abx500_get_register_interruptible to i32), ptr @__kstrtab_abx500_get_register_interruptible, ptr @__kstrtabns_abx500_get_register_interruptible }, section "___ksymtab+abx500_get_register_interruptible", align 4
@__kstrtab_abx500_get_register_page_interruptible = external dso_local constant [0 x i8], align 1
@__kstrtabns_abx500_get_register_page_interruptible = external dso_local constant [0 x i8], align 1
@__ksymtab_abx500_get_register_page_interruptible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @abx500_get_register_page_interruptible to i32), ptr @__kstrtab_abx500_get_register_page_interruptible, ptr @__kstrtabns_abx500_get_register_page_interruptible }, section "___ksymtab+abx500_get_register_page_interruptible", align 4
@__kstrtab_abx500_mask_and_set_register_interruptible = external dso_local constant [0 x i8], align 1
@__kstrtabns_abx500_mask_and_set_register_interruptible = external dso_local constant [0 x i8], align 1
@__ksymtab_abx500_mask_and_set_register_interruptible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @abx500_mask_and_set_register_interruptible to i32), ptr @__kstrtab_abx500_mask_and_set_register_interruptible, ptr @__kstrtabns_abx500_mask_and_set_register_interruptible }, section "___ksymtab+abx500_mask_and_set_register_interruptible", align 4
@__kstrtab_abx500_get_chip_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_abx500_get_chip_id = external dso_local constant [0 x i8], align 1
@__ksymtab_abx500_get_chip_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @abx500_get_chip_id to i32), ptr @__kstrtab_abx500_get_chip_id, ptr @__kstrtabns_abx500_get_chip_id }, section "___ksymtab+abx500_get_chip_id", align 4
@__kstrtab_abx500_event_registers_startup_state_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_abx500_event_registers_startup_state_get = external dso_local constant [0 x i8], align 1
@__ksymtab_abx500_event_registers_startup_state_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @abx500_event_registers_startup_state_get to i32), ptr @__kstrtab_abx500_event_registers_startup_state_get, ptr @__kstrtabns_abx500_event_registers_startup_state_get }, section "___ksymtab+abx500_event_registers_startup_state_get", align 4
@__kstrtab_abx500_startup_irq_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_abx500_startup_irq_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_abx500_startup_irq_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @abx500_startup_irq_enabled to i32), ptr @__kstrtab_abx500_startup_irq_enabled, ptr @__kstrtabns_abx500_startup_irq_enabled }, section "___ksymtab+abx500_startup_irq_enabled", align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_abx500_event_registers_startup_state_get, ptr @__ksymtab_abx500_get_chip_id, ptr @__ksymtab_abx500_get_register_interruptible, ptr @__ksymtab_abx500_get_register_page_interruptible, ptr @__ksymtab_abx500_mask_and_set_register_interruptible, ptr @__ksymtab_abx500_register_ops, ptr @__ksymtab_abx500_remove_ops, ptr @__ksymtab_abx500_set_register_interruptible, ptr @__ksymtab_abx500_startup_irq_enabled], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @abx500_register_ops(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 48, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.abx500_device_entry, ptr %3, i32 0, i32 2
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.abx500_device_entry, ptr %3, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(36) %7, ptr noundef align 4 dereferenceable(36) %1, i32 36, i1 false)
  %8 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @abx500_list, i32 0, i32 1), align 4
  store ptr %3, ptr getelementptr inbounds (%struct.list_head, ptr @abx500_list, i32 0, i32 1), align 4
  store ptr @abx500_list, ptr %3, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  store volatile ptr %3, ptr %8, align 4
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i32 [ 0, %5 ], [ -12, %2 ]
  ret i32 %11
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @abx500_remove_ops(ptr noundef readnone %0) #2 {
  %2 = load ptr, ptr @abx500_list, align 4
  %3 = icmp eq ptr %2, @abx500_list
  br i1 %3, label %16, label %4

4:                                                ; preds = %14, %1
  %5 = phi ptr [ %6, %14 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.abx500_device_entry, ptr %5, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  store volatile ptr %6, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  br label %14

14:                                               ; preds = %10, %4
  %15 = icmp eq ptr %6, @abx500_list
  br i1 %15, label %16, label %4

16:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @abx500_set_register_interruptible(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %11, %4
  %8 = phi ptr [ @abx500_list, %4 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @abx500_list
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.abx500_device_entry, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %6
  br i1 %14, label %15, label %7

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.abx500_device_entry, ptr %9, i32 0, i32 1
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.abx500_device_entry, ptr %9, i32 0, i32 1, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 %20(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #4
  br label %24

24:                                               ; preds = %22, %18, %15, %7
  %25 = phi i32 [ %23, %22 ], [ -524, %18 ], [ -524, %15 ], [ -524, %7 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @abx500_get_register_interruptible(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %11, %4
  %8 = phi ptr [ @abx500_list, %4 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @abx500_list
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.abx500_device_entry, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %6
  br i1 %14, label %15, label %7

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.abx500_device_entry, ptr %9, i32 0, i32 1
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.abx500_device_entry, ptr %9, i32 0, i32 1, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 %20(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) #4
  br label %24

24:                                               ; preds = %22, %18, %15, %7
  %25 = phi i32 [ %23, %22 ], [ -524, %18 ], [ -524, %15 ], [ -524, %7 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @abx500_get_register_page_interruptible(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, i8 noundef zeroext %4) #0 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %12, %5
  %9 = phi ptr [ @abx500_list, %5 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, @abx500_list
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.abx500_device_entry, ptr %10, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %7
  br i1 %15, label %16, label %8

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.abx500_device_entry, ptr %10, i32 0, i32 1
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.abx500_device_entry, ptr %10, i32 0, i32 1, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 %21(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, i8 noundef zeroext %4) #4
  br label %25

25:                                               ; preds = %23, %19, %16, %8
  %26 = phi i32 [ %24, %23 ], [ -524, %19 ], [ -524, %16 ], [ -524, %8 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @abx500_mask_and_set_register_interruptible(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #0 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %12, %5
  %9 = phi ptr [ @abx500_list, %5 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, @abx500_list
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.abx500_device_entry, ptr %10, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %7
  br i1 %15, label %16, label %8

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.abx500_device_entry, ptr %10, i32 0, i32 1
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.abx500_device_entry, ptr %10, i32 0, i32 1, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 %21(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #4
  br label %25

25:                                               ; preds = %23, %19, %16, %8
  %26 = phi i32 [ %24, %23 ], [ -524, %19 ], [ -524, %16 ], [ -524, %8 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @abx500_get_chip_id(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  br label %4

4:                                                ; preds = %8, %1
  %5 = phi ptr [ @abx500_list, %1 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @abx500_list
  br i1 %7, label %20, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.abx500_device_entry, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %3
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.abx500_device_entry, ptr %6, i32 0, i32 1
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %13, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call i32 %16(ptr noundef %0) #4
  br label %20

20:                                               ; preds = %18, %15, %12, %4
  %21 = phi i32 [ %19, %18 ], [ -524, %15 ], [ -524, %12 ], [ -524, %4 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @abx500_event_registers_startup_state_get(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi ptr [ @abx500_list, %2 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @abx500_list
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.abx500_device_entry, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %4
  br i1 %12, label %13, label %5

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.abx500_device_entry, ptr %7, i32 0, i32 1
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.abx500_device_entry, ptr %7, i32 0, i32 1, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call i32 %18(ptr noundef %0, ptr noundef %1) #4
  br label %22

22:                                               ; preds = %20, %16, %13, %5
  %23 = phi i32 [ %21, %20 ], [ -524, %16 ], [ -524, %13 ], [ -524, %5 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @abx500_startup_irq_enabled(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi ptr [ @abx500_list, %2 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @abx500_list
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.abx500_device_entry, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %4
  br i1 %12, label %13, label %5

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.abx500_device_entry, ptr %7, i32 0, i32 1
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.abx500_device_entry, ptr %7, i32 0, i32 1, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call i32 %18(ptr noundef %0, i32 noundef %1) #4
  br label %22

22:                                               ; preds = %20, %16, %13, %5
  %23 = phi i32 [ %21, %20 ], [ -524, %16 ], [ -524, %13 ], [ -524, %5 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

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
