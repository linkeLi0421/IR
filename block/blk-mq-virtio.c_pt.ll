; ModuleID = '/llk/IR/block/blk-mq-virtio.c_pt.bc'
source_filename = "../block/blk-mq-virtio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_virtio_map_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_virtio_map_queues\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_virtio_map_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.virtio_device_id = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }

@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_blk_mq_virtio_map_queues = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_virtio_map_queues = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_virtio_map_queues = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_virtio_map_queues to i32), ptr @__kstrtab_blk_mq_virtio_map_queues, ptr @__kstrtabns_blk_mq_virtio_map_queues }, section "___ksymtab_gpl+blk_mq_virtio_map_queues", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_blk_mq_virtio_map_queues], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_mq_virtio_map_queues(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.virtio_config_ops, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %43, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.blk_mq_queue_map, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %45, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.blk_mq_queue_map, ptr %0, i32 0, i32 2
  %15 = tail call ptr %7(ptr noundef %1, i32 noundef %2) #3
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %36, %13
  %18 = phi ptr [ %41, %36 ], [ %15, %13 ]
  %19 = phi i32 [ %33, %36 ], [ 0, %13 ]
  %20 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull %18) #4
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %23, %17
  %24 = phi i32 [ %29, %23 ], [ %20, %17 ]
  %25 = load i32, ptr %14, align 4
  %26 = add i32 %25, %19
  %27 = load ptr, ptr %0, align 4
  %28 = getelementptr i32, ptr %27, i32 %24
  store i32 %26, ptr %28, align 4
  %29 = tail call i32 @cpumask_next(i32 noundef %24, ptr noundef nonnull %18) #4
  %30 = load i32, ptr @nr_cpu_ids, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %23, label %32

32:                                               ; preds = %23, %17
  %33 = add nuw i32 %19, 1
  %34 = load i32, ptr %10, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds %struct.virtio_config_ops, ptr %37, i32 0, i32 13
  %39 = load ptr, ptr %38, align 4
  %40 = add i32 %33, %2
  %41 = tail call ptr %39(ptr noundef %1, i32 noundef %40) #3
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %17

43:                                               ; preds = %36, %13, %3
  %44 = tail call i32 @blk_mq_map_queues(ptr noundef %0) #3
  br label %45

45:                                               ; preds = %43, %32, %9
  %46 = phi i32 [ %44, %43 ], [ 0, %9 ], [ 0, %32 ]
  ret i32 %46
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_map_queues(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly willreturn }

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
