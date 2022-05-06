; ModuleID = '/llk/IR/drivers/extcon/devres.c_pt.bc'
source_filename = "../drivers/extcon/devres.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_extcon_dev_allocate:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_extcon_dev_allocate\22\09\09\09\09\09"
module asm "__kstrtabns_devm_extcon_dev_allocate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_extcon_dev_free:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_extcon_dev_free\22\09\09\09\09\09"
module asm "__kstrtabns_devm_extcon_dev_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_extcon_dev_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_extcon_dev_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_extcon_dev_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_extcon_dev_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_extcon_dev_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_devm_extcon_dev_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_extcon_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_extcon_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_devm_extcon_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_extcon_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_extcon_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_devm_extcon_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_extcon_register_notifier_all:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_extcon_register_notifier_all\22\09\09\09\09\09"
module asm "__kstrtabns_devm_extcon_register_notifier_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_extcon_unregister_notifier_all:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_extcon_unregister_notifier_all\22\09\09\09\09\09"
module asm "__kstrtabns_devm_extcon_unregister_notifier_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.extcon_dev = type { ptr, ptr, ptr, %struct.device, %struct.raw_notifier_head, ptr, %struct.list_head, i32, %struct.spinlock, i32, %struct.device_type, ptr, %struct.attribute_group, ptr, ptr }
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
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.extcon_dev_notifier_devres = type { ptr, i32, ptr }

@.str = private unnamed_addr constant [24 x i8] c"devm_extcon_dev_release\00", align 1
@__kstrtab_devm_extcon_dev_allocate = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_extcon_dev_allocate = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_extcon_dev_allocate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_extcon_dev_allocate to i32), ptr @__kstrtab_devm_extcon_dev_allocate, ptr @__kstrtabns_devm_extcon_dev_allocate }, section "___ksymtab_gpl+devm_extcon_dev_allocate", align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"drivers/extcon/devres.c\00", align 1
@__kstrtab_devm_extcon_dev_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_extcon_dev_free = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_extcon_dev_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_extcon_dev_free to i32), ptr @__kstrtab_devm_extcon_dev_free, ptr @__kstrtabns_devm_extcon_dev_free }, section "___ksymtab_gpl+devm_extcon_dev_free", align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"devm_extcon_dev_unreg\00", align 1
@__kstrtab_devm_extcon_dev_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_extcon_dev_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_extcon_dev_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_extcon_dev_register to i32), ptr @__kstrtab_devm_extcon_dev_register, ptr @__kstrtabns_devm_extcon_dev_register }, section "___ksymtab_gpl+devm_extcon_dev_register", align 4
@__kstrtab_devm_extcon_dev_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_extcon_dev_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_extcon_dev_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_extcon_dev_unregister to i32), ptr @__kstrtab_devm_extcon_dev_unregister, ptr @__kstrtabns_devm_extcon_dev_unregister }, section "___ksymtab_gpl+devm_extcon_dev_unregister", align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"devm_extcon_dev_notifier_unreg\00", align 1
@__kstrtab_devm_extcon_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_extcon_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_extcon_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_extcon_register_notifier to i32), ptr @__kstrtab_devm_extcon_register_notifier, ptr @__kstrtabns_devm_extcon_register_notifier }, section "___ksymtab+devm_extcon_register_notifier", align 4
@__kstrtab_devm_extcon_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_extcon_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_extcon_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_extcon_unregister_notifier to i32), ptr @__kstrtab_devm_extcon_unregister_notifier, ptr @__kstrtabns_devm_extcon_unregister_notifier }, section "___ksymtab+devm_extcon_unregister_notifier", align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"devm_extcon_dev_notifier_all_unreg\00", align 1
@__kstrtab_devm_extcon_register_notifier_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_extcon_register_notifier_all = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_extcon_register_notifier_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_extcon_register_notifier_all to i32), ptr @__kstrtab_devm_extcon_register_notifier_all, ptr @__kstrtabns_devm_extcon_register_notifier_all }, section "___ksymtab+devm_extcon_register_notifier_all", align 4
@__kstrtab_devm_extcon_unregister_notifier_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_extcon_unregister_notifier_all = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_extcon_unregister_notifier_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_extcon_unregister_notifier_all to i32), ptr @__kstrtab_devm_extcon_unregister_notifier_all, ptr @__kstrtabns_devm_extcon_unregister_notifier_all }, section "___ksymtab+devm_extcon_unregister_notifier_all", align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_devm_extcon_dev_allocate, ptr @__ksymtab_devm_extcon_dev_free, ptr @__ksymtab_devm_extcon_dev_register, ptr @__ksymtab_devm_extcon_dev_unregister, ptr @__ksymtab_devm_extcon_register_notifier, ptr @__ksymtab_devm_extcon_register_notifier_all, ptr @__ksymtab_devm_extcon_unregister_notifier, ptr @__ksymtab_devm_extcon_unregister_notifier_all], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_extcon_dev_allocate(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_extcon_dev_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #2
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @extcon_dev_allocate(ptr noundef %1) #2
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @devres_free(ptr noundef nonnull %3) #2
  br label %11

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.extcon_dev, ptr %6, i32 0, i32 3, i32 1
  store ptr %0, ptr %10, align 4
  store ptr %6, ptr %3, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #2
  br label %11

11:                                               ; preds = %9, %8, %2
  %12 = phi ptr [ %6, %8 ], [ %6, %9 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_extcon_dev_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @extcon_dev_free(ptr noundef %3) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_dev_allocate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_extcon_dev_free(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_extcon_dev_release, ptr noundef nonnull @devm_extcon_dev_match, ptr noundef %1) #2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !8

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 100, i32 noundef 9, ptr noundef null) #2
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devm_extcon_dev_match(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef readnone %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %5, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 15, i32 noundef 9, ptr noundef null) #2
  br label %12

9:                                                ; preds = %5
  %10 = icmp eq ptr %6, %2
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %9, %8
  %13 = phi i32 [ 0, %8 ], [ %11, %9 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_extcon_dev_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_extcon_dev_unreg, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.2) #2
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @extcon_dev_register(ptr noundef %1) #2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @devres_free(ptr noundef nonnull %3) #2
  br label %10

9:                                                ; preds = %5
  store ptr %1, ptr %3, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #2
  br label %10

10:                                               ; preds = %9, %8, %2
  %11 = phi i32 [ %6, %8 ], [ 0, %9 ], [ -12, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_extcon_dev_unreg(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @extcon_dev_unregister(ptr noundef %3) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_dev_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_extcon_dev_unregister(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_extcon_dev_unreg, ptr noundef nonnull @devm_extcon_dev_match, ptr noundef %1) #2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !8

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 151, i32 noundef 9, ptr noundef null) #2
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_extcon_register_notifier(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_extcon_dev_notifier_unreg, i32 noundef 12, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.3) #2
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @extcon_register_notifier(ptr noundef %1, i32 noundef %2, ptr noundef %3) #2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @devres_free(ptr noundef nonnull %5) #2
  br label %14

11:                                               ; preds = %7
  store ptr %1, ptr %5, align 4
  %12 = getelementptr inbounds %struct.extcon_dev_notifier_devres, ptr %5, i32 0, i32 1
  store i32 %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.extcon_dev_notifier_devres, ptr %5, i32 0, i32 2
  store ptr %3, ptr %13, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %5) #2
  br label %14

14:                                               ; preds = %11, %10, %4
  %15 = phi i32 [ %8, %10 ], [ 0, %11 ], [ -12, %4 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_extcon_dev_notifier_unreg(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.extcon_dev_notifier_devres, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.extcon_dev_notifier_devres, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @extcon_unregister_notifier(ptr noundef %3, i32 noundef %5, ptr noundef %7) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_register_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_extcon_unregister_notifier(ptr noundef %0, ptr noundef %1, i32 %2, ptr nocapture readnone %3) #0 {
  %5 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_extcon_dev_notifier_unreg, ptr noundef nonnull @devm_extcon_dev_match, ptr noundef %1) #2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !8

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 211, i32 noundef 9, ptr noundef null) #2
  br label %8

8:                                                ; preds = %7, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_extcon_register_notifier_all(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_extcon_dev_notifier_all_unreg, i32 noundef 12, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.4) #2
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @extcon_register_notifier_all(ptr noundef %1, ptr noundef %2) #2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @devres_free(ptr noundef nonnull %4) #2
  br label %12

10:                                               ; preds = %6
  store ptr %1, ptr %4, align 4
  %11 = getelementptr inbounds %struct.extcon_dev_notifier_devres, ptr %4, i32 0, i32 2
  store ptr %2, ptr %11, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #2
  br label %12

12:                                               ; preds = %10, %9, %3
  %13 = phi i32 [ %7, %9 ], [ 0, %10 ], [ -12, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_extcon_dev_notifier_all_unreg(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.extcon_dev_notifier_devres, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @extcon_unregister_notifier_all(ptr noundef %3, ptr noundef %5) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_register_notifier_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_extcon_unregister_notifier_all(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_extcon_dev_notifier_all_unreg, ptr noundef nonnull @devm_extcon_dev_match, ptr noundef %1) #2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 265, i32 noundef 9, ptr noundef null) #2
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @extcon_dev_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @extcon_dev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_unregister_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_unregister_notifier_all(ptr noundef, ptr noundef) local_unnamed_addr #1

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
