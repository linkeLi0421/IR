; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-bcm2835.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-bcm2835.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.bcm2835_i2c_dev = type { ptr, ptr, i32, %struct.i2c_adapter, %struct.completion, ptr, ptr, i32, i32, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_bcm2835_i2c = type { %struct.clk_hw, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_bcm2835__251_525_bcm2835_i2c_driver_init6 = internal global ptr @bcm2835_i2c_driver_init, section ".initcall6.init", align 4
@bcm2835_i2c_driver = internal global %struct.platform_driver { ptr @bcm2835_i2c_probe, ptr @bcm2835_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm2835_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_bcm2835_i2c_driver_exit = internal global ptr @bcm2835_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author252 = internal constant [58 x i8] c"i2c_bcm2835.author=Stephen Warren <swarren@wwwdotorg.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description253 = internal constant [48 x i8] c"i2c_bcm2835.description=BCM2835 I2C bus adapter\00", section ".modinfo", align 1
@__UNIQUE_ID_file254 = internal constant [48 x i8] c"i2c_bcm2835.file=drivers/i2c/busses/i2c-bcm2835\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [27 x i8] c"i2c_bcm2835.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias256 = internal constant [39 x i8] c"i2c_bcm2835.alias=platform:i2c-bcm2835\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"i2c-bcm2835\00", align 1
@bcm2835_i2c_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2835_i2c_quirks }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Could not get clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Could not register clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Could not read clock-frequency property\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Could not set clock frequency\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Couldn't prepare clock\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Could not request IRQ\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"bcm2835 (%s)\00", align 1
@bcm2835_i2c_algo = internal constant %struct.i2c_algorithm { ptr @bcm2835_i2c_xfer, ptr null, ptr null, ptr null, ptr @bcm2835_i2c_func, ptr null, ptr null }, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%s_div\00", align 1
@clk_bcm2835_i2c_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_bcm2835_i2c_recalc_rate, ptr @clk_bcm2835_i2c_round_rate, ptr null, ptr null, ptr null, ptr @clk_bcm2835_i2c_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"Got unexpected interrupt (from firmware?)\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"<no-node>\00", align 1
@bcm2835_i2c_xfer.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"only one read message supported, has to be last\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"i2c transfer timed out\0A\00", align 1
@bcm2835_i2c_quirks = internal constant %struct.i2c_adapter_quirks { i64 16, i32 0, i16 0, i16 0, i16 0, i16 0 }, align 8
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias256, ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_license255, ptr @__exitcall_bcm2835_i2c_driver_exit, ptr @__initcall__kmod_i2c_bcm2835__251_525_bcm2835_i2c_driver_init6, ptr @bcm2835_i2c_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm2835_i2c_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm2835_i2c_driver, ptr noundef null) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bcm2835_i2c_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm2835_i2c_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_i2c_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = alloca [32 x i8], align 1
  %4 = alloca [1 x ptr], align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 712, i32 noundef 3520) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %126, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %10, align 8
  store ptr %6, ptr %7, align 8
  %11 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %7, i32 0, i32 4
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %7, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %12, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_completion.__key) #10
  %13 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #10
  %14 = tail call ptr @devm_ioremap_resource(ptr noundef %6, ptr noundef %13) #10
  %15 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %7, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = ptrtoint ptr %14 to i32
  br label %126

19:                                               ; preds = %9
  %20 = tail call ptr @devm_clk_get(ptr noundef %6, ptr noundef null) #10
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = ptrtoint ptr %20 to i32
  %24 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %6, i32 noundef %23, ptr noundef nonnull @.str.1) #10
  br label %126

25:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #10
  %26 = getelementptr inbounds i8, ptr %2, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %26, i8 0, i32 12, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false) #10, !annotation !8
  %27 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load ptr, ptr %6, align 4
  br label %32

32:                                               ; preds = %30, %25
  %33 = phi ptr [ %31, %30 ], [ %28, %25 ]
  %34 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.10, ptr noundef %33) #10
  %35 = tail call ptr @__clk_get_name(ptr noundef %20) #10
  %36 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  store ptr @clk_bcm2835_i2c_ops, ptr %36, align 4
  store ptr %3, ptr %2, align 4
  store ptr %35, ptr %4, align 4
  %37 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 2
  store ptr %4, ptr %37, align 4
  %38 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  store i8 1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  store i32 0, ptr %39, align 4
  %40 = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 16, i32 noundef 3520) #10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  %43 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %7, i32 0, i32 6
  store ptr inttoptr (i32 -12 to ptr), ptr %43, align 4
  br label %57

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.clk_hw, ptr %40, i32 0, i32 2
  store ptr %2, ptr %45, align 4
  %46 = getelementptr inbounds %struct.clk_bcm2835_i2c, ptr %40, i32 0, i32 1
  store ptr %7, ptr %46, align 4
  %47 = load ptr, ptr %27, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load ptr, ptr %6, align 4
  br label %51

51:                                               ; preds = %49, %44
  %52 = phi ptr [ %50, %49 ], [ %47, %44 ]
  %53 = call i32 @clk_hw_register_clkdev(ptr noundef nonnull %40, ptr noundef nonnull @.str.11, ptr noundef %52) #10
  %54 = call ptr @devm_clk_register(ptr noundef %6, ptr noundef nonnull %40) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  %55 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %7, i32 0, i32 6
  store ptr %54, ptr %55, align 4
  %56 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %61

57:                                               ; preds = %51, %42
  %58 = phi ptr [ %43, %42 ], [ %55, %51 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2) #11
  %59 = load ptr, ptr %58, align 4
  %60 = ptrtoint ptr %59 to i32
  br label %126

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %63 = load ptr, ptr %62, align 8
  %64 = call i32 @of_property_read_variable_u32_array(ptr noundef %63, ptr noundef nonnull @.str.3, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #10
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = load i32, ptr %5, align 4
  br label %69

68:                                               ; preds = %61
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.4) #11
  store i32 100000, ptr %5, align 4
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ 100000, %68 ]
  %71 = load ptr, ptr %55, align 4
  %72 = call i32 @clk_set_rate_exclusive(ptr noundef %71, i32 noundef %70) #10
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.5) #11
  br label %126

75:                                               ; preds = %69
  %76 = load ptr, ptr %55, align 4
  %77 = call i32 @clk_prepare(ptr noundef %76) #10
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = call i32 @clk_enable(ptr noundef %76) #10
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  call void @clk_unprepare(ptr noundef %76) #10
  br label %83

83:                                               ; preds = %82, %75
  %84 = phi i32 [ %80, %82 ], [ %77, %75 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6) #11
  br label %126

85:                                               ; preds = %79
  %86 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #10
  %87 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %7, i32 0, i32 2
  store i32 %86, ptr %87, align 8
  %88 = icmp slt i32 %86, 0
  br i1 %88, label %126, label %89

89:                                               ; preds = %85
  %90 = load ptr, ptr %27, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load ptr, ptr %6, align 4
  br label %94

94:                                               ; preds = %92, %89
  %95 = phi ptr [ %93, %92 ], [ %90, %89 ]
  %96 = call i32 @request_threaded_irq(i32 noundef %86, ptr noundef nonnull @bcm2835_i2c_isr, ptr noundef null, i32 noundef 128, ptr noundef %95, ptr noundef nonnull %7) #10
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7) #11
  br label %126

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %7, i32 0, i32 3
  %101 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %7, i32 0, i32 3, i32 9, i32 8
  store ptr %7, ptr %101, align 8
  store ptr null, ptr %100, align 8
  %102 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %7, i32 0, i32 3, i32 1
  store i32 256, ptr %102, align 4
  %103 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %7, i32 0, i32 3, i32 12
  %104 = load ptr, ptr %62, align 8
  %105 = icmp eq ptr %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.device_node, ptr %104, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  br label %109

109:                                              ; preds = %106, %99
  %110 = phi ptr [ %108, %106 ], [ @.str.13, %99 ]
  %111 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %103, i32 noundef 48, ptr noundef nonnull @.str.8, ptr noundef %110)
  %112 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %7, i32 0, i32 3, i32 2
  store ptr @bcm2835_i2c_algo, ptr %112, align 8
  %113 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %7, i32 0, i32 3, i32 9, i32 1
  store ptr %6, ptr %113, align 4
  %114 = load ptr, ptr %62, align 8
  %115 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %7, i32 0, i32 3, i32 9, i32 25
  store ptr %114, ptr %115, align 8
  %116 = call ptr @of_device_get_match_data(ptr noundef %6) #10
  %117 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %7, i32 0, i32 3, i32 17
  store ptr %116, ptr %117, align 8
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !9
  call void @arm_heavy_mb() #10
  %118 = load ptr, ptr %15, align 4
  %119 = getelementptr i8, ptr %118, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 0) #10, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !9
  call void @arm_heavy_mb() #10
  %120 = load ptr, ptr %15, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 0) #10, !srcloc !10
  %121 = call i32 @i2c_add_adapter(ptr noundef %100) #10
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %109
  %124 = load i32, ptr %87, align 8
  %125 = call ptr @free_irq(i32 noundef %124, ptr noundef nonnull %7) #10
  br label %126

126:                                              ; preds = %123, %109, %98, %85, %83, %74, %57, %22, %17, %1
  %127 = phi i32 [ %18, %17 ], [ %24, %22 ], [ %60, %57 ], [ %72, %74 ], [ %84, %83 ], [ -19, %98 ], [ -12, %1 ], [ %86, %85 ], [ %121, %123 ], [ 0, %109 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_i2c_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_rate_exclusive_put(ptr noundef %5) #10
  %6 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %6) #10
  tail call void @clk_unprepare(ptr noundef %6) #10
  %7 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %3, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = tail call ptr @free_irq(i32 noundef %8, ptr noundef %3) #10
  %10 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %3, i32 0, i32 3
  tail call void @i2c_del_adapter(ptr noundef %10) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate_exclusive(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_i2c_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %7 = and i32 %6, 768
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %126

9:                                                ; preds = %2
  %10 = and i32 %6, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %59, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %1, i32 0, i32 5
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.12) #11
  br label %50

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  %20 = load i16, ptr %19, align 2
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %50, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %1, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %1, i32 0, i32 9
  br label %29

29:                                               ; preds = %35, %27
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr i8, ptr %30, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %33 = and i32 %32, 32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr i8, ptr %36, i32 16
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %39 = trunc i32 %38 to i8
  %40 = load ptr, ptr %28, align 8
  store i8 %39, ptr %40, align 1
  %41 = load ptr, ptr %28, align 8
  %42 = getelementptr i8, ptr %41, i32 1
  store ptr %42, ptr %28, align 8
  %43 = load i32, ptr %24, align 4
  %44 = add i32 %43, -1
  store i32 %44, ptr %24, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %29

46:                                               ; preds = %35, %29, %23
  %47 = load ptr, ptr %3, align 4
  %48 = getelementptr i8, ptr %47, i32 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  br label %50

50:                                               ; preds = %46, %18, %16
  %51 = phi i32 [ %49, %46 ], [ %6, %18 ], [ %6, %16 ]
  %52 = and i32 %51, 32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %126

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %1, i32 0, i32 10
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i32 0, i32 1024
  br label %126

59:                                               ; preds = %9
  %60 = and i32 %6, 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %98, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %1, i32 0, i32 10
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = or i32 %6, 1024
  br label %126

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %1, i32 0, i32 9
  br label %70

70:                                               ; preds = %76, %68
  %71 = load ptr, ptr %3, align 4
  %72 = getelementptr i8, ptr %71, i32 4
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %74 = and i32 %73, 16
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %70
  %77 = load ptr, ptr %69, align 8
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !9
  tail call void @arm_heavy_mb() #10
  %80 = load ptr, ptr %3, align 4
  %81 = getelementptr i8, ptr %80, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #10, !srcloc !10
  %82 = load ptr, ptr %69, align 8
  %83 = getelementptr i8, ptr %82, i32 1
  store ptr %83, ptr %69, align 8
  %84 = load i32, ptr %63, align 4
  %85 = add i32 %84, -1
  store i32 %85, ptr %63, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %70

87:                                               ; preds = %76, %70
  %88 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %1, i32 0, i32 7
  %89 = load i32, ptr %88, align 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %133, label %91

91:                                               ; preds = %87
  %92 = load i32, ptr %63, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %133

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %1, i32 0, i32 5
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr %struct.i2c_msg, ptr %96, i32 1
  store ptr %97, ptr %95, align 8
  tail call fastcc void @bcm2835_i2c_start_transfer(ptr noundef %1)
  br label %133

98:                                               ; preds = %59
  %99 = and i32 %6, 8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %133, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %1, i32 0, i32 10
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = or i32 %6, 1024
  br label %126

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %1, i32 0, i32 9
  br label %109

109:                                              ; preds = %115, %107
  %110 = load ptr, ptr %3, align 4
  %111 = getelementptr i8, ptr %110, i32 4
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %113 = and i32 %112, 32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %133, label %115

115:                                              ; preds = %109
  %116 = load ptr, ptr %3, align 4
  %117 = getelementptr i8, ptr %116, i32 16
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %119 = trunc i32 %118 to i8
  %120 = load ptr, ptr %108, align 8
  store i8 %119, ptr %120, align 1
  %121 = load ptr, ptr %108, align 8
  %122 = getelementptr i8, ptr %121, i32 1
  store ptr %122, ptr %108, align 8
  %123 = load i32, ptr %102, align 4
  %124 = add i32 %123, -1
  store i32 %124, ptr %102, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %133, label %109

126:                                              ; preds = %105, %66, %54, %50, %2
  %127 = phi i32 [ %106, %105 ], [ %67, %66 ], [ %7, %2 ], [ 1024, %50 ], [ %58, %54 ]
  %128 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %1, i32 0, i32 8
  store i32 %127, ptr %128, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !9
  tail call void @arm_heavy_mb() #10
  %129 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 16) #10, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !9
  tail call void @arm_heavy_mb() #10
  %130 = load ptr, ptr %3, align 4
  %131 = getelementptr i8, ptr %130, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 770) #10, !srcloc !10
  %132 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %1, i32 0, i32 4
  tail call void @complete(ptr noundef %132) #10
  br label %133

133:                                              ; preds = %126, %115, %109, %98, %94, %91, %87
  %134 = phi i32 [ 1, %126 ], [ 1, %94 ], [ 1, %91 ], [ 1, %87 ], [ 0, %98 ], [ 1, %109 ], [ 1, %115 ]
  ret i32 %134
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_bcm2835_i2c_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.clk_bcm2835_i2c, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %9 = add i32 %1, -1
  %10 = add i32 %9, %8
  %11 = udiv i32 %10, %8
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_bcm2835_i2c_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #7 {
  %4 = load i32, ptr %2, align 4
  %5 = add i32 %4, -1
  %6 = add i32 %5, %1
  %7 = udiv i32 %6, %1
  %8 = and i32 %7, 1
  %9 = add i32 %8, %7
  %10 = add i32 %9, -65535
  %11 = icmp ult i32 %10, -65533
  %12 = select i1 %11, i32 -22, i32 %9
  %13 = add i32 %5, %12
  %14 = udiv i32 %13, %12
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_bcm2835_i2c_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = add i32 %1, -1
  %5 = add i32 %4, %2
  %6 = udiv i32 %5, %1
  %7 = and i32 %6, 1
  %8 = add i32 %7, %6
  %9 = add i32 %8, -65535
  %10 = icmp ult i32 %9, -65533
  br i1 %10, label %27, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.clk_bcm2835_i2c, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !9
  tail call void @arm_heavy_mb() #10
  %14 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %8) #10, !srcloc !10
  %17 = lshr i32 %8, 4
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 1)
  %19 = lshr i32 %8, 2
  %20 = tail call i32 @llvm.umax.i32(i32 %19, i32 1)
  %21 = load ptr, ptr %12, align 4
  %22 = shl nuw nsw i32 %18, 16
  %23 = or i32 %22, %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !9
  tail call void @arm_heavy_mb() #10
  %24 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %21, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %23) #10, !srcloc !10
  br label %27

27:                                               ; preds = %11, %3
  %28 = phi i32 [ 0, %11 ], [ -22, %3 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm2835_i2c_start_transfer(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = icmp eq i32 %3, 1
  %7 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = add i32 %3, -1
  store i32 %9, ptr %2, align 8
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %0, i32 0, i32 9
  store ptr %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 2
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %0, i32 0, i32 10
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  %18 = load i16, ptr %17, align 2
  %19 = and i16 %18, 1
  %20 = icmp eq i16 %19, 0
  %21 = select i1 %20, i32 33408, i32 33921
  %22 = or i32 %21, 256
  %23 = select i1 %6, i32 %22, i32 %21
  %24 = load i16, ptr %8, align 4
  %25 = zext i16 %24 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !9
  tail call void @arm_heavy_mb() #10
  %26 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %25) #10, !srcloc !10
  %29 = load i16, ptr %13, align 4
  %30 = zext i16 %29 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !9
  tail call void @arm_heavy_mb() #10
  %31 = load ptr, ptr %26, align 4
  %32 = getelementptr i8, ptr %31, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #10, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !9
  tail call void @arm_heavy_mb() #10
  %33 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %23) #10, !srcloc !10
  br label %34

34:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_i2c_xfer(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = add i32 %2, -1
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %11, label %21

8:                                                ; preds = %11
  %9 = add nuw nsw i32 %12, 1
  %10 = icmp eq i32 %9, %6
  br i1 %10, label %21, label %11

11:                                               ; preds = %8, %3
  %12 = phi i32 [ %9, %8 ], [ 0, %3 ]
  %13 = getelementptr %struct.i2c_msg, ptr %1, i32 %12, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %8, label %17

17:                                               ; preds = %11
  %18 = load i1, ptr @bcm2835_i2c_xfer.__print_once, align 1
  br i1 %18, label %43, label %19

19:                                               ; preds = %17
  store i1 true, ptr @bcm2835_i2c_xfer.__print_once, align 1
  %20 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.14) #11
  br label %43

21:                                               ; preds = %8, %3
  %22 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %5, i32 0, i32 5
  store ptr %1, ptr %22, align 8
  %23 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %5, i32 0, i32 7
  store i32 %2, ptr %23, align 8
  %24 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %5, i32 0, i32 4
  store i32 0, ptr %24, align 4
  tail call fastcc void @bcm2835_i2c_start_transfer(ptr noundef %5)
  %25 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 @wait_for_completion_timeout(ptr noundef %24, i32 noundef %26) #10
  store ptr null, ptr %22, align 8
  store i32 0, ptr %23, align 8
  %28 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %5, i32 0, i32 9
  store ptr null, ptr %28, align 8
  %29 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %5, i32 0, i32 10
  store i32 0, ptr %29, align 4
  %30 = icmp eq i32 %27, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !9
  tail call void @arm_heavy_mb() #10
  %32 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %5, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 16) #10, !srcloc !10
  %34 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.15) #11
  br label %43

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %5, i32 0, i32 8
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = and i32 %37, 256
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 -5, i32 -121
  br label %43

43:                                               ; preds = %39, %35, %31, %19, %17
  %44 = phi i32 [ -110, %31 ], [ -95, %19 ], [ -95, %17 ], [ %2, %35 ], [ %42, %39 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bcm2835_i2c_func(ptr nocapture noundef readnone %0) #8 {
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_rate_exclusive_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!9 = !{i64 2154188244}
!10 = !{i64 5451834}
!11 = !{i64 5452252}
!12 = !{i64 2154188884}
