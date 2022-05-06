; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/gpio/ga102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/gpio/ga102.c"
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
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.120, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.120 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@ga102_gpio = internal constant %struct.nvkm_gpio_func { i32 32, ptr @ga102_gpio_intr_stat, ptr @ga102_gpio_intr_mask, ptr @ga102_gpio_drive, ptr @ga102_gpio_sense, ptr @ga102_gpio_reset }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ga102_gpio_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_gpio_new_(ptr noundef nonnull @ga102_gpio, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #3
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ga102_gpio_intr_stat(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_gpio, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 136768
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr i8, ptr %10, i32 136780
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr i8, ptr %13, i32 136776
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %16 = and i32 %15, %9
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr i8, ptr %17, i32 136788
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %20 = and i32 %19, %12
  %21 = and i32 %20, -65536
  %22 = lshr i32 %16, 16
  %23 = or i32 %21, %22
  store i32 %23, ptr %2, align 4
  %24 = shl i32 %20, 16
  %25 = and i32 %16, 65535
  %26 = or i32 %24, %25
  store i32 %26, ptr %1, align 4
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr i8, ptr %27, i32 136768
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %9) #3, !srcloc !11
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr i8, ptr %29, i32 136780
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %12) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ga102_gpio_intr_mask(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_gpio, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 136776
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr i8, ptr %11, i32 136788
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %14 = and i32 %1, 2
  %15 = icmp eq i32 %14, 0
  %16 = shl i32 %2, 16
  %17 = xor i32 %16, -1
  %18 = and i32 %10, %17
  %19 = shl i32 %3, 16
  %20 = or i32 %18, %19
  %21 = select i1 %15, i32 %10, i32 %20
  %22 = and i32 %1, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %4
  %25 = and i32 %2, 65535
  %26 = xor i32 %25, -1
  %27 = and i32 %21, %26
  %28 = and i32 %3, 65535
  %29 = or i32 %27, %28
  br label %30

30:                                               ; preds = %24, %4
  %31 = phi i32 [ %29, %24 ], [ %21, %4 ]
  br i1 %15, label %38, label %32

32:                                               ; preds = %30
  %33 = and i32 %2, -65536
  %34 = xor i32 %33, -1
  %35 = and i32 %13, %34
  %36 = and i32 %3, -65536
  %37 = or i32 %35, %36
  br label %38

38:                                               ; preds = %32, %30
  %39 = phi i32 [ %37, %32 ], [ %13, %30 ]
  %40 = lshr i32 %3, 16
  %41 = lshr i32 %2, 16
  %42 = xor i32 %41, -1
  %43 = and i32 %39, %42
  %44 = or i32 %43, %40
  %45 = select i1 %23, i32 %39, i32 %44
  %46 = load ptr, ptr %7, align 4
  %47 = getelementptr i8, ptr %46, i32 136776
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %31) #3, !srcloc !11
  %48 = load ptr, ptr %7, align 4
  %49 = getelementptr i8, ptr %48, i32 136788
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %45) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ga102_gpio_drive(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_gpio, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = shl i32 %2, 13
  %8 = xor i32 %7, 8192
  %9 = shl i32 %3, 12
  %10 = or i32 %8, %9
  %11 = shl i32 %1, 2
  %12 = add i32 %11, 135680
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %17 = and i32 %16, -12289
  %18 = or i32 %10, %17
  %19 = load ptr, ptr %13, align 4
  %20 = getelementptr i8, ptr %19, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #3, !srcloc !11
  %21 = load ptr, ptr %13, align 4
  %22 = getelementptr i8, ptr %21, i32 54788
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %24 = or i32 %23, 1
  %25 = load ptr, ptr %13, align 4
  %26 = getelementptr i8, ptr %25, i32 54788
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #3, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ga102_gpio_sense(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_gpio, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = shl i32 %1, 2
  %8 = add i32 %7, 135680
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %11 = lshr i32 %10, 14
  %12 = and i32 %11, 1
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ga102_gpio_reset(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.nvkm_gpio, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 21
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #3
  store i8 0, ptr %3, align 1, !annotation !12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #3
  store i8 0, ptr %4, align 1, !annotation !12
  %9 = call zeroext i16 @dcb_gpio_entry(ptr noundef %8, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4) #3
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %64, label %11

11:                                               ; preds = %2
  %12 = icmp eq i8 %1, -1
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  br label %14

14:                                               ; preds = %60, %11
  %15 = phi i16 [ %9, %11 ], [ %62, %60 ]
  %16 = phi i32 [ 0, %11 ], [ %61, %60 ]
  %17 = zext i16 %15 to i32
  %18 = call i32 @nvbios_rd32(ptr noundef %8, i32 noundef %17) #3
  %19 = lshr i32 %18, 8
  %20 = trunc i32 %19 to i8
  %21 = lshr i32 %18, 24
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 31
  %24 = and i32 %18, 65280
  %25 = icmp ne i32 %24, 65280
  %26 = icmp eq i8 %20, %1
  %27 = select i1 %12, i1 true, i1 %26
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %60

29:                                               ; preds = %14
  %30 = lshr i32 %18, 16
  %31 = lshr i32 %18, 7
  %32 = trunc i32 %18 to i8
  %33 = and i8 %32, 63
  %34 = and i32 %31, 1
  %35 = call i32 @nvkm_gpio_set(ptr noundef %0, i32 noundef 0, i8 noundef zeroext %20, i8 noundef zeroext %33, i32 noundef %34) #3
  %36 = zext i8 %33 to i32
  %37 = shl nuw nsw i32 %36, 2
  %38 = or i32 %37, 135680
  %39 = load ptr, ptr %13, align 4
  %40 = getelementptr i8, ptr %39, i32 %38
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #3, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %42 = and i32 %41, -256
  %43 = and i32 %30, 255
  %44 = or i32 %42, %43
  %45 = load ptr, ptr %13, align 4
  %46 = getelementptr i8, ptr %45, i32 %38
  call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  call void @arm_heavy_mb() #3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #3, !srcloc !11
  %47 = icmp eq i8 %23, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %29
  %49 = add nsw i8 %23, -1
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 2
  %52 = add nuw nsw i32 %51, 55104
  %53 = load ptr, ptr %13, align 4
  %54 = getelementptr i8, ptr %53, i32 %52
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #3, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %56 = and i32 %55, -256
  %57 = or i32 %56, %36
  %58 = load ptr, ptr %13, align 4
  %59 = getelementptr i8, ptr %58, i32 %52
  call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  call void @arm_heavy_mb() #3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #3, !srcloc !11
  br label %60

60:                                               ; preds = %48, %29, %14
  %61 = add i32 %16, 1
  %62 = call zeroext i16 @dcb_gpio_entry(ptr noundef %8, i32 noundef 0, i32 noundef %61, ptr noundef nonnull %3, ptr noundef nonnull %4) #3
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %14

64:                                               ; preds = %60, %2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_gpio_entry(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_set(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!8 = !{i64 3942644}
!9 = !{i64 2151482097}
!10 = !{i64 2151483319}
!11 = !{i64 3942226}
!12 = !{!"auto-init"}
