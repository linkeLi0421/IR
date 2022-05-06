; ModuleID = '/llk/IR/drivers/input/keyboard/cros_ec_keyb.c_pt.bc'
source_filename = "../drivers/input/keyboard/cros_ec_keyb.c"
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
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%union.ec_response_get_next_data = type <{ i64, [5 x i8] }>
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
%struct.cros_ec_keyb = type { i32, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, [15 x i16], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.ec_params_mkbp_info = type { i8, i8 }

@cros_ec_keyb_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,cros-ec-keyb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license249 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [40 x i8] c"description=ChromeOS EC keyboard driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias251 = internal constant [28 x i8] c"alias=platform:cros-ec-keyb\00", section ".modinfo", align 1
@cros_ec_keyb_driver = internal global %struct.platform_driver { ptr @cros_ec_keyb_probe, ptr @cros_ec_keyb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cros_ec_keyb_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_keyb_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"cros-ec-keyb\00", align 1
@cros_ec_keyb_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @cros_ec_keyb_resume, ptr null, ptr @cros_ec_keyb_resume, ptr null, ptr @cros_ec_keyb_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"cannot register matrix inputs: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"cannot register non-matrix inputs: %d\0A\00", align 1
@cros_ec_keyb_attr_group = internal constant %struct.attribute_group { ptr null, ptr @cros_ec_keyb_attr_is_visible, ptr null, ptr @cros_ec_keyb_attrs, ptr null }, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to create attributes. err=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"cannot register notifier: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"cros_ec\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"google,needs-ghost-filter\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"cannot build key matrix\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"function-row-physmap\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Only support up to %d top row keys\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"cannot register input device\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"%s/input1\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"cros_ec_buttons\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"cannot query switches\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Transfer error %d/%d: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Wrong size %d/%d: %d != %zu\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@cros_ec_keyb_attrs = internal global [2 x ptr] [ptr @dev_attr_function_row_physmap, ptr null], align 4
@dev_attr_function_row_physmap = internal global %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292 }, ptr @function_row_physmap_show, ptr null }, align 4
@.str.17 = private unnamed_addr constant [21 x i8] c"function_row_physmap\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"%s%02X\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"Discarded incomplete key matrix event.\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias251, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

@__mod_of__cros_ec_keyb_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @cros_ec_keyb_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_ec_keyb_driver, ptr noundef nonnull @__this_module) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_ec_keyb_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_keyb_probe(ptr noundef %0) #2 {
  %2 = alloca %union.ec_response_get_next_data, align 4
  %3 = alloca %union.ec_response_get_next_data, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %238, label %13

13:                                               ; preds = %1
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 92, i32 noundef 3520) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %238, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.cros_ec_keyb, ptr %14, i32 0, i32 8
  store ptr %9, ptr %17, align 4
  %18 = getelementptr inbounds %struct.cros_ec_keyb, ptr %14, i32 0, i32 7
  store ptr %5, ptr %18, align 4
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %14, ptr %19, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %20 = getelementptr inbounds %struct.cros_ec_keyb, ptr %14, i32 0, i32 1
  %21 = tail call i32 @matrix_keypad_parse_properties(ptr noundef %5, ptr noundef nonnull %14, ptr noundef %20) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %151

23:                                               ; preds = %16
  %24 = load i32, ptr %20, align 4
  %25 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %24, i32 noundef 3520) #9
  %26 = getelementptr inbounds %struct.cros_ec_keyb, ptr %14, i32 0, i32 5
  store ptr %25, ptr %26, align 4
  %27 = icmp eq ptr %25, null
  br i1 %27, label %151, label %28

28:                                               ; preds = %23
  %29 = load i32, ptr %20, align 4
  %30 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %29, i32 noundef 3520) #9
  %31 = getelementptr inbounds %struct.cros_ec_keyb, ptr %14, i32 0, i32 6
  store ptr %30, ptr %31, align 4
  %32 = icmp eq ptr %30, null
  br i1 %32, label %151, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %9, align 8
  %35 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %5, i32 noundef 3264, ptr noundef nonnull @.str.5, ptr noundef %34) #9
  %36 = icmp eq ptr %35, null
  br i1 %36, label %151, label %37

37:                                               ; preds = %33
  %38 = tail call ptr @devm_input_allocate_device(ptr noundef %5) #9
  %39 = icmp eq ptr %38, null
  br i1 %39, label %151, label %40

40:                                               ; preds = %37
  store ptr @.str.6, ptr %38, align 8
  %41 = getelementptr inbounds %struct.input_dev, ptr %38, i32 0, i32 1
  store ptr %35, ptr %41, align 4
  %42 = getelementptr inbounds %struct.input_dev, ptr %38, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, 1048576
  store i32 %44, ptr %42, align 4
  %45 = getelementptr inbounds %struct.input_dev, ptr %38, i32 0, i32 3
  store i16 6, ptr %45, align 4
  %46 = getelementptr inbounds %struct.input_dev, ptr %38, i32 0, i32 3, i32 3
  store i16 1, ptr %46, align 2
  %47 = getelementptr inbounds %struct.input_dev, ptr %38, i32 0, i32 3, i32 2
  store i16 0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.input_dev, ptr %38, i32 0, i32 40, i32 1
  store ptr %5, ptr %48, align 4
  %49 = load ptr, ptr %10, align 8
  %50 = tail call ptr @of_find_property(ptr noundef %49, ptr noundef nonnull @.str.7, ptr noundef null) #9
  %51 = icmp ne ptr %50, null
  %52 = getelementptr inbounds %struct.cros_ec_keyb, ptr %14, i32 0, i32 4
  %53 = zext i1 %51 to i8
  store i8 %53, ptr %52, align 4
  %54 = load i32, ptr %14, align 4
  %55 = load i32, ptr %20, align 4
  %56 = tail call i32 @matrix_keypad_build_keymap(ptr noundef null, ptr noundef null, i32 noundef %54, i32 noundef %55, ptr noundef null, ptr noundef nonnull %38) #9
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8) #10
  br label %151

59:                                               ; preds = %40
  %60 = load i32, ptr %20, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = add i32 %60, -1
  %64 = icmp eq i32 %63, 0
  %65 = tail call i32 @llvm.ctlz.i32(i32 %63, i1 false) #9, !range !9
  %66 = sub nuw nsw i32 32, %65
  %67 = select i1 %64, i32 0, i32 %66
  br label %68

68:                                               ; preds = %62, %59
  %69 = phi i32 [ %67, %62 ], [ -1, %59 ]
  %70 = getelementptr inbounds %struct.cros_ec_keyb, ptr %14, i32 0, i32 2
  store i32 %69, ptr %70, align 4
  tail call void @input_set_capability(ptr noundef nonnull %38, i32 noundef 4, i32 noundef 4) #9
  %71 = getelementptr inbounds %struct.input_dev, ptr %38, i32 0, i32 40, i32 8
  store ptr %14, ptr %71, align 8
  %72 = getelementptr inbounds %struct.cros_ec_keyb, ptr %14, i32 0, i32 9
  store ptr %38, ptr %72, align 4
  %73 = load i32, ptr %70, align 4
  %74 = getelementptr inbounds %struct.input_dev, ptr %38, i32 0, i32 17
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.input_dev, ptr %38, i32 0, i32 16
  %77 = load i32, ptr %76, align 8
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %84, !prof !10

79:                                               ; preds = %68
  %80 = load i32, ptr %20, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %118, label %82

82:                                               ; preds = %79
  %83 = load i32, ptr %14, align 4
  br label %85

84:                                               ; preds = %68
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/input/keyboard/cros_ec_keyb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 307, 0\0A.popsection", ""() #9, !srcloc !11
  unreachable

85:                                               ; preds = %112, %82
  %86 = phi i32 [ %80, %82 ], [ %113, %112 ]
  %87 = phi i32 [ %83, %82 ], [ %114, %112 ]
  %88 = phi i32 [ %83, %82 ], [ %115, %112 ]
  %89 = phi i32 [ 0, %82 ], [ %116, %112 ]
  %90 = icmp eq i32 %88, 0
  br i1 %90, label %112, label %91

91:                                               ; preds = %106, %85
  %92 = phi i32 [ %107, %106 ], [ %87, %85 ]
  %93 = phi i32 [ %108, %106 ], [ 0, %85 ]
  %94 = shl i32 %93, %73
  %95 = add i32 %94, %89
  %96 = getelementptr i16, ptr %75, i32 %95
  %97 = load i16, ptr %96, align 2
  switch i16 %97, label %98 [
    i16 236, label %106
    i16 0, label %106
  ]

98:                                               ; preds = %91
  %99 = shl nuw i32 1, %93
  %100 = load ptr, ptr %26, align 4
  %101 = getelementptr i8, ptr %100, i32 %89
  %102 = load i8, ptr %101, align 1
  %103 = trunc i32 %99 to i8
  %104 = or i8 %102, %103
  store i8 %104, ptr %101, align 1
  %105 = load i32, ptr %14, align 4
  br label %106

106:                                              ; preds = %98, %91, %91
  %107 = phi i32 [ %92, %91 ], [ %92, %91 ], [ %105, %98 ]
  %108 = add nuw i32 %93, 1
  %109 = icmp ult i32 %108, %107
  br i1 %109, label %91, label %110

110:                                              ; preds = %106
  %111 = load i32, ptr %20, align 4
  br label %112

112:                                              ; preds = %110, %85
  %113 = phi i32 [ %111, %110 ], [ %86, %85 ]
  %114 = phi i32 [ %107, %110 ], [ %87, %85 ]
  %115 = phi i32 [ %107, %110 ], [ 0, %85 ]
  %116 = add nuw i32 %89, 1
  %117 = icmp ult i32 %116, %113
  br i1 %117, label %85, label %118

118:                                              ; preds = %112, %79
  %119 = load ptr, ptr %10, align 8
  %120 = tail call ptr @of_find_property(ptr noundef %119, ptr noundef nonnull @.str.9, ptr noundef null) #9
  %121 = call ptr @of_prop_next_u32(ptr noundef %120, ptr noundef null, ptr noundef nonnull %4) #9
  %122 = icmp eq ptr %121, null
  br i1 %122, label %146, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.cros_ec_keyb, ptr %14, i32 0, i32 12
  %125 = getelementptr inbounds %struct.cros_ec_keyb, ptr %14, i32 0, i32 13
  br label %126

126:                                              ; preds = %132, %123
  %127 = phi ptr [ %124, %123 ], [ %141, %132 ]
  %128 = phi ptr [ %121, %123 ], [ %144, %132 ]
  %129 = load i32, ptr %125, align 4
  %130 = icmp eq i32 %129, 15
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef 15) #10
  br label %146

132:                                              ; preds = %126
  %133 = load i32, ptr %4, align 4
  %134 = lshr i32 %133, 24
  %135 = lshr i32 %133, 16
  %136 = and i32 %135, 255
  %137 = load i32, ptr %70, align 4
  %138 = shl i32 %134, %137
  %139 = add i32 %138, %136
  %140 = trunc i32 %139 to i16
  store i16 %140, ptr %127, align 2
  %141 = getelementptr i16, ptr %127, i32 1
  %142 = load i32, ptr %125, align 4
  %143 = add i32 %142, 1
  store i32 %143, ptr %125, align 4
  %144 = call ptr @of_prop_next_u32(ptr noundef %120, ptr noundef nonnull %128, ptr noundef nonnull %4) #9
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %126

146:                                              ; preds = %132, %131, %118
  %147 = load ptr, ptr %72, align 4
  %148 = call i32 @input_register_device(ptr noundef %147) #9
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %146
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.11) #10
  br label %151

151:                                              ; preds = %150, %58, %37, %33, %28, %23, %16
  %152 = phi i32 [ -12, %37 ], [ -12, %33 ], [ -12, %28 ], [ -12, %23 ], [ %21, %16 ], [ %148, %150 ], [ %56, %58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef %152) #10
  br label %238

153:                                              ; preds = %146
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %154 = load ptr, ptr %17, align 4
  %155 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(13) %3, i8 0, i32 13, i1 false) #9
  %156 = call fastcc i32 @cros_ec_keyb_info(ptr noundef %154, i32 noundef 1, i32 noundef 3, ptr noundef nonnull %3) #9
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %222

158:                                              ; preds = %153
  %159 = load i32, ptr %3, align 4
  %160 = call fastcc i32 @cros_ec_keyb_info(ptr noundef %154, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %3) #9
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %222

162:                                              ; preds = %158
  %163 = load i32, ptr %3, align 4
  %164 = icmp ne i32 %159, 0
  %165 = icmp ne i32 %163, 0
  %166 = select i1 %164, i1 true, i1 %165
  br i1 %166, label %167, label %224

167:                                              ; preds = %162
  %168 = load ptr, ptr %154, align 8
  %169 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %155, i32 noundef 3264, ptr noundef nonnull @.str.12, ptr noundef %168) #9
  %170 = icmp eq ptr %169, null
  br i1 %170, label %222, label %171

171:                                              ; preds = %167
  %172 = call ptr @devm_input_allocate_device(ptr noundef %155) #9
  %173 = icmp eq ptr %172, null
  br i1 %173, label %222, label %174

174:                                              ; preds = %171
  store ptr @.str.13, ptr %172, align 8
  %175 = getelementptr inbounds %struct.input_dev, ptr %172, i32 0, i32 1
  store ptr %169, ptr %175, align 4
  %176 = getelementptr inbounds %struct.input_dev, ptr %172, i32 0, i32 5
  %177 = load i32, ptr %176, align 4
  %178 = or i32 %177, 1048576
  store i32 %178, ptr %176, align 4
  %179 = getelementptr inbounds %struct.input_dev, ptr %172, i32 0, i32 3
  store i16 6, ptr %179, align 4
  %180 = getelementptr inbounds %struct.input_dev, ptr %172, i32 0, i32 3, i32 3
  store i16 1, ptr %180, align 2
  %181 = getelementptr inbounds %struct.input_dev, ptr %172, i32 0, i32 3, i32 2
  store i16 0, ptr %181, align 4
  %182 = getelementptr inbounds %struct.input_dev, ptr %172, i32 0, i32 40, i32 1
  store ptr %155, ptr %182, align 4
  %183 = getelementptr inbounds %struct.input_dev, ptr %172, i32 0, i32 40, i32 8
  store ptr %14, ptr %183, align 8
  %184 = getelementptr inbounds %struct.cros_ec_keyb, ptr %14, i32 0, i32 10
  store ptr %172, ptr %184, align 4
  %185 = and i32 %159, 1
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %174
  call void @input_set_capability(ptr noundef nonnull %172, i32 noundef 1, i32 noundef 116) #9
  br label %188

188:                                              ; preds = %187, %174
  %189 = and i32 %159, 2
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %188
  call void @input_set_capability(ptr noundef nonnull %172, i32 noundef 1, i32 noundef 115) #9
  br label %192

192:                                              ; preds = %191, %188
  %193 = and i32 %159, 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %192
  call void @input_set_capability(ptr noundef nonnull %172, i32 noundef 1, i32 noundef 114) #9
  br label %196

196:                                              ; preds = %195, %192
  %197 = and i32 %163, 1
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %196
  call void @input_set_capability(ptr noundef nonnull %172, i32 noundef 5, i32 noundef 0) #9
  br label %200

200:                                              ; preds = %199, %196
  %201 = and i32 %163, 2
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %200
  call void @input_set_capability(ptr noundef nonnull %172, i32 noundef 5, i32 noundef 1) #9
  br label %204

204:                                              ; preds = %203, %200
  %205 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(13) %2, i8 0, i32 13, i1 false) #9
  %206 = call fastcc i32 @cros_ec_keyb_info(ptr noundef %205, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %2) #9
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %204
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %2) #9
  br label %219

209:                                              ; preds = %204
  %210 = load i32, ptr %2, align 4
  %211 = load ptr, ptr %184, align 4
  %212 = and i32 %210, 1
  %213 = xor i32 %212, 1
  call void @input_event(ptr noundef %211, i32 noundef 5, i32 noundef 0, i32 noundef %213) #9
  %214 = lshr i32 %210, 1
  %215 = and i32 %214, 1
  call void @input_event(ptr noundef %211, i32 noundef 5, i32 noundef 1, i32 noundef %215) #9
  call void @input_event(ptr noundef %211, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %2) #9
  %216 = load ptr, ptr %184, align 4
  %217 = call i32 @input_register_device(ptr noundef %216) #9
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %209, %208
  %220 = phi ptr [ @.str.14, %208 ], [ @.str.11, %209 ]
  %221 = phi i32 [ %206, %208 ], [ %217, %209 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %155, ptr noundef nonnull %220) #10
  br label %222

222:                                              ; preds = %219, %171, %167, %158, %153
  %223 = phi i32 [ %221, %219 ], [ -12, %171 ], [ -12, %167 ], [ %160, %158 ], [ %156, %153 ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %3) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef %223) #10
  br label %238

224:                                              ; preds = %209, %162
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %3) #9
  %225 = call i32 @devm_device_add_group(ptr noundef %5, ptr noundef nonnull @cros_ec_keyb_attr_group) #9
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %224
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %225) #10
  br label %238

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.cros_ec_keyb, ptr %14, i32 0, i32 11
  store ptr @cros_ec_keyb_work, ptr %229, align 4
  %230 = load ptr, ptr %17, align 4
  %231 = getelementptr inbounds %struct.cros_ec_device, ptr %230, i32 0, i32 22
  %232 = call i32 @blocking_notifier_chain_register(ptr noundef %231, ptr noundef %229) #9
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %228
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4, i32 noundef %232) #10
  br label %238

235:                                              ; preds = %228
  %236 = load ptr, ptr %18, align 4
  %237 = call i32 @device_init_wakeup(ptr noundef %236, i1 noundef zeroext true) #9
  br label %238

238:                                              ; preds = %235, %234, %227, %222, %151, %13, %1
  %239 = phi i32 [ %152, %151 ], [ %223, %222 ], [ %225, %227 ], [ %232, %234 ], [ 0, %235 ], [ -19, %1 ], [ -12, %13 ]
  ret i32 %239
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_keyb_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cros_ec_keyb, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cros_ec_device, ptr %5, i32 0, i32 22
  %7 = getelementptr inbounds %struct.cros_ec_keyb, ptr %3, i32 0, i32 11
  %8 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %6, ptr noundef %7) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_keyb_work(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -44
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 -16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 1
  %10 = load i16, ptr %9, align 4
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %152, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %152, label %17

17:                                               ; preds = %13, %3
  %18 = getelementptr i8, ptr %0, i32 -12
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.cros_ec_device, ptr %19, i32 0, i32 23
  %21 = load i8, ptr %20, align 4
  switch i8 %21, label %152 [
    i8 0, label %22
    i8 6, label %124
    i8 3, label %130
    i8 4, label %130
  ]

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %0, i32 -16
  %24 = load ptr, ptr %23, align 4
  tail call void @pm_wakeup_dev_event(ptr noundef %24, i32 noundef 0, i1 noundef zeroext false) #9
  %25 = load ptr, ptr %18, align 4
  %26 = getelementptr inbounds %struct.cros_ec_device, ptr %25, i32 0, i32 24
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr i8, ptr %0, i32 -40
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %33, label %31

31:                                               ; preds = %22
  %32 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.22) #10
  br label %152

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.cros_ec_device, ptr %25, i32 0, i32 23, i32 1
  %35 = getelementptr i8, ptr %0, i32 -8
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %0, i32 -28
  %38 = load i8, ptr %37, align 4, !range !12
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %73, label %40

40:                                               ; preds = %33
  %41 = getelementptr i8, ptr %0, i32 -24
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq i32 %27, 0
  br i1 %43, label %122, label %47

44:                                               ; preds = %58, %47
  %45 = phi i32 [ %48, %47 ], [ %60, %58 ]
  %46 = icmp ult i32 %50, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %44, %40
  %48 = phi i32 [ %45, %44 ], [ %27, %40 ]
  %49 = phi i32 [ %50, %44 ], [ 0, %40 ]
  %50 = add nuw i32 %49, 1
  %51 = icmp ult i32 %50, %48
  br i1 %51, label %52, label %44

52:                                               ; preds = %47
  %53 = getelementptr i8, ptr %42, i32 %49
  %54 = load i8, ptr %53, align 1
  %55 = getelementptr i8, ptr %34, i32 %49
  %56 = load i8, ptr %55, align 1
  %57 = and i8 %56, %54
  br label %62

58:                                               ; preds = %62
  %59 = add nuw i32 %63, 1
  %60 = load i32, ptr %28, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %44

62:                                               ; preds = %58, %52
  %63 = phi i32 [ %50, %52 ], [ %59, %58 ]
  %64 = getelementptr i8, ptr %34, i32 %63
  %65 = load i8, ptr %64, align 1
  %66 = and i8 %57, %65
  %67 = getelementptr i8, ptr %42, i32 %63
  %68 = load i8, ptr %67, align 1
  %69 = and i8 %66, %68
  %70 = zext i8 %69 to i32
  %71 = tail call i32 @__sw_hweight8(i32 noundef %70) #9
  %72 = icmp ugt i32 %71, 1
  br i1 %72, label %152, label %58

73:                                               ; preds = %44, %33
  %74 = phi i32 [ %27, %33 ], [ %45, %44 ]
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %122, label %76

76:                                               ; preds = %73
  %77 = getelementptr i8, ptr %0, i32 -20
  %78 = getelementptr inbounds %struct.input_dev, ptr %36, i32 0, i32 17
  %79 = getelementptr i8, ptr %0, i32 -36
  br label %80

80:                                               ; preds = %114, %76
  %81 = phi i32 [ 0, %76 ], [ %119, %114 ]
  %82 = load i32, ptr %4, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %114, label %84

84:                                               ; preds = %80
  %85 = getelementptr i8, ptr %34, i32 %81
  br label %86

86:                                               ; preds = %110, %84
  %87 = phi i32 [ %82, %84 ], [ %111, %110 ]
  %88 = phi i32 [ 0, %84 ], [ %112, %110 ]
  %89 = load i8, ptr %85, align 1
  %90 = zext i8 %89 to i32
  %91 = shl nuw i32 1, %88
  %92 = and i32 %91, %90
  %93 = load ptr, ptr %77, align 4
  %94 = getelementptr i8, ptr %93, i32 %81
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 %91, %96
  %98 = icmp eq i32 %92, %97
  br i1 %98, label %110, label %99

99:                                               ; preds = %86
  %100 = load ptr, ptr %78, align 4
  %101 = load i32, ptr %79, align 4
  %102 = shl i32 %88, %101
  %103 = add i32 %102, %81
  tail call void @input_event(ptr noundef %36, i32 noundef 4, i32 noundef 4, i32 noundef %103) #9
  %104 = getelementptr i16, ptr %100, i32 %103
  %105 = load i16, ptr %104, align 2
  %106 = zext i16 %105 to i32
  %107 = icmp ne i32 %92, 0
  %108 = zext i1 %107 to i32
  tail call void @input_event(ptr noundef %36, i32 noundef 1, i32 noundef %106, i32 noundef %108) #9
  %109 = load i32, ptr %4, align 4
  br label %110

110:                                              ; preds = %99, %86
  %111 = phi i32 [ %109, %99 ], [ %87, %86 ]
  %112 = add nuw i32 %88, 1
  %113 = icmp ult i32 %112, %111
  br i1 %113, label %86, label %114

114:                                              ; preds = %110, %80
  %115 = getelementptr i8, ptr %34, i32 %81
  %116 = load i8, ptr %115, align 1
  %117 = load ptr, ptr %77, align 4
  %118 = getelementptr i8, ptr %117, i32 %81
  store i8 %116, ptr %118, align 1
  %119 = add nuw i32 %81, 1
  %120 = load i32, ptr %28, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %80, label %122

122:                                              ; preds = %114, %73, %40
  %123 = load ptr, ptr %35, align 4
  tail call void @input_event(ptr noundef %123, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %152

124:                                              ; preds = %17
  %125 = getelementptr i8, ptr %0, i32 -16
  %126 = load ptr, ptr %125, align 4
  tail call void @pm_wakeup_dev_event(ptr noundef %126, i32 noundef 0, i1 noundef zeroext false) #9
  %127 = load ptr, ptr %18, align 4
  %128 = getelementptr inbounds %struct.cros_ec_device, ptr %127, i32 0, i32 23, i32 1
  %129 = load i32, ptr %128, align 1
  tail call void @handle_sysrq(i32 noundef %129) #9
  br label %152

130:                                              ; preds = %17, %17
  %131 = getelementptr i8, ptr %0, i32 -16
  %132 = load ptr, ptr %131, align 4
  tail call void @pm_wakeup_dev_event(ptr noundef %132, i32 noundef 0, i1 noundef zeroext false) #9
  %133 = load ptr, ptr %18, align 4
  %134 = getelementptr inbounds %struct.cros_ec_device, ptr %133, i32 0, i32 23
  %135 = load i8, ptr %134, align 4
  %136 = icmp eq i8 %135, 3
  %137 = getelementptr inbounds %struct.cros_ec_device, ptr %133, i32 0, i32 23, i32 1
  %138 = load i32, ptr %137, align 1
  %139 = getelementptr i8, ptr %0, i32 -4
  %140 = load ptr, ptr %139, align 4
  %141 = and i32 %138, 1
  br i1 %136, label %142, label %147

142:                                              ; preds = %130
  tail call void @input_event(ptr noundef %140, i32 noundef 1, i32 noundef 116, i32 noundef %141) #9
  %143 = lshr i32 %138, 1
  %144 = and i32 %143, 1
  tail call void @input_event(ptr noundef %140, i32 noundef 1, i32 noundef 115, i32 noundef %144) #9
  %145 = lshr i32 %138, 2
  %146 = and i32 %145, 1
  tail call void @input_event(ptr noundef %140, i32 noundef 1, i32 noundef 114, i32 noundef %146) #9
  br label %151

147:                                              ; preds = %130
  %148 = xor i32 %141, 1
  tail call void @input_event(ptr noundef %140, i32 noundef 5, i32 noundef 0, i32 noundef %148) #9
  %149 = lshr i32 %138, 1
  %150 = and i32 %149, 1
  tail call void @input_event(ptr noundef %140, i32 noundef 5, i32 noundef 1, i32 noundef %150) #9
  br label %151

151:                                              ; preds = %147, %142
  tail call void @input_event(ptr noundef %140, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %152

152:                                              ; preds = %151, %124, %122, %62, %31, %17, %13, %6
  %153 = phi i32 [ 1, %31 ], [ 1, %13 ], [ 0, %17 ], [ 1, %151 ], [ 1, %124 ], [ 1, %122 ], [ 1, %6 ], [ 1, %62 ]
  ret i32 %153
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_parse_properties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cros_ec_keyb_info(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #2 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 24) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.cros_ec_command, ptr %6, i32 0, i32 1
  store i32 97, ptr %9, align 4
  store i32 1, ptr %6, align 8
  %10 = getelementptr inbounds %struct.cros_ec_command, ptr %6, i32 0, i32 2
  store i32 2, ptr %10, align 8
  %11 = getelementptr inbounds %struct.cros_ec_command, ptr %6, i32 0, i32 3
  store i32 4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cros_ec_command, ptr %6, i32 0, i32 5
  %13 = trunc i32 %1 to i8
  store i8 %13, ptr %12, align 4
  %14 = trunc i32 %2 to i8
  %15 = getelementptr inbounds %struct.ec_params_mkbp_info, ptr %12, i32 0, i32 1
  store i8 %14, ptr %15, align 1
  %16 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %0, ptr noundef nonnull %6) #9
  %17 = icmp eq i32 %16, -92
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  store i32 0, ptr %3, align 1
  br label %31

19:                                               ; preds = %8
  %20 = icmp slt i32 %16, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.15, i32 noundef %1, i32 noundef %2, i32 noundef %16) #10
  br label %31

24:                                               ; preds = %19
  %25 = icmp eq i32 %16, 4
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.16, i32 noundef %1, i32 noundef %2, i32 noundef %16, i32 noundef 4) #10
  br label %31

29:                                               ; preds = %24
  %30 = load i32, ptr %12, align 4
  store i32 %30, ptr %3, align 1
  br label %31

31:                                               ; preds = %29, %26, %21, %18
  %32 = phi i32 [ 0, %18 ], [ %16, %21 ], [ -71, %26 ], [ 0, %29 ]
  tail call void @kfree(ptr noundef nonnull %6) #9
  br label %33

33:                                               ; preds = %31, %4
  %34 = phi i32 [ %32, %31 ], [ -12, %4 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @cros_ec_keyb_attr_is_visible(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #8 {
  %4 = icmp eq ptr %1, @dev_attr_function_row_physmap
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.cros_ec_keyb, ptr %7, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5, %3
  %12 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %13 = load i16, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i16 [ %13, %11 ], [ 0, %5 ]
  ret i16 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @function_row_physmap_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cros_ec_keyb, ptr %5, i32 0, i32 12
  %7 = getelementptr inbounds %struct.cros_ec_keyb, ptr %5, i32 0, i32 13
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %10, %3
  %11 = phi i32 [ %22, %10 ], [ 0, %3 ]
  %12 = phi i32 [ %21, %10 ], [ 0, %3 ]
  %13 = getelementptr i8, ptr %2, i32 %12
  %14 = sub i32 4096, %12
  %15 = icmp eq i32 %12, 0
  %16 = select i1 %15, ptr @.str.20, ptr @.str.19
  %17 = getelementptr i16, ptr %6, i32 %11
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %13, i32 noundef %14, ptr noundef nonnull @.str.18, ptr noundef nonnull %16, i32 noundef %19) #9
  %21 = add i32 %20, %12
  %22 = add nuw i32 %11, 1
  %23 = load i32, ptr %7, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %10, label %25

25:                                               ; preds = %10
  %26 = icmp eq i32 %21, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %25
  %28 = getelementptr i8, ptr %2, i32 %21
  %29 = sub i32 4096, %21
  %30 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %28, i32 noundef %29, ptr noundef nonnull @.str.21) #9
  %31 = add i32 %30, %21
  br label %32

32:                                               ; preds = %27, %25, %3
  %33 = phi i32 [ %31, %27 ], [ 0, %25 ], [ 0, %3 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_keyb_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %union.ec_response_get_next_data, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.cros_ec_keyb, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.cros_ec_keyb, ptr %4, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(13) %2, i8 0, i32 13, i1 false) #9
  %11 = call fastcc i32 @cros_ec_keyb_info(ptr noundef %10, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %2) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load i32, ptr %2, align 4
  %15 = load ptr, ptr %5, align 4
  %16 = and i32 %14, 1
  %17 = xor i32 %16, 1
  tail call void @input_event(ptr noundef %15, i32 noundef 5, i32 noundef 0, i32 noundef %17) #9
  %18 = lshr i32 %14, 1
  %19 = and i32 %18, 1
  tail call void @input_event(ptr noundef %15, i32 noundef 5, i32 noundef 1, i32 noundef %19) #9
  tail call void @input_event(ptr noundef %15, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %20

20:                                               ; preds = %13, %8
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %2) #9
  br label %21

21:                                               ; preds = %20, %1
  %22 = phi i32 [ %11, %20 ], [ 0, %1 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2154350987, i64 2154351489, i64 2154351024, i64 2154351080, i64 2154351114, i64 2154351138, i64 2154351179, i64 2154351200, i64 2154351228, i64 2154351262}
!12 = !{i8 0, i8 2}
