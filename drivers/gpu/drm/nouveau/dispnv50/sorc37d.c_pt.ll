; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/sorc37d.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/sorc37d.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_outp_func = type { ptr, ptr }
%struct.nv50_core = type { ptr, %struct.nv50_dmac, i8 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nv50_disp = type { ptr, ptr, %struct.nvif_object, ptr, %struct.mutex }
%struct.nouveau_encoder = type { %struct.drm_encoder_slave, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.anon.101, %struct.drm_display_mode, i32, %struct.nv04_output_reg, %union.anon.102, %struct.anon.109, ptr, ptr, ptr }
%struct.drm_encoder_slave = type { %struct.drm_encoder, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.101 = type { i8, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.nv04_output_reg = type { i32, i32 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { ptr, i32, i32, %struct.mutex, [15 x i8], [16 x i8], %struct.drm_dp_desc, i8 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.anon.109 = type { i8 }

@sorc37d = dso_local local_unnamed_addr constant %struct.nv50_outp_func { ptr @sorc37d_ctrl, ptr @sorc37d_get_caps }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sorc37d_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.nv50_core, ptr %0, i32 0, i32 1, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvif_push, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i32, ptr %8, i32 2
  %10 = getelementptr inbounds %struct.nvif_push, ptr %6, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ult ptr %9, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %6, align 8
  %15 = tail call i32 %14(ptr noundef %6, i32 noundef 2) #2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load ptr, ptr %7, align 4
  br label %19

19:                                               ; preds = %17, %4
  %20 = phi ptr [ %18, %17 ], [ %8, %4 ]
  %21 = shl i32 %1, 5
  %22 = add i32 %21, 768
  %23 = and i32 %22, 16352
  %24 = or i32 %23, 262144
  %25 = getelementptr i32, ptr %20, i32 1
  store ptr %25, ptr %7, align 4
  store i32 %24, ptr %20, align 4
  %26 = load ptr, ptr %7, align 4
  %27 = getelementptr i32, ptr %26, i32 1
  store ptr %27, ptr %7, align 4
  store i32 %2, ptr %26, align 4
  br label %28

28:                                               ; preds = %19, %13
  %29 = phi i32 [ 0, %19 ], [ %15, %13 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sorc37d_get_caps(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 2, i32 6
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7, !prof !8

7:                                                ; preds = %3
  %8 = shl i32 %2, 3
  %9 = add i32 %8, 324
  %10 = getelementptr i8, ptr %5, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #2, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !10
  br label %18

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 2
  %14 = shl i32 %2, 3
  %15 = add i32 %14, 324
  %16 = sext i32 %15 to i64
  %17 = tail call i32 @nvif_object_rd(ptr noundef %13, i32 noundef 4, i64 noundef %16) #2
  br label %18

18:                                               ; preds = %12, %7
  %19 = phi i32 [ %11, %7 ], [ %17, %12 ]
  %20 = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 13
  %21 = lshr i32 %19, 26
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = load i8, ptr %20, align 4
  %25 = and i8 %24, -2
  %26 = or i8 %23, %25
  store i8 %26, ptr %20, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 3943616}
!10 = !{i64 2151483069}
