; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/fb/gm200.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gm200.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fb_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i8, ptr }
%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { i32, ptr, ptr, ptr, ptr }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.136, %struct.anon.137, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.136 = type { %struct.mutex, %struct.nvkm_mm }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.137 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.124, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.124 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.gf100_fb = type { %struct.nvkm_fb, ptr, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@gm200_fb = internal constant %struct.nvkm_fb_func { ptr @gf100_fb_dtor, ptr null, ptr @gf100_fb_oneinit, ptr @gm200_fb_init, ptr null, ptr @gm200_fb_init_page, ptr null, ptr @gf100_fb_intr, %struct.anon zeroinitializer, %struct.anon.0 zeroinitializer, ptr @gm200_ram_new, i8 0, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_fb_init_page(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fb, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_fb, ptr %0, i32 0, i32 6
  %5 = load i8, ptr %4, align 4
  switch i8 %5, label %31 [
    i8 16, label %6
    i8 17, label %15
    i8 0, label %23
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 1051776
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %11 = and i32 %10, -6146
  %12 = or i32 %11, 4097
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr i8, ptr %13, i32 1051776
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #3, !srcloc !11
  br label %31

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 1051776
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %20 = and i32 %19, -6146
  %21 = load ptr, ptr %16, align 4
  %22 = getelementptr i8, ptr %21, i32 1051776
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #3, !srcloc !11
  br label %31

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 1051776
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %28 = or i32 %27, 6144
  %29 = load ptr, ptr %24, align 4
  %30 = getelementptr i8, ptr %29, i32 1051776
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #3, !srcloc !11
  br label %31

31:                                               ; preds = %23, %15, %6, %1
  %32 = phi i32 [ -22, %1 ], [ 0, %23 ], [ 0, %15 ], [ 0, %6 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm200_fb_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fb, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gf100_fb, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gf100_fb, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 8
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 1051664
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %10) #3, !srcloc !11
  br label %14

14:                                               ; preds = %7, %1
  %15 = getelementptr inbounds %struct.nvkm_fb, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_memory_func, ptr %17, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i64 %19(ptr noundef %16) #3
  %21 = lshr i64 %20, 8
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 1051848
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %22) #3, !srcloc !11
  %26 = getelementptr inbounds %struct.nvkm_fb, ptr %0, i32 0, i32 7
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nvkm_memory_func, ptr %28, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i64 %30(ptr noundef %27) #3
  %32 = lshr i64 %31, 8
  %33 = trunc i64 %32 to i32
  %34 = load ptr, ptr %23, align 4
  %35 = getelementptr i8, ptr %34, i32 1051852
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #3, !srcloc !11
  %36 = load ptr, ptr %23, align 4
  %37 = getelementptr i8, ptr %36, i32 1051844
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %39 = and i32 %38, -393217
  %40 = load ptr, ptr %26, align 4
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nvkm_memory_func, ptr %41, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i64 %43(ptr noundef %40) #3
  %45 = lshr i64 %44, 16
  %46 = tail call i64 @llvm.umin.i64(i64 %45, i64 2)
  %47 = trunc i64 %46 to i32
  %48 = shl nuw nsw i32 %47, 17
  %49 = or i32 %48, %39
  %50 = load ptr, ptr %23, align 4
  %51 = getelementptr i8, ptr %50, i32 1051844
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #3, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_fb_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @gf100_fb_new_(ptr noundef nonnull @gm200_fb, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #3
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_fb_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gf100_fb_dtor(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_fb_oneinit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_fb_intr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_ram_new(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 3948167}
!9 = !{i64 2151487620}
!10 = !{i64 2151488842}
!11 = !{i64 3947749}
