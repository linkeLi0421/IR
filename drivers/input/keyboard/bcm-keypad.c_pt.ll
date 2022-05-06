; ModuleID = '/llk/IR/drivers/input/keyboard/bcm-keypad.c_pt.bc'
source_filename = "../drivers/input/keyboard/bcm-keypad.c"
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
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.bcm_kp = type { ptr, i32, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_bcm_keypad__210_450_bcm_kp_device_driver_init6 = internal global ptr @bcm_kp_device_driver_init, section ".initcall6.init", align 4
@bcm_kp_device_driver = internal global %struct.platform_driver { ptr @bcm_kp_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_kp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_bcm_kp_device_driver_exit = internal global ptr @bcm_kp_device_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author211 = internal constant [39 x i8] c"bcm_keypad.author=Broadcom Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [41 x i8] c"bcm_keypad.description=BCM Keypad Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [50 x i8] c"bcm_keypad.file=drivers/input/keyboard/bcm-keypad\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [26 x i8] c"bcm_keypad.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"bcm-keypad\00", align 1
@bcm_kp_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm-keypad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to allocate the input device\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"autorepeat\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"keypad/input0\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"failed to build keymap\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Missing keypad base address resource\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"peri_clk\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Failed to get clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"failed to register input device\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"failed to parse kp params\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"status-debounce-filter-period\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Invalid Status filter debounce value %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"col-debounce-filter-period\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"Invalid Column filter debounce value %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"row-output-enabled\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"pull-up-enabled\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_bcm_kp_device_driver_exit, ptr @__initcall__kmod_bcm_keypad__210_450_bcm_kp_device_driver_init6, ptr @bcm_kp_device_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm_kp_device_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_kp_device_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bcm_kp_device_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_kp_device_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_kp_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 52, i32 noundef 3520) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %183, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @devm_input_allocate_device(ptr noundef %4) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #8
  br label %183

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, 2
  store i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = tail call ptr @of_find_property(ptr noundef %16, ptr noundef nonnull @.str.2, ptr noundef null) #7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = load i32, ptr %12, align 4
  %21 = or i32 %20, 1048576
  store i32 %21, ptr %12, align 4
  br label %22

22:                                               ; preds = %19, %11
  %23 = load ptr, ptr %0, align 8
  store ptr %23, ptr %8, align 8
  %24 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 1
  store ptr @.str.3, ptr %24, align 4
  %25 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 40, i32 1
  store ptr %4, ptr %25, align 4
  %26 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 31
  store ptr @bcm_kp_open, ptr %26, align 4
  %27 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 32
  store ptr @bcm_kp_close, ptr %27, align 8
  %28 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 3
  store i16 25, ptr %28, align 4
  %29 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 3, i32 1
  store i16 1, ptr %29, align 2
  %30 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 3, i32 2
  store i16 1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 3, i32 3
  store i16 256, ptr %31, align 2
  %32 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 40, i32 8
  store ptr %5, ptr %32, align 8
  %33 = getelementptr inbounds %struct.bcm_kp, ptr %5, i32 0, i32 3
  store ptr %8, ptr %33, align 4
  %34 = load ptr, ptr %25, align 4
  %35 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 25
  %36 = load ptr, ptr %35, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %37 = getelementptr inbounds %struct.bcm_kp, ptr %5, i32 0, i32 7
  store i32 34816, ptr %37, align 4
  %38 = getelementptr inbounds %struct.bcm_kp, ptr %5, i32 0, i32 5
  %39 = getelementptr inbounds %struct.bcm_kp, ptr %5, i32 0, i32 6
  %40 = tail call i32 @matrix_keypad_parse_properties(ptr noundef %34, ptr noundef %38, ptr noundef %39) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.11) #8
  br label %123

43:                                               ; preds = %22
  %44 = load i32, ptr %38, align 4
  %45 = shl i32 %44, 20
  %46 = add i32 %45, -1048576
  %47 = load i32, ptr %37, align 4
  %48 = or i32 %46, %47
  %49 = load i32, ptr %39, align 4
  %50 = shl i32 %49, 16
  %51 = add i32 %50, -65536
  %52 = or i32 %48, %51
  store i32 %52, ptr %37, align 4
  %53 = shl nsw i32 -1, %49
  %54 = xor i32 %53, -1
  %55 = getelementptr inbounds %struct.bcm_kp, ptr %5, i32 0, i32 10
  %56 = add i32 %44, -1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %43
  store i32 %54, ptr %55, align 4
  %59 = getelementptr inbounds %struct.bcm_kp, ptr %5, i32 0, i32 11
  store i32 0, ptr %59, align 4
  br label %91

60:                                               ; preds = %43
  %61 = shl i32 %54, 8
  %62 = or i32 %61, %54
  %63 = add i32 %44, -2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %60
  %66 = shl i32 %62, 8
  %67 = or i32 %66, %62
  %68 = add i32 %44, -3
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = shl i32 %67, 8
  %72 = or i32 %71, %67
  %73 = icmp eq i32 %44, 4
  br label %74

74:                                               ; preds = %70, %65, %60
  %75 = phi i32 [ %56, %60 ], [ %63, %65 ], [ %68, %70 ]
  %76 = phi i32 [ %62, %60 ], [ %67, %65 ], [ %72, %70 ]
  %77 = phi i1 [ %64, %60 ], [ %69, %65 ], [ %73, %70 ]
  store i32 %76, ptr %55, align 4
  %78 = getelementptr inbounds %struct.bcm_kp, ptr %5, i32 0, i32 11
  store i32 0, ptr %78, align 4
  br i1 %77, label %91, label %79

79:                                               ; preds = %74
  %80 = add i32 %75, -2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %82, %79
  %83 = phi i32 [ %87, %82 ], [ %80, %79 ]
  %84 = phi i32 [ %86, %82 ], [ %54, %79 ]
  %85 = shl i32 %84, 8
  %86 = or i32 %85, %84
  %87 = add i32 %83, -1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %82

89:                                               ; preds = %82, %79
  %90 = phi i32 [ %54, %79 ], [ %86, %82 ]
  store i32 %90, ptr %78, align 4
  br label %91

91:                                               ; preds = %89, %74, %58
  %92 = getelementptr inbounds %struct.bcm_kp, ptr %5, i32 0, i32 9
  store i32 -1, ptr %92, align 4
  %93 = call i32 @of_property_read_variable_u32_array(ptr noundef %36, ptr noundef nonnull @.str.12, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %94 = load i32, ptr %2, align 4
  %95 = icmp ugt i32 %94, 7
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.13, i32 noundef %94) #8
  br label %123

97:                                               ; preds = %91
  %98 = shl nuw nsw i32 %94, 12
  %99 = load i32, ptr %37, align 4
  %100 = or i32 %99, %98
  store i32 %100, ptr %37, align 4
  %101 = call i32 @of_property_read_variable_u32_array(ptr noundef %36, ptr noundef nonnull @.str.14, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %102 = load i32, ptr %2, align 4
  %103 = icmp ugt i32 %102, 7
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.15, i32 noundef %102) #8
  br label %123

105:                                              ; preds = %97
  %106 = shl nuw nsw i32 %102, 8
  %107 = load i32, ptr %37, align 4
  %108 = or i32 %107, %106
  store i32 %108, ptr %37, align 4
  %109 = call ptr @of_find_property(ptr noundef %36, ptr noundef nonnull @.str.16, ptr noundef null) #7
  %110 = icmp eq ptr %109, null
  %111 = select i1 %110, ptr %39, ptr %38
  %112 = select i1 %110, i32 16, i32 24
  %113 = load i32, ptr %111, align 4
  %114 = shl nsw i32 -1, %113
  %115 = xor i32 %114, -1
  %116 = shl i32 %115, %112
  %117 = getelementptr inbounds %struct.bcm_kp, ptr %5, i32 0, i32 8
  store i32 %116, ptr %117, align 4
  %118 = call ptr @of_find_property(ptr noundef %36, ptr noundef nonnull @.str.17, ptr noundef null) #7
  %119 = icmp eq ptr %118, null
  br i1 %119, label %125, label %120

120:                                              ; preds = %105
  %121 = load i32, ptr %37, align 4
  %122 = or i32 %121, 2
  store i32 %122, ptr %37, align 4
  br label %125

123:                                              ; preds = %104, %96, %42
  %124 = phi i32 [ -22, %104 ], [ -22, %96 ], [ %40, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %183

125:                                              ; preds = %120, %105
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %126 = load i32, ptr %38, align 4
  %127 = load i32, ptr %39, align 4
  %128 = call i32 @matrix_keypad_build_keymap(ptr noundef null, ptr noundef null, i32 noundef %126, i32 noundef %127, ptr noundef null, ptr noundef nonnull %8) #7
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %125
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #8
  br label %183

131:                                              ; preds = %125
  %132 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5) #8
  br label %183

135:                                              ; preds = %131
  %136 = call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef nonnull %132) #7
  store ptr %136, ptr %5, align 4
  %137 = icmp ugt ptr %136, inttoptr (i32 -4096 to ptr)
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = ptrtoint ptr %136 to i32
  br label %183

140:                                              ; preds = %135
  %141 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.6) #7
  %142 = getelementptr inbounds %struct.bcm_kp, ptr %5, i32 0, i32 2
  store ptr %141, ptr %142, align 4
  %143 = icmp ugt ptr %141, inttoptr (i32 -4096 to ptr)
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = ptrtoint ptr %141 to i32
  switch i32 %145, label %146 [
    i32 -2, label %147
    i32 -517, label %183
  ]

146:                                              ; preds = %144
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7) #8
  br label %183

147:                                              ; preds = %144
  store ptr null, ptr %142, align 4
  br label %170

148:                                              ; preds = %140
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %149 = load ptr, ptr %15, align 8
  %150 = call i32 @of_property_read_variable_u32_array(ptr noundef %149, ptr noundef nonnull @.str.8, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %148
  %153 = load i32, ptr %3, align 4
  br label %155

154:                                              ; preds = %148
  store i32 31250, ptr %3, align 4
  br label %155

155:                                              ; preds = %154, %152
  %156 = phi i32 [ %153, %152 ], [ 31250, %154 ]
  %157 = load ptr, ptr %142, align 4
  %158 = call i32 @clk_round_rate(ptr noundef %157, i32 noundef %156) #7
  %159 = icmp slt i32 %158, 1
  br i1 %159, label %164, label %160

160:                                              ; preds = %155
  %161 = load ptr, ptr %142, align 4
  %162 = call i32 @clk_set_rate(ptr noundef %161, i32 noundef %158) #7
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %160, %155
  %165 = phi i32 [ %162, %160 ], [ -22, %155 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %183

166:                                              ; preds = %160
  %167 = load ptr, ptr %142, align 4
  %168 = call fastcc i32 @clk_prepare_enable(ptr noundef %167)
  %169 = icmp eq i32 %168, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br i1 %169, label %170, label %183

170:                                              ; preds = %166, %147
  call fastcc void @bcm_kp_stop(ptr noundef nonnull %5)
  %171 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %172 = getelementptr inbounds %struct.bcm_kp, ptr %5, i32 0, i32 1
  store i32 %171, ptr %172, align 4
  %173 = icmp slt i32 %171, 0
  br i1 %173, label %183, label %174

174:                                              ; preds = %170
  %175 = load ptr, ptr %0, align 8
  %176 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %171, ptr noundef null, ptr noundef nonnull @bcm_kp_isr_thread, i32 noundef 8192, ptr noundef %175, ptr noundef nonnull %5) #7
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %174
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9) #8
  br label %183

179:                                              ; preds = %174
  %180 = call i32 @input_register_device(ptr noundef nonnull %8) #7
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %179
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.10) #8
  br label %183

183:                                              ; preds = %182, %179, %178, %170, %166, %164, %146, %144, %138, %134, %130, %123, %10, %1
  %184 = phi i32 [ %128, %130 ], [ %139, %138 ], [ %176, %178 ], [ %180, %182 ], [ %168, %166 ], [ -19, %134 ], [ -12, %10 ], [ -12, %1 ], [ %145, %144 ], [ %145, %146 ], [ -22, %170 ], [ 0, %179 ], [ %124, %123 ], [ %165, %164 ]
  ret i32 %184
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_kp_open(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcm_kp, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @clk_prepare(ptr noundef nonnull %5) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %56

10:                                               ; preds = %7
  %11 = tail call i32 @clk_enable(ptr noundef nonnull %5) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef nonnull %5) #7
  br label %56

14:                                               ; preds = %10, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  %15 = getelementptr inbounds %struct.bcm_kp, ptr %3, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr i8, ptr %17, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %19 = getelementptr inbounds %struct.bcm_kp, ptr %3, i32 0, i32 10
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr i8, ptr %21, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  %23 = getelementptr inbounds %struct.bcm_kp, ptr %3, i32 0, i32 11
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr i8, ptr %25, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %27 = getelementptr inbounds %struct.bcm_kp, ptr %3, i32 0, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr i8, ptr %29, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %31 = load i32, ptr %27, align 4
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr i8, ptr %32, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %34 = load i32, ptr %27, align 4
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr i8, ptr %35, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %37 = load i32, ptr %27, align 4
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr i8, ptr %38, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr i8, ptr %40, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 -1) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %42 = load ptr, ptr %3, align 4
  %43 = getelementptr i8, ptr %42, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 -1) #7, !srcloc !10
  %44 = load ptr, ptr %3, align 4
  %45 = getelementptr i8, ptr %44, i32 160
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #7, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !20
  %47 = getelementptr inbounds %struct.bcm_kp, ptr %3, i32 0, i32 4
  store i32 %46, ptr %47, align 4
  %48 = load ptr, ptr %3, align 4
  %49 = getelementptr i8, ptr %48, i32 164
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #7, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
  store i32 %50, ptr %47, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  %51 = getelementptr inbounds %struct.bcm_kp, ptr %3, i32 0, i32 7
  %52 = load i32, ptr %51, align 4
  %53 = or i32 %52, 1
  %54 = load ptr, ptr %3, align 4
  %55 = getelementptr i8, ptr %54, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #7, !srcloc !10
  br label %56

56:                                               ; preds = %14, %13, %7
  %57 = phi i32 [ 0, %14 ], [ %11, %13 ], [ %8, %7 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_kp_close(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @bcm_kp_stop(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #7
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_kp_stop(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 128
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !23
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr i8, ptr %5, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr i8, ptr %7, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr i8, ptr %9, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr i8, ptr %11, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 -1) #7, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr i8, ptr %13, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 -1) #7, !srcloc !10
  %15 = getelementptr inbounds %struct.bcm_kp, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  tail call void @clk_disable(ptr noundef nonnull %16) #7
  tail call void @clk_unprepare(ptr noundef nonnull %16) #7
  br label %19

19:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_kp_isr_thread(i32 noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.bcm_kp, ptr %1, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.bcm_kp, ptr %1, i32 0, i32 6
  %9 = getelementptr inbounds %struct.bcm_kp, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  call void @arm_heavy_mb() #7
  %10 = load ptr, ptr %1, align 4
  %11 = getelementptr i8, ptr %10, i32 184
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 -1) #7, !srcloc !10
  %12 = load ptr, ptr %1, align 4
  %13 = getelementptr i8, ptr %12, i32 160
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !19
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !30
  %15 = getelementptr %struct.bcm_kp, ptr %1, i32 0, i32 4, i32 0
  %16 = load i32, ptr %15, align 4
  %17 = xor i32 %16, %14
  store i32 %17, ptr %3, align 4
  store i32 %14, ptr %15, align 4
  %18 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef 0) #7
  %19 = icmp slt i32 %18, 32
  br i1 %19, label %20, label %51

20:                                               ; preds = %35, %2
  %21 = phi i32 [ %49, %35 ], [ %18, %2 ]
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %14
  %24 = icmp eq i32 %23, 0
  %25 = ashr i32 %21, 3
  %26 = srem i32 %21, 8
  %27 = load i32, ptr %8, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %20
  %30 = add i32 %27, -1
  %31 = icmp eq i32 %30, 0
  %32 = call i32 @llvm.ctlz.i32(i32 %30, i1 false) #7, !range !31
  %33 = sub nuw nsw i32 32, %32
  %34 = select i1 %31, i32 0, i32 %33
  br label %35

35:                                               ; preds = %29, %20
  %36 = phi i32 [ %34, %29 ], [ -1, %20 ]
  %37 = load ptr, ptr %9, align 4
  %38 = getelementptr inbounds %struct.input_dev, ptr %37, i32 0, i32 17
  %39 = load ptr, ptr %38, align 4
  %40 = shl i32 %25, %36
  %41 = add i32 %40, %26
  %42 = getelementptr i16, ptr %39, i32 %41
  %43 = load i16, ptr %42, align 2
  %44 = zext i16 %43 to i32
  %45 = icmp ne i32 %23, 0
  %46 = select i1 %7, i1 %45, i1 %24
  %47 = zext i1 %46 to i32
  call void @input_event(ptr noundef %37, i32 noundef 1, i32 noundef %44, i32 noundef %47) #7
  %48 = add nsw i32 %21, 1
  %49 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef %48) #7
  %50 = icmp slt i32 %49, 32
  br i1 %50, label %20, label %51

51:                                               ; preds = %35, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  call void @arm_heavy_mb() #7
  %52 = load ptr, ptr %1, align 4
  %53 = getelementptr i8, ptr %52, i32 188
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 -1) #7, !srcloc !10
  %54 = load ptr, ptr %1, align 4
  %55 = getelementptr i8, ptr %54, i32 164
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #7, !srcloc !19
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !30
  %57 = getelementptr %struct.bcm_kp, ptr %1, i32 0, i32 4, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = xor i32 %58, %56
  store i32 %59, ptr %3, align 4
  store i32 %56, ptr %57, align 4
  %60 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef 0) #7
  %61 = icmp slt i32 %60, 32
  br i1 %61, label %62, label %94

62:                                               ; preds = %78, %51
  %63 = phi i32 [ %92, %78 ], [ %60, %51 ]
  %64 = shl nuw i32 1, %63
  %65 = and i32 %64, %56
  %66 = icmp eq i32 %65, 0
  %67 = ashr i32 %63, 3
  %68 = add nsw i32 %67, 4
  %69 = srem i32 %63, 8
  %70 = load i32, ptr %8, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %62
  %73 = add i32 %70, -1
  %74 = icmp eq i32 %73, 0
  %75 = call i32 @llvm.ctlz.i32(i32 %73, i1 false) #7, !range !31
  %76 = sub nuw nsw i32 32, %75
  %77 = select i1 %74, i32 0, i32 %76
  br label %78

78:                                               ; preds = %72, %62
  %79 = phi i32 [ %77, %72 ], [ -1, %62 ]
  %80 = load ptr, ptr %9, align 4
  %81 = getelementptr inbounds %struct.input_dev, ptr %80, i32 0, i32 17
  %82 = load ptr, ptr %81, align 4
  %83 = shl i32 %68, %79
  %84 = add i32 %83, %69
  %85 = getelementptr i16, ptr %82, i32 %84
  %86 = load i16, ptr %85, align 2
  %87 = zext i16 %86 to i32
  %88 = icmp ne i32 %65, 0
  %89 = select i1 %7, i1 %88, i1 %66
  %90 = zext i1 %89 to i32
  call void @input_event(ptr noundef %80, i32 noundef 1, i32 noundef %87, i32 noundef %90) #7
  %91 = add nsw i32 %63, 1
  %92 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef %91) #7
  %93 = icmp slt i32 %92, 32
  br i1 %93, label %62, label %94

94:                                               ; preds = %78, %51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %95 = load ptr, ptr %9, align 4
  call void @input_event(ptr noundef %95, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_parse_properties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i64 2152439231}
!10 = !{i64 2491916}
!11 = !{i64 2152439585}
!12 = !{i64 2152439945}
!13 = !{i64 2152440302}
!14 = !{i64 2152440653}
!15 = !{i64 2152441004}
!16 = !{i64 2152441355}
!17 = !{i64 2152441707}
!18 = !{i64 2152442061}
!19 = !{i64 2492334}
!20 = !{i64 2152442565}
!21 = !{i64 2152442922}
!22 = !{i64 2152443151}
!23 = !{i64 2152443677}
!24 = !{i64 2152443886}
!25 = !{i64 2152444213}
!26 = !{i64 2152444540}
!27 = !{i64 2152444876}
!28 = !{i64 2152445230}
!29 = !{i64 2152437945}
!30 = !{i64 2152438571}
!31 = !{i32 0, i32 33}
