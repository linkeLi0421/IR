; ModuleID = '/llk/IR/drivers/input/keyboard/pxa27x_keypad.c_pt.bc'
source_filename = "../drivers/input/keyboard/pxa27x_keypad.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pxa27x_keypad = type { ptr, ptr, ptr, ptr, i32, [72 x i16], [2 x i32], i32, [8 x i32], i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.pxa27x_keypad_platform_data = type { ptr, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }

@pxa27x_keypad_dt_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxa27x-keypad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description210 = internal constant [44 x i8] c"description=PXA27x Keypad Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license211 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias212 = internal constant [29 x i8] c"alias=platform:pxa27x-keypad\00", section ".modinfo", align 1
@pxa27x_keypad_driver = internal global %struct.platform_driver { ptr @pxa27x_keypad_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pxa27x_keypad_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pxa27x_keypad_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [14 x i8] c"pxa27x-keypad\00", align 1
@pxa27x_keypad_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pxa27x_keypad_suspend, ptr @pxa27x_keypad_resume, ptr @pxa27x_keypad_suspend, ptr @pxa27x_keypad_resume, ptr @pxa27x_keypad_suspend, ptr @pxa27x_keypad_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get I/O memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to get keypad clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to build keycode\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to register input device\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"failed to allocate memory for pdata\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to parse matrix key\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"failed to parse direct key\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"failed to parse rotary key\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"marvell,debounce-interval\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"failed to parse debounce-interval\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"rows or cols exceeds maximum value\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"marvell,direct-key-count\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"marvell,direct-key-mask\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"marvell,direct-key-low-active\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"marvell,direct-key-map\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"marvell,rotary0\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"marvell,rotary1\00", align 1
@__const.pxa27x_keypad_rotary_parse_dt.relkeyname = private unnamed_addr constant [23 x i8] c"marvell,rotary-rel-key\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias212, ptr @__UNIQUE_ID_description210, ptr @__UNIQUE_ID_license211], section "llvm.metadata"

@__mod_of__pxa27x_keypad_dt_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @pxa27x_keypad_dt_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @pxa27x_keypad_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @pxa27x_keypad_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa27x_keypad_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [23 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = icmp ne ptr %12, null
  %14 = icmp ne ptr %10, null
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %16, label %516

16:                                               ; preds = %1
  %17 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %516, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.1) #9
  br label %516

23:                                               ; preds = %19
  %24 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 216, i32 noundef 3520) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %516, label %26

26:                                               ; preds = %23
  %27 = tail call ptr @devm_input_allocate_device(ptr noundef %8) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %516, label %29

29:                                               ; preds = %26
  store ptr %10, ptr %24, align 4
  %30 = getelementptr inbounds %struct.pxa27x_keypad, ptr %24, i32 0, i32 2
  store ptr %27, ptr %30, align 4
  %31 = getelementptr inbounds %struct.pxa27x_keypad, ptr %24, i32 0, i32 4
  store i32 %17, ptr %31, align 4
  %32 = tail call ptr @devm_ioremap_resource(ptr noundef %8, ptr noundef nonnull %20) #8
  %33 = getelementptr inbounds %struct.pxa27x_keypad, ptr %24, i32 0, i32 3
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = ptrtoint ptr %32 to i32
  br label %516

37:                                               ; preds = %29
  %38 = tail call ptr @devm_clk_get(ptr noundef %8, ptr noundef null) #8
  %39 = getelementptr inbounds %struct.pxa27x_keypad, ptr %24, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.2) #9
  %42 = load ptr, ptr %39, align 4
  %43 = ptrtoint ptr %42 to i32
  br label %516

44:                                               ; preds = %37
  %45 = load ptr, ptr %0, align 8
  store ptr %45, ptr %27, align 8
  %46 = getelementptr inbounds %struct.input_dev, ptr %27, i32 0, i32 3
  store i16 25, ptr %46, align 4
  %47 = getelementptr inbounds %struct.input_dev, ptr %27, i32 0, i32 31
  store ptr @pxa27x_keypad_open, ptr %47, align 4
  %48 = getelementptr inbounds %struct.input_dev, ptr %27, i32 0, i32 32
  store ptr @pxa27x_keypad_close, ptr %48, align 8
  %49 = getelementptr inbounds %struct.input_dev, ptr %27, i32 0, i32 40, i32 1
  store ptr %8, ptr %49, align 4
  %50 = getelementptr inbounds %struct.pxa27x_keypad, ptr %24, i32 0, i32 5
  %51 = getelementptr inbounds %struct.input_dev, ptr %27, i32 0, i32 17
  store ptr %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.input_dev, ptr %27, i32 0, i32 16
  store i32 2, ptr %52, align 8
  %53 = getelementptr inbounds %struct.input_dev, ptr %27, i32 0, i32 15
  store i32 72, ptr %53, align 4
  %54 = getelementptr inbounds %struct.input_dev, ptr %27, i32 0, i32 40, i32 8
  store ptr %24, ptr %54, align 8
  %55 = getelementptr inbounds %struct.input_dev, ptr %27, i32 0, i32 5
  store i32 1048578, ptr %55, align 8
  tail call void @input_set_capability(ptr noundef nonnull %27, i32 noundef 4, i32 noundef 4) #8
  br i1 %14, label %56, label %186

56:                                               ; preds = %44
  %57 = load ptr, ptr %24, align 4
  %58 = load ptr, ptr %30, align 4
  %59 = load ptr, ptr %57, align 4
  %60 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %57, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %57, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = tail call i32 @matrix_keypad_build_keymap(ptr noundef %59, ptr noundef null, i32 noundef %61, i32 noundef %63, ptr noundef %50, ptr noundef %58) #8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %470

66:                                               ; preds = %56
  %67 = getelementptr inbounds %struct.input_dev, ptr %58, i32 0, i32 15
  store i32 72, ptr %67, align 4
  %68 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %57, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.input_dev, ptr %58, i32 0, i32 6
  br label %73

73:                                               ; preds = %73, %71
  %74 = phi i32 [ 0, %71 ], [ %87, %73 ]
  %75 = getelementptr %struct.pxa27x_keypad_platform_data, ptr %57, i32 0, i32 4, i32 %74
  %76 = load i32, ptr %75, align 4
  %77 = trunc i32 %76 to i16
  %78 = add nuw i32 %74, 64
  %79 = getelementptr %struct.pxa27x_keypad, ptr %24, i32 0, i32 5, i32 %78
  store i16 %77, ptr %79, align 2
  %80 = and i32 %76, 31
  %81 = shl nuw i32 1, %80
  %82 = lshr i32 %76, 5
  %83 = and i32 %82, 2047
  %84 = getelementptr i32, ptr %72, i32 %83
  %85 = load i32, ptr %84, align 4
  %86 = or i32 %85, %81
  store i32 %86, ptr %84, align 4
  %87 = add nuw nsw i32 %74, 1
  %88 = load i32, ptr %68, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %73, label %90

90:                                               ; preds = %73, %66
  %91 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %57, i32 0, i32 7
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %136, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %57, i32 0, i32 9
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %124, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %57, i32 0, i32 10
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %124, label %102

102:                                              ; preds = %98
  %103 = trunc i32 %96 to i16
  %104 = getelementptr %struct.pxa27x_keypad, ptr %24, i32 0, i32 5, i32 64
  store i16 %103, ptr %104, align 4
  %105 = getelementptr inbounds %struct.input_dev, ptr %58, i32 0, i32 6
  %106 = and i32 %96, 31
  %107 = shl nuw i32 1, %106
  %108 = lshr i32 %96, 5
  %109 = and i32 %108, 2047
  %110 = getelementptr i32, ptr %105, i32 %109
  %111 = load i32, ptr %110, align 4
  %112 = or i32 %111, %107
  store i32 %112, ptr %110, align 4
  %113 = load i32, ptr %99, align 4
  %114 = trunc i32 %113 to i16
  %115 = getelementptr %struct.pxa27x_keypad, ptr %24, i32 0, i32 5, i32 65
  store i16 %114, ptr %115, align 2
  %116 = and i32 %113, 31
  %117 = shl nuw i32 1, %116
  %118 = lshr i32 %113, 5
  %119 = and i32 %118, 2047
  %120 = getelementptr i32, ptr %105, i32 %119
  %121 = load i32, ptr %120, align 4
  %122 = or i32 %121, %117
  store i32 %122, ptr %120, align 4
  %123 = getelementptr inbounds %struct.pxa27x_keypad, ptr %24, i32 0, i32 6
  store i32 -1, ptr %123, align 4
  br label %136

124:                                              ; preds = %98, %94
  %125 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %57, i32 0, i32 8
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr inbounds %struct.pxa27x_keypad, ptr %24, i32 0, i32 6
  store i32 %126, ptr %127, align 4
  %128 = load i32, ptr %125, align 4
  %129 = getelementptr inbounds %struct.input_dev, ptr %58, i32 0, i32 7
  %130 = and i32 %128, 31
  %131 = shl nuw i32 1, %130
  %132 = lshr i32 %128, 5
  %133 = getelementptr i32, ptr %129, i32 %132
  %134 = load i32, ptr %133, align 4
  %135 = or i32 %131, %134
  store i32 %135, ptr %133, align 4
  br label %136

136:                                              ; preds = %124, %102, %90
  %137 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %57, i32 0, i32 11
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %182, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %57, i32 0, i32 13
  %142 = load i32, ptr %141, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %170, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %57, i32 0, i32 14
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %170, label %148

148:                                              ; preds = %144
  %149 = trunc i32 %142 to i16
  %150 = getelementptr %struct.pxa27x_keypad, ptr %24, i32 0, i32 5, i32 66
  store i16 %149, ptr %150, align 4
  %151 = getelementptr inbounds %struct.input_dev, ptr %58, i32 0, i32 6
  %152 = and i32 %142, 31
  %153 = shl nuw i32 1, %152
  %154 = lshr i32 %142, 5
  %155 = and i32 %154, 2047
  %156 = getelementptr i32, ptr %151, i32 %155
  %157 = load i32, ptr %156, align 4
  %158 = or i32 %157, %153
  store i32 %158, ptr %156, align 4
  %159 = load i32, ptr %145, align 4
  %160 = trunc i32 %159 to i16
  %161 = getelementptr %struct.pxa27x_keypad, ptr %24, i32 0, i32 5, i32 67
  store i16 %160, ptr %161, align 2
  %162 = and i32 %159, 31
  %163 = shl nuw i32 1, %162
  %164 = lshr i32 %159, 5
  %165 = and i32 %164, 2047
  %166 = getelementptr i32, ptr %151, i32 %165
  %167 = load i32, ptr %166, align 4
  %168 = or i32 %167, %163
  store i32 %168, ptr %166, align 4
  %169 = getelementptr %struct.pxa27x_keypad, ptr %24, i32 0, i32 6, i32 1
  store i32 -1, ptr %169, align 4
  br label %182

170:                                              ; preds = %144, %140
  %171 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %57, i32 0, i32 12
  %172 = load i32, ptr %171, align 4
  %173 = getelementptr %struct.pxa27x_keypad, ptr %24, i32 0, i32 6, i32 1
  store i32 %172, ptr %173, align 4
  %174 = load i32, ptr %171, align 4
  %175 = getelementptr inbounds %struct.input_dev, ptr %58, i32 0, i32 7
  %176 = and i32 %174, 31
  %177 = shl nuw i32 1, %176
  %178 = lshr i32 %174, 5
  %179 = getelementptr i32, ptr %175, i32 %178
  %180 = load i32, ptr %179, align 4
  %181 = or i32 %177, %180
  store i32 %181, ptr %179, align 4
  br label %182

182:                                              ; preds = %170, %148, %136
  %183 = getelementptr inbounds %struct.input_dev, ptr %58, i32 0, i32 6
  %184 = load i32, ptr %183, align 4
  %185 = and i32 %184, -2
  store i32 %185, ptr %183, align 4
  br label %472

186:                                              ; preds = %44
  %187 = load ptr, ptr %30, align 4
  %188 = getelementptr inbounds %struct.input_dev, ptr %187, i32 0, i32 40, i32 1
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr inbounds %struct.device, ptr %189, i32 0, i32 25
  %191 = load ptr, ptr %190, align 8
  %192 = tail call noalias ptr @devm_kmalloc(ptr noundef %189, i32 noundef 96, i32 noundef 3520) #8
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull @.str.6) #9
  br label %470

195:                                              ; preds = %186
  %196 = load ptr, ptr %30, align 4
  %197 = getelementptr inbounds %struct.input_dev, ptr %196, i32 0, i32 40, i32 1
  %198 = load ptr, ptr %197, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !8
  %199 = call i32 @matrix_keypad_parse_properties(ptr noundef %198, ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %195
  %202 = load i32, ptr %6, align 4
  %203 = icmp ugt i32 %202, 8
  %204 = load i32, ptr %7, align 4
  %205 = icmp ugt i32 %204, 8
  %206 = select i1 %203, i1 true, i1 %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %201
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %198, ptr noundef nonnull @.str.12) #9
  br label %208

208:                                              ; preds = %207, %195
  %209 = phi i32 [ %199, %195 ], [ -22, %207 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %215

210:                                              ; preds = %201
  %211 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %192, i32 0, i32 1
  store i32 %202, ptr %211, align 4
  %212 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %192, i32 0, i32 2
  store i32 %204, ptr %212, align 4
  %213 = call i32 @matrix_keypad_build_keymap(ptr noundef null, ptr noundef null, i32 noundef %202, i32 noundef %204, ptr noundef %50, ptr noundef %196) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %210, %208
  %216 = phi i32 [ %209, %208 ], [ %213, %210 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull @.str.7) #9
  br label %470

217:                                              ; preds = %210
  %218 = load ptr, ptr %30, align 4
  %219 = getelementptr inbounds %struct.input_dev, ptr %218, i32 0, i32 40, i32 1
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr inbounds %struct.device, ptr %220, i32 0, i32 25
  %222 = load ptr, ptr %221, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %223 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %192, i32 0, i32 3
  %224 = call i32 @of_property_read_variable_u32_array(ptr noundef %222, ptr noundef nonnull @.str.13, ptr noundef %223, i32 noundef 1, i32 noundef 0) #8
  %225 = icmp sgt i32 %224, -1
  br i1 %225, label %228, label %226

226:                                              ; preds = %217
  %227 = icmp eq i32 %224, -22
  br i1 %227, label %355, label %353

228:                                              ; preds = %217
  %229 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %192, i32 0, i32 6
  %230 = call i32 @of_property_read_variable_u32_array(ptr noundef %222, ptr noundef nonnull @.str.14, ptr noundef %229, i32 noundef 1, i32 noundef 0) #8
  %231 = call i32 @llvm.smin.i32(i32 %230, i32 0) #8
  switch i32 %231, label %364 [
    i32 0, label %233
    i32 -22, label %232
  ]

232:                                              ; preds = %228
  store i32 0, ptr %229, align 4
  br label %233

233:                                              ; preds = %232, %228
  %234 = call ptr @of_find_property(ptr noundef %222, ptr noundef nonnull @.str.15, ptr noundef null) #8
  %235 = icmp ne ptr %234, null
  %236 = zext i1 %235 to i32
  %237 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %192, i32 0, i32 5
  store i32 %236, ptr %237, align 4
  %238 = call ptr @of_get_property(ptr noundef %222, ptr noundef nonnull @.str.16, ptr noundef nonnull %5) #8
  %239 = icmp eq ptr %238, null
  br i1 %239, label %353, label %240

240:                                              ; preds = %233
  %241 = load i32, ptr %5, align 4
  %242 = and i32 %241, 1
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %353

244:                                              ; preds = %240
  %245 = lshr i32 %241, 1
  %246 = icmp ugt i32 %241, 17
  br i1 %246, label %353, label %247

247:                                              ; preds = %244
  %248 = icmp ult i32 %241, 2
  br i1 %248, label %355, label %249

249:                                              ; preds = %247
  %250 = getelementptr inbounds %struct.input_dev, ptr %218, i32 0, i32 6
  %251 = call i32 @llvm.umax.i32(i32 %245, i32 1) #8
  %252 = load i16, ptr %238, align 2
  %253 = call i16 @llvm.bswap.i16(i16 %252) #8
  %254 = getelementptr %struct.pxa27x_keypad, ptr %24, i32 0, i32 5, i32 64
  store i16 %253, ptr %254, align 2
  %255 = zext i16 %253 to i32
  %256 = and i32 %255, 31
  %257 = shl nuw i32 1, %256
  %258 = lshr i32 %255, 5
  %259 = getelementptr i32, ptr %250, i32 %258
  %260 = load i32, ptr %259, align 4
  %261 = or i32 %257, %260
  store i32 %261, ptr %259, align 4
  %262 = icmp ult i32 %241, 4
  br i1 %262, label %355, label %263

263:                                              ; preds = %249
  %264 = getelementptr i16, ptr %238, i32 1
  %265 = load i16, ptr %264, align 2
  %266 = call i16 @llvm.bswap.i16(i16 %265) #8
  %267 = getelementptr %struct.pxa27x_keypad, ptr %24, i32 0, i32 5, i32 65
  store i16 %266, ptr %267, align 2
  %268 = zext i16 %266 to i32
  %269 = and i32 %268, 31
  %270 = shl nuw i32 1, %269
  %271 = lshr i32 %268, 5
  %272 = getelementptr i32, ptr %250, i32 %271
  %273 = load i32, ptr %272, align 4
  %274 = or i32 %270, %273
  store i32 %274, ptr %272, align 4
  %275 = icmp eq i32 %251, 2
  br i1 %275, label %355, label %276

276:                                              ; preds = %263
  %277 = getelementptr i16, ptr %238, i32 2
  %278 = load i16, ptr %277, align 2
  %279 = call i16 @llvm.bswap.i16(i16 %278) #8
  %280 = getelementptr %struct.pxa27x_keypad, ptr %24, i32 0, i32 5, i32 66
  store i16 %279, ptr %280, align 2
  %281 = zext i16 %279 to i32
  %282 = and i32 %281, 31
  %283 = shl nuw i32 1, %282
  %284 = lshr i32 %281, 5
  %285 = getelementptr i32, ptr %250, i32 %284
  %286 = load i32, ptr %285, align 4
  %287 = or i32 %283, %286
  store i32 %287, ptr %285, align 4
  %288 = icmp eq i32 %251, 3
  br i1 %288, label %355, label %289

289:                                              ; preds = %276
  %290 = getelementptr i16, ptr %238, i32 3
  %291 = load i16, ptr %290, align 2
  %292 = call i16 @llvm.bswap.i16(i16 %291) #8
  %293 = getelementptr %struct.pxa27x_keypad, ptr %24, i32 0, i32 5, i32 67
  store i16 %292, ptr %293, align 2
  %294 = zext i16 %292 to i32
  %295 = and i32 %294, 31
  %296 = shl nuw i32 1, %295
  %297 = lshr i32 %294, 5
  %298 = getelementptr i32, ptr %250, i32 %297
  %299 = load i32, ptr %298, align 4
  %300 = or i32 %296, %299
  store i32 %300, ptr %298, align 4
  %301 = icmp eq i32 %251, 4
  br i1 %301, label %355, label %302

302:                                              ; preds = %289
  %303 = getelementptr i16, ptr %238, i32 4
  %304 = load i16, ptr %303, align 2
  %305 = call i16 @llvm.bswap.i16(i16 %304) #8
  %306 = getelementptr %struct.pxa27x_keypad, ptr %24, i32 0, i32 5, i32 68
  store i16 %305, ptr %306, align 2
  %307 = zext i16 %305 to i32
  %308 = and i32 %307, 31
  %309 = shl nuw i32 1, %308
  %310 = lshr i32 %307, 5
  %311 = getelementptr i32, ptr %250, i32 %310
  %312 = load i32, ptr %311, align 4
  %313 = or i32 %309, %312
  store i32 %313, ptr %311, align 4
  %314 = icmp eq i32 %251, 5
  br i1 %314, label %355, label %315

315:                                              ; preds = %302
  %316 = getelementptr i16, ptr %238, i32 5
  %317 = load i16, ptr %316, align 2
  %318 = call i16 @llvm.bswap.i16(i16 %317) #8
  %319 = getelementptr %struct.pxa27x_keypad, ptr %24, i32 0, i32 5, i32 69
  store i16 %318, ptr %319, align 2
  %320 = zext i16 %318 to i32
  %321 = and i32 %320, 31
  %322 = shl nuw i32 1, %321
  %323 = lshr i32 %320, 5
  %324 = getelementptr i32, ptr %250, i32 %323
  %325 = load i32, ptr %324, align 4
  %326 = or i32 %322, %325
  store i32 %326, ptr %324, align 4
  %327 = icmp eq i32 %251, 6
  br i1 %327, label %355, label %328

328:                                              ; preds = %315
  %329 = getelementptr i16, ptr %238, i32 6
  %330 = load i16, ptr %329, align 2
  %331 = call i16 @llvm.bswap.i16(i16 %330) #8
  %332 = getelementptr %struct.pxa27x_keypad, ptr %24, i32 0, i32 5, i32 70
  store i16 %331, ptr %332, align 2
  %333 = zext i16 %331 to i32
  %334 = and i32 %333, 31
  %335 = shl nuw i32 1, %334
  %336 = lshr i32 %333, 5
  %337 = getelementptr i32, ptr %250, i32 %336
  %338 = load i32, ptr %337, align 4
  %339 = or i32 %335, %338
  store i32 %339, ptr %337, align 4
  %340 = icmp eq i32 %251, 7
  br i1 %340, label %355, label %341

341:                                              ; preds = %328
  %342 = getelementptr i16, ptr %238, i32 7
  %343 = load i16, ptr %342, align 2
  %344 = call i16 @llvm.bswap.i16(i16 %343) #8
  %345 = getelementptr %struct.pxa27x_keypad, ptr %24, i32 0, i32 5, i32 71
  store i16 %344, ptr %345, align 2
  %346 = zext i16 %344 to i32
  %347 = and i32 %346, 31
  %348 = shl nuw i32 1, %347
  %349 = lshr i32 %346, 5
  %350 = getelementptr i32, ptr %250, i32 %349
  %351 = load i32, ptr %350, align 4
  %352 = or i32 %348, %351
  store i32 %352, ptr %350, align 4
  br label %355

353:                                              ; preds = %244, %240, %233, %226
  %354 = phi i32 [ -22, %244 ], [ -22, %240 ], [ -22, %233 ], [ %224, %226 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %465

355:                                              ; preds = %341, %328, %315, %302, %289, %276, %263, %249, %247, %226
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %4) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(23) %4, ptr noundef nonnull align 1 dereferenceable(23) @__const.pxa27x_keypad_rotary_parse_dt.relkeyname, i32 23, i1 false) #8
  %356 = load ptr, ptr %30, align 4
  %357 = getelementptr inbounds %struct.input_dev, ptr %356, i32 0, i32 40, i32 1
  %358 = load ptr, ptr %357, align 4
  %359 = getelementptr inbounds %struct.device, ptr %358, i32 0, i32 25
  %360 = load ptr, ptr %359, align 8
  %361 = call i32 @of_property_read_variable_u32_array(ptr noundef %360, ptr noundef nonnull %4, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %362 = call i32 @llvm.smin.i32(i32 %361, i32 0) #8
  %363 = icmp sgt i32 %361, -1
  br i1 %363, label %365, label %385

364:                                              ; preds = %228
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %465

365:                                              ; preds = %355
  %366 = load i32, ptr %2, align 4
  %367 = and i32 %366, 65535
  %368 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %192, i32 0, i32 8
  store i32 %367, ptr %368, align 4
  %369 = getelementptr inbounds %struct.input_dev, ptr %356, i32 0, i32 7
  %370 = and i32 %366, 31
  %371 = shl nuw i32 1, %370
  %372 = lshr i32 %367, 5
  %373 = getelementptr i32, ptr %369, i32 %372
  %374 = load i32, ptr %373, align 4
  %375 = or i32 %374, %371
  store i32 %375, ptr %373, align 4
  %376 = load i32, ptr %2, align 4
  %377 = lshr i32 %376, 16
  %378 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %192, i32 0, i32 12
  store i32 %377, ptr %378, align 4
  %379 = and i32 %377, 31
  %380 = shl nuw i32 1, %379
  %381 = lshr i32 %376, 21
  %382 = getelementptr i32, ptr %369, i32 %381
  %383 = load i32, ptr %382, align 4
  %384 = or i32 %380, %383
  store i32 %384, ptr %382, align 4
  br label %385

385:                                              ; preds = %365, %355
  %386 = icmp slt i32 %361, 0
  %387 = getelementptr inbounds %struct.input_dev, ptr %356, i32 0, i32 6
  %388 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %192, i32 0, i32 12
  %389 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %192, i32 0, i32 11
  %390 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %192, i32 0, i32 8
  %391 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %192, i32 0, i32 7
  %392 = call ptr @of_get_property(ptr noundef %360, ptr noundef nonnull @.str.17, ptr noundef nonnull %3) #8
  %393 = icmp eq ptr %392, null
  br i1 %393, label %421, label %394

394:                                              ; preds = %385
  %395 = load i32, ptr %392, align 4
  %396 = call i32 @llvm.bswap.i32(i32 %395) #8
  store i32 %396, ptr %2, align 4
  %397 = and i32 %396, 65535
  %398 = icmp eq i32 %397, 0
  %399 = icmp ult i32 %396, 65536
  %400 = or i1 %399, %398
  %401 = select i1 %400, i1 %386, i1 false
  br i1 %401, label %453, label %402

402:                                              ; preds = %394
  %403 = trunc i32 %396 to i16
  %404 = getelementptr %struct.pxa27x_keypad, ptr %24, i32 0, i32 5, i32 64
  store i16 %403, ptr %404, align 2
  %405 = and i32 %396, 31
  %406 = shl nuw i32 1, %405
  %407 = lshr i32 %397, 5
  %408 = getelementptr i32, ptr %387, i32 %407
  %409 = load i32, ptr %408, align 4
  %410 = or i32 %409, %406
  store i32 %410, ptr %408, align 4
  %411 = load i32, ptr %2, align 4
  %412 = lshr i32 %411, 16
  %413 = trunc i32 %412 to i16
  %414 = getelementptr %struct.pxa27x_keypad, ptr %24, i32 0, i32 5, i32 65
  store i16 %413, ptr %414, align 2
  %415 = and i32 %412, 31
  %416 = shl nuw i32 1, %415
  %417 = lshr i32 %411, 21
  %418 = getelementptr i32, ptr %387, i32 %417
  %419 = load i32, ptr %418, align 4
  %420 = or i32 %416, %419
  store i32 %420, ptr %418, align 4
  store i32 -1, ptr %390, align 4
  store i32 1, ptr %391, align 4
  br label %421

421:                                              ; preds = %402, %385
  %422 = call ptr @of_get_property(ptr noundef %360, ptr noundef nonnull @.str.18, ptr noundef nonnull %3) #8
  %423 = icmp eq ptr %422, null
  br i1 %423, label %424, label %426

424:                                              ; preds = %421
  %425 = load i32, ptr %388, align 4
  br label %454

426:                                              ; preds = %421
  %427 = load i32, ptr %422, align 4
  %428 = call i32 @llvm.bswap.i32(i32 %427) #8
  store i32 %428, ptr %2, align 4
  %429 = and i32 %428, 65535
  %430 = icmp eq i32 %429, 0
  %431 = icmp ult i32 %428, 65536
  %432 = or i1 %431, %430
  %433 = select i1 %432, i1 %386, i1 false
  br i1 %433, label %453, label %434

434:                                              ; preds = %426
  %435 = trunc i32 %428 to i16
  %436 = getelementptr %struct.pxa27x_keypad, ptr %24, i32 0, i32 5, i32 66
  store i16 %435, ptr %436, align 2
  %437 = and i32 %428, 31
  %438 = shl nuw i32 1, %437
  %439 = lshr i32 %429, 5
  %440 = getelementptr i32, ptr %387, i32 %439
  %441 = load i32, ptr %440, align 4
  %442 = or i32 %441, %438
  store i32 %442, ptr %440, align 4
  %443 = load i32, ptr %2, align 4
  %444 = lshr i32 %443, 16
  %445 = trunc i32 %444 to i16
  %446 = getelementptr %struct.pxa27x_keypad, ptr %24, i32 0, i32 5, i32 67
  store i16 %445, ptr %446, align 2
  %447 = and i32 %444, 31
  %448 = shl nuw i32 1, %447
  %449 = lshr i32 %443, 21
  %450 = getelementptr i32, ptr %387, i32 %449
  %451 = load i32, ptr %450, align 4
  %452 = or i32 %448, %451
  store i32 %452, ptr %450, align 4
  store i32 -1, ptr %388, align 4
  store i32 1, ptr %389, align 4
  br label %454

453:                                              ; preds = %426, %394
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %465

454:                                              ; preds = %434, %424
  %455 = phi i32 [ %425, %424 ], [ -1, %434 ]
  %456 = load i32, ptr %390, align 4
  %457 = getelementptr inbounds %struct.pxa27x_keypad, ptr %24, i32 0, i32 6
  store i32 %456, ptr %457, align 4
  %458 = getelementptr %struct.pxa27x_keypad, ptr %24, i32 0, i32 6, i32 1
  store i32 %455, ptr %458, align 4
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %459 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %192, i32 0, i32 15
  %460 = call i32 @of_property_read_variable_u32_array(ptr noundef %191, ptr noundef nonnull @.str.10, ptr noundef %459, i32 noundef 1, i32 noundef 0) #8
  %461 = icmp sgt i32 %460, -1
  br i1 %461, label %463, label %462

462:                                              ; preds = %454
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull @.str.11) #9
  br label %470

463:                                              ; preds = %454
  %464 = getelementptr inbounds %struct.input_dev, ptr %187, i32 0, i32 15
  store i32 72, ptr %464, align 4
  store ptr %192, ptr %24, align 4
  br label %472

465:                                              ; preds = %453, %364, %353
  %466 = phi ptr [ @.str.9, %453 ], [ @.str.8, %364 ], [ @.str.8, %353 ]
  %467 = phi i32 [ %362, %453 ], [ %231, %364 ], [ %354, %353 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull %466) #9
  %468 = load ptr, ptr %24, align 4
  %469 = icmp eq i32 %467, 0
  br i1 %469, label %472, label %470

470:                                              ; preds = %465, %462, %215, %194, %56
  %471 = phi i32 [ %467, %465 ], [ %64, %56 ], [ -12, %194 ], [ %460, %462 ], [ %216, %215 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.3) #9
  br label %516

472:                                              ; preds = %465, %463, %182
  %473 = phi ptr [ %10, %182 ], [ %468, %465 ], [ %192, %463 ]
  %474 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %473, i32 0, i32 2
  %475 = load i32, ptr %474, align 4
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %483, label %477

477:                                              ; preds = %472
  %478 = add i32 %475, -1
  %479 = icmp eq i32 %478, 0
  %480 = call i32 @llvm.ctlz.i32(i32 %478, i1 false) #8, !range !9
  %481 = sub nuw nsw i32 32, %480
  %482 = select i1 %479, i32 0, i32 %481
  br label %483

483:                                              ; preds = %477, %472
  %484 = phi i32 [ %482, %477 ], [ -1, %472 ]
  %485 = getelementptr inbounds %struct.pxa27x_keypad, ptr %24, i32 0, i32 7
  store i32 %484, ptr %485, align 4
  %486 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %473, i32 0, i32 7
  %487 = load i32, ptr %486, align 4
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %493, label %489

489:                                              ; preds = %483
  %490 = getelementptr inbounds %struct.pxa27x_keypad, ptr %24, i32 0, i32 6
  %491 = load i32, ptr %490, align 4
  %492 = icmp eq i32 %491, -1
  br i1 %492, label %493, label %501

493:                                              ; preds = %489, %483
  %494 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %473, i32 0, i32 11
  %495 = load i32, ptr %494, align 4
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %504, label %497

497:                                              ; preds = %493
  %498 = getelementptr %struct.pxa27x_keypad, ptr %24, i32 0, i32 6, i32 1
  %499 = load i32, ptr %498, align 4
  %500 = icmp eq i32 %499, -1
  br i1 %500, label %504, label %501

501:                                              ; preds = %497, %489
  %502 = load i32, ptr %55, align 8
  %503 = or i32 %502, 4
  store i32 %503, ptr %55, align 8
  br label %504

504:                                              ; preds = %501, %497, %493
  %505 = load ptr, ptr %0, align 8
  %506 = call i32 @devm_request_threaded_irq(ptr noundef %8, i32 noundef %17, ptr noundef nonnull @pxa27x_keypad_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %505, ptr noundef %24) #8
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %509, label %508

508:                                              ; preds = %504
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.4) #9
  br label %516

509:                                              ; preds = %504
  %510 = call i32 @input_register_device(ptr noundef nonnull %27) #8
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %513, label %512

512:                                              ; preds = %509
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.5) #9
  br label %516

513:                                              ; preds = %509
  %514 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %24, ptr %514, align 8
  %515 = call i32 @device_init_wakeup(ptr noundef %8, i1 noundef zeroext true) #8
  br label %516

516:                                              ; preds = %513, %512, %508, %470, %41, %35, %26, %23, %22, %16, %1
  %517 = phi i32 [ -6, %22 ], [ %36, %35 ], [ %43, %41 ], [ %471, %470 ], [ %506, %508 ], [ %510, %512 ], [ 0, %513 ], [ -22, %1 ], [ -6, %16 ], [ -12, %23 ], [ -12, %26 ]
  ret i32 %517
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa27x_keypad_open(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pxa27x_keypad, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %13

12:                                               ; preds = %8
  tail call fastcc void @pxa27x_keypad_config(ptr noundef %3)
  br label %13

13:                                               ; preds = %12, %11, %1
  %14 = phi i32 [ 0, %12 ], [ %9, %11 ], [ %6, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pxa27x_keypad_close(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pxa27x_keypad, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa27x_keypad_irq_handler(i32 noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca [8 x i32], align 4
  %4 = getelementptr inbounds %struct.pxa27x_keypad, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !10
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %7, i32 0, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void %9() #8
  br label %12

12:                                               ; preds = %11, %2
  %13 = and i32 %6, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %118, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %1, align 4
  %17 = getelementptr inbounds %struct.pxa27x_keypad, ptr %1, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i8, ptr %19, i32 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !10
  %22 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %16, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %16, i32 0, i32 11
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %75, label %29

29:                                               ; preds = %25, %15
  %30 = load ptr, ptr %1, align 4
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr i8, ptr %31, i32 16
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !10
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr i8, ptr %34, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 8323199) #8, !srcloc !11
  %36 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %30, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %29
  %40 = and i32 %33, 32768
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = and i32 %33, 255
  %44 = add nuw nsw i32 %43, 127
  br label %53

45:                                               ; preds = %39
  %46 = and i32 %33, 16384
  %47 = icmp eq i32 %46, 0
  %48 = and i32 %33, 255
  br i1 %47, label %51, label %49

49:                                               ; preds = %45
  %50 = add nuw nsw i32 %48, -382
  br label %53

51:                                               ; preds = %45
  %52 = add nsw i32 %48, -127
  br label %53

53:                                               ; preds = %51, %49, %42
  %54 = phi i32 [ %44, %42 ], [ %50, %49 ], [ %52, %51 ]
  tail call fastcc void @report_rotary_event(ptr noundef %1, i32 noundef 0, i32 noundef %54) #8
  br label %55

55:                                               ; preds = %53, %29
  %56 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %30, i32 0, i32 11
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %55
  %60 = lshr i32 %33, 16
  %61 = icmp sgt i32 %33, -1
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = and i32 %60, 255
  %64 = add nuw nsw i32 %63, 127
  br label %73

65:                                               ; preds = %59
  %66 = and i32 %33, 1073741824
  %67 = icmp eq i32 %66, 0
  %68 = and i32 %60, 255
  br i1 %67, label %71, label %69

69:                                               ; preds = %65
  %70 = add nuw nsw i32 %68, -382
  br label %73

71:                                               ; preds = %65
  %72 = add nsw i32 %68, -127
  br label %73

73:                                               ; preds = %71, %69, %62
  %74 = phi i32 [ %64, %62 ], [ %70, %69 ], [ %72, %71 ]
  tail call fastcc void @report_rotary_event(ptr noundef %1, i32 noundef 1, i32 noundef %74) #8
  br label %75

75:                                               ; preds = %73, %55, %25
  %76 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %16, i32 0, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  %79 = and i32 %21, 255
  br i1 %78, label %84, label %80

80:                                               ; preds = %75
  %81 = xor i32 %79, -1
  %82 = getelementptr inbounds %struct.pxa27x_keypad, ptr %1, i32 0, i32 10
  %83 = load i32, ptr %82, align 4
  br label %87

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.pxa27x_keypad, ptr %1, i32 0, i32 10
  %86 = load i32, ptr %85, align 4
  br label %87

87:                                               ; preds = %84, %80
  %88 = phi i32 [ %86, %84 ], [ %81, %80 ]
  %89 = phi i32 [ %79, %84 ], [ %83, %80 ]
  %90 = and i32 %89, %88
  %91 = getelementptr inbounds %struct.pxa27x_keypad, ptr %1, i32 0, i32 9
  %92 = load i32, ptr %91, align 4
  %93 = xor i32 %92, %90
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %118, label %95

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %16, i32 0, i32 3
  %97 = load i32, ptr %96, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %113, %95
  %100 = phi i32 [ %114, %113 ], [ %97, %95 ]
  %101 = phi i32 [ %115, %113 ], [ 0, %95 ]
  %102 = shl nuw i32 1, %101
  %103 = and i32 %102, %93
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %99
  %106 = add nuw i32 %101, 64
  tail call void @input_event(ptr noundef %18, i32 noundef 4, i32 noundef 4, i32 noundef %106) #8
  %107 = getelementptr %struct.pxa27x_keypad, ptr %1, i32 0, i32 5, i32 %106
  %108 = load i16, ptr %107, align 2
  %109 = zext i16 %108 to i32
  %110 = lshr i32 %90, %101
  %111 = and i32 %110, 1
  tail call void @input_event(ptr noundef %18, i32 noundef 1, i32 noundef %109, i32 noundef %111) #8
  %112 = load i32, ptr %96, align 4
  br label %113

113:                                              ; preds = %105, %99
  %114 = phi i32 [ %100, %99 ], [ %112, %105 ]
  %115 = add nuw nsw i32 %101, 1
  %116 = icmp slt i32 %115, %114
  br i1 %116, label %99, label %117

117:                                              ; preds = %113, %95
  tail call void @input_event(ptr noundef %18, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  store i32 %90, ptr %91, align 4
  br label %118

118:                                              ; preds = %117, %87, %12
  %119 = and i32 %6, 4194304
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %225, label %121

121:                                              ; preds = %118
  %122 = load ptr, ptr %1, align 4
  %123 = getelementptr inbounds %struct.pxa27x_keypad, ptr %1, i32 0, i32 2
  %124 = load ptr, ptr %123, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  %125 = load ptr, ptr %4, align 4
  %126 = getelementptr i8, ptr %125, i32 32
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #8, !srcloc !10
  %128 = lshr i32 %127, 26
  %129 = and i32 %128, 31
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false) #8
  switch i32 %129, label %143 [
    i32 0, label %178
    i32 1, label %130
  ]

130:                                              ; preds = %121
  %131 = and i32 %127, 15
  %132 = lshr i32 %127, 4
  %133 = and i32 %132, 15
  %134 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %122, i32 0, i32 2
  %135 = load i32, ptr %134, align 4
  %136 = icmp ult i32 %131, %135
  br i1 %136, label %137, label %178

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %122, i32 0, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = icmp ult i32 %133, %139
  br i1 %140, label %141, label %178

141:                                              ; preds = %137
  %142 = shl nuw nsw i32 1, %133
  br label %174

143:                                              ; preds = %121
  %144 = load ptr, ptr %4, align 4
  %145 = getelementptr i8, ptr %144, i32 40
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #8, !srcloc !10
  %147 = load ptr, ptr %4, align 4
  %148 = getelementptr i8, ptr %147, i32 48
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #8, !srcloc !10
  %150 = load ptr, ptr %4, align 4
  %151 = getelementptr i8, ptr %150, i32 56
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %151) #8, !srcloc !10
  %153 = load ptr, ptr %4, align 4
  %154 = getelementptr i8, ptr %153, i32 64
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #8, !srcloc !10
  %156 = and i32 %146, 255
  store i32 %156, ptr %3, align 4
  %157 = lshr i32 %146, 16
  %158 = and i32 %157, 255
  %159 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 1
  store i32 %158, ptr %159, align 4
  %160 = and i32 %149, 255
  %161 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 2
  store i32 %160, ptr %161, align 4
  %162 = lshr i32 %149, 16
  %163 = and i32 %162, 255
  %164 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 3
  store i32 %163, ptr %164, align 4
  %165 = and i32 %152, 255
  %166 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 4
  store i32 %165, ptr %166, align 4
  %167 = lshr i32 %152, 16
  %168 = and i32 %167, 255
  %169 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 5
  store i32 %168, ptr %169, align 4
  %170 = and i32 %155, 255
  %171 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 6
  store i32 %170, ptr %171, align 4
  %172 = lshr i32 %155, 16
  %173 = and i32 %172, 255
  br label %174

174:                                              ; preds = %143, %141
  %175 = phi i32 [ 7, %143 ], [ %131, %141 ]
  %176 = phi i32 [ %173, %143 ], [ %142, %141 ]
  %177 = getelementptr [8 x i32], ptr %3, i32 0, i32 %175
  store i32 %176, ptr %177, align 4
  br label %178

178:                                              ; preds = %174, %137, %130, %121
  %179 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %122, i32 0, i32 2
  %180 = load i32, ptr %179, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %223, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %122, i32 0, i32 1
  %184 = getelementptr inbounds %struct.pxa27x_keypad, ptr %1, i32 0, i32 7
  br label %185

185:                                              ; preds = %219, %182
  %186 = phi i32 [ %180, %182 ], [ %220, %219 ]
  %187 = phi i32 [ 0, %182 ], [ %221, %219 ]
  %188 = getelementptr %struct.pxa27x_keypad, ptr %1, i32 0, i32 8, i32 %187
  %189 = load i32, ptr %188, align 4
  %190 = getelementptr [8 x i32], ptr %3, i32 0, i32 %187
  %191 = load i32, ptr %190, align 4
  %192 = xor i32 %191, %189
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %219, label %194

194:                                              ; preds = %185
  %195 = load i32, ptr %183, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %219, label %197

197:                                              ; preds = %213, %194
  %198 = phi i32 [ %214, %213 ], [ %195, %194 ]
  %199 = phi i32 [ %215, %213 ], [ 0, %194 ]
  %200 = shl nuw i32 1, %199
  %201 = and i32 %200, %192
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %213, label %203

203:                                              ; preds = %197
  %204 = load i32, ptr %184, align 4
  %205 = shl i32 %199, %204
  %206 = add i32 %205, %187
  tail call void @input_event(ptr noundef %124, i32 noundef 4, i32 noundef 4, i32 noundef %206) #8
  %207 = getelementptr %struct.pxa27x_keypad, ptr %1, i32 0, i32 5, i32 %206
  %208 = load i16, ptr %207, align 2
  %209 = zext i16 %208 to i32
  %210 = lshr i32 %191, %199
  %211 = and i32 %210, 1
  tail call void @input_event(ptr noundef %124, i32 noundef 1, i32 noundef %209, i32 noundef %211) #8
  %212 = load i32, ptr %183, align 4
  br label %213

213:                                              ; preds = %203, %197
  %214 = phi i32 [ %198, %197 ], [ %212, %203 ]
  %215 = add nuw i32 %199, 1
  %216 = icmp ult i32 %215, %214
  br i1 %216, label %197, label %217

217:                                              ; preds = %213
  %218 = load i32, ptr %179, align 4
  br label %219

219:                                              ; preds = %217, %194, %185
  %220 = phi i32 [ %218, %217 ], [ %186, %194 ], [ %186, %185 ]
  %221 = add nuw i32 %187, 1
  %222 = icmp ult i32 %221, %220
  br i1 %222, label %185, label %223

223:                                              ; preds = %219, %178
  tail call void @input_event(ptr noundef %124, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %224 = getelementptr inbounds %struct.pxa27x_keypad, ptr %1, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %224, ptr noundef nonnull align 4 dereferenceable(32) %3, i32 32, i1 false) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  br label %225

225:                                              ; preds = %223, %118
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pxa27x_keypad_config(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.pxa27x_keypad, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !10
  %6 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %2, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %2, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = shl i32 %7, 26
  %15 = add i32 %14, 469762048
  %16 = and i32 %15, 469762048
  %17 = shl i32 %11, 23
  %18 = add i32 %17, 58720256
  %19 = and i32 %18, 58720256
  %20 = or i32 %16, %19
  %21 = or i32 %20, 538966016
  br label %22

22:                                               ; preds = %13, %9, %1
  %23 = phi i32 [ %21, %13 ], [ 0, %9 ], [ 0, %1 ]
  %24 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %2, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %2, i32 0, i32 11
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 %27, i32 4
  %32 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %2, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @llvm.umax.i32(i32 %33, i32 %31)
  %35 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %2, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %22
  %39 = select i1 %26, i32 0, i32 3
  %40 = or i32 %39, 12
  %41 = select i1 %30, i32 %39, i32 %40
  %42 = shl nsw i32 -1, %34
  %43 = or i32 %42, %41
  %44 = xor i32 %43, -1
  br label %45

45:                                               ; preds = %38, %22
  %46 = phi i32 [ %44, %38 ], [ %36, %22 ]
  %47 = getelementptr inbounds %struct.pxa27x_keypad, ptr %0, i32 0, i32 10
  store i32 %46, ptr %47, align 4
  %48 = or i32 %23, 4
  %49 = select i1 %26, i32 %23, i32 %48
  %50 = or i32 %49, 8
  %51 = select i1 %30, i32 %49, i32 %50
  %52 = icmp eq i32 %34, 0
  %53 = shl i32 %34, 6
  %54 = add i32 %53, 448
  %55 = and i32 %54, 448
  %56 = or i32 %55, 3
  %57 = select i1 %52, i32 0, i32 %56
  %58 = or i32 %51, %57
  %59 = or i32 %58, 16
  %60 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %59) #8, !srcloc !11
  %61 = load ptr, ptr %3, align 4
  %62 = getelementptr i8, ptr %61, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 8323199) #8, !srcloc !11
  %63 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, ptr %2, i32 0, i32 15
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %3, align 4
  %66 = getelementptr i8, ptr %65, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #8, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_parse_properties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @report_rotary_event(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.pxa27x_keypad, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = getelementptr %struct.pxa27x_keypad, ptr %0, i32 0, i32 6, i32 %1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = shl i32 %1, 1
  %13 = add i32 %12, 64
  %14 = icmp slt i32 %2, 1
  %15 = zext i1 %14 to i32
  %16 = or i32 %13, %15
  %17 = getelementptr %struct.pxa27x_keypad, ptr %0, i32 0, i32 5, i32 %16
  %18 = load i16, ptr %17, align 2
  tail call void @input_event(ptr noundef %5, i32 noundef 4, i32 noundef 4, i32 noundef %16) #8
  %19 = and i16 %18, 255
  %20 = zext i16 %19 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %20, i32 noundef 1) #8
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  tail call void @input_event(ptr noundef %5, i32 noundef 4, i32 noundef 4, i32 noundef %16) #8
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %20, i32 noundef 0) #8
  br label %22

21:                                               ; preds = %7
  tail call void @input_event(ptr noundef %5, i32 noundef 2, i32 noundef %9, i32 noundef %2) #8
  br label %22

22:                                               ; preds = %21, %11
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %23

23:                                               ; preds = %22, %3
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa27x_keypad_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.pxa27x_keypad, ptr %3, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 1) #8
  br label %19

16:                                               ; preds = %8, %1
  %17 = getelementptr inbounds %struct.pxa27x_keypad, ptr %3, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %18) #8
  tail call void @clk_unprepare(ptr noundef %18) #8
  br label %19

19:                                               ; preds = %16, %12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa27x_keypad_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pxa27x_keypad, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.pxa27x_keypad, ptr %3, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @irq_set_irq_wake(i32 noundef %16, i32 noundef 0) #8
  br label %33

18:                                               ; preds = %10, %1
  %19 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 37
  tail call void @mutex_lock(ptr noundef %19) #8
  %20 = tail call zeroext i1 @input_device_enabled(ptr noundef %5) #8
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.pxa27x_keypad, ptr %3, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @clk_prepare(ptr noundef %23) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = tail call i32 @clk_enable(ptr noundef %23) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @clk_unprepare(ptr noundef %23) #8
  br label %31

30:                                               ; preds = %26
  tail call fastcc void @pxa27x_keypad_config(ptr noundef %3)
  br label %31

31:                                               ; preds = %30, %29, %21, %18
  %32 = phi i32 [ 0, %30 ], [ 0, %18 ], [ %27, %29 ], [ %24, %21 ]
  tail call void @mutex_unlock(ptr noundef %19) #8
  br label %33

33:                                               ; preds = %31, %14
  %34 = phi i32 [ 0, %14 ], [ %32, %31 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
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
!9 = !{i32 0, i32 33}
!10 = !{i64 3479068}
!11 = !{i64 3478650}
