; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-rk3x.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-rk3x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_spec_values = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rk3x_i2c_soc_data = type { i32, ptr }
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
%struct.rk3x_i2c = type { %struct.i2c_adapter, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.i2c_timings, %struct.spinlock, %struct.wait_queue_head, i8, ptr, i8, i32, i8, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.i2c_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.rk3x_i2c_calced_timings = type { i32, i32, i32 }
%struct.clk_notifier_data = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_i2c_rk3x__252_1391_rk3x_i2c_driver_init6 = internal global ptr @rk3x_i2c_driver_init, section ".initcall6.init", align 4
@rk3x_i2c_driver = internal global %struct.platform_driver { ptr @rk3x_i2c_probe, ptr @rk3x_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rk3x_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk3x_i2c_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_rk3x_i2c_driver_exit = internal global ptr @rk3x_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description253 = internal constant [52 x i8] c"i2c_rk3x.description=Rockchip RK3xxx I2C Bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [52 x i8] c"i2c_rk3x.author=Max Schwarz <max.schwarz@online.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [42 x i8] c"i2c_rk3x.file=drivers/i2c/busses/i2c-rk3x\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [24 x i8] c"i2c_rk3x.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"rk3x-i2c\00", align 1
@rk3x_i2c_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rv1108-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rv1108_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3066-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3066_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3188-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3188_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3228-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3228_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_soc_data }, %struct.of_device_id zeroinitializer], align 4
@rk3x_i2c_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @rk3x_i2c_resume, ptr null, ptr @rk3x_i2c_resume, ptr null, ptr @rk3x_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rk3x_i2c_algorithm = internal constant %struct.i2c_algorithm { ptr @rk3x_i2c_xfer, ptr @rk3x_i2c_xfer_polling, ptr null, ptr null, ptr @rk3x_i2c_func, ptr null, ptr null }, align 4
@rk3x_i2c_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"&i2c->wait\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"rockchip,grf\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"rk3x-i2c needs 'rockchip,grf' property\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"rk3x-i2c needs i2cX alias\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Could not write to GRF: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"cannot request IRQ\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Can't get bus clk\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Can't get periph clk\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Can't prepare bus clk: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Can't prepare periph clock: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Unable to register clock notifier\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Can't enable bus clk: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"timeout, ipd: 0x%02x, state: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.17 = private unnamed_addr constant [31 x i8] c"irq in STATE_IDLE, ipd = 0x%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"unexpected irq in START: 0x%x\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"unexpected irq in WRITE: 0x%x\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"unexpected irq in STOP: 0x%x\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"drivers/i2c/busses/i2c-rk3x.c\00", align 1
@rk3x_i2c_v0_calc_timings.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"Conflicting, min_low_div %lu, max_low_div %lu\0A\00", align 1
@standard_mode_spec = internal unnamed_addr constant %struct.i2c_spec_values { i32 4000, i32 4700, i32 4000, i32 4700, i32 3450, i32 250, i32 4000, i32 4700 }, align 4
@fast_mode_spec = internal unnamed_addr constant %struct.i2c_spec_values { i32 600, i32 1300, i32 600, i32 600, i32 900, i32 100, i32 600, i32 1300 }, align 4
@fast_mode_plus_spec = internal unnamed_addr constant %struct.i2c_spec_values { i32 260, i32 500, i32 260, i32 260, i32 400, i32 50, i32 260, i32 500 }, align 4
@rk3x_i2c_adapt_div.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"Could not reach SCL freq %u\00", align 1
@rv1108_soc_data = internal constant %struct.rk3x_i2c_soc_data { i32 -1, ptr @rk3x_i2c_v1_calc_timings }, align 4
@rk3066_soc_data = internal constant %struct.rk3x_i2c_soc_data { i32 340, ptr @rk3x_i2c_v0_calc_timings }, align 4
@rk3188_soc_data = internal constant %struct.rk3x_i2c_soc_data { i32 164, ptr @rk3x_i2c_v0_calc_timings }, align 4
@rk3228_soc_data = internal constant %struct.rk3x_i2c_soc_data { i32 -1, ptr @rk3x_i2c_v0_calc_timings }, align 4
@rk3288_soc_data = internal constant %struct.rk3x_i2c_soc_data { i32 -1, ptr @rk3x_i2c_v0_calc_timings }, align 4
@rk3399_soc_data = internal constant %struct.rk3x_i2c_soc_data { i32 -1, ptr @rk3x_i2c_v1_calc_timings }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__exitcall_rk3x_i2c_driver_exit, ptr @__initcall__kmod_i2c_rk3x__252_1391_rk3x_i2c_driver_init6, ptr @rk3x_i2c_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rk3x_i2c_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rk3x_i2c_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rk3x_i2c_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rk3x_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk3x_i2c_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 768, i32 noundef 3520) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %127, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @of_match_node(ptr noundef nonnull @rk3x_i2c_match, ptr noundef %4) #9
  %9 = getelementptr inbounds %struct.of_device_id, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rk3x_i2c, ptr %5, i32 0, i32 2
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rk3x_i2c, ptr %5, i32 0, i32 7
  tail call void @i2c_parse_fw_timings(ptr noundef %2, ptr noundef %12, i1 noundef zeroext true) #9
  %13 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 12
  %14 = tail call i32 @strlcpy(ptr noundef %13, ptr noundef nonnull @.str, i32 noundef 48) #9
  store ptr null, ptr %5, align 8
  %15 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 2
  store ptr @rk3x_i2c_algorithm, ptr %15, align 8
  %16 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 8
  store i32 3, ptr %16, align 8
  %17 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 9, i32 25
  store ptr %4, ptr %17, align 8
  %18 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 3
  store ptr %5, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 9, i32 1
  store ptr %2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.rk3x_i2c, ptr %5, i32 0, i32 1
  store ptr %2, ptr %20, align 8
  %21 = getelementptr inbounds %struct.rk3x_i2c, ptr %5, i32 0, i32 8
  store i32 0, ptr %21, align 8
  %22 = getelementptr inbounds %struct.rk3x_i2c, ptr %5, i32 0, i32 9
  tail call void @__init_waitqueue_head(ptr noundef %22, ptr noundef nonnull @.str.1, ptr noundef nonnull @rk3x_i2c_probe.__key) #9
  %23 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #9
  %24 = getelementptr inbounds %struct.rk3x_i2c, ptr %5, i32 0, i32 3
  store ptr %23, ptr %24, align 8
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %7
  %27 = ptrtoint ptr %23 to i32
  br label %127

28:                                               ; preds = %7
  %29 = tail call i32 @of_alias_get_id(ptr noundef %4, ptr noundef nonnull @.str.2) #9
  %30 = load ptr, ptr %11, align 4
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %4, ptr noundef nonnull @.str.3) #9
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #10
  %37 = ptrtoint ptr %34 to i32
  br label %127

38:                                               ; preds = %33
  %39 = icmp slt i32 %29, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #10
  br label %127

41:                                               ; preds = %38
  %42 = shl i32 134219776, %29
  %43 = load ptr, ptr %11, align 4
  %44 = load i32, ptr %43, align 4
  %45 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef %44, i32 noundef %42) #9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = load ptr, ptr %20, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.6, i32 noundef %45) #10
  br label %127

49:                                               ; preds = %41, %28
  %50 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %127, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load ptr, ptr %2, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = phi ptr [ %57, %56 ], [ %54, %52 ]
  %60 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %50, ptr noundef nonnull @rk3x_i2c_irq, ptr noundef null, i32 noundef 0, ptr noundef %59, ptr noundef nonnull %5) #9
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #10
  br label %127

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %64, align 8
  %65 = load ptr, ptr %11, align 4
  %66 = getelementptr inbounds %struct.rk3x_i2c_soc_data, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, @rk3x_i2c_v0_calc_timings
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #9
  %71 = getelementptr inbounds %struct.rk3x_i2c, ptr %5, i32 0, i32 4
  store ptr %70, ptr %71, align 4
  br label %77

72:                                               ; preds = %63
  %73 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.2) #9
  %74 = getelementptr inbounds %struct.rk3x_i2c, ptr %5, i32 0, i32 4
  store ptr %73, ptr %74, align 4
  %75 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.8) #9
  %76 = load ptr, ptr %74, align 4
  br label %77

77:                                               ; preds = %72, %69
  %78 = phi ptr [ %70, %69 ], [ %76, %72 ]
  %79 = phi ptr [ %70, %69 ], [ %75, %72 ]
  %80 = getelementptr inbounds %struct.rk3x_i2c, ptr %5, i32 0, i32 5
  store ptr %79, ptr %80, align 8
  %81 = getelementptr inbounds %struct.rk3x_i2c, ptr %5, i32 0, i32 4
  %82 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = ptrtoint ptr %78 to i32
  %85 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %84, ptr noundef nonnull @.str.9) #9
  br label %127

86:                                               ; preds = %77
  %87 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = ptrtoint ptr %79 to i32
  %90 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %89, ptr noundef nonnull @.str.10) #9
  br label %127

91:                                               ; preds = %86
  %92 = tail call i32 @clk_prepare(ptr noundef %78) #9
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %92) #10
  br label %127

95:                                               ; preds = %91
  %96 = load ptr, ptr %80, align 8
  %97 = tail call i32 @clk_prepare(ptr noundef %96) #9
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %97) #10
  br label %124

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.rk3x_i2c, ptr %5, i32 0, i32 6
  store ptr @rk3x_i2c_clk_notifier_cb, ptr %101, align 4
  %102 = load ptr, ptr %81, align 4
  %103 = tail call i32 @clk_notifier_register(ptr noundef %102, ptr noundef %101) #9
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.13) #10
  br label %121

106:                                              ; preds = %100
  %107 = load ptr, ptr %81, align 4
  %108 = tail call i32 @clk_enable(ptr noundef %107) #9
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %108) #10
  br label %117

111:                                              ; preds = %106
  %112 = load ptr, ptr %81, align 4
  %113 = tail call i32 @clk_get_rate(ptr noundef %112) #9
  tail call fastcc void @rk3x_i2c_adapt_div(ptr noundef nonnull %5, i32 noundef %113)
  %114 = load ptr, ptr %81, align 4
  tail call void @clk_disable(ptr noundef %114) #9
  %115 = tail call i32 @i2c_add_adapter(ptr noundef nonnull %5) #9
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %111, %110
  %118 = phi i32 [ %108, %110 ], [ %115, %111 ]
  %119 = load ptr, ptr %81, align 4
  %120 = tail call i32 @clk_notifier_unregister(ptr noundef %119, ptr noundef %101) #9
  br label %121

121:                                              ; preds = %117, %105
  %122 = phi i32 [ %103, %105 ], [ %118, %117 ]
  %123 = load ptr, ptr %80, align 8
  tail call void @clk_unprepare(ptr noundef %123) #9
  br label %124

124:                                              ; preds = %121, %99
  %125 = phi i32 [ %97, %99 ], [ %122, %121 ]
  %126 = load ptr, ptr %81, align 4
  tail call void @clk_unprepare(ptr noundef %126) #9
  br label %127

127:                                              ; preds = %124, %111, %94, %88, %83, %62, %49, %47, %40, %36, %26, %1
  %128 = phi i32 [ %27, %26 ], [ %60, %62 ], [ %85, %83 ], [ %90, %88 ], [ %92, %94 ], [ %125, %124 ], [ -12, %1 ], [ %50, %49 ], [ 0, %111 ], [ %37, %36 ], [ -22, %40 ], [ %45, %47 ]
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk3x_i2c_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @i2c_del_adapter(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.rk3x_i2c, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rk3x_i2c, ptr %3, i32 0, i32 6
  %7 = tail call i32 @clk_notifier_unregister(ptr noundef %5, ptr noundef %6) #9
  %8 = getelementptr inbounds %struct.rk3x_i2c, ptr %3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  tail call void @clk_unprepare(ptr noundef %9) #9
  %10 = load ptr, ptr %4, align 4
  tail call void @clk_unprepare(ptr noundef %10) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_parse_fw_timings(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk3x_i2c_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 28
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %8 = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 15
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.17, i32 noundef %7) #10
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr i8, ptr %14, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 127) #9, !srcloc !11
  br label %189

16:                                               ; preds = %2
  %17 = and i32 %7, -4
  %18 = and i32 %7, 64
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr i8, ptr %21, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 64) #9, !srcloc !11
  %23 = and i32 %7, -68
  %24 = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  %27 = load i16, ptr %26, align 2
  %28 = and i16 %27, 4096
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  tail call fastcc void @rk3x_i2c_stop(ptr noundef %1, i32 noundef -6)
  br label %31

31:                                               ; preds = %30, %20, %16
  %32 = phi i32 [ %23, %20 ], [ %23, %30 ], [ %17, %16 ]
  %33 = and i32 %32, 124
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %189, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %8, align 4
  switch i32 %36, label %189 [
    i32 1, label %37
    i32 3, label %82
    i32 2, label %105
    i32 4, label %172
  ]

37:                                               ; preds = %35
  %38 = and i32 %32, 16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  tail call fastcc void @rk3x_i2c_stop(ptr noundef %1, i32 noundef -5) #9
  %41 = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.18, i32 noundef %32) #10
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr i8, ptr %43, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 127) #9, !srcloc !11
  br label %189

45:                                               ; preds = %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %46 = load ptr, ptr %4, align 8
  %47 = getelementptr i8, ptr %46, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 16) #9, !srcloc !11
  %48 = load ptr, ptr %4, align 8
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %50 = and i32 %49, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %51 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %50) #9, !srcloc !11
  %52 = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 13
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  %55 = load ptr, ptr %4, align 8
  %56 = getelementptr i8, ptr %55, i32 24
  br i1 %54, label %57, label %58

57:                                               ; preds = %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 68) #9, !srcloc !11
  store i32 3, ptr %8, align 4
  tail call fastcc void @rk3x_i2c_fill_transmit_buf(ptr noundef %1) #9
  br label %189

58:                                               ; preds = %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 72) #9, !srcloc !11
  store i32 2, ptr %8, align 4
  %59 = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 11
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %60, i32 0, i32 2
  %62 = load i16, ptr %61, align 4
  %63 = zext i16 %62 to i32
  %64 = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 16
  %65 = load i32, ptr %64, align 8
  %66 = sub i32 %63, %65
  %67 = load ptr, ptr %4, align 8
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %69 = icmp ugt i32 %66, 32
  %70 = and i32 %68, -33
  %71 = tail call i32 @llvm.umin.i32(i32 %66, i32 32) #9
  %72 = select i1 %69, i32 0, i32 32
  %73 = or i32 %70, %72
  %74 = load i32, ptr %64, align 8
  %75 = icmp eq i32 %74, 0
  %76 = and i32 %73, -7
  %77 = or i32 %76, 4
  %78 = select i1 %75, i32 %73, i32 %77
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %79 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %78) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %80 = load ptr, ptr %4, align 8
  %81 = getelementptr i8, ptr %80, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %71) #9, !srcloc !11
  br label %189

82:                                               ; preds = %35
  %83 = and i32 %32, 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  tail call fastcc void @rk3x_i2c_stop(ptr noundef %1, i32 noundef -5) #9
  %86 = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 1
  %87 = load ptr, ptr %86, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.19, i32 noundef %32) #10
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %88 = load ptr, ptr %4, align 8
  %89 = getelementptr i8, ptr %88, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 127) #9, !srcloc !11
  br label %189

90:                                               ; preds = %82
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %91 = load ptr, ptr %4, align 8
  %92 = getelementptr i8, ptr %91, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 4) #9, !srcloc !11
  %93 = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 16
  %94 = load i32, ptr %93, align 8
  %95 = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 11
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %96, i32 0, i32 2
  %98 = load i16, ptr %97, align 4
  %99 = zext i16 %98 to i32
  %100 = icmp eq i32 %94, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %90
  %102 = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 17
  %103 = load i32, ptr %102, align 4
  tail call fastcc void @rk3x_i2c_stop(ptr noundef %1, i32 noundef %103) #9
  br label %189

104:                                              ; preds = %90
  tail call fastcc void @rk3x_i2c_fill_transmit_buf(ptr noundef %1) #9
  br label %189

105:                                              ; preds = %35
  %106 = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 11
  %107 = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 16
  %108 = and i32 %32, 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %189, label %110

110:                                              ; preds = %105
  %111 = load ptr, ptr %106, align 4
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %111, i32 0, i32 2
  %113 = load i16, ptr %112, align 4
  %114 = zext i16 %113 to i32
  %115 = load i32, ptr %107, align 8
  %116 = sub i32 %114, %115
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %117 = load ptr, ptr %4, align 8
  %118 = getelementptr i8, ptr %117, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 24) #9, !srcloc !11
  %119 = tail call i32 @llvm.umin.i32(i32 %116, i32 32) #9
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %145, label %121

121:                                              ; preds = %132, %110
  %122 = phi i32 [ %133, %132 ], [ 0, %110 ]
  %123 = phi i32 [ %143, %132 ], [ 0, %110 ]
  %124 = and i32 %123, 3
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = add nuw nsw i32 %123, 512
  %128 = and i32 %127, 2147483644
  %129 = load ptr, ptr %4, align 8
  %130 = getelementptr i8, ptr %129, i32 %128
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  br label %132

132:                                              ; preds = %126, %121
  %133 = phi i32 [ %131, %126 ], [ %122, %121 ]
  %134 = shl nuw nsw i32 %124, 3
  %135 = lshr i32 %133, %134
  %136 = trunc i32 %135 to i8
  %137 = load ptr, ptr %106, align 4
  %138 = getelementptr inbounds %struct.i2c_msg, ptr %137, i32 0, i32 3
  %139 = load ptr, ptr %138, align 4
  %140 = load i32, ptr %107, align 8
  %141 = add i32 %140, 1
  store i32 %141, ptr %107, align 8
  %142 = getelementptr i8, ptr %139, i32 %140
  store i8 %136, ptr %142, align 1
  %143 = add nuw nsw i32 %123, 1
  %144 = icmp eq i32 %143, %119
  br i1 %144, label %145, label %121

145:                                              ; preds = %132, %110
  %146 = load i32, ptr %107, align 8
  %147 = load ptr, ptr %106, align 4
  %148 = getelementptr inbounds %struct.i2c_msg, ptr %147, i32 0, i32 2
  %149 = load i16, ptr %148, align 4
  %150 = zext i16 %149 to i32
  %151 = icmp eq i32 %146, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %145
  %153 = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 17
  %154 = load i32, ptr %153, align 4
  tail call fastcc void @rk3x_i2c_stop(ptr noundef %1, i32 noundef %154) #9
  br label %189

155:                                              ; preds = %145
  %156 = sub i32 %150, %146
  %157 = load ptr, ptr %4, align 8
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %159 = icmp ugt i32 %156, 32
  %160 = and i32 %158, -33
  %161 = tail call i32 @llvm.umin.i32(i32 %156, i32 32) #9
  %162 = select i1 %159, i32 0, i32 32
  %163 = or i32 %160, %162
  %164 = load i32, ptr %107, align 8
  %165 = icmp eq i32 %164, 0
  %166 = and i32 %163, -7
  %167 = or i32 %166, 4
  %168 = select i1 %165, i32 %163, i32 %167
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %169 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 %168) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %170 = load ptr, ptr %4, align 8
  %171 = getelementptr i8, ptr %170, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 %161) #9, !srcloc !11
  br label %189

172:                                              ; preds = %35
  %173 = and i32 %32, 32
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %172
  tail call fastcc void @rk3x_i2c_stop(ptr noundef %1, i32 noundef -5) #9
  %176 = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 1
  %177 = load ptr, ptr %176, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %177, ptr noundef nonnull @.str.20, i32 noundef %32) #10
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %178 = load ptr, ptr %4, align 8
  %179 = getelementptr i8, ptr %178, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 127) #9, !srcloc !11
  br label %189

180:                                              ; preds = %172
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %181 = load ptr, ptr %4, align 8
  %182 = getelementptr i8, ptr %181, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 32) #9, !srcloc !11
  %183 = load ptr, ptr %4, align 8
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %183) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %185 = and i32 %184, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %186 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %185) #9, !srcloc !11
  %187 = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 10
  store i8 0, ptr %187, align 8
  store i32 0, ptr %8, align 4
  %188 = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %188, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %189

189:                                              ; preds = %180, %175, %155, %152, %105, %104, %101, %85, %58, %57, %40, %35, %31, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %190 = load i16, ptr %3, align 4
  %191 = add i16 %190, 1
  store i16 %191, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk3x_i2c_v0_calc_timings(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #2 {
  %4 = load i32, ptr %1, align 4
  %5 = icmp ugt i32 %4, 400000
  br i1 %5, label %6, label %7, !prof !16

6:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 582, i32 noundef 9, ptr noundef null) #9
  store i32 400000, ptr %1, align 4
  br label %14

7:                                                ; preds = %3
  %8 = icmp ult i32 %4, 1000
  br i1 %8, label %9, label %10, !prof !16

9:                                                ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 586, i32 noundef 9, ptr noundef null) #9
  store i32 1000, ptr %1, align 4
  br label %12

10:                                               ; preds = %7
  %11 = icmp ult i32 %4, 100001
  br i1 %11, label %12, label %14

12:                                               ; preds = %10, %9
  %13 = phi i32 [ 1000, %9 ], [ %4, %10 ]
  br label %14

14:                                               ; preds = %12, %10, %6
  %15 = phi i32 [ %13, %12 ], [ %4, %10 ], [ 400000, %6 ]
  %16 = phi ptr [ @standard_mode_spec, %12 ], [ @fast_mode_spec, %10 ], [ @fast_mode_spec, %6 ]
  %17 = getelementptr inbounds %struct.i2c_timings, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.i2c_spec_values, ptr %16, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  %22 = getelementptr inbounds %struct.i2c_spec_values, ptr %16, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %18
  %25 = mul i32 %24, 1000
  %26 = add i32 %25, 874
  %27 = udiv i32 %26, 875
  %28 = tail call i32 @llvm.umax.i32(i32 %21, i32 %27)
  %29 = getelementptr inbounds %struct.i2c_timings, ptr %1, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %20, 1
  %32 = add i32 %31, %30
  %33 = add i32 %32, %24
  %34 = lshr i32 %33, 1
  %35 = tail call i32 @llvm.umax.i32(i32 %28, i32 %34)
  %36 = getelementptr inbounds %struct.i2c_timings, ptr %1, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.i2c_spec_values, ptr %16, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, %37
  %41 = getelementptr inbounds %struct.i2c_spec_values, ptr %16, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 %42, 1
  %44 = add i32 %43, -50
  %45 = add i32 %35, %40
  %46 = add i32 %0, 999
  %47 = udiv i32 %46, 1000
  %48 = udiv i32 %15, 1000
  %49 = shl nuw nsw i32 %48, 3
  %50 = add nsw i32 %47, -1
  %51 = add nsw i32 %50, %49
  %52 = udiv i32 %51, %49
  %53 = mul i32 %40, %47
  %54 = add i32 %53, 7999999
  %55 = udiv i32 %54, 8000000
  %56 = mul i32 %35, %47
  %57 = add i32 %56, 7999999
  %58 = udiv i32 %57, 8000000
  %59 = add nuw nsw i32 %58, %55
  %60 = mul i32 %44, %47
  %61 = udiv i32 %60, 8000000
  %62 = icmp ugt i32 %55, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %14
  %64 = load i1, ptr @rk3x_i2c_v0_calc_timings.__already_done, align 1
  br i1 %64, label %66, label %65, !prof !17

65:                                               ; preds = %63
  store i1 true, ptr @rk3x_i2c_v0_calc_timings.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 646, i32 noundef 9, ptr noundef nonnull @.str.22, i32 noundef %55, i32 noundef %61) #9
  br label %66

66:                                               ; preds = %65, %63, %14
  %67 = phi i32 [ %61, %14 ], [ %55, %65 ], [ %55, %63 ]
  %68 = icmp ult i32 %52, %59
  br i1 %68, label %79, label %69

69:                                               ; preds = %66
  %70 = sub nsw i32 %52, %59
  %71 = mul i32 %45, %49
  %72 = add i32 %53, -1
  %73 = add i32 %72, %71
  %74 = udiv i32 %73, %71
  %75 = tail call i32 @llvm.umin.i32(i32 %74, i32 %67)
  %76 = add nsw i32 %70, %55
  %77 = tail call i32 @llvm.umin.i32(i32 %75, i32 %76)
  %78 = sub nsw i32 %52, %77
  br label %79

79:                                               ; preds = %69, %66
  %80 = phi i32 [ %77, %69 ], [ %55, %66 ]
  %81 = phi i32 [ %78, %69 ], [ %58, %66 ]
  %82 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, ptr %2, i32 0, i32 1
  %83 = add nsw i32 %80, -1
  store i32 %83, ptr %2, align 4
  %84 = add nsw i32 %81, -1
  store i32 %84, ptr %82, align 4
  %85 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, ptr %2, i32 0, i32 2
  store i32 0, ptr %85, align 4
  %86 = icmp ugt i32 %83, 65535
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  store i32 65535, ptr %2, align 4
  br label %88

88:                                               ; preds = %87, %79
  %89 = phi i32 [ -22, %87 ], [ 0, %79 ]
  %90 = icmp ugt i32 %84, 65535
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 65535, ptr %82, align 4
  br label %92

92:                                               ; preds = %91, %88
  %93 = phi i32 [ -22, %91 ], [ %89, %88 ]
  ret i32 %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk3x_i2c_clk_notifier_cb(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca %struct.rk3x_i2c_calced_timings, align 4
  %5 = getelementptr i8, ptr %0, i32 -676
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false), !annotation !18
  switch i32 %1, label %36 [
    i32 1, label %6
    i32 2, label %22
    i32 4, label %29
  ]

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 -16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rk3x_i2c_soc_data, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %0, i32 12
  %14 = call i32 %10(i32 noundef %12, ptr noundef %13, ptr noundef nonnull %4) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %6
  %17 = load i32, ptr %11, align 4
  %18 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %17, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  call fastcc void @rk3x_i2c_adapt_div(ptr noundef %5, i32 noundef %17)
  br label %36

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  tail call fastcc void @rk3x_i2c_adapt_div(ptr noundef %5, i32 noundef %24)
  br label %36

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp ugt i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  tail call fastcc void @rk3x_i2c_adapt_div(ptr noundef %5, i32 noundef %33)
  br label %36

36:                                               ; preds = %35, %29, %28, %22, %21, %16, %6, %3
  %37 = phi i32 [ 32769, %6 ], [ 1, %21 ], [ 1, %16 ], [ 1, %28 ], [ 1, %22 ], [ 1, %35 ], [ 1, %29 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rk3x_i2c_adapt_div(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.rk3x_i2c_calced_timings, align 4
  %4 = getelementptr inbounds %struct.rk3x_i2c, ptr %0, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !18
  %5 = getelementptr inbounds %struct.rk3x_i2c, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rk3x_i2c_soc_data, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 %8(i32 noundef %1, ptr noundef %4, ptr noundef nonnull %3) #9
  %10 = icmp ne i32 %9, 0
  %11 = load i1, ptr @rk3x_i2c_adapt_div.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %16, !prof !16

14:                                               ; preds = %2
  store i1 true, ptr @rk3x_i2c_adapt_div.__already_done, align 1
  %15 = load i32, ptr %4, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 882, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef %15) #9
  br label %16

16:                                               ; preds = %14, %2
  %17 = getelementptr inbounds %struct.rk3x_i2c, ptr %0, i32 0, i32 5
  %18 = load ptr, ptr %17, align 8
  %19 = call i32 @clk_enable(ptr noundef %18) #9
  %20 = getelementptr inbounds %struct.rk3x_i2c, ptr %0, i32 0, i32 8
  %21 = call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #9
  %22 = getelementptr inbounds %struct.rk3x_i2c, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %25 = and i32 %24, -65281
  %26 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, ptr %3, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %27, %25
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  %29 = load ptr, ptr %22, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %28) #9, !srcloc !11
  %30 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, ptr %3, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = shl i32 %31, 16
  %33 = load i32, ptr %3, align 4
  %34 = and i32 %33, 65535
  %35 = or i32 %34, %32
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  %36 = load ptr, ptr %22, align 8
  %37 = getelementptr i8, ptr %36, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #9, !srcloc !11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #9
  %38 = load ptr, ptr %17, align 8
  call void @clk_disable(ptr noundef %38) #9
  %39 = load i32, ptr %3, align 4
  %40 = zext i32 %39 to i64
  %41 = mul i64 %40, 8000000000
  %42 = add i64 %41, 8000000000
  %43 = icmp ult i64 %42, 4294967296
  br i1 %43, label %46, label %44, !prof !17

44:                                               ; preds = %16
  %45 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %42) #11, !srcloc !19
  br label %46

46:                                               ; preds = %44, %16
  %47 = load i32, ptr %30, align 4
  %48 = zext i32 %47 to i64
  %49 = mul i64 %48, 8000000000
  %50 = add i64 %49, 8000000000
  %51 = icmp ult i64 %50, 4294967296
  br i1 %51, label %54, label %52, !prof !17

52:                                               ; preds = %46
  %53 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %50) #11, !srcloc !19
  br label %54

54:                                               ; preds = %52, %46
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk3x_i2c_xfer(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = tail call fastcc i32 @rk3x_i2c_xfer_common(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk3x_i2c_xfer_polling(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = tail call fastcc i32 @rk3x_i2c_xfer_common(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true)
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @rk3x_i2c_func(ptr nocapture noundef readnone %0) #6 {
  ret i32 251592717
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rk3x_i2c_xfer_common(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rk3x_i2c, ptr %7, i32 0, i32 8
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #9
  %10 = getelementptr inbounds %struct.rk3x_i2c, ptr %7, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_enable(ptr noundef %11) #9
  %13 = getelementptr inbounds %struct.rk3x_i2c, ptr %7, i32 0, i32 5
  %14 = load ptr, ptr %13, align 8
  %15 = tail call i32 @clk_enable(ptr noundef %14) #9
  %16 = getelementptr inbounds %struct.rk3x_i2c, ptr %7, i32 0, i32 14
  store i8 0, ptr %16, align 8
  %17 = icmp sgt i32 %2, 0
  br i1 %17, label %18, label %189

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.rk3x_i2c, ptr %7, i32 0, i32 11
  %20 = getelementptr inbounds %struct.rk3x_i2c, ptr %7, i32 0, i32 13
  %21 = getelementptr inbounds %struct.rk3x_i2c, ptr %7, i32 0, i32 3
  %22 = getelementptr inbounds %struct.rk3x_i2c, ptr %7, i32 0, i32 12
  %23 = getelementptr inbounds %struct.rk3x_i2c, ptr %7, i32 0, i32 10
  %24 = getelementptr inbounds %struct.rk3x_i2c, ptr %7, i32 0, i32 15
  %25 = getelementptr inbounds %struct.rk3x_i2c, ptr %7, i32 0, i32 16
  %26 = getelementptr inbounds %struct.rk3x_i2c, ptr %7, i32 0, i32 17
  %27 = getelementptr inbounds %struct.rk3x_i2c, ptr %7, i32 0, i32 9
  br label %28

28:                                               ; preds = %181, %18
  %29 = phi i32 [ %9, %18 ], [ %182, %181 ]
  %30 = phi i32 [ 0, %18 ], [ %103, %181 ]
  %31 = getelementptr %struct.i2c_msg, ptr %1, i32 %30
  %32 = sub i32 %2, %30
  %33 = load i16, ptr %31, align 4
  %34 = shl i16 %33, 1
  %35 = and i16 %34, 254
  %36 = zext i16 %35 to i32
  %37 = icmp sgt i32 %32, 1
  br i1 %37, label %38, label %84

38:                                               ; preds = %28
  %39 = getelementptr %struct.i2c_msg, ptr %1, i32 %30, i32 2
  %40 = load i16, ptr %39, align 4
  %41 = icmp ult i16 %40, 4
  br i1 %41, label %42, label %84

42:                                               ; preds = %38
  %43 = getelementptr %struct.i2c_msg, ptr %1, i32 %30, i32 1
  %44 = load i16, ptr %43, align 2
  %45 = and i16 %44, 1
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %84

47:                                               ; preds = %42
  %48 = getelementptr %struct.i2c_msg, ptr %31, i32 1
  %49 = getelementptr %struct.i2c_msg, ptr %31, i32 1, i32 1
  %50 = load i16, ptr %49, align 2
  %51 = and i16 %50, 1
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %84, label %53

53:                                               ; preds = %47
  %54 = icmp eq i16 %40, 0
  br i1 %54, label %77, label %55

55:                                               ; preds = %53
  %56 = getelementptr %struct.i2c_msg, ptr %1, i32 %30, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = or i32 %59, 16777216
  %61 = icmp eq i16 %40, 1
  br i1 %61, label %77, label %62

62:                                               ; preds = %55
  %63 = getelementptr i8, ptr %57, i32 1
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 %65, 8
  %67 = or i32 %66, %59
  %68 = or i32 %67, 50331648
  %69 = icmp eq i16 %40, 2
  br i1 %69, label %77, label %70

70:                                               ; preds = %62
  %71 = getelementptr i8, ptr %57, i32 2
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 16
  %75 = or i32 %67, %74
  %76 = or i32 %75, 117440512
  br label %77

77:                                               ; preds = %70, %62, %55, %53
  %78 = phi i32 [ 0, %53 ], [ %60, %55 ], [ %68, %62 ], [ %76, %70 ]
  store ptr %48, ptr %19, align 4
  store i32 1, ptr %20, align 4
  %79 = or i32 %36, 16777216
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  %80 = load ptr, ptr %21, align 8
  %81 = getelementptr i8, ptr %80, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #9, !srcloc !11
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  %82 = load ptr, ptr %21, align 8
  %83 = getelementptr i8, ptr %82, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %78) #9, !srcloc !11
  br label %97

84:                                               ; preds = %47, %42, %38, %28
  %85 = getelementptr %struct.i2c_msg, ptr %1, i32 %30, i32 1
  %86 = load i16, ptr %85, align 2
  %87 = and i16 %86, 1
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %84
  store i32 1, ptr %20, align 4
  %90 = or i32 %36, 16777217
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  %91 = load ptr, ptr %21, align 8
  %92 = getelementptr i8, ptr %91, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #9, !srcloc !11
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  %93 = load ptr, ptr %21, align 8
  %94 = getelementptr i8, ptr %93, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 0) #9, !srcloc !11
  br label %96

95:                                               ; preds = %84
  store i32 0, ptr %20, align 4
  br label %96

96:                                               ; preds = %95, %89
  store ptr %31, ptr %19, align 4
  br label %97

97:                                               ; preds = %96, %77
  %98 = phi i32 [ 1, %96 ], [ 2, %77 ]
  %99 = load i16, ptr %31, align 4
  %100 = trunc i16 %99 to i8
  store i8 %100, ptr %22, align 8
  store i8 1, ptr %23, align 8
  store i32 1, ptr %24, align 4
  store i32 0, ptr %25, align 8
  store i32 0, ptr %26, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  %101 = load ptr, ptr %21, align 8
  %102 = getelementptr i8, ptr %101, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 127) #9, !srcloc !11
  %103 = add i32 %98, %30
  %104 = icmp slt i32 %103, %2
  br i1 %104, label %106, label %105

105:                                              ; preds = %97
  store i8 1, ptr %16, align 8
  br label %106

106:                                              ; preds = %105, %97
  call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %29) #9
  %107 = load ptr, ptr %21, align 8
  %108 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %109 = and i32 %108, 65280
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  %110 = load ptr, ptr %21, align 8
  %111 = getelementptr i8, ptr %110, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 16) #9, !srcloc !11
  %112 = load i32, ptr %20, align 4
  %113 = shl i32 %112, 1
  %114 = or i32 %113, %109
  %115 = load ptr, ptr %19, align 4
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %115, i32 0, i32 1
  %117 = load i16, ptr %116, align 2
  %118 = and i16 %117, 4096
  %119 = icmp eq i16 %118, 0
  %120 = select i1 %119, i32 73, i32 9
  %121 = or i32 %114, %120
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  %122 = load ptr, ptr %21, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %121) #9, !srcloc !11
  br i1 %3, label %144, label %123

123:                                              ; preds = %106
  %124 = load i8, ptr %23, align 8, !range !20
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %161, label %126

126:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !18
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #9
  %127 = call i32 @prepare_to_wait_event(ptr noundef %27, ptr noundef nonnull %5, i32 noundef 2) #9
  %128 = load i8, ptr %23, align 8, !range !20
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %142, label %130

130:                                              ; preds = %130, %126
  %131 = phi i32 [ %139, %130 ], [ 100, %126 ]
  %132 = call i32 @schedule_timeout(i32 noundef %131) #9
  %133 = call i32 @prepare_to_wait_event(ptr noundef %27, ptr noundef nonnull %5, i32 noundef 2) #9
  %134 = load i8, ptr %23, align 8, !range !20
  %135 = icmp ne i8 %134, 0
  %136 = xor i1 %135, true
  %137 = icmp ne i32 %132, 0
  %138 = select i1 %135, i1 true, i1 %137
  %139 = select i1 %138, i32 %132, i32 1
  %140 = icmp eq i32 %139, 0
  %141 = select i1 %136, i1 true, i1 %140
  br i1 %141, label %142, label %130

142:                                              ; preds = %130, %126
  %143 = phi i32 [ 100, %126 ], [ %139, %130 ]
  call void @finish_wait(ptr noundef %27, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  br label %163

144:                                              ; preds = %106
  %145 = call i64 @ktime_get() #9
  %146 = add i64 %145, 1000000000
  %147 = load volatile i8, ptr %23, align 8, !range !20
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %161, label %149

149:                                              ; preds = %156, %144
  %150 = call i64 @ktime_get() #9
  %151 = icmp slt i64 %150, %146
  br i1 %151, label %156, label %152

152:                                              ; preds = %149
  %153 = load i8, ptr %23, align 8, !range !20
  %154 = xor i8 %153, 1
  %155 = zext i8 %154 to i32
  br label %163

156:                                              ; preds = %149
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %157(i32 noundef 1073740) #9
  %158 = call i32 @rk3x_i2c_irq(i32 noundef 0, ptr noundef %7) #9
  %159 = load volatile i8, ptr %23, align 8, !range !20
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %149

161:                                              ; preds = %156, %144, %123
  %162 = call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #9
  br label %181

163:                                              ; preds = %152, %142
  %164 = phi i32 [ %143, %142 ], [ %155, %152 ]
  %165 = call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #9
  %166 = icmp eq i32 %164, 0
  br i1 %166, label %167, label %181

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.rk3x_i2c, ptr %7, i32 0, i32 1
  %169 = load ptr, ptr %168, align 8
  %170 = load ptr, ptr %21, align 8
  %171 = getelementptr i8, ptr %170, i32 28
  %172 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %173 = load i32, ptr %24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %169, ptr noundef nonnull @.str.16, i32 noundef %172, i32 noundef %173) #10
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  %174 = load ptr, ptr %21, align 8
  %175 = getelementptr i8, ptr %174, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 0) #9, !srcloc !11
  %176 = load ptr, ptr %21, align 8
  %177 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %176) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %178 = and i32 %177, 65280
  %179 = or i32 %178, 17
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  call void @arm_heavy_mb() #9
  %180 = load ptr, ptr %21, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %180, i32 %179) #9, !srcloc !11
  store i32 0, ptr %24, align 4
  br label %189

181:                                              ; preds = %163, %161
  %182 = phi i32 [ %162, %161 ], [ %165, %163 ]
  %183 = load i32, ptr %26, align 4
  %184 = icmp ne i32 %183, 0
  %185 = xor i1 %104, true
  %186 = select i1 %184, i1 true, i1 %185
  br i1 %186, label %187, label %28

187:                                              ; preds = %181
  %188 = select i1 %184, i32 %183, i32 %98
  br label %189

189:                                              ; preds = %187, %167, %4
  %190 = phi i32 [ -110, %167 ], [ 0, %4 ], [ %188, %187 ]
  %191 = phi i32 [ %165, %167 ], [ %9, %4 ], [ %182, %187 ]
  %192 = load ptr, ptr %13, align 8
  call void @clk_disable(ptr noundef %192) #9
  %193 = load ptr, ptr %10, align 4
  call void @clk_disable(ptr noundef %193) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %191) #9
  %194 = icmp slt i32 %190, 0
  %195 = select i1 %194, i32 %190, i32 %2
  ret i32 %195
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rk3x_i2c_stop(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.rk3x_i2c, ptr %0, i32 0, i32 16
  store i32 0, ptr %3, align 8
  %4 = getelementptr inbounds %struct.rk3x_i2c, ptr %0, i32 0, i32 11
  store ptr null, ptr %4, align 4
  %5 = getelementptr inbounds %struct.rk3x_i2c, ptr %0, i32 0, i32 17
  store i32 %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.rk3x_i2c, ptr %0, i32 0, i32 14
  %7 = load i8, ptr %6, align 8, !range !20
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %10 = getelementptr inbounds %struct.rk3x_i2c, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 32) #9, !srcloc !11
  %13 = getelementptr inbounds %struct.rk3x_i2c, ptr %0, i32 0, i32 15
  store i32 4, ptr %13, align 4
  %14 = load ptr, ptr %10, align 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %16 = or i32 %15, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %17 = load ptr, ptr %10, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #9, !srcloc !11
  br label %27

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.rk3x_i2c, ptr %0, i32 0, i32 10
  store i8 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.rk3x_i2c, ptr %0, i32 0, i32 15
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.rk3x_i2c, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %24 = and i32 %23, 65280
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %25 = load ptr, ptr %21, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %24) #9, !srcloc !11
  %26 = getelementptr inbounds %struct.rk3x_i2c, ptr %0, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %26, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %27

27:                                               ; preds = %18, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rk3x_i2c_fill_transmit_buf(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rk3x_i2c, ptr %0, i32 0, i32 16
  %3 = getelementptr inbounds %struct.rk3x_i2c, ptr %0, i32 0, i32 11
  %4 = getelementptr inbounds %struct.rk3x_i2c, ptr %0, i32 0, i32 12
  %5 = getelementptr inbounds %struct.rk3x_i2c, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %3, align 4
  %7 = load i32, ptr %2, align 8
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  %9 = load i16, ptr %8, align 4
  br label %10

10:                                               ; preds = %113, %1
  %11 = phi i16 [ %9, %1 ], [ %123, %113 ]
  %12 = phi i32 [ %7, %1 ], [ %120, %113 ]
  %13 = phi ptr [ %6, %1 ], [ %121, %113 ]
  %14 = phi i32 [ 0, %1 ], [ %114, %113 ]
  %15 = phi i32 [ 0, %1 ], [ %126, %113 ]
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  %18 = add i32 %14, 4
  %19 = zext i16 %11 to i32
  %20 = icmp eq i32 %12, %19
  %21 = icmp ne i32 %14, 0
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %113, label %23

23:                                               ; preds = %10
  %24 = icmp eq i32 %12, 0
  %25 = icmp eq i32 %14, 0
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8, ptr %4, align 8
  %29 = shl i8 %28, 1
  br label %37

30:                                               ; preds = %23
  %31 = load ptr, ptr %17, align 4
  %32 = add i32 %12, 1
  store i32 %32, ptr %2, align 8
  %33 = getelementptr i8, ptr %31, i32 %12
  %34 = load i8, ptr %33, align 1
  %35 = load i16, ptr %16, align 4
  %36 = zext i16 %35 to i32
  br label %37

37:                                               ; preds = %30, %27
  %38 = phi i32 [ %36, %30 ], [ %19, %27 ]
  %39 = phi i32 [ %32, %30 ], [ 0, %27 ]
  %40 = phi i8 [ %34, %30 ], [ %29, %27 ]
  %41 = zext i8 %40 to i32
  %42 = add i32 %14, 1
  %43 = icmp eq i32 %39, %38
  %44 = icmp ne i32 %42, 0
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %113, label %46

46:                                               ; preds = %37
  %47 = icmp eq i32 %39, 0
  %48 = icmp eq i32 %42, 0
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %17, align 4
  %52 = add i32 %39, 1
  store i32 %52, ptr %2, align 8
  %53 = getelementptr i8, ptr %51, i32 %39
  %54 = load i8, ptr %53, align 1
  %55 = load i16, ptr %16, align 4
  %56 = zext i16 %55 to i32
  br label %60

57:                                               ; preds = %46
  %58 = load i8, ptr %4, align 8
  %59 = shl i8 %58, 1
  br label %60

60:                                               ; preds = %57, %50
  %61 = phi i32 [ %38, %57 ], [ %56, %50 ]
  %62 = phi i32 [ 0, %57 ], [ %52, %50 ]
  %63 = phi i8 [ %59, %57 ], [ %54, %50 ]
  %64 = zext i8 %63 to i32
  %65 = shl nuw nsw i32 %64, 8
  %66 = or i32 %65, %41
  %67 = add i32 %14, 2
  %68 = icmp eq i32 %62, %61
  %69 = icmp ne i32 %67, 0
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %113, label %71

71:                                               ; preds = %60
  %72 = icmp eq i32 %62, 0
  %73 = icmp eq i32 %67, 0
  %74 = select i1 %72, i1 %73, i1 false
  br i1 %74, label %82, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %17, align 4
  %77 = add i32 %62, 1
  store i32 %77, ptr %2, align 8
  %78 = getelementptr i8, ptr %76, i32 %62
  %79 = load i8, ptr %78, align 1
  %80 = load i16, ptr %16, align 4
  %81 = zext i16 %80 to i32
  br label %85

82:                                               ; preds = %71
  %83 = load i8, ptr %4, align 8
  %84 = shl i8 %83, 1
  br label %85

85:                                               ; preds = %82, %75
  %86 = phi i32 [ %61, %82 ], [ %81, %75 ]
  %87 = phi i32 [ 0, %82 ], [ %77, %75 ]
  %88 = phi i8 [ %84, %82 ], [ %79, %75 ]
  %89 = zext i8 %88 to i32
  %90 = shl nuw nsw i32 %89, 16
  %91 = or i32 %90, %66
  %92 = add i32 %14, 3
  %93 = icmp eq i32 %87, %86
  %94 = icmp ne i32 %92, 0
  %95 = select i1 %93, i1 %94, i1 false
  br i1 %95, label %113, label %96

96:                                               ; preds = %85
  %97 = icmp eq i32 %87, 0
  %98 = icmp eq i32 %92, 0
  %99 = select i1 %97, i1 %98, i1 false
  br i1 %99, label %105, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr %17, align 4
  %102 = add i32 %87, 1
  store i32 %102, ptr %2, align 8
  %103 = getelementptr i8, ptr %101, i32 %87
  %104 = load i8, ptr %103, align 1
  br label %108

105:                                              ; preds = %96
  %106 = load i8, ptr %4, align 8
  %107 = shl i8 %106, 1
  br label %108

108:                                              ; preds = %105, %100
  %109 = phi i8 [ %107, %105 ], [ %104, %100 ]
  %110 = zext i8 %109 to i32
  %111 = shl nuw i32 %110, 24
  %112 = or i32 %111, %91
  br label %113

113:                                              ; preds = %108, %85, %60, %37, %10
  %114 = phi i32 [ %14, %10 ], [ %42, %37 ], [ %67, %60 ], [ %92, %85 ], [ %18, %108 ]
  %115 = phi i32 [ 0, %10 ], [ %41, %37 ], [ %66, %60 ], [ %91, %85 ], [ %112, %108 ]
  %116 = shl i32 %15, 2
  %117 = add nuw nsw i32 %116, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %118 = load ptr, ptr %5, align 8
  %119 = getelementptr i8, ptr %118, i32 %117
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %115) #9, !srcloc !11
  %120 = load i32, ptr %2, align 8
  %121 = load ptr, ptr %3, align 4
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %121, i32 0, i32 2
  %123 = load i16, ptr %122, align 4
  %124 = zext i16 %123 to i32
  %125 = icmp eq i32 %120, %124
  %126 = add nuw nsw i32 %15, 1
  %127 = icmp eq i32 %126, 8
  %128 = select i1 %125, i1 true, i1 %127
  br i1 %128, label %129, label %10

129:                                              ; preds = %113
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %130 = load ptr, ptr %5, align 8
  %131 = getelementptr i8, ptr %130, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %114) #9, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk3x_i2c_v1_calc_timings(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #2 {
  %4 = load i32, ptr %1, align 4
  %5 = icmp ugt i32 %4, 1000000
  br i1 %5, label %6, label %7, !prof !16

6:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 762, i32 noundef 9, ptr noundef null) #9
  store i32 1000000, ptr %1, align 4
  br label %16

7:                                                ; preds = %3
  %8 = icmp ult i32 %4, 1000
  br i1 %8, label %9, label %10, !prof !16

9:                                                ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 766, i32 noundef 9, ptr noundef null) #9
  store i32 1000, ptr %1, align 4
  br label %14

10:                                               ; preds = %7
  %11 = icmp ult i32 %4, 100001
  %12 = icmp ult i32 %4, 400001
  %13 = select i1 %12, ptr @fast_mode_spec, ptr @fast_mode_plus_spec
  br i1 %11, label %14, label %16

14:                                               ; preds = %10, %9
  %15 = phi i32 [ 1000, %9 ], [ %4, %10 ]
  br label %16

16:                                               ; preds = %14, %10, %6
  %17 = phi i32 [ %15, %14 ], [ 1000000, %6 ], [ %4, %10 ]
  %18 = phi ptr [ @standard_mode_spec, %14 ], [ @fast_mode_plus_spec, %6 ], [ %13, %10 ]
  %19 = add i32 %0, 999
  %20 = udiv i32 %19, 1000
  %21 = udiv i32 %17, 1000
  %22 = shl nuw nsw i32 %21, 3
  %23 = add nsw i32 %20, -1
  %24 = add nsw i32 %23, %22
  %25 = udiv i32 %24, %22
  %26 = getelementptr inbounds %struct.i2c_timings, ptr %1, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.i2c_spec_values, ptr %18, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %27
  %31 = mul i32 %30, %20
  %32 = add i32 %31, 7999999
  %33 = udiv i32 %32, 8000000
  %34 = getelementptr inbounds %struct.i2c_timings, ptr %1, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.i2c_spec_values, ptr %18, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, %35
  %39 = mul i32 %38, %20
  %40 = add i32 %39, 7999999
  %41 = udiv i32 %40, 8000000
  %42 = icmp ult i32 %32, 8000000
  %43 = select i1 %42, i32 2, i32 %33
  %44 = icmp ult i32 %40, 8000000
  %45 = select i1 %44, i32 2, i32 %41
  %46 = add nuw nsw i32 %45, %43
  %47 = icmp ugt i32 %25, %46
  br i1 %47, label %49, label %48

48:                                               ; preds = %16
  store i32 %45, ptr %2, align 4
  br label %58

49:                                               ; preds = %16
  %50 = sub nsw i32 %25, %46
  %51 = mul nsw i32 %50, %45
  %52 = add nsw i32 %46, -1
  %53 = add nsw i32 %52, %51
  %54 = udiv i32 %53, %46
  %55 = add i32 %54, %45
  store i32 %55, ptr %2, align 4
  %56 = add nsw i32 %50, %43
  %57 = sub i32 %56, %54
  br label %58

58:                                               ; preds = %49, %48
  %59 = phi i32 [ %55, %49 ], [ %45, %48 ]
  %60 = phi i32 [ %57, %49 ], [ %43, %48 ]
  %61 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, ptr %2, i32 0, i32 1
  store i32 %60, ptr %61, align 4
  %62 = mul i32 %59, 1000000
  %63 = add nuw nsw i32 %20, 999999
  %64 = getelementptr inbounds %struct.i2c_spec_values, ptr %18, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.i2c_spec_values, ptr %18, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = mul i32 %59, 3000000
  %69 = add i32 %63, %68
  %70 = udiv i32 %69, %20
  %71 = icmp ult i32 %70, %65
  br i1 %71, label %72, label %77

72:                                               ; preds = %58
  %73 = mul i32 %59, 5000000
  %74 = add i32 %63, %73
  %75 = udiv i32 %74, %20
  %76 = icmp ugt i32 %75, %67
  br i1 %76, label %97, label %77

77:                                               ; preds = %72, %58
  %78 = mul i32 %59, 2000000
  %79 = add i32 %63, %78
  %80 = udiv i32 %79, %20
  %81 = icmp ult i32 %80, %65
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = mul i32 %59, 6000000
  %84 = add i32 %63, %83
  %85 = udiv i32 %84, %20
  %86 = icmp ugt i32 %85, %67
  br i1 %86, label %97, label %87

87:                                               ; preds = %82, %77
  %88 = add i32 %63, %62
  %89 = udiv i32 %88, %20
  %90 = icmp ult i32 %89, %65
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = mul i32 %59, 7000000
  %93 = add i32 %63, %92
  %94 = udiv i32 %93, %20
  %95 = icmp ugt i32 %94, %67
  br i1 %95, label %97, label %96

96:                                               ; preds = %91, %87
  br label %97

97:                                               ; preds = %96, %91, %82, %72
  %98 = phi i32 [ 512, %72 ], [ 256, %82 ], [ 0, %91 ], [ -256, %96 ]
  %99 = load i32, ptr %26, align 4
  %100 = getelementptr inbounds %struct.i2c_spec_values, ptr %18, i32 0, i32 3
  %101 = load i32, ptr %100, align 4
  %102 = add i32 %101, %99
  %103 = mul i32 %102, %20
  %104 = mul i32 %60, 8000000
  %105 = add i32 %103, -1000001
  %106 = add i32 %105, %104
  %107 = udiv i32 %106, %104
  %108 = getelementptr inbounds %struct.i2c_spec_values, ptr %18, i32 0, i32 6
  %109 = load i32, ptr %108, align 4
  %110 = add i32 %109, %99
  %111 = mul i32 %110, %20
  %112 = add i32 %104, -1000001
  %113 = add i32 %112, %111
  %114 = udiv i32 %113, %104
  %115 = shl i32 %107, 12
  %116 = add i32 %115, -4096
  %117 = or i32 %116, %98
  %118 = shl i32 %114, 14
  %119 = add i32 %118, -16384
  %120 = or i32 %117, %119
  %121 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, ptr %2, i32 0, i32 2
  store i32 %120, ptr %121, align 4
  %122 = add i32 %59, -1
  store i32 %122, ptr %2, align 4
  %123 = add i32 %60, -1
  store i32 %123, ptr %61, align 4
  %124 = icmp ugt i32 %122, 65535
  br i1 %124, label %125, label %126

125:                                              ; preds = %97
  store i32 65535, ptr %2, align 4
  br label %126

126:                                              ; preds = %125, %97
  %127 = phi i32 [ -22, %125 ], [ 0, %97 ]
  %128 = icmp ugt i32 %123, 65535
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 65535, ptr %61, align 4
  br label %130

130:                                              ; preds = %129, %126
  %131 = phi i32 [ -22, %129 ], [ %127, %126 ]
  ret i32 %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk3x_i2c_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rk3x_i2c, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_get_rate(ptr noundef %5) #9
  tail call fastcc void @rk3x_i2c_adapt_div(ptr noundef %3, i32 noundef %6)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

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
!8 = !{i64 5381842}
!9 = !{i64 2154204113}
!10 = !{i64 2154203473}
!11 = !{i64 5381424}
!12 = !{i64 2148961100}
!13 = !{i64 2148956924}
!14 = !{i64 2148956999, i64 2148957026, i64 2148957073, i64 2148957095, i64 2148957123, i64 2148957143}
!15 = !{i64 2148984103}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{!"auto-init"}
!19 = !{i64 2148360545, i64 2148360825, i64 2148361159, i64 2148361493}
!20 = !{i8 0, i8 2}
