; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/pm/nv40.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/pm/nv40.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_funcdom = type { ptr, ptr, ptr }
%struct.nvkm_pm_func = type { ptr }
%struct.nvkm_specdom = type { i16, ptr, ptr }
%struct.nvkm_specsig = type { i8, ptr, ptr }
%struct.nvkm_pm = type { ptr, %struct.nvkm_engine, %struct.anon.123, %struct.list_head, %struct.list_head, i32 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.122 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.122 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.123 = type { %struct.spinlock, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_perfctr = type { %struct.list_head, i8, [4 x i8], [4 x [8 x i64]], i32, i32, i32 }
%struct.nvkm_perfdom = type { %struct.nvkm_object, ptr, %struct.list_head, %struct.list_head, ptr, [4 x ptr], [32 x i8], i32, i8, i32, i16, [0 x %struct.nvkm_perfsig] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_perfsig = type { ptr, [8 x i8] }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.120, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.120 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nv40_pm = type { %struct.nvkm_pm, i32 }

@nv40_perfctr_func = dso_local constant %struct.nvkm_funcdom { ptr @nv40_perfctr_init, ptr @nv40_perfctr_read, ptr @nv40_perfctr_next }, align 4
@nv40_pm_ = internal constant %struct.nvkm_pm_func zeroinitializer, align 4
@.str = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@nv40_pm = internal constant [6 x %struct.nvkm_specdom] [%struct.nvkm_specdom { i16 32, ptr @.compoundliteral, ptr @nv40_perfctr_func }, %struct.nvkm_specdom { i16 32, ptr @.compoundliteral.1, ptr @nv40_perfctr_func }, %struct.nvkm_specdom { i16 32, ptr @.compoundliteral.2, ptr @nv40_perfctr_func }, %struct.nvkm_specdom { i16 32, ptr @.compoundliteral.3, ptr @nv40_perfctr_func }, %struct.nvkm_specdom { i16 32, ptr @.compoundliteral.4, ptr @nv40_perfctr_func }, %struct.nvkm_specdom zeroinitializer], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.compoundliteral = internal constant [1 x %struct.nvkm_specsig] zeroinitializer, align 4
@.compoundliteral.1 = internal constant [1 x %struct.nvkm_specsig] zeroinitializer, align 4
@.compoundliteral.2 = internal constant [1 x %struct.nvkm_specsig] zeroinitializer, align 4
@.compoundliteral.3 = internal constant [1 x %struct.nvkm_specsig] zeroinitializer, align 4
@.compoundliteral.4 = internal constant [1 x %struct.nvkm_specsig] zeroinitializer, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv40_perfctr_init(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_pm, ptr %0, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_perfctr, ptr %2, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.nvkm_perfctr, ptr %2, i32 0, i32 2, i32 0
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr %struct.nvkm_perfctr, ptr %2, i32 0, i32 2, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = or i32 %14, %10
  %16 = getelementptr %struct.nvkm_perfctr, ptr %2, i32 0, i32 2, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 16
  %20 = or i32 %19, %15
  %21 = getelementptr %struct.nvkm_perfctr, ptr %2, i32 0, i32 2, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw i32 %23, 24
  %25 = or i32 %24, %20
  %26 = getelementptr inbounds %struct.nvkm_perfdom, ptr %1, i32 0, i32 8
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 4
  %30 = or i32 %29, 1
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_perfdom, ptr %1, i32 0, i32 7
  %34 = load i32, ptr %33, align 8
  %35 = add i32 %34, 42944
  %36 = getelementptr i8, ptr %32, i32 %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %30) #3, !srcloc !9
  %37 = load ptr, ptr %31, align 4
  %38 = load i32, ptr %33, align 8
  %39 = add i32 %38, 41984
  %40 = getelementptr inbounds %struct.nvkm_perfctr, ptr %2, i32 0, i32 4
  %41 = load i32, ptr %40, align 8
  %42 = shl i32 %41, 6
  %43 = add i32 %39, %42
  %44 = getelementptr i8, ptr %37, i32 %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %25) #3, !srcloc !9
  %45 = load ptr, ptr %31, align 4
  %46 = load i32, ptr %33, align 8
  %47 = add i32 %46, 42016
  %48 = load i32, ptr %40, align 8
  %49 = shl i32 %48, 6
  %50 = add i32 %47, %49
  %51 = getelementptr i8, ptr %45, i32 %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %7) #3, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv40_perfctr_read(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_pm, ptr %0, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_perfctr, ptr %2, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  switch i32 %7, label %43 [
    i32 0, label %8
    i32 1, label %16
    i32 2, label %24
    i32 3, label %32
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_perfdom, ptr %1, i32 0, i32 7
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, 42752
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  br label %40

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_perfdom, ptr %1, i32 0, i32 7
  %20 = load i32, ptr %19, align 8
  %21 = add i32 %20, 42688
  %22 = getelementptr i8, ptr %18, i32 %21
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  br label %40

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_perfdom, ptr %1, i32 0, i32 7
  %28 = load i32, ptr %27, align 8
  %29 = add i32 %28, 42624
  %30 = getelementptr i8, ptr %26, i32 %29
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  br label %40

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvkm_perfdom, ptr %1, i32 0, i32 7
  %36 = load i32, ptr %35, align 8
  %37 = add i32 %36, 42816
  %38 = getelementptr i8, ptr %34, i32 %37
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  br label %40

40:                                               ; preds = %32, %24, %16, %8
  %41 = phi i32 [ %39, %32 ], [ %31, %24 ], [ %23, %16 ], [ %15, %8 ]
  %42 = getelementptr inbounds %struct.nvkm_perfctr, ptr %2, i32 0, i32 6
  store i32 %41, ptr %42, align 8
  br label %43

43:                                               ; preds = %40, %3
  %44 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nvkm_perfdom, ptr %1, i32 0, i32 7
  %47 = load i32, ptr %46, align 8
  %48 = add i32 %47, 42496
  %49 = getelementptr i8, ptr %45, i32 %48
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %51 = getelementptr inbounds %struct.nvkm_perfdom, ptr %1, i32 0, i32 9
  store i32 %50, ptr %51, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv40_perfctr_next(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.nv40_pm, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_pm, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nvkm_pm, ptr %0, i32 0, i32 1, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 4194436
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 32) #3, !srcloc !9
  %14 = load i32, ptr %5, align 4
  store i32 %14, ptr %3, align 4
  br label %15

15:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv40_pm_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 124) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  store ptr %7, ptr %4, align 4
  %10 = tail call i32 @nvkm_pm_ctor(ptr noundef nonnull @nv40_pm_, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %7) #3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 @nvkm_perfdom_new(ptr noundef nonnull %7, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %0) #3
  br label %14

14:                                               ; preds = %12, %9, %5
  %15 = phi i32 [ %13, %12 ], [ -12, %5 ], [ %10, %9 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pm_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_perfdom_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv40_pm_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 124) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  store ptr %6, ptr %3, align 4
  %9 = tail call i32 @nvkm_pm_ctor(ptr noundef nonnull @nv40_pm_, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %6) #3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call i32 @nvkm_perfdom_new(ptr noundef nonnull %6, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @nv40_pm) #3
  br label %13

13:                                               ; preds = %11, %8, %4
  %14 = phi i32 [ %12, %11 ], [ -12, %4 ], [ %9, %8 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind allocsize(2) }

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
!8 = !{i64 2151485789}
!9 = !{i64 3944696}
!10 = !{i64 3945114}
!11 = !{i64 2151484567}
