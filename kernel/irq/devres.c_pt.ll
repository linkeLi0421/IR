; ModuleID = '/llk/IR/kernel/irq/devres.c_pt.bc'
source_filename = "../kernel/irq/devres.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_request_threaded_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_request_threaded_irq\22\09\09\09\09\09"
module asm "__kstrtabns_devm_request_threaded_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_request_any_context_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_request_any_context_irq\22\09\09\09\09\09"
module asm "__kstrtabns_devm_request_any_context_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_free_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_free_irq\22\09\09\09\09\09"
module asm "__kstrtabns_devm_free_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_irq_alloc_descs:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_irq_alloc_descs\22\09\09\09\09\09"
module asm "__kstrtabns___devm_irq_alloc_descs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_irq_alloc_generic_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_irq_alloc_generic_chip\22\09\09\09\09\09"
module asm "__kstrtabns_devm_irq_alloc_generic_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_irq_setup_generic_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_irq_setup_generic_chip\22\09\09\09\09\09"
module asm "__kstrtabns_devm_irq_setup_generic_chip:\09\09\09\09\09"
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
%struct.irq_devres = type { i32, ptr }
%struct.irq_desc_devres = type { i32, i32 }
%struct.irq_generic_chip_devres = type { ptr, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"devm_irq_release\00", align 1
@__kstrtab_devm_request_threaded_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_request_threaded_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_request_threaded_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_request_threaded_irq to i32), ptr @__kstrtab_devm_request_threaded_irq, ptr @__kstrtabns_devm_request_threaded_irq }, section "___ksymtab+devm_request_threaded_irq", align 4
@__kstrtab_devm_request_any_context_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_request_any_context_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_request_any_context_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_request_any_context_irq to i32), ptr @__kstrtab_devm_request_any_context_irq, ptr @__kstrtabns_devm_request_any_context_irq }, section "___ksymtab+devm_request_any_context_irq", align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"kernel/irq/devres.c\00", align 1
@__kstrtab_devm_free_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_free_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_free_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_free_irq to i32), ptr @__kstrtab_devm_free_irq, ptr @__kstrtabns_devm_free_irq }, section "___ksymtab+devm_free_irq", align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"devm_irq_desc_release\00", align 1
@__kstrtab___devm_irq_alloc_descs = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_irq_alloc_descs = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_irq_alloc_descs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_irq_alloc_descs to i32), ptr @__kstrtab___devm_irq_alloc_descs, ptr @__kstrtabns___devm_irq_alloc_descs }, section "___ksymtab_gpl+__devm_irq_alloc_descs", align 4
@__kstrtab_devm_irq_alloc_generic_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_irq_alloc_generic_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_irq_alloc_generic_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_irq_alloc_generic_chip to i32), ptr @__kstrtab_devm_irq_alloc_generic_chip, ptr @__kstrtabns_devm_irq_alloc_generic_chip }, section "___ksymtab_gpl+devm_irq_alloc_generic_chip", align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"devm_irq_remove_generic_chip\00", align 1
@__kstrtab_devm_irq_setup_generic_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_irq_setup_generic_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_irq_setup_generic_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_irq_setup_generic_chip to i32), ptr @__kstrtab_devm_irq_setup_generic_chip, ptr @__kstrtabns_devm_irq_setup_generic_chip }, section "___ksymtab_gpl+devm_irq_setup_generic_chip", align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab___devm_irq_alloc_descs, ptr @__ksymtab_devm_free_irq, ptr @__ksymtab_devm_irq_alloc_generic_chip, ptr @__ksymtab_devm_irq_setup_generic_chip, ptr @__ksymtab_devm_request_any_context_irq, ptr @__ksymtab_devm_request_threaded_irq], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_request_threaded_irq(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_irq_release, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %5, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load ptr, ptr %0, align 4
  br label %18

18:                                               ; preds = %16, %12, %10
  %19 = phi ptr [ %5, %10 ], [ %17, %16 ], [ %14, %12 ]
  %20 = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %19, ptr noundef %6) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @devres_free(ptr noundef nonnull %8) #5
  br label %25

23:                                               ; preds = %18
  store i32 %1, ptr %8, align 4
  %24 = getelementptr inbounds %struct.irq_devres, ptr %8, i32 0, i32 1
  store ptr %6, ptr %24, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %8) #5
  br label %25

25:                                               ; preds = %23, %22, %7
  %26 = phi i32 [ %20, %22 ], [ 0, %23 ], [ -12, %7 ]
  ret i32 %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_irq_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.irq_devres, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_request_any_context_irq(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_irq_release, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %6
  %10 = icmp eq ptr %4, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 4
  br label %17

17:                                               ; preds = %15, %11, %9
  %18 = phi ptr [ %4, %9 ], [ %16, %15 ], [ %13, %11 ]
  %19 = tail call i32 @request_any_context_irq(i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %18, ptr noundef %5) #5
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call void @devres_free(ptr noundef nonnull %7) #5
  br label %24

22:                                               ; preds = %17
  store i32 %1, ptr %7, align 4
  %23 = getelementptr inbounds %struct.irq_devres, ptr %7, i32 0, i32 1
  store ptr %5, ptr %23, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %7) #5
  br label %24

24:                                               ; preds = %22, %21, %6
  %25 = phi i32 [ %19, %21 ], [ %19, %22 ], [ -12, %6 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_any_context_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_free_irq(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.irq_devres, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  store i32 %1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.irq_devres, ptr %4, i32 0, i32 1
  store ptr %2, ptr %5, align 4
  %6 = call i32 @devres_destroy(ptr noundef %0, ptr noundef nonnull @devm_irq_release, ptr noundef nonnull @devm_irq_match, ptr noundef nonnull %4) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %3
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 9, ptr noundef null) #5
  br label %9

9:                                                ; preds = %8, %3
  %10 = call ptr @free_irq(i32 noundef %1, ptr noundef %2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_destroy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @devm_irq_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #3 {
  %4 = load i32, ptr %1, align 4
  %5 = load i32, ptr %2, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.irq_devres, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.irq_devres, ptr %2, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %9, %11
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %7, %3
  %15 = phi i32 [ 0, %3 ], [ %13, %7 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__devm_irq_alloc_descs(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_irq_desc_release, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.2) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @__irq_alloc_descs(i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #5
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void @devres_free(ptr noundef nonnull %8) #5
  br label %16

14:                                               ; preds = %10
  store i32 %11, ptr %8, align 4
  %15 = getelementptr inbounds %struct.irq_desc_devres, ptr %8, i32 0, i32 1
  store i32 %3, ptr %15, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %8) #5
  br label %16

16:                                               ; preds = %14, %13, %7
  %17 = phi i32 [ %11, %13 ], [ %11, %14 ], [ -12, %7 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_irq_desc_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.irq_desc_devres, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  tail call void @irq_free_descs(i32 noundef %3, i32 noundef %5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_irq_alloc_generic_chip(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 180) #5
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  %10 = tail call i32 @llvm.uadd.sat.i32(i32 %9, i32 80) #5
  %11 = select i1 %8, i32 -1, i32 %10
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %11, i32 noundef 3520) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %6
  tail call void @irq_init_generic_chip(ptr noundef nonnull %12, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #5
  br label %15

15:                                               ; preds = %14, %6
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_init_generic_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_irq_setup_generic_chip(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_irq_remove_generic_chip, i32 noundef 16, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.3) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  tail call void @irq_setup_generic_chip(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #5
  store ptr %1, ptr %7, align 4
  %10 = getelementptr inbounds %struct.irq_generic_chip_devres, ptr %7, i32 0, i32 1
  store i32 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.irq_generic_chip_devres, ptr %7, i32 0, i32 2
  store i32 %4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.irq_generic_chip_devres, ptr %7, i32 0, i32 3
  store i32 %5, ptr %12, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %7) #5
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i32 [ 0, %9 ], [ -12, %6 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_irq_remove_generic_chip(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.irq_generic_chip_devres, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_generic_chip_devres, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_generic_chip_devres, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  tail call void @irq_remove_generic_chip(ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_setup_generic_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_free_descs(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_remove_generic_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
