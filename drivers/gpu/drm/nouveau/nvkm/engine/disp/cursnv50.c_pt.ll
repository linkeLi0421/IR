; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/cursnv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/cursnv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.nv50_disp_cursor_v0 = type { i8, i8, [6 x i8] }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.128, %struct.anon.128, %struct.anon.128, %struct.anon.129, %struct.anon.130, ptr, ptr, [81 x ptr] }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.126 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.125 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.125 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.126 = type { %struct.spinlock, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.128 = type { i32, i32 }
%struct.anon.129 = type { i32, i32, i32 }
%struct.anon.130 = type { i32, i32, [3 x i8] }

@.str = private unnamed_addr constant [60 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create disp cursor size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create disp cursor vers %d head %d\0A\00", align 1
@nv50_disp_pioc_func = external dso_local constant %struct.nv50_disp_chan_func, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_disp_curs_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = getelementptr inbounds %struct.nvkm_oclass, ptr %4, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_object, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_client, ptr %12, i32 0, i32 3
  %14 = load i32, ptr %13, align 8
  %15 = icmp ugt i32 %14, 4
  br i1 %15, label %16, label %23

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.nvkm_client, ptr %12, i32 0, i32 1
  %18 = getelementptr inbounds %struct.nvkm_object, ptr %10, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nvkm_object, ptr %10, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %6) #3
  br label %23

23:                                               ; preds = %16, %8
  %24 = icmp ugt i32 %6, 7
  br i1 %24, label %25, label %58

25:                                               ; preds = %23
  %26 = load i8, ptr %5, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %25
  %29 = icmp eq i32 %6, 8
  br i1 %29, label %30, label %58

30:                                               ; preds = %28
  %31 = load ptr, ptr %11, align 4
  %32 = getelementptr inbounds %struct.nvkm_client, ptr %31, i32 0, i32 3
  %33 = load i32, ptr %32, align 8
  %34 = icmp ugt i32 %33, 4
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.nvkm_client, ptr %31, i32 0, i32 1
  %37 = getelementptr inbounds %struct.nvkm_object, ptr %10, i32 0, i32 4
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr inbounds %struct.nvkm_object, ptr %10, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nv50_disp_cursor_v0, ptr %5, i32 0, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef 0, i32 noundef %43) #3
  br label %45

45:                                               ; preds = %35, %30
  %46 = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1
  %47 = getelementptr inbounds %struct.nv50_disp_cursor_v0, ptr %5, i32 0, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = tail call ptr @nvkm_head_find(ptr noundef %46, i32 noundef %49) #4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %45
  %53 = load i8, ptr %47, align 1
  %54 = zext i8 %53 to i32
  %55 = add i32 %54, %2
  %56 = add i32 %54, %3
  %57 = tail call i32 @nv50_disp_chan_new_(ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef %55, i32 noundef %56, i32 noundef %54, ptr noundef %4, ptr noundef %7) #4
  br label %58

58:                                               ; preds = %52, %45, %28, %25, %23
  %59 = phi i32 [ %57, %52 ], [ -22, %45 ], [ -38, %23 ], [ -38, %25 ], [ -7, %28 ]
  ret i32 %59
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_head_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_chan_new_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_disp_curs_new(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @nv50_disp_curs_new_(ptr noundef nonnull @nv50_disp_pioc_func, ptr noundef %3, i32 noundef 7, i32 noundef 7, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  ret i32 %6
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind }
attributes #4 = { nounwind }

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
