; ModuleID = '/llk/IR/drivers/video/backlight/as3711_bl.c_pt.bc'
source_filename = "../drivers/video/backlight/as3711_bl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.as3711_bl_pdata = type { i8, i32, i8, i32, i32, i32, i8, i8, i8 }
%struct.as3711_bl_supply = type { %struct.as3711_bl_data, %struct.as3711_bl_data, ptr, ptr }
%struct.as3711_bl_data = type { i8, i32, i32, ptr }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.as3711 = type { ptr, ptr }

@__initcall__kmod_as3711_bl__265_477_as3711_backlight_driver_init6 = internal global ptr @as3711_backlight_driver_init, section ".initcall6.init", align 4
@as3711_backlight_driver = internal global %struct.platform_driver { ptr @as3711_backlight_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_as3711_backlight_driver_exit = internal global ptr @as3711_backlight_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description266 = internal constant [56 x i8] c"as3711_bl.description=Backlight Driver for AS3711 PMICs\00", section ".modinfo", align 1
@__UNIQUE_ID_author267 = internal constant [62 x i8] c"as3711_bl.author=Guennadi Liakhovetski <g.liakhovetski@gmx.de\00", section ".modinfo", align 1
@__UNIQUE_ID_file268 = internal constant [49 x i8] c"as3711_bl.file=drivers/video/backlight/as3711_bl\00", section ".modinfo", align 1
@__UNIQUE_ID_license269 = internal constant [25 x i8] c"as3711_bl.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias270 = internal constant [42 x i8] c"as3711_bl.alias=platform:as3711-backlight\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [17 x i8] c"as3711-backlight\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"No platform data, exiting...\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"DT parsing failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"No framebuffer specified\0A\00", align 1
@.str.4 = private unnamed_addr constant [107 x i8] c"Attention! An untested mode has been chosen!\0APlease, review the code, enable, test, and report success:-)\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"su1-dev\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"su1-max-uA\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"su2-dev\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"su2-max-uA\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"su2-feedback-voltage\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"su2-feedback-curr1\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"su2-feedback-curr2\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"su2-feedback-curr3\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"su2-feedback-curr-auto\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"su2-fbprot-lx-sd4\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"su2-fbprot-gpio2\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"su2-fbprot-gpio3\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"su2-fbprot-gpio4\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"su2-auto-curr1\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"su2-auto-curr2\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"su2-auto-curr3\00", align 1
@__const.as3711_bl_register.props = private unnamed_addr constant %struct.backlight_properties { i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0 }, align 4
@.str.22 = private unnamed_addr constant [11 x i8] c"as3711-su1\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"as3711-su2\00", align 1
@as3711_bl_ops = internal constant %struct.backlight_ops { i32 0, ptr @as3711_bl_update_status, ptr @as3711_bl_get_brightness, ptr null }, align 4
@.str.24 = private unnamed_addr constant [30 x i8] c"failed to register backlight\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias270, ptr @__UNIQUE_ID_author267, ptr @__UNIQUE_ID_description266, ptr @__UNIQUE_ID_file268, ptr @__UNIQUE_ID_license269, ptr @__exitcall_as3711_backlight_driver_exit, ptr @__initcall__kmod_as3711_bl__265_477_as3711_backlight_driver_init6, ptr @as3711_backlight_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @as3711_backlight_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @as3711_backlight_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @as3711_backlight_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @as3711_backlight_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3711_backlight_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.backlight_properties, align 4
  %3 = alloca %struct.backlight_properties, align 4
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %8, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1) #10
  br label %284

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 25
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %147, label %19

19:                                               ; preds = %15
  %20 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %17, ptr noundef nonnull @.str.5) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %145, label %22

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #9, !annotation !8
  %23 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %20, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) #9
  %24 = icmp ne i32 %23, 0
  %25 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #9
  %26 = icmp eq ptr %25, null
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %22
  call void @of_node_put(ptr noundef nonnull %25) #9
  store i8 1, ptr %8, align 4
  %29 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %8, i32 0, i32 1
  %30 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %20, ptr noundef nonnull @.str.7, ptr noundef %29, i32 noundef 1, i32 noundef 0) #9
  %31 = call i32 @llvm.smin.i32(i32 %30, i32 0) #9
  %32 = load i32, ptr %29, align 4
  %33 = icmp slt i32 %32, 1
  %34 = select i1 %33, i32 -22, i32 %31
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %143, label %36

36:                                               ; preds = %28, %22
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #9, !annotation !8
  %37 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %20, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #9
  %38 = icmp ne i32 %37, 0
  %39 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #9
  %40 = icmp eq ptr %39, null
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %142, label %42

42:                                               ; preds = %36
  call void @of_node_put(ptr noundef nonnull %39) #9
  %43 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %8, i32 0, i32 2
  store i8 1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %8, i32 0, i32 3
  %45 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %20, ptr noundef nonnull @.str.9, ptr noundef %44, i32 noundef 1, i32 noundef 0) #9
  %46 = call i32 @llvm.smin.i32(i32 %45, i32 0) #9
  %47 = load i32, ptr %44, align 4
  %48 = icmp slt i32 %47, 1
  %49 = select i1 %48, i32 -22, i32 %46
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %143, label %51

51:                                               ; preds = %42
  %52 = call ptr @of_find_property(ptr noundef nonnull %20, ptr noundef nonnull @.str.10, ptr noundef null) #9
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %8, i32 0, i32 4
  store i32 0, ptr %55, align 4
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi i32 [ 1, %54 ], [ 0, %51 ]
  %58 = call ptr @of_find_property(ptr noundef nonnull %20, ptr noundef nonnull @.str.11, ptr noundef null) #9
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %8, i32 0, i32 4
  store i32 1, ptr %61, align 4
  %62 = add nuw nsw i32 %57, 1
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi i32 [ %62, %60 ], [ %57, %56 ]
  %65 = call ptr @of_find_property(ptr noundef nonnull %20, ptr noundef nonnull @.str.12, ptr noundef null) #9
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %8, i32 0, i32 4
  store i32 2, ptr %68, align 4
  %69 = add nuw nsw i32 %64, 1
  br label %70

70:                                               ; preds = %67, %63
  %71 = phi i32 [ %69, %67 ], [ %64, %63 ]
  %72 = call ptr @of_find_property(ptr noundef nonnull %20, ptr noundef nonnull @.str.13, ptr noundef null) #9
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %8, i32 0, i32 4
  store i32 3, ptr %75, align 4
  %76 = add nuw nsw i32 %71, 1
  br label %77

77:                                               ; preds = %74, %70
  %78 = phi i32 [ %76, %74 ], [ %71, %70 ]
  %79 = call ptr @of_find_property(ptr noundef nonnull %20, ptr noundef nonnull @.str.14, ptr noundef null) #9
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %8, i32 0, i32 4
  store i32 4, ptr %82, align 4
  %83 = add nuw nsw i32 %78, 1
  br label %84

84:                                               ; preds = %81, %77
  %85 = phi i32 [ %83, %81 ], [ %78, %77 ]
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %143

87:                                               ; preds = %84
  %88 = call ptr @of_find_property(ptr noundef nonnull %20, ptr noundef nonnull @.str.15, ptr noundef null) #9
  %89 = icmp eq ptr %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %8, i32 0, i32 5
  store i32 0, ptr %91, align 4
  br label %92

92:                                               ; preds = %90, %87
  %93 = phi i32 [ 1, %90 ], [ 0, %87 ]
  %94 = call ptr @of_find_property(ptr noundef nonnull %20, ptr noundef nonnull @.str.16, ptr noundef null) #9
  %95 = icmp eq ptr %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %8, i32 0, i32 5
  store i32 1, ptr %97, align 4
  %98 = add nuw nsw i32 %93, 1
  br label %99

99:                                               ; preds = %96, %92
  %100 = phi i32 [ %98, %96 ], [ %93, %92 ]
  %101 = call ptr @of_find_property(ptr noundef nonnull %20, ptr noundef nonnull @.str.17, ptr noundef null) #9
  %102 = icmp eq ptr %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %8, i32 0, i32 5
  store i32 2, ptr %104, align 4
  %105 = add nuw nsw i32 %100, 1
  br label %106

106:                                              ; preds = %103, %99
  %107 = phi i32 [ %105, %103 ], [ %100, %99 ]
  %108 = call ptr @of_find_property(ptr noundef nonnull %20, ptr noundef nonnull @.str.18, ptr noundef null) #9
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %8, i32 0, i32 5
  store i32 3, ptr %111, align 4
  %112 = add nuw nsw i32 %107, 1
  br label %113

113:                                              ; preds = %110, %106
  %114 = phi i32 [ %112, %110 ], [ %107, %106 ]
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %143

116:                                              ; preds = %113
  %117 = call ptr @of_find_property(ptr noundef nonnull %20, ptr noundef nonnull @.str.19, ptr noundef null) #9
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %8, i32 0, i32 6
  store i8 1, ptr %120, align 4
  br label %121

121:                                              ; preds = %119, %116
  %122 = phi i32 [ 1, %119 ], [ 0, %116 ]
  %123 = call ptr @of_find_property(ptr noundef nonnull %20, ptr noundef nonnull @.str.20, ptr noundef null) #9
  %124 = icmp eq ptr %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %8, i32 0, i32 7
  store i8 1, ptr %126, align 1
  br label %127

127:                                              ; preds = %125, %121
  %128 = phi i32 [ 1, %125 ], [ %122, %121 ]
  %129 = call ptr @of_find_property(ptr noundef nonnull %20, ptr noundef nonnull @.str.21, ptr noundef null) #9
  %130 = icmp eq ptr %129, null
  br i1 %130, label %136, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %8, i32 0, i32 8
  store i8 1, ptr %132, align 2
  %133 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %8, i32 0, i32 4
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, 4
  br i1 %135, label %142, label %143

136:                                              ; preds = %127
  %137 = icmp eq i32 %128, 0
  %138 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %8, i32 0, i32 4
  %139 = load i32, ptr %138, align 4
  %140 = icmp ne i32 %139, 4
  %141 = xor i1 %137, %140
  br i1 %141, label %143, label %142

142:                                              ; preds = %136, %131, %36
  call void @of_node_put(ptr noundef nonnull %20) #9
  br label %147

143:                                              ; preds = %136, %131, %113, %84, %42, %28
  %144 = phi i32 [ %34, %28 ], [ -22, %113 ], [ -22, %84 ], [ %49, %42 ], [ -22, %131 ], [ -22, %136 ]
  call void @of_node_put(ptr noundef nonnull %20) #9
  br label %145

145:                                              ; preds = %143, %19
  %146 = phi i32 [ %144, %143 ], [ -19, %19 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2, i32 noundef %146) #10
  br label %284

147:                                              ; preds = %142, %15
  %148 = load i8, ptr %8, align 4, !range !9
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %8, i32 0, i32 2
  %152 = load i8, ptr %151, align 4, !range !9
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.3) #10
  br label %284

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %8, i32 0, i32 5
  %157 = load i32, ptr %156, align 4
  %158 = icmp eq i32 %157, 3
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %8, i32 0, i32 4
  %161 = load i32, ptr %160, align 4
  %162 = icmp eq i32 %161, 4
  br i1 %162, label %164, label %163

163:                                              ; preds = %159, %155, %147
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.4) #10
  br label %284

164:                                              ; preds = %159
  %165 = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 40, i32 noundef 3520) #9
  %166 = icmp eq ptr %165, null
  br i1 %166, label %284, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.as3711_bl_supply, ptr %165, i32 0, i32 3
  store ptr %12, ptr %168, align 4
  %169 = getelementptr inbounds %struct.as3711_bl_supply, ptr %165, i32 0, i32 2
  store ptr %8, ptr %169, align 4
  %170 = load i8, ptr %8, align 4, !range !9
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %197, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.as3711_bl_data, ptr %165, i32 0, i32 1
  store i32 0, ptr %173, align 4
  %174 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %8, i32 0, i32 1
  %175 = load i32, ptr %174, align 4
  %176 = call i32 @llvm.smin.i32(i32 %175, i32 31)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef nonnull align 4 dereferenceable(28) @__const.as3711_bl_register.props, i32 28, i1 false) #9
  %177 = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 1
  store i32 %176, ptr %177, align 4
  %178 = call ptr @devm_backlight_device_register(ptr noundef %6, ptr noundef nonnull @.str.22, ptr noundef %6, ptr noundef nonnull %165, ptr noundef nonnull @as3711_bl_ops, ptr noundef nonnull %3) #9
  %179 = icmp ugt ptr %178, inttoptr (i32 -4096 to ptr)
  br i1 %179, label %194, label %180

180:                                              ; preds = %172
  %181 = load i32, ptr %177, align 4
  store i32 %181, ptr %178, align 8
  %182 = getelementptr inbounds %struct.backlight_device, ptr %178, i32 0, i32 1
  call void @mutex_lock(ptr noundef %182) #9
  %183 = getelementptr inbounds %struct.backlight_device, ptr %178, i32 0, i32 3
  %184 = load ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %192, label %186

186:                                              ; preds = %180
  %187 = getelementptr inbounds %struct.backlight_ops, ptr %184, i32 0, i32 1
  %188 = load ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %192, label %190

190:                                              ; preds = %186
  %191 = call i32 %188(ptr noundef %178) #9
  br label %192

192:                                              ; preds = %190, %186, %180
  call void @mutex_unlock(ptr noundef %182) #9
  %193 = getelementptr inbounds %struct.as3711_bl_data, ptr %165, i32 0, i32 3
  store ptr %178, ptr %193, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #9
  br label %197

194:                                              ; preds = %172
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.24) #10
  %195 = ptrtoint ptr %178 to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #9
  %196 = icmp slt ptr %178, null
  br i1 %196, label %284, label %197

197:                                              ; preds = %194, %192, %167
  %198 = load i8, ptr %151, align 4, !range !9
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %282, label %200

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.as3711_bl_supply, ptr %165, i32 0, i32 1
  %202 = getelementptr inbounds %struct.as3711_bl_supply, ptr %165, i32 0, i32 1, i32 1
  store i32 1, ptr %202, align 4
  %203 = load i32, ptr %156, align 4
  %204 = icmp ult i32 %203, 4
  br i1 %204, label %205, label %284

205:                                              ; preds = %200
  %206 = load i32, ptr %160, align 4
  switch i32 %206, label %284 [
    i32 0, label %207
    i32 1, label %211
    i32 2, label %211
    i32 3, label %211
    i32 4, label %211
  ]

207:                                              ; preds = %205
  %208 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %8, i32 0, i32 3
  %209 = load i32, ptr %208, align 4
  %210 = call i32 @llvm.smin.i32(i32 %209, i32 31)
  br label %216

211:                                              ; preds = %205, %205, %205, %205
  %212 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %8, i32 0, i32 3
  %213 = load i32, ptr %212, align 4
  %214 = sdiv i32 %213, 150
  %215 = call i32 @llvm.smin.i32(i32 %214, i32 255)
  br label %216

216:                                              ; preds = %211, %207
  %217 = phi i32 [ %215, %211 ], [ %210, %207 ]
  %218 = load ptr, ptr %168, align 4
  %219 = load ptr, ptr %169, align 4
  %220 = getelementptr inbounds %struct.as3711, ptr %218, i32 0, i32 1
  %221 = load ptr, ptr %220, align 4
  %222 = call i32 @regmap_write(ptr noundef %221, i32 noundef 81, i32 noundef 0) #9
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %284, label %224

224:                                              ; preds = %216
  %225 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %219, i32 0, i32 4
  %226 = load i32, ptr %225, align 4
  switch i32 %226, label %284 [
    i32 0, label %245
    i32 1, label %227
    i32 2, label %228
    i32 3, label %229
    i32 4, label %230
  ]

227:                                              ; preds = %224
  br label %245

228:                                              ; preds = %224
  br label %245

229:                                              ; preds = %224
  br label %245

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %219, i32 0, i32 6
  %232 = load i8, ptr %231, align 4, !range !9
  %233 = icmp eq i8 %232, 0
  %234 = select i1 %233, i8 0, i8 2
  %235 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %219, i32 0, i32 7
  %236 = load i8, ptr %235, align 1, !range !9
  %237 = icmp eq i8 %236, 0
  %238 = or i8 %234, 8
  %239 = select i1 %237, i8 %234, i8 %238
  %240 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %219, i32 0, i32 8
  %241 = load i8, ptr %240, align 2, !range !9
  %242 = icmp eq i8 %241, 0
  %243 = or i8 %239, 32
  %244 = select i1 %242, i8 %239, i8 %243
  br label %250

245:                                              ; preds = %229, %228, %227, %224
  %246 = phi i8 [ 16, %229 ], [ 4, %228 ], [ 1, %227 ], [ 0, %224 ]
  %247 = load ptr, ptr %220, align 4
  %248 = call i32 @regmap_update_bits_base(ptr noundef %247, i32 noundef 83, i32 noundef 3, i32 noundef %226, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %245, %230
  %251 = phi i8 [ %244, %230 ], [ %246, %245 ]
  %252 = load ptr, ptr %220, align 4
  %253 = zext i8 %251 to i32
  %254 = call i32 @regmap_write(ptr noundef %252, i32 noundef 64, i32 noundef %253) #9
  br label %255

255:                                              ; preds = %250, %245
  %256 = phi i32 [ %248, %245 ], [ %254, %250 ]
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %284, label %258

258:                                              ; preds = %255
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef nonnull align 4 dereferenceable(28) @__const.as3711_bl_register.props, i32 28, i1 false) #9
  %259 = getelementptr inbounds %struct.backlight_properties, ptr %2, i32 0, i32 1
  store i32 %217, ptr %259, align 4
  %260 = load i32, ptr %202, align 4
  %261 = icmp eq i32 %260, 0
  %262 = select i1 %261, ptr @.str.22, ptr @.str.23
  %263 = call ptr @devm_backlight_device_register(ptr noundef %6, ptr noundef nonnull %262, ptr noundef %6, ptr noundef %201, ptr noundef nonnull @as3711_bl_ops, ptr noundef nonnull %2) #9
  %264 = icmp ugt ptr %263, inttoptr (i32 -4096 to ptr)
  br i1 %264, label %279, label %265

265:                                              ; preds = %258
  %266 = load i32, ptr %259, align 4
  store i32 %266, ptr %263, align 8
  %267 = getelementptr inbounds %struct.backlight_device, ptr %263, i32 0, i32 1
  call void @mutex_lock(ptr noundef %267) #9
  %268 = getelementptr inbounds %struct.backlight_device, ptr %263, i32 0, i32 3
  %269 = load ptr, ptr %268, align 4
  %270 = icmp eq ptr %269, null
  br i1 %270, label %277, label %271

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.backlight_ops, ptr %269, i32 0, i32 1
  %273 = load ptr, ptr %272, align 4
  %274 = icmp eq ptr %273, null
  br i1 %274, label %277, label %275

275:                                              ; preds = %271
  %276 = call i32 %273(ptr noundef %263) #9
  br label %277

277:                                              ; preds = %275, %271, %265
  call void @mutex_unlock(ptr noundef %267) #9
  %278 = getelementptr inbounds %struct.as3711_bl_supply, ptr %165, i32 0, i32 1, i32 3
  store ptr %263, ptr %278, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #9
  br label %282

279:                                              ; preds = %258
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.24) #10
  %280 = ptrtoint ptr %263 to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #9
  %281 = icmp slt ptr %263, null
  br i1 %281, label %284, label %282

282:                                              ; preds = %279, %277, %197
  %283 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %165, ptr %283, align 8
  br label %284

284:                                              ; preds = %282, %279, %255, %224, %216, %205, %200, %194, %164, %163, %154, %145, %14
  %285 = phi i32 [ %146, %145 ], [ -22, %163 ], [ 0, %282 ], [ -22, %154 ], [ -19, %14 ], [ -12, %164 ], [ %195, %194 ], [ -22, %200 ], [ -22, %205 ], [ %256, %255 ], [ %280, %279 ], [ -22, %224 ], [ %222, %216 ]
  ret i32 %285
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3711_bl_update_status(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 6, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.as3711_bl_data, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %8 [
    i32 0, label %9
    i32 1, label %6
  ]

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %3, i32 -16
  br label %9

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %8, %6, %1
  %10 = phi ptr [ null, %8 ], [ %7, %6 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.as3711_bl_supply, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.backlight_properties, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.backlight_properties, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.backlight_properties, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 3
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, ptr %0, align 8
  br label %27

27:                                               ; preds = %25, %20, %16, %9
  %28 = phi i32 [ %26, %25 ], [ 0, %20 ], [ 0, %16 ], [ 0, %9 ]
  %29 = icmp eq i32 %5, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = icmp ugt i32 %28, 31
  br i1 %31, label %164, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.as3711, ptr %12, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = shl nuw nsw i32 %28, 4
  %36 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 80, i32 noundef 240, i32 noundef %35, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %159

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.as3711_bl_supply, ptr %10, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %39, i32 0, i32 4
  %41 = load i32, ptr %40, align 4
  switch i32 %41, label %164 [
    i32 0, label %42
    i32 4, label %49
    i32 1, label %147
    i32 2, label %151
    i32 3, label %155
  ]

42:                                               ; preds = %37
  %43 = icmp ugt i32 %28, 31
  br i1 %43, label %164, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.as3711, ptr %12, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = shl nuw nsw i32 %28, 4
  %48 = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 81, i32 noundef 240, i32 noundef %47, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %159

49:                                               ; preds = %37
  %50 = sdiv i32 %28, 4
  %51 = icmp eq i32 %5, 1
  %52 = getelementptr i8, ptr %3, i32 -16
  %53 = select i1 %51, ptr %52, ptr null
  %54 = getelementptr inbounds %struct.as3711_bl_supply, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.as3711_bl_supply, ptr %53, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %57, i32 0, i32 6
  %59 = load i8, ptr %58, align 4, !range !9
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %49
  %62 = getelementptr inbounds %struct.as3711, ptr %55, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 @regmap_write(ptr noundef %63, i32 noundef 67, i32 noundef %50) #9
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %61, %49
  %67 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %57, i32 0, i32 7
  %68 = load i8, ptr %67, align 1, !range !9
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.as3711, ptr %55, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 @regmap_write(ptr noundef %72, i32 noundef 68, i32 noundef %50) #9
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70, %66
  %76 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %57, i32 0, i32 8
  %77 = load i8, ptr %76, align 2, !range !9
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.as3711, ptr %55, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = tail call i32 @regmap_write(ptr noundef %81, i32 noundef 69, i32 noundef %50) #9
  br label %83

83:                                               ; preds = %79, %70, %61
  %84 = phi i32 [ %73, %70 ], [ %82, %79 ], [ %64, %61 ]
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %164, label %86

86:                                               ; preds = %83, %75
  %87 = icmp eq i32 %28, 0
  br i1 %87, label %143, label %88

88:                                               ; preds = %86
  %89 = load ptr, ptr %11, align 4
  %90 = getelementptr inbounds %struct.as3711, ptr %89, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = load ptr, ptr %38, align 4
  %93 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %92, i32 0, i32 5
  %94 = load i32, ptr %93, align 4
  %95 = tail call i32 @regmap_update_bits_base(ptr noundef %91, i32 noundef 84, i32 noundef 3, i32 noundef %94, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %88
  %98 = load ptr, ptr %90, align 4
  %99 = tail call i32 @regmap_update_bits_base(ptr noundef %98, i32 noundef 81, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load ptr, ptr %90, align 4
  %103 = tail call i32 @regmap_update_bits_base(ptr noundef %102, i32 noundef 81, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %104

104:                                              ; preds = %101, %97, %88
  %105 = phi i32 [ %99, %97 ], [ %103, %101 ], [ %95, %88 ]
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %164, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %108(i32 noundef 107374000) #9
  %109 = load i32, ptr %4, align 4
  switch i32 %109, label %111 [
    i32 0, label %112
    i32 1, label %110
  ]

110:                                              ; preds = %107
  br label %112

111:                                              ; preds = %107
  br label %112

112:                                              ; preds = %111, %110, %107
  %113 = phi ptr [ null, %111 ], [ %52, %110 ], [ %3, %107 ]
  %114 = getelementptr inbounds %struct.as3711_bl_supply, ptr %113, i32 0, i32 3
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.as3711_bl_supply, ptr %113, i32 0, i32 2
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %117, i32 0, i32 6
  %119 = load i8, ptr %118, align 4, !range !9
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %112
  %122 = getelementptr inbounds %struct.as3711, ptr %115, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = tail call i32 @regmap_write(ptr noundef %123, i32 noundef 67, i32 noundef %28) #9
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %164

126:                                              ; preds = %121, %112
  %127 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %117, i32 0, i32 7
  %128 = load i8, ptr %127, align 1, !range !9
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.as3711, ptr %115, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  %133 = tail call i32 @regmap_write(ptr noundef %132, i32 noundef 68, i32 noundef %28) #9
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %164

135:                                              ; preds = %130, %126
  %136 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %117, i32 0, i32 8
  %137 = load i8, ptr %136, align 2, !range !9
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %162, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.as3711, ptr %115, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = tail call i32 @regmap_write(ptr noundef %141, i32 noundef 69, i32 noundef %28) #9
  br label %159

143:                                              ; preds = %86
  %144 = getelementptr inbounds %struct.as3711, ptr %12, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = tail call i32 @regmap_update_bits_base(ptr noundef %145, i32 noundef 81, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %159

147:                                              ; preds = %37
  %148 = getelementptr inbounds %struct.as3711, ptr %12, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = tail call i32 @regmap_write(ptr noundef %149, i32 noundef 67, i32 noundef %28) #9
  br label %159

151:                                              ; preds = %37
  %152 = getelementptr inbounds %struct.as3711, ptr %12, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = tail call i32 @regmap_write(ptr noundef %153, i32 noundef 68, i32 noundef %28) #9
  br label %159

155:                                              ; preds = %37
  %156 = getelementptr inbounds %struct.as3711, ptr %12, i32 0, i32 1
  %157 = load ptr, ptr %156, align 4
  %158 = tail call i32 @regmap_write(ptr noundef %157, i32 noundef 69, i32 noundef %28) #9
  br label %159

159:                                              ; preds = %155, %151, %147, %143, %139, %44, %32
  %160 = phi i32 [ %36, %32 ], [ %142, %139 ], [ %48, %44 ], [ %146, %143 ], [ %150, %147 ], [ %154, %151 ], [ %158, %155 ]
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %159, %135
  %163 = getelementptr inbounds %struct.as3711_bl_data, ptr %3, i32 0, i32 2
  store i32 %28, ptr %163, align 4
  br label %164

164:                                              ; preds = %162, %159, %130, %121, %104, %83, %42, %37, %30
  %165 = phi i32 [ 0, %162 ], [ %160, %159 ], [ %84, %83 ], [ %105, %104 ], [ -22, %30 ], [ -22, %37 ], [ -22, %42 ], [ %133, %130 ], [ %124, %121 ]
  ret i32 %165
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @as3711_bl_get_brightness(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 6, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.as3711_bl_data, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
