; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgm200.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgm200.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_ram_func = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.137, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.137 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }

@gm200_ram = internal constant %struct.nvkm_ram_func { i64 68719476736, ptr @gm107_ram_probe_fbp, ptr @gm200_ram_probe_fbp_amount, ptr @gf100_ram_probe_fbpa_amount, ptr @gk104_ram_dtor, ptr @gk104_ram_init, ptr @gk104_ram_calc, ptr @gk104_ram_prog, ptr @gk104_ram_tidy }, align 8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_ram_probe_fbp_amount(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 140368
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr i8, ptr %10, i32 140376
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr i8, ptr %13, i32 138552
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %16 = shl nuw i32 1, %3
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %5
  %20 = load ptr, ptr %6, align 4
  %21 = shl i32 %3, 2
  %22 = add i32 %21, 138608
  %23 = getelementptr i8, ptr %20, i32 %22
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %25 = shl nsw i32 -1, %9
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = icmp eq i32 %12, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %19
  %30 = mul i32 %12, %3
  %31 = getelementptr inbounds %struct.nvkm_ram_func, ptr %0, i32 0, i32 3
  br label %32

32:                                               ; preds = %44, %29
  %33 = phi i32 [ %12, %29 ], [ %36, %44 ]
  %34 = phi i32 [ 0, %29 ], [ %45, %44 ]
  %35 = phi i32 [ %30, %29 ], [ %46, %44 ]
  %36 = add i32 %33, -1
  %37 = shl nuw i32 1, %35
  %38 = and i32 %37, %1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load ptr, ptr %31, align 8
  %42 = tail call i32 %41(ptr noundef %2, i32 noundef %35) #2
  %43 = add i32 %42, %34
  br label %44

44:                                               ; preds = %40, %32
  %45 = phi i32 [ %34, %32 ], [ %43, %40 ]
  %46 = add i32 %35, 1
  %47 = icmp eq i32 %36, 0
  br i1 %47, label %48, label %32

48:                                               ; preds = %44, %19
  %49 = phi i32 [ 0, %19 ], [ %45, %44 ]
  %50 = tail call i32 @__sw_hweight32(i32 noundef %27) #2
  store i32 %50, ptr %4, align 4
  br label %51

51:                                               ; preds = %48, %5
  %52 = phi i32 [ 0, %5 ], [ %49, %48 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_ram_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @gk104_ram_new_(ptr noundef nonnull @gm200_ram, ptr noundef %0, ptr noundef %1) #2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_ram_new_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm107_ram_probe_fbp(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_ram_probe_fbpa_amount(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gk104_ram_dtor(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_ram_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_ram_calc(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_ram_prog(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_ram_tidy(ptr noundef) #1

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
!8 = !{i64 3950433}
!9 = !{i64 2151489886}
