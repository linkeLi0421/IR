; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/core/notify.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/notify.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }

@system_wq = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_notify_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4, !prof !8

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 2
  %6 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %5) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nvkm_event, ptr %2, i32 0, i32 3
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #5
  %11 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  tail call void @nvkm_event_put(ptr noundef %16, i32 noundef %18, i32 noundef %20) #5
  br label %21

21:                                               ; preds = %15, %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #5
  %22 = load volatile i32, ptr %5, align 4
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 8
  %27 = tail call zeroext i1 @flush_work(ptr noundef %26) #5
  br label %28

28:                                               ; preds = %25, %21, %4, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_notify_get(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4, !prof !8

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 2
  %6 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %5) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nvkm_event, ptr %2, i32 0, i32 3
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #5
  %11 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  store i32 %13, ptr %11, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  tail call void @nvkm_event_get(ptr noundef %16, i32 noundef %18, i32 noundef %20) #5
  br label %21

21:                                               ; preds = %15, %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #5
  br label %22

22:                                               ; preds = %21, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_notify_send(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.nvkm_event, ptr %5, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %7 = load volatile i32, ptr %6, align 4
  store volatile i32 %7, ptr %4, align 4
  %8 = lshr i32 %7, 16
  %9 = and i32 %7, 65535
  %10 = icmp eq i32 %9, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/core/notify.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 96, 0\0A.popsection", ""() #5, !srcloc !9
  unreachable

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %17, label %16, !prof !10

16:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/core/notify.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #5, !srcloc !11
  unreachable

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.nvkm_event, ptr %5, i32 0, i32 3
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #5
  %20 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #5
  br label %61

24:                                               ; preds = %17
  store i32 1, ptr %20, align 4
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  tail call void @nvkm_event_put(ptr noundef %25, i32 noundef %27, i32 noundef %29) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #5
  %30 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 2
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 9
  br i1 %33, label %40, label %35

35:                                               ; preds = %24
  %36 = load ptr, ptr %34, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %36, ptr align 1 %1, i32 %2, i1 false)
  %37 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 8
  %38 = load ptr, ptr @system_wq, align 4
  %39 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %38, ptr noundef %37) #5
  br label %61

40:                                               ; preds = %24
  store ptr %1, ptr %34, align 4
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 %43(ptr noundef %0) #5
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %30) #5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %46, %40
  %50 = getelementptr inbounds %struct.nvkm_event, ptr %41, i32 0, i32 3
  %51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %50) #5
  %52 = load i32, ptr %20, align 4
  %53 = add i32 %52, -1
  store i32 %53, ptr %20, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load ptr, ptr %0, align 4
  %57 = load i32, ptr %26, align 4
  %58 = load i32, ptr %28, align 4
  tail call void @nvkm_event_get(ptr noundef %56, i32 noundef %57, i32 noundef %58) #5
  br label %59

59:                                               ; preds = %55, %49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %50, i32 noundef %51) #5
  br label %60

60:                                               ; preds = %59, %46
  store ptr null, ptr %34, align 4
  br label %61

61:                                               ; preds = %60, %35, %23
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_notify_fini(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  tail call void @nvkm_notify_put(ptr noundef %0)
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.nvkm_event, ptr %5, i32 0, i32 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #5
  %8 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.nvkm_event, ptr %13, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %7) #5
  %15 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %16) #5
  store ptr null, ptr %0, align 4
  br label %17

17:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_notify_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  store ptr %1, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_event, ptr %1, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %41, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %1, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %0, ptr noundef %4, i32 noundef %5, ptr noundef %7) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.nvkm_notify, ptr %7, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %6
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.nvkm_notify, ptr %7, i32 0, i32 2
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nvkm_notify, ptr %7, i32 0, i32 3
  store i32 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nvkm_notify, ptr %7, i32 0, i32 4
  store ptr %2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nvkm_notify, ptr %7, i32 0, i32 9
  store ptr null, ptr %25, align 4
  br i1 %3, label %26, label %33

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.nvkm_notify, ptr %7, i32 0, i32 8
  store i32 -32, ptr %27, align 4
  %28 = getelementptr inbounds %struct.nvkm_notify, ptr %7, i32 0, i32 8, i32 1
  store volatile ptr %28, ptr %28, align 4
  %29 = getelementptr inbounds %struct.nvkm_notify, ptr %7, i32 0, i32 8, i32 1, i32 1
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nvkm_notify, ptr %7, i32 0, i32 8, i32 2
  store ptr @nvkm_notify_work, ptr %30, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %22) #5
  %31 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %6, i32 noundef 3264) #6
  store ptr %31, ptr %25, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %26, %21
  %34 = getelementptr inbounds %struct.nvkm_event, ptr %1, i32 0, i32 4
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %34) #5
  %36 = getelementptr inbounds %struct.nvkm_notify, ptr %7, i32 0, i32 1
  %37 = getelementptr inbounds %struct.nvkm_event, ptr %1, i32 0, i32 5
  %38 = getelementptr inbounds %struct.nvkm_event, ptr %1, i32 0, i32 5, i32 1
  %39 = load ptr, ptr %38, align 4
  store ptr %36, ptr %38, align 4
  store ptr %37, ptr %36, align 4
  %40 = getelementptr inbounds %struct.nvkm_notify, ptr %7, i32 0, i32 1, i32 1
  store ptr %39, ptr %40, align 4
  store volatile ptr %36, ptr %39, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %35) #5
  br label %43

41:                                               ; preds = %26, %17, %12, %8
  %42 = phi i32 [ -19, %8 ], [ %15, %12 ], [ -22, %17 ], [ -12, %26 ]
  store ptr null, ptr %7, align 4
  br label %43

43:                                               ; preds = %41, %33
  %44 = phi i32 [ %42, %41 ], [ 0, %33 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_notify_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -36
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %2) #5
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -24
  %10 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %9) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.nvkm_event, ptr %3, i32 0, i32 3
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #5
  %15 = getelementptr i8, ptr %0, i32 -20
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -1
  store i32 %17, ptr %15, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr i8, ptr %0, i32 -12
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %0, i32 -8
  %24 = load i32, ptr %23, align 4
  tail call void @nvkm_event_get(ptr noundef %20, i32 noundef %22, i32 noundef %24) #5
  br label %25

25:                                               ; preds = %19, %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #5
  br label %26

26:                                               ; preds = %25, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_put(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

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
!9 = !{i64 2154708415, i64 2154708921, i64 2154708452, i64 2154708508, i64 2154708542, i64 2154708566, i64 2154708607, i64 2154708628, i64 2154708656, i64 2154708690}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2154709513, i64 2154710019, i64 2154709550, i64 2154709606, i64 2154709640, i64 2154709664, i64 2154709705, i64 2154709726, i64 2154709754, i64 2154709788}
