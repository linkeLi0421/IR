; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/gpio/nv10.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/gpio/nv10.c"
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

@nv10_gpio = internal constant %struct.nvkm_gpio_func { i32 16, ptr @nv10_gpio_intr_stat, ptr @nv10_gpio_intr_mask, ptr @nv10_gpio_drive, ptr @nv10_gpio_sense, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv10_gpio_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_gpio_new_(ptr noundef nonnull @nv10_gpio, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv10_gpio_intr_stat(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_gpio, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 4356
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr i8, ptr %10, i32 4420
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %13 = and i32 %12, %9
  %14 = lshr i32 %13, 16
  store i32 %14, ptr %2, align 4
  %15 = and i32 %13, 65535
  store i32 %15, ptr %1, align 4
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr i8, ptr %16, i32 4356
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %9) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv10_gpio_intr_mask(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_gpio, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 4420
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
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
  %26 = getelementptr i8, ptr %25, i32 4420
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv10_gpio_drive(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_gpio, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp slt i32 %1, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = shl i32 %1, 4
  br label %20

10:                                               ; preds = %4
  %11 = icmp ult i32 %1, 10
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = shl nuw nsw i32 %1, 2
  %14 = add nsw i32 %13, -8
  br label %20

15:                                               ; preds = %10
  %16 = icmp ult i32 %1, 14
  br i1 %16, label %17, label %38

17:                                               ; preds = %15
  %18 = shl nuw nsw i32 %1, 2
  %19 = add nsw i32 %18, -40
  br label %20

20:                                               ; preds = %17, %12, %8
  %21 = phi i32 [ 1, %12 ], [ 1, %17 ], [ 4, %8 ]
  %22 = phi i32 [ 3, %12 ], [ 3, %17 ], [ 17, %8 ]
  %23 = phi i32 [ 6293532, %12 ], [ 6293584, %17 ], [ 6293528, %8 ]
  %24 = phi i32 [ %14, %12 ], [ %19, %17 ], [ %9, %8 ]
  %25 = shl i32 %2, %21
  %26 = or i32 %25, %3
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 %23
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %31 = shl i32 %22, %24
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = shl i32 %26, %24
  %35 = or i32 %33, %34
  %36 = load ptr, ptr %27, align 4
  %37 = getelementptr i8, ptr %36, i32 %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #2, !srcloc !11
  br label %38

38:                                               ; preds = %20, %15
  %39 = phi i32 [ 0, %20 ], [ -22, %15 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv10_gpio_sense(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_gpio, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp slt i32 %1, 2
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = shl i32 %1, 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 6293528
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %12 = shl i32 256, %7
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  br label %42

16:                                               ; preds = %2
  %17 = icmp ult i32 %1, 10
  br i1 %17, label %18, label %29

18:                                               ; preds = %16
  %19 = shl nuw nsw i32 %1, 2
  %20 = add nsw i32 %19, -8
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 6293532
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %25 = shl nuw nsw i32 4, %20
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  br label %42

29:                                               ; preds = %16
  %30 = icmp ult i32 %1, 14
  br i1 %30, label %31, label %42

31:                                               ; preds = %29
  %32 = shl nuw nsw i32 %1, 2
  %33 = add nsw i32 %32, -40
  %34 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 6293584
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %38 = shl nuw nsw i32 4, %33
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %31, %29, %18, %6
  %43 = phi i32 [ %15, %6 ], [ %28, %18 ], [ %41, %31 ], [ -22, %29 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
!8 = !{i64 3942059}
!9 = !{i64 2151481512}
!10 = !{i64 2151482734}
!11 = !{i64 3941641}
