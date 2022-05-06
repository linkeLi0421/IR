; ModuleID = '/llk/IR/drivers/i2c/muxes/i2c-mux-pinctrl.c_pt.bc'
source_filename = "../drivers/i2c/muxes/i2c-mux-pinctrl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%struct.i2c_mux_pinctrl = type { ptr, [0 x ptr] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.pinctrl_state = type { %struct.list_head, ptr, %struct.list_head }
%struct.pinctrl_setting = type { %struct.list_head, i32, ptr, ptr, %union.anon.71 }
%union.anon.71 = type { %struct.pinctrl_setting_configs }
%struct.pinctrl_setting_configs = type { i32, ptr, i32 }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_i2c_mux_pinctrl__247_193_i2c_mux_pinctrl_driver_init6 = internal global ptr @i2c_mux_pinctrl_driver_init, section ".initcall6.init", align 4
@i2c_mux_pinctrl_driver = internal global %struct.platform_driver { ptr @i2c_mux_pinctrl_probe, ptr @i2c_mux_pinctrl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @i2c_mux_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_i2c_mux_pinctrl_driver_exit = internal global ptr @i2c_mux_pinctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description248 = internal constant [65 x i8] c"i2c_mux_pinctrl.description=pinctrl-based I2C multiplexer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [59 x i8] c"i2c_mux_pinctrl.author=Stephen Warren <swarren@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [55 x i8] c"i2c_mux_pinctrl.file=drivers/i2c/muxes/i2c-mux-pinctrl\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [31 x i8] c"i2c_mux_pinctrl.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias252 = internal constant [47 x i8] c"i2c_mux_pinctrl.alias=platform:i2c-mux-pinctrl\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"i2c-mux-pinctrl\00", align 1
@i2c_mux_pinctrl_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"i2c-mux-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"pinctrl-names\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Cannot parse pinctrl-names: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Cannot get pinctrl: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Cannot look up pinctrl state %s: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"idle state must be last\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"mux-locked i2c mux\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"i2c-parent\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Cannot parse i2c-parent\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias252, ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_i2c_mux_pinctrl_driver_exit, ptr @__initcall__kmod_i2c_mux_pinctrl__247_193_i2c_mux_pinctrl_driver_init6, ptr @i2c_mux_pinctrl_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @i2c_mux_pinctrl_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @i2c_mux_pinctrl_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @i2c_mux_pinctrl_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @i2c_mux_pinctrl_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_mux_pinctrl_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !8
  %7 = tail call i32 @of_property_read_string_helper(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %7) #9
  br label %140

10:                                               ; preds = %1
  %11 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #8, !annotation !8
  %12 = call i32 @__of_parse_phandle_with_args(ptr noundef %11, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #8
  %13 = icmp ne i32 %12, 0
  %14 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  %15 = icmp eq ptr %14, null
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9) #9
  br label %23

18:                                               ; preds = %10
  %19 = call ptr @of_find_i2c_adapter_by_node(ptr noundef nonnull %14) #8
  call void @of_node_put(ptr noundef nonnull %14) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %26

23:                                               ; preds = %21, %18, %17
  %24 = phi ptr [ %19, %21 ], [ inttoptr (i32 -19 to ptr), %17 ], [ inttoptr (i32 -517 to ptr), %18 ]
  %25 = ptrtoint ptr %24 to i32
  br label %140

26:                                               ; preds = %21
  %27 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 4) #8
  %28 = extractvalue { i32, i1 } %27, 1
  %29 = extractvalue { i32, i1 } %27, 0
  %30 = call i32 @llvm.uadd.sat.i32(i32 %29, i32 4) #8
  %31 = select i1 %28, i32 -1, i32 %30
  %32 = call ptr @i2c_mux_alloc(ptr noundef nonnull %19, ptr noundef %4, i32 noundef %7, i32 noundef %31, i32 noundef 0, ptr noundef nonnull @i2c_mux_pinctrl_select, ptr noundef null) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %138, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.i2c_mux_core, ptr %32, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %32, ptr %37, align 8
  %38 = call ptr @devm_pinctrl_get(ptr noundef %4) #8
  store ptr %38, ptr %36, align 4
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = icmp eq i32 %7, 0
  br i1 %41, label %72, label %42

42:                                               ; preds = %40
  %43 = add nsw i32 %7, -1
  %44 = getelementptr inbounds %struct.i2c_mux_core, ptr %32, i32 0, i32 5
  br label %47

45:                                               ; preds = %34
  %46 = ptrtoint ptr %38 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef %46) #9
  br label %138

47:                                               ; preds = %69, %42
  %48 = phi i32 [ 0, %42 ], [ %70, %69 ]
  %49 = call i32 @of_property_read_string_helper(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %48) #8
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %49) #9
  br label %138

52:                                               ; preds = %47
  %53 = load ptr, ptr %36, align 4
  %54 = load ptr, ptr %3, align 4
  %55 = call ptr @pinctrl_lookup_state(ptr noundef %53, ptr noundef %54) #8
  %56 = getelementptr %struct.i2c_mux_pinctrl, ptr %36, i32 0, i32 1, i32 %48
  store ptr %55, ptr %56, align 4
  %57 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = ptrtoint ptr %55 to i32
  %60 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef %60, i32 noundef %59) #9
  br label %138

61:                                               ; preds = %52
  %62 = load ptr, ptr %3, align 4
  %63 = call i32 @strcmp(ptr noundef %62, ptr noundef nonnull dereferenceable(5) @.str.5)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = icmp eq i32 %48, %43
  br i1 %66, label %68, label %67

67:                                               ; preds = %65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #9
  br label %138

68:                                               ; preds = %65
  store ptr @i2c_mux_pinctrl_deselect, ptr %44, align 4
  br label %69

69:                                               ; preds = %68, %61
  %70 = add nuw nsw i32 %48, 1
  %71 = icmp eq i32 %70, %7
  br i1 %71, label %72, label %47

72:                                               ; preds = %69, %40
  %73 = load ptr, ptr %32, align 4
  %74 = getelementptr inbounds %struct.i2c_adapter, ptr %73, i32 0, i32 9
  %75 = call ptr @i2c_root_adapter(ptr noundef %74) #8
  %76 = getelementptr inbounds %struct.i2c_mux_core, ptr %32, i32 0, i32 2
  %77 = load i8, ptr %76, align 4
  %78 = or i8 %77, 1
  store i8 %78, ptr %76, align 4
  br i1 %41, label %114, label %82

79:                                               ; preds = %106
  %80 = add nuw nsw i32 %83, 1
  %81 = icmp eq i32 %80, %7
  br i1 %81, label %112, label %82

82:                                               ; preds = %79, %72
  %83 = phi i32 [ %80, %79 ], [ 0, %72 ]
  %84 = getelementptr %struct.i2c_mux_pinctrl, ptr %36, i32 0, i32 1, i32 %83
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.pinctrl_state, ptr %85, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, %86
  br i1 %88, label %106, label %89

89:                                               ; preds = %102, %82
  %90 = phi ptr [ %104, %102 ], [ %87, %82 ]
  %91 = phi ptr [ %103, %102 ], [ null, %82 ]
  %92 = getelementptr inbounds %struct.pinctrl_setting, ptr %90, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.pinctrl_dev, ptr %93, i32 0, i32 8
  %95 = load ptr, ptr %94, align 4
  %96 = call ptr @i2c_root_adapter(ptr noundef %95) #8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %106, label %98

98:                                               ; preds = %89
  %99 = icmp eq ptr %91, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %98
  %101 = icmp eq ptr %91, %96
  br i1 %101, label %102, label %106

102:                                              ; preds = %100, %98
  %103 = phi ptr [ %91, %100 ], [ %96, %98 ]
  %104 = load ptr, ptr %90, align 4
  %105 = icmp eq ptr %104, %86
  br i1 %105, label %106, label %89

106:                                              ; preds = %102, %100, %89, %82
  %107 = phi ptr [ null, %82 ], [ null, %89 ], [ null, %100 ], [ %103, %102 ]
  %108 = icmp eq ptr %75, %107
  br i1 %108, label %79, label %109

109:                                              ; preds = %106
  %110 = load i8, ptr %76, align 4
  %111 = and i8 %110, -2
  store i8 %111, ptr %76, align 4
  br label %114

112:                                              ; preds = %79
  %113 = load i8, ptr %76, align 4
  br label %114

114:                                              ; preds = %112, %109, %72
  %115 = phi i8 [ %113, %112 ], [ %78, %72 ], [ %111, %109 ]
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.7) #9
  br label %119

119:                                              ; preds = %118, %114
  %120 = getelementptr inbounds %struct.i2c_mux_core, ptr %32, i32 0, i32 5
  %121 = load ptr, ptr %120, align 4
  %122 = icmp ne ptr %121, null
  %123 = sext i1 %122 to i32
  %124 = add i32 %7, %123
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %133, label %140

126:                                              ; preds = %133
  %127 = add nuw nsw i32 %134, 1
  %128 = load ptr, ptr %120, align 4
  %129 = icmp ne ptr %128, null
  %130 = sext i1 %129 to i32
  %131 = add i32 %7, %130
  %132 = icmp slt i32 %127, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %126, %119
  %134 = phi i32 [ %127, %126 ], [ 0, %119 ]
  %135 = call i32 @i2c_mux_add_adapter(ptr noundef nonnull %32, i32 noundef 0, i32 noundef %134, i32 noundef 0) #8
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %126, label %137

137:                                              ; preds = %133
  call void @i2c_mux_del_adapters(ptr noundef nonnull %32) #8
  br label %138

138:                                              ; preds = %137, %67, %58, %51, %45, %26
  %139 = phi i32 [ %46, %45 ], [ %49, %51 ], [ %59, %58 ], [ -22, %67 ], [ %135, %137 ], [ -12, %26 ]
  call void @i2c_put_adapter(ptr noundef nonnull %19) #8
  br label %140

140:                                              ; preds = %138, %126, %119, %23, %9
  %141 = phi i32 [ %7, %9 ], [ %25, %23 ], [ %139, %138 ], [ 0, %119 ], [ 0, %126 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_mux_pinctrl_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @i2c_mux_del_adapters(ptr noundef %3) #8
  %4 = load ptr, ptr %3, align 4
  tail call void @i2c_put_adapter(ptr noundef %4) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_mux_pinctrl_select(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.i2c_mux_pinctrl, ptr %4, i32 0, i32 1, i32 %1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @pinctrl_select_state(ptr noundef %5, ptr noundef %7) #8
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_mux_pinctrl_deselect(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.i2c_mux_pinctrl, ptr %6, i32 0, i32 1, i32 %4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @pinctrl_select_state(ptr noundef %7, ptr noundef %9) #8
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_root_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
