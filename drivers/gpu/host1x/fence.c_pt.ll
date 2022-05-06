; ModuleID = '/llk/IR/drivers/gpu/host1x/fence.c_pt.bc'
source_filename = "../drivers/gpu/host1x/fence.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_fence_create:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_fence_create\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_fence_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.host1x_syncpt_fence = type { %struct.dma_fence, %struct.atomic_t, ptr, i32, ptr, ptr, %struct.delayed_work }
%struct.dma_fence = type { ptr, ptr, %union.anon.1, i64, i64, i32, %struct.kref, i32 }
%union.anon.1 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.host1x_syncpt = type { %struct.kref, i32, %struct.atomic_t, %struct.atomic_t, i32, ptr, i8, ptr, ptr, %struct.host1x_syncpt_intr, i8 }
%struct.host1x_syncpt_intr = type { %struct.spinlock, %struct.list_head, [12 x i8], %struct.work_struct }

@host1x_syncpt_fence_ops = dso_local constant %struct.dma_fence_ops { i8 0, ptr @host1x_syncpt_fence_get_driver_name, ptr @host1x_syncpt_fence_get_timeline_name, ptr @host1x_syncpt_fence_enable_signaling, ptr null, ptr null, ptr @host1x_syncpt_fence_release, ptr null, ptr null }, align 4
@lock = internal global %struct.spinlock zeroinitializer, align 4
@__kstrtab_host1x_fence_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_fence_create = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_fence_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_fence_create to i32), ptr @__kstrtab_host1x_fence_create, ptr @__kstrtabns_host1x_fence_create }, section "___ksymtab+host1x_fence_create", align 4
@.str = private unnamed_addr constant [7 x i8] c"host1x\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"syncpoint\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"include/linux/dma-fence.h\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_host1x_fence_create], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @host1x_syncpt_fence_get_driver_name(ptr nocapture noundef readnone %0) #0 {
  ret ptr @.str
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @host1x_syncpt_fence_get_timeline_name(ptr nocapture noundef readnone %0) #0 {
  ret ptr @.str.1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @host1x_syncpt_fence_enable_signaling(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = tail call zeroext i1 @host1x_syncpt_is_expired(ptr noundef %3, i32 noundef %5) #4
  br i1 %6, label %45, label %7

7:                                                ; preds = %1
  %8 = icmp eq ptr %0, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #4, !srcloc !8
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #4, !srcloc !9
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !10

14:                                               ; preds = %9
  %15 = add i32 %12, 1
  %16 = or i32 %15, %12
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %20, label %18, !prof !11

18:                                               ; preds = %14, %9
  %19 = phi i32 [ 2, %9 ], [ 1, %14 ]
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef %19) #4
  br label %20

20:                                               ; preds = %18, %14, %7
  %21 = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %0, i32 0, i32 6
  %22 = load ptr, ptr @system_wq, align 4
  %23 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %22, ptr noundef %21, i32 noundef 3000) #4
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds %struct.host1x_syncpt, ptr %24, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %4, align 8
  %28 = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %0, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %0, i32 0, i32 5
  %31 = tail call i32 @host1x_intr_add_action(ptr noundef %26, ptr noundef %24, i32 noundef %27, i32 noundef 3, ptr noundef %0, ptr noundef %29, ptr noundef %30) #4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %20
  %34 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %21) #4
  br i1 %8, label %45, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #4, !srcloc !8
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #4, !srcloc !13
  %38 = extractvalue { i32, i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = icmp sgt i32 %38, 0
  br i1 %41, label %45, label %42, !prof !11

42:                                               ; preds = %40
  tail call void @refcount_warn_saturate(ptr noundef %36, i32 noundef 3) #4
  br label %45

43:                                               ; preds = %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  tail call void @dma_fence_release(ptr noundef %36) #4
  br label %45

44:                                               ; preds = %20
  store ptr null, ptr %28, align 4
  br label %45

45:                                               ; preds = %44, %43, %42, %40, %33, %1
  %46 = phi i1 [ true, %44 ], [ false, %1 ], [ false, %33 ], [ false, %40 ], [ false, %42 ], [ false, %43 ]
  ret i1 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @host1x_syncpt_fence_release(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @kfree(ptr noundef nonnull %3) #4
  br label %6

6:                                                ; preds = %5, %1
  tail call void @dma_fence_free(ptr noundef %0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_fence_signal(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #4, !srcloc !8
  %3 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %2) #4, !srcloc !16
  %4 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %0, i32 0, i32 6
  %8 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %7) #4
  %9 = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.host1x_syncpt, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.host1x_syncpt, ptr %10, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %0, i32 0, i32 5
  %16 = load ptr, ptr %15, align 8
  tail call void @host1x_intr_put_ref(ptr noundef %12, i32 noundef %14, ptr noundef %16, i1 noundef zeroext false) #4
  %17 = tail call i32 @dma_fence_signal(ptr noundef %0) #4
  %18 = icmp eq ptr %0, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #4, !srcloc !8
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #4, !srcloc !13
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = icmp sgt i32 %22, 0
  br i1 %25, label %28, label %26, !prof !11

26:                                               ; preds = %24
  tail call void @refcount_warn_saturate(ptr noundef %20, i32 noundef 3) #4
  br label %28

27:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  tail call void @dma_fence_release(ptr noundef %20) #4
  br label %28

28:                                               ; preds = %27, %26, %24, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_intr_put_ref(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @host1x_fence_create(ptr noundef %0, i32 noundef %1) #1 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 112) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 32) #5
  %9 = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %4, i32 0, i32 4
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #4
  br label %21

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %4, i32 0, i32 2
  store ptr %0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %4, i32 0, i32 3
  store i32 %1, ptr %14, align 8
  %15 = tail call i64 @dma_fence_context_alloc(i32 noundef 1) #4
  tail call void @dma_fence_init(ptr noundef nonnull %4, ptr noundef nonnull @host1x_syncpt_fence_ops, ptr noundef nonnull @lock, i64 noundef %15, i64 noundef 0) #4
  %16 = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %4, i32 0, i32 6
  store i32 -32, ptr %16, align 4
  %17 = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %4, i32 0, i32 6, i32 0, i32 1
  store volatile ptr %17, ptr %17, align 8
  %18 = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %4, i32 0, i32 6, i32 0, i32 1, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %4, i32 0, i32 6, i32 0, i32 2
  store ptr @do_fence_timeout, ptr %19, align 8
  %20 = getelementptr inbounds %struct.host1x_syncpt_fence, ptr %4, i32 0, i32 6, i32 1
  tail call void @init_timer_key(ptr noundef %20, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #4
  br label %21

21:                                               ; preds = %12, %11, %2
  %22 = phi ptr [ %4, %12 ], [ inttoptr (i32 -12 to ptr), %11 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @do_fence_timeout(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #4, !srcloc !8
  %3 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %2) #4, !srcloc !16
  %4 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -68
  %8 = getelementptr i8, ptr %0, i32 -16
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.host1x_syncpt, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.host1x_syncpt, ptr %9, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %0, i32 -4
  %15 = load ptr, ptr %14, align 8
  tail call void @host1x_intr_put_ref(ptr noundef %11, i32 noundef %13, ptr noundef %15, i1 noundef zeroext true) #4
  %16 = getelementptr i8, ptr %0, i32 -36
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20, !prof !11

20:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 545, i32 noundef 9, ptr noundef null) #4
  br label %21

21:                                               ; preds = %20, %6
  %22 = getelementptr i8, ptr %0, i32 -28
  store i32 -110, ptr %22, align 8
  %23 = tail call i32 @dma_fence_signal(ptr noundef %7) #4
  %24 = icmp eq ptr %7, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %0, i32 -32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #4, !srcloc !8
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #4, !srcloc !13
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = icmp sgt i32 %28, 0
  br i1 %31, label %34, label %32, !prof !11

32:                                               ; preds = %30
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef 3) #4
  br label %34

33:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  tail call void @dma_fence_release(ptr noundef %26) #4
  br label %34

34:                                               ; preds = %33, %32, %30, %21, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @host1x_syncpt_is_expired(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_intr_add_action(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(2) }

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
!8 = !{i64 717630, i64 2148207601, i64 2148207627, i64 2148207674, i64 2148207696, i64 2148207724, i64 2148207744}
!9 = !{i64 2148220474, i64 2148220506, i64 2148220535, i64 2148220569, i64 2148220600, i64 2148220623}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148320696}
!13 = !{i64 2148222831, i64 2148222863, i64 2148222892, i64 2148222926, i64 2148222957, i64 2148222980}
!14 = !{i64 2148963305}
!15 = !{i64 2148507151}
!16 = !{i64 726280, i64 726297, i64 726321, i64 726347, i64 726365}
!17 = !{i64 2148507495}
