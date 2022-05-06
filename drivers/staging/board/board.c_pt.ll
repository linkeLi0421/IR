; ModuleID = '/llk/IR/drivers/staging/board/board.c_pt.bc'
source_filename = "../drivers/staging/board/board.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.board_staging_clk = type { ptr, ptr, ptr }
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
%struct.board_staging_dev = type { ptr, ptr, i32, ptr }

@irqc_node = internal unnamed_addr global ptr null, section ".init.data", align 4
@.str = private unnamed_addr constant [30 x i8] c"drivers/staging/board/board.c\00", align 1
@irqc_base = internal unnamed_addr global i32 0, section ".init.data", align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"\013board_staging: Failed to alias clock %s (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"\014board_staging: Skipping %s, already in DT\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"\013board_staging: Failed to register device %s (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"\013board_staging: Cannot find domain node %s\0A\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local zeroext i1 @board_staging_dt_node_available(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = alloca %struct.resource, align 4
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %33, label %5

5:                                                ; preds = %29, %2
  %6 = phi i1 [ %31, %29 ], [ true, %2 ]
  %7 = phi i32 [ %30, %29 ], [ 0, %2 ]
  %8 = getelementptr %struct.resource, ptr %0, i32 %7, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 7936
  %11 = icmp eq i32 %10, 512
  br i1 %11, label %12, label %29

12:                                               ; preds = %5
  %13 = getelementptr %struct.resource, ptr %0, i32 %7
  %14 = load i32, ptr %13, align 4
  %15 = call ptr @of_find_all_nodes(ptr noundef null) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false) #5, !annotation !8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %24, %12
  %18 = phi ptr [ %25, %24 ], [ %15, %12 ]
  %19 = call i32 @of_address_to_resource(ptr noundef nonnull %18, i32 noundef 0, ptr noundef nonnull %3) #5
  %20 = icmp eq i32 %19, 0
  %21 = load i32, ptr %3, align 4
  %22 = icmp eq i32 %21, %14
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = call ptr @of_find_all_nodes(ptr noundef nonnull %18) #5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %17

27:                                               ; preds = %24, %12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #5
  br label %29

28:                                               ; preds = %17
  call void @of_node_put(ptr noundef nonnull %18) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #5
  br label %33

29:                                               ; preds = %27, %5
  %30 = add nuw i32 %7, 1
  %31 = icmp ult i32 %30, %1
  %32 = icmp eq i32 %30, %1
  br i1 %32, label %33, label %5

33:                                               ; preds = %29, %28, %2
  %34 = phi i1 [ %6, %28 ], [ false, %2 ], [ %31, %29 ]
  ret i1 %34
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @board_staging_gic_setup_xlate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = load ptr, ptr @irqc_node, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !9

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 9, ptr noundef null) #5
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef %0) #5
  store ptr %7, ptr @irqc_node, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12, !prof !10

9:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 66, i32 noundef 9, ptr noundef null) #5
  %10 = load ptr, ptr @irqc_node, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %6
  store i32 %1, ptr @irqc_base, align 4
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi i32 [ 0, %12 ], [ -2, %9 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @board_staging_gic_fixup_resources(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %7, %4 ], [ 0, %2 ]
  %6 = getelementptr %struct.resource, ptr %0, i32 %5
  tail call fastcc void @gic_fixup_resource(ptr noundef %6) #6
  %7 = add nuw i32 %5, 1
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %9, label %4

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @gic_fixup_resource(ptr nocapture noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #5
  %3 = getelementptr inbounds i8, ptr %2, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 56, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 7936
  %7 = icmp eq i32 %6, 1024
  %8 = load ptr, ptr @irqc_node, align 4
  %9 = icmp ne ptr %8, null
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load i32, ptr %0, align 4
  store ptr %8, ptr %2, align 4
  %13 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 1
  store i32 3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2
  store i32 0, ptr %14, align 4
  %15 = load i32, ptr @irqc_base, align 4
  %16 = sub i32 %12, %15
  %17 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2, i32 1
  store i32 %16, ptr %17, align 4
  %18 = and i32 %5, 15
  switch i32 %18, label %19 [
    i32 2, label %20
    i32 1, label %20
    i32 8, label %20
  ]

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19, %11, %11, %11
  %21 = phi i32 [ 4, %19 ], [ %18, %11 ], [ %18, %11 ], [ %18, %11 ]
  %22 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2, i32 2
  store i32 %21, ptr %22, align 4
  %23 = call i32 @irq_create_of_mapping(ptr noundef nonnull %2) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26, !prof !10

25:                                               ; preds = %20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 106, i32 noundef 9, ptr noundef null) #5
  br label %27

26:                                               ; preds = %20
  store i32 %23, ptr %0, align 4
  br label %27

27:                                               ; preds = %26, %25, %1
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @board_staging_register_clock(ptr nocapture noundef readonly %0) local_unnamed_addr #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.board_staging_clk, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.board_staging_clk, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = tail call i32 @clk_add_alias(ptr noundef %3, ptr noundef %5, ptr noundef %6, ptr noundef null) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %10, i32 noundef %7) #7
  br label %12

12:                                               ; preds = %9, %1
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_add_alias(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @board_staging_register_device(ptr nocapture noundef readonly %0) local_unnamed_addr #0 section ".init.text" {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = tail call zeroext i1 @board_staging_dt_node_available(ptr noundef %5, i32 noundef %7) #6
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %10) #7
  br label %60

12:                                               ; preds = %1
  %13 = load ptr, ptr %4, align 8
  %14 = load i32, ptr %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %16, %12
  %17 = phi i32 [ %19, %16 ], [ 0, %12 ]
  %18 = getelementptr %struct.resource, ptr %13, i32 %17
  tail call fastcc void @gic_fixup_resource(ptr noundef %18) #7
  %19 = add nuw i32 %17, 1
  %20 = icmp eq i32 %19, %14
  br i1 %20, label %21, label %16

21:                                               ; preds = %16, %12
  %22 = getelementptr inbounds %struct.board_staging_dev, ptr %0, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.board_staging_dev, ptr %0, i32 0, i32 1
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i32 [ 0, %25 ], [ %32, %27 ]
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr %struct.board_staging_clk, ptr %29, i32 %28
  %31 = tail call i32 @board_staging_register_clock(ptr noundef %30) #6
  %32 = add nuw i32 %28, 1
  %33 = load i32, ptr %22, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %27, label %35

35:                                               ; preds = %27, %21
  %36 = getelementptr inbounds %struct.board_staging_dev, ptr %0, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %54, label %39

39:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #5
  %40 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %40, i8 0, i32 64, i1 false) #5, !annotation !8
  %41 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull %37, ptr noundef null) #5
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %37) #7
  br label %53

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  store ptr %41, ptr %2, align 4
  %47 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 1
  store i32 0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 11, i32 3
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 11, i32 1
  %50 = load i16, ptr %49, align 4
  %51 = or i16 %50, 256
  store i16 %51, ptr %49, align 4
  %52 = call i32 @of_genpd_add_device(ptr noundef nonnull %2, ptr noundef %46) #5
  br label %53

53:                                               ; preds = %45, %43
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #5
  br label %54

54:                                               ; preds = %53, %35
  %55 = call i32 @platform_device_register(ptr noundef %3) #5
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %3, align 8
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %58, i32 noundef %55) #7
  br label %60

60:                                               ; preds = %57, %54, %9
  %61 = phi i32 [ -17, %9 ], [ %55, %57 ], [ 0, %54 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @board_staging_register_devices(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %8, %4 ], [ 0, %2 ]
  %6 = getelementptr %struct.board_staging_dev, ptr %0, i32 %5
  %7 = tail call i32 @board_staging_register_device(ptr noundef %6) #6
  %8 = add nuw i32 %5, 1
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %10, label %4

10:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_all_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_of_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { cold }
attributes #7 = { cold nounwind }

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
!10 = !{!"branch_weights", i32 1, i32 2000}
