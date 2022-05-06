; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/mdp_kms.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp_kms.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }
%struct.mdp_kms_funcs = type { %struct.msm_kms_funcs, ptr }
%struct.msm_kms_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdp_irq_wait = type { %struct.mdp_irq, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@list_lock = internal global %struct.spinlock zeroinitializer, align 4
@wait_event = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @wait_event, i64 4), ptr getelementptr (i8, ptr @wait_event, i64 4) } }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp_irq_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #4
  %4 = getelementptr inbounds %struct.mdp_kms, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  %6 = load volatile i32, ptr @list_lock, align 4
  store volatile i32 %6, ptr %2, align 4
  %7 = lshr i32 %6, 16
  %8 = and i32 %6, 65535
  %9 = icmp eq i32 %8, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp_kms.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 26, 0\0A.popsection", ""() #4, !srcloc !9
  unreachable

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.mdp_kms, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %23, label %15

15:                                               ; preds = %15, %11
  %16 = phi ptr [ %21, %15 ], [ %13, %11 ]
  %17 = phi i32 [ %20, %15 ], [ %5, %11 ]
  %18 = getelementptr inbounds %struct.mdp_irq, ptr %16, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %19, %17
  %21 = load ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, %12
  br i1 %22, label %23, label %15

23:                                               ; preds = %15, %11
  %24 = phi i32 [ %5, %11 ], [ %20, %15 ]
  %25 = getelementptr inbounds %struct.mdp_kms, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.mdp_kms_funcs, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.mdp_kms, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  tail call void %28(ptr noundef %0, i32 noundef %24, i32 noundef %30) #4
  store i32 %24, ptr %29, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %3) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp_dispatch_irqs(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #4
  %5 = getelementptr inbounds %struct.mdp_kms, ptr %0, i32 0, i32 2
  store i8 1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.mdp_kms, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %26, label %9

9:                                                ; preds = %23, %2
  %10 = phi ptr [ %12, %23 ], [ %7, %2 ]
  %11 = phi i32 [ %24, %23 ], [ %4, %2 ]
  %12 = load ptr, ptr %10, align 4
  %13 = getelementptr inbounds %struct.mdp_irq, ptr %10, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, %1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %11) #4
  %18 = getelementptr inbounds %struct.mdp_irq, ptr %10, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %13, align 4
  %21 = and i32 %20, %1
  tail call void %19(ptr noundef %10, i32 noundef %21) #4
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #4
  br label %23

23:                                               ; preds = %17, %9
  %24 = phi i32 [ %22, %17 ], [ %11, %9 ]
  %25 = icmp eq ptr %12, %6
  br i1 %25, label %26, label %9

26:                                               ; preds = %23, %2
  %27 = phi i32 [ %4, %2 ], [ %24, %23 ]
  store i8 0, ptr %5, align 4
  %28 = getelementptr inbounds %struct.mdp_kms, ptr %0, i32 0, i32 4
  %29 = load i32, ptr %28, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %30 = load volatile i32, ptr @list_lock, align 4
  store volatile i32 %30, ptr %3, align 4
  %31 = lshr i32 %30, 16
  %32 = and i32 %30, 65535
  %33 = icmp eq i32 %32, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %33, label %34, label %35, !prof !8

34:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp_kms.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 26, 0\0A.popsection", ""() #4, !srcloc !9
  unreachable

35:                                               ; preds = %26
  %36 = load ptr, ptr %6, align 4
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %46, label %38

38:                                               ; preds = %38, %35
  %39 = phi ptr [ %44, %38 ], [ %36, %35 ]
  %40 = phi i32 [ %43, %38 ], [ %29, %35 ]
  %41 = getelementptr inbounds %struct.mdp_irq, ptr %39, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %42, %40
  %44 = load ptr, ptr %39, align 4
  %45 = icmp eq ptr %44, %6
  br i1 %45, label %46, label %38

46:                                               ; preds = %38, %35
  %47 = phi i32 [ %29, %35 ], [ %43, %38 ]
  %48 = getelementptr inbounds %struct.mdp_kms, ptr %0, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.mdp_kms_funcs, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.mdp_kms, ptr %0, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  tail call void %51(ptr noundef %0, i32 noundef %47, i32 noundef %53) #4
  store i32 %47, ptr %52, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %27) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp_update_vblank_mask(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #4
  br i1 %2, label %6, label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.mdp_kms, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = or i32 %8, %1
  store i32 %9, ptr %7, align 8
  br label %15

10:                                               ; preds = %3
  %11 = xor i32 %1, -1
  %12 = getelementptr inbounds %struct.mdp_kms, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, %11
  store i32 %14, ptr %12, align 8
  br label %15

15:                                               ; preds = %10, %6
  %16 = phi i32 [ %14, %10 ], [ %9, %6 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %17 = load volatile i32, ptr @list_lock, align 4
  store volatile i32 %17, ptr %4, align 4
  %18 = lshr i32 %17, 16
  %19 = and i32 %17, 65535
  %20 = icmp eq i32 %19, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br i1 %20, label %21, label %22, !prof !8

21:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp_kms.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 26, 0\0A.popsection", ""() #4, !srcloc !9
  unreachable

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.mdp_kms, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %34, label %26

26:                                               ; preds = %26, %22
  %27 = phi ptr [ %32, %26 ], [ %24, %22 ]
  %28 = phi i32 [ %31, %26 ], [ %16, %22 ]
  %29 = getelementptr inbounds %struct.mdp_irq, ptr %27, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %30, %28
  %32 = load ptr, ptr %27, align 4
  %33 = icmp eq ptr %32, %23
  br i1 %33, label %34, label %26

34:                                               ; preds = %26, %22
  %35 = phi i32 [ %16, %22 ], [ %31, %26 ]
  %36 = getelementptr inbounds %struct.mdp_kms, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.mdp_kms_funcs, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.mdp_kms, ptr %0, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  tail call void %39(ptr noundef %0, i32 noundef %35, i32 noundef %41) #4
  store i32 %35, ptr %40, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %5) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp_irq_wait(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.mdp_irq_wait, align 8
  %4 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #4
  %5 = getelementptr inbounds %struct.mdp_irq, ptr %3, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store i32 %1, ptr %5, align 8
  %6 = getelementptr inbounds %struct.mdp_irq, ptr %3, i32 0, i32 3
  store ptr @wait_irq, ptr %6, align 8
  %7 = getelementptr inbounds %struct.mdp_irq_wait, ptr %3, i32 0, i32 1
  store i32 1, ptr %7, align 4
  call void @mdp_irq_register(ptr noundef %0, ptr noundef nonnull %3)
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #4
  %11 = call i32 @prepare_to_wait_event(ptr noundef nonnull @wait_event, ptr noundef nonnull %4, i32 noundef 2) #4
  %12 = load i32, ptr %7, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %26, label %14

14:                                               ; preds = %14, %10
  %15 = phi i32 [ %23, %14 ], [ 10, %10 ]
  %16 = call i32 @schedule_timeout(i32 noundef %15) #4
  %17 = call i32 @prepare_to_wait_event(ptr noundef nonnull @wait_event, ptr noundef nonnull %4, i32 noundef 2) #4
  %18 = load i32, ptr %7, align 4
  %19 = icmp slt i32 %18, 1
  %20 = xor i1 %19, true
  %21 = icmp ne i32 %16, 0
  %22 = select i1 %20, i1 true, i1 %21
  %23 = select i1 %22, i32 %16, i32 1
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %19, i1 true, i1 %24
  br i1 %25, label %26, label %14

26:                                               ; preds = %14, %10
  call void @finish_wait(ptr noundef nonnull @wait_event, ptr noundef nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #4
  br label %27

27:                                               ; preds = %26, %2
  call void @mdp_irq_unregister(ptr noundef %0, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wait_irq(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mdp_irq_wait, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -1
  store i32 %5, ptr %3, align 4
  tail call void @__wake_up(ptr noundef nonnull @wait_event, i32 noundef 3, i32 noundef 0, ptr noundef null) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp_irq_register(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #4
  %5 = getelementptr inbounds %struct.mdp_irq, ptr %1, i32 0, i32 2
  %6 = load i8, ptr %5, align 4, !range !11
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %44

8:                                                ; preds = %2
  store i8 1, ptr %5, align 4
  %9 = getelementptr inbounds %struct.mdp_kms, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %1, ptr %11, align 4
  store ptr %10, ptr %1, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %9, ptr %12, align 4
  store volatile ptr %1, ptr %9, align 4
  %13 = getelementptr inbounds %struct.mdp_kms, ptr %0, i32 0, i32 2
  %14 = load i8, ptr %13, align 4, !range !11
  %15 = icmp eq i8 %14, 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %4) #4
  br i1 %15, label %46, label %16

16:                                               ; preds = %8
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #4
  %18 = getelementptr inbounds %struct.mdp_kms, ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %20 = load volatile i32, ptr @list_lock, align 4
  store volatile i32 %20, ptr %3, align 4
  %21 = lshr i32 %20, 16
  %22 = and i32 %20, 65535
  %23 = icmp eq i32 %22, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp_kms.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 26, 0\0A.popsection", ""() #4, !srcloc !9
  unreachable

25:                                               ; preds = %16
  %26 = load ptr, ptr %9, align 4
  %27 = icmp eq ptr %26, %9
  br i1 %27, label %36, label %28

28:                                               ; preds = %28, %25
  %29 = phi ptr [ %34, %28 ], [ %26, %25 ]
  %30 = phi i32 [ %33, %28 ], [ %19, %25 ]
  %31 = getelementptr inbounds %struct.mdp_irq, ptr %29, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %32, %30
  %34 = load ptr, ptr %29, align 4
  %35 = icmp eq ptr %34, %9
  br i1 %35, label %36, label %28

36:                                               ; preds = %28, %25
  %37 = phi i32 [ %19, %25 ], [ %33, %28 ]
  %38 = getelementptr inbounds %struct.mdp_kms, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.mdp_kms_funcs, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.mdp_kms, ptr %0, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  tail call void %41(ptr noundef %0, i32 noundef %37, i32 noundef %43) #4
  store i32 %37, ptr %42, align 4
  br label %44

44:                                               ; preds = %36, %2
  %45 = phi i32 [ %17, %36 ], [ %4, %2 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %45) #4
  br label %46

46:                                               ; preds = %44, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp_irq_unregister(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #4
  %5 = getelementptr inbounds %struct.mdp_irq, ptr %1, i32 0, i32 2
  %6 = load i8, ptr %5, align 4, !range !11
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %2
  store i8 0, ptr %5, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  %13 = getelementptr inbounds %struct.mdp_kms, ptr %0, i32 0, i32 2
  %14 = load i8, ptr %13, align 4, !range !11
  %15 = icmp eq i8 %14, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %4) #4
  br i1 %15, label %16, label %47

16:                                               ; preds = %8
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #4
  %18 = getelementptr inbounds %struct.mdp_kms, ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %20 = load volatile i32, ptr @list_lock, align 4
  store volatile i32 %20, ptr %3, align 4
  %21 = lshr i32 %20, 16
  %22 = and i32 %20, 65535
  %23 = icmp eq i32 %22, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp_kms.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 26, 0\0A.popsection", ""() #4, !srcloc !9
  unreachable

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.mdp_kms, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %37, label %29

29:                                               ; preds = %29, %25
  %30 = phi ptr [ %35, %29 ], [ %27, %25 ]
  %31 = phi i32 [ %34, %29 ], [ %19, %25 ]
  %32 = getelementptr inbounds %struct.mdp_irq, ptr %30, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = or i32 %33, %31
  %35 = load ptr, ptr %30, align 4
  %36 = icmp eq ptr %35, %26
  br i1 %36, label %37, label %29

37:                                               ; preds = %29, %25
  %38 = phi i32 [ %19, %25 ], [ %34, %29 ]
  %39 = getelementptr inbounds %struct.mdp_kms, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.mdp_kms_funcs, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.mdp_kms, ptr %0, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  tail call void %42(ptr noundef %0, i32 noundef %38, i32 noundef %44) #4
  store i32 %38, ptr %43, align 4
  br label %45

45:                                               ; preds = %37, %2
  %46 = phi i32 [ %17, %37 ], [ %4, %2 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %46) #4
  br label %47

47:                                               ; preds = %45, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2155522539, i64 2155523037, i64 2155522576, i64 2155522632, i64 2155522666, i64 2155522690, i64 2155522731, i64 2155522752, i64 2155522780, i64 2155522814}
!10 = !{!"auto-init"}
!11 = !{i8 0, i8 2}
