; ModuleID = '/llk/IR/drivers/media/platform/sti/delta/delta-mem.c_pt.bc'
source_filename = "../drivers/media/platform/sti/delta/delta-mem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.delta_ctx = type { i32, %struct.v4l2_fh, ptr, ptr, %struct.delta_ipc_ctx, i32, i32, i32, i32, %struct.delta_streaminfo, %struct.delta_frameinfo, i32, [21 x ptr], i32, i32, i32, i32, i32, i32, %struct.list_head, [100 x i8], %struct.work_struct, %struct.mutex, i8, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.delta_ipc_ctx = type { i32, i32, %struct.completion, %struct.delta_buf, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delta_buf = type { i32, ptr, i32, ptr, i32 }
%struct.delta_streaminfo = type { i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_fract, i32, [32 x i8], [32 x i8], [32 x i8], i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.delta_frameinfo = type { i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_fract, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delta_dev = type { %struct.v4l2_device, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, [10 x ptr], i32, [10 x i32], i32, [10 x i32], i32, i8, ptr, %struct.rpmsg_driver, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rpmsg_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [56 x i8] c"%s hw_alloc:dma_alloc_coherent failed for %s (size=%d)\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hw_alloc(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.delta_dev, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef %1, ptr noundef nonnull %5, i32 noundef 11456, i32 noundef 4) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef %14, ptr noundef %2, i32 noundef %1) #5
  %15 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 18
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4
  br label %24

18:                                               ; preds = %4
  store i32 %1, ptr %3, align 4
  %19 = load i32, ptr %5, align 4
  %20 = getelementptr inbounds %struct.delta_buf, ptr %3, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.delta_buf, ptr %3, i32 0, i32 1
  store ptr %10, ptr %21, align 4
  %22 = getelementptr inbounds %struct.delta_buf, ptr %3, i32 0, i32 3
  store ptr %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.delta_buf, ptr %3, i32 0, i32 4
  store i32 4, ptr %23, align 4
  br label %24

24:                                               ; preds = %18, %12
  %25 = phi i32 [ 0, %18 ], [ -12, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  ret i32 %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hw_free(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.delta_dev, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr inbounds %struct.delta_buf, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.delta_buf, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.delta_buf, ptr %1, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  tail call void @dma_free_attrs(ptr noundef %6, i32 noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %13) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
