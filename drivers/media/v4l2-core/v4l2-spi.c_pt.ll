; ModuleID = '/llk/IR/drivers/media/v4l2-core/v4l2-spi.c_pt.bc'
source_filename = "../drivers/media/v4l2-core/v4l2-spi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_spi_subdev_init:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_spi_subdev_init\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_spi_subdev_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_spi_new_subdev:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_spi_new_subdev\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_spi_new_subdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@__kstrtab_v4l2_spi_subdev_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_spi_subdev_init = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_spi_subdev_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_spi_subdev_init to i32), ptr @__kstrtab_v4l2_spi_subdev_init, ptr @__kstrtabns_v4l2_spi_subdev_init }, section "___ksymtab_gpl+v4l2_spi_subdev_init", align 4
@__kstrtab_v4l2_spi_new_subdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_spi_new_subdev = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_spi_new_subdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_spi_new_subdev to i32), ptr @__kstrtab_v4l2_spi_new_subdev, ptr @__kstrtabns_v4l2_spi_new_subdev }, section "___ksymtab_gpl+v4l2_spi_new_subdev", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_v4l2_spi_new_subdev, ptr @__ksymtab_v4l2_spi_subdev_init], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l2_spi_subdev_unregister(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 26
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @spi_unregister_device(ptr noundef nonnull %3) #3
  br label %14

14:                                               ; preds = %13, %9, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l2_spi_subdev_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @v4l2_subdev_init(ptr noundef %0, ptr noundef %2) #3
  %4 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = or i32 %5, 2
  store i32 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.device_driver, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 2
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 14
  store ptr %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  store ptr %0, ptr %14, align 8
  %15 = load ptr, ptr %7, align 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load ptr, ptr %1, align 4
  br label %22

22:                                               ; preds = %20, %3
  %23 = phi ptr [ %21, %20 ], [ %18, %3 ]
  %24 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %25 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %24, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef %16, ptr noundef %23)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @v4l2_spi_new_subdev(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %2, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef %2) #3
  br label %10

10:                                               ; preds = %8, %5
  %11 = tail call ptr @spi_new_device(ptr noundef %1, ptr noundef %2) #3
  %12 = icmp eq ptr %11, null
  br i1 %12, label %31, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.device_driver, ptr %15, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = tail call zeroext i1 @try_module_get(ptr noundef %19) #3
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %23 = load ptr, ptr %22, align 8
  %24 = tail call i32 @v4l2_device_register_subdev(ptr noundef nonnull %0, ptr noundef %23) #3
  %25 = icmp ne i32 %24, 0
  %26 = load ptr, ptr %14, align 8
  %27 = getelementptr inbounds %struct.device_driver, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  tail call void @module_put(ptr noundef %28) #3
  %29 = icmp eq ptr %23, null
  %30 = or i1 %29, %25
  br i1 %30, label %31, label %32

31:                                               ; preds = %21, %17, %13, %10
  tail call void @spi_unregister_device(ptr noundef %11) #3
  br label %32

32:                                               ; preds = %31, %21, %3
  %33 = phi ptr [ null, %3 ], [ null, %31 ], [ %23, %21 ]
  ret ptr %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_new_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
