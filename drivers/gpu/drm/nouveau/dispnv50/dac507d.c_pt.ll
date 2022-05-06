; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/dac507d.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/dac507d.c"
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
%struct.nv50_head_atom = type { %struct.drm_crtc_state, %struct.anon.110, %struct.anon.111, %struct.nv50_head_mode, %struct.anon.114, %struct.anon.115, %struct.anon.116, %struct.anon.117, %struct.anon.118, %struct.anon.119, %struct.anon.120, %struct.anon.122, %struct.nv50_crc_atom, %struct.anon.123, %union.nv50_head_atom_mask, %union.nv50_head_atom_mask, [4 x i8] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.anon.110 = type { i32, i32, i32 }
%struct.anon.111 = type { i16, i16, i16, i16 }
%struct.nv50_head_mode = type { i8, i32, %struct.anon.112, %struct.anon.113 }
%struct.anon.112 = type { i16, i16, i16, i16 }
%struct.anon.113 = type { i32, i16, i16, i16, i16, i16, i16 }
%struct.anon.114 = type { i8, i32, [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.115 = type { i8, i32, [5 x i8], i8, i16, i32, i16, i16, i16, i16, [4 x i8] }
%struct.anon.116 = type { i8, i32, [6 x i8], i8 }
%struct.anon.117 = type { i8, i8, i16, i16, i16, i16 }
%struct.anon.118 = type { i8 }
%struct.anon.119 = type { i8 }
%struct.anon.120 = type { %struct.anon.121 }
%struct.anon.121 = type { i16, i16 }
%struct.anon.122 = type { i8, i8 }
%struct.nv50_crc_atom = type { i32 }
%struct.anon.123 = type { i32, i8 }
%union.nv50_head_atom_mask = type { %struct.anon.124 }
%struct.anon.124 = type { i16 }

@dac507d = dso_local local_unnamed_addr constant %struct.nv50_outp_func { ptr @dac507d_ctrl, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dac507d_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.nv50_core, ptr %0, i32 0, i32 1, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %3, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nv50_head_atom, ptr %3, i32 0, i32 11
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 3
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %8, %4
  %14 = phi i32 [ %12, %8 ], [ 0, %4 ]
  %15 = getelementptr inbounds %struct.nvif_push, ptr %6, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i32, ptr %16, i32 3
  %18 = getelementptr inbounds %struct.nvif_push, ptr %6, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = icmp ult ptr %17, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %13
  %22 = load ptr, ptr %6, align 8
  %23 = tail call i32 %22(ptr noundef %6, i32 noundef 3) #1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load ptr, ptr %15, align 4
  br label %27

27:                                               ; preds = %25, %13
  %28 = phi ptr [ %26, %25 ], [ %16, %13 ]
  %29 = shl i32 %1, 7
  %30 = add i32 %29, 1024
  %31 = and i32 %30, 3968
  %32 = or i32 %31, 524288
  %33 = getelementptr i32, ptr %28, i32 1
  store ptr %33, ptr %15, align 4
  store i32 %32, ptr %28, align 4
  %34 = load ptr, ptr %15, align 4
  %35 = getelementptr i32, ptr %34, i32 1
  store ptr %35, ptr %15, align 4
  store i32 %2, ptr %34, align 4
  %36 = load ptr, ptr %15, align 4
  %37 = getelementptr i32, ptr %36, i32 1
  store ptr %37, ptr %15, align 4
  store i32 %14, ptr %36, align 4
  br label %38

38:                                               ; preds = %27, %21
  %39 = phi i32 [ 0, %27 ], [ %23, %21 ]
  ret i32 %39
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }

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
