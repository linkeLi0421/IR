; ModuleID = '/llk/IR/kernel/rcu/sync.c_pt.bc'
source_filename = "../kernel/rcu/sync.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@rcu_sync_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [14 x i8] c"&rsp->gp_wait\00", align 1
@rcu_sync_enter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"kernel/rcu/sync.c\00", align 1
@rcu_sync_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_sync_exit.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_sync_dtor.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_sync_dtor.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_sync_dtor.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_sync_func.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_sync_func.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_sync_init(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(28) %0, i8 0, i32 28, i1 false)
  %2 = getelementptr inbounds %struct.rcu_sync, ptr %0, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @rcu_sync_init.__key) #5
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @rcu_sync_enter_start(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.rcu_sync, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 4
  store i32 2, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_sync_enter(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.rcu_sync, ptr %0, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #5
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  store volatile i32 1, ptr %0, align 4
  %7 = getelementptr inbounds %struct.rcu_sync, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = load i1, ptr @rcu_sync_enter.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %18, !prof !8

13:                                               ; preds = %6
  store i1 true, ptr @rcu_sync_enter.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 129, i32 noundef 9, ptr noundef null) #5
  %14 = load i32, ptr %7, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  %16 = load i16, ptr %3, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  br label %22

18:                                               ; preds = %6
  %19 = add i32 %8, 1
  store i32 %19, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  %20 = load i16, ptr %3, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  br label %22

22:                                               ; preds = %18, %13
  tail call void @synchronize_rcu() #5
  %23 = getelementptr inbounds %struct.rcu_sync, ptr %0, i32 0, i32 3
  tail call void @rcu_sync_func(ptr noundef %23)
  br label %41

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.rcu_sync, ptr %0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  %28 = load i16, ptr %3, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %30 = load volatile i32, ptr %0, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %41, label %32

32:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !14
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #5
  %33 = call i32 @prepare_to_wait_event(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 2) #5
  %34 = load volatile i32, ptr %0, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %40, label %36

36:                                               ; preds = %36, %32
  call void @schedule() #5
  %37 = call i32 @prepare_to_wait_event(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 2) #5
  %38 = load volatile i32, ptr %0, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %36

40:                                               ; preds = %36, %32
  call void @finish_wait(ptr noundef %3, ptr noundef nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #5
  br label %41

41:                                               ; preds = %40, %24, %22
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcu_sync_func(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @rcu_sync_func.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %1
  store i1 true, ptr @rcu_sync_func.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 78, i32 noundef 9, ptr noundef null) #5
  br label %9

9:                                                ; preds = %8, %1
  %10 = load volatile i32, ptr %2, align 4
  %11 = icmp eq i32 %10, 2
  %12 = load i1, ptr @rcu_sync_func.__already_done.5, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %9
  store i1 true, ptr @rcu_sync_func.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 79, i32 noundef 9, ptr noundef null) #5
  br label %16

16:                                               ; preds = %15, %9
  %17 = getelementptr i8, ptr %0, i32 -12
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #5
  %19 = getelementptr i8, ptr %0, i32 -16
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store volatile i32 2, ptr %2, align 4
  tail call void @__wake_up_locked(ptr noundef %17, i32 noundef 3, i32 noundef 1) #5
  br label %28

23:                                               ; preds = %16
  %24 = load i32, ptr %2, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store volatile i32 3, ptr %2, align 4
  tail call void @call_rcu(ptr noundef %0, ptr noundef nonnull @rcu_sync_func) #5
  br label %28

27:                                               ; preds = %23
  store volatile i32 0, ptr %2, align 4
  br label %28

28:                                               ; preds = %27, %26, %22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %18) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_sync_exit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = icmp eq i32 %2, 0
  %4 = load i1, ptr @rcu_sync_exit.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %1
  store i1 true, ptr @rcu_sync_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 170, i32 noundef 9, ptr noundef null) #5
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.rcu_sync, ptr %0, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = load i1, ptr @rcu_sync_exit.__already_done.2, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %8
  store i1 true, ptr @rcu_sync_exit.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 171, i32 noundef 9, ptr noundef null) #5
  br label %16

16:                                               ; preds = %15, %8
  %17 = getelementptr inbounds %struct.rcu_sync, ptr %0, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %17) #5
  %18 = load i32, ptr %9, align 4
  %19 = add i32 %18, -1
  store i32 %19, ptr %9, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, ptr %0, align 4
  switch i32 %22, label %26 [
    i32 2, label %23
    i32 3, label %25
  ]

23:                                               ; preds = %21
  store volatile i32 3, ptr %0, align 4
  %24 = getelementptr inbounds %struct.rcu_sync, ptr %0, i32 0, i32 3
  tail call void @call_rcu(ptr noundef %24, ptr noundef nonnull @rcu_sync_func) #5
  br label %26

25:                                               ; preds = %21
  store volatile i32 4, ptr %0, align 4
  br label %26

26:                                               ; preds = %25, %23, %21, %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  %27 = load i16, ptr %17, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_sync_dtor(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rcu_sync, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp ne i32 %3, 0
  %5 = load i1, ptr @rcu_sync_dtor.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %1
  store i1 true, ptr @rcu_sync_dtor.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 193, i32 noundef 9, ptr noundef null) #5
  br label %9

9:                                                ; preds = %8, %1
  %10 = load volatile i32, ptr %0, align 4
  %11 = icmp eq i32 %10, 2
  %12 = load i1, ptr @rcu_sync_dtor.__already_done.3, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %9
  store i1 true, ptr @rcu_sync_dtor.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 194, i32 noundef 9, ptr noundef null) #5
  br label %16

16:                                               ; preds = %15, %9
  %17 = getelementptr inbounds %struct.rcu_sync, ptr %0, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %17) #5
  %18 = load i32, ptr %0, align 4
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store volatile i32 3, ptr %0, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i32 [ 3, %20 ], [ %18, %16 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  %23 = load i16, ptr %17, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %25 = icmp eq i32 %22, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  tail call void @rcu_barrier() #5
  %27 = load i32, ptr %0, align 4
  %28 = icmp ne i32 %27, 0
  %29 = load i1, ptr @rcu_sync_dtor.__already_done.4, align 1
  %30 = xor i1 %29, true
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %33, !prof !8

32:                                               ; preds = %26
  store i1 true, ptr @rcu_sync_dtor.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 204, i32 noundef 9, ptr noundef null) #5
  br label %33

33:                                               ; preds = %32, %26, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2148869961}
!10 = !{i64 2148865785}
!11 = !{i64 2148865860, i64 2148865887, i64 2148865934, i64 2148865956, i64 2148865984, i64 2148866004}
!12 = !{i64 607280}
!13 = !{i64 2148894105}
!14 = !{!"auto-init"}
