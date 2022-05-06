; ModuleID = '/llk/IR/drivers/hwmon/iio_hwmon.c_pt.bc'
source_filename = "../drivers/hwmon/iio_hwmon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.iio_hwmon_state = type { ptr, i32, %struct.attribute_group, [2 x ptr], ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_channel = type { ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }

@__initcall__kmod_iio_hwmon__166_180_iio_hwmon_driver_init6 = internal global ptr @iio_hwmon_driver_init, section ".initcall6.init", align 4
@iio_hwmon_driver = internal global %struct.platform_driver { ptr @iio_hwmon_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @iio_hwmon_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_iio_hwmon_driver_exit = internal global ptr @iio_hwmon_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author167 = internal constant [53 x i8] c"iio_hwmon.author=Jonathan Cameron <jic23@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description168 = internal constant [42 x i8] c"iio_hwmon.description=IIO to hwmon driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file169 = internal constant [39 x i8] c"iio_hwmon.file=drivers/hwmon/iio_hwmon\00", section ".modinfo", align 1
@__UNIQUE_ID_license170 = internal constant [25 x i8] c"iio_hwmon.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"iio_hwmon\00", align 1
@iio_hwmon_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"iio-hwmon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"curr\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"humidity\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%s%d_input\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%pOFn\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_description168, ptr @__UNIQUE_ID_file169, ptr @__UNIQUE_ID_license170, ptr @__exitcall_iio_hwmon_driver_exit, ptr @__initcall__kmod_iio_hwmon__166_180_iio_hwmon_driver_init6, ptr @iio_hwmon_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @iio_hwmon_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @iio_hwmon_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @iio_hwmon_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @iio_hwmon_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_hwmon_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = tail call ptr @devm_iio_channel_get_all(ptr noundef %3) #6
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = ptrtoint ptr %4 to i32
  %8 = icmp eq ptr %4, inttoptr (i32 -19 to ptr)
  %9 = select i1 %8, i32 -517, i32 %7
  br label %105

10:                                               ; preds = %1
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 40, i32 noundef 3520) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %105, label %13

13:                                               ; preds = %10
  store ptr %4, ptr %11, align 4
  %14 = getelementptr inbounds %struct.iio_hwmon_state, ptr %11, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.iio_channel, ptr %4, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %19, %13
  %20 = phi i32 [ %21, %19 ], [ %15, %13 ]
  %21 = add i32 %20, 1
  store i32 %21, ptr %14, align 4
  %22 = getelementptr %struct.iio_channel, ptr %4, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %19

25:                                               ; preds = %19, %13
  %26 = phi i32 [ %15, %13 ], [ %21, %19 ]
  %27 = add i32 %26, 1
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %27, i32 4) #6
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %30, label %32, !prof !9

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.iio_hwmon_state, ptr %11, i32 0, i32 4
  store ptr null, ptr %31, align 4
  br label %105

32:                                               ; preds = %25
  %33 = extractvalue { i32, i1 } %28, 0
  %34 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %33, i32 noundef 3520) #6
  %35 = getelementptr inbounds %struct.iio_hwmon_state, ptr %11, i32 0, i32 4
  store ptr %34, ptr %35, align 4
  %36 = icmp eq ptr %34, null
  br i1 %36, label %105, label %37

37:                                               ; preds = %32
  %38 = icmp sgt i32 %26, 0
  br i1 %38, label %39, label %86

39:                                               ; preds = %75, %37
  %40 = phi i32 [ %70, %75 ], [ 1, %37 ]
  %41 = phi i32 [ %69, %75 ], [ 1, %37 ]
  %42 = phi i32 [ %68, %75 ], [ 1, %37 ]
  %43 = phi i32 [ %67, %75 ], [ 1, %37 ]
  %44 = phi i32 [ %66, %75 ], [ 1, %37 ]
  %45 = phi i32 [ %81, %75 ], [ 0, %37 ]
  %46 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 20, i32 noundef 3520) #6
  %47 = icmp eq ptr %46, null
  br i1 %47, label %105, label %48

48:                                               ; preds = %39
  %49 = load ptr, ptr %11, align 4
  %50 = getelementptr %struct.iio_channel, ptr %49, i32 %45
  %51 = call i32 @iio_get_channel_type(ptr noundef %50, ptr noundef nonnull %2) #6
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %105, label %53

53:                                               ; preds = %48
  %54 = load i32, ptr %2, align 4
  switch i32 %54, label %105 [
    i32 0, label %55
    i32 9, label %57
    i32 1, label %59
    i32 2, label %61
    i32 18, label %63
  ]

55:                                               ; preds = %53
  %56 = add i32 %44, 1
  br label %65

57:                                               ; preds = %53
  %58 = add i32 %43, 1
  br label %65

59:                                               ; preds = %53
  %60 = add i32 %42, 1
  br label %65

61:                                               ; preds = %53
  %62 = add i32 %40, 1
  br label %65

63:                                               ; preds = %53
  %64 = add i32 %41, 1
  br label %65

65:                                               ; preds = %63, %61, %59, %57, %55
  %66 = phi i32 [ %44, %63 ], [ %44, %61 ], [ %44, %59 ], [ %44, %57 ], [ %56, %55 ]
  %67 = phi i32 [ %43, %63 ], [ %43, %61 ], [ %43, %59 ], [ %58, %57 ], [ %43, %55 ]
  %68 = phi i32 [ %42, %63 ], [ %42, %61 ], [ %60, %59 ], [ %42, %57 ], [ %42, %55 ]
  %69 = phi i32 [ %64, %63 ], [ %41, %61 ], [ %41, %59 ], [ %41, %57 ], [ %41, %55 ]
  %70 = phi i32 [ %40, %63 ], [ %62, %61 ], [ %40, %59 ], [ %40, %57 ], [ %40, %55 ]
  %71 = phi ptr [ @.str.5, %63 ], [ @.str.4, %61 ], [ @.str.3, %59 ], [ @.str.2, %57 ], [ @.str.1, %55 ]
  %72 = phi i32 [ %41, %63 ], [ %40, %61 ], [ %42, %59 ], [ %43, %57 ], [ %44, %55 ]
  %73 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %3, i32 noundef 3264, ptr noundef nonnull @.str.6, ptr noundef nonnull %71, i32 noundef %72) #6
  store ptr %73, ptr %46, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %105, label %75

75:                                               ; preds = %65
  %76 = getelementptr inbounds %struct.device_attribute, ptr %46, i32 0, i32 1
  store ptr @iio_hwmon_read_val, ptr %76, align 4
  %77 = getelementptr inbounds %struct.attribute, ptr %46, i32 0, i32 1
  store i16 292, ptr %77, align 4
  %78 = getelementptr inbounds %struct.sensor_device_attribute, ptr %46, i32 0, i32 1
  store i32 %45, ptr %78, align 4
  %79 = load ptr, ptr %35, align 4
  %80 = getelementptr ptr, ptr %79, i32 %45
  store ptr %46, ptr %80, align 4
  %81 = add nuw nsw i32 %45, 1
  %82 = load i32, ptr %14, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %39, label %84

84:                                               ; preds = %75
  %85 = load ptr, ptr %35, align 4
  br label %86

86:                                               ; preds = %84, %37
  %87 = phi ptr [ %85, %84 ], [ %34, %37 ]
  %88 = getelementptr inbounds %struct.iio_hwmon_state, ptr %11, i32 0, i32 2
  %89 = getelementptr inbounds %struct.iio_hwmon_state, ptr %11, i32 0, i32 2, i32 3
  store ptr %87, ptr %89, align 4
  %90 = getelementptr inbounds %struct.iio_hwmon_state, ptr %11, i32 0, i32 3
  store ptr %88, ptr %90, align 4
  %91 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %92 = load ptr, ptr %91, align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %86
  %95 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %3, i32 noundef 3264, ptr noundef nonnull @.str.7, ptr noundef nonnull %92) #6
  %96 = icmp eq ptr %95, null
  br i1 %96, label %105, label %97

97:                                               ; preds = %94
  %98 = call ptr @strreplace(ptr noundef nonnull %95, i8 noundef zeroext 45, i8 noundef zeroext 95) #6
  br label %99

99:                                               ; preds = %97, %86
  %100 = phi ptr [ %95, %97 ], [ @.str, %86 ]
  %101 = call ptr @devm_hwmon_device_register_with_groups(ptr noundef %3, ptr noundef nonnull %100, ptr noundef nonnull %11, ptr noundef %90) #6
  %102 = icmp ugt ptr %101, inttoptr (i32 -4096 to ptr)
  %103 = ptrtoint ptr %101 to i32
  %104 = select i1 %102, i32 %103, i32 0
  br label %105

105:                                              ; preds = %99, %94, %65, %53, %48, %39, %32, %30, %10, %6
  %106 = phi i32 [ %104, %99 ], [ -12, %10 ], [ -12, %32 ], [ -12, %94 ], [ -12, %30 ], [ %9, %6 ], [ -12, %39 ], [ %51, %48 ], [ -22, %53 ], [ -12, %65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %106
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_get_channel_type(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_hwmon_read_val(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sensor_device_attribute, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.iio_channel, ptr %8, i32 %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %12 = call i32 @iio_read_channel_processed(ptr noundef %11, ptr noundef nonnull %4) #6
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %3
  %15 = call i32 @iio_get_channel_type(ptr noundef %11, ptr noundef nonnull %5) #6
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %5, align 4
  %19 = icmp eq i32 %18, 2
  %20 = load i32, ptr %4, align 4
  br i1 %19, label %21, label %23

21:                                               ; preds = %17
  %22 = mul i32 %20, 1000
  store i32 %22, ptr %4, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i32 [ %22, %21 ], [ %20, %17 ]
  %25 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %24)
  br label %26

26:                                               ; preds = %23, %14, %3
  %27 = phi i32 [ %25, %23 ], [ %12, %3 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }

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
