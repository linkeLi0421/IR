; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gt215.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/gt215.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_devinit_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.127, %struct.anon.127 }
%struct.anon.127 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.nvkm_devinit = type { ptr, %struct.nvkm_subdev, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nv50_devinit = type { %struct.nvkm_devinit, i32 }

@.str = private unnamed_addr constant [30 x i8] c"%s: %08x/%dKhz unimplemented\0A\00", align 1
@gt215_devinit = internal constant %struct.nvkm_devinit_func { ptr null, ptr @nv50_devinit_preinit, ptr @nv50_devinit_init, ptr @nv04_devinit_post, ptr @gt215_devinit_mmio, ptr null, ptr @gt215_devinit_pll_set, ptr @gt215_devinit_disable }, align 4
@gt215_devinit_mmio_part = internal unnamed_addr constant [25 x i32] [i32 1050400, i32 1050812, i32 4, i32 1051168, i32 1051356, i32 4, i32 1052032, i32 1052124, i32 4, i32 1114112, i32 1118108, i32 4, i32 1118208, i32 1118268, i32 8, i32 1118336, i32 1118460, i32 4, i32 1118496, i32 1118716, i32 4, i32 1118976, i32 1119420, i32 4, i32 0], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gt215_devinit_pll_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.nvbios_pll, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %4, i8 0, i32 56, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #5
  store i32 0, ptr %8, align 4, !annotation !8
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 21
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @nvbios_pll_parse(ptr noundef %12, i32 noundef %1, ptr noundef nonnull %4) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %59

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1
  %17 = call i32 @gt215_pll_calc(ptr noundef %16, ptr noundef nonnull %4, i32 noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #5
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %59, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %4, align 4
  %21 = and i32 %20, -2
  %22 = icmp eq i32 %21, 128
  br i1 %22, label %23, label %50

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nvbios_pll, ptr %4, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %25, i32 %27
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 1342178832) #5, !srcloc !10
  %29 = load i32, ptr %26, align 4
  %30 = add i32 %29, 4
  %31 = load ptr, ptr %24, align 4
  %32 = getelementptr i8, ptr %31, i32 %30
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #5, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %34 = and i32 %33, -4194304
  %35 = load i32, ptr %8, align 4
  %36 = shl i32 %35, 16
  %37 = load i32, ptr %7, align 4
  %38 = shl i32 %37, 8
  %39 = load i32, ptr %5, align 4
  %40 = or i32 %36, %34
  %41 = or i32 %40, %38
  %42 = or i32 %41, %39
  %43 = load ptr, ptr %24, align 4
  %44 = getelementptr i8, ptr %43, i32 %30
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #5, !srcloc !10
  %45 = load i32, ptr %6, align 4
  %46 = load ptr, ptr %24, align 4
  %47 = load i32, ptr %26, align 4
  %48 = add i32 %47, 8
  %49 = getelementptr i8, ptr %46, i32 %48
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %45) #5, !srcloc !10
  br label %59

50:                                               ; preds = %19
  %51 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = icmp ugt i32 %52, 1
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load ptr, ptr %9, align 4
  %56 = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %57, ptr noundef nonnull @.str, ptr noundef %58, i32 noundef %1, i32 noundef %2) #6
  br label %59

59:                                               ; preds = %54, %50, %23, %15, %3
  %60 = phi i32 [ %13, %3 ], [ %17, %15 ], [ %17, %23 ], [ -22, %54 ], [ -22, %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #5
  ret i32 %60
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gt215_devinit_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nv50_devinit_new_(ptr noundef nonnull @gt215_devinit, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #5
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_devinit_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_devinit_preinit(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_devinit_init(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_devinit_post(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gt215_devinit_mmio(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ult i32 %1, 1050400
  br i1 %5, label %56, label %6

6:                                                ; preds = %2
  %7 = icmp ugt i32 %1, 1050812
  br i1 %7, label %29, label %8

8:                                                ; preds = %53, %51, %47, %43, %39, %35, %31, %6
  %9 = phi ptr [ @gt215_devinit_mmio_part, %6 ], [ getelementptr inbounds ([25 x i32], ptr @gt215_devinit_mmio_part, i32 0, i32 3), %31 ], [ getelementptr inbounds ([25 x i32], ptr @gt215_devinit_mmio_part, i32 0, i32 6), %35 ], [ getelementptr inbounds ([25 x i32], ptr @gt215_devinit_mmio_part, i32 0, i32 9), %39 ], [ getelementptr inbounds ([25 x i32], ptr @gt215_devinit_mmio_part, i32 0, i32 12), %43 ], [ getelementptr inbounds ([25 x i32], ptr @gt215_devinit_mmio_part, i32 0, i32 15), %47 ], [ getelementptr inbounds ([25 x i32], ptr @gt215_devinit_mmio_part, i32 0, i32 18), %51 ], [ getelementptr inbounds ([25 x i32], ptr @gt215_devinit_mmio_part, i32 0, i32 21), %53 ]
  %10 = getelementptr i32, ptr %9, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = udiv i32 %1, %11
  %13 = and i32 %12, 7
  %14 = getelementptr inbounds %struct.nv50_devinit, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 5440
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  store i32 %21, ptr %14, align 4
  br label %22

22:                                               ; preds = %17, %8
  %23 = phi i32 [ %21, %17 ], [ %15, %8 ]
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = tail call i32 @__sw_hweight8(i32 noundef %25) #5
  %27 = icmp ult i32 %13, %26
  %28 = select i1 %27, i32 %1, i32 -1
  br label %56

29:                                               ; preds = %6
  %30 = icmp ult i32 %1, 1051168
  br i1 %30, label %56, label %31

31:                                               ; preds = %29
  %32 = icmp ugt i32 %1, 1051356
  br i1 %32, label %33, label %8

33:                                               ; preds = %31
  %34 = icmp ult i32 %1, 1052032
  br i1 %34, label %56, label %35

35:                                               ; preds = %33
  %36 = icmp ugt i32 %1, 1052124
  br i1 %36, label %37, label %8

37:                                               ; preds = %35
  %38 = icmp ult i32 %1, 1114112
  br i1 %38, label %56, label %39

39:                                               ; preds = %37
  %40 = icmp ugt i32 %1, 1118108
  br i1 %40, label %41, label %8

41:                                               ; preds = %39
  %42 = icmp ult i32 %1, 1118208
  br i1 %42, label %56, label %43

43:                                               ; preds = %41
  %44 = icmp ugt i32 %1, 1118268
  br i1 %44, label %45, label %8

45:                                               ; preds = %43
  %46 = icmp ult i32 %1, 1118336
  br i1 %46, label %56, label %47

47:                                               ; preds = %45
  %48 = icmp ugt i32 %1, 1118460
  br i1 %48, label %49, label %8

49:                                               ; preds = %47
  %50 = icmp ult i32 %1, 1118496
  br i1 %50, label %56, label %51

51:                                               ; preds = %49
  %52 = icmp ugt i32 %1, 1118716
  br i1 %52, label %53, label %8

53:                                               ; preds = %51
  %54 = add i32 %1, -1119421
  %55 = icmp ult i32 %54, -445
  br i1 %55, label %56, label %8

56:                                               ; preds = %53, %49, %45, %41, %37, %33, %29, %22, %2
  %57 = phi i32 [ %28, %22 ], [ %1, %53 ], [ %1, %49 ], [ %1, %45 ], [ %1, %41 ], [ %1, %37 ], [ %1, %33 ], [ %1, %29 ], [ %1, %2 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @gt215_devinit_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 5440
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 5452
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %11 = and i32 %7, 1073741824
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  tail call void @nvkm_subdev_disable(ptr noundef %3, i32 noundef 38, i32 noundef 0) #5
  tail call void @nvkm_subdev_disable(ptr noundef %3, i32 noundef 39, i32 noundef 0) #5
  br label %14

14:                                               ; preds = %13, %1
  %15 = and i32 %10, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @nvkm_subdev_disable(ptr noundef %3, i32 noundef 30, i32 noundef 0) #5
  br label %18

18:                                               ; preds = %17, %14
  %19 = and i32 %10, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @nvkm_subdev_disable(ptr noundef %3, i32 noundef 40, i32 noundef 0) #5
  br label %22

22:                                               ; preds = %21, %18
  %23 = and i32 %10, 512
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void @nvkm_subdev_disable(ptr noundef %3, i32 noundef 28, i32 noundef 0) #5
  br label %26

26:                                               ; preds = %25, %22
  ret i64 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_disable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{!"auto-init"}
!9 = !{i64 2151484992}
!10 = !{i64 3943899}
!11 = !{i64 3944317}
!12 = !{i64 2151483770}
