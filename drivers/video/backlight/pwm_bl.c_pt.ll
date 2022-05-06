; ModuleID = '/llk/IR/drivers/video/backlight/pwm_bl.c_pt.bc'
source_filename = "../drivers/video/backlight/pwm_bl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.platform_pwm_backlight_data = type { i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
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
%struct.pwm_bl_data = type { ptr, ptr, i32, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, ptr, ptr, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_pwm_bl__261_704_pwm_backlight_driver_init6 = internal global ptr @pwm_backlight_driver_init, section ".initcall6.init", align 4
@pwm_backlight_driver = internal global %struct.platform_driver { ptr @pwm_backlight_probe, ptr @pwm_backlight_remove, ptr @pwm_backlight_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pwm_backlight_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pwm_backlight_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_pwm_backlight_driver_exit = internal global ptr @pwm_backlight_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description262 = internal constant [46 x i8] c"pwm_bl.description=PWM based Backlight Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file263 = internal constant [43 x i8] c"pwm_bl.file=drivers/video/backlight/pwm_bl\00", section ".modinfo", align 1
@__UNIQUE_ID_license264 = internal constant [22 x i8] c"pwm_bl.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias265 = internal constant [36 x i8] c"pwm_bl.alias=platform:pwm-backlight\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"pwm-backlight\00", align 1
@pwm_backlight_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pwm-backlight\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@pwm_backlight_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pwm_backlight_suspend, ptr @pwm_backlight_resume, ptr null, ptr null, ptr @pwm_backlight_suspend, ptr @pwm_backlight_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to find platform data\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"unable to request PWM, trying legacy API\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"unable to request PWM\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"failed to apply initial PWM state: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"failed to setup default brightness table\0A\00", align 1
@pwm_backlight_ops = internal constant %struct.backlight_ops { i32 0, ptr @pwm_backlight_update_status, ptr null, ptr @pwm_backlight_check_fb }, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"failed to register backlight\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"invalid default brightness level: %u, using %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"post-pwm-on-delay-ms\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"pwm-off-delay-ms\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"brightness-levels\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"default-brightness-level\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"num-interpolated-steps\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"can't interpolate\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"failed to enable power supply\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias265, ptr @__UNIQUE_ID_description262, ptr @__UNIQUE_ID_file263, ptr @__UNIQUE_ID_license264, ptr @__exitcall_pwm_backlight_driver_exit, ptr @__initcall__kmod_pwm_bl__261_704_pwm_backlight_driver_init6, ptr @pwm_backlight_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pwm_backlight_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @pwm_backlight_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pwm_backlight_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @pwm_backlight_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_backlight_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_pwm_backlight_data, align 4
  %7 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %6, i32 0, i32 8
  %8 = alloca %struct.backlight_properties, align 4
  %9 = alloca %struct.pwm_state, align 8
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %12, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %6, i8 0, i32 52, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, i8 0, i32 28, i1 false), !annotation !8
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %15 = load ptr, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i32 24, i1 false), !annotation !8
  %16 = icmp eq ptr %12, null
  br i1 %16, label %17, label %110

17:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %18 = icmp eq ptr %15, null
  br i1 %18, label %102, label %19

19:                                               ; preds = %17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %6, i8 0, i32 52, i1 false) #8
  %20 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %6, i32 0, i32 6
  %21 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.10, ptr noundef %20, i32 noundef 1, i32 noundef 0) #8
  %22 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %6, i32 0, i32 7
  %23 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.11, ptr noundef %22, i32 noundef 1, i32 noundef 0) #8
  %24 = call ptr @of_find_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.12, ptr noundef nonnull %4) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %104, label %26

26:                                               ; preds = %19
  %27 = load i32, ptr %4, align 4
  %28 = lshr i32 %27, 2
  %29 = icmp ult i32 %27, 4
  br i1 %29, label %104, label %30

30:                                               ; preds = %26
  %31 = and i32 %27, -4
  %32 = call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef %31, i32 noundef 3520) #8
  %33 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %6, i32 0, i32 5
  store ptr %32, ptr %33, align 4
  %34 = icmp eq ptr %32, null
  br i1 %34, label %102, label %35

35:                                               ; preds = %30
  %36 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.12, ptr noundef nonnull %32, i32 noundef %28, i32 noundef 0) #8
  %37 = call i32 @llvm.smin.i32(i32 %36, i32 0) #8
  %38 = icmp slt i32 %36, 0
  br i1 %38, label %105, label %39

39:                                               ; preds = %35
  %40 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.13, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #8
  %41 = call i32 @llvm.smin.i32(i32 %40, i32 0) #8
  %42 = icmp slt i32 %40, 0
  br i1 %42, label %105, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %5, align 4
  %45 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %6, i32 0, i32 2
  store i32 %44, ptr %45, align 4
  %46 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.14, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %47 = load i32, ptr %3, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %98, label %49

49:                                               ; preds = %43
  %50 = icmp ult i32 %27, 8
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.15) #9
  br label %102

52:                                               ; preds = %49
  %53 = add nsw i32 %28, -1
  %54 = mul i32 %47, %53
  %55 = add i32 %54, 1
  %56 = shl i32 %55, 2
  %57 = call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef %56, i32 noundef 3520) #8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %102, label %59

59:                                               ; preds = %52
  %60 = load i32, ptr %3, align 4
  %61 = icmp eq i32 %53, 0
  br i1 %61, label %93, label %65

62:                                               ; preds = %80, %65
  %63 = add i32 %66, %60
  %64 = icmp eq i32 %73, %53
  br i1 %64, label %91, label %65

65:                                               ; preds = %62, %59
  %66 = phi i32 [ %63, %62 ], [ %60, %59 ]
  %67 = phi i32 [ %73, %62 ], [ 0, %59 ]
  %68 = mul i32 %67, %60
  %69 = add i32 %68, %60
  %70 = load ptr, ptr %33, align 4
  %71 = getelementptr i32, ptr %70, i32 %67
  %72 = load i32, ptr %71, align 4
  %73 = add nuw nsw i32 %67, 1
  %74 = getelementptr i32, ptr %70, i32 %73
  %75 = load i32, ptr %74, align 4
  %76 = zext i32 %75 to i64
  %77 = zext i32 %72 to i64
  %78 = sub nsw i64 %76, %77
  %79 = icmp ult i32 %68, %69
  br i1 %79, label %80, label %62

80:                                               ; preds = %80, %65
  %81 = phi i32 [ %89, %80 ], [ %68, %65 ]
  %82 = sub nuw i32 %81, %68
  %83 = zext i32 %82 to i64
  %84 = mul i64 %78, %83
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %85 = call i64 @div_s64_rem(i64 noundef %84, i32 noundef %60, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %86 = trunc i64 %85 to i32
  %87 = add i32 %72, %86
  %88 = getelementptr i32, ptr %57, i32 %81
  store i32 %87, ptr %88, align 4
  %89 = add i32 %81, 1
  %90 = icmp eq i32 %89, %66
  br i1 %90, label %62, label %80

91:                                               ; preds = %62
  %92 = mul i32 %60, %53
  br label %93

93:                                               ; preds = %91, %59
  %94 = phi i32 [ 0, %59 ], [ %92, %91 ]
  %95 = phi i32 [ 0, %59 ], [ %75, %91 ]
  %96 = getelementptr i32, ptr %57, i32 %94
  store i32 %95, ptr %96, align 4
  %97 = load ptr, ptr %33, align 4
  call void @devm_kfree(ptr noundef %10, ptr noundef %97) #8
  store ptr %57, ptr %33, align 4
  br label %98

98:                                               ; preds = %93, %43
  %99 = phi i32 [ %55, %93 ], [ %28, %43 ]
  %100 = add i32 %99, -1
  %101 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %6, i32 0, i32 1
  store i32 %100, ptr %101, align 4
  br label %104

102:                                              ; preds = %52, %51, %30, %17
  %103 = phi i32 [ -22, %51 ], [ -12, %52 ], [ -12, %30 ], [ -19, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %108

104:                                              ; preds = %98, %26, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %110

105:                                              ; preds = %39, %35
  %106 = phi i32 [ %41, %39 ], [ %37, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105, %102
  %109 = phi i32 [ %103, %102 ], [ %106, %105 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.1) #9
  br label %387

110:                                              ; preds = %105, %104, %1
  %111 = phi ptr [ %12, %1 ], [ %6, %105 ], [ %6, %104 ]
  %112 = phi ptr [ %13, %1 ], [ %7, %105 ], [ %7, %104 ]
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %111, i32 0, i32 8
  %117 = load ptr, ptr %116, align 4
  %118 = call i32 %117(ptr noundef %10) #8
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %387, label %120

120:                                              ; preds = %115, %110
  %121 = call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 60, i32 noundef 3520) #8
  %122 = icmp eq ptr %121, null
  br i1 %122, label %381, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %111, i32 0, i32 9
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.pwm_bl_data, ptr %121, i32 0, i32 11
  store ptr %125, ptr %126, align 4
  %127 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %111, i32 0, i32 10
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.pwm_bl_data, ptr %121, i32 0, i32 12
  store ptr %128, ptr %129, align 4
  %130 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %111, i32 0, i32 12
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.pwm_bl_data, ptr %121, i32 0, i32 13
  store ptr %131, ptr %132, align 4
  %133 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %111, i32 0, i32 11
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.pwm_bl_data, ptr %121, i32 0, i32 14
  store ptr %134, ptr %135, align 4
  %136 = getelementptr inbounds %struct.pwm_bl_data, ptr %121, i32 0, i32 1
  store ptr %10, ptr %136, align 4
  %137 = getelementptr inbounds %struct.pwm_bl_data, ptr %121, i32 0, i32 4
  store i8 0, ptr %137, align 4
  %138 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %111, i32 0, i32 6
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr inbounds %struct.pwm_bl_data, ptr %121, i32 0, i32 9
  store i32 %139, ptr %140, align 4
  %141 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %111, i32 0, i32 7
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr inbounds %struct.pwm_bl_data, ptr %121, i32 0, i32 10
  store i32 %142, ptr %143, align 4
  %144 = call ptr @devm_gpiod_get_optional(ptr noundef %10, ptr noundef nonnull @.str.2, i32 noundef 0) #8
  %145 = getelementptr inbounds %struct.pwm_bl_data, ptr %121, i32 0, i32 6
  store ptr %144, ptr %145, align 4
  %146 = icmp ugt ptr %144, inttoptr (i32 -4096 to ptr)
  br i1 %146, label %147, label %149

147:                                              ; preds = %123
  %148 = ptrtoint ptr %144 to i32
  br label %381

149:                                              ; preds = %123
  %150 = call ptr @devm_regulator_get(ptr noundef %10, ptr noundef nonnull @.str.3) #8
  %151 = getelementptr inbounds %struct.pwm_bl_data, ptr %121, i32 0, i32 5
  store ptr %150, ptr %151, align 4
  %152 = icmp ugt ptr %150, inttoptr (i32 -4096 to ptr)
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  %154 = ptrtoint ptr %150 to i32
  br label %381

155:                                              ; preds = %149
  %156 = call ptr @devm_pwm_get(ptr noundef %10, ptr noundef null) #8
  store ptr %156, ptr %121, align 4
  %157 = icmp ugt ptr %156, inttoptr (i32 -4096 to ptr)
  br i1 %157, label %158, label %166

158:                                              ; preds = %155
  %159 = icmp eq ptr %156, inttoptr (i32 -517 to ptr)
  %160 = icmp ne ptr %15, null
  %161 = select i1 %159, i1 true, i1 %160
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.4) #9
  %163 = getelementptr inbounds %struct.pwm_bl_data, ptr %121, i32 0, i32 8
  store i8 1, ptr %163, align 4
  %164 = load i32, ptr %111, align 4
  %165 = call ptr @pwm_request(i32 noundef %164, ptr noundef nonnull @.str) #8
  store ptr %165, ptr %121, align 4
  br label %166

166:                                              ; preds = %162, %158, %155
  %167 = phi ptr [ %165, %162 ], [ %156, %155 ], [ %156, %158 ]
  %168 = icmp ugt ptr %167, inttoptr (i32 -4096 to ptr)
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = icmp eq ptr %167, inttoptr (i32 -517 to ptr)
  br i1 %170, label %381, label %171

171:                                              ; preds = %169
  %172 = ptrtoint ptr %167 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.5) #9
  br label %381

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.pwm_device, ptr %167, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef align 8 dereferenceable(24) %174, i32 24, i1 false) #8
  %175 = getelementptr inbounds %struct.pwm_device, ptr %167, i32 0, i32 6
  %176 = load i64, ptr %175, align 8
  %177 = getelementptr inbounds %struct.pwm_device, ptr %167, i32 0, i32 6, i32 1
  %178 = load i32, ptr %177, align 8
  store i64 %176, ptr %9, align 8
  %179 = getelementptr inbounds %struct.pwm_state, ptr %9, i32 0, i32 2
  store i32 %178, ptr %179, align 8
  %180 = getelementptr inbounds %struct.pwm_state, ptr %9, i32 0, i32 1
  store i64 0, ptr %180, align 8
  %181 = getelementptr inbounds %struct.pwm_state, ptr %9, i32 0, i32 4
  store i8 0, ptr %181, align 1
  %182 = icmp eq i64 %176, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %173
  %184 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %111, i32 0, i32 4
  %185 = load i32, ptr %184, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %183
  %188 = zext i32 %185 to i64
  store i64 %188, ptr %9, align 8
  br label %189

189:                                              ; preds = %187, %183, %173
  %190 = call i32 @pwm_apply_state(ptr noundef %167, ptr noundef nonnull %9) #8
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %189
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.6, i32 noundef %190) #9
  br label %381

193:                                              ; preds = %189
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, i8 0, i32 28, i1 false)
  %194 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %111, i32 0, i32 5
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %253, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.pwm_bl_data, ptr %121, i32 0, i32 3
  store ptr %195, ptr %198, align 4
  %199 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %111, i32 0, i32 1
  %200 = getelementptr inbounds %struct.pwm_bl_data, ptr %121, i32 0, i32 7
  %201 = load i32, ptr %200, align 4
  br label %202

202:                                              ; preds = %210, %197
  %203 = phi i32 [ %201, %197 ], [ %211, %210 ]
  %204 = phi i32 [ 0, %197 ], [ %212, %210 ]
  %205 = load ptr, ptr %194, align 4
  %206 = getelementptr i32, ptr %205, i32 %204
  %207 = load i32, ptr %206, align 4
  %208 = icmp ugt i32 %207, %203
  br i1 %208, label %209, label %210

209:                                              ; preds = %202
  store i32 %207, ptr %200, align 4
  br label %210

210:                                              ; preds = %209, %202
  %211 = phi i32 [ %203, %202 ], [ %207, %209 ]
  %212 = add i32 %204, 1
  %213 = load i32, ptr %199, align 4
  %214 = icmp ugt i32 %212, %213
  br i1 %214, label %215, label %202

215:                                              ; preds = %210
  %216 = add nuw i32 %213, 1
  %217 = load ptr, ptr %194, align 4
  %218 = load i32, ptr %217, align 4
  %219 = getelementptr i32, ptr %217, i32 %213
  %220 = load i32, ptr %219, align 4
  %221 = sub i32 %220, %218
  %222 = shl i32 %221, 7
  %223 = udiv i32 %222, %216
  %224 = udiv i32 %221, 20
  %225 = icmp eq i32 %213, 0
  br i1 %225, label %249, label %226

226:                                              ; preds = %215
  %227 = lshr i32 %223, 7
  %228 = getelementptr i32, ptr %217, i32 1
  %229 = load i32, ptr %228, align 4
  %230 = sub i32 %218, %229
  %231 = add i32 %230, %227
  %232 = call i32 @llvm.abs.i32(i32 %231, i1 false) #8
  %233 = icmp ugt i32 %232, %224
  br i1 %233, label %251, label %234

234:                                              ; preds = %237, %226
  %235 = phi i32 [ %238, %237 ], [ 1, %226 ]
  %236 = icmp eq i32 %235, %213
  br i1 %236, label %247, label %237

237:                                              ; preds = %234
  %238 = add nuw i32 %235, 1
  %239 = mul i32 %238, %223
  %240 = lshr i32 %239, 7
  %241 = getelementptr i32, ptr %217, i32 %238
  %242 = load i32, ptr %241, align 4
  %243 = sub i32 %218, %242
  %244 = add i32 %243, %240
  %245 = call i32 @llvm.abs.i32(i32 %244, i1 false) #8
  %246 = icmp ugt i32 %245, %224
  br i1 %246, label %247, label %234

247:                                              ; preds = %237, %234
  %248 = icmp ult i32 %235, %213
  br i1 %248, label %251, label %249

249:                                              ; preds = %247, %215
  %250 = getelementptr inbounds %struct.backlight_properties, ptr %8, i32 0, i32 6
  store i32 1, ptr %250, align 4
  br label %288

251:                                              ; preds = %247, %226
  %252 = getelementptr inbounds %struct.backlight_properties, ptr %8, i32 0, i32 6
  store i32 2, ptr %252, align 4
  br label %288

253:                                              ; preds = %193
  %254 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %111, i32 0, i32 1
  %255 = load i32, ptr %254, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %286

257:                                              ; preds = %253
  %258 = load ptr, ptr %121, align 4
  %259 = getelementptr inbounds %struct.pwm_device, ptr %258, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef align 8 dereferenceable(24) %259, i32 24, i1 false) #8
  %260 = load i64, ptr %9, align 8
  %261 = trunc i64 %260 to i32
  %262 = call fastcc i32 @pwm_backlight_brightness_default(ptr noundef %10, ptr noundef %111, i32 noundef %261)
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %268, label %264

264:                                              ; preds = %257
  %265 = getelementptr inbounds %struct.pwm_bl_data, ptr %121, i32 0, i32 7
  %266 = getelementptr inbounds %struct.pwm_bl_data, ptr %121, i32 0, i32 3
  %267 = load i32, ptr %265, align 4
  br label %269

268:                                              ; preds = %257
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.7) #9
  br label %381

269:                                              ; preds = %278, %264
  %270 = phi i32 [ %267, %264 ], [ %280, %278 ]
  %271 = phi i32 [ 0, %264 ], [ %281, %278 ]
  %272 = load ptr, ptr %194, align 4
  %273 = getelementptr i32, ptr %272, i32 %271
  %274 = load i32, ptr %273, align 4
  %275 = icmp ugt i32 %274, %270
  br i1 %275, label %276, label %278

276:                                              ; preds = %269
  store i32 %274, ptr %265, align 4
  %277 = load ptr, ptr %194, align 4
  br label %278

278:                                              ; preds = %276, %269
  %279 = phi ptr [ %277, %276 ], [ %272, %269 ]
  %280 = phi i32 [ %274, %276 ], [ %270, %269 ]
  store ptr %279, ptr %266, align 4
  %281 = add i32 %271, 1
  %282 = load i32, ptr %254, align 4
  %283 = icmp ugt i32 %281, %282
  br i1 %283, label %284, label %269

284:                                              ; preds = %278
  %285 = getelementptr inbounds %struct.backlight_properties, ptr %8, i32 0, i32 6
  store i32 2, ptr %285, align 4
  br label %288

286:                                              ; preds = %253
  %287 = getelementptr inbounds %struct.pwm_bl_data, ptr %121, i32 0, i32 7
  store i32 %255, ptr %287, align 4
  br label %288

288:                                              ; preds = %286, %284, %251, %249
  %289 = phi i32 [ %280, %284 ], [ %255, %286 ], [ %211, %249 ], [ %211, %251 ]
  %290 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %111, i32 0, i32 3
  %291 = load i32, ptr %290, align 4
  %292 = load i64, ptr %9, align 8
  %293 = icmp ult i64 %292, 4294967296
  br i1 %293, label %294, label %297, !prof !9

294:                                              ; preds = %288
  %295 = trunc i64 %292 to i32
  %296 = udiv i32 %295, %289
  br label %301

297:                                              ; preds = %288
  %298 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %289, i64 %292) #10, !srcloc !10
  %299 = extractvalue { i64, i64 } %298, 1
  %300 = trunc i64 %299 to i32
  br label %301

301:                                              ; preds = %297, %294
  %302 = phi i32 [ %296, %294 ], [ %300, %297 ]
  %303 = mul i32 %302, %291
  %304 = getelementptr inbounds %struct.pwm_bl_data, ptr %121, i32 0, i32 2
  store i32 %303, ptr %304, align 4
  %305 = getelementptr inbounds %struct.backlight_properties, ptr %8, i32 0, i32 4
  store i32 1, ptr %305, align 4
  %306 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %111, i32 0, i32 1
  %307 = load i32, ptr %306, align 4
  %308 = getelementptr inbounds %struct.backlight_properties, ptr %8, i32 0, i32 1
  store i32 %307, ptr %308, align 4
  %309 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %310 = load ptr, ptr %309, align 4
  %311 = icmp eq ptr %310, null
  br i1 %311, label %312, label %314

312:                                              ; preds = %301
  %313 = load ptr, ptr %10, align 4
  br label %314

314:                                              ; preds = %312, %301
  %315 = phi ptr [ %313, %312 ], [ %310, %301 ]
  %316 = call ptr @backlight_device_register(ptr noundef %315, ptr noundef %10, ptr noundef nonnull %121, ptr noundef nonnull @pwm_backlight_ops, ptr noundef nonnull %8) #8
  %317 = icmp ugt ptr %316, inttoptr (i32 -4096 to ptr)
  br i1 %317, label %318, label %325

318:                                              ; preds = %314
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.8) #9
  %319 = ptrtoint ptr %316 to i32
  %320 = getelementptr inbounds %struct.pwm_bl_data, ptr %121, i32 0, i32 8
  %321 = load i8, ptr %320, align 4, !range !11
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %381, label %323

323:                                              ; preds = %318
  %324 = load ptr, ptr %121, align 4
  call void @pwm_free(ptr noundef %324) #8
  br label %381

325:                                              ; preds = %314
  %326 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %111, i32 0, i32 2
  %327 = load i32, ptr %326, align 4
  %328 = load i32, ptr %306, align 4
  %329 = icmp ugt i32 %327, %328
  br i1 %329, label %330, label %332

330:                                              ; preds = %325
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.9, i32 noundef %327, i32 noundef %328) #9
  %331 = load i32, ptr %306, align 4
  store i32 %331, ptr %326, align 4
  br label %332

332:                                              ; preds = %330, %325
  %333 = phi i32 [ %331, %330 ], [ %327, %325 ]
  store i32 %333, ptr %316, align 8
  %334 = load ptr, ptr %136, align 4
  %335 = getelementptr inbounds %struct.device, ptr %334, i32 0, i32 25
  %336 = load ptr, ptr %335, align 8
  %337 = load ptr, ptr %145, align 4
  %338 = icmp eq ptr %337, null
  br i1 %338, label %342, label %339

339:                                              ; preds = %332
  %340 = call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %337) #8
  %341 = icmp ne i32 %340, 0
  br label %342

342:                                              ; preds = %339, %332
  %343 = phi i1 [ true, %332 ], [ %341, %339 ]
  %344 = load ptr, ptr %151, align 4
  %345 = call i32 @regulator_is_enabled(ptr noundef %344) #8
  %346 = icmp ne i32 %345, 0
  %347 = load ptr, ptr %121, align 4
  %348 = getelementptr inbounds %struct.pwm_device, ptr %347, i32 0, i32 7, i32 3
  %349 = load i8, ptr %348, align 4
  %350 = icmp ne i8 %349, 0
  %351 = select i1 %350, i1 %346, i1 false
  %352 = select i1 %351, i1 %343, i1 false
  %353 = load ptr, ptr %145, align 4
  %354 = icmp eq ptr %353, null
  br i1 %354, label %358, label %355

355:                                              ; preds = %342
  %356 = zext i1 %352 to i32
  %357 = call i32 @gpiod_direction_output(ptr noundef nonnull %353, i32 noundef %356) #8
  br label %358

358:                                              ; preds = %355, %342
  %359 = icmp eq ptr %336, null
  br i1 %359, label %366, label %360

360:                                              ; preds = %358
  %361 = getelementptr inbounds %struct.device_node, ptr %336, i32 0, i32 1
  %362 = load i32, ptr %361, align 4
  %363 = icmp eq i32 %362, 0
  %364 = select i1 %363, i1 true, i1 %352
  %365 = select i1 %364, i32 0, i32 4
  br label %366

366:                                              ; preds = %360, %358
  %367 = phi i32 [ 0, %358 ], [ %365, %360 ]
  %368 = getelementptr inbounds %struct.backlight_properties, ptr %316, i32 0, i32 2
  store i32 %367, ptr %368, align 8
  %369 = getelementptr inbounds %struct.backlight_device, ptr %316, i32 0, i32 1
  call void @mutex_lock(ptr noundef %369) #8
  %370 = getelementptr inbounds %struct.backlight_device, ptr %316, i32 0, i32 3
  %371 = load ptr, ptr %370, align 4
  %372 = icmp eq ptr %371, null
  br i1 %372, label %379, label %373

373:                                              ; preds = %366
  %374 = getelementptr inbounds %struct.backlight_ops, ptr %371, i32 0, i32 1
  %375 = load ptr, ptr %374, align 4
  %376 = icmp eq ptr %375, null
  br i1 %376, label %379, label %377

377:                                              ; preds = %373
  %378 = call i32 %375(ptr noundef %316) #8
  br label %379

379:                                              ; preds = %377, %373, %366
  call void @mutex_unlock(ptr noundef %369) #8
  %380 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %316, ptr %380, align 8
  br label %387

381:                                              ; preds = %323, %318, %268, %192, %171, %169, %153, %147, %120
  %382 = phi i32 [ %148, %147 ], [ %154, %153 ], [ %172, %171 ], [ -517, %169 ], [ %190, %192 ], [ %319, %323 ], [ %319, %318 ], [ %262, %268 ], [ -12, %120 ]
  %383 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %111, i32 0, i32 11
  %384 = load ptr, ptr %383, align 4
  %385 = icmp eq ptr %384, null
  br i1 %385, label %387, label %386

386:                                              ; preds = %381
  call void %384(ptr noundef %10) #8
  br label %387

387:                                              ; preds = %386, %381, %379, %115, %108
  %388 = phi i32 [ 0, %379 ], [ %109, %108 ], [ %118, %115 ], [ %382, %386 ], [ %382, %381 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %6) #8
  ret i32 %388
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_backlight_remove(ptr noundef %0) #2 {
  %2 = alloca %struct.pwm_state, align 8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.backlight_device, ptr %4, i32 0, i32 6, i32 8
  %6 = load ptr, ptr %5, align 8
  tail call void @backlight_device_unregister(ptr noundef %4) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pwm_device, ptr %7, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef align 8 dereferenceable(24) %8, i32 24, i1 false) #8
  %9 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 4
  %10 = load i8, ptr %9, align 4, !range !11
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %14, i32 noundef 0) #8
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @msleep(i32 noundef %19) #8
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  store i8 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  store i64 0, ptr %24, align 8
  %25 = load ptr, ptr %6, align 4
  %26 = call i32 @pwm_apply_state(ptr noundef %25, ptr noundef nonnull %2) #8
  %27 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 @regulator_disable(ptr noundef %28) #8
  store i8 0, ptr %9, align 4
  br label %30

30:                                               ; preds = %22, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  %31 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 14
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void %32(ptr noundef %35) #8
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 8
  %38 = load i8, ptr %37, align 4, !range !11
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %6, align 4
  call void @pwm_free(ptr noundef %41) #8
  br label %42

42:                                               ; preds = %40, %36
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pwm_backlight_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.pwm_state, align 8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.backlight_device, ptr %4, i32 0, i32 6, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pwm_device, ptr %7, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef align 8 dereferenceable(24) %8, i32 24, i1 false) #8
  %9 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 4
  %10 = load i8, ptr %9, align 4, !range !11
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %14, i32 noundef 0) #8
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @msleep(i32 noundef %19) #8
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  store i8 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  store i64 0, ptr %24, align 8
  %25 = load ptr, ptr %6, align 4
  %26 = call i32 @pwm_apply_state(ptr noundef %25, ptr noundef nonnull %2) #8
  %27 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 @regulator_disable(ptr noundef %28) #8
  store i8 0, ptr %9, align 4
  br label %30

30:                                               ; preds = %22, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pwm_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwm_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pwm_backlight_brightness_default(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = tail call i32 @llvm.ctlz.i32(i32 %2, i1 false) #8, !range !12
  %5 = sub nuw nsw i32 32, %4
  %6 = sub i32 %2, %4
  %7 = add i32 %6, 31
  %8 = udiv i32 %7, %5
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 4096)
  %10 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %1, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 4) #8
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %13, label %15, !prof !13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %1, i32 0, i32 5
  store ptr null, ptr %14, align 4
  br label %63

15:                                               ; preds = %3
  %16 = extractvalue { i32, i1 } %11, 0
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %16, i32 noundef 3520) #8
  %18 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %1, i32 0, i32 5
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %63, label %20

20:                                               ; preds = %15
  %21 = load i32, ptr %10, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %58, label %23

23:                                               ; preds = %20
  %24 = zext i32 %2 to i64
  br label %25

25:                                               ; preds = %49, %23
  %26 = phi i32 [ %21, %23 ], [ %56, %49 ]
  %27 = phi i32 [ 0, %23 ], [ %55, %49 ]
  %28 = shl i32 %27, 16
  %29 = udiv i32 %28, %26
  %30 = mul i32 %29, 100
  %31 = icmp ult i32 %30, 524289
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = mul i32 %29, 1000
  %34 = add i32 %33, 4516
  %35 = udiv i32 %34, 9033
  %36 = zext i32 %35 to i64
  br label %45

37:                                               ; preds = %25
  %38 = add i32 %30, 1048576
  %39 = udiv i32 %38, 116
  %40 = zext i32 %39 to i64
  %41 = mul nuw nsw i64 %40, %40
  %42 = mul i64 %41, %40
  %43 = add i64 %42, 2147483648
  %44 = lshr i64 %43, 32
  br label %45

45:                                               ; preds = %37, %32
  %46 = phi i64 [ %36, %32 ], [ %44, %37 ]
  %47 = mul nuw i64 %46, %24
  %48 = icmp ugt i64 %47, 281474976677887
  br i1 %48, label %63, label %49

49:                                               ; preds = %45
  %50 = add nuw nsw i64 %47, 32768
  %51 = lshr i64 %50, 16
  %52 = trunc i64 %51 to i32
  %53 = load ptr, ptr %18, align 4
  %54 = getelementptr i32, ptr %53, i32 %27
  store i32 %52, ptr %54, align 4
  %55 = add nuw i32 %27, 1
  %56 = load i32, ptr %10, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %25, label %58

58:                                               ; preds = %49, %20
  %59 = phi i32 [ 0, %20 ], [ %56, %49 ]
  %60 = lshr i32 %59, 1
  %61 = getelementptr inbounds %struct.platform_pwm_backlight_data, ptr %1, i32 0, i32 2
  store i32 %60, ptr %61, align 4
  %62 = add i32 %59, -1
  store i32 %62, ptr %10, align 4
  br label %63

63:                                               ; preds = %58, %45, %15, %13
  %64 = phi i32 [ 0, %58 ], [ -12, %15 ], [ -12, %13 ], [ -22, %45 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_backlight_update_status(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.pwm_state, align 8
  %3 = alloca %struct.pwm_state, align 8
  %4 = alloca %struct.pwm_state, align 8
  %5 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 6, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.backlight_properties, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.backlight_properties, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.backlight_properties, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, ptr %0, align 8
  br label %21

21:                                               ; preds = %19, %14, %10, %1
  %22 = phi i32 [ %20, %19 ], [ 0, %14 ], [ 0, %10 ], [ 0, %1 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !8
  %23 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %24(ptr noundef %28, i32 noundef %22) #8
  br label %30

30:                                               ; preds = %26, %21
  %31 = phi i32 [ %29, %26 ], [ %22, %21 ]
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %98

33:                                               ; preds = %30
  %34 = load ptr, ptr %6, align 4
  %35 = getelementptr inbounds %struct.pwm_device, ptr %34, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef align 8 dereferenceable(24) %35, i32 24, i1 false) #8
  %36 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = load ptr, ptr %6, align 4
  %39 = getelementptr inbounds %struct.pwm_device, ptr %38, i32 0, i32 7
  %40 = load i64, ptr %39, align 8
  %41 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  %45 = getelementptr i32, ptr %42, i32 %31
  %46 = load i32, ptr %45, align 4
  br label %47

47:                                               ; preds = %44, %33
  %48 = phi i32 [ %46, %44 ], [ %31, %33 ]
  %49 = zext i32 %48 to i64
  %50 = zext i32 %37 to i64
  %51 = sub i64 %40, %50
  %52 = mul i64 %51, %49
  %53 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = icmp ult i64 %52, 4294967296
  br i1 %55, label %56, label %59, !prof !9

56:                                               ; preds = %47
  %57 = trunc i64 %52 to i32
  %58 = udiv i32 %57, %54
  br label %63

59:                                               ; preds = %47
  %60 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %54, i64 %52) #10, !srcloc !10
  %61 = extractvalue { i64, i64 } %60, 1
  %62 = trunc i64 %61 to i32
  br label %63

63:                                               ; preds = %59, %56
  %64 = phi i32 [ %58, %56 ], [ %62, %59 ]
  %65 = add i32 %64, %37
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.pwm_state, ptr %4, i32 0, i32 1
  store i64 %66, ptr %67, align 8
  %68 = load ptr, ptr %6, align 4
  %69 = call i32 @pwm_apply_state(ptr noundef %68, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  %70 = load ptr, ptr %6, align 4
  %71 = getelementptr inbounds %struct.pwm_device, ptr %70, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef align 8 dereferenceable(24) %71, i32 24, i1 false) #8
  %72 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 4
  %73 = load i8, ptr %72, align 4, !range !11
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %63
  %76 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 5
  %77 = load ptr, ptr %76, align 4
  %78 = call i32 @regulator_enable(ptr noundef %77) #8
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.16) #9
  br label %83

83:                                               ; preds = %80, %75
  %84 = getelementptr inbounds %struct.pwm_state, ptr %3, i32 0, i32 3
  store i8 1, ptr %84, align 4
  %85 = load ptr, ptr %6, align 4
  %86 = call i32 @pwm_apply_state(ptr noundef %85, ptr noundef nonnull %3) #8
  %87 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 9
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %83
  call void @msleep(i32 noundef %88) #8
  br label %91

91:                                               ; preds = %90, %83
  %92 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 6
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %93, i32 noundef 1) #8
  br label %96

96:                                               ; preds = %95, %91
  store i8 1, ptr %72, align 4
  br label %97

97:                                               ; preds = %96, %63
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  br label %123

98:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  %99 = load ptr, ptr %6, align 4
  %100 = getelementptr inbounds %struct.pwm_device, ptr %99, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef align 8 dereferenceable(24) %100, i32 24, i1 false) #8
  %101 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 4
  %102 = load i8, ptr %101, align 4, !range !11
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %122, label %104

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 6
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %106, i32 noundef 0) #8
  br label %109

109:                                              ; preds = %108, %104
  %110 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 10
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  tail call void @msleep(i32 noundef %111) #8
  br label %114

114:                                              ; preds = %113, %109
  %115 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  store i8 0, ptr %115, align 4
  %116 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  store i64 0, ptr %116, align 8
  %117 = load ptr, ptr %6, align 4
  %118 = call i32 @pwm_apply_state(ptr noundef %117, ptr noundef nonnull %2) #8
  %119 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 5
  %120 = load ptr, ptr %119, align 4
  %121 = call i32 @regulator_disable(ptr noundef %120) #8
  store i8 0, ptr %101, align 4
  br label %122

122:                                              ; preds = %114, %98
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  br label %123

123:                                              ; preds = %122, %97
  %124 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 12
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  call void %125(ptr noundef %129, i32 noundef %31) #8
  br label %130

130:                                              ; preds = %127, %123
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_backlight_check_fb(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 6, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pwm_bl_data, ptr %4, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.pwm_bl_data, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %6(ptr noundef %10, ptr noundef %1) #8
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %8, %2
  %15 = phi i32 [ 1, %2 ], [ %13, %8 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_backlight_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.pwm_state, align 8
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.backlight_device, ptr %4, i32 0, i32 6, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %8(ptr noundef %12, i32 noundef 0) #8
  br label %14

14:                                               ; preds = %10, %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds %struct.pwm_device, ptr %15, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef align 8 dereferenceable(24) %16, i32 24, i1 false) #8
  %17 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 4
  %18 = load i8, ptr %17, align 4, !range !11
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %22, i32 noundef 0) #8
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @msleep(i32 noundef %27) #8
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  store i8 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  store i64 0, ptr %32, align 8
  %33 = load ptr, ptr %6, align 4
  %34 = call i32 @pwm_apply_state(ptr noundef %33, ptr noundef nonnull %2) #8
  %35 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = call i32 @regulator_disable(ptr noundef %36) #8
  store i8 0, ptr %17, align 4
  br label %38

38:                                               ; preds = %30, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  %39 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 12
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.pwm_bl_data, ptr %6, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  call void %40(ptr noundef %44, i32 noundef 0) #8
  br label %45

45:                                               ; preds = %42, %38
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_backlight_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.backlight_ops, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(ptr noundef %3) #8
  br label %14

14:                                               ; preds = %12, %8, %1
  tail call void @mutex_unlock(ptr noundef %4) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

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
!10 = !{i64 2147700937, i64 2147701217, i64 2147701551, i64 2147701885}
!11 = !{i8 0, i8 2}
!12 = !{i32 0, i32 33}
!13 = !{!"branch_weights", i32 1, i32 2000}
