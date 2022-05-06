; ModuleID = '/llk/IR/drivers/gpu/drm/scheduler/sched_fence.c_pt.bc'
source_filename = "../drivers/gpu/drm/scheduler/sched_fence.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_to_drm_sched_fence:\09\09\09\09\09"
module asm "\09.asciz \09\22to_drm_sched_fence\22\09\09\09\09\09"
module asm "__kstrtabns_to_drm_sched_fence:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_sched_fence = type { %struct.dma_fence, %struct.dma_fence, ptr, ptr, %struct.spinlock, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.1, i64, i64, i32, %struct.kref, i32 }
%union.anon.1 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.list_head = type { ptr, ptr }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@drm_sched_fence_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [40 x i8] c"drivers/gpu/drm/scheduler/sched_fence.c\00", align 1
@sched_fence_slab = internal unnamed_addr global ptr null, align 4
@drm_sched_fence_ops_scheduled = internal constant %struct.dma_fence_ops { i8 0, ptr @drm_sched_fence_get_driver_name, ptr @drm_sched_fence_get_timeline_name, ptr null, ptr null, ptr null, ptr @drm_sched_fence_release_scheduled, ptr null, ptr null }, align 4
@drm_sched_fence_ops_finished = internal constant %struct.dma_fence_ops { i8 0, ptr @drm_sched_fence_get_driver_name, ptr @drm_sched_fence_get_timeline_name, ptr null, ptr null, ptr null, ptr @drm_sched_fence_release_finished, ptr null, ptr null }, align 4
@__kstrtab_to_drm_sched_fence = external dso_local constant [0 x i8], align 1
@__kstrtabns_to_drm_sched_fence = external dso_local constant [0 x i8], align 1
@__ksymtab_to_drm_sched_fence = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @to_drm_sched_fence to i32), ptr @__kstrtab_to_drm_sched_fence, ptr @__kstrtabns_to_drm_sched_fence }, section "___ksymtab+to_drm_sched_fence", align 4
@__UNIQUE_ID_description200 = internal constant [30 x i8] c"description=DRM GPU scheduler\00", section ".modinfo", align 1
@__UNIQUE_ID_license201 = internal constant [34 x i8] c"license=GPL and additional rights\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"drm_sched\00", align 1
@drm_sched_fence_free_rcu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"drm_sched_fence\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_description200, ptr @__UNIQUE_ID_license201, ptr @__ksymtab_to_drm_sched_fence], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sched_fence_scheduled(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @dma_fence_signal(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sched_fence_finished(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_sched_fence, ptr %0, i32 0, i32 1
  %3 = tail call i32 @dma_fence_signal(ptr noundef %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sched_fence_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_sched_fence, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ne ptr %3, null
  %5 = load i1, ptr @drm_sched_fence_free.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %1
  store i1 true, ptr @drm_sched_fence_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 92, i32 noundef 9, ptr noundef null) #6
  br label %9

9:                                                ; preds = %8, %1
  br i1 %4, label %12, label %10

10:                                               ; preds = %9
  %11 = load ptr, ptr @sched_fence_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %11, ptr noundef %0) #6
  br label %12

12:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @to_drm_sched_fence(ptr noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @drm_sched_fence_ops_scheduled
  %5 = icmp eq ptr %3, @drm_sched_fence_ops_finished
  %6 = getelementptr i8, ptr %0, i32 -48
  %7 = select i1 %5, ptr %6, ptr null
  %8 = select i1 %4, ptr %0, ptr %7
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @drm_sched_fence_alloc(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @sched_fence_slab, align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 3520) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_sched_fence, ptr %4, i32 0, i32 5
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.drm_sched_fence, ptr %4, i32 0, i32 4
  store i32 0, ptr %8, align 8
  br label %9

9:                                                ; preds = %6, %2
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sched_fence_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_sched_entity, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_sched_rq, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_sched_fence, ptr %0, i32 0, i32 3
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.drm_sched_entity, ptr %1, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #6, !srcloc !10
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #6, !srcloc !11
  %10 = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %11 = getelementptr inbounds %struct.drm_sched_fence, ptr %0, i32 0, i32 4
  %12 = getelementptr inbounds %struct.drm_sched_entity, ptr %1, i32 0, i32 8
  %13 = load i64, ptr %12, align 8
  %14 = zext i32 %10 to i64
  tail call void @dma_fence_init(ptr noundef %0, ptr noundef nonnull @drm_sched_fence_ops_scheduled, ptr noundef %11, i64 noundef %13, i64 noundef %14) #6
  %15 = getelementptr inbounds %struct.drm_sched_fence, ptr %0, i32 0, i32 1
  %16 = load i64, ptr %12, align 8
  %17 = add i64 %16, 1
  tail call void @dma_fence_init(ptr noundef %15, ptr noundef nonnull @drm_sched_fence_ops_finished, ptr noundef %11, i64 noundef %17, i64 noundef %14) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 0, i32 noundef 8192, ptr noundef null) #6
  store ptr %1, ptr @sched_fence_slab, align 4
  %2 = icmp eq ptr %1, null
  %3 = select i1 %2, i32 -12, i32 0
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @rcu_barrier() #6
  %1 = load ptr, ptr @sched_fence_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @drm_sched_fence_get_driver_name(ptr nocapture noundef readnone %0) #4 {
  ret ptr @.str.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @drm_sched_fence_get_timeline_name(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @drm_sched_fence_ops_scheduled
  %5 = icmp eq ptr %3, @drm_sched_fence_ops_finished
  %6 = getelementptr i8, ptr %0, i32 -48
  %7 = select i1 %5, ptr %6, ptr null
  %8 = select i1 %4, ptr %0, ptr %7
  %9 = getelementptr inbounds %struct.drm_sched_fence, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_sched_fence_release_scheduled(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @drm_sched_fence_ops_scheduled
  %5 = icmp eq ptr %3, @drm_sched_fence_ops_finished
  %6 = getelementptr i8, ptr %0, i32 -48
  %7 = select i1 %5, ptr %6, ptr null
  %8 = select i1 %4, ptr %0, ptr %7
  %9 = getelementptr inbounds %struct.drm_sched_fence, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.dma_fence, ptr %10, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #6, !srcloc !10
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #6, !srcloc !14
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = icmp sgt i32 %15, 0
  br i1 %18, label %21, label %19, !prof !15

19:                                               ; preds = %17
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef 3) #6
  br label %21

20:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  tail call void @dma_fence_release(ptr noundef %13) #6
  br label %21

21:                                               ; preds = %20, %19, %17, %1
  %22 = getelementptr inbounds %struct.drm_sched_fence, ptr %8, i32 0, i32 1, i32 2
  tail call void @call_rcu(ptr noundef %22, ptr noundef nonnull @drm_sched_fence_free_rcu) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_sched_fence_free_rcu(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @drm_sched_fence_ops_scheduled
  %6 = icmp eq ptr %4, @drm_sched_fence_ops_finished
  %7 = getelementptr i8, ptr %0, i32 -56
  %8 = select i1 %6, ptr %7, ptr null
  %9 = select i1 %5, ptr %2, ptr %8
  %10 = icmp eq ptr %9, null
  %11 = load i1, ptr @drm_sched_fence_free_rcu.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %1
  store i1 true, ptr @drm_sched_fence_free_rcu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 77, i32 noundef 9, ptr noundef null) #6
  br label %15

15:                                               ; preds = %14, %1
  br i1 %10, label %18, label %16

16:                                               ; preds = %15
  %17 = load ptr, ptr @sched_fence_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %17, ptr noundef nonnull %9) #6
  br label %18

18:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_sched_fence_release_finished(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @drm_sched_fence_ops_scheduled
  %5 = icmp eq ptr %3, @drm_sched_fence_ops_finished
  %6 = getelementptr i8, ptr %0, i32 -48
  %7 = select i1 %5, ptr %6, ptr null
  %8 = select i1 %4, ptr %0, ptr %7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.dma_fence, ptr %8, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #6, !srcloc !10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #6, !srcloc !14
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = icmp sgt i32 %13, 0
  br i1 %16, label %19, label %17, !prof !15

17:                                               ; preds = %15
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #6
  br label %19

18:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  tail call void @dma_fence_release(ptr noundef %11) #6
  br label %19

19:                                               ; preds = %18, %17, %15, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2148190766}
!10 = !{i64 528092, i64 2148029658, i64 2148029684, i64 2148029731, i64 2148029753, i64 2148029781, i64 2148029801}
!11 = !{i64 2148093604, i64 2148093636, i64 2148093665, i64 2148093699, i64 2148093730, i64 2148093753}
!12 = !{i64 2148190969}
!13 = !{i64 2148194600}
!14 = !{i64 2148096735, i64 2148096767, i64 2148096796, i64 2148096830, i64 2148096861, i64 2148096884}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2149249836}
