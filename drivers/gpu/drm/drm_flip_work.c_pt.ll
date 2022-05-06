; ModuleID = '/llk/IR/drivers/gpu/drm/drm_flip_work.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_flip_work.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_flip_work_allocate_task:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_flip_work_allocate_task\22\09\09\09\09\09"
module asm "__kstrtabns_drm_flip_work_allocate_task:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_flip_work_queue_task:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_flip_work_queue_task\22\09\09\09\09\09"
module asm "__kstrtabns_drm_flip_work_queue_task:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_flip_work_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_flip_work_queue\22\09\09\09\09\09"
module asm "__kstrtabns_drm_flip_work_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_flip_work_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_flip_work_commit\22\09\09\09\09\09"
module asm "__kstrtabns_drm_flip_work_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_flip_work_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_flip_work_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_flip_work_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_flip_work_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_flip_work_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_drm_flip_work_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_flip_task = type { %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_flip_work = type { ptr, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_drm_flip_work_allocate_task = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_flip_work_allocate_task = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_flip_work_allocate_task = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_flip_work_allocate_task to i32), ptr @__kstrtab_drm_flip_work_allocate_task, ptr @__kstrtabns_drm_flip_work_allocate_task }, section "___ksymtab+drm_flip_work_allocate_task", align 4
@__kstrtab_drm_flip_work_queue_task = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_flip_work_queue_task = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_flip_work_queue_task = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_flip_work_queue_task to i32), ptr @__kstrtab_drm_flip_work_queue_task, ptr @__kstrtabns_drm_flip_work_queue_task }, section "___ksymtab+drm_flip_work_queue_task", align 4
@.str = private unnamed_addr constant [29 x i8] c"%s could not allocate task!\0A\00", align 1
@__kstrtab_drm_flip_work_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_flip_work_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_flip_work_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_flip_work_queue to i32), ptr @__kstrtab_drm_flip_work_queue, ptr @__kstrtabns_drm_flip_work_queue }, section "___ksymtab+drm_flip_work_queue", align 4
@__kstrtab_drm_flip_work_commit = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_flip_work_commit = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_flip_work_commit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_flip_work_commit to i32), ptr @__kstrtab_drm_flip_work_commit, ptr @__kstrtabns_drm_flip_work_commit }, section "___ksymtab+drm_flip_work_commit", align 4
@__kstrtab_drm_flip_work_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_flip_work_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_flip_work_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_flip_work_init to i32), ptr @__kstrtab_drm_flip_work_init, ptr @__kstrtabns_drm_flip_work_init }, section "___ksymtab+drm_flip_work_init", align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"drivers/gpu/drm/drm_flip_work.c\00", align 1
@__kstrtab_drm_flip_work_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_flip_work_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_flip_work_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_flip_work_cleanup to i32), ptr @__kstrtab_drm_flip_work_cleanup, ptr @__kstrtabns_drm_flip_work_cleanup }, section "___ksymtab+drm_flip_work_cleanup", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_drm_flip_work_allocate_task, ptr @__ksymtab_drm_flip_work_cleanup, ptr @__ksymtab_drm_flip_work_commit, ptr @__ksymtab_drm_flip_work_init, ptr @__ksymtab_drm_flip_work_queue, ptr @__ksymtab_drm_flip_work_queue_task], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @drm_flip_work_allocate_task(ptr noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !8

5:                                                ; preds = %2
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 1, i32 2
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 0, %2 ], [ %8, %5 ]
  %11 = or i32 %1, 256
  %12 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %10, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef %11, i32 noundef 12) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.drm_flip_task, ptr %14, i32 0, i32 1
  store ptr %0, ptr %17, align 8
  br label %18

18:                                               ; preds = %16, %9
  ret ptr %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_flip_work_queue_task(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 5
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 3, i32 1
  %7 = load ptr, ptr %6, align 4
  store ptr %1, ptr %6, align 4
  store ptr %5, ptr %1, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  store volatile ptr %1, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_flip_work_queue(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @llvm.thread.pointer() #7
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !9
  %9 = and i32 %8, 128
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 3520, i32 2848
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i32 [ 2848, %2 ], [ %11, %7 ]
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef %13, i32 noundef 12) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.drm_flip_task, ptr %15, i32 0, i32 1
  store ptr %1, ptr %18, align 8
  %19 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 5
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #7
  %21 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 3
  %22 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 3, i32 1
  %23 = load ptr, ptr %22, align 4
  store ptr %15, ptr %22, align 4
  store ptr %21, ptr %15, align 8
  %24 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  store volatile ptr %15, ptr %23, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #7
  br label %29

25:                                               ; preds = %12
  %26 = load ptr, ptr %0, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef %26) #7
  %27 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void %28(ptr noundef %0, ptr noundef %1) #7
  br label %29

29:                                               ; preds = %25, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_flip_work_commit(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 5
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 3
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 4
  %10 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 4, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 3, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %11, ptr %14, align 4
  store ptr %6, ptr %11, align 4
  store ptr %9, ptr %13, align 4
  store ptr %13, ptr %10, align 4
  br label %15

15:                                               ; preds = %8, %2
  store volatile ptr %5, ptr %5, align 4
  %16 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 3, i32 1
  store ptr %5, ptr %16, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #7
  %17 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 2
  %18 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %1, ptr noundef %17) #7
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_flip_work_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  store ptr %1, ptr %0, align 4
  %4 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 3
  store volatile ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 3, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 4
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 4, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 5
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 1
  store ptr %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 2
  store i32 -32, ptr %10, align 4
  %11 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 2, i32 1
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 2, i32 1, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 2, i32 2
  store ptr @flip_worker, ptr %13, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @flip_worker(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = getelementptr i8, ptr %0, i32 -8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %4 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %5 = getelementptr i8, ptr %0, i32 32
  %6 = getelementptr i8, ptr %0, i32 24
  %7 = getelementptr i8, ptr %0, i32 28
  %8 = getelementptr i8, ptr %0, i32 -4
  br label %9

9:                                                ; preds = %20, %1
  store volatile ptr %2, ptr %2, align 8
  store ptr %2, ptr %4, align 4
  %10 = call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  %11 = load volatile ptr, ptr %6, align 4
  %12 = icmp eq ptr %11, %6
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %4, align 4
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store ptr %11, ptr %14, align 4
  store ptr %2, ptr %15, align 4
  store ptr %15, ptr %4, align 4
  br label %17

17:                                               ; preds = %13, %9
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %7, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %10) #7
  %18 = load volatile ptr, ptr %2, align 8
  %19 = icmp eq ptr %18, %2
  br i1 %19, label %27, label %20

20:                                               ; preds = %20, %17
  %21 = phi ptr [ %22, %20 ], [ %18, %17 ]
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %8, align 4
  %24 = getelementptr inbounds %struct.drm_flip_task, ptr %21, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  call void %23(ptr noundef %3, ptr noundef %25) #7
  call void @kfree(ptr noundef %21) #7
  %26 = icmp eq ptr %22, %2
  br i1 %26, label %9, label %20

27:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_flip_work_cleanup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 3
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 4
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %10, label %9, !prof !8

9:                                                ; preds = %5, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 168, i32 noundef 9, ptr noundef null) #7
  br label %10

10:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { nounwind }

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
!9 = !{i64 667148}
