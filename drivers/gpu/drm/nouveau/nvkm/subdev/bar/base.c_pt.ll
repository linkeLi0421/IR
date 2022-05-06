; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bar/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bar/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_bar_func = type { ptr, ptr, ptr, %struct.anon, %struct.anon, ptr }
%struct.anon = type { ptr, ptr, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.120, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.120 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_bar = type { ptr, %struct.nvkm_subdev, %struct.spinlock, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }

@nvkm_bar = internal constant %struct.nvkm_subdev_func { ptr @nvkm_bar_dtor, ptr null, ptr @nvkm_bar_oneinit, ptr null, ptr @nvkm_bar_init, ptr @nvkm_bar_fini, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_bar_flush(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.nvkm_bar_func, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void %6(ptr noundef nonnull %0) #2
  br label %9

9:                                                ; preds = %8, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvkm_bar_bar1_vmm(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_bar_func, ptr %4, i32 0, i32 3, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr %6(ptr noundef %3) #2
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_bar_bar1_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.nvkm_bar_func, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef nonnull %3) #2
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.nvkm_bar_func, ptr %9, i32 0, i32 3, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef nonnull %3) #2
  br label %12

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvkm_bar_bar2_vmm(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nvkm_bar, ptr %3, i32 0, i32 3
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.nvkm_bar_func, ptr %10, i32 0, i32 4, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr %12(ptr noundef nonnull %3) #2
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = phi ptr [ %13, %9 ], [ null, %5 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_bar_bar2_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nvkm_bar, ptr %3, i32 0, i32 3
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.nvkm_bar_func, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef nonnull %3) #2
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr inbounds %struct.nvkm_bar_func, ptr %13, i32 0, i32 4, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef nonnull %3) #2
  br label %16

16:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_bar_bar2_fini(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nvkm_bar, ptr %3, i32 0, i32 3
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.nvkm_bar_func, ptr %10, i32 0, i32 4, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef nonnull %3) #2
  store i8 0, ptr %6, align 4
  br label %13

13:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_bar_bar2_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nvkm_bar, ptr %3, i32 0, i32 1, i32 8
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nvkm_bar, ptr %3, i32 0, i32 3
  %11 = load i8, ptr %10, align 4, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.nvkm_bar_func, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  tail call void %16(ptr noundef nonnull %3) #2
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.nvkm_bar_func, ptr %19, i32 0, i32 4, i32 2
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef nonnull %3) #2
  store i8 1, ptr %10, align 4
  br label %22

22:                                               ; preds = %18, %13, %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_bar_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nvkm_bar, ptr %4, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_bar, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %6) #2
  store ptr %0, ptr %4, align 4
  %7 = getelementptr inbounds %struct.nvkm_bar, ptr %4, i32 0, i32 2
  store i32 0, ptr %7, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_bar_dtor(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 36
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nvkm_bar, ptr %5, i32 0, i32 3
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr inbounds %struct.nvkm_bar_func, ptr %12, i32 0, i32 4, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef nonnull %5) #2
  store i8 0, ptr %8, align 4
  br label %15

15:                                               ; preds = %11, %7, %1
  %16 = getelementptr i8, ptr %0, i32 -4
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr %18(ptr noundef %16) #2
  ret ptr %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_bar_oneinit(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_bar_func, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %2) #2
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_bar_init(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_bar_func, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %2) #2
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.nvkm_bar_func, ptr %6, i32 0, i32 3, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef %2) #2
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.nvkm_bar_func, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  tail call void %11(ptr noundef %2) #2
  br label %14

14:                                               ; preds = %13, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_bar_fini(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_bar_func, ptr %4, i32 0, i32 3, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void %6(ptr noundef %3) #2
  br label %9

9:                                                ; preds = %8, %2
  ret i32 0
}

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
!8 = !{i8 0, i8 2}
