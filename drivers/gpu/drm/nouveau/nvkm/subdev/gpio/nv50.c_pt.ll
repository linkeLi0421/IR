; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/gpio/nv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/gpio/nv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_gpio_func = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_gpio = type { ptr, %struct.nvkm_subdev, %struct.nvkm_event }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@nv50_gpio_reset.regs = internal unnamed_addr constant [2 x i32] [i32 57600, i32 57996], align 4
@nv50_gpio = internal constant %struct.nvkm_gpio_func { i32 16, ptr @nv50_gpio_intr_stat, ptr @nv50_gpio_intr_mask, ptr @nv50_gpio_drive, ptr @nv50_gpio_sense, ptr @nv50_gpio_reset }, align 4
@__const.nv50_gpio_location.nv50_gpio_reg = private unnamed_addr constant [4 x i32] [i32 57604, i32 57608, i32 57984, i32 57988], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_gpio_reset(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.nvkm_gpio, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 21
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #3
  store i8 0, ptr %3, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #3
  store i8 0, ptr %4, align 1, !annotation !8
  %9 = call zeroext i16 @dcb_gpio_entry(ptr noundef %8, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4) #3
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %56, label %11

11:                                               ; preds = %2
  %12 = icmp eq i8 %1, -1
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  br label %14

14:                                               ; preds = %52, %11
  %15 = phi i16 [ %9, %11 ], [ %54, %52 ]
  %16 = phi i32 [ 0, %11 ], [ %53, %52 ]
  %17 = zext i16 %15 to i32
  %18 = call i32 @nvbios_rd32(ptr noundef %8, i32 noundef %17) #3
  %19 = lshr i32 %18, 8
  %20 = trunc i32 %19 to i8
  %21 = and i32 %18, 65280
  %22 = icmp ne i32 %21, 65280
  %23 = icmp eq i8 %20, %1
  %24 = select i1 %12, i1 true, i1 %23
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %52

26:                                               ; preds = %14
  %27 = trunc i32 %18 to i8
  %28 = and i8 %27, 31
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 15
  %31 = lshr i32 %29, 4
  %32 = getelementptr [2 x i32], ptr @nv50_gpio_reset.regs, i32 0, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = lshr i32 %18, 10
  %35 = and i32 %34, 65536
  %36 = lshr i32 %18, 25
  %37 = and i32 %36, 1
  %38 = or i32 %35, %37
  %39 = lshr i32 %18, 24
  %40 = and i32 %39, 1
  %41 = call i32 @nvkm_gpio_set(ptr noundef %0, i32 noundef 0, i8 noundef zeroext %20, i8 noundef zeroext %28, i32 noundef %40) #3
  %42 = load ptr, ptr %13, align 4
  %43 = getelementptr i8, ptr %42, i32 %33
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #3, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !10
  %45 = shl nuw i32 65537, %30
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = shl i32 %38, %30
  %49 = or i32 %47, %48
  %50 = load ptr, ptr %13, align 4
  %51 = getelementptr i8, ptr %50, i32 %33
  call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !11
  call void @arm_heavy_mb() #3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #3, !srcloc !12
  br label %52

52:                                               ; preds = %26, %14
  %53 = add i32 %16, 1
  %54 = call zeroext i16 @dcb_gpio_entry(ptr noundef %8, i32 noundef 0, i32 noundef %53, ptr noundef nonnull %3, ptr noundef nonnull %4) #3
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %14

56:                                               ; preds = %52, %2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_gpio_entry(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_set(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_gpio_drive(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp sgt i32 %1, 31
  br i1 %5, label %28, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.nvkm_gpio, ptr %0, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = ashr i32 %1, 3
  %10 = getelementptr [4 x i32], ptr @__const.nv50_gpio_location.nv50_gpio_reg, i32 0, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %1, 2
  %13 = and i32 %12, 28
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %11
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #3, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !10
  %18 = shl nuw nsw i32 3, %13
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = shl i32 %2, 1
  %22 = xor i32 %21, 2
  %23 = or i32 %22, %3
  %24 = shl i32 %23, %13
  %25 = or i32 %20, %24
  %26 = load ptr, ptr %14, align 4
  %27 = getelementptr i8, ptr %26, i32 %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #3, !srcloc !12
  br label %28

28:                                               ; preds = %6, %4
  %29 = phi i32 [ 0, %6 ], [ -22, %4 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_gpio_sense(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, 31
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.nvkm_gpio, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = ashr i32 %1, 3
  %8 = getelementptr [4 x i32], ptr @__const.nv50_gpio_location.nv50_gpio_reg, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %1, 2
  %11 = and i32 %10, 28
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %9
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #3, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !10
  %16 = shl nuw nsw i32 4, %11
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %4, %2
  %21 = phi i32 [ %19, %4 ], [ -22, %2 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_gpio_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_gpio_new_(ptr noundef nonnull @nv50_gpio, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #3
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_gpio_intr_stat(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_gpio, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 57428
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #3, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !10
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr i8, ptr %10, i32 57424
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #3, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !10
  %13 = and i32 %12, %9
  %14 = lshr i32 %13, 16
  store i32 %14, ptr %2, align 4
  %15 = and i32 %13, 65535
  store i32 %15, ptr %1, align 4
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr i8, ptr %16, i32 57428
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %9) #3, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_gpio_intr_mask(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_gpio, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 57424
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #3, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !10
  %11 = and i32 %1, 2
  %12 = icmp eq i32 %11, 0
  %13 = shl i32 %2, 16
  %14 = xor i32 %13, -1
  %15 = and i32 %10, %14
  %16 = shl i32 %3, 16
  %17 = or i32 %15, %16
  %18 = select i1 %12, i32 %10, i32 %17
  %19 = and i32 %1, 1
  %20 = icmp eq i32 %19, 0
  %21 = xor i32 %2, -1
  %22 = and i32 %18, %21
  %23 = or i32 %22, %3
  %24 = select i1 %20, i32 %18, i32 %23
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr i8, ptr %25, i32 57424
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #3, !srcloc !12
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
!9 = !{i64 3942543}
!10 = !{i64 2151481996}
!11 = !{i64 2151483218}
!12 = !{i64 3942125}
