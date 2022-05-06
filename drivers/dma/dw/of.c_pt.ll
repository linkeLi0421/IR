; ModuleID = '/llk/IR/drivers/dma/dw/of.c_pt.bc'
source_filename = "../drivers/dma/dw/of.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dw_dma_platform_data = type { i32, i32, i32, i32, i32, [4 x i32], [8 x i32], [8 x i32], i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dw_dma_slave = type { ptr, i8, i8, i8, i8, i8, i8 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.dw_dma = type { %struct.dma_device, [20 x i8], ptr, ptr, %struct.tasklet_struct, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }

@.str = private unnamed_addr constant [12 x i8] c"dma-masters\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"dma-channels\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"chan_allocation_order\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"chan_priority\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"block_size\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"data_width\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"data-width\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"multi-block\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"snps,max-burst-len\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"snps,dma-protection-control\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"could not register of_dma_controller\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"drivers/dma/dw/of.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dw_dma_parse_dt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x i32], align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %8 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #5
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %69

10:                                               ; preds = %1
  %11 = load i32, ptr %3, align 4
  %12 = add i32 %11, -5
  %13 = icmp ult i32 %12, -4
  br i1 %13, label %69, label %14

14:                                               ; preds = %10
  %15 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #5
  %16 = icmp slt i32 %15, 0
  %17 = load i32, ptr %4, align 4
  %18 = icmp ugt i32 %17, 8
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %69, label %20

20:                                               ; preds = %14
  %21 = call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 108, i32 noundef 3520) #5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %69, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %3, align 4
  store i32 %24, ptr %21, align 4
  %25 = load i32, ptr %4, align 4
  %26 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %21, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %21, i32 0, i32 2
  %28 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.2, ptr noundef %27, i32 noundef 1, i32 noundef 0) #5
  %29 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %21, i32 0, i32 3
  %30 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef %29, i32 noundef 1, i32 noundef 0) #5
  %31 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %21, i32 0, i32 4
  %32 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef %31, i32 noundef 1, i32 noundef 0) #5
  %33 = load i32, ptr %3, align 4
  %34 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.5, ptr noundef nonnull %2, i32 noundef %33, i32 noundef 0) #5
  %35 = icmp sgt i32 %34, -1
  %36 = load i32, ptr %3, align 4
  br i1 %35, label %37, label %48

37:                                               ; preds = %23
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %39, %37
  %40 = phi i32 [ %46, %39 ], [ 0, %37 ]
  %41 = getelementptr [4 x i32], ptr %2, i32 0, i32 %40
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 7
  %44 = shl nuw nsw i32 1, %43
  %45 = getelementptr %struct.dw_dma_platform_data, ptr %21, i32 0, i32 5, i32 %40
  store i32 %44, ptr %45, align 4
  %46 = add nuw i32 %40, 1
  %47 = icmp eq i32 %46, %36
  br i1 %47, label %48, label %39

48:                                               ; preds = %39, %37, %23
  %49 = phi i32 [ 0, %37 ], [ %36, %23 ], [ %36, %39 ]
  %50 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %21, i32 0, i32 5
  %51 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef %50, i32 noundef %49, i32 noundef 0) #5
  %52 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %21, i32 0, i32 6
  %53 = load i32, ptr %4, align 4
  %54 = shl i32 %53, 2
  %55 = call ptr @__memset32(ptr noundef %52, i32 noundef 1, i32 noundef %54) #5
  %56 = load i32, ptr %4, align 4
  %57 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.7, ptr noundef %52, i32 noundef %56, i32 noundef 0) #5
  %58 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %21, i32 0, i32 7
  %59 = load i32, ptr %4, align 4
  %60 = shl i32 %59, 2
  %61 = call ptr @__memset32(ptr noundef %58, i32 noundef 256, i32 noundef %60) #5
  %62 = load i32, ptr %4, align 4
  %63 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef %58, i32 noundef %62, i32 noundef 0) #5
  %64 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %21, i32 0, i32 8
  %65 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.9, ptr noundef %64, i32 noundef 1, i32 noundef 0) #5
  %66 = load i32, ptr %64, align 4
  %67 = icmp ugt i32 %66, 7
  %68 = select i1 %67, ptr null, ptr %21
  br label %69

69:                                               ; preds = %48, %20, %14, %10, %1
  %70 = phi ptr [ null, %1 ], [ null, %10 ], [ null, %14 ], [ null, %20 ], [ %68, %48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5
  ret ptr %70
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw_dma_of_controller_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @of_dma_controller_register(ptr noundef nonnull %5, ptr noundef nonnull @dw_dma_of_xlate, ptr noundef %0) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #6
  br label %11

11:                                               ; preds = %10, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @dw_dma_of_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.dw_dma_slave, align 4
  %4 = alloca %struct.dma_cap_mask_t, align 4
  %5 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #5
  %7 = getelementptr inbounds i8, ptr %3, i32 8
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.dw_dma_slave, ptr %3, i32 0, i32 5
  %11 = getelementptr inbounds %struct.dw_dma_slave, ptr %3, i32 0, i32 5
  store i16 0, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  %12 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -5
  %15 = icmp ult i32 %14, -2
  br i1 %15, label %56, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.dw_dma_slave, ptr %3, i32 0, i32 1
  %18 = getelementptr inbounds %struct.dw_dma_slave, ptr %3, i32 0, i32 4
  %19 = getelementptr inbounds %struct.dw_dma_slave, ptr %3, i32 0, i32 3
  %20 = getelementptr inbounds %struct.dw_dma_slave, ptr %3, i32 0, i32 2
  %21 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = trunc i32 %22 to i8
  store i8 %23, ptr %17, align 4
  store i8 %23, ptr %20, align 1
  %24 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = trunc i32 %25 to i8
  store i8 %26, ptr %19, align 2
  %27 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = trunc i32 %28 to i8
  store i8 %29, ptr %18, align 1
  %30 = icmp ugt i32 %13, 3
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = trunc i32 %33 to i8
  store i8 %34, ptr %10, align 4
  %35 = and i32 %33, 255
  br label %36

36:                                               ; preds = %31, %16
  %37 = phi i32 [ %35, %31 ], [ 0, %16 ]
  %38 = icmp ugt i8 %23, 15
  br i1 %38, label %53, label %39

39:                                               ; preds = %36
  %40 = and i32 %25, 255
  %41 = getelementptr inbounds %struct.dw_dma, ptr %6, i32 0, i32 18
  %42 = load ptr, ptr %41, align 4
  %43 = load i32, ptr %42, align 4
  %44 = icmp ugt i32 %43, %40
  %45 = and i32 %28, 255
  %46 = icmp ugt i32 %43, %45
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %42, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = lshr i32 %37, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53, !prof !9

53:                                               ; preds = %48, %39, %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 39, i32 noundef 9, ptr noundef null) #5
  br label %56

54:                                               ; preds = %48
  store i32 0, ptr %4, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %4) #5
  %55 = call ptr @__dma_request_channel(ptr noundef nonnull %4, ptr noundef nonnull @dw_dma_filter, ptr noundef nonnull %3, ptr noundef null) #5
  br label %56

56:                                               ; preds = %54, %53, %2
  %57 = phi ptr [ null, %53 ], [ %55, %54 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #5
  ret ptr %57
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw_dma_of_controller_free(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @of_dma_controller_free(ptr noundef nonnull %5) #5
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dw_dma_filter(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
