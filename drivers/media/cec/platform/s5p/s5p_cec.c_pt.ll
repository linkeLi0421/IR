; ModuleID = '/llk/IR/drivers/media/cec/platform/s5p/s5p_cec.c_pt.bc'
source_filename = "../drivers/media/cec/platform/s5p/s5p_cec.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cec_adap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.s5p_cec_dev = type { ptr, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, i32, i32, %struct.cec_msg }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.67 }
%union.anon.67 = type { [16 x i32] }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.60 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype225 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug226 = internal constant [29 x i8] c"parm=debug:debug level (0-2)\00", section ".modinfo", align 1
@s5p_cec_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5p-cec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author229 = internal constant [38 x i8] c"author=Kamil Debski <kamil@wypas.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [35 x i8] c"description=Samsung S5P CEC driver\00", section ".modinfo", align 1
@s5p_cec_pdrv = internal global %struct.platform_driver { ptr @s5p_cec_probe, ptr @s5p_cec_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s5p_cec_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5p_cec_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"s5p-cec\00", align 1
@s5p_cec_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5p_cec_runtime_suspend, ptr @s5p_cec_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"needs-hpd\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"hdmicec\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"samsung,syscon-phandle\00", align 1
@s5p_cec_adap_ops = internal constant %struct.cec_adap_ops { ptr @s5p_cec_adap_enable, ptr null, ptr null, ptr @s5p_cec_adap_log_addr, ptr @s5p_cec_adap_transmit, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"state set to busy, this should not occur here\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_debug226, ptr @__UNIQUE_ID_debugtype225, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_license230, ptr @__param_debug], section "llvm.metadata"

@__mod_of__s5p_cec_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @s5p_cec_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @s5p_cec_pdrv, ptr noundef nonnull @__this_module) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @s5p_cec_pdrv) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_cec_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef null) #5
  %6 = icmp eq ptr %5, null
  %7 = tail call ptr @cec_notifier_parse_hdmi_phandle(ptr noundef %2) #5
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = ptrtoint ptr %7 to i32
  br label %61

11:                                               ; preds = %1
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 112, i32 noundef 3520) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %61, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.s5p_cec_dev, ptr %12, i32 0, i32 2
  store ptr %2, ptr %15, align 8
  %16 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %17 = getelementptr inbounds %struct.s5p_cec_dev, ptr %12, i32 0, i32 6
  store i32 %16, ptr %17, align 8
  %18 = icmp slt i32 %16, 0
  br i1 %18, label %61, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %0, align 8
  %21 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %16, ptr noundef nonnull @s5p_cec_irq_handler, ptr noundef nonnull @s5p_cec_irq_handler_thread, i32 noundef 0, ptr noundef %20, ptr noundef nonnull %12) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %19
  %24 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.2) #5
  %25 = getelementptr inbounds %struct.s5p_cec_dev, ptr %12, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = ptrtoint ptr %24 to i32
  br label %61

29:                                               ; preds = %23
  %30 = load ptr, ptr %3, align 8
  %31 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %30, ptr noundef nonnull @.str.3) #5
  %32 = getelementptr inbounds %struct.s5p_cec_dev, ptr %12, i32 0, i32 4
  store ptr %31, ptr %32, align 8
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %61, label %34

34:                                               ; preds = %29
  %35 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %36 = getelementptr inbounds %struct.s5p_cec_dev, ptr %12, i32 0, i32 7
  store ptr %35, ptr %36, align 4
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = ptrtoint ptr %35 to i32
  br label %61

40:                                               ; preds = %34
  %41 = select i1 %6, i32 286, i32 350
  %42 = tail call ptr @cec_allocate_adapter(ptr noundef nonnull @s5p_cec_adap_ops, ptr noundef nonnull %12, ptr noundef nonnull @.str, i32 noundef %41, i8 noundef zeroext 1) #5
  store ptr %42, ptr %12, align 8
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  %44 = ptrtoint ptr %42 to i32
  br i1 %43, label %61, label %45

45:                                               ; preds = %40
  %46 = tail call ptr @cec_notifier_cec_adap_register(ptr noundef %7, ptr noundef null, ptr noundef %42) #5
  %47 = getelementptr inbounds %struct.s5p_cec_dev, ptr %12, i32 0, i32 5
  store ptr %46, ptr %47, align 4
  %48 = icmp eq ptr %46, null
  br i1 %48, label %58, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %12, align 8
  %51 = tail call i32 @cec_register_adapter(ptr noundef %50, ptr noundef %2) #5
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %12, ptr %54, align 8
  tail call void @pm_runtime_enable(ptr noundef %2) #5
  br label %61

55:                                               ; preds = %49
  %56 = load ptr, ptr %47, align 4
  %57 = load ptr, ptr %12, align 8
  tail call void @cec_notifier_cec_adap_unregister(ptr noundef %56, ptr noundef %57) #5
  br label %58

58:                                               ; preds = %55, %45
  %59 = phi i32 [ %51, %55 ], [ -12, %45 ]
  %60 = load ptr, ptr %12, align 8
  tail call void @cec_delete_adapter(ptr noundef %60) #5
  br label %61

61:                                               ; preds = %58, %53, %40, %38, %29, %27, %19, %14, %11, %9
  %62 = phi i32 [ %10, %9 ], [ %28, %27 ], [ %39, %38 ], [ %59, %58 ], [ 0, %53 ], [ -12, %11 ], [ %16, %14 ], [ %21, %19 ], [ -517, %29 ], [ %44, %40 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_cec_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.s5p_cec_dev, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 8
  tail call void @cec_notifier_cec_adap_unregister(ptr noundef %5, ptr noundef %6) #5
  %7 = load ptr, ptr %3, align 8
  tail call void @cec_unregister_adapter(ptr noundef %7) #5
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %8, i1 noundef zeroext true) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_notifier_parse_hdmi_phandle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_cec_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @s5p_cec_get_status(ptr noundef %1) #5
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = and i32 %3, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.s5p_cec_dev, ptr %1, i32 0, i32 9
  store i32 3, ptr %10, align 4
  br label %17

11:                                               ; preds = %6
  %12 = and i32 %3, 8
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.s5p_cec_dev, ptr %1, i32 0, i32 9
  br i1 %13, label %16, label %15

15:                                               ; preds = %11
  store i32 4, ptr %14, align 4
  br label %17

16:                                               ; preds = %11
  store i32 2, ptr %14, align 4
  br label %17

17:                                               ; preds = %16, %15, %9
  tail call void @s5p_clr_pending_tx(ptr noundef %1) #5
  br label %18

18:                                               ; preds = %17, %2
  %19 = and i32 %3, 262144
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %18
  %22 = and i32 %3, 524288
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @s5p_cec_rx_reset(ptr noundef %1) #5
  br label %31

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.s5p_cec_dev, ptr %1, i32 0, i32 8
  store i32 1, ptr %26, align 8
  %27 = lshr i32 %3, 24
  %28 = getelementptr inbounds %struct.s5p_cec_dev, ptr %1, i32 0, i32 10, i32 2
  store i32 %27, ptr %28, align 8
  %29 = getelementptr inbounds %struct.s5p_cec_dev, ptr %1, i32 0, i32 10, i32 8
  store i8 1, ptr %29, align 1
  %30 = getelementptr inbounds %struct.s5p_cec_dev, ptr %1, i32 0, i32 10, i32 6
  tail call void @s5p_cec_get_rx_buf(ptr noundef %1, i32 noundef %27, ptr noundef %30) #5
  store i32 2, ptr %26, align 8
  br label %31

31:                                               ; preds = %25, %24
  tail call void @s5p_cec_enable_rx(ptr noundef %1) #5
  tail call void @s5p_clr_pending_rx(ptr noundef %1) #5
  br label %32

32:                                               ; preds = %31, %18
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_cec_irq_handler_thread(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.s5p_cec_dev, ptr %1, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %17 [
    i32 2, label %5
    i32 3, label %8
    i32 4, label %11
    i32 1, label %14
  ]

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8
  %7 = tail call i64 @ktime_get() #5
  tail call void @cec_transmit_done_ts(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i64 noundef %7) #5
  store i32 0, ptr %3, align 4
  br label %17

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8
  %10 = tail call i64 @ktime_get() #5
  tail call void @cec_transmit_done_ts(ptr noundef %9, i8 noundef zeroext 36, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i64 noundef %10) #5
  store i32 0, ptr %3, align 4
  br label %17

11:                                               ; preds = %2
  %12 = load ptr, ptr %1, align 8
  %13 = tail call i64 @ktime_get() #5
  tail call void @cec_transmit_done_ts(ptr noundef %12, i8 noundef zeroext 48, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1, i64 noundef %13) #5
  store i32 0, ptr %3, align 4
  br label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.s5p_cec_dev, ptr %1, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.4) #6
  br label %17

17:                                               ; preds = %14, %11, %8, %5, %2
  %18 = getelementptr inbounds %struct.s5p_cec_dev, ptr %1, i32 0, i32 8
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load ptr, ptr %1, align 8
  %23 = getelementptr inbounds %struct.s5p_cec_dev, ptr %1, i32 0, i32 10
  %24 = tail call i64 @ktime_get() #5
  tail call void @cec_received_msg_ts(ptr noundef %22, ptr noundef %23, i64 noundef %24) #5
  store i32 0, ptr %18, align 8
  br label %25

25:                                               ; preds = %21, %17
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_allocate_adapter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_notifier_cec_adap_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_register_adapter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_cec_adap_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_delete_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_cec_get_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_clr_pending_tx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_cec_rx_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_cec_enable_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_cec_get_rx_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_clr_pending_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_transmit_done_ts(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_received_msg_ts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_cec_adap_enable(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  br i1 %1, label %5, label %17

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.s5p_cec_dev, ptr %4, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #5
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #5, !srcloc !9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 0, i32 -1, ptr elementtype(i32) %11) #5, !srcloc !10
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  br label %21

16:                                               ; preds = %5
  tail call void @s5p_cec_reset(ptr noundef %4) #5
  tail call void @s5p_cec_set_divider(ptr noundef %4) #5
  tail call void @s5p_cec_threshold(ptr noundef %4) #5
  tail call void @s5p_cec_unmask_tx_interrupts(ptr noundef %4) #5
  tail call void @s5p_cec_unmask_rx_interrupts(ptr noundef %4) #5
  tail call void @s5p_cec_enable_rx(ptr noundef %4) #5
  br label %21

17:                                               ; preds = %2
  tail call void @s5p_cec_mask_tx_interrupts(ptr noundef %4) #5
  tail call void @s5p_cec_mask_rx_interrupts(ptr noundef %4) #5
  %18 = getelementptr inbounds %struct.s5p_cec_dev, ptr %4, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i32 @__pm_runtime_idle(ptr noundef %19, i32 noundef 5) #5
  br label %21

21:                                               ; preds = %17, %16, %15, %10
  %22 = phi i32 [ 0, %17 ], [ 0, %16 ], [ %8, %10 ], [ %8, %15 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_cec_adap_log_addr(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = zext i8 %1 to i32
  tail call void @s5p_cec_set_addr(ptr noundef %4, i32 noundef %5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_cec_adap_transmit(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cec_msg, ptr %3, i32 0, i32 6
  %8 = getelementptr inbounds %struct.cec_msg, ptr %3, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = zext i8 %1 to i32
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 2)
  %12 = trunc i32 %11 to i8
  %13 = add i8 %12, -1
  tail call void @s5p_cec_copy_packet(ptr noundef %6, ptr noundef %7, i32 noundef %9, i8 noundef zeroext %13) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_cec_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_cec_set_divider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_cec_threshold(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_cec_unmask_tx_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_cec_unmask_rx_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_cec_mask_tx_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_cec_mask_rx_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_cec_set_addr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_cec_copy_packet(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_cec_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.s5p_cec_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_cec_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.s5p_cec_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %6, %1 ], [ %9, %11 ]
  %14 = tail call i32 @llvm.smin.i32(i32 %13, i32 0)
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i32 [ 0, %8 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 2147947566}
!9 = !{i64 445876, i64 2147935847, i64 2147935873, i64 2147935920, i64 2147935942, i64 2147935970, i64 2147935990}
!10 = !{i64 432445, i64 432470, i64 432492, i64 432508, i64 432520, i64 432540, i64 432564, i64 432580, i64 432592}
!11 = !{i64 2147947692}
