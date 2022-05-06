; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/core/event.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/event.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [42 x i8] c"drivers/gpu/drm/nouveau/nvkm/core/event.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_event_put(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.nvkm_event, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %6 = load volatile i32, ptr %5, align 4
  store volatile i32 %6, ptr %4, align 4
  %7 = lshr i32 %6, 16
  %8 = and i32 %6, 65535
  %9 = icmp eq i32 %8, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br i1 %9, label %15, label %10, !prof !8

10:                                               ; preds = %3
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %38, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.nvkm_event, ptr %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.nvkm_event, ptr %0, i32 0, i32 1
  br label %16

15:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/core/event.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 28, 0\0A.popsection", ""() #5, !srcloc !9
  unreachable

16:                                               ; preds = %36, %12
  %17 = phi i32 [ %1, %12 ], [ %21, %36 ]
  %18 = tail call i32 @llvm.cttz.i32(i32 %17, i1 true) #5, !range !10
  %19 = shl nuw i32 1, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %17, %20
  %22 = load ptr, ptr %13, align 4
  %23 = load i32, ptr %14, align 4
  %24 = mul i32 %23, %2
  %25 = add i32 %24, %18
  %26 = getelementptr i32, ptr %22, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, -1
  store i32 %28, ptr %26, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %16
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.nvkm_event_func, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void %33(ptr noundef %0, i32 noundef %19, i32 noundef %2) #5
  br label %36

36:                                               ; preds = %35, %30, %16
  %37 = icmp eq i32 %21, 0
  br i1 %37, label %38, label %16

38:                                               ; preds = %36, %10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_event_get(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.nvkm_event, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %6 = load volatile i32, ptr %5, align 4
  store volatile i32 %6, ptr %4, align 4
  %7 = lshr i32 %6, 16
  %8 = and i32 %6, 65535
  %9 = icmp eq i32 %8, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br i1 %9, label %15, label %10, !prof !8

10:                                               ; preds = %3
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %38, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.nvkm_event, ptr %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.nvkm_event, ptr %0, i32 0, i32 1
  br label %16

15:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/core/event.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 41, 0\0A.popsection", ""() #5, !srcloc !11
  unreachable

16:                                               ; preds = %36, %12
  %17 = phi i32 [ %1, %12 ], [ %21, %36 ]
  %18 = tail call i32 @llvm.cttz.i32(i32 %17, i1 true) #5, !range !10
  %19 = shl nuw i32 1, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %17, %20
  %22 = load ptr, ptr %13, align 4
  %23 = load i32, ptr %14, align 4
  %24 = mul i32 %23, %2
  %25 = add i32 %24, %18
  %26 = getelementptr i32, ptr %22, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 4
  %29 = icmp eq i32 %27, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %16
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.nvkm_event_func, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void %33(ptr noundef %0, i32 noundef %19, i32 noundef %2) #5
  br label %36

36:                                               ; preds = %35, %30, %16
  %37 = icmp eq i32 %21, 0
  br i1 %37, label %38, label %16

38:                                               ; preds = %36, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_event_send(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nvkm_event, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %42, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nvkm_event, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, %2
  br i1 %12, label %14, label %13, !prof !12

13:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef null) #5
  br label %42

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.nvkm_event, ptr %0, i32 0, i32 4
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #5
  %17 = getelementptr inbounds %struct.nvkm_event, ptr %0, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %41, label %20

20:                                               ; preds = %38, %14
  %21 = phi ptr [ %39, %38 ], [ %18, %14 ]
  %22 = getelementptr i8, ptr %21, i32 -4
  %23 = getelementptr i8, ptr %21, i32 24
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %2
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = getelementptr i8, ptr %21, i32 20
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, %1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr %0, align 4
  %33 = getelementptr inbounds %struct.nvkm_event_func, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  tail call void %34(ptr noundef %3, i32 noundef %4, ptr noundef %22) #5
  br label %38

37:                                               ; preds = %31
  tail call void @nvkm_notify_send(ptr noundef %22, ptr noundef %3, i32 noundef %4) #5
  br label %38

38:                                               ; preds = %37, %36, %26, %20
  %39 = load ptr, ptr %21, align 4
  %40 = icmp eq ptr %39, %17
  br i1 %40, label %41, label %20

41:                                               ; preds = %38, %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #5
  br label %42

42:                                               ; preds = %41, %13, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_event_fini(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_event, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @kfree(ptr noundef nonnull %3) #5
  store ptr null, ptr %2, align 4
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_event_init(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 %1) #5
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = extractvalue { i32, i1 } %5, 0
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 4) #5
  %10 = extractvalue { i32, i1 } %9, 1
  %11 = extractvalue { i32, i1 } %9, 0
  %12 = select i1 %10, i32 -1, i32 %11
  br label %13

13:                                               ; preds = %7, %4
  %14 = phi i32 [ -1, %4 ], [ %12, %7 ]
  %15 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #6
  %16 = getelementptr inbounds %struct.nvkm_event, ptr %3, i32 0, i32 6
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  store ptr %0, ptr %3, align 4
  %19 = getelementptr inbounds %struct.nvkm_event, ptr %3, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.nvkm_event, ptr %3, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.nvkm_event, ptr %3, i32 0, i32 3
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nvkm_event, ptr %3, i32 0, i32 4
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nvkm_event, ptr %3, i32 0, i32 5
  store volatile ptr %23, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nvkm_event, ptr %3, i32 0, i32 5, i32 1
  store ptr %23, ptr %24, align 4
  br label %25

25:                                               ; preds = %18, %13
  %26 = phi i32 [ 0, %18 ], [ -12, %13 ]
  ret i32 %26
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i64 2154703400, i64 2154703905, i64 2154703437, i64 2154703493, i64 2154703527, i64 2154703551, i64 2154703592, i64 2154703613, i64 2154703641, i64 2154703675}
!10 = !{i32 0, i32 33}
!11 = !{i64 2154704776, i64 2154705281, i64 2154704813, i64 2154704869, i64 2154704903, i64 2154704927, i64 2154704968, i64 2154704989, i64 2154705017, i64 2154705051}
!12 = !{!"branch_weights", i32 2000, i32 1}
