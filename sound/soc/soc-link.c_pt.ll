; ModuleID = '/llk/IR/sound/soc/soc-link.c_pt.bc'
source_filename = "../sound/soc/soc-link.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_link_compr_startup:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_link_compr_startup\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_link_compr_startup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_link_compr_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_link_compr_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_link_compr_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_link_compr_set_params:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_link_compr_set_params\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_link_compr_set_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_compr_stream = type { ptr, ptr, ptr, ptr, %struct.delayed_work, i32, i8, i8, i8, i8, ptr, %struct.snd_dma_buffer }
%struct.snd_soc_compr_ops = type { ptr, ptr, ptr, ptr }

@__func__.snd_soc_link_init = private unnamed_addr constant [18 x i8] c"snd_soc_link_init\00", align 1
@__func__.snd_soc_link_be_hw_params_fixup = private unnamed_addr constant [32 x i8] c"snd_soc_link_be_hw_params_fixup\00", align 1
@__func__.snd_soc_link_startup = private unnamed_addr constant [21 x i8] c"snd_soc_link_startup\00", align 1
@__func__.snd_soc_link_prepare = private unnamed_addr constant [21 x i8] c"snd_soc_link_prepare\00", align 1
@__func__.snd_soc_link_hw_params = private unnamed_addr constant [23 x i8] c"snd_soc_link_hw_params\00", align 1
@__func__.snd_soc_link_compr_startup = private unnamed_addr constant [27 x i8] c"snd_soc_link_compr_startup\00", align 1
@__kstrtab_snd_soc_link_compr_startup = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_link_compr_startup = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_link_compr_startup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_link_compr_startup to i32), ptr @__kstrtab_snd_soc_link_compr_startup, ptr @__kstrtabns_snd_soc_link_compr_startup }, section "___ksymtab_gpl+snd_soc_link_compr_startup", align 4
@__kstrtab_snd_soc_link_compr_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_link_compr_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_link_compr_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_link_compr_shutdown to i32), ptr @__kstrtab_snd_soc_link_compr_shutdown, ptr @__kstrtabns_snd_soc_link_compr_shutdown }, section "___ksymtab_gpl+snd_soc_link_compr_shutdown", align 4
@__func__.snd_soc_link_compr_set_params = private unnamed_addr constant [30 x i8] c"snd_soc_link_compr_set_params\00", align 1
@__kstrtab_snd_soc_link_compr_set_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_link_compr_set_params = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_link_compr_set_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_link_compr_set_params to i32), ptr @__kstrtab_snd_soc_link_compr_set_params, ptr @__kstrtabns_snd_soc_link_compr_set_params }, section "___ksymtab_gpl+snd_soc_link_compr_set_params", align 4
@.str = private unnamed_addr constant [29 x i8] c"ASoC: error at %s on %s: %d\0A\00", align 1
@__func__.soc_link_trigger = private unnamed_addr constant [17 x i8] c"soc_link_trigger\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_snd_soc_link_compr_set_params, ptr @__ksymtab_snd_soc_link_compr_shutdown, ptr @__ksymtab_snd_soc_link_compr_startup], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_link_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0) #2
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  switch i32 %8, label %11 [
    i32 -517, label %15
    i32 -524, label %15
  ]

11:                                               ; preds = %10
  %12 = load ptr, ptr %0, align 4
  %13 = load ptr, ptr %2, align 4
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.snd_soc_link_init, ptr noundef %14, i32 noundef %8) #3
  br label %15

15:                                               ; preds = %11, %10, %10, %7, %1
  %16 = phi i32 [ %8, %7 ], [ %8, %10 ], [ %8, %10 ], [ %8, %11 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_soc_link_exit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0) #2
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_link_be_hw_params_fixup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef %0, ptr noundef %1) #2
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  switch i32 %9, label %12 [
    i32 -517, label %16
    i32 -524, label %16
  ]

12:                                               ; preds = %11
  %13 = load ptr, ptr %0, align 4
  %14 = load ptr, ptr %3, align 4
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.snd_soc_link_be_hw_params_fixup, ptr noundef %15, i32 noundef %9) #3
  br label %16

16:                                               ; preds = %12, %11, %11, %8, %2
  %17 = phi i32 [ %9, %8 ], [ %9, %11 ], [ %9, %11 ], [ %9, %12 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_link_startup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %7, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = tail call i32 %10(ptr noundef %0) #2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %9, %1
  %16 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 19
  store ptr %0, ptr %16, align 4
  br label %24

17:                                               ; preds = %12
  %18 = icmp sgt i32 %13, -1
  br i1 %18, label %24, label %19

19:                                               ; preds = %17
  switch i32 %13, label %20 [
    i32 -517, label %24
    i32 -524, label %24
  ]

20:                                               ; preds = %19
  %21 = load ptr, ptr %3, align 4
  %22 = load ptr, ptr %4, align 4
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.snd_soc_link_startup, ptr noundef %23, i32 noundef %13) #3
  br label %24

24:                                               ; preds = %20, %19, %19, %17, %15
  %25 = phi i32 [ %13, %17 ], [ %13, %19 ], [ %13, %19 ], [ %13, %20 ], [ 0, %15 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_soc_link_shutdown(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %23

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %12, i32 0, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.snd_soc_ops, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void %18(ptr noundef %0) #2
  br label %21

21:                                               ; preds = %20, %16, %10
  %22 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 19
  store ptr null, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_link_prepare(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.snd_soc_ops, ptr %7, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %0) #2
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  switch i32 %14, label %17 [
    i32 -517, label %21
    i32 -524, label %21
  ]

17:                                               ; preds = %16
  %18 = load ptr, ptr %3, align 4
  %19 = load ptr, ptr %4, align 4
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.snd_soc_link_prepare, ptr noundef %20, i32 noundef %14) #3
  br label %21

21:                                               ; preds = %17, %16, %16, %13, %9, %1
  %22 = phi i32 [ %14, %13 ], [ %14, %16 ], [ %14, %16 ], [ %14, %17 ], [ 0, %9 ], [ 0, %1 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_link_hw_params(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.snd_soc_ops, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = tail call i32 %12(ptr noundef %0, ptr noundef %1) #2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %10, %2
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 20
  store ptr %0, ptr %18, align 4
  br label %26

19:                                               ; preds = %14
  %20 = icmp sgt i32 %15, -1
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  switch i32 %15, label %22 [
    i32 -517, label %26
    i32 -524, label %26
  ]

22:                                               ; preds = %21
  %23 = load ptr, ptr %4, align 4
  %24 = load ptr, ptr %5, align 4
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.snd_soc_link_hw_params, ptr noundef %25, i32 noundef %15) #3
  br label %26

26:                                               ; preds = %22, %21, %21, %19, %17
  %27 = phi i32 [ %15, %19 ], [ %15, %21 ], [ %15, %21 ], [ %15, %22 ], [ 0, %17 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_soc_link_hw_free(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 20
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %24

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %12, i32 0, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.snd_soc_ops, ptr %14, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call i32 %18(ptr noundef %0) #2
  br label %22

22:                                               ; preds = %20, %16, %10
  %23 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 20
  store ptr null, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_link_trigger(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  switch i32 %1, label %54 [
    i32 1, label %6
    i32 6, label %6
    i32 4, label %6
    i32 0, label %27
    i32 5, label %27
    i32 3, label %27
  ]

6:                                                ; preds = %3, %3, %3
  %7 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %8, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.snd_soc_ops, ptr %10, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = tail call i32 %14(ptr noundef %0, i32 noundef %1) #2
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  switch i32 %17, label %20 [
    i32 -517, label %54
    i32 -524, label %54
  ]

20:                                               ; preds = %19
  %21 = load ptr, ptr %5, align 4
  %22 = load ptr, ptr %7, align 4
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.soc_link_trigger, ptr noundef %23, i32 noundef %17) #3
  br label %54

24:                                               ; preds = %16, %12, %6
  %25 = phi i32 [ 0, %6 ], [ 0, %12 ], [ %17, %16 ]
  %26 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 21
  store ptr %0, ptr %26, align 4
  br label %54

27:                                               ; preds = %3, %3, %3
  %28 = icmp eq i32 %2, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 21
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %33, label %54

33:                                               ; preds = %29, %27
  %34 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %35, i32 0, i32 16
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %51, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.snd_soc_ops, ptr %37, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = tail call i32 %41(ptr noundef %0, i32 noundef %1) #2
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  switch i32 %44, label %47 [
    i32 -517, label %51
    i32 -524, label %51
  ]

47:                                               ; preds = %46
  %48 = load ptr, ptr %5, align 4
  %49 = load ptr, ptr %34, align 4
  %50 = load ptr, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.soc_link_trigger, ptr noundef %50, i32 noundef %44) #3
  br label %51

51:                                               ; preds = %47, %46, %46, %43, %39, %33
  %52 = phi i32 [ %44, %43 ], [ %44, %46 ], [ %44, %46 ], [ %44, %47 ], [ 0, %39 ], [ 0, %33 ]
  %53 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 19
  store ptr null, ptr %53, align 4
  br label %54

54:                                               ; preds = %51, %29, %24, %20, %19, %19, %3
  %55 = phi i32 [ 0, %3 ], [ %52, %51 ], [ 0, %29 ], [ %25, %24 ], [ %17, %19 ], [ %17, %19 ], [ %17, %20 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_link_compr_startup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_compr_stream, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %7, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = tail call i32 %10(ptr noundef %0) #2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %9, %1
  %16 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 22
  store ptr %0, ptr %16, align 4
  br label %24

17:                                               ; preds = %12
  %18 = icmp sgt i32 %13, -1
  br i1 %18, label %24, label %19

19:                                               ; preds = %17
  switch i32 %13, label %20 [
    i32 -517, label %24
    i32 -524, label %24
  ]

20:                                               ; preds = %19
  %21 = load ptr, ptr %3, align 4
  %22 = load ptr, ptr %4, align 4
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.snd_soc_link_compr_startup, ptr noundef %23, i32 noundef %13) #3
  br label %24

24:                                               ; preds = %20, %19, %19, %17, %15
  %25 = phi i32 [ %13, %17 ], [ %13, %19 ], [ %13, %19 ], [ %13, %20 ], [ 0, %15 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_soc_link_compr_shutdown(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_compr_stream, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 22
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %23

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %12, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.snd_soc_compr_ops, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void %18(ptr noundef %0) #2
  br label %21

21:                                               ; preds = %20, %16, %10
  %22 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 22
  store ptr null, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_link_compr_set_params(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_compr_stream, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.snd_soc_compr_ops, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %0) #2
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  switch i32 %14, label %17 [
    i32 -517, label %21
    i32 -524, label %21
  ]

17:                                               ; preds = %16
  %18 = load ptr, ptr %3, align 4
  %19 = load ptr, ptr %4, align 4
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.snd_soc_link_compr_set_params, ptr noundef %20, i32 noundef %14) #3
  br label %21

21:                                               ; preds = %17, %16, %16, %13, %9, %1
  %22 = phi i32 [ %14, %13 ], [ %14, %16 ], [ %14, %16 ], [ %14, %17 ], [ 0, %9 ], [ 0, %1 ]
  ret i32 %22
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { cold nounwind }

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
