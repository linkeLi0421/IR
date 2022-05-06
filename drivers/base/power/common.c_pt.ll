; ModuleID = '/llk/IR/drivers/base/power/common.c_pt.bc'
source_filename = "../drivers/base/power/common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_get_subsys_data:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_get_subsys_data\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_get_subsys_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_put_subsys_data:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_put_subsys_data\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_put_subsys_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_domain_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_domain_attach\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_domain_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_domain_attach_by_id:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_domain_attach_by_id\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_domain_attach_by_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_domain_attach_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_domain_attach_by_name\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_domain_attach_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_domain_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_domain_detach\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_domain_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_domain_start:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_domain_start\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_domain_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_domain_set:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_domain_set\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_domain_set:\09\09\09\09\09"
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
%struct.pm_subsys_data = type { %struct.spinlock, i32, i32, %struct.mutex, %struct.list_head, ptr }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_dev_pm_get_subsys_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_get_subsys_data = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_get_subsys_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_get_subsys_data to i32), ptr @__kstrtab_dev_pm_get_subsys_data, ptr @__kstrtabns_dev_pm_get_subsys_data }, section "___ksymtab_gpl+dev_pm_get_subsys_data", align 4
@__kstrtab_dev_pm_put_subsys_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_put_subsys_data = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_put_subsys_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_put_subsys_data to i32), ptr @__kstrtab_dev_pm_put_subsys_data, ptr @__kstrtabns_dev_pm_put_subsys_data }, section "___ksymtab_gpl+dev_pm_put_subsys_data", align 4
@__kstrtab_dev_pm_domain_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_domain_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_domain_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_domain_attach to i32), ptr @__kstrtab_dev_pm_domain_attach, ptr @__kstrtabns_dev_pm_domain_attach }, section "___ksymtab_gpl+dev_pm_domain_attach", align 4
@__kstrtab_dev_pm_domain_attach_by_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_domain_attach_by_id = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_domain_attach_by_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_domain_attach_by_id to i32), ptr @__kstrtab_dev_pm_domain_attach_by_id, ptr @__kstrtabns_dev_pm_domain_attach_by_id }, section "___ksymtab_gpl+dev_pm_domain_attach_by_id", align 4
@__kstrtab_dev_pm_domain_attach_by_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_domain_attach_by_name = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_domain_attach_by_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_domain_attach_by_name to i32), ptr @__kstrtab_dev_pm_domain_attach_by_name, ptr @__kstrtabns_dev_pm_domain_attach_by_name }, section "___ksymtab_gpl+dev_pm_domain_attach_by_name", align 4
@__kstrtab_dev_pm_domain_detach = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_domain_detach = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_domain_detach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_domain_detach to i32), ptr @__kstrtab_dev_pm_domain_detach, ptr @__kstrtabns_dev_pm_domain_detach }, section "___ksymtab_gpl+dev_pm_domain_detach", align 4
@__kstrtab_dev_pm_domain_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_domain_start = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_domain_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_domain_start to i32), ptr @__kstrtab_dev_pm_domain_start, ptr @__kstrtabns_dev_pm_domain_start }, section "___ksymtab_gpl+dev_pm_domain_start", align 4
@.str = private unnamed_addr constant [28 x i8] c"drivers/base/power/common.c\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"PM domains can only be changed for unbound devices\0A\00", align 1
@__kstrtab_dev_pm_domain_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_domain_set = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_domain_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_domain_set to i32), ptr @__kstrtab_dev_pm_domain_set, ptr @__kstrtabns_dev_pm_domain_set }, section "___ksymtab_gpl+dev_pm_domain_set", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_dev_pm_domain_attach, ptr @__ksymtab_dev_pm_domain_attach_by_id, ptr @__ksymtab_dev_pm_domain_attach_by_name, ptr @__ksymtab_dev_pm_domain_detach, ptr @__ksymtab_dev_pm_domain_set, ptr @__ksymtab_dev_pm_domain_start, ptr @__ksymtab_dev_pm_get_subsys_data, ptr @__ksymtab_dev_pm_put_subsys_data], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_get_subsys_data(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 44) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #5
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 26
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.pm_subsys_data, ptr %8, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  br label %16

14:                                               ; preds = %5
  store i32 0, ptr %3, align 8
  %15 = getelementptr inbounds %struct.pm_subsys_data, ptr %3, i32 0, i32 1
  store i32 1, ptr %15, align 4
  store ptr %3, ptr %7, align 8
  tail call void @pm_clk_init(ptr noundef %0) #5
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %3, %10 ], [ null, %14 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %18 = load i16, ptr %6, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  tail call void @kfree(ptr noundef %17) #5
  br label %20

20:                                               ; preds = %16, %1
  %21 = phi i32 [ 0, %16 ], [ -12, %1 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_clk_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_put_subsys_data(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #5
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 26
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.pm_subsys_data, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  store i32 %11, ptr %9, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store ptr null, ptr %5, align 8
  br label %14

14:                                               ; preds = %13, %8, %4, %1
  %15 = phi ptr [ %6, %13 ], [ null, %4 ], [ null, %8 ], [ null, %1 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %16 = load i16, ptr %2, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  tail call void @kfree(ptr noundef %15) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_domain_attach(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call i32 @genpd_dev_pm_attach(ptr noundef %0) #5
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 0)
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ %8, %6 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genpd_dev_pm_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dev_pm_domain_attach_by_id(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @genpd_dev_pm_attach_by_id(ptr noundef %0, i32 noundef %1) #5
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ inttoptr (i32 -17 to ptr), %2 ]
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genpd_dev_pm_attach_by_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dev_pm_domain_attach_by_name(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @genpd_dev_pm_attach_by_name(ptr noundef %0, ptr noundef %1) #5
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ inttoptr (i32 -17 to ptr), %2 ]
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genpd_dev_pm_attach_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_domain_detach(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dev_pm_domain, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void %8(ptr noundef %0, i1 noundef zeroext %1) #5
  br label %11

11:                                               ; preds = %10, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_domain_start(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dev_pm_domain, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 %7(ptr noundef %0) #5
  br label %11

11:                                               ; preds = %9, %5, %1
  %12 = phi i32 [ %10, %9 ], [ 0, %5 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_domain_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = tail call zeroext i1 @device_is_bound(ptr noundef %0) #5
  br i1 %9, label %10, label %11, !prof !13

10:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 226, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %11

11:                                               ; preds = %10, %8, %6
  store ptr %1, ptr %3, align 8
  tail call void @device_pm_check_callbacks(ptr noundef %0) #5
  br label %12

12:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_is_bound(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_pm_check_callbacks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind allocsize(2) }
attributes #5 = { nounwind }

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
!8 = !{i64 2149214889}
!9 = !{i64 2149210713}
!10 = !{i64 2149210788, i64 2149210815, i64 2149210862, i64 2149210884, i64 2149210912, i64 2149210932}
!11 = !{i64 310964}
!12 = !{i64 2149239033}
!13 = !{!"branch_weights", i32 1, i32 2000}
