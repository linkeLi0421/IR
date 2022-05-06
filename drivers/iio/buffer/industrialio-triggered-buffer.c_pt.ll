; ModuleID = '/llk/IR/drivers/iio/buffer/industrialio-triggered-buffer.c_pt.bc'
source_filename = "../drivers/iio/buffer/industrialio-triggered-buffer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_triggered_buffer_setup_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_triggered_buffer_setup_ext\22\09\09\09\09\09"
module asm "__kstrtabns_iio_triggered_buffer_setup_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_triggered_buffer_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_triggered_buffer_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_iio_triggered_buffer_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_iio_triggered_buffer_setup_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_iio_triggered_buffer_setup_ext\22\09\09\09\09\09"
module asm "__kstrtabns_devm_iio_triggered_buffer_setup_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.iio_buffer = type { i32, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.wait_queue_head, i32, i8, %struct.list_head, %struct.attribute_group, ptr, ptr, %struct.list_head, %struct.list_head, %struct.kref }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [14 x i8] c"%s_consumer%d\00", align 1
@__kstrtab_iio_triggered_buffer_setup_ext = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_triggered_buffer_setup_ext = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_triggered_buffer_setup_ext = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_triggered_buffer_setup_ext to i32), ptr @__kstrtab_iio_triggered_buffer_setup_ext, ptr @__kstrtabns_iio_triggered_buffer_setup_ext }, section "___ksymtab+iio_triggered_buffer_setup_ext", align 4
@__kstrtab_iio_triggered_buffer_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_triggered_buffer_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_triggered_buffer_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_triggered_buffer_cleanup to i32), ptr @__kstrtab_iio_triggered_buffer_cleanup, ptr @__kstrtabns_iio_triggered_buffer_cleanup }, section "___ksymtab+iio_triggered_buffer_cleanup", align 4
@__kstrtab_devm_iio_triggered_buffer_setup_ext = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_iio_triggered_buffer_setup_ext = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_iio_triggered_buffer_setup_ext = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_iio_triggered_buffer_setup_ext to i32), ptr @__kstrtab_devm_iio_triggered_buffer_setup_ext, ptr @__kstrtabns_devm_iio_triggered_buffer_setup_ext }, section "___ksymtab_gpl+devm_iio_triggered_buffer_setup_ext", align 4
@__UNIQUE_ID_author170 = internal constant [74 x i8] c"industrialio_triggered_buffer.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description171 = internal constant [96 x i8] c"industrialio_triggered_buffer.description=IIO helper functions for setting up triggered buffers\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [84 x i8] c"industrialio_triggered_buffer.file=drivers/iio/buffer/industrialio-triggered-buffer\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [42 x i8] c"industrialio_triggered_buffer.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author170, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__ksymtab_devm_iio_triggered_buffer_setup_ext, ptr @__ksymtab_iio_triggered_buffer_cleanup, ptr @__ksymtab_iio_triggered_buffer_setup_ext], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = tail call ptr @iio_kfifo_allocate() #2
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @iio_device_id(ptr noundef %0) #2
  %13 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @iio_alloc_pollfunc(ptr noundef %1, ptr noundef %2, i32 noundef 8192, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %11, i32 noundef %12) #2
  %14 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 11
  store ptr %13, ptr %14, align 8
  %15 = icmp eq ptr %13, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 18
  store ptr %4, ptr %17, align 4
  %18 = load i32, ptr %0, align 8
  %19 = or i32 %18, 2
  store i32 %19, ptr %0, align 8
  %20 = getelementptr inbounds %struct.iio_buffer, ptr %7, i32 0, i32 3
  store i32 %3, ptr %20, align 4
  %21 = getelementptr inbounds %struct.iio_buffer, ptr %7, i32 0, i32 12
  store ptr %5, ptr %21, align 4
  %22 = tail call i32 @iio_device_attach_buffer(ptr noundef %0, ptr noundef nonnull %7) #2
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load ptr, ptr %14, align 8
  tail call void @iio_dealloc_pollfunc(ptr noundef %25) #2
  br label %26

26:                                               ; preds = %24, %9
  %27 = phi i32 [ %22, %24 ], [ -12, %9 ]
  tail call void @iio_kfifo_free(ptr noundef nonnull %7) #2
  br label %28

28:                                               ; preds = %26, %16, %6
  %29 = phi i32 [ 0, %16 ], [ %27, %26 ], [ -12, %6 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_kfifo_allocate() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_alloc_pollfunc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_attach_buffer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_dealloc_pollfunc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_kfifo_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iio_triggered_buffer_cleanup(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  tail call void @iio_dealloc_pollfunc(ptr noundef %3) #2
  %4 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  tail call void @iio_kfifo_free(ptr noundef %5) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_iio_triggered_buffer_clean, ptr noundef %1) #2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 11
  %15 = load ptr, ptr %14, align 8
  tail call void @iio_dealloc_pollfunc(ptr noundef %15) #2
  %16 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  tail call void @iio_kfifo_free(ptr noundef %17) #2
  br label %18

18:                                               ; preds = %13, %10, %7
  %19 = phi i32 [ %8, %7 ], [ 0, %10 ], [ %11, %13 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_iio_triggered_buffer_clean(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  tail call void @iio_dealloc_pollfunc(ptr noundef %3) #2
  %4 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  tail call void @iio_kfifo_free(ptr noundef %5) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
