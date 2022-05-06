; ModuleID = '/llk/IR/drivers/soc/sunxi/sunxi_mbus.c_pt.bc'
source_filename = "../drivers/soc/sunxi/sunxi_mbus.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }

@__initcall__kmod_sunxi_mbus__221_127_sunxi_mbus_init3 = internal global ptr @sunxi_mbus_init, section ".initcall3.init", align 4
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@sunxi_mbus_platforms = internal constant [17 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr null], section ".init.rodata", align 4
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@sunxi_mbus_nb = internal global %struct.notifier_block { ptr @sunxi_mbus_notifier, ptr null, i32 0 }, align 4
@.str = private unnamed_addr constant [20 x i8] c"allwinner,sun4i-a10\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"allwinner,sun5i-a10s\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"allwinner,sun5i-a13\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"allwinner,sun6i-a31\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"allwinner,sun7i-a20\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"allwinner,sun8i-a23\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"allwinner,sun8i-a33\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"allwinner,sun8i-a83t\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"allwinner,sun8i-h3\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"allwinner,sun8i-r40\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"allwinner,sun8i-v3\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"allwinner,sun8i-v3s\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"allwinner,sun9i-a80\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"allwinner,sun50i-a64\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"allwinner,sun50i-h5\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"nextthing,gr8\00", align 1
@sunxi_mbus_devices = internal constant [35 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr null], align 4
@.str.16 = private unnamed_addr constant [14 x i8] c"interconnects\00", align 1
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [35 x i8] c"Couldn't setup our DMA offset: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"allwinner,sun4i-a10-display-engine\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"allwinner,sun5i-a10s-display-engine\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"allwinner,sun5i-a13-display-engine\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"allwinner,sun6i-a31-display-engine\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"allwinner,sun6i-a31s-display-engine\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"allwinner,sun7i-a20-display-engine\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"allwinner,sun8i-a23-display-engine\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"allwinner,sun8i-a33-display-engine\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"allwinner,sun9i-a80-display-engine\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"allwinner,sun4i-a10-csi1\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"allwinner,sun4i-a10-display-backend\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"allwinner,sun4i-a10-display-frontend\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"allwinner,sun4i-a10-video-engine\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"allwinner,sun5i-a13-display-backend\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"allwinner,sun5i-a13-video-engine\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"allwinner,sun6i-a31-csi\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"allwinner,sun6i-a31-display-backend\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"allwinner,sun7i-a20-csi0\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"allwinner,sun7i-a20-display-backend\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"allwinner,sun7i-a20-display-frontend\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"allwinner,sun7i-a20-video-engine\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"allwinner,sun8i-a23-display-backend\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"allwinner,sun8i-a23-display-frontend\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"allwinner,sun8i-a33-display-backend\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"allwinner,sun8i-a33-display-frontend\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"allwinner,sun8i-a33-video-engine\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"allwinner,sun8i-a83t-csi\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"allwinner,sun8i-h3-csi\00", align 1
@.str.46 = private unnamed_addr constant [32 x i8] c"allwinner,sun8i-h3-video-engine\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"allwinner,sun8i-v3s-csi\00", align 1
@.str.48 = private unnamed_addr constant [36 x i8] c"allwinner,sun9i-a80-display-backend\00", align 1
@.str.49 = private unnamed_addr constant [25 x i8] c"allwinner,sun50i-a64-csi\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"allwinner,sun50i-a64-video-engine\00", align 1
@.str.51 = private unnamed_addr constant [33 x i8] c"allwinner,sun50i-h5-video-engine\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_sunxi_mbus__221_127_sunxi_mbus_init3], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sunxi_mbus_init() #0 section ".init.text" {
  %1 = load ptr, ptr @of_root, align 4
  %2 = tail call i32 @of_device_compatible_match(ptr noundef %1, ptr noundef nonnull @sunxi_mbus_platforms) #4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @bus_register_notifier(ptr noundef nonnull @platform_bus_type, ptr noundef nonnull @sunxi_mbus_nb) #4
  br label %6

6:                                                ; preds = %4, %0
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_compatible_match(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_mbus_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %20

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @of_device_compatible_match(ptr noundef %7, ptr noundef nonnull @sunxi_mbus_devices) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %6, align 8
  %12 = tail call ptr @of_find_property(ptr noundef %11, ptr noundef nonnull @.str.16, ptr noundef null) #4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %16 = shl i32 %15, 12
  %17 = tail call i32 @dma_direct_set_offset(ptr noundef %2, i32 noundef %16, i32 noundef 0, i64 noundef 4294967296) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef %17) #5
  br label %20

20:                                               ; preds = %19, %14, %10, %5, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_direct_set_offset(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
