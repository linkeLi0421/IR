; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dss_clk = type { ptr, [32 x i8], i32, i32, i32 }
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
%struct.dss_module_power = type { i32, ptr }

@.str = private unnamed_addr constant [35 x i8] c"\013%pS->%s: '%s' get failed. rc=%d\0A\00", align 1
@__func__.msm_dss_get_clk = private unnamed_addr constant [16 x i8] c"msm_dss_get_clk\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"\013%pS->%s: %s failed. rc=%d\0A\00", align 1
@__func__.msm_dss_clk_set_rate = private unnamed_addr constant [21 x i8] c"msm_dss_clk_set_rate\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"\013%pS->%s: '%s' is not available\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\013%pS->%s: %s en fail. rc=%d\0A\00", align 1
@__func__.msm_dss_enable_clk = private unnamed_addr constant [19 x i8] c"msm_dss_enable_clk\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"*ERROR* Failed to get clock name for %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"*ERROR* Failed to get clock refs %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"*ERROR* Failed to set clock defaults %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_dss_put_clk(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, -1
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %14

5:                                                ; preds = %11, %2
  %6 = phi i32 [ %12, %11 ], [ %3, %2 ]
  %7 = getelementptr %struct.dss_clk, ptr %0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @clk_put(ptr noundef nonnull %8) #7
  br label %11

11:                                               ; preds = %10, %5
  store ptr null, ptr %7, align 4
  %12 = add i32 %6, -1
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %5, label %14

14:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dss_get_clk(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %16, %3
  %6 = phi i32 [ %17, %16 ], [ 0, %3 ]
  %7 = getelementptr %struct.dss_clk, ptr %1, i32 %6
  %8 = getelementptr %struct.dss_clk, ptr %1, i32 %6, i32 1
  %9 = tail call ptr @clk_get(ptr noundef %0, ptr noundef %8) #7
  store ptr %9, ptr %7, align 4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  %12 = ptrtoint ptr %9 to i32
  %13 = tail call ptr @llvm.returnaddress(i32 0)
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %13, ptr noundef nonnull @__func__.msm_dss_get_clk, ptr noundef %8, i32 noundef %12) #8
  %15 = icmp eq i32 %6, 0
  br i1 %15, label %28, label %19

16:                                               ; preds = %5
  %17 = add nuw nsw i32 %6, 1
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %28, label %5

19:                                               ; preds = %26, %11
  %20 = phi i32 [ %21, %26 ], [ %6, %11 ]
  %21 = add nsw i32 %20, -1
  %22 = getelementptr %struct.dss_clk, ptr %1, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  tail call void @clk_put(ptr noundef nonnull %23) #7
  br label %26

26:                                               ; preds = %25, %19
  store ptr null, ptr %22, align 4
  %27 = icmp sgt i32 %20, 1
  br i1 %27, label %19, label %28

28:                                               ; preds = %26, %16, %11, %3
  %29 = phi i32 [ %12, %11 ], [ 0, %3 ], [ %12, %26 ], [ 0, %16 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dss_clk_set_rate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %29

4:                                                ; preds = %26, %2
  %5 = phi i32 [ %27, %26 ], [ 0, %2 ]
  %6 = getelementptr %struct.dss_clk, ptr %0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %4
  %10 = getelementptr %struct.dss_clk, ptr %0, i32 %5, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = getelementptr %struct.dss_clk, ptr %0, i32 %5, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @clk_set_rate(ptr noundef nonnull %7, i32 noundef %15) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  %19 = tail call ptr @llvm.returnaddress(i32 0)
  %20 = getelementptr %struct.dss_clk, ptr %0, i32 %5, i32 1
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %19, ptr noundef nonnull @__func__.msm_dss_clk_set_rate, ptr noundef %20, i32 noundef %16) #8
  br label %29

22:                                               ; preds = %4
  %23 = tail call ptr @llvm.returnaddress(i32 0)
  %24 = getelementptr %struct.dss_clk, ptr %0, i32 %5, i32 1
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %23, ptr noundef nonnull @__func__.msm_dss_clk_set_rate, ptr noundef %24) #8
  br label %29

26:                                               ; preds = %13, %9
  %27 = add nuw nsw i32 %5, 1
  %28 = icmp eq i32 %27, %1
  br i1 %28, label %29, label %4

29:                                               ; preds = %26, %22, %18, %2
  %30 = phi i32 [ %16, %18 ], [ -1, %22 ], [ 0, %2 ], [ 0, %26 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dss_enable_clk(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %10, label %48

7:                                                ; preds = %3
  %8 = add i32 %1, -1
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %42, label %48

10:                                               ; preds = %38, %5
  %11 = phi i32 [ %40, %38 ], [ 0, %5 ]
  %12 = getelementptr %struct.dss_clk, ptr %0, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @clk_prepare(ptr noundef %13) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = tail call i32 @clk_enable(ptr noundef %13) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %16
  tail call void @clk_unprepare(ptr noundef %13) #7
  br label %20

20:                                               ; preds = %19, %10
  %21 = phi i32 [ %17, %19 ], [ %14, %10 ]
  %22 = tail call ptr @llvm.returnaddress(i32 0)
  %23 = getelementptr %struct.dss_clk, ptr %0, i32 %11, i32 1
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %22, ptr noundef nonnull @__func__.msm_dss_enable_clk, ptr noundef %23, i32 noundef %21) #8
  %25 = icmp eq i32 %11, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = add nsw i32 %11, -1
  %28 = getelementptr %struct.dss_clk, ptr %0, i32 %27
  %29 = icmp eq i32 %11, 1
  br i1 %29, label %48, label %30

30:                                               ; preds = %26
  %31 = add nsw i32 %11, -2
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i32 [ %36, %32 ], [ %31, %30 ]
  %34 = getelementptr %struct.dss_clk, ptr %28, i32 %33
  %35 = load ptr, ptr %34, align 4
  tail call void @clk_disable(ptr noundef %35) #7
  tail call void @clk_unprepare(ptr noundef %35) #7
  %36 = add nsw i32 %33, -1
  %37 = icmp sgt i32 %33, 0
  br i1 %37, label %32, label %48

38:                                               ; preds = %20, %16
  %39 = phi i32 [ %21, %20 ], [ 0, %16 ]
  %40 = add nuw nsw i32 %11, 1
  %41 = icmp eq i32 %40, %1
  br i1 %41, label %48, label %10

42:                                               ; preds = %42, %7
  %43 = phi i32 [ %46, %42 ], [ %8, %7 ]
  %44 = getelementptr %struct.dss_clk, ptr %0, i32 %43
  %45 = load ptr, ptr %44, align 4
  tail call void @clk_disable(ptr noundef %45) #7
  tail call void @clk_unprepare(ptr noundef %45) #7
  %46 = add nsw i32 %43, -1
  %47 = icmp sgt i32 %43, 0
  br i1 %47, label %42, label %48

48:                                               ; preds = %42, %38, %32, %26, %7, %5
  %49 = phi i32 [ 0, %7 ], [ %21, %26 ], [ 0, %5 ], [ 0, %42 ], [ %21, %32 ], [ %39, %38 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dss_parse_clock(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4, !annotation !8
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %104

7:                                                ; preds = %2
  store i32 0, ptr %1, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @of_property_read_string_helper(ptr noundef %10, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %104, label %13

13:                                               ; preds = %7
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 48) #7
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %16, label %18, !prof !9

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.dss_module_power, ptr %1, i32 0, i32 1
  store ptr null, ptr %17, align 4
  br label %104

18:                                               ; preds = %13
  %19 = extractvalue { i32, i1 } %14, 0
  %20 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef %19, i32 noundef 3520) #7
  %21 = getelementptr inbounds %struct.dss_module_power, ptr %1, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %104, label %23

23:                                               ; preds = %29, %18
  %24 = phi i32 [ %36, %29 ], [ 0, %18 ]
  %25 = load ptr, ptr %9, align 8
  %26 = call i32 @of_property_read_string_helper(ptr noundef %25, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %24) #7
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %8, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %24) #7
  br label %38

29:                                               ; preds = %23
  %30 = load ptr, ptr %21, align 4
  %31 = getelementptr %struct.dss_clk, ptr %30, i32 %24, i32 1
  %32 = load ptr, ptr %3, align 4
  %33 = call i32 @strlcpy(ptr noundef %31, ptr noundef %32, i32 noundef 32) #7
  %34 = load ptr, ptr %21, align 4
  %35 = getelementptr %struct.dss_clk, ptr %34, i32 %24, i32 2
  store i32 0, ptr %35, align 4
  %36 = add nuw i32 %24, 1
  %37 = icmp eq i32 %36, %11
  br i1 %37, label %38, label %23

38:                                               ; preds = %29, %28
  %39 = load ptr, ptr %21, align 4
  %40 = icmp sgt i32 %11, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %52, %38
  %42 = phi i32 [ %53, %52 ], [ 0, %38 ]
  %43 = getelementptr %struct.dss_clk, ptr %39, i32 %42
  %44 = getelementptr %struct.dss_clk, ptr %39, i32 %42, i32 1
  %45 = call ptr @clk_get(ptr noundef %8, ptr noundef %44) #7
  store ptr %45, ptr %43, align 4
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = ptrtoint ptr %45 to i32
  %49 = call ptr @llvm.returnaddress(i32 0) #7
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %49, ptr noundef nonnull @__func__.msm_dss_get_clk, ptr noundef %44, i32 noundef %48) #8
  %51 = icmp eq i32 %42, 0
  br i1 %51, label %64, label %55

52:                                               ; preds = %41
  %53 = add nuw nsw i32 %42, 1
  %54 = icmp eq i32 %53, %11
  br i1 %54, label %65, label %41

55:                                               ; preds = %62, %47
  %56 = phi i32 [ %57, %62 ], [ %42, %47 ]
  %57 = add nsw i32 %56, -1
  %58 = getelementptr %struct.dss_clk, ptr %39, i32 %57
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  call void @clk_put(ptr noundef nonnull %59) #7
  br label %62

62:                                               ; preds = %61, %55
  store ptr null, ptr %58, align 4
  %63 = icmp sgt i32 %56, 1
  br i1 %63, label %55, label %64

64:                                               ; preds = %62, %47
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %8, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, i32 noundef %48) #7
  br label %90

65:                                               ; preds = %52, %38
  %66 = load ptr, ptr %9, align 8
  %67 = call i32 @of_clk_set_defaults(ptr noundef %66, i1 noundef zeroext false) #7
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 @llvm.umax.i32(i32 %11, i32 1)
  br label %72

71:                                               ; preds = %65
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %8, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8, i32 noundef %67) #7
  br label %90

72:                                               ; preds = %86, %69
  %73 = phi i32 [ %87, %86 ], [ 0, %69 ]
  %74 = load ptr, ptr %21, align 4
  %75 = getelementptr %struct.dss_clk, ptr %74, i32 %73
  %76 = load ptr, ptr %75, align 4
  %77 = call i32 @clk_get_rate(ptr noundef %76) #7
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %72
  %80 = load ptr, ptr %21, align 4
  %81 = getelementptr %struct.dss_clk, ptr %80, i32 %73, i32 3
  store i32 %77, ptr %81, align 4
  %82 = load ptr, ptr %21, align 4
  %83 = getelementptr %struct.dss_clk, ptr %82, i32 %73, i32 2
  store i32 1, ptr %83, align 4
  %84 = load ptr, ptr %21, align 4
  %85 = getelementptr %struct.dss_clk, ptr %84, i32 %73, i32 4
  store i32 %77, ptr %85, align 4
  br label %86

86:                                               ; preds = %79, %72
  %87 = add nuw i32 %73, 1
  %88 = icmp eq i32 %87, %70
  br i1 %88, label %89, label %72

89:                                               ; preds = %86
  store i32 %11, ptr %1, align 4
  br label %104

90:                                               ; preds = %71, %64
  %91 = phi i32 [ %48, %64 ], [ %67, %71 ]
  %92 = load ptr, ptr %21, align 4
  %93 = add i32 %11, -1
  %94 = icmp sgt i32 %93, -1
  br i1 %94, label %95, label %104

95:                                               ; preds = %101, %90
  %96 = phi i32 [ %102, %101 ], [ %93, %90 ]
  %97 = getelementptr %struct.dss_clk, ptr %92, i32 %96
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  call void @clk_put(ptr noundef nonnull %98) #7
  br label %101

101:                                              ; preds = %100, %95
  store ptr null, ptr %97, align 4
  %102 = add i32 %96, -1
  %103 = icmp sgt i32 %102, -1
  br i1 %103, label %95, label %104

104:                                              ; preds = %101, %90, %89, %18, %16, %7, %2
  %105 = phi i32 [ 0, %89 ], [ -22, %2 ], [ 0, %7 ], [ -12, %18 ], [ -12, %16 ], [ %91, %90 ], [ %91, %101 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_set_defaults(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
