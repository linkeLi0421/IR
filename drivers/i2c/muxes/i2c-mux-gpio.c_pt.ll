; ModuleID = '/llk/IR/drivers/i2c/muxes/i2c-mux-gpio.c_pt.bc'
source_filename = "../drivers/i2c/muxes/i2c-mux-gpio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_mux_gpio_platform_data = type { i32, i32, ptr, i32, ptr, i32 }
%struct.gpiomux = type { %struct.i2c_mux_gpio_platform_data, i32, ptr }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%struct.gpio_device = type { i32, %struct.device, %struct.cdev, ptr, ptr, ptr, ptr, i32, i16, ptr, ptr, %struct.list_head, %struct.blocking_notifier_head, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }

@__initcall__kmod_i2c_mux_gpio__247_253_i2c_mux_gpio_driver_init6 = internal global ptr @i2c_mux_gpio_driver_init, section ".initcall6.init", align 4
@i2c_mux_gpio_driver = internal global %struct.platform_driver { ptr @i2c_mux_gpio_probe, ptr @i2c_mux_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @i2c_mux_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_i2c_mux_gpio_driver_exit = internal global ptr @i2c_mux_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description248 = internal constant [59 x i8] c"i2c_mux_gpio.description=GPIO-based I2C multiplexer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [64 x i8] c"i2c_mux_gpio.author=Peter Korsgaard <peter.korsgaard@barco.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [49 x i8] c"i2c_mux_gpio.file=drivers/i2c/muxes/i2c-mux-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [25 x i8] c"i2c_mux_gpio.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias252 = internal constant [41 x i8] c"i2c_mux_gpio.alias=platform:i2c-mux-gpio\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"i2c-mux-gpio\00", align 1
@i2c_mux_gpio_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"i2c-mux-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"mux\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"no valid gpios provided\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"mux-locked i2c mux\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%d port mux on %s adapter\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"i2c-parent\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Cannot parse i2c-parent\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Cannot allocate values array\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"idle-state\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias252, ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_i2c_mux_gpio_driver_exit, ptr @__initcall__kmod_i2c_mux_gpio__247_253_i2c_mux_gpio_driver_init6, ptr @i2c_mux_gpio_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @i2c_mux_gpio_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @i2c_mux_gpio_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @i2c_mux_gpio_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @i2c_mux_gpio_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_mux_gpio_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 32, i32 noundef 3520) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %180, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %70

10:                                               ; preds = %6
  %11 = tail call ptr @dev_fwnode(ptr noundef %3) #8
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %11, null
  %15 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %16 = or i1 %14, %15
  br i1 %16, label %180, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.fwnode_handle, ptr %11, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, @of_fwnode_ops
  br i1 %20, label %21, label %180

21:                                               ; preds = %17
  %22 = icmp eq ptr %13, null
  br i1 %22, label %180, label %23

23:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #8, !annotation !8
  %24 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %13, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #8
  %25 = icmp ne i32 %24, 0
  %26 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  %27 = icmp eq ptr %26, null
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #9
  br label %180

30:                                               ; preds = %23
  %31 = call ptr @of_find_i2c_adapter_by_node(ptr noundef nonnull %26) #8
  call void @of_node_put(ptr noundef nonnull %26) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %180, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.i2c_adapter, ptr %31, i32 0, i32 11
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %4, align 4
  %36 = getelementptr inbounds %struct.i2c_adapter, ptr %31, i32 0, i32 9
  call void @put_device(ptr noundef %36) #8
  %37 = call i32 @device_get_child_node_count(ptr noundef %3) #8
  %38 = getelementptr inbounds %struct.i2c_mux_gpio_platform_data, ptr %4, i32 0, i32 3
  store i32 %37, ptr %38, align 4
  %39 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %37, i32 4) #8
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %45, label %41, !prof !9

41:                                               ; preds = %33
  %42 = extractvalue { i32, i1 } %39, 0
  %43 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %42, i32 noundef 3520) #8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %33
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #9
  br label %180

46:                                               ; preds = %41
  %47 = call ptr @device_get_next_child_node(ptr noundef %3, ptr noundef null) #8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %64, label %49

49:                                               ; preds = %60, %46
  %50 = phi i32 [ %61, %60 ], [ 0, %46 ]
  %51 = phi ptr [ %62, %60 ], [ %47, %46 ]
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.fwnode_handle, ptr %51, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, @of_fwnode_ops
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = getelementptr i32, ptr %43, i32 %50
  %59 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %51, ptr noundef nonnull @.str.8, ptr noundef %58, i32 noundef 1) #8
  br label %60

60:                                               ; preds = %57, %53, %49
  %61 = add i32 %50, 1
  %62 = call ptr @device_get_next_child_node(ptr noundef %3, ptr noundef nonnull %51) #8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %49

64:                                               ; preds = %60, %46
  %65 = getelementptr inbounds %struct.i2c_mux_gpio_platform_data, ptr %4, i32 0, i32 2
  store ptr %43, ptr %65, align 4
  %66 = getelementptr inbounds %struct.i2c_mux_gpio_platform_data, ptr %4, i32 0, i32 5
  %67 = call i32 @device_property_read_u32_array(ptr noundef %3, ptr noundef nonnull @.str.10, ptr noundef %66, i32 noundef 1) #8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  store i32 -1, ptr %66, align 4
  br label %71

70:                                               ; preds = %6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(24) %8, i32 24, i1 false)
  br label %71

71:                                               ; preds = %70, %69, %64
  %72 = call i32 @gpiod_count(ptr noundef %3, ptr noundef nonnull @.str.1) #8
  %73 = icmp slt i32 %72, 1
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #9
  %75 = icmp eq i32 %72, 0
  %76 = select i1 %75, i32 -22, i32 %72
  br label %180

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.gpiomux, ptr %4, i32 0, i32 1
  store i32 %72, ptr %78, align 4
  %79 = load i32, ptr %4, align 4
  %80 = call ptr @i2c_get_adapter(i32 noundef %79) #8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %180, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.i2c_mux_gpio_platform_data, ptr %4, i32 0, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %72, i32 4) #8
  %86 = extractvalue { i32, i1 } %85, 1
  %87 = extractvalue { i32, i1 } %85, 0
  %88 = select i1 %86, i32 -1, i32 %87
  %89 = call ptr @i2c_mux_alloc(ptr noundef nonnull %80, ptr noundef %3, i32 noundef %84, i32 noundef %88, i32 noundef 0, ptr noundef nonnull @i2c_mux_gpio_select, ptr noundef null) #8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %178, label %91

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.i2c_mux_core, ptr %89, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.gpiomux, ptr %4, i32 0, i32 2
  store ptr %93, ptr %94, align 4
  store ptr %4, ptr %92, align 4
  %95 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %89, ptr %95, align 8
  %96 = getelementptr inbounds %struct.i2c_adapter, ptr %80, i32 0, i32 9
  %97 = call ptr @i2c_root_adapter(ptr noundef %96) #8
  %98 = getelementptr inbounds %struct.i2c_mux_core, ptr %89, i32 0, i32 2
  %99 = load i8, ptr %98, align 4
  %100 = or i8 %99, 1
  store i8 %100, ptr %98, align 4
  %101 = getelementptr inbounds %struct.i2c_mux_gpio_platform_data, ptr %4, i32 0, i32 5
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %106, label %104

104:                                              ; preds = %91
  %105 = getelementptr inbounds %struct.i2c_mux_core, ptr %89, i32 0, i32 5
  store ptr @i2c_mux_gpio_deselect, ptr %105, align 4
  br label %110

106:                                              ; preds = %91
  %107 = getelementptr inbounds %struct.i2c_mux_gpio_platform_data, ptr %4, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  %109 = load i32, ptr %108, align 4
  br label %110

110:                                              ; preds = %106, %104
  %111 = phi i32 [ %102, %104 ], [ %109, %106 ]
  br label %112

112:                                              ; preds = %137, %110
  %113 = phi i32 [ %139, %137 ], [ 0, %110 ]
  %114 = shl nuw i32 1, %113
  %115 = and i32 %114, %111
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %116, i32 3, i32 7
  %118 = call ptr @devm_gpiod_get_index(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %113, i32 noundef %117) #8
  %119 = icmp ugt ptr %118, inttoptr (i32 -4096 to ptr)
  br i1 %119, label %135, label %120

120:                                              ; preds = %112
  %121 = load ptr, ptr %94, align 4
  %122 = getelementptr ptr, ptr %121, i32 %113
  store ptr %118, ptr %122, align 4
  %123 = load i8, ptr %98, align 4
  %124 = and i8 %123, 1
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %120
  %127 = load ptr, ptr %118, align 4
  %128 = getelementptr inbounds %struct.gpio_device, ptr %127, i32 0, i32 1
  %129 = call ptr @i2c_root_adapter(ptr noundef %128) #8
  %130 = icmp eq ptr %129, %97
  %131 = zext i1 %130 to i8
  %132 = load i8, ptr %98, align 4
  %133 = and i8 %132, -2
  %134 = or i8 %133, %131
  store i8 %134, ptr %98, align 4
  br label %137

135:                                              ; preds = %112
  %136 = ptrtoint ptr %118 to i32
  br label %178

137:                                              ; preds = %126, %120
  %138 = phi i8 [ %134, %126 ], [ %123, %120 ]
  %139 = add nuw nsw i32 %113, 1
  %140 = icmp eq i32 %139, %72
  br i1 %140, label %141, label %112

141:                                              ; preds = %137
  %142 = and i8 %138, 1
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %141
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.3) #9
  br label %145

145:                                              ; preds = %144, %141
  %146 = load i32, ptr %83, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %174

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.i2c_mux_gpio_platform_data, ptr %4, i32 0, i32 1
  %150 = getelementptr inbounds %struct.i2c_mux_gpio_platform_data, ptr %4, i32 0, i32 4
  %151 = getelementptr inbounds %struct.i2c_mux_gpio_platform_data, ptr %4, i32 0, i32 2
  br label %156

152:                                              ; preds = %167
  %153 = add nuw nsw i32 %157, 1
  %154 = load i32, ptr %83, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %174

156:                                              ; preds = %152, %148
  %157 = phi i32 [ 0, %148 ], [ %153, %152 ]
  %158 = load i32, ptr %149, align 4
  %159 = icmp eq i32 %158, 0
  %160 = add i32 %158, %157
  %161 = select i1 %159, i32 0, i32 %160
  %162 = load ptr, ptr %150, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %156
  %165 = getelementptr i32, ptr %162, i32 %157
  %166 = load i32, ptr %165, align 4
  br label %167

167:                                              ; preds = %164, %156
  %168 = phi i32 [ %166, %164 ], [ 0, %156 ]
  %169 = load ptr, ptr %151, align 4
  %170 = getelementptr i32, ptr %169, i32 %157
  %171 = load i32, ptr %170, align 4
  %172 = call i32 @i2c_mux_add_adapter(ptr noundef nonnull %89, i32 noundef %161, i32 noundef %171, i32 noundef %168) #8
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %152, label %177

174:                                              ; preds = %152, %145
  %175 = phi i32 [ %146, %145 ], [ %154, %152 ]
  %176 = getelementptr inbounds %struct.i2c_adapter, ptr %80, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %175, ptr noundef %176) #9
  br label %180

177:                                              ; preds = %167
  call void @i2c_mux_del_adapters(ptr noundef nonnull %89) #8
  br label %178

178:                                              ; preds = %177, %135, %82
  %179 = phi i32 [ %136, %135 ], [ %172, %177 ], [ -12, %82 ]
  call void @i2c_put_adapter(ptr noundef nonnull %80) #8
  br label %180

180:                                              ; preds = %178, %174, %77, %74, %45, %30, %29, %21, %17, %10, %1
  %181 = phi i32 [ %76, %74 ], [ %179, %178 ], [ 0, %174 ], [ -12, %1 ], [ -517, %77 ], [ -517, %10 ], [ -517, %17 ], [ -517, %30 ], [ -19, %21 ], [ -19, %29 ], [ -12, %45 ]
  ret i32 %181
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_mux_gpio_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @i2c_mux_del_adapters(ptr noundef %3) #8
  %4 = load ptr, ptr %3, align 4
  tail call void @i2c_put_adapter(ptr noundef %4) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_count(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_get_adapter(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_mux_gpio_select(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca [1 x i32], align 4
  %4 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 %1, ptr %3, align 4
  %6 = getelementptr inbounds %struct.gpiomux, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gpiomux, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @gpiod_set_array_value_cansleep(i32 noundef %7, ptr noundef %9, ptr noundef null, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_root_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_mux_gpio_deselect(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca [1 x i32], align 4
  %4 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_mux_gpio_platform_data, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 %7, ptr %3, align 4
  %8 = getelementptr inbounds %struct.gpiomux, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.gpiomux, ptr %5, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @gpiod_set_array_value_cansleep(i32 noundef %9, ptr noundef %11, ptr noundef null, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_array_value_cansleep(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
