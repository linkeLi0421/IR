; ModuleID = '/llk/IR/drivers/firmware/qcom_scm-smc.c_pt.bc'
source_filename = "../drivers/firmware/qcom_scm-smc.c"
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
%struct.arm_smccc_quirk = type { i32, %union.anon.65 }
%union.anon.65 = type { i32 }
%struct.arm_smccc_res = type { i32, i32, i32, i32 }
%struct.qcom_scm_desc = type { i32, i32, i32, [10 x i64], i32 }
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

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@qcom_scm_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @qcom_scm_lock, i64 12), ptr getelementptr (i8, ptr @qcom_scm_lock, i64 12) } }, align 4
@switch.table.__scm_smc_call = private unnamed_addr constant [13 x i32] [i32 -16, i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -12, i32 -95, i32 -22, i32 -22, i32 -5, i32 0], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__scm_smc_call(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef writeonly %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.arm_smccc_quirk, align 8
  %7 = alloca %struct.arm_smccc_quirk, align 8
  %8 = alloca %struct.arm_smccc_res, align 4
  %9 = getelementptr inbounds %struct.qcom_scm_desc, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 15
  %12 = icmp eq i32 %2, 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i32 16, i1 false), !annotation !8
  %13 = select i1 %4, i32 -2147483648, i32 0
  %14 = select i1 %12, i32 0, i32 1073741824
  %15 = getelementptr inbounds %struct.qcom_scm_desc, ptr %1, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = shl i32 %16, 24
  %18 = and i32 %17, 1056964608
  %19 = load i32, ptr %1, align 8
  %20 = shl i32 %19, 8
  %21 = and i32 %20, 65280
  %22 = getelementptr inbounds %struct.qcom_scm_desc, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 255
  %25 = or i32 %13, %14
  %26 = or i32 %25, %18
  %27 = or i32 %26, %24
  %28 = or i32 %27, %21
  %29 = getelementptr %struct.qcom_scm_desc, ptr %1, i32 0, i32 3, i32 0
  %30 = load i64, ptr %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = getelementptr %struct.qcom_scm_desc, ptr %1, i32 0, i32 3, i32 1
  %33 = load i64, ptr %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = getelementptr %struct.qcom_scm_desc, ptr %1, i32 0, i32 3, i32 2
  %36 = load i64, ptr %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = getelementptr %struct.qcom_scm_desc, ptr %1, i32 0, i32 3, i32 3
  %39 = load i64, ptr %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = icmp ugt i32 %11, 4
  br i1 %41, label %42, label %79, !prof !9

42:                                               ; preds = %5
  %43 = select i1 %4, i32 2592, i32 3264
  %44 = tail call fastcc noalias ptr @kzalloc(i32 noundef %43)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %136, label %46

46:                                               ; preds = %42
  br i1 %12, label %48, label %47

47:                                               ; preds = %46
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %44, ptr noundef align 8 dereferenceable(56) %38, i32 56, i1 false)
  br label %75

48:                                               ; preds = %46
  %49 = load i64, ptr %38, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, ptr %44, align 4
  %51 = getelementptr %struct.qcom_scm_desc, ptr %1, i32 0, i32 3, i32 4
  %52 = load i64, ptr %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = getelementptr i32, ptr %44, i32 1
  store i32 %53, ptr %54, align 4
  %55 = getelementptr %struct.qcom_scm_desc, ptr %1, i32 0, i32 3, i32 5
  %56 = load i64, ptr %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = getelementptr i32, ptr %44, i32 2
  store i32 %57, ptr %58, align 4
  %59 = getelementptr %struct.qcom_scm_desc, ptr %1, i32 0, i32 3, i32 6
  %60 = load i64, ptr %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = getelementptr i32, ptr %44, i32 3
  store i32 %61, ptr %62, align 4
  %63 = getelementptr %struct.qcom_scm_desc, ptr %1, i32 0, i32 3, i32 7
  %64 = load i64, ptr %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = getelementptr i32, ptr %44, i32 4
  store i32 %65, ptr %66, align 4
  %67 = getelementptr %struct.qcom_scm_desc, ptr %1, i32 0, i32 3, i32 8
  %68 = load i64, ptr %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = getelementptr i32, ptr %44, i32 5
  store i32 %69, ptr %70, align 4
  %71 = getelementptr %struct.qcom_scm_desc, ptr %1, i32 0, i32 3, i32 9
  %72 = load i64, ptr %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = getelementptr i32, ptr %44, i32 6
  store i32 %73, ptr %74, align 4
  br label %75

75:                                               ; preds = %48, %47
  %76 = tail call fastcc i32 @dma_map_single_attrs(ptr noundef %0, ptr noundef nonnull %44)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  tail call void @kfree(ptr noundef nonnull %44) #7
  br label %136

79:                                               ; preds = %75, %5
  %80 = phi i32 [ %40, %5 ], [ %76, %75 ]
  %81 = phi i32 [ 0, %5 ], [ %76, %75 ]
  %82 = phi ptr [ null, %5 ], [ %44, %75 ]
  %83 = phi i32 [ 0, %5 ], [ 56, %75 ]
  br i1 %4, label %86, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.arm_smccc_quirk, ptr %7, i32 0, i32 1
  br label %95

86:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  store i64 1, ptr %6, align 8
  %87 = getelementptr inbounds %struct.arm_smccc_quirk, ptr %6, i32 0, i32 1
  call void @__arm_smccc_smc(i32 noundef %28, i32 noundef %10, i32 noundef %31, i32 noundef %34, i32 noundef %37, i32 noundef %80, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %8, ptr noundef nonnull %6) #7
  %88 = load i32, ptr %8, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %94

90:                                               ; preds = %90, %86
  %91 = load i32, ptr %87, align 4
  call void @__arm_smccc_smc(i32 noundef 1, i32 noundef %10, i32 noundef %31, i32 noundef %34, i32 noundef %37, i32 noundef %80, i32 noundef %91, i32 noundef 0, ptr noundef nonnull %8, ptr noundef nonnull %6) #7
  %92 = load i32, ptr %8, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %90, label %94, !llvm.loop !10

94:                                               ; preds = %90, %86
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %112

95:                                               ; preds = %108, %84
  %96 = phi i32 [ %109, %108 ], [ 0, %84 ]
  call void @mutex_lock(ptr noundef nonnull @qcom_scm_lock) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  store i64 1, ptr %7, align 8
  call void @__arm_smccc_smc(i32 noundef %28, i32 noundef %10, i32 noundef %31, i32 noundef %34, i32 noundef %37, i32 noundef %80, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %8, ptr noundef nonnull %7) #7
  %97 = load i32, ptr %8, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %103

99:                                               ; preds = %99, %95
  %100 = load i32, ptr %85, align 4
  call void @__arm_smccc_smc(i32 noundef 1, i32 noundef %10, i32 noundef %31, i32 noundef %34, i32 noundef %37, i32 noundef %80, i32 noundef %100, i32 noundef 0, ptr noundef nonnull %8, ptr noundef nonnull %7) #7
  %101 = load i32, ptr %8, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %99, label %103, !llvm.loop !10

103:                                              ; preds = %99, %95
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  call void @mutex_unlock(ptr noundef nonnull @qcom_scm_lock) #7
  %104 = load i32, ptr %8, align 4
  %105 = icmp ne i32 %104, -12
  %106 = icmp ugt i32 %96, 20
  %107 = select i1 %105, i1 true, i1 %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  %109 = add nuw nsw i32 %96, 1
  call void @msleep(i32 noundef 30) #7
  %110 = load i32, ptr %8, align 4
  %111 = icmp eq i32 %110, -12
  br i1 %111, label %95, label %112

112:                                              ; preds = %108, %103, %94
  %113 = icmp eq ptr %82, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %112
  call void @dma_unmap_page_attrs(ptr noundef %0, i32 noundef %81, i32 noundef %83, i32 noundef 1, i32 noundef 0) #7
  call void @kfree(ptr noundef nonnull %82) #7
  br label %115

115:                                              ; preds = %114, %112
  %116 = icmp eq ptr %3, null
  br i1 %116, label %129, label %117

117:                                              ; preds = %115
  %118 = getelementptr inbounds %struct.arm_smccc_res, ptr %8, i32 0, i32 1
  %119 = load i32, ptr %118, align 4
  %120 = zext i32 %119 to i64
  store i64 %120, ptr %3, align 8
  %121 = getelementptr inbounds %struct.arm_smccc_res, ptr %8, i32 0, i32 2
  %122 = load i32, ptr %121, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr [3 x i64], ptr %3, i32 0, i32 1
  store i64 %123, ptr %124, align 8
  %125 = getelementptr inbounds %struct.arm_smccc_res, ptr %8, i32 0, i32 3
  %126 = load i32, ptr %125, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr [3 x i64], ptr %3, i32 0, i32 2
  store i64 %127, ptr %128, align 8
  br label %129

129:                                              ; preds = %117, %115
  %130 = load i32, ptr %8, align 4
  %131 = add i32 %130, 12
  %132 = icmp ult i32 %131, 13
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = getelementptr inbounds [13 x i32], ptr @switch.table.__scm_smc_call, i32 0, i32 %131
  %135 = load i32, ptr %134, align 4
  br label %136

136:                                              ; preds = %133, %129, %78, %42
  %137 = phi i32 [ -12, %78 ], [ -12, %42 ], [ %135, %133 ], [ -22, %129 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  ret i32 %137
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc noalias ptr @kzalloc(i32 noundef %0) unnamed_addr #3 {
  %2 = and i32 %0, 17
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4, !prof !12

4:                                                ; preds = %1
  %5 = and i32 %0, 1
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 1, i32 2
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %4 ]
  %10 = or i32 %0, 256
  %11 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %9, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef %10, i32 noundef 4096) #8
  ret ptr %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dma_map_single_attrs(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %1) #7
  %4 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %16, !prof !9

7:                                                ; preds = %2
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %8 = tail call ptr @dev_driver_string(ptr noundef %0) #7
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load ptr, ptr %0, align 4
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi ptr [ %13, %12 ], [ %10, %7 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %8, ptr noundef %15) #7
  br label %16

16:                                               ; preds = %14, %2
  br i1 %3, label %25, label %17

17:                                               ; preds = %16
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %1 to i32
  %20 = add i32 %19, 1073741824
  %21 = lshr i32 %20, 12
  %22 = getelementptr %struct.page, ptr %18, i32 %21
  %23 = and i32 %19, 4095
  %24 = tail call i32 @dma_map_page_attrs(ptr noundef %0, ptr noundef %22, i32 noundef %23, i32 noundef 56, i32 noundef 1, i32 noundef 0) #7
  br label %25

25:                                               ; preds = %17, %16
  %26 = phi i32 [ %24, %17 ], [ -1, %16 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.peeled.count", i32 1}
!12 = !{!"branch_weights", i32 2000, i32 1}
