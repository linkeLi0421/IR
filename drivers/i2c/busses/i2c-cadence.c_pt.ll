; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-cadence.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-cadence.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.cdns_platform_data = type { i32 }
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
%struct.cdns_i2c = type { ptr, ptr, %struct.i2c_adapter, ptr, i32, %struct.completion, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.notifier_block, i32, i32, i16, ptr, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clk_notifier_data = type { ptr, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_cadence__248_1372_cdns_i2c_drv_init6 = internal global ptr @cdns_i2c_drv_init, section ".initcall6.init", align 4
@cdns_i2c_drv = internal global %struct.platform_driver { ptr @cdns_i2c_probe, ptr @cdns_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cdns_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns_i2c_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_cdns_i2c_drv_exit = internal global ptr @cdns_i2c_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author249 = internal constant [31 x i8] c"i2c_cadence.author=Xilinx Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [47 x i8] c"i2c_cadence.description=Cadence I2C bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [48 x i8] c"i2c_cadence.file=drivers/i2c/busses/i2c-cadence\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [24 x i8] c"i2c_cadence.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"cdns-i2c\00", align 1
@cdns_i2c_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,i2c-r1p10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r1p10_i2c_def }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,i2c-r1p14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@cdns_i2c_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns_i2c_runtime_suspend, ptr @cdns_i2c_runtime_resume, ptr null }, align 4
@cdns_i2c_algo = internal constant %struct.i2c_algorithm { ptr @cdns_i2c_master_xfer, ptr null, ptr null, ptr null, ptr @cdns_i2c_func, ptr @cdns_reg_slave, ptr @cdns_unreg_slave }, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Cadence I2C at %08lx\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"input clock not found.\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Unable to enable clock.\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Unable to register clock notifier.\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"invalid SCL clock: %u Hz\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"cannot get irq %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"%u kHz mmio %08lx irq %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"Can't do repeated start after a receive message\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"timeout waiting on completion\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"clock rate change rejected\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"xfer_size reg rollover. xfer aborted!\0A\00", align 1
@r1p10_i2c_def = internal constant %struct.cdns_platform_data { i32 1 }, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"Cannot enable clock.\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_cdns_i2c_drv_exit, ptr @__initcall__kmod_i2c_cadence__248_1372_cdns_i2c_drv_init6, ptr @cdns_i2c_drv_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cdns_i2c_drv_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cdns_i2c_drv, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @cdns_i2c_drv_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @cdns_i2c_drv) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_i2c_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 768, i32 noundef 3520) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %125, label %9

9:                                                ; preds = %1
  store ptr %6, ptr %7, align 8
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %10, align 8
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = tail call ptr @of_match_node(ptr noundef nonnull @cdns_i2c_of_match, ptr noundef %12) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.of_device_id, ptr %13, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %17, align 4
  %21 = getelementptr inbounds %struct.cdns_i2c, ptr %7, i32 0, i32 17
  store i32 %20, ptr %21, align 4
  br label %22

22:                                               ; preds = %19, %15, %9
  %23 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5) #9
  %24 = getelementptr inbounds %struct.cdns_i2c, ptr %7, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = ptrtoint ptr %23 to i32
  br label %125

28:                                               ; preds = %22
  %29 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %125, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.cdns_i2c, ptr %7, i32 0, i32 11
  store i32 %29, ptr %32, align 4
  %33 = getelementptr inbounds %struct.cdns_i2c, ptr %7, i32 0, i32 2
  store ptr null, ptr %33, align 8
  %34 = load ptr, ptr %11, align 8
  %35 = getelementptr inbounds %struct.cdns_i2c, ptr %7, i32 0, i32 2, i32 9, i32 25
  store ptr %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.cdns_i2c, ptr %7, i32 0, i32 2, i32 2
  store ptr @cdns_i2c_algo, ptr %36, align 8
  %37 = getelementptr inbounds %struct.cdns_i2c, ptr %7, i32 0, i32 2, i32 7
  store i32 100, ptr %37, align 4
  %38 = getelementptr inbounds %struct.cdns_i2c, ptr %7, i32 0, i32 2, i32 8
  store i32 3, ptr %38, align 8
  %39 = getelementptr inbounds %struct.cdns_i2c, ptr %7, i32 0, i32 2, i32 3
  store ptr %7, ptr %39, align 4
  %40 = getelementptr inbounds %struct.cdns_i2c, ptr %7, i32 0, i32 2, i32 9, i32 1
  store ptr %6, ptr %40, align 4
  %41 = getelementptr inbounds %struct.cdns_i2c, ptr %7, i32 0, i32 5
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.cdns_i2c, ptr %7, i32 0, i32 5, i32 1
  call void @__init_swait_queue_head(ptr noundef %42, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #9
  %43 = getelementptr inbounds %struct.cdns_i2c, ptr %7, i32 0, i32 2, i32 12
  %44 = load ptr, ptr %5, align 4
  %45 = load i32, ptr %44, align 4
  %46 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %43, i32 noundef 48, ptr noundef nonnull @.str.1, i32 noundef %45)
  %47 = call ptr @devm_clk_get(ptr noundef %6, ptr noundef null) #9
  %48 = getelementptr inbounds %struct.cdns_i2c, ptr %7, i32 0, i32 15
  store ptr %47, ptr %48, align 4
  %49 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %53

50:                                               ; preds = %31
  %51 = ptrtoint ptr %47 to i32
  %52 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %6, i32 noundef %51, ptr noundef nonnull @.str.2) #9
  br label %125

53:                                               ; preds = %31
  %54 = call i32 @clk_prepare(ptr noundef %47) #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = call i32 @clk_enable(ptr noundef %47) #9
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  call void @clk_unprepare(ptr noundef %47) #9
  br label %60

60:                                               ; preds = %59, %53
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.3) #10
  br label %61

61:                                               ; preds = %60, %56
  %62 = load ptr, ptr %7, align 8
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %62, i32 noundef 1000) #9
  %63 = load ptr, ptr %7, align 8
  call void @__pm_runtime_use_autosuspend(ptr noundef %63, i1 noundef zeroext true) #9
  %64 = load ptr, ptr %7, align 8
  %65 = call i32 @__pm_runtime_set_status(ptr noundef %64, i32 noundef 0) #9
  %66 = load ptr, ptr %7, align 8
  call void @pm_runtime_enable(ptr noundef %66) #9
  %67 = getelementptr inbounds %struct.cdns_i2c, ptr %7, i32 0, i32 16
  store ptr @cdns_i2c_clk_notifier_cb, ptr %67, align 8
  %68 = load ptr, ptr %48, align 4
  %69 = call i32 @clk_notifier_register(ptr noundef %68, ptr noundef %67) #9
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %61
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.4) #10
  br label %72

72:                                               ; preds = %71, %61
  %73 = load ptr, ptr %48, align 4
  %74 = call i32 @clk_get_rate(ptr noundef %73) #9
  %75 = getelementptr inbounds %struct.cdns_i2c, ptr %7, i32 0, i32 12
  store i32 %74, ptr %75, align 8
  %76 = load ptr, ptr %11, align 8
  %77 = getelementptr inbounds %struct.cdns_i2c, ptr %7, i32 0, i32 13
  %78 = call i32 @of_property_read_variable_u32_array(ptr noundef %76, ptr noundef nonnull @.str.5, ptr noundef %77, i32 noundef 1, i32 noundef 0) #9
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, ptr %77, align 4
  %82 = icmp ugt i32 %81, 400000
  br i1 %82, label %83, label %84

83:                                               ; preds = %80, %72
  store i32 100000, ptr %77, align 4
  br label %84

84:                                               ; preds = %83, %80
  %85 = phi i32 [ 100000, %83 ], [ %81, %80 ]
  %86 = getelementptr inbounds %struct.cdns_i2c, ptr %7, i32 0, i32 21
  store i32 1, ptr %86, align 4
  %87 = getelementptr inbounds %struct.cdns_i2c, ptr %7, i32 0, i32 22
  store i32 0, ptr %87, align 8
  %88 = getelementptr inbounds %struct.cdns_i2c, ptr %7, i32 0, i32 18
  store i32 14, ptr %88, align 8
  %89 = load i32, ptr %75, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 %85, ptr %4, align 4
  %90 = call fastcc i32 @cdns_i2c_calc_divs(ptr noundef nonnull %4, i32 noundef %89, ptr noundef nonnull %2, ptr noundef nonnull %3) #9
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %84
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6, i32 noundef %85) #10
  br label %121

93:                                               ; preds = %84
  %94 = load i32, ptr %2, align 4
  %95 = shl i32 %94, 14
  %96 = load i32, ptr %3, align 4
  %97 = shl i32 %96, 8
  %98 = or i32 %97, %95
  %99 = or i32 %98, 14
  store i32 %99, ptr %88, align 8
  %100 = load ptr, ptr %24, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %99) #9, !srcloc !9
  %101 = trunc i32 %98 to i16
  %102 = getelementptr inbounds %struct.cdns_i2c, ptr %7, i32 0, i32 19
  store i16 %101, ptr %102, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %103 = load i32, ptr %32, align 4
  %104 = call i32 @devm_request_threaded_irq(ptr noundef %6, i32 noundef %103, ptr noundef nonnull @cdns_i2c_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %7) #9
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %93
  %107 = load i32, ptr %32, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7, i32 noundef %107) #10
  br label %121

108:                                              ; preds = %93
  %109 = load i32, ptr %88, align 8
  %110 = load ptr, ptr %24, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %109) #9, !srcloc !9
  %111 = load ptr, ptr %24, align 4
  %112 = getelementptr i8, ptr %111, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 255) #9, !srcloc !9
  %113 = call i32 @i2c_add_adapter(ptr noundef %33) #9
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %108
  %116 = load i32, ptr %77, align 4
  %117 = udiv i32 %116, 1000
  %118 = load ptr, ptr %5, align 4
  %119 = load i32, ptr %118, align 4
  %120 = load i32, ptr %32, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.8, i32 noundef %117, i32 noundef %119, i32 noundef %120) #10
  br label %125

121:                                              ; preds = %108, %106, %92
  %122 = phi i32 [ -22, %92 ], [ %104, %106 ], [ %113, %108 ]
  %123 = load ptr, ptr %48, align 4
  call void @clk_disable(ptr noundef %123) #9
  call void @clk_unprepare(ptr noundef %123) #9
  call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #9
  %124 = call i32 @__pm_runtime_set_status(ptr noundef %6, i32 noundef 2) #9
  br label %125

125:                                              ; preds = %121, %115, %50, %28, %26, %1
  %126 = phi i32 [ %27, %26 ], [ %52, %50 ], [ %122, %121 ], [ 0, %115 ], [ -12, %1 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %126
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_i2c_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #9
  %5 = tail call i32 @__pm_runtime_set_status(ptr noundef %4, i32 noundef 2) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %4, i1 noundef zeroext false) #9
  %6 = getelementptr inbounds %struct.cdns_i2c, ptr %3, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.cdns_i2c, ptr %3, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.cdns_i2c, ptr %3, i32 0, i32 16
  %10 = tail call i32 @clk_notifier_unregister(ptr noundef %8, ptr noundef %9) #9
  %11 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %11) #9
  tail call void @clk_unprepare(ptr noundef %11) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_i2c_clk_notifier_cb(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = getelementptr i8, ptr %0, i32 -728
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 11, i32 18
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 11, i32 15
  %23 = load i16, ptr %22, align 8
  %24 = and i16 %23, 7
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %115, label %26

26:                                               ; preds = %21, %3
  switch i32 %1, label %115 [
    i32 1, label %27
    i32 2, label %61
    i32 4, label %89
  ]

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #9
  %30 = getelementptr i8, ptr %0, i32 -12
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #9
  %32 = call fastcc i32 @cdns_i2c_calc_divs(ptr noundef nonnull %13, i32 noundef %29, ptr noundef nonnull %14, ptr noundef nonnull %15)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = getelementptr i8, ptr %0, i32 -620
  %36 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.12) #10
  br label %59

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp ugt i32 %29, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  store i32 0, ptr %10, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #9
  store i32 0, ptr %11, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #9
  store i32 %31, ptr %12, align 4
  %42 = call fastcc i32 @cdns_i2c_calc_divs(ptr noundef nonnull %12, i32 noundef %29, ptr noundef nonnull %10, ptr noundef nonnull %11) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = getelementptr i8, ptr %0, i32 16
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, -65281
  %48 = load i32, ptr %10, align 4
  %49 = shl i32 %48, 14
  %50 = load i32, ptr %11, align 4
  %51 = shl i32 %50, 8
  %52 = or i32 %51, %49
  %53 = or i32 %52, %47
  store i32 %53, ptr %45, align 8
  %54 = getelementptr i8, ptr %0, i32 -724
  %55 = load ptr, ptr %54, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #9, !srcloc !9
  %56 = trunc i32 %52 to i16
  %57 = getelementptr i8, ptr %0, i32 20
  store i16 %56, ptr %57, align 4
  br label %58

58:                                               ; preds = %44, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  br label %59

59:                                               ; preds = %58, %37, %34
  %60 = phi i32 [ 32769, %34 ], [ 1, %58 ], [ 1, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #9
  br label %115

61:                                               ; preds = %26
  %62 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr i8, ptr %0, i32 -16
  store i32 %63, ptr %64, align 8
  %65 = load i32, ptr %62, align 4
  %66 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp ult i32 %65, %67
  br i1 %68, label %69, label %115

69:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 0, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  %70 = getelementptr i8, ptr %0, i32 -12
  %71 = load i32, ptr %70, align 4
  store i32 %71, ptr %9, align 4
  %72 = call fastcc i32 @cdns_i2c_calc_divs(ptr noundef nonnull %9, i32 noundef %65, ptr noundef nonnull %7, ptr noundef nonnull %8) #9
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = getelementptr i8, ptr %0, i32 16
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, -65281
  %78 = load i32, ptr %7, align 4
  %79 = shl i32 %78, 14
  %80 = load i32, ptr %8, align 4
  %81 = shl i32 %80, 8
  %82 = or i32 %81, %79
  %83 = or i32 %82, %77
  store i32 %83, ptr %75, align 8
  %84 = getelementptr i8, ptr %0, i32 -724
  %85 = load ptr, ptr %84, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %83) #9, !srcloc !9
  %86 = trunc i32 %82 to i16
  %87 = getelementptr i8, ptr %0, i32 20
  store i16 %86, ptr %87, align 4
  br label %88

88:                                               ; preds = %74, %69
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  br label %115

89:                                               ; preds = %26
  %90 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = icmp ugt i32 %91, %93
  br i1 %94, label %95, label %115

95:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  %96 = getelementptr i8, ptr %0, i32 -12
  %97 = load i32, ptr %96, align 4
  store i32 %97, ptr %6, align 4
  %98 = call fastcc i32 @cdns_i2c_calc_divs(ptr noundef nonnull %6, i32 noundef %93, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %95
  %101 = getelementptr i8, ptr %0, i32 16
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, -65281
  %104 = load i32, ptr %4, align 4
  %105 = shl i32 %104, 14
  %106 = load i32, ptr %5, align 4
  %107 = shl i32 %106, 8
  %108 = or i32 %107, %105
  %109 = or i32 %108, %103
  store i32 %109, ptr %101, align 8
  %110 = getelementptr i8, ptr %0, i32 -724
  %111 = load ptr, ptr %110, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %109) #9, !srcloc !9
  %112 = trunc i32 %108 to i16
  %113 = getelementptr i8, ptr %0, i32 20
  store i16 %112, ptr %113, align 4
  br label %114

114:                                              ; preds = %100, %95
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %115

115:                                              ; preds = %114, %89, %88, %61, %59, %26, %21
  %116 = phi i32 [ %60, %59 ], [ 1, %21 ], [ 1, %88 ], [ 1, %61 ], [ 1, %114 ], [ 1, %89 ], [ 0, %26 ]
  ret i32 %116
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_i2c_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 21
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #9
  br i1 %8, label %15, label %139

15:                                               ; preds = %2
  %16 = load ptr, ptr %9, align 4
  %17 = getelementptr i8, ptr %16, i32 32
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !10
  %19 = xor i32 %18, -1
  %20 = and i32 %12, %19
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr i8, ptr %21, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !10
  %24 = and i32 %23, 8
  %25 = icmp eq i32 %24, 0
  %26 = and i32 %20, 2
  %27 = icmp eq i32 %26, 0
  br i1 %25, label %55, label %28

28:                                               ; preds = %15
  br i1 %27, label %50, label %29

29:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1, !annotation !8
  %30 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 22
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  store i32 1, ptr %30, align 8
  %34 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 20
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 8
  %37 = load ptr, ptr %36, align 8
  %38 = call i32 %37(ptr noundef %35, i32 noundef 0, ptr noundef nonnull %5) #9
  br label %45

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 20
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 8
  %43 = load ptr, ptr %42, align 8
  %44 = call i32 %43(ptr noundef %41, i32 noundef 2, ptr noundef nonnull %5) #9
  br label %45

45:                                               ; preds = %39, %33
  %46 = load i8, ptr %5, align 1
  %47 = zext i8 %46 to i32
  %48 = load ptr, ptr %9, align 4
  %49 = getelementptr i8, ptr %48, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #9, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  br label %50

50:                                               ; preds = %45, %28
  %51 = and i32 %20, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %128, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 22
  br label %121

55:                                               ; preds = %15
  br i1 %27, label %87, label %56

56:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1, !annotation !8
  %57 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 22
  %58 = load i32, ptr %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  store i32 2, ptr %57, align 8
  %61 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 20
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 8
  %64 = load ptr, ptr %63, align 8
  %65 = tail call i32 %64(ptr noundef %62, i32 noundef 1, ptr noundef null) #9
  br label %66

66:                                               ; preds = %60, %56
  %67 = load ptr, ptr %9, align 4
  %68 = getelementptr i8, ptr %67, i32 20
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #9, !srcloc !10
  %70 = trunc i32 %69 to i8
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 20
  br label %74

74:                                               ; preds = %74, %72
  %75 = phi i8 [ %70, %72 ], [ %76, %74 ]
  %76 = add i8 %75, -1
  %77 = load ptr, ptr %9, align 4
  %78 = getelementptr i8, ptr %77, i32 12
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #9, !srcloc !10
  %80 = trunc i32 %79 to i8
  store i8 %80, ptr %4, align 1
  %81 = load ptr, ptr %73, align 8
  %82 = getelementptr inbounds %struct.i2c_client, ptr %81, i32 0, i32 8
  %83 = load ptr, ptr %82, align 8
  %84 = call i32 %83(ptr noundef %81, i32 noundef 3, ptr noundef nonnull %4) #9
  %85 = icmp eq i8 %76, 0
  br i1 %85, label %86, label %74

86:                                               ; preds = %74, %66
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  br label %87

87:                                               ; preds = %86, %55
  %88 = and i32 %20, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %128, label %90

90:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 0, ptr %3, align 1, !annotation !8
  %91 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 22
  %92 = load i32, ptr %91, align 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  store i32 2, ptr %91, align 8
  %95 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 20
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.i2c_client, ptr %96, i32 0, i32 8
  %98 = load ptr, ptr %97, align 8
  %99 = call i32 %98(ptr noundef %96, i32 noundef 1, ptr noundef null) #9
  br label %100

100:                                              ; preds = %94, %90
  %101 = load ptr, ptr %9, align 4
  %102 = getelementptr i8, ptr %101, i32 20
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #9, !srcloc !10
  %104 = trunc i32 %103 to i8
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %120, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 20
  br label %108

108:                                              ; preds = %108, %106
  %109 = phi i8 [ %104, %106 ], [ %110, %108 ]
  %110 = add i8 %109, -1
  %111 = load ptr, ptr %9, align 4
  %112 = getelementptr i8, ptr %111, i32 12
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #9, !srcloc !10
  %114 = trunc i32 %113 to i8
  store i8 %114, ptr %3, align 1
  %115 = load ptr, ptr %107, align 8
  %116 = getelementptr inbounds %struct.i2c_client, ptr %115, i32 0, i32 8
  %117 = load ptr, ptr %116, align 8
  %118 = call i32 %117(ptr noundef %115, i32 noundef 3, ptr noundef nonnull %3) #9
  %119 = icmp eq i8 %110, 0
  br i1 %119, label %120, label %108

120:                                              ; preds = %108, %100
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  br label %121

121:                                              ; preds = %120, %53
  %122 = phi ptr [ %54, %53 ], [ %91, %120 ]
  store i32 0, ptr %122, align 8
  %123 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 20
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr inbounds %struct.i2c_client, ptr %124, i32 0, i32 8
  %126 = load ptr, ptr %125, align 8
  %127 = call i32 %126(ptr noundef %124, i32 noundef 4, ptr noundef null) #9
  br label %128

128:                                              ; preds = %121, %87, %50
  %129 = and i32 %20, 228
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %332, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 22
  store i32 0, ptr %132, align 8
  %133 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 20
  %134 = load ptr, ptr %133, align 8
  %135 = getelementptr inbounds %struct.i2c_client, ptr %134, i32 0, i32 8
  %136 = load ptr, ptr %135, align 8
  %137 = call i32 %136(ptr noundef %134, i32 noundef 4, ptr noundef null) #9
  %138 = load ptr, ptr %9, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 64) #9, !srcloc !9
  br label %332

139:                                              ; preds = %2
  %140 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 4
  store i32 0, ptr %140, align 4
  %141 = and i32 %12, 516
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i32
  %144 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 9
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 10
  %147 = load i32, ptr %146, align 8
  %148 = icmp ugt i32 %145, %147
  %149 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 17
  %150 = load i32, ptr %149, align 4
  %151 = and i32 %150, 1
  %152 = icmp ne i32 %151, 0
  %153 = select i1 %152, i1 %148, i1 false
  %154 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 7
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  %157 = and i32 %12, 1
  br i1 %156, label %271, label %158

158:                                              ; preds = %139
  %159 = icmp eq i32 %157, 0
  %160 = and i32 %12, 3
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %271, label %162

162:                                              ; preds = %158
  %163 = load ptr, ptr %9, align 4
  %164 = getelementptr i8, ptr %163, i32 4
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #9, !srcloc !10
  %166 = and i32 %165, 32
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %211, label %168

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 14
  br label %170

170:                                              ; preds = %205, %168
  %171 = load i32, ptr %144, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %196, label %173

173:                                              ; preds = %170
  %174 = load ptr, ptr %9, align 4
  %175 = getelementptr i8, ptr %174, i32 12
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %175) #9, !srcloc !10
  %177 = trunc i32 %176 to i8
  %178 = load ptr, ptr %154, align 4
  %179 = getelementptr i8, ptr %178, i32 1
  store ptr %179, ptr %154, align 4
  store i8 %177, ptr %178, align 1
  %180 = load i32, ptr %144, align 4
  %181 = add i32 %180, -1
  store i32 %181, ptr %144, align 4
  %182 = load i32, ptr %146, align 8
  %183 = add i32 %182, -1
  store i32 %183, ptr %146, align 8
  %184 = icmp ult i32 %181, 17
  br i1 %184, label %185, label %201

185:                                              ; preds = %173
  %186 = load i32, ptr %169, align 8
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %201

188:                                              ; preds = %185
  %189 = load ptr, ptr %9, align 4
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #9, !srcloc !10
  %191 = and i32 %190, 16
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %201, label %193

193:                                              ; preds = %188
  %194 = and i32 %190, -17
  %195 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 %194) #9, !srcloc !9
  br label %201

196:                                              ; preds = %170
  %197 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 2, i32 9, i32 1
  %198 = load ptr, ptr %197, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %198, ptr noundef nonnull @.str.13) #10
  %199 = load i32, ptr %140, align 4
  %200 = or i32 %199, 8
  store i32 %200, ptr %140, align 4
  br label %211

201:                                              ; preds = %193, %188, %185, %173
  br i1 %153, label %202, label %205

202:                                              ; preds = %201
  %203 = load i32, ptr %146, align 8
  %204 = icmp eq i32 %203, 17
  br i1 %204, label %215, label %205

205:                                              ; preds = %202, %201
  %206 = load ptr, ptr %9, align 4
  %207 = getelementptr i8, ptr %206, i32 4
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %207) #9, !srcloc !10
  %209 = and i32 %208, 32
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %170

211:                                              ; preds = %205, %196, %162
  br i1 %153, label %212, label %232

212:                                              ; preds = %211
  %213 = load i32, ptr %146, align 8
  %214 = icmp eq i32 %213, 17
  br i1 %214, label %215, label %255

215:                                              ; preds = %212, %202
  br label %216

216:                                              ; preds = %216, %215
  %217 = load ptr, ptr %9, align 4
  %218 = getelementptr i8, ptr %217, i32 20
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %218) #9, !srcloc !10
  %220 = load i32, ptr %146, align 8
  %221 = add i32 %220, -16
  %222 = icmp eq i32 %219, %221
  br i1 %222, label %223, label %216

223:                                              ; preds = %216
  %224 = load i32, ptr %144, align 4
  %225 = add i32 %224, -16
  %226 = icmp sgt i32 %225, 252
  %227 = load ptr, ptr %9, align 4
  %228 = getelementptr i8, ptr %227, i32 20
  br i1 %226, label %229, label %230

229:                                              ; preds = %223
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 252) #9, !srcloc !9
  br label %253

230:                                              ; preds = %223
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 %225) #9, !srcloc !9
  %231 = load i32, ptr %144, align 4
  br label %253

232:                                              ; preds = %211
  %233 = load i32, ptr %144, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %255, label %235

235:                                              ; preds = %232
  %236 = load i32, ptr %146, align 8
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %255

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 3
  %240 = load ptr, ptr %239, align 8
  %241 = load i16, ptr %240, align 4
  %242 = and i16 %241, 1023
  %243 = zext i16 %242 to i32
  %244 = load ptr, ptr %9, align 4
  %245 = getelementptr i8, ptr %244, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %245, i32 %243) #9, !srcloc !9
  %246 = load i32, ptr %144, align 4
  %247 = icmp ugt i32 %246, 252
  %248 = load ptr, ptr %9, align 4
  %249 = getelementptr i8, ptr %248, i32 20
  br i1 %247, label %250, label %251

250:                                              ; preds = %238
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %249, i32 252) #9, !srcloc !9
  br label %253

251:                                              ; preds = %238
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %249, i32 %246) #9, !srcloc !9
  %252 = load i32, ptr %144, align 4
  br label %253

253:                                              ; preds = %251, %250, %230, %229
  %254 = phi i32 [ %252, %251 ], [ 252, %250 ], [ 268, %229 ], [ %231, %230 ]
  store i32 %254, ptr %146, align 8
  br label %255

255:                                              ; preds = %253, %235, %232, %212
  br i1 %159, label %320, label %256

256:                                              ; preds = %255
  %257 = load i32, ptr %144, align 4
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %273

259:                                              ; preds = %256
  %260 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 14
  %261 = load i32, ptr %260, align 8
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %273

263:                                              ; preds = %259
  %264 = load ptr, ptr %9, align 4
  %265 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %264) #9, !srcloc !10
  %266 = and i32 %265, 16
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %273, label %268

268:                                              ; preds = %263
  %269 = and i32 %265, -17
  %270 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %270, i32 %269) #9, !srcloc !9
  br label %273

271:                                              ; preds = %158, %139
  %272 = icmp eq i32 %157, 0
  br i1 %272, label %320, label %273

273:                                              ; preds = %271, %268, %263, %259, %256
  %274 = phi i32 [ %143, %271 ], [ 1, %259 ], [ %143, %256 ], [ 1, %263 ], [ 1, %268 ]
  %275 = phi i32 [ %143, %271 ], [ 1, %259 ], [ 1, %256 ], [ 1, %263 ], [ 1, %268 ]
  %276 = load ptr, ptr %154, align 4
  %277 = icmp eq ptr %276, null
  br i1 %277, label %278, label %320

278:                                              ; preds = %273
  %279 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 8
  %280 = load i32, ptr %279, align 8
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %307, label %282

282:                                              ; preds = %278
  %283 = load ptr, ptr %9, align 4
  %284 = getelementptr i8, ptr %283, i32 20
  %285 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %284) #9, !srcloc !10
  %286 = sub i32 16, %285
  %287 = load i32, ptr %279, align 8
  %288 = tail call i32 @llvm.umin.i32(i32 %287, i32 %286) #9
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %304, label %290

290:                                              ; preds = %282
  %291 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 6
  br label %292

292:                                              ; preds = %292, %290
  %293 = phi i32 [ %288, %290 ], [ %294, %292 ]
  %294 = add i32 %293, -1
  %295 = load ptr, ptr %291, align 8
  %296 = getelementptr i8, ptr %295, i32 1
  store ptr %296, ptr %291, align 8
  %297 = load i8, ptr %295, align 1
  %298 = zext i8 %297 to i32
  %299 = load ptr, ptr %9, align 4
  %300 = getelementptr i8, ptr %299, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %300, i32 %298) #9, !srcloc !9
  %301 = load i32, ptr %279, align 8
  %302 = add i32 %301, -1
  store i32 %302, ptr %279, align 8
  %303 = icmp eq i32 %294, 0
  br i1 %303, label %304, label %292

304:                                              ; preds = %292, %282
  %305 = phi i32 [ %287, %282 ], [ %302, %292 ]
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %320

307:                                              ; preds = %304, %278
  %308 = phi i32 [ %274, %304 ], [ 1, %278 ]
  %309 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 14
  %310 = load i32, ptr %309, align 8
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %320

312:                                              ; preds = %307
  %313 = load ptr, ptr %9, align 4
  %314 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %313) #9, !srcloc !10
  %315 = and i32 %314, 16
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %320, label %317

317:                                              ; preds = %312
  %318 = and i32 %314, -17
  %319 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %319, i32 %318) #9, !srcloc !9
  br label %320

320:                                              ; preds = %317, %312, %307, %304, %273, %271, %255
  %321 = phi i32 [ %275, %273 ], [ %143, %271 ], [ 1, %307 ], [ 1, %304 ], [ 1, %312 ], [ 1, %317 ], [ 1, %255 ]
  %322 = phi i32 [ %274, %273 ], [ %143, %271 ], [ %308, %307 ], [ %274, %304 ], [ %308, %312 ], [ %308, %317 ], [ %143, %255 ]
  %323 = and i32 %12, 740
  %324 = load i32, ptr %140, align 4
  %325 = or i32 %324, %323
  store i32 %325, ptr %140, align 4
  %326 = icmp eq i32 %322, 0
  br i1 %326, label %329, label %327

327:                                              ; preds = %320
  %328 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 5
  tail call void @complete(ptr noundef %328) #9
  br label %329

329:                                              ; preds = %327, %320
  %330 = icmp eq i32 %325, 0
  %331 = select i1 %330, i32 %321, i32 1
  br label %332

332:                                              ; preds = %329, %131, %128
  %333 = phi i32 [ %331, %329 ], [ 1, %128 ], [ 1, %131 ]
  ret i32 %333
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_i2c_master_xfer(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #9, !srcloc !12
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 0, i32 -1, ptr elementtype(i32) %10) #9, !srcloc !13
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %346, label %14

14:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  br label %346

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.cdns_i2c, ptr %5, i32 0, i32 21
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cdns_i2c, ptr %5, i32 0, i32 22
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %346

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cdns_i2c, ptr %5, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 767) #9, !srcloc !9
  %27 = load ptr, ptr %24, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 64) #9, !srcloc !9
  store i32 1, ptr %16, align 4
  store i32 0, ptr %20, align 8
  %28 = getelementptr inbounds %struct.cdns_i2c, ptr %5, i32 0, i32 19
  %29 = load i16, ptr %28, align 4
  %30 = or i16 %29, 14
  %31 = zext i16 %30 to i32
  %32 = load ptr, ptr %24, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %31) #9, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 115, i32 noundef 125, i32 noundef 2) #9
  br label %33

33:                                               ; preds = %23, %15
  %34 = getelementptr inbounds %struct.cdns_i2c, ptr %5, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #9, !srcloc !10
  %38 = and i32 %37, 256
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %318

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.cdns_i2c, ptr %5, i32 0, i32 17
  %42 = icmp sgt i32 %2, 1
  br i1 %42, label %43, label %66

43:                                               ; preds = %40
  %44 = load i32, ptr %41, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  %47 = add nsw i32 %2, -1
  br i1 %46, label %60, label %51

48:                                               ; preds = %51
  %49 = add nuw nsw i32 %52, 1
  %50 = icmp slt i32 %49, %47
  br i1 %50, label %51, label %60

51:                                               ; preds = %48, %43
  %52 = phi i32 [ %49, %48 ], [ 0, %43 ]
  %53 = getelementptr %struct.i2c_msg, ptr %1, i32 %52, i32 1
  %54 = load i16, ptr %53, align 2
  %55 = and i16 %54, 1
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %48, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 1
  %59 = load ptr, ptr %58, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %59, ptr noundef nonnull @.str.9) #10
  br label %318

60:                                               ; preds = %48, %43
  %61 = getelementptr inbounds %struct.cdns_i2c, ptr %5, i32 0, i32 14
  store i32 1, ptr %61, align 8
  %62 = load ptr, ptr %34, align 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #9, !srcloc !10
  %64 = or i32 %63, 16
  %65 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %64) #9, !srcloc !9
  br label %68

66:                                               ; preds = %40
  %67 = getelementptr inbounds %struct.cdns_i2c, ptr %5, i32 0, i32 14
  store i32 0, ptr %67, align 8
  br label %68

68:                                               ; preds = %66, %60
  %69 = icmp sgt i32 %2, 0
  br i1 %69, label %70, label %318

70:                                               ; preds = %68
  %71 = add nsw i32 %2, -1
  %72 = getelementptr inbounds %struct.cdns_i2c, ptr %5, i32 0, i32 14
  %73 = getelementptr inbounds %struct.cdns_i2c, ptr %5, i32 0, i32 3
  %74 = getelementptr inbounds %struct.cdns_i2c, ptr %5, i32 0, i32 4
  %75 = getelementptr inbounds %struct.cdns_i2c, ptr %5, i32 0, i32 5
  %76 = getelementptr inbounds %struct.cdns_i2c, ptr %5, i32 0, i32 7
  %77 = getelementptr inbounds %struct.cdns_i2c, ptr %5, i32 0, i32 9
  %78 = getelementptr inbounds %struct.cdns_i2c, ptr %5, i32 0, i32 10
  %79 = getelementptr inbounds %struct.cdns_i2c, ptr %5, i32 0, i32 6
  %80 = getelementptr inbounds %struct.cdns_i2c, ptr %5, i32 0, i32 8
  %81 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 7
  br label %82

82:                                               ; preds = %314, %70
  %83 = phi ptr [ %1, %70 ], [ %316, %314 ]
  %84 = phi i32 [ 0, %70 ], [ %315, %314 ]
  %85 = icmp eq i32 %84, %71
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 0, ptr %72, align 8
  br label %87

87:                                               ; preds = %86, %82
  store ptr %83, ptr %73, align 8
  store i32 0, ptr %74, align 4
  store i32 0, ptr %75, align 4
  %88 = load ptr, ptr %34, align 4
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #9, !srcloc !10
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 0, i32 1
  %91 = load i16, ptr %90, align 2
  %92 = and i16 %91, 16
  %93 = icmp eq i16 %92, 0
  %94 = and i32 %89, 4
  %95 = icmp eq i32 %94, 0
  br i1 %93, label %100, label %96

96:                                               ; preds = %87
  br i1 %95, label %104, label %97

97:                                               ; preds = %96
  %98 = and i32 %89, -5
  %99 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %98) #9, !srcloc !9
  br label %104

100:                                              ; preds = %87
  br i1 %95, label %101, label %104

101:                                              ; preds = %100
  %102 = or i32 %89, 4
  %103 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %102) #9, !srcloc !9
  br label %104

104:                                              ; preds = %101, %100, %97, %96
  %105 = load i16, ptr %90, align 2
  %106 = and i16 %105, 1
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %190, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %73, align 8
  %110 = getelementptr inbounds %struct.i2c_msg, ptr %109, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  store ptr %111, ptr %76, align 4
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %109, i32 0, i32 2
  %113 = load i16, ptr %112, align 4
  %114 = zext i16 %113 to i32
  store i32 %114, ptr %77, align 4
  %115 = load ptr, ptr %34, align 4
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #9, !srcloc !10
  %117 = load ptr, ptr %73, align 8
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %117, i32 0, i32 1
  %119 = load i16, ptr %118, align 2
  %120 = and i16 %119, 1024
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %108
  store i32 33, ptr %77, align 4
  store i32 33, ptr %78, align 8
  br label %126

123:                                              ; preds = %108
  %124 = load i32, ptr %77, align 4
  store i32 %124, ptr %78, align 8
  %125 = icmp ugt i32 %124, 16
  br i1 %125, label %126, label %127

126:                                              ; preds = %123, %122
  br label %127

127:                                              ; preds = %126, %123
  %128 = phi i32 [ 81, %126 ], [ 65, %123 ]
  %129 = or i32 %128, %116
  %130 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %129) #9, !srcloc !9
  %131 = load ptr, ptr %34, align 4
  %132 = getelementptr i8, ptr %131, i32 16
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #9, !srcloc !10
  %134 = load ptr, ptr %34, align 4
  %135 = getelementptr i8, ptr %134, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %133) #9, !srcloc !9
  %136 = load i32, ptr %77, align 4
  %137 = icmp ugt i32 %136, 252
  %138 = load ptr, ptr %34, align 4
  %139 = getelementptr i8, ptr %138, i32 20
  br i1 %137, label %140, label %141

140:                                              ; preds = %127
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 252) #9, !srcloc !9
  store i32 252, ptr %78, align 8
  br label %142

141:                                              ; preds = %127
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %136) #9, !srcloc !9
  br label %142

142:                                              ; preds = %141, %140
  %143 = load i32, ptr %72, align 8
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %180

145:                                              ; preds = %142
  %146 = load ptr, ptr %73, align 8
  %147 = getelementptr inbounds %struct.i2c_msg, ptr %146, i32 0, i32 1
  %148 = load i16, ptr %147, align 2
  %149 = and i16 %148, 1024
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %151, label %180

151:                                              ; preds = %145
  %152 = load i32, ptr %77, align 4
  %153 = icmp ult i32 %152, 17
  br i1 %153, label %154, label %180

154:                                              ; preds = %151
  %155 = load ptr, ptr %34, align 4
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #9, !srcloc !10
  %157 = and i32 %156, 16
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %180, label %159

159:                                              ; preds = %154
  %160 = load i32, ptr %41, align 4
  %161 = and i32 %160, 1
  %162 = icmp eq i32 %161, 0
  %163 = load ptr, ptr %73, align 8
  %164 = load i16, ptr %163, align 4
  %165 = and i16 %164, 1023
  %166 = zext i16 %165 to i32
  %167 = load ptr, ptr %34, align 4
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %167) #9, !srcloc !10
  %169 = and i32 %168, -17
  br i1 %162, label %172, label %170

170:                                              ; preds = %159
  %171 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !15
  br label %172

172:                                              ; preds = %170, %159
  %173 = phi i32 [ %171, %170 ], [ 0, %159 ]
  %174 = load ptr, ptr %34, align 4
  %175 = getelementptr i8, ptr %174, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 %166) #9, !srcloc !9
  %176 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %169) #9, !srcloc !9
  %177 = load ptr, ptr %34, align 4
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #9, !srcloc !10
  br i1 %162, label %187, label %179

179:                                              ; preds = %172
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %173) #9, !srcloc !16
  br label %187

180:                                              ; preds = %154, %151, %145, %142
  %181 = load ptr, ptr %73, align 8
  %182 = load i16, ptr %181, align 4
  %183 = and i16 %182, 1023
  %184 = zext i16 %183 to i32
  %185 = load ptr, ptr %34, align 4
  %186 = getelementptr i8, ptr %185, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %184) #9, !srcloc !9
  br label %187

187:                                              ; preds = %180, %179, %172
  %188 = load ptr, ptr %34, align 4
  %189 = getelementptr i8, ptr %188, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 743) #9, !srcloc !9
  br label %252

190:                                              ; preds = %104
  store ptr null, ptr %76, align 4
  %191 = load ptr, ptr %73, align 8
  %192 = getelementptr inbounds %struct.i2c_msg, ptr %191, i32 0, i32 3
  %193 = load ptr, ptr %192, align 4
  store ptr %193, ptr %79, align 8
  %194 = getelementptr inbounds %struct.i2c_msg, ptr %191, i32 0, i32 2
  %195 = load i16, ptr %194, align 4
  %196 = zext i16 %195 to i32
  store i32 %196, ptr %80, align 8
  %197 = load ptr, ptr %34, align 4
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %197) #9, !srcloc !10
  %199 = and i32 %198, -66
  %200 = load i32, ptr %80, align 8
  %201 = icmp ugt i32 %200, 16
  %202 = select i1 %201, i32 80, i32 64
  %203 = or i32 %202, %199
  %204 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %203) #9, !srcloc !9
  %205 = load ptr, ptr %34, align 4
  %206 = getelementptr i8, ptr %205, i32 16
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %206) #9, !srcloc !10
  %208 = load ptr, ptr %34, align 4
  %209 = getelementptr i8, ptr %208, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %209, i32 %207) #9, !srcloc !9
  %210 = load ptr, ptr %34, align 4
  %211 = getelementptr i8, ptr %210, i32 20
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %211) #9, !srcloc !10
  %213 = sub i32 16, %212
  %214 = load i32, ptr %80, align 8
  %215 = tail call i32 @llvm.umin.i32(i32 %214, i32 %213) #9
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %229, label %217

217:                                              ; preds = %217, %190
  %218 = phi i32 [ %219, %217 ], [ %215, %190 ]
  %219 = add i32 %218, -1
  %220 = load ptr, ptr %79, align 8
  %221 = getelementptr i8, ptr %220, i32 1
  store ptr %221, ptr %79, align 8
  %222 = load i8, ptr %220, align 1
  %223 = zext i8 %222 to i32
  %224 = load ptr, ptr %34, align 4
  %225 = getelementptr i8, ptr %224, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 %223) #9, !srcloc !9
  %226 = load i32, ptr %80, align 8
  %227 = add i32 %226, -1
  store i32 %227, ptr %80, align 8
  %228 = icmp eq i32 %219, 0
  br i1 %228, label %229, label %217

229:                                              ; preds = %217, %190
  %230 = phi i32 [ %214, %190 ], [ %227, %217 ]
  %231 = load i32, ptr %72, align 8
  %232 = icmp eq i32 %231, 0
  %233 = icmp eq i32 %230, 0
  %234 = select i1 %232, i1 %233, i1 false
  br i1 %234, label %235, label %243

235:                                              ; preds = %229
  %236 = load ptr, ptr %34, align 4
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %236) #9, !srcloc !10
  %238 = and i32 %237, 16
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %235
  %241 = and i32 %237, -17
  %242 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %242, i32 %241) #9, !srcloc !9
  br label %243

243:                                              ; preds = %240, %235, %229
  %244 = load ptr, ptr %73, align 8
  %245 = load i16, ptr %244, align 4
  %246 = and i16 %245, 1023
  %247 = zext i16 %246 to i32
  %248 = load ptr, ptr %34, align 4
  %249 = getelementptr i8, ptr %248, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %249, i32 %247) #9, !srcloc !9
  %250 = load ptr, ptr %34, align 4
  %251 = getelementptr i8, ptr %250, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %251, i32 743) #9, !srcloc !9
  br label %252

252:                                              ; preds = %243, %187
  %253 = load i32, ptr %81, align 4
  %254 = tail call i32 @wait_for_completion_timeout(ptr noundef %75, i32 noundef %253) #9
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %280

256:                                              ; preds = %252
  %257 = load ptr, ptr %4, align 4
  %258 = getelementptr inbounds %struct.cdns_i2c, ptr %257, i32 0, i32 1
  %259 = load ptr, ptr %258, align 4
  %260 = getelementptr i8, ptr %259, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %260, i32 767) #9, !srcloc !9
  %261 = load ptr, ptr %258, align 4
  %262 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %261) #9, !srcloc !10
  %263 = and i32 %262, -81
  %264 = or i32 %263, 64
  %265 = load ptr, ptr %258, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %265, i32 %264) #9, !srcloc !9
  %266 = load ptr, ptr %258, align 4
  %267 = getelementptr i8, ptr %266, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %267, i32 0) #9, !srcloc !9
  %268 = load ptr, ptr %258, align 4
  %269 = getelementptr i8, ptr %268, i32 16
  %270 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %269) #9, !srcloc !10
  %271 = load ptr, ptr %258, align 4
  %272 = getelementptr i8, ptr %271, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %272, i32 %270) #9, !srcloc !9
  %273 = load ptr, ptr %258, align 4
  %274 = getelementptr i8, ptr %273, i32 4
  %275 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %274) #9, !srcloc !10
  %276 = load ptr, ptr %258, align 4
  %277 = getelementptr i8, ptr %276, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %277, i32 %275) #9, !srcloc !9
  %278 = getelementptr inbounds %struct.cdns_i2c, ptr %5, i32 0, i32 2, i32 9, i32 1
  %279 = load ptr, ptr %278, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %279, ptr noundef nonnull @.str.10) #10
  br label %318

280:                                              ; preds = %252
  %281 = load ptr, ptr %34, align 4
  %282 = getelementptr i8, ptr %281, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %282, i32 767) #9, !srcloc !9
  %283 = load i32, ptr %74, align 4
  %284 = and i32 %283, 512
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %318

286:                                              ; preds = %280
  %287 = icmp eq i32 %283, 0
  br i1 %287, label %314, label %288

288:                                              ; preds = %286
  %289 = load ptr, ptr %4, align 4
  %290 = getelementptr inbounds %struct.cdns_i2c, ptr %289, i32 0, i32 1
  %291 = load ptr, ptr %290, align 4
  %292 = getelementptr i8, ptr %291, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %292, i32 767) #9, !srcloc !9
  %293 = load ptr, ptr %290, align 4
  %294 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %293) #9, !srcloc !10
  %295 = and i32 %294, -81
  %296 = or i32 %295, 64
  %297 = load ptr, ptr %290, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %297, i32 %296) #9, !srcloc !9
  %298 = load ptr, ptr %290, align 4
  %299 = getelementptr i8, ptr %298, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %299, i32 0) #9, !srcloc !9
  %300 = load ptr, ptr %290, align 4
  %301 = getelementptr i8, ptr %300, i32 16
  %302 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %301) #9, !srcloc !10
  %303 = load ptr, ptr %290, align 4
  %304 = getelementptr i8, ptr %303, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %304, i32 %302) #9, !srcloc !9
  %305 = load ptr, ptr %290, align 4
  %306 = getelementptr i8, ptr %305, i32 4
  %307 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %306) #9, !srcloc !10
  %308 = load ptr, ptr %290, align 4
  %309 = getelementptr i8, ptr %308, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %309, i32 %307) #9, !srcloc !9
  %310 = load i32, ptr %74, align 4
  %311 = and i32 %310, 4
  %312 = icmp eq i32 %311, 0
  %313 = select i1 %312, i32 -5, i32 -6
  br label %318

314:                                              ; preds = %286
  %315 = add nuw nsw i32 %84, 1
  %316 = getelementptr %struct.i2c_msg, ptr %83, i32 1
  %317 = icmp eq i32 %315, %2
  br i1 %317, label %318, label %82

318:                                              ; preds = %314, %288, %280, %256, %68, %57, %33
  %319 = phi i32 [ -95, %57 ], [ -11, %33 ], [ %313, %288 ], [ -110, %256 ], [ %2, %68 ], [ %2, %314 ], [ -11, %280 ]
  br i1 %18, label %320, label %340

320:                                              ; preds = %318
  %321 = load ptr, ptr %34, align 4
  %322 = getelementptr i8, ptr %321, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %322, i32 767) #9, !srcloc !9
  %323 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %323, i32 64) #9, !srcloc !9
  store i32 0, ptr %16, align 4
  %324 = getelementptr inbounds %struct.cdns_i2c, ptr %5, i32 0, i32 22
  store i32 0, ptr %324, align 8
  %325 = getelementptr inbounds %struct.cdns_i2c, ptr %5, i32 0, i32 19
  %326 = load i16, ptr %325, align 4
  %327 = and i16 %326, -15
  %328 = zext i16 %327 to i32
  %329 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %329, i32 %328) #9, !srcloc !9
  %330 = getelementptr inbounds %struct.cdns_i2c, ptr %5, i32 0, i32 20
  %331 = load ptr, ptr %330, align 8
  %332 = getelementptr inbounds %struct.i2c_client, ptr %331, i32 0, i32 1
  %333 = load i16, ptr %332, align 2
  %334 = and i16 %333, 1023
  %335 = zext i16 %334 to i32
  %336 = load ptr, ptr %34, align 4
  %337 = getelementptr i8, ptr %336, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %337, i32 %335) #9, !srcloc !9
  %338 = load ptr, ptr %34, align 4
  %339 = getelementptr i8, ptr %338, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %339, i32 239) #9, !srcloc !9
  br label %340

340:                                              ; preds = %320, %318
  %341 = load ptr, ptr %5, align 8
  %342 = tail call i64 @ktime_get_mono_fast_ns() #9
  %343 = getelementptr inbounds %struct.device, ptr %341, i32 0, i32 11, i32 22
  store volatile i64 %342, ptr %343, align 8
  %344 = load ptr, ptr %5, align 8
  %345 = tail call i32 @__pm_runtime_suspend(ptr noundef %344, i32 noundef 13) #9
  br label %346

346:                                              ; preds = %340, %19, %14, %9
  %347 = phi i32 [ %319, %340 ], [ -11, %19 ], [ %7, %9 ], [ %7, %14 ]
  ret i32 %347
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @cdns_i2c_func(ptr nocapture noundef readnone %0) #6 {
  ret i32 268304427
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_reg_slave(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -8
  %5 = getelementptr i8, ptr %3, i32 744
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %43

8:                                                ; preds = %1
  %9 = load i16, ptr %0, align 8
  %10 = and i16 %9, 16
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 8
  %14 = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #9
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #9, !srcloc !12
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 0, i32 -1, ptr elementtype(i32) %17) #9, !srcloc !13
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  br label %43

22:                                               ; preds = %12
  store ptr %0, ptr %5, align 8
  %23 = getelementptr i8, ptr %3, i32 -4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 767) #9, !srcloc !9
  %26 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 64) #9, !srcloc !9
  %27 = getelementptr i8, ptr %3, i32 748
  store i32 0, ptr %27, align 4
  %28 = getelementptr i8, ptr %3, i32 752
  store i32 0, ptr %28, align 8
  %29 = getelementptr i8, ptr %3, i32 740
  %30 = load i16, ptr %29, align 4
  %31 = and i16 %30, -15
  %32 = zext i16 %31 to i32
  %33 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %32) #9, !srcloc !9
  %34 = load ptr, ptr %5, align 8
  %35 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 1
  %36 = load i16, ptr %35, align 2
  %37 = and i16 %36, 1023
  %38 = zext i16 %37 to i32
  %39 = load ptr, ptr %23, align 4
  %40 = getelementptr i8, ptr %39, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #9, !srcloc !9
  %41 = load ptr, ptr %23, align 4
  %42 = getelementptr i8, ptr %41, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 239) #9, !srcloc !9
  br label %43

43:                                               ; preds = %22, %21, %16, %8, %1
  %44 = phi i32 [ 0, %22 ], [ -16, %1 ], [ -97, %8 ], [ %14, %16 ], [ %14, %21 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_unreg_slave(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 5) #9
  %7 = getelementptr i8, ptr %3, i32 744
  store ptr null, ptr %7, align 8
  %8 = getelementptr i8, ptr %3, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 767) #9, !srcloc !9
  %11 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 64) #9, !srcloc !9
  %12 = getelementptr i8, ptr %3, i32 748
  store i32 1, ptr %12, align 4
  %13 = getelementptr i8, ptr %3, i32 752
  store i32 0, ptr %13, align 8
  %14 = getelementptr i8, ptr %3, i32 740
  %15 = load i16, ptr %14, align 4
  %16 = or i16 %15, 14
  %17 = zext i16 %16 to i32
  %18 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %17) #9, !srcloc !9
  tail call void @usleep_range_state(i32 noundef 115, i32 noundef 125, i32 noundef 2) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cdns_i2c_calc_divs(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #7 {
  %5 = load i32, ptr %0, align 4
  %6 = mul i32 %5, 22
  %7 = udiv i32 %1, %6
  %8 = icmp ugt i32 %6, %1
  %9 = icmp ugt i32 %7, 256
  %10 = or i1 %8, %9
  br i1 %10, label %90, label %11

11:                                               ; preds = %4
  %12 = add i32 %1, -1
  %13 = add i32 %12, %6
  %14 = udiv i32 %13, %6
  %15 = icmp ugt i32 %6, %13
  %16 = icmp ugt i32 %14, 64
  %17 = or i1 %15, %16
  br i1 %17, label %27, label %18

18:                                               ; preds = %11
  %19 = add nsw i32 %14, -1
  %20 = mul nuw nsw i32 %14, 22
  %21 = udiv i32 %1, %20
  %22 = icmp ult i32 %5, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = sub i32 %5, %21
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %26, %23, %18, %11
  %28 = phi i32 [ %5, %11 ], [ %5, %18 ], [ %21, %26 ], [ %5, %23 ]
  %29 = phi i32 [ 0, %11 ], [ 0, %18 ], [ %19, %26 ], [ 0, %23 ]
  %30 = phi i32 [ -1, %11 ], [ -1, %18 ], [ %24, %26 ], [ -1, %23 ]
  %31 = mul i32 %5, 44
  %32 = add i32 %12, %31
  %33 = udiv i32 %32, %31
  %34 = icmp ugt i32 %31, %32
  %35 = icmp ugt i32 %33, 64
  %36 = or i1 %34, %35
  br i1 %36, label %46, label %37

37:                                               ; preds = %27
  %38 = add nsw i32 %33, -1
  %39 = mul nuw nsw i32 %33, 44
  %40 = udiv i32 %1, %39
  %41 = icmp ult i32 %5, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = sub i32 %5, %40
  %44 = icmp ugt i32 %30, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %45, %42, %37, %27
  %47 = phi i32 [ %28, %27 ], [ %28, %37 ], [ %40, %45 ], [ %28, %42 ]
  %48 = phi i32 [ 0, %27 ], [ 0, %37 ], [ 1, %45 ], [ 0, %42 ]
  %49 = phi i32 [ %29, %27 ], [ %29, %37 ], [ %38, %45 ], [ %29, %42 ]
  %50 = phi i32 [ %30, %27 ], [ %30, %37 ], [ %43, %45 ], [ %30, %42 ]
  %51 = mul i32 %5, 66
  %52 = add i32 %12, %51
  %53 = udiv i32 %52, %51
  %54 = icmp ugt i32 %51, %52
  %55 = icmp ugt i32 %53, 64
  %56 = or i1 %54, %55
  br i1 %56, label %66, label %57

57:                                               ; preds = %46
  %58 = add nsw i32 %53, -1
  %59 = mul nuw nsw i32 %53, 66
  %60 = udiv i32 %1, %59
  %61 = icmp ult i32 %5, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = sub i32 %5, %60
  %64 = icmp ugt i32 %50, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %66

66:                                               ; preds = %65, %62, %57, %46
  %67 = phi i32 [ %47, %46 ], [ %47, %57 ], [ %60, %65 ], [ %47, %62 ]
  %68 = phi i32 [ %48, %46 ], [ %48, %57 ], [ 2, %65 ], [ %48, %62 ]
  %69 = phi i32 [ %49, %46 ], [ %49, %57 ], [ %58, %65 ], [ %49, %62 ]
  %70 = phi i32 [ %50, %46 ], [ %50, %57 ], [ %63, %65 ], [ %50, %62 ]
  %71 = mul i32 %5, 88
  %72 = add i32 %12, %71
  %73 = udiv i32 %72, %71
  %74 = icmp ugt i32 %71, %72
  %75 = icmp ugt i32 %73, 64
  %76 = or i1 %74, %75
  br i1 %76, label %86, label %77

77:                                               ; preds = %66
  %78 = mul nuw nsw i32 %73, 88
  %79 = udiv i32 %1, %78
  %80 = icmp uge i32 %5, %79
  %81 = sub i32 %5, %79
  %82 = icmp ugt i32 %70, %81
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = add nsw i32 %73, -1
  br label %86

86:                                               ; preds = %84, %77, %66
  %87 = phi i32 [ %67, %66 ], [ %67, %77 ], [ %79, %84 ]
  %88 = phi i32 [ %68, %66 ], [ %68, %77 ], [ 3, %84 ]
  %89 = phi i32 [ %69, %66 ], [ %69, %77 ], [ %85, %84 ]
  store i32 %88, ptr %2, align 4
  store i32 %89, ptr %3, align 4
  store i32 %87, ptr %0, align 4
  br label %90

90:                                               ; preds = %86, %4
  %91 = phi i32 [ 0, %86 ], [ -22, %4 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_i2c_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cdns_i2c, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdns_i2c_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cdns_i2c, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_enable(ptr noundef %5) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.14) #10
  br label %16

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.cdns_i2c, ptr %3, i32 0, i32 18
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.cdns_i2c, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #9, !srcloc !9
  %14 = load ptr, ptr %12, align 4
  %15 = getelementptr i8, ptr %14, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 255) #9, !srcloc !9
  br label %16

16:                                               ; preds = %9, %8
  ret i32 %6
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i64 5422891}
!10 = !{i64 5423309}
!11 = !{i64 2147979354}
!12 = !{i64 477664, i64 2147967635, i64 2147967661, i64 2147967708, i64 2147967730, i64 2147967758, i64 2147967778}
!13 = !{i64 464233, i64 464258, i64 464280, i64 464296, i64 464308, i64 464328, i64 464352, i64 464368, i64 464380}
!14 = !{i64 2147979480}
!15 = !{i64 372903, i64 372964}
!16 = !{i64 375920}
