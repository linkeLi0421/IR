; ModuleID = '/llk/IR/drivers/input/keyboard/samsung-keypad.c_pt.bc'
source_filename = "../drivers/input/keyboard/samsung-keypad.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
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
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.samsung_keypad_platdata = type { ptr, i32, i32, i8, i8, ptr }
%struct.matrix_keymap_data = type { ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.samsung_keypad = type { ptr, ptr, ptr, ptr, %struct.wait_queue_head, i8, i8, i32, i32, i32, i32, i32, [8 x i32], [0 x i16] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@samsung_keypad_dt_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c6410-keypad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-keypad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@samsung_keypad_driver_ids = internal constant [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"samsung-keypad\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"s5pv210-keypad\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id zeroinitializer], align 4
@__UNIQUE_ID_description211 = internal constant [34 x i8] c"description=Samsung keypad driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author212 = internal constant [48 x i8] c"author=Joonyoung Shim <jy0922.shim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author213 = internal constant [42 x i8] c"author=Donghwa Lee <dh09.lee@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@samsung_keypad_driver = internal global %struct.platform_driver { ptr @samsung_keypad_probe, ptr @samsung_keypad_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @samsung_keypad_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_keypad_pm_ops, ptr null, ptr null }, ptr @samsung_keypad_driver_ids, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [15 x i8] c"samsung-keypad\00", align 1
@samsung_keypad_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @samsung_keypad_suspend, ptr @samsung_keypad_resume, ptr @samsung_keypad_suspend, ptr @samsung_keypad_resume, ptr @samsung_keypad_suspend, ptr @samsung_keypad_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_keypad_runtime_suspend, ptr @samsung_keypad_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"no keymap data defined\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"keypad\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to get keypad clk\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"keypad clock prepare failed\0A\00", align 1
@samsung_keypad_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"&keypad->wait\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"samsung,s5pv210-keypad\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"failed to build keymap\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"failed to register keypad interrupt\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"missing device tree data\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"could not allocate memory for platform data\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"samsung,keypad-num-rows\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"samsung,keypad-num-columns\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"number of keypad rows/columns not specified\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"could not allocate memory for keymap data\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"could not allocate memory for keymap\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"keypad,row\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"keypad,column\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"linux,code\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"linux,input-no-autorepeat\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"linux,input-wakeup\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_author213, ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_license214], section "llvm.metadata"

@__mod_of__samsung_keypad_dt_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @samsung_keypad_dt_match
@__mod_platform__samsung_keypad_driver_ids_device_table = dso_local alias [3 x %struct.platform_device_id], ptr @samsung_keypad_driver_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @samsung_keypad_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @samsung_keypad_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_keypad_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %97

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.9) #9
  br label %87

16:                                               ; preds = %11
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 20, i32 noundef 3520) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.10) #9
  br label %87

20:                                               ; preds = %16
  %21 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.11, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %22 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.12, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %23 = load i32, ptr %2, align 4
  %24 = icmp ne i32 %23, 0
  %25 = load i32, ptr %3, align 4
  %26 = icmp ne i32 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.13) #9
  br label %87

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.samsung_keypad_platdata, ptr %17, i32 0, i32 1
  store i32 %23, ptr %30, align 4
  %31 = getelementptr inbounds %struct.samsung_keypad_platdata, ptr %17, i32 0, i32 2
  store i32 %25, ptr %31, align 4
  %32 = call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 8, i32 noundef 3520) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.14) #9
  br label %87

35:                                               ; preds = %29
  store ptr %32, ptr %17, align 4
  %36 = call ptr @of_get_next_child(ptr noundef nonnull %13, ptr noundef null) #8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %38, %35
  %39 = phi i32 [ %41, %38 ], [ 0, %35 ]
  %40 = phi ptr [ %42, %38 ], [ %36, %35 ]
  %41 = add i32 %39, 1
  %42 = call ptr @of_get_next_child(ptr noundef nonnull %13, ptr noundef nonnull %40) #8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %38

44:                                               ; preds = %38, %35
  %45 = phi i32 [ 0, %35 ], [ %41, %38 ]
  %46 = getelementptr inbounds %struct.matrix_keymap_data, ptr %32, i32 0, i32 1
  store i32 %45, ptr %46, align 4
  %47 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %45, i32 4) #8
  %48 = extractvalue { i32, i1 } %47, 1
  br i1 %48, label %53, label %49, !prof !8

49:                                               ; preds = %44
  %50 = extractvalue { i32, i1 } %47, 0
  %51 = call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef %50, i32 noundef 3520) #8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.15) #9
  br label %87

54:                                               ; preds = %49
  store ptr %51, ptr %32, align 4
  %55 = call ptr @of_get_next_child(ptr noundef nonnull %13, ptr noundef null) #8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %76, label %57

57:                                               ; preds = %57, %54
  %58 = phi ptr [ %74, %57 ], [ %55, %54 ]
  %59 = phi ptr [ %73, %57 ], [ %51, %54 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !9
  %60 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %58, ptr noundef nonnull @.str.16, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #8
  %61 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %58, ptr noundef nonnull @.str.17, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #8
  %62 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %58, ptr noundef nonnull @.str.18, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #8
  %63 = load i32, ptr %4, align 4
  %64 = shl i32 %63, 24
  %65 = and i32 %64, 520093696
  %66 = load i32, ptr %5, align 4
  %67 = shl i32 %66, 16
  %68 = and i32 %67, 2031616
  %69 = or i32 %68, %65
  %70 = load i32, ptr %6, align 4
  %71 = and i32 %70, 65535
  %72 = or i32 %69, %71
  %73 = getelementptr i32, ptr %59, i32 1
  store i32 %72, ptr %59, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %74 = call ptr @of_get_next_child(ptr noundef nonnull %13, ptr noundef nonnull %58) #8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %57

76:                                               ; preds = %57, %54
  %77 = call ptr @of_get_property(ptr noundef nonnull %13, ptr noundef nonnull @.str.19, ptr noundef null) #8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.samsung_keypad_platdata, ptr %17, i32 0, i32 3
  store i8 1, ptr %80, align 4
  br label %81

81:                                               ; preds = %79, %76
  %82 = call ptr @of_find_property(ptr noundef nonnull %13, ptr noundef nonnull @.str.20, ptr noundef null) #8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = call ptr @of_find_property(ptr noundef nonnull %13, ptr noundef nonnull @.str.21, ptr noundef null) #8
  %86 = icmp ne ptr %85, null
  br label %89

87:                                               ; preds = %53, %34, %28, %19, %15
  %88 = phi ptr [ inttoptr (i32 -22 to ptr), %15 ], [ inttoptr (i32 -12 to ptr), %19 ], [ inttoptr (i32 -22 to ptr), %28 ], [ inttoptr (i32 -12 to ptr), %34 ], [ inttoptr (i32 -12 to ptr), %53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %94

89:                                               ; preds = %84, %81
  %90 = phi i1 [ true, %81 ], [ %86, %84 ]
  %91 = getelementptr inbounds %struct.samsung_keypad_platdata, ptr %17, i32 0, i32 4
  %92 = zext i1 %90 to i8
  store i8 %92, ptr %91, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %93 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %93, label %94, label %97

94:                                               ; preds = %89, %87
  %95 = phi ptr [ %88, %87 ], [ %17, %89 ]
  %96 = ptrtoint ptr %95 to i32
  br label %236

97:                                               ; preds = %89, %1
  %98 = phi ptr [ %9, %1 ], [ %17, %89 ]
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.1) #9
  br label %236

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.samsung_keypad_platdata, ptr %98, i32 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = add i32 %104, -9
  %106 = icmp ult i32 %105, -8
  br i1 %106, label %236, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.samsung_keypad_platdata, ptr %98, i32 0, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = add i32 %109, -9
  %111 = icmp ult i32 %110, -8
  br i1 %111, label %236, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.samsung_keypad_platdata, ptr %98, i32 0, i32 5
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  call void %114(i32 noundef %104, i32 noundef %109) #8
  %117 = load i32, ptr %108, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %116, %112
  %120 = phi i32 [ %117, %116 ], [ %109, %112 ]
  %121 = add i32 %120, -1
  %122 = icmp eq i32 %121, 0
  %123 = call i32 @llvm.ctlz.i32(i32 %121, i1 false) #8, !range !10
  %124 = sub nuw nsw i32 32, %123
  %125 = select i1 %122, i32 0, i32 %124
  br label %126

126:                                              ; preds = %119, %116
  %127 = phi i32 [ %125, %119 ], [ -1, %116 ]
  %128 = load i32, ptr %103, align 4
  %129 = shl i32 %128, %127
  %130 = shl i32 %129, 1
  %131 = add i32 %130, 84
  %132 = call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef %131, i32 noundef 3520) #8
  %133 = call ptr @devm_input_allocate_device(ptr noundef %7) #8
  %134 = icmp ne ptr %132, null
  %135 = icmp ne ptr %133, null
  %136 = select i1 %134, i1 %135, i1 false
  br i1 %136, label %137, label %236

137:                                              ; preds = %126
  %138 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %139 = icmp eq ptr %138, null
  br i1 %139, label %236, label %140

140:                                              ; preds = %137
  %141 = load i32, ptr %138, align 4
  %142 = getelementptr inbounds %struct.resource, ptr %138, i32 0, i32 1
  %143 = load i32, ptr %142, align 4
  %144 = sub i32 1, %141
  %145 = add i32 %144, %143
  %146 = call ptr @devm_ioremap(ptr noundef %7, i32 noundef %141, i32 noundef %145) #8
  %147 = getelementptr inbounds %struct.samsung_keypad, ptr %132, i32 0, i32 3
  store ptr %146, ptr %147, align 4
  %148 = icmp eq ptr %146, null
  br i1 %148, label %236, label %149

149:                                              ; preds = %140
  %150 = call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.2) #8
  %151 = getelementptr inbounds %struct.samsung_keypad, ptr %132, i32 0, i32 2
  store ptr %150, ptr %151, align 4
  %152 = icmp ugt ptr %150, inttoptr (i32 -4096 to ptr)
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.3) #9
  %154 = ptrtoint ptr %150 to i32
  br label %236

155:                                              ; preds = %149
  %156 = call i32 @clk_prepare(ptr noundef %150) #8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.4) #9
  br label %236

159:                                              ; preds = %155
  store ptr %133, ptr %132, align 4
  %160 = getelementptr inbounds %struct.samsung_keypad, ptr %132, i32 0, i32 1
  store ptr %0, ptr %160, align 4
  %161 = getelementptr inbounds %struct.samsung_keypad, ptr %132, i32 0, i32 9
  store i32 %127, ptr %161, align 4
  %162 = load i32, ptr %103, align 4
  %163 = getelementptr inbounds %struct.samsung_keypad, ptr %132, i32 0, i32 10
  store i32 %162, ptr %163, align 4
  %164 = load i32, ptr %108, align 4
  %165 = getelementptr inbounds %struct.samsung_keypad, ptr %132, i32 0, i32 11
  store i32 %164, ptr %165, align 4
  %166 = getelementptr inbounds %struct.samsung_keypad, ptr %132, i32 0, i32 5
  store i8 1, ptr %166, align 4
  %167 = getelementptr inbounds %struct.samsung_keypad, ptr %132, i32 0, i32 4
  call void @__init_waitqueue_head(ptr noundef %167, ptr noundef nonnull @.str.5, ptr noundef nonnull @samsung_keypad_probe.__key) #8
  %168 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %169 = load ptr, ptr %168, align 8
  %170 = icmp eq ptr %169, null
  br i1 %170, label %173, label %171

171:                                              ; preds = %159
  %172 = call i32 @of_device_is_compatible(ptr noundef nonnull %169, ptr noundef nonnull @.str.6) #8
  br label %178

173:                                              ; preds = %159
  %174 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.platform_device_id, ptr %175, i32 0, i32 1
  %177 = load i32, ptr %176, align 4
  br label %178

178:                                              ; preds = %173, %171
  %179 = phi i32 [ %177, %173 ], [ %172, %171 ]
  %180 = getelementptr inbounds %struct.samsung_keypad, ptr %132, i32 0, i32 8
  store i32 %179, ptr %180, align 4
  %181 = load ptr, ptr %0, align 8
  store ptr %181, ptr %133, align 8
  %182 = getelementptr inbounds %struct.input_dev, ptr %133, i32 0, i32 3
  store i16 25, ptr %182, align 4
  %183 = getelementptr inbounds %struct.input_dev, ptr %133, i32 0, i32 40, i32 1
  store ptr %7, ptr %183, align 4
  %184 = getelementptr inbounds %struct.input_dev, ptr %133, i32 0, i32 31
  store ptr @samsung_keypad_open, ptr %184, align 4
  %185 = getelementptr inbounds %struct.input_dev, ptr %133, i32 0, i32 32
  store ptr @samsung_keypad_close, ptr %185, align 8
  %186 = load i32, ptr %103, align 4
  %187 = load i32, ptr %108, align 4
  %188 = getelementptr inbounds %struct.samsung_keypad, ptr %132, i32 0, i32 13
  %189 = call i32 @matrix_keypad_build_keymap(ptr noundef nonnull %99, ptr noundef null, i32 noundef %186, i32 noundef %187, ptr noundef %188, ptr noundef nonnull %133) #8
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %178
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.7) #9
  br label %233

192:                                              ; preds = %178
  call void @input_set_capability(ptr noundef nonnull %133, i32 noundef 4, i32 noundef 4) #8
  %193 = getelementptr inbounds %struct.samsung_keypad_platdata, ptr %98, i32 0, i32 3
  %194 = load i8, ptr %193, align 4, !range !11
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.input_dev, ptr %133, i32 0, i32 5
  %198 = load i32, ptr %197, align 4
  %199 = or i32 %198, 1048576
  store i32 %199, ptr %197, align 4
  br label %200

200:                                              ; preds = %196, %192
  %201 = getelementptr inbounds %struct.input_dev, ptr %133, i32 0, i32 40, i32 8
  store ptr %132, ptr %201, align 8
  %202 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %203 = getelementptr inbounds %struct.samsung_keypad, ptr %132, i32 0, i32 7
  store i32 %202, ptr %203, align 4
  %204 = icmp slt i32 %202, 0
  br i1 %204, label %233, label %205

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %207 = load ptr, ptr %206, align 4
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %211

209:                                              ; preds = %205
  %210 = load ptr, ptr %7, align 4
  br label %211

211:                                              ; preds = %209, %205
  %212 = phi ptr [ %210, %209 ], [ %207, %205 ]
  %213 = call i32 @devm_request_threaded_irq(ptr noundef %7, i32 noundef %202, ptr noundef null, ptr noundef nonnull @samsung_keypad_irq, i32 noundef 8192, ptr noundef %212, ptr noundef nonnull %132) #8
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %211
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.8) #9
  br label %233

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.samsung_keypad_platdata, ptr %98, i32 0, i32 4
  %218 = load i8, ptr %217, align 1, !range !11
  %219 = icmp ne i8 %218, 0
  %220 = call i32 @device_init_wakeup(ptr noundef %7, i1 noundef zeroext %219) #8
  %221 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %132, ptr %221, align 8
  call void @pm_runtime_enable(ptr noundef %7) #8
  %222 = load ptr, ptr %132, align 4
  %223 = call i32 @input_register_device(ptr noundef %222) #8
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %216
  %226 = load ptr, ptr %168, align 8
  %227 = icmp eq ptr %226, null
  br i1 %227, label %236, label %228

228:                                              ; preds = %225
  %229 = load ptr, ptr %98, align 4
  %230 = load ptr, ptr %229, align 4
  call void @devm_kfree(ptr noundef %7, ptr noundef %230) #8
  %231 = load ptr, ptr %98, align 4
  call void @devm_kfree(ptr noundef %7, ptr noundef %231) #8
  call void @devm_kfree(ptr noundef %7, ptr noundef %98) #8
  br label %236

232:                                              ; preds = %216
  call void @__pm_runtime_disable(ptr noundef %7, i1 noundef zeroext true) #8
  br label %233

233:                                              ; preds = %232, %215, %200, %191
  %234 = phi i32 [ %189, %191 ], [ %213, %215 ], [ %223, %232 ], [ %202, %200 ]
  %235 = load ptr, ptr %151, align 4
  call void @clk_unprepare(ptr noundef %235) #8
  br label %236

236:                                              ; preds = %233, %228, %225, %158, %153, %140, %137, %126, %107, %102, %101, %94
  %237 = phi i32 [ %154, %153 ], [ %156, %158 ], [ %234, %233 ], [ -22, %101 ], [ %96, %94 ], [ -22, %102 ], [ -22, %107 ], [ -12, %126 ], [ -19, %137 ], [ -16, %140 ], [ 0, %228 ], [ 0, %225 ]
  ret i32 %237
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_keypad_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #8
  %5 = load ptr, ptr %3, align 4
  tail call void @input_unregister_device(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.samsung_keypad, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_unprepare(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_keypad_open(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.samsung_keypad, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #8
  %8 = getelementptr inbounds %struct.samsung_keypad, ptr %3, i32 0, i32 5
  store i8 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.samsung_keypad, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_enable(ptr noundef %10) #8
  %12 = getelementptr inbounds %struct.samsung_keypad, ptr %3, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %15 = or i32 %14, 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %16 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #8, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #8, !srcloc !15
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  %21 = tail call i32 @__pm_runtime_idle(ptr noundef %20, i32 noundef 5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @samsung_keypad_close(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @samsung_keypad_stop(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_keypad_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca [8 x i32], align 4
  %4 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #8
  %9 = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 3
  %10 = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 11
  %11 = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 8
  %12 = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 10
  %13 = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 9
  %14 = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 12
  %15 = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 5
  %16 = getelementptr inbounds %struct.samsung_keypad, ptr %1, i32 0, i32 4
  br label %17

17:                                               ; preds = %121, %2
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr i8, ptr %18, i32 4
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  call void @arm_heavy_mb() #8
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr i8, ptr %21, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 -1) #8, !srcloc !15
  %23 = load i32, ptr %10, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %50, label %25

25:                                               ; preds = %25, %17
  %26 = phi i32 [ %47, %25 ], [ 0, %17 ]
  %27 = load i32, ptr %11, align 4
  %28 = icmp eq i32 %27, 1
  %29 = shl nuw i32 1, %26
  %30 = xor i32 %29, -1
  %31 = shl i32 %30, 8
  %32 = and i32 %31, 65280
  %33 = and i32 %29, 255
  %34 = xor i32 %33, 255
  %35 = select i1 %28, i32 %32, i32 %34
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  call void @arm_heavy_mb() #8
  %36 = load ptr, ptr %9, align 4
  %37 = getelementptr i8, ptr %36, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #8, !srcloc !15
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 214748000) #8
  %39 = load ptr, ptr %9, align 4
  %40 = getelementptr i8, ptr %39, i32 12
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #8, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !20
  %42 = load i32, ptr %12, align 4
  %43 = shl nsw i32 -1, %42
  %44 = or i32 %43, %41
  %45 = xor i32 %44, -1
  %46 = getelementptr i32, ptr %3, i32 %26
  store i32 %45, ptr %46, align 4
  %47 = add nuw i32 %26, 1
  %48 = load i32, ptr %10, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %25, label %50

50:                                               ; preds = %25, %17
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  call void @arm_heavy_mb() #8
  %51 = load ptr, ptr %9, align 4
  %52 = getelementptr i8, ptr %51, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 0) #8, !srcloc !15
  %53 = load ptr, ptr %1, align 4
  %54 = load i32, ptr %10, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %14, ptr noundef nonnull align 4 dereferenceable(32) %3, i32 32, i1 false) #8
  br label %124

57:                                               ; preds = %94, %50
  %58 = phi i32 [ %95, %94 ], [ %54, %50 ]
  %59 = phi i32 [ %96, %94 ], [ 0, %50 ]
  %60 = phi i32 [ %66, %94 ], [ 0, %50 ]
  %61 = getelementptr i32, ptr %3, i32 %59
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr %struct.samsung_keypad, ptr %1, i32 0, i32 12, i32 %59
  %64 = load i32, ptr %63, align 4
  %65 = xor i32 %64, %62
  %66 = or i32 %62, %60
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %94, label %68

68:                                               ; preds = %57
  %69 = load i32, ptr %12, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %91, label %71

71:                                               ; preds = %87, %68
  %72 = phi i32 [ %88, %87 ], [ %69, %68 ]
  %73 = phi i32 [ %89, %87 ], [ 0, %68 ]
  %74 = shl nuw i32 1, %73
  %75 = and i32 %74, %65
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %71
  %78 = load i32, ptr %13, align 4
  %79 = shl i32 %73, %78
  %80 = add i32 %79, %59
  call void @input_event(ptr noundef %53, i32 noundef 4, i32 noundef 4, i32 noundef %80) #8
  %81 = getelementptr %struct.samsung_keypad, ptr %1, i32 0, i32 13, i32 %80
  %82 = load i16, ptr %81, align 2
  %83 = zext i16 %82 to i32
  %84 = lshr i32 %62, %73
  %85 = and i32 %84, 1
  call void @input_event(ptr noundef %53, i32 noundef 1, i32 noundef %83, i32 noundef %85) #8
  %86 = load i32, ptr %12, align 4
  br label %87

87:                                               ; preds = %77, %71
  %88 = phi i32 [ %72, %71 ], [ %86, %77 ]
  %89 = add nuw i32 %73, 1
  %90 = icmp ult i32 %89, %88
  br i1 %90, label %71, label %91

91:                                               ; preds = %87, %68
  %92 = load ptr, ptr %1, align 4
  call void @input_event(ptr noundef %92, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %93 = load i32, ptr %10, align 4
  br label %94

94:                                               ; preds = %91, %57
  %95 = phi i32 [ %58, %57 ], [ %93, %91 ]
  %96 = add nuw i32 %59, 1
  %97 = icmp ult i32 %96, %95
  br i1 %97, label %57, label %98

98:                                               ; preds = %94
  %99 = icmp eq i32 %66, 0
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %14, ptr noundef nonnull align 4 dereferenceable(32) %3, i32 32, i1 false) #8
  br i1 %99, label %124, label %100

100:                                              ; preds = %98
  %101 = load i8, ptr %15, align 4, !range !11
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %124

103:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #8
  %104 = call i32 @prepare_to_wait_event(ptr noundef %16, ptr noundef nonnull %4, i32 noundef 2) #8
  %105 = load i8, ptr %15, align 4, !range !11
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %107, %103
  %108 = phi i32 [ %116, %107 ], [ 5, %103 ]
  %109 = call i32 @schedule_timeout(i32 noundef %108) #8
  %110 = call i32 @prepare_to_wait_event(ptr noundef %16, ptr noundef nonnull %4, i32 noundef 2) #8
  %111 = load i8, ptr %15, align 4, !range !11
  %112 = icmp ne i8 %111, 0
  %113 = xor i1 %112, true
  %114 = icmp ne i32 %109, 0
  %115 = select i1 %113, i1 true, i1 %114
  %116 = select i1 %115, i32 %109, i32 1
  %117 = icmp eq i32 %116, 0
  %118 = select i1 %112, i1 true, i1 %117
  br i1 %118, label %119, label %107

119:                                              ; preds = %107
  call void @finish_wait(ptr noundef %16, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #8
  br label %121

120:                                              ; preds = %103
  call void @finish_wait(ptr noundef %16, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #8
  br label %121

121:                                              ; preds = %120, %119
  %122 = load i8, ptr %15, align 4
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %17, label %124

124:                                              ; preds = %121, %100, %98, %56
  %125 = load ptr, ptr %5, align 4
  %126 = getelementptr inbounds %struct.platform_device, ptr %125, i32 0, i32 3
  %127 = call i32 @__pm_runtime_idle(ptr noundef %126, i32 noundef 5) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @samsung_keypad_stop(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.samsung_keypad, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #8
  %6 = getelementptr inbounds %struct.samsung_keypad, ptr %0, i32 0, i32 5
  store i8 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.samsung_keypad, ptr %0, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %7, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %8 = getelementptr inbounds %struct.samsung_keypad, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  tail call void @disable_irq(i32 noundef %9) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %10 = getelementptr inbounds %struct.samsung_keypad, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 -1) #8, !srcloc !15
  %13 = load ptr, ptr %10, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  %15 = and i32 %14, -4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  %16 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #8, !srcloc !15
  %17 = getelementptr inbounds %struct.samsung_keypad, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %18) #8
  %19 = load i32, ptr %8, align 4
  tail call void @enable_irq(i32 noundef %19) #8
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  %22 = tail call i32 @__pm_runtime_idle(ptr noundef %21, i32 noundef 5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_keypad_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 37
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = tail call zeroext i1 @input_device_enabled(ptr noundef %4) #8
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call fastcc void @samsung_keypad_stop(ptr noundef %3)
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.samsung_keypad, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_enable(ptr noundef %10) #8
  %12 = getelementptr inbounds %struct.samsung_keypad, ptr %3, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !25
  %15 = getelementptr inbounds %struct.samsung_keypad, ptr %3, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3, i32 11, i32 1
  %18 = load i16, ptr %17, align 4
  %19 = and i16 %18, 1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3, i32 11, i32 6
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.samsung_keypad, ptr %3, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @irq_set_irq_wake(i32 noundef %27, i32 noundef 1) #8
  br label %29

29:                                               ; preds = %25, %21, %8
  %30 = or i32 %14, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !26
  tail call void @arm_heavy_mb() #8
  %31 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %30) #8, !srcloc !15
  %32 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %32) #8
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_keypad_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 37
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.samsung_keypad, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_enable(ptr noundef %7) #8
  %9 = getelementptr inbounds %struct.samsung_keypad, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !25
  %12 = and i32 %11, -17
  %13 = getelementptr inbounds %struct.samsung_keypad, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3, i32 11, i32 1
  %16 = load i16, ptr %15, align 4
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3, i32 11, i32 6
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.samsung_keypad, ptr %3, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @irq_set_irq_wake(i32 noundef %25, i32 noundef 0) #8
  br label %27

27:                                               ; preds = %23, %19, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !26
  tail call void @arm_heavy_mb() #8
  %28 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %12) #8, !srcloc !15
  %29 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %29) #8
  %30 = tail call zeroext i1 @input_device_enabled(ptr noundef %4) #8
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load ptr, ptr %13, align 4
  %33 = getelementptr inbounds %struct.platform_device, ptr %32, i32 0, i32 3
  %34 = tail call i32 @__pm_runtime_resume(ptr noundef %33, i32 noundef 4) #8
  %35 = getelementptr inbounds %struct.samsung_keypad, ptr %3, i32 0, i32 5
  store i8 0, ptr %35, align 4
  %36 = load ptr, ptr %6, align 4
  %37 = tail call i32 @clk_enable(ptr noundef %36) #8
  %38 = load ptr, ptr %9, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %40 = or i32 %39, 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %41 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %40) #8, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  %42 = load ptr, ptr %9, align 4
  %43 = getelementptr i8, ptr %42, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 0) #8, !srcloc !15
  %44 = load ptr, ptr %13, align 4
  %45 = getelementptr inbounds %struct.platform_device, ptr %44, i32 0, i32 3
  %46 = tail call i32 @__pm_runtime_idle(ptr noundef %45, i32 noundef 5) #8
  br label %47

47:                                               ; preds = %31, %27
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_keypad_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.samsung_keypad, ptr %3, i32 0, i32 5
  %5 = load i8, ptr %4, align 4, !range !11
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.samsung_keypad, ptr %3, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @irq_set_irq_wake(i32 noundef %9, i32 noundef 1) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.samsung_keypad, ptr %3, i32 0, i32 6
  store i8 1, ptr %13, align 1
  br label %14

14:                                               ; preds = %12, %7
  %15 = getelementptr inbounds %struct.samsung_keypad, ptr %3, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !27
  %18 = or i32 %17, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !28
  tail call void @arm_heavy_mb() #8
  %19 = load ptr, ptr %15, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %18) #8, !srcloc !15
  %20 = getelementptr inbounds %struct.samsung_keypad, ptr %3, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  tail call void @clk_disable(ptr noundef %21) #8
  br label %22

22:                                               ; preds = %14, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_keypad_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.samsung_keypad, ptr %3, i32 0, i32 5
  %5 = load i8, ptr %4, align 4, !range !11
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.samsung_keypad, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_enable(ptr noundef %9) #8
  %11 = getelementptr inbounds %struct.samsung_keypad, ptr %3, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !29
  %14 = and i32 %13, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  %15 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #8, !srcloc !15
  %16 = getelementptr inbounds %struct.samsung_keypad, ptr %3, i32 0, i32 6
  %17 = load i8, ptr %16, align 1, !range !11
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.samsung_keypad, ptr %3, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @irq_set_irq_wake(i32 noundef %21, i32 noundef 0) #8
  br label %23

23:                                               ; preds = %19, %7, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i32 0, i32 33}
!11 = !{i8 0, i8 2}
!12 = !{i64 4553830}
!13 = !{i64 2152483708}
!14 = !{i64 2152483918}
!15 = !{i64 4553412}
!16 = !{i64 2152484239}
!17 = !{i64 2152481184}
!18 = !{i64 2152481377}
!19 = !{i64 2152477982}
!20 = !{i64 2152479746}
!21 = !{i64 2152479936}
!22 = !{i64 2152484678}
!23 = !{i64 2152485156}
!24 = !{i64 2152485366}
!25 = !{i64 2152497091}
!26 = !{i64 2152497301}
!27 = !{i64 2152494463}
!28 = !{i64 2152494664}
!29 = !{i64 2152496414}
!30 = !{i64 2152496615}
