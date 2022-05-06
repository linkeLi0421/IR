; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/volt/gm20b.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/volt/gm20b.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cvb_coef = type { i32, i32, i32, i32, i32, i32 }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_device_tegra = type { ptr, %struct.nvkm_device, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.127, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.127 = type { %struct.mutex, %struct.nvkm_mm, ptr, i32 }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"unsupported speedo %d\0A\00", align 1
@speedo_to_vmin = internal unnamed_addr constant [5 x i32] [i32 950000, i32 840000, i32 818750, i32 840000, i32 810000], align 4
@gm20b_na_cvb_coef = internal constant [13 x %struct.cvb_coef] [%struct.cvb_coef { i32 814294, i32 8144, i32 -940, i32 808, i32 -21583, i32 226 }, %struct.cvb_coef { i32 856185, i32 8144, i32 -940, i32 808, i32 -21583, i32 226 }, %struct.cvb_coef { i32 898077, i32 8144, i32 -940, i32 808, i32 -21583, i32 226 }, %struct.cvb_coef { i32 939968, i32 8144, i32 -940, i32 808, i32 -21583, i32 226 }, %struct.cvb_coef { i32 981860, i32 8144, i32 -940, i32 808, i32 -21583, i32 226 }, %struct.cvb_coef { i32 1023751, i32 8144, i32 -940, i32 808, i32 -21583, i32 226 }, %struct.cvb_coef { i32 1065642, i32 8144, i32 -940, i32 808, i32 -21583, i32 226 }, %struct.cvb_coef { i32 1107534, i32 8144, i32 -940, i32 808, i32 -21583, i32 226 }, %struct.cvb_coef { i32 1149425, i32 8144, i32 -940, i32 808, i32 -21583, i32 226 }, %struct.cvb_coef { i32 1191317, i32 8144, i32 -940, i32 808, i32 -21583, i32 226 }, %struct.cvb_coef { i32 1233208, i32 8144, i32 -940, i32 808, i32 -21583, i32 226 }, %struct.cvb_coef { i32 1275100, i32 8144, i32 -940, i32 808, i32 -21583, i32 226 }, %struct.cvb_coef { i32 1316991, i32 8144, i32 -940, i32 808, i32 -21583, i32 226 }], align 4
@gm20b_cvb_coef = internal constant [12 x %struct.cvb_coef] [%struct.cvb_coef { i32 1786666, i32 -85625, i32 1632, i32 0, i32 0, i32 0 }, %struct.cvb_coef { i32 1846729, i32 -87525, i32 1632, i32 0, i32 0, i32 0 }, %struct.cvb_coef { i32 1910480, i32 -89425, i32 1632, i32 0, i32 0, i32 0 }, %struct.cvb_coef { i32 1977920, i32 -91325, i32 1632, i32 0, i32 0, i32 0 }, %struct.cvb_coef { i32 2049049, i32 -93215, i32 1632, i32 0, i32 0, i32 0 }, %struct.cvb_coef { i32 2122872, i32 -95095, i32 1632, i32 0, i32 0, i32 0 }, %struct.cvb_coef { i32 2201331, i32 -96985, i32 1632, i32 0, i32 0, i32 0 }, %struct.cvb_coef { i32 2283479, i32 -98885, i32 1632, i32 0, i32 0, i32 0 }, %struct.cvb_coef { i32 2369315, i32 -100785, i32 1632, i32 0, i32 0, i32 0 }, %struct.cvb_coef { i32 2458841, i32 -102685, i32 1632, i32 0, i32 0, i32 0 }, %struct.cvb_coef { i32 2550821, i32 -104555, i32 1632, i32 0, i32 0, i32 0 }, %struct.cvb_coef { i32 2647676, i32 -106455, i32 1632, i32 0, i32 0, i32 0 }], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm20b_volt_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.nvkm_device_func, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr %7(ptr noundef %0) #4
  %9 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %8, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, 4
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 13
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str, i32 noundef %10) #5
  br label %32

19:                                               ; preds = %4
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 2128) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  store ptr %21, ptr %3, align 4
  %24 = load i32, ptr %9, align 4
  %25 = getelementptr [5 x i32], ptr @speedo_to_vmin, i32 0, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = icmp sgt i32 %24, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = tail call i32 @gk20a_volt_ctor(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @gm20b_na_cvb_coef, i32 noundef 13, i32 noundef %26, ptr noundef nonnull %21) #4
  br label %32

30:                                               ; preds = %23
  %31 = tail call i32 @gk20a_volt_ctor(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @gm20b_cvb_coef, i32 noundef 12, i32 noundef %26, ptr noundef nonnull %21) #4
  br label %32

32:                                               ; preds = %30, %28, %19, %16, %12
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ], [ -22, %16 ], [ -22, %12 ], [ -12, %19 ]
  ret i32 %33
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk20a_volt_ctor(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind allocsize(2) }

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
