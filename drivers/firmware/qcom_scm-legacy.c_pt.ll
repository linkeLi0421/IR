; ModuleID = '/llk/IR/drivers/firmware/qcom_scm-legacy.c_pt.bc'
source_filename = "../drivers/firmware/qcom_scm-legacy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.arm_smccc_res = type { i32, i32, i32, i32 }
%struct.qcom_scm_desc = type { i32, i32, i32, [10 x i64], i32 }
%struct.scm_legacy_command = type { i32, i32, i32, i32, [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.page = type { i32, %union.anon.1, %union.anon.58, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }
%struct.scm_legacy_response = type { i32, i32, i32 }

@qcom_scm_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @qcom_scm_lock, i64 12), ptr getelementptr (i8, ptr @qcom_scm_lock, i64 12) } }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scm_legacy_call(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.arm_smccc_res, align 4
  %6 = getelementptr inbounds %struct.qcom_scm_desc, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !8
  %9 = shl nuw nsw i32 %8, 2
  %10 = add nuw nsw i32 %9, 40
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 4096) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %100, label %14

14:                                               ; preds = %3
  %15 = add nuw nsw i32 %9, 16
  store i32 %10, ptr %12, align 8
  %16 = getelementptr inbounds %struct.scm_legacy_command, ptr %12, i32 0, i32 1
  store i32 16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.scm_legacy_command, ptr %12, i32 0, i32 2
  store i32 %15, ptr %17, align 8
  %18 = load i32, ptr %1, align 8
  %19 = shl i32 %18, 10
  %20 = getelementptr inbounds %struct.qcom_scm_desc, ptr %1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1023
  %23 = or i32 %22, %19
  %24 = getelementptr inbounds %struct.scm_legacy_command, ptr %12, i32 0, i32 3
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.scm_legacy_command, ptr %12, i32 0, i32 4
  %26 = icmp eq i32 %8, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %27, %14
  %28 = phi i32 [ %33, %27 ], [ 0, %14 ]
  %29 = getelementptr %struct.qcom_scm_desc, ptr %1, i32 0, i32 3, i32 %28
  %30 = load i64, ptr %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = getelementptr i32, ptr %25, i32 %28
  store i32 %31, ptr %32, align 4
  %33 = add nuw nsw i32 %28, 1
  %34 = icmp eq i32 %33, %8
  br i1 %34, label %35, label %27

35:                                               ; preds = %27
  %36 = load i32, ptr %17, align 8
  br label %37

37:                                               ; preds = %35, %14
  %38 = phi i32 [ %36, %35 ], [ %15, %14 ]
  %39 = getelementptr i8, ptr %12, i32 %38
  %40 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %12) #5
  %41 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %42 = xor i1 %41, true
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %53, !prof !9

44:                                               ; preds = %37
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %45 = tail call ptr @dev_driver_string(ptr noundef %0) #5
  %46 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load ptr, ptr %0, align 4
  br label %51

51:                                               ; preds = %49, %44
  %52 = phi ptr [ %50, %49 ], [ %47, %44 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %45, ptr noundef %52) #5
  br label %53

53:                                               ; preds = %51, %37
  br i1 %40, label %63, label %54

54:                                               ; preds = %53
  %55 = load ptr, ptr @mem_map, align 4
  %56 = ptrtoint ptr %12 to i32
  %57 = add i32 %56, 1073741824
  %58 = lshr i32 %57, 12
  %59 = getelementptr %struct.page, ptr %55, i32 %58
  %60 = and i32 %56, 4088
  %61 = tail call i32 @dma_map_page_attrs(ptr noundef %0, ptr noundef %59, i32 noundef %60, i32 noundef %10, i32 noundef 1, i32 noundef 0) #5
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %54, %53
  tail call void @kfree(ptr noundef nonnull %12) #5
  br label %100

64:                                               ; preds = %54
  %65 = ptrtoint ptr %4 to i32
  call void @mutex_lock(ptr noundef nonnull @qcom_scm_lock) #5
  br label %66

66:                                               ; preds = %66, %64
  call void @__arm_smccc_smc(i32 noundef 1, i32 noundef %65, i32 noundef %61, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5, ptr noundef null) #5
  %67 = load i32, ptr %5, align 4
  switch i32 %67, label %68 [
    i32 1, label %66
    i32 0, label %74
    i32 -1, label %72
    i32 -12, label %71
    i32 -5, label %70
    i32 -4, label %69
  ]

68:                                               ; preds = %66
  br label %72

69:                                               ; preds = %66
  br label %72

70:                                               ; preds = %66
  br label %72

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %70, %69, %68, %66
  %73 = phi i32 [ -22, %68 ], [ -95, %69 ], [ -12, %70 ], [ -16, %71 ], [ -5, %66 ]
  call void @mutex_unlock(ptr noundef nonnull @qcom_scm_lock) #5
  br label %98

74:                                               ; preds = %66
  call void @mutex_unlock(ptr noundef nonnull @qcom_scm_lock) #5
  %75 = add i32 %15, %61
  %76 = getelementptr inbounds %struct.scm_legacy_response, ptr %39, i32 0, i32 2
  br label %77

77:                                               ; preds = %77, %74
  call void @dma_sync_single_for_cpu(ptr noundef %0, i32 noundef %75, i32 noundef 12, i32 noundef 2) #5
  %78 = load i32, ptr %76, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %77, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.scm_legacy_response, ptr %39, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, %75
  call void @dma_sync_single_for_cpu(ptr noundef %0, i32 noundef %83, i32 noundef 12, i32 noundef 2) #5
  %84 = icmp eq ptr %2, null
  br i1 %84, label %98, label %85

85:                                               ; preds = %80
  %86 = load i32, ptr %81, align 4
  %87 = getelementptr i8, ptr %39, i32 %86
  %88 = load i32, ptr %87, align 4
  %89 = zext i32 %88 to i64
  store i64 %89, ptr %2, align 8
  %90 = getelementptr i32, ptr %87, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr [3 x i64], ptr %2, i32 0, i32 1
  store i64 %92, ptr %93, align 8
  %94 = getelementptr i32, ptr %87, i32 2
  %95 = load i32, ptr %94, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr [3 x i64], ptr %2, i32 0, i32 2
  store i64 %96, ptr %97, align 8
  br label %98

98:                                               ; preds = %85, %80, %72
  %99 = phi i32 [ 0, %80 ], [ %73, %72 ], [ 0, %85 ]
  call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %61, i32 noundef %10, i32 noundef 1, i32 noundef 0) #5
  call void @kfree(ptr noundef nonnull %12) #5
  br label %100

100:                                              ; preds = %98, %63, %3
  %101 = phi i32 [ -12, %63 ], [ %99, %98 ], [ -12, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret i32 %101
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scm_legacy_call_atomic(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.arm_smccc_res, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.qcom_scm_desc, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 15
  %9 = icmp ugt i32 %8, 5
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/firmware/qcom_scm-legacy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 228, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

11:                                               ; preds = %3
  %12 = load i32, ptr %1, align 8
  %13 = getelementptr inbounds %struct.qcom_scm_desc, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %12, 22
  %16 = shl i32 %14, 12
  %17 = and i32 %16, 4190208
  %18 = or i32 %17, %15
  %19 = or i32 %18, %8
  %20 = or i32 %19, 544
  %21 = ptrtoint ptr %4 to i32
  %22 = getelementptr inbounds %struct.qcom_scm_desc, ptr %1, i32 0, i32 3
  %23 = load i64, ptr %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = getelementptr %struct.qcom_scm_desc, ptr %1, i32 0, i32 3, i32 1
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = getelementptr %struct.qcom_scm_desc, ptr %1, i32 0, i32 3, i32 2
  %29 = load i64, ptr %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = getelementptr %struct.qcom_scm_desc, ptr %1, i32 0, i32 3, i32 3
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = getelementptr %struct.qcom_scm_desc, ptr %1, i32 0, i32 3, i32 4
  %35 = load i64, ptr %34, align 8
  %36 = trunc i64 %35 to i32
  call void @__arm_smccc_smc(i32 noundef %20, i32 noundef %21, i32 noundef %24, i32 noundef %27, i32 noundef %30, i32 noundef %33, i32 noundef %36, i32 noundef 0, ptr noundef nonnull %5, ptr noundef null) #5
  %37 = icmp eq ptr %2, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %11
  %39 = getelementptr inbounds %struct.arm_smccc_res, ptr %5, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = zext i32 %40 to i64
  store i64 %41, ptr %2, align 8
  %42 = getelementptr inbounds %struct.arm_smccc_res, ptr %5, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr [3 x i64], ptr %2, i32 0, i32 1
  store i64 %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.arm_smccc_res, ptr %5, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr [3 x i64], ptr %2, i32 0, i32 2
  store i64 %48, ptr %49, align 8
  br label %50

50:                                               ; preds = %38, %11
  %51 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2152612789, i64 2152613288, i64 2152612826, i64 2152612882, i64 2152612916, i64 2152612940, i64 2152612981, i64 2152613002, i64 2152613030, i64 2152613064}
