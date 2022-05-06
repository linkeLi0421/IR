; ModuleID = '/llk/IR/drivers/media/cec/platform/stm32/stm32-cec.c_pt.bc'
source_filename = "../drivers/media/cec/platform/stm32/stm32-cec.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.stm32_cec = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.cec_msg, %struct.cec_msg, i32 }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.67 }
%union.anon.67 = type { [16 x i32] }

@stm32_cec_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-cec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author224 = internal constant [52 x i8] c"author=Benjamin Gaignard <benjamin.gaignard@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author225 = internal constant [46 x i8] c"author=Yannick Fertre <yannick.fertre@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description226 = internal constant [66 x i8] c"description=STMicroelectronics STM32 Consumer Electronics Control\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@stm32_cec_driver = internal global %struct.platform_driver { ptr @stm32_cec_probe, ptr @stm32_cec_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_cec_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [10 x i8] c"stm32-cec\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cec\00", align 1
@stm32_cec_regmap_cfg = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 20, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Cannot get cec clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Unable to prepare cec clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"hdmi-cec\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Can't prepare hdmi-cec clock\0A\00", align 1
@stm32_cec_adap_ops = internal constant %struct.cec_adap_ops { ptr @stm32_cec_adap_enable, ptr null, ptr null, ptr @stm32_cec_adap_log_addr, ptr @stm32_cec_adap_transmit, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"fail to enable cec clock\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_license227], section "llvm.metadata"

@__mod_of__stm32_cec_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @stm32_cec_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_cec_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_cec_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cec_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 152, i32 noundef 3520) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %67, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stm32_cec, ptr %3, i32 0, i32 1
  store ptr %2, ptr %6, align 4
  %7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %7 to i32
  br label %67

11:                                               ; preds = %5
  %12 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef %7, ptr noundef nonnull @stm32_cec_regmap_cfg, ptr noundef null, ptr noundef null) #6
  %13 = getelementptr inbounds %struct.stm32_cec, ptr %3, i32 0, i32 5
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = ptrtoint ptr %12 to i32
  br label %67

17:                                               ; preds = %11
  %18 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %19 = getelementptr inbounds %struct.stm32_cec, ptr %3, i32 0, i32 6
  store i32 %18, ptr %19, align 8
  %20 = icmp slt i32 %18, 0
  br i1 %20, label %67, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8
  %23 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %18, ptr noundef nonnull @stm32_cec_irq_handler, ptr noundef nonnull @stm32_cec_irq_thread, i32 noundef 0, ptr noundef %22, ptr noundef nonnull %3) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %67

25:                                               ; preds = %21
  %26 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  %27 = getelementptr inbounds %struct.stm32_cec, ptr %3, i32 0, i32 2
  store ptr %26, ptr %27, align 8
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = icmp eq ptr %26, inttoptr (i32 -517 to ptr)
  br i1 %30, label %33, label %31

31:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #7
  %32 = load ptr, ptr %27, align 8
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi ptr [ %32, %31 ], [ inttoptr (i32 -517 to ptr), %29 ]
  %35 = ptrtoint ptr %34 to i32
  br label %67

36:                                               ; preds = %25
  %37 = tail call i32 @clk_prepare(ptr noundef %26) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #7
  br label %67

40:                                               ; preds = %36
  %41 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.4) #6
  %42 = getelementptr inbounds %struct.stm32_cec, ptr %3, i32 0, i32 3
  store ptr %41, ptr %42, align 4
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = icmp eq ptr %41, inttoptr (i32 -517 to ptr)
  br i1 %45, label %64, label %50

46:                                               ; preds = %40
  %47 = tail call i32 @clk_prepare(ptr noundef %41) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #7
  br label %64

50:                                               ; preds = %46, %44
  %51 = tail call ptr @cec_allocate_adapter(ptr noundef nonnull @stm32_cec_adap_ops, ptr noundef nonnull %3, ptr noundef nonnull @.str, i32 noundef 255, i8 noundef zeroext 4) #6
  store ptr %51, ptr %3, align 8
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  %53 = ptrtoint ptr %51 to i32
  br i1 %52, label %61, label %54

54:                                               ; preds = %50
  %55 = tail call i32 @cec_register_adapter(ptr noundef %51, ptr noundef %2) #6
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  tail call fastcc void @cec_hw_init(ptr noundef nonnull %3)
  %58 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %58, align 8
  br label %67

59:                                               ; preds = %54
  %60 = load ptr, ptr %3, align 8
  tail call void @cec_delete_adapter(ptr noundef %60) #6
  br label %61

61:                                               ; preds = %59, %50
  %62 = phi i32 [ %53, %50 ], [ %55, %59 ]
  %63 = load ptr, ptr %42, align 4
  tail call void @clk_unprepare(ptr noundef %63) #6
  br label %64

64:                                               ; preds = %61, %49, %44
  %65 = phi i32 [ %62, %61 ], [ %47, %49 ], [ -517, %44 ]
  %66 = load ptr, ptr %27, align 8
  tail call void @clk_unprepare(ptr noundef %66) #6
  br label %67

67:                                               ; preds = %64, %57, %39, %33, %21, %17, %15, %9, %1
  %68 = phi i32 [ %10, %9 ], [ %16, %15 ], [ %35, %33 ], [ %37, %39 ], [ %65, %64 ], [ 0, %57 ], [ -12, %1 ], [ %18, %17 ], [ %23, %21 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cec_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_cec, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  tail call void @clk_unprepare(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.stm32_cec, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_unprepare(ptr noundef %7) #6
  %8 = load ptr, ptr %3, align 8
  tail call void @cec_unregister_adapter(ptr noundef %8) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cec_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.stm32_cec, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stm32_cec, ptr %1, i32 0, i32 7
  %6 = tail call i32 @regmap_read(ptr noundef %4, i32 noundef 16, ptr noundef %5) #6
  %7 = load ptr, ptr %3, align 4
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 16, i32 noundef 8135, i32 noundef 8135, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cec_irq_thread(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.stm32_cec, ptr %1, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8064
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %60, label %8

8:                                                ; preds = %2
  %9 = and i32 %5, 3072
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %1, align 8
  %13 = tail call i64 @ktime_get() #6
  tail call void @cec_transmit_done_ts(ptr noundef %12, i8 noundef zeroext 16, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1, i64 noundef %13) #6
  br label %60

14:                                               ; preds = %8
  %15 = and i32 %5, 128
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %1, align 8
  %19 = tail call i64 @ktime_get() #6
  tail call void @cec_transmit_done_ts(ptr noundef %18, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i64 noundef %19) #6
  br label %60

20:                                               ; preds = %14
  %21 = and i32 %5, 4096
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %1, align 8
  %25 = tail call i64 @ktime_get() #6
  tail call void @cec_transmit_done_ts(ptr noundef %24, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i64 noundef %25) #6
  br label %60

26:                                               ; preds = %20
  %27 = and i32 %5, 256
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %53, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.stm32_cec, ptr %1, i32 0, i32 10
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr inbounds %struct.stm32_cec, ptr %1, i32 0, i32 9, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.stm32_cec, ptr %1, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = add nuw i32 %31, 1
  store i32 %38, ptr %30, align 8
  %39 = getelementptr %struct.stm32_cec, ptr %1, i32 0, i32 9, i32 6, i32 %31
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 8, i32 noundef %41) #6
  %43 = load i32, ptr %30, align 8
  %44 = load i32, ptr %32, align 8
  br label %45

45:                                               ; preds = %35, %29
  %46 = phi i32 [ %44, %35 ], [ %33, %29 ]
  %47 = phi i32 [ %43, %35 ], [ %31, %29 ]
  %48 = icmp eq i32 %47, %46
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.stm32_cec, ptr %1, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 0, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %53

53:                                               ; preds = %49, %45, %26
  %54 = load i32, ptr %4, align 4
  %55 = and i32 %54, 512
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %1, align 8
  %59 = tail call i64 @ktime_get() #6
  tail call void @cec_transmit_done_ts(ptr noundef %58, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i64 noundef %59) #6
  br label %60

60:                                               ; preds = %57, %53, %23, %17, %11, %2
  %61 = load i32, ptr %4, align 4
  %62 = and i32 %61, 71
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %91, label %64

64:                                               ; preds = %60
  %65 = and i32 %61, 68
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %64
  %68 = and i32 %61, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %71 = getelementptr inbounds %struct.stm32_cec, ptr %1, i32 0, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = call i32 @regmap_read(ptr noundef %72, i32 noundef 12, ptr noundef nonnull %3) #6
  %74 = load i32, ptr %3, align 4
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds %struct.stm32_cec, ptr %1, i32 0, i32 8, i32 2
  %77 = load i32, ptr %76, align 8
  %78 = add i32 %77, 1
  store i32 %78, ptr %76, align 8
  %79 = getelementptr %struct.stm32_cec, ptr %1, i32 0, i32 8, i32 6, i32 %77
  store i8 %75, ptr %79, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %80 = load i32, ptr %4, align 4
  br label %81

81:                                               ; preds = %70, %67
  %82 = phi i32 [ %80, %70 ], [ %61, %67 ]
  %83 = and i32 %82, 2
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %1, align 8
  %87 = getelementptr inbounds %struct.stm32_cec, ptr %1, i32 0, i32 8
  %88 = call i64 @ktime_get() #6
  call void @cec_received_msg_ts(ptr noundef %86, ptr noundef %87, i64 noundef %88) #6
  br label %89

89:                                               ; preds = %85, %64
  %90 = getelementptr inbounds %struct.stm32_cec, ptr %1, i32 0, i32 8, i32 2
  store i32 0, ptr %90, align 8
  br label %91

91:                                               ; preds = %89, %81, %60
  store i32 0, ptr %4, align 4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_allocate_adapter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_register_adapter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cec_hw_init(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stm32_cec, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %5 = load ptr, ptr %2, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 20, i32 noundef 8135, i32 noundef 8135, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %7 = load ptr, ptr %2, align 4
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 4, i32 noundef -2147483144, i32 noundef -2147483144, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_delete_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_transmit_done_ts(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_received_msg_ts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cec_adap_enable(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stm32_cec, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  br i1 %1, label %7, label %17

7:                                                ; preds = %2
  %8 = tail call i32 @clk_enable(ptr noundef %6) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.stm32_cec, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.6) #7
  br label %13

13:                                               ; preds = %10, %7
  %14 = getelementptr inbounds %struct.stm32_cec, ptr %4, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @clk_enable(ptr noundef %15) #6
  br label %20

17:                                               ; preds = %2
  tail call void @clk_disable(ptr noundef %6) #6
  %18 = getelementptr inbounds %struct.stm32_cec, ptr %4, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  tail call void @clk_disable(ptr noundef %19) #6
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i32 [ 0, %17 ], [ 1, %13 ]
  %22 = phi i32 [ 0, %17 ], [ %8, %13 ]
  %23 = getelementptr inbounds %struct.stm32_cec, ptr %4, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 0, i32 noundef 1, i32 noundef %21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cec_adap_log_addr(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = zext i8 %1 to i32
  %7 = shl i32 65536, %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %8 = tail call i64 @ktime_get() #6
  %9 = add i64 %8, 2100000000
  %10 = getelementptr inbounds %struct.stm32_cec, ptr %5, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @regmap_read(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %3) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %24, %2
  %15 = load i32, ptr %3, align 4
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  %19 = call i64 @ktime_get() #6
  %20 = icmp sgt i64 %19, %9
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load ptr, ptr %10, align 4
  %23 = call i32 @regmap_read(ptr noundef %22, i32 noundef 0, ptr noundef nonnull %3) #6
  br label %28

24:                                               ; preds = %18
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #6
  %25 = load ptr, ptr %10, align 4
  %26 = call i32 @regmap_read(ptr noundef %25, i32 noundef 0, ptr noundef nonnull %3) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %14, label %28

28:                                               ; preds = %24, %21, %14, %2
  %29 = load ptr, ptr %10, align 4
  %30 = call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %31 = icmp eq i8 %1, -1
  %32 = load ptr, ptr %10, align 4
  br i1 %31, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 4, i32 noundef 2147418112, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %37

35:                                               ; preds = %28
  %36 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 4, i32 noundef %7, i32 noundef %7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %37

37:                                               ; preds = %35, %33
  %38 = load ptr, ptr %10, align 4
  %39 = call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cec_adap_transmit(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stm32_cec, ptr %6, i32 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) %7, ptr noundef align 8 dereferenceable(56) %3, i32 56, i1 false)
  %8 = getelementptr inbounds %struct.stm32_cec, ptr %6, i32 0, i32 10
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.stm32_cec, ptr %6, i32 0, i32 9, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.stm32_cec, ptr %6, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 0, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %16

16:                                               ; preds = %12, %4
  %17 = getelementptr inbounds %struct.stm32_cec, ptr %6, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 0, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr inbounds %struct.stm32_cec, ptr %6, i32 0, i32 9, i32 6
  %22 = load i8, ptr %21, align 8
  %23 = zext i8 %22 to i32
  %24 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 8, i32 noundef %23) #6
  %25 = load i32, ptr %8, align 8
  %26 = add i32 %25, 1
  store i32 %26, ptr %8, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
