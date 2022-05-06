; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/cursc37a.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/cursc37a.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_wimm_func = type { ptr, ptr }
%struct.nv50_wndw = type { ptr, ptr, i32, %struct.nv50_disp_interlock, %struct.anon.127, %struct.drm_plane, %struct.nv50_lut, %struct.nv50_dmac, %struct.nv50_dmac, %struct.nvif_notify, i16, i16, i32 }
%struct.nv50_disp_interlock = type { i32, i32, i32 }
%struct.anon.127 = type { ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.nv50_lut = type { [2 x %struct.nvif_mem] }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nv50_wndw_atom = type { %struct.drm_plane_state, ptr, i8, %struct.anon.102, %struct.anon.103, [4 x i8], %struct.anon.104, %struct.anon.106, %struct.anon.107, %struct.anon.108, %struct.anon.109, %struct.anon.110, %union.nv50_wndw_atom_mask, %union.nv50_wndw_atom_mask }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.anon.102 = type { i32, i16 }
%struct.anon.103 = type { i32, i16, i32, i32 }
%struct.anon.104 = type { i32, [4 x i8], %struct.anon.105 }
%struct.anon.105 = type { [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.106 = type { [12 x i32], i8 }
%struct.anon.107 = type { i8, i8, i16, [3 x i16], [3 x i32], i16, i16, [6 x i32], [6 x i64] }
%struct.anon.108 = type { i16, i16, i16, i16, i16, i16 }
%struct.anon.109 = type { i16, i16 }
%struct.anon.110 = type { i8, i8, i8 }
%union.nv50_wndw_atom_mask = type { %struct.anon.111 }
%struct.anon.111 = type { i8 }

@cursc37a = internal constant %struct.nv50_wimm_func { ptr @cursc37a_point, ptr @cursc37a_update }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cursc37a_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = shl nuw i32 1, %1
  %6 = tail call i32 @curs507a_new_(ptr noundef nonnull @cursc37a, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef %3) #2
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @curs507a_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cursc37a_point(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 8
  %4 = tail call zeroext i1 @curs507a_space(ptr noundef %0) #2
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 10
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 10, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = shl nuw i32 %14, 16
  %16 = or i32 %15, %11
  br i1 %8, label %19, label %17, !prof !8

17:                                               ; preds = %5
  %18 = getelementptr i8, ptr %7, i32 520
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !9
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #2, !srcloc !10
  br label %20

19:                                               ; preds = %5
  tail call void @nvif_object_wr(ptr noundef %3, i32 noundef 4, i64 noundef 520, i32 noundef %16) #2
  br label %20

20:                                               ; preds = %19, %17, %2
  %21 = phi i32 [ 0, %17 ], [ 0, %19 ], [ -110, %2 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cursc37a_update(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 8
  %4 = tail call zeroext i1 @curs507a_space(ptr noundef %0) #2
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !8

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %7, i32 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !9
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 1) #2, !srcloc !10
  br label %12

11:                                               ; preds = %5
  tail call void @nvif_object_wr(ptr noundef %3, i32 noundef 4, i64 noundef 512, i32 noundef 1) #2
  br label %12

12:                                               ; preds = %11, %9, %2
  %13 = phi i32 [ 0, %9 ], [ 0, %11 ], [ -110, %2 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @curs507a_space(ptr noundef) local_unnamed_addr #1

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2151487683}
!10 = !{i64 3946590}
