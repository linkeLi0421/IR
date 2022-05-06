; ModuleID = '/llk/IR/drivers/regulator/ti-abb-regulator.c_pt.bc'
source_filename = "../drivers/regulator/ti-abb-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ti_abb_reg = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.ti_abb = type { %struct.regulator_desc, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ti_abb_info = type { i32, i32 }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__UNIQUE_ID_alias247 = internal constant [39 x i8] c"ti_abb_regulator.alias=platform:ti_abb\00", section ".modinfo", align 1
@__initcall__kmod_ti_abb_regulator__248_879_ti_abb_driver_init6 = internal global ptr @ti_abb_driver_init, section ".initcall6.init", align 4
@ti_abb_driver = internal global %struct.platform_driver { ptr @ti_abb_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_abb_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ti_abb_driver_exit = internal global ptr @ti_abb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description249 = internal constant [72 x i8] c"ti_abb_regulator.description=Texas Instruments ABB LDO regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [47 x i8] c"ti_abb_regulator.author=Texas Instruments Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [57 x i8] c"ti_abb_regulator.file=drivers/regulator/ti-abb-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [32 x i8] c"ti_abb_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [7 x i8] c"ti_abb\00", align 1
@ti_abb_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,abb-v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @abb_regs_v1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,abb-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @abb_regs_v2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,abb-v3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @abb_regs_generic }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: Unable to match device\0A\00", align 1
@__func__.ti_abb_probe = private unnamed_addr constant [13 x i8] c"ti_abb_probe\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: Bad data in match\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"base-address\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"control-address\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"setup-address\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"int-address\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"efuse-address\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Unable to map '%s'\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"ldo-address\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"ti,ldovbb-override-mask\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Missing '%s' (%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Invalid property:'%s' set as 0!\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"ti,ldovbb-vset-mask\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"ti,tranxdone-status-mask\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"%s: Unable to alloc regulator init data\0A\00", align 1
@ti_abb_reg_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr @ti_abb_set_voltage_sel, ptr null, ptr @ti_abb_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.16 = private unnamed_addr constant [38 x i8] c"%s: failed to register regulator(%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"ti,abb_info\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"No '%s' property?\0A\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"All '%s' list entries need %d vals\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"prop '%s': v=%d,bad efuse/mask\0A\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"prop'%s':v=%d vst=%x LDO base?\0A\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"%s:[%d]v=%d, ABB=%d is invalid! Abort!\0A\00", align 1
@__func__.ti_abb_init_table = private unnamed_addr constant [18 x i8] c"ti_abb_init_table\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"ti,settling-time\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"Unable to get property '%s'(%d)\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"ti,clock-cycles\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"%s: Unable to get clk(%d)\0A\00", align 1
@__func__.ti_abb_init_timings = private unnamed_addr constant [20 x i8] c"ti_abb_init_timings\00", align 1
@ti_abb_set_voltage_sel._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.ti_abb_set_voltage_sel = private unnamed_addr constant [23 x i8] c"ti_abb_set_voltage_sel\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"%s: No regulator drvdata\0A\00", align 1
@ti_abb_set_voltage_sel._rs.28 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.29 = private unnamed_addr constant [37 x i8] c"%s: No valid voltage table entries?\0A\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"%s: sel idx(%d) >= n_voltages(%d)\0A\00", align 1
@ti_abb_set_voltage_sel._rs.31 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.32 = private unnamed_addr constant [40 x i8] c"%s: Volt[%d] idx[%d] mode[%d] Fail(%d)\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ti_abb_clear_all_txdone._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.ti_abb_clear_all_txdone = private unnamed_addr constant [24 x i8] c"ti_abb_clear_all_txdone\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"%s:TRANXDONE timeout(%duS) int=0x%08x\0A\00", align 1
@ti_abb_wait_txdone._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.ti_abb_wait_txdone = private unnamed_addr constant [19 x i8] c"ti_abb_wait_txdone\00", align 1
@ti_abb_get_voltage_sel._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.ti_abb_get_voltage_sel = private unnamed_addr constant [23 x i8] c"ti_abb_get_voltage_sel\00", align 1
@ti_abb_get_voltage_sel._rs.34 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.35 = private unnamed_addr constant [47 x i8] c"%s: Corrupted data? idx(%d) >= n_voltages(%d)\0A\00", align 1
@abb_regs_v1 = internal constant %struct.ti_abb_reg { i32 4, i32 0, i32 65280, i32 4, i32 2, i32 1, i32 4, i32 3 }, align 4
@abb_regs_v2 = internal constant %struct.ti_abb_reg { i32 0, i32 4, i32 65280, i32 4, i32 2, i32 1, i32 4, i32 3 }, align 4
@abb_regs_generic = internal constant %struct.ti_abb_reg { i32 0, i32 0, i32 65280, i32 4, i32 2, i32 1, i32 4, i32 3 }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias247, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_ti_abb_driver_exit, ptr @__initcall__kmod_ti_abb_regulator__248_879_ti_abb_driver_init6, ptr @ti_abb_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ti_abb_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_abb_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ti_abb_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_abb_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_abb_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.regulator_config, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false)
  %9 = tail call ptr @of_match_device(ptr noundef nonnull @ti_abb_of_match, ptr noundef %8) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ti_abb_probe) #10
  br label %324

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.of_device_id, ptr %9, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ti_abb_probe) #10
  br label %324

17:                                               ; preds = %12
  %18 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 300, i32 noundef 3520) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %324, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %13, align 4
  %22 = getelementptr inbounds %struct.ti_abb, ptr %18, i32 0, i32 8
  store ptr %21, ptr %22, align 4
  %23 = load i32, ptr %21, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.ti_abb_reg, ptr %21, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %25, %20
  %30 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.3) #9
  %31 = getelementptr inbounds %struct.ti_abb, ptr %18, i32 0, i32 2
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = ptrtoint ptr %30 to i32
  br label %324

35:                                               ; preds = %29
  %36 = load ptr, ptr %22, align 4
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %30, i32 %37
  %39 = getelementptr inbounds %struct.ti_abb, ptr %18, i32 0, i32 3
  store ptr %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.ti_abb_reg, ptr %36, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr i8, ptr %30, i32 %41
  %43 = getelementptr inbounds %struct.ti_abb, ptr %18, i32 0, i32 4
  store ptr %42, ptr %43, align 4
  br label %56

44:                                               ; preds = %25
  %45 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.4) #9
  %46 = getelementptr inbounds %struct.ti_abb, ptr %18, i32 0, i32 4
  store ptr %45, ptr %46, align 4
  %47 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = ptrtoint ptr %45 to i32
  br label %324

50:                                               ; preds = %44
  %51 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.5) #9
  %52 = getelementptr inbounds %struct.ti_abb, ptr %18, i32 0, i32 3
  store ptr %51, ptr %52, align 4
  %53 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = ptrtoint ptr %51 to i32
  br label %324

56:                                               ; preds = %50, %35
  %57 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.6) #9
  %58 = getelementptr inbounds %struct.ti_abb, ptr %18, i32 0, i32 5
  store ptr %57, ptr %58, align 4
  %59 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = ptrtoint ptr %57 to i32
  br label %324

62:                                               ; preds = %56
  %63 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.7) #9
  %64 = icmp eq ptr %63, null
  br i1 %64, label %105, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %63, align 4
  %67 = getelementptr inbounds %struct.resource, ptr %63, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = sub i32 1, %66
  %70 = add i32 %69, %68
  %71 = tail call ptr @devm_ioremap(ptr noundef %8, i32 noundef %66, i32 noundef %70) #9
  %72 = getelementptr inbounds %struct.ti_abb, ptr %18, i32 0, i32 6
  store ptr %71, ptr %72, align 4
  %73 = icmp eq ptr %71, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7) #10
  br label %324

75:                                               ; preds = %65
  %76 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.9) #9
  %77 = icmp eq ptr %76, null
  br i1 %77, label %105, label %78

78:                                               ; preds = %75
  %79 = tail call ptr @devm_ioremap_resource(ptr noundef %8, ptr noundef nonnull %76) #9
  %80 = getelementptr inbounds %struct.ti_abb, ptr %18, i32 0, i32 7
  store ptr %79, ptr %80, align 4
  %81 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = ptrtoint ptr %79 to i32
  br label %324

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.ti_abb, ptr %18, i32 0, i32 10
  %88 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %86, ptr noundef nonnull @.str.10, ptr noundef %87, i32 noundef 1, i32 noundef 0) #9
  %89 = icmp sgt i32 %88, -1
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef %88) #10
  br label %324

91:                                               ; preds = %84
  %92 = load i32, ptr %87, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10) #10
  br label %324

95:                                               ; preds = %91
  %96 = load ptr, ptr %85, align 8
  %97 = getelementptr inbounds %struct.ti_abb, ptr %18, i32 0, i32 11
  %98 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %96, ptr noundef nonnull @.str.13, ptr noundef %97, i32 noundef 1, i32 noundef 0) #9
  %99 = icmp sgt i32 %98, -1
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.13, i32 noundef %98) #10
  br label %324

101:                                              ; preds = %95
  %102 = load i32, ptr %97, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #10
  br label %324

105:                                              ; preds = %101, %75, %62
  %106 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %107 = load ptr, ptr %106, align 8
  %108 = getelementptr inbounds %struct.ti_abb, ptr %18, i32 0, i32 9
  %109 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %107, ptr noundef nonnull @.str.14, ptr noundef %108, i32 noundef 1, i32 noundef 0) #9
  %110 = icmp sgt i32 %109, -1
  br i1 %110, label %112, label %111

111:                                              ; preds = %105
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.14, i32 noundef %109) #10
  br label %324

112:                                              ; preds = %105
  %113 = load i32, ptr %108, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.14) #10
  br label %324

116:                                              ; preds = %112
  %117 = load ptr, ptr %106, align 8
  %118 = tail call ptr @of_get_regulator_init_data(ptr noundef %8, ptr noundef %117, ptr noundef nonnull %18) #9
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.ti_abb_probe) #10
  br label %324

121:                                              ; preds = %116
  %122 = load ptr, ptr %106, align 8
  %123 = tail call i32 @of_property_count_elems_of_size(ptr noundef %122, ptr noundef nonnull @.str.17, i32 noundef 4) #9
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17) #10
  br label %324

126:                                              ; preds = %121
  %127 = icmp ne i32 %123, 0
  %128 = freeze i32 %123
  %129 = udiv i32 %128, 6
  %130 = mul i32 %129, 6
  %131 = sub i32 %128, %130
  %132 = icmp eq i32 %131, 0
  %133 = and i1 %127, %132
  br i1 %133, label %135, label %134

134:                                              ; preds = %126
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef 6) #10
  br label %324

135:                                              ; preds = %126
  %136 = shl nuw i32 %129, 3
  %137 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef %136, i32 noundef 3520) #9
  %138 = icmp eq ptr %137, null
  br i1 %138, label %324, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.ti_abb, ptr %18, i32 0, i32 12
  store ptr %137, ptr %140, align 4
  %141 = shl nuw nsw i32 %129, 2
  %142 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef %141, i32 noundef 3520) #9
  %143 = icmp eq ptr %142, null
  br i1 %143, label %324, label %144

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.regulator_desc, ptr %18, i32 0, i32 8
  store i32 %129, ptr %145, align 4
  %146 = getelementptr inbounds %struct.regulator_desc, ptr %18, i32 0, i32 23
  store ptr %142, ptr %146, align 4
  %147 = getelementptr inbounds %struct.ti_abb, ptr %18, i32 0, i32 13
  store i32 -22, ptr %147, align 4
  %148 = icmp ult i32 %123, 6
  br i1 %148, label %233, label %149

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.ti_abb, ptr %18, i32 0, i32 6
  %151 = getelementptr inbounds %struct.ti_abb, ptr %18, i32 0, i32 7
  %152 = tail call i32 @llvm.umax.i32(i32 %129, i32 1) #9
  br label %153

153:                                              ; preds = %228, %149
  %154 = phi ptr [ %137, %149 ], [ %230, %228 ]
  %155 = phi i32 [ 0, %149 ], [ %229, %228 ]
  %156 = phi i32 [ 0, %149 ], [ %179, %228 ]
  %157 = phi i32 [ 2147483647, %149 ], [ %178, %228 ]
  %158 = phi ptr [ %142, %149 ], [ %231, %228 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !8
  %159 = load ptr, ptr %106, align 8
  %160 = mul nuw i32 %155, 6
  %161 = call i32 @of_property_read_u32_index(ptr noundef %159, ptr noundef nonnull @.str.17, i32 noundef %160, ptr noundef %158) #9
  %162 = load ptr, ptr %106, align 8
  %163 = or i32 %160, 1
  %164 = call i32 @of_property_read_u32_index(ptr noundef %162, ptr noundef nonnull @.str.17, i32 noundef %163, ptr noundef %154) #9
  %165 = load ptr, ptr %106, align 8
  %166 = add nuw i32 %160, 2
  %167 = call i32 @of_property_read_u32_index(ptr noundef %165, ptr noundef nonnull @.str.17, i32 noundef %166, ptr noundef nonnull %3) #9
  %168 = load ptr, ptr %106, align 8
  %169 = add nuw i32 %160, 3
  %170 = call i32 @of_property_read_u32_index(ptr noundef %168, ptr noundef nonnull @.str.17, i32 noundef %169, ptr noundef nonnull %4) #9
  %171 = load ptr, ptr %106, align 8
  %172 = add nuw i32 %160, 4
  %173 = call i32 @of_property_read_u32_index(ptr noundef %171, ptr noundef nonnull @.str.17, i32 noundef %172, ptr noundef nonnull %5) #9
  %174 = load ptr, ptr %106, align 8
  %175 = add nuw i32 %160, 5
  %176 = call i32 @of_property_read_u32_index(ptr noundef %174, ptr noundef nonnull @.str.17, i32 noundef %175, ptr noundef nonnull %6) #9
  %177 = load i32, ptr %158, align 4
  %178 = call i32 @llvm.umin.i32(i32 %157, i32 %177) #9
  %179 = call i32 @llvm.umax.i32(i32 %156, i32 %177) #9
  %180 = load ptr, ptr %150, align 4
  %181 = icmp eq ptr %180, null
  %182 = load i32, ptr %3, align 4
  br i1 %181, label %183, label %195

183:                                              ; preds = %153
  %184 = icmp ne i32 %182, 0
  %185 = load i32, ptr %4, align 4
  %186 = icmp ne i32 %185, 0
  %187 = select i1 %184, i1 true, i1 %186
  %188 = load i32, ptr %5, align 4
  %189 = icmp ne i32 %188, 0
  %190 = select i1 %187, i1 true, i1 %189
  %191 = load i32, ptr %6, align 4
  %192 = icmp ne i32 %191, 0
  %193 = select i1 %190, i1 true, i1 %192
  br i1 %193, label %194, label %224

194:                                              ; preds = %183
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17, i32 noundef %177) #10
  br label %224

195:                                              ; preds = %153
  %196 = getelementptr i8, ptr %180, i32 %182
  %197 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %196) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %198 = load i32, ptr %4, align 4
  %199 = and i32 %198, %197
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %195
  %202 = load i32, ptr %5, align 4
  %203 = and i32 %202, %197
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %201
  %206 = icmp ne i32 %198, 0
  %207 = icmp ne i32 %202, 0
  %208 = select i1 %206, i1 true, i1 %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %205, %201, %195
  %210 = phi i32 [ 3, %195 ], [ 1, %201 ], [ 0, %205 ]
  store i32 %210, ptr %154, align 4
  br label %211

211:                                              ; preds = %209, %205
  %212 = load ptr, ptr %151, align 4
  %213 = icmp eq ptr %212, null
  %214 = load i32, ptr %6, align 4
  br i1 %213, label %215, label %219

215:                                              ; preds = %211
  %216 = icmp eq i32 %214, 0
  br i1 %216, label %228, label %217

217:                                              ; preds = %215
  %218 = load i32, ptr %158, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.17, i32 noundef %218, i32 noundef %214) #10
  br label %228

219:                                              ; preds = %211
  %220 = and i32 %214, %197
  %221 = call i32 @llvm.cttz.i32(i32 %214, i1 false) #9, !range !11
  %222 = lshr i32 %220, %221
  %223 = getelementptr inbounds %struct.ti_abb_info, ptr %154, i32 0, i32 1
  store i32 %222, ptr %223, align 4
  br label %224

224:                                              ; preds = %219, %194, %183
  %225 = load i32, ptr %154, align 4
  switch i32 %225, label %226 [
    i32 0, label %228
    i32 1, label %228
    i32 3, label %228
  ]

226:                                              ; preds = %224
  %227 = load i32, ptr %158, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.ti_abb_init_table, i32 noundef %155, i32 noundef %227, i32 noundef %225) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %324

228:                                              ; preds = %224, %224, %224, %217, %215
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %229 = add nuw nsw i32 %155, 1
  %230 = getelementptr %struct.ti_abb_info, ptr %154, i32 1
  %231 = getelementptr i32, ptr %158, i32 1
  %232 = icmp eq i32 %229, %152
  br i1 %232, label %233, label %153

233:                                              ; preds = %228, %144
  %234 = phi i32 [ 2147483647, %144 ], [ %178, %228 ]
  %235 = phi i32 [ 0, %144 ], [ %179, %228 ]
  %236 = getelementptr inbounds %struct.regulator_init_data, ptr %118, i32 0, i32 1, i32 1
  store i32 %234, ptr %236, align 4
  %237 = getelementptr inbounds %struct.regulator_init_data, ptr %118, i32 0, i32 1, i32 2
  store i32 %235, ptr %237, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %238 = load ptr, ptr %22, align 4
  %239 = load ptr, ptr %106, align 8
  %240 = getelementptr inbounds %struct.ti_abb, ptr %18, i32 0, i32 14
  %241 = call i32 @of_property_read_variable_u32_array(ptr noundef %239, ptr noundef nonnull @.str.23, ptr noundef %240, i32 noundef 1, i32 noundef 0) #9
  %242 = icmp sgt i32 %241, -1
  br i1 %242, label %244, label %243

243:                                              ; preds = %233
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef %241) #10
  br label %289

244:                                              ; preds = %233
  %245 = load i32, ptr %240, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %244
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.23) #10
  br label %289

248:                                              ; preds = %244
  %249 = load ptr, ptr %106, align 8
  %250 = call i32 @of_property_read_variable_u32_array(ptr noundef %249, ptr noundef nonnull @.str.25, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #9
  %251 = icmp sgt i32 %250, -1
  br i1 %251, label %253, label %252

252:                                              ; preds = %248
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %250) #10
  br label %289

253:                                              ; preds = %248
  %254 = load i32, ptr %2, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %253
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.25) #10
  br label %289

257:                                              ; preds = %253
  %258 = call ptr @devm_clk_get(ptr noundef %8, ptr noundef null) #9
  %259 = getelementptr inbounds %struct.ti_abb, ptr %18, i32 0, i32 1
  store ptr %258, ptr %259, align 4
  %260 = icmp ugt ptr %258, inttoptr (i32 -4096 to ptr)
  br i1 %260, label %291, label %261

261:                                              ; preds = %257
  %262 = call i32 @clk_get_rate(ptr noundef %258) #9
  %263 = add i32 %262, 500000
  %264 = udiv i32 %263, 1000000
  %265 = load i32, ptr %2, align 4
  %266 = mul i32 %265, 10
  %267 = udiv i32 %263, 2000000
  %268 = add i32 %266, %267
  %269 = udiv i32 %268, %264
  %270 = load i32, ptr %240, align 4
  %271 = mul i32 %270, 10
  %272 = lshr i32 %269, 1
  %273 = add i32 %271, %272
  %274 = udiv i32 %273, %269
  %275 = getelementptr inbounds %struct.ti_abb_reg, ptr %238, i32 0, i32 2
  %276 = load i32, ptr %275, align 4
  %277 = getelementptr inbounds %struct.ti_abb, ptr %18, i32 0, i32 3
  %278 = load ptr, ptr %277, align 4
  %279 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %278) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %280 = xor i32 %276, -1
  %281 = and i32 %279, %280
  %282 = call i32 @llvm.cttz.i32(i32 %276, i1 false) #9, !range !11
  %283 = shl i32 %274, %282
  %284 = and i32 %283, %276
  %285 = or i32 %281, %284
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %278, i32 %285) #9, !srcloc !14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %286 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %287 = load ptr, ptr %286, align 4
  %288 = icmp eq ptr %287, null
  br i1 %288, label %293, label %295

289:                                              ; preds = %256, %252, %247, %243
  %290 = phi i32 [ -22, %247 ], [ -22, %256 ], [ %250, %252 ], [ %241, %243 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %324

291:                                              ; preds = %257
  %292 = ptrtoint ptr %258 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.ti_abb_init_timings, i32 noundef %292) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %324

293:                                              ; preds = %261
  %294 = load ptr, ptr %8, align 4
  br label %295

295:                                              ; preds = %293, %261
  %296 = phi ptr [ %294, %293 ], [ %287, %261 ]
  store ptr %296, ptr %18, align 4
  %297 = getelementptr inbounds %struct.regulator_desc, ptr %18, i32 0, i32 13
  store ptr null, ptr %297, align 4
  %298 = getelementptr inbounds %struct.regulator_desc, ptr %18, i32 0, i32 12
  store i32 0, ptr %298, align 4
  %299 = getelementptr inbounds %struct.regulator_desc, ptr %18, i32 0, i32 10
  store ptr @ti_abb_reg_ops, ptr %299, align 4
  %300 = load i32, ptr %145, align 4
  %301 = icmp ugt i32 %300, 1
  br i1 %301, label %302, label %306

302:                                              ; preds = %295
  %303 = getelementptr inbounds %struct.regulator_init_data, ptr %118, i32 0, i32 1, i32 11
  %304 = load i32, ptr %303, align 4
  %305 = or i32 %304, 1
  store i32 %305, ptr %303, align 4
  br label %306

306:                                              ; preds = %302, %295
  %307 = getelementptr inbounds %struct.regulator_init_data, ptr %118, i32 0, i32 1, i32 28
  %308 = load i16, ptr %307, align 4
  %309 = or i16 %308, 1
  store i16 %309, ptr %307, align 4
  store ptr %8, ptr %7, align 4
  %310 = getelementptr inbounds %struct.regulator_config, ptr %7, i32 0, i32 1
  store ptr %118, ptr %310, align 4
  %311 = getelementptr inbounds %struct.regulator_config, ptr %7, i32 0, i32 2
  store ptr %18, ptr %311, align 4
  %312 = load ptr, ptr %106, align 8
  %313 = getelementptr inbounds %struct.regulator_config, ptr %7, i32 0, i32 3
  store ptr %312, ptr %313, align 4
  %314 = call ptr @devm_regulator_register(ptr noundef %8, ptr noundef nonnull %18, ptr noundef nonnull %7) #9
  %315 = icmp ugt ptr %314, inttoptr (i32 -4096 to ptr)
  br i1 %315, label %316, label %318

316:                                              ; preds = %306
  %317 = ptrtoint ptr %314 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.ti_abb_probe, i32 noundef %317) #10
  br label %324

318:                                              ; preds = %306
  %319 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %314, ptr %319, align 8
  %320 = load ptr, ptr %22, align 4
  %321 = getelementptr inbounds %struct.ti_abb_reg, ptr %320, i32 0, i32 5
  %322 = load i32, ptr %321, align 4
  %323 = load ptr, ptr %277, align 4
  call fastcc void @ti_abb_rmw(i32 noundef %322, i32 noundef 1, ptr noundef %323)
  br label %324

324:                                              ; preds = %318, %316, %291, %289, %226, %139, %135, %134, %125, %120, %115, %111, %104, %100, %94, %90, %82, %74, %60, %54, %48, %33, %17, %16, %11
  %325 = phi i32 [ %34, %33 ], [ %61, %60 ], [ %83, %82 ], [ %88, %90 ], [ %98, %100 ], [ %109, %111 ], [ %317, %316 ], [ 0, %318 ], [ -12, %120 ], [ -22, %115 ], [ -22, %104 ], [ -22, %94 ], [ -12, %74 ], [ %49, %48 ], [ %55, %54 ], [ -22, %16 ], [ -19, %11 ], [ -12, %17 ], [ %292, %291 ], [ %290, %289 ], [ -12, %139 ], [ -12, %135 ], [ -22, %226 ], [ -22, %134 ], [ %123, %125 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  ret i32 %325
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ti_abb_rmw(i32 noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 {
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %5 = xor i32 %0, -1
  %6 = and i32 %4, %5
  %7 = tail call i32 @llvm.cttz.i32(i32 %0, i1 false) #9, !range !11
  %8 = shl i32 %1, %7
  %9 = and i32 %8, %0
  %10 = or i32 %6, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %10) #9, !srcloc !14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_abb_set_voltage_sel(ptr noundef %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = tail call i32 @___ratelimit(ptr noundef nonnull @ti_abb_set_voltage_sel._rs, ptr noundef nonnull @__func__.ti_abb_set_voltage_sel) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %200, label %10

10:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.ti_abb_set_voltage_sel) #10
  br label %200

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ti_abb, ptr %4, i32 0, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15, %11
  %20 = tail call i32 @___ratelimit(ptr noundef nonnull @ti_abb_set_voltage_sel._rs.28, ptr noundef nonnull @__func__.ti_abb_set_voltage_sel) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %200, label %22

22:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.ti_abb_set_voltage_sel) #10
  br label %200

23:                                               ; preds = %15
  %24 = icmp ugt i32 %13, %1
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.ti_abb_set_voltage_sel, i32 noundef %1, i32 noundef %13) #10
  br label %200

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ti_abb, ptr %4, i32 0, i32 13
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %200, label %30

30:                                               ; preds = %26
  %31 = getelementptr %struct.ti_abb_info, ptr %17, i32 %1
  %32 = icmp eq i32 %28, -22
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = getelementptr %struct.ti_abb_info, ptr %17, i32 %28
  %35 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %31, ptr noundef dereferenceable(8) %34, i32 8)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %190, label %37

37:                                               ; preds = %33, %30
  %38 = getelementptr inbounds %struct.ti_abb, ptr %4, i32 0, i32 8
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.ti_abb, ptr %4, i32 0, i32 14
  %41 = getelementptr inbounds %struct.ti_abb, ptr %4, i32 0, i32 9
  %42 = getelementptr inbounds %struct.ti_abb, ptr %4, i32 0, i32 5
  br label %43

43:                                               ; preds = %52, %37
  %44 = phi i32 [ 1, %37 ], [ %54, %52 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %45 = load i32, ptr %41, align 4
  %46 = load ptr, ptr %42, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %45) #9, !srcloc !14
  %47 = load ptr, ptr %42, align 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %49 = load i32, ptr %41, align 4
  %50 = and i32 %49, %48
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %43
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748) #9
  %54 = add i32 %44, 1
  %55 = load i32, ptr %40, align 4
  %56 = icmp ugt i32 %44, %55
  br i1 %56, label %57, label %43

57:                                               ; preds = %52
  %58 = tail call i32 @___ratelimit(ptr noundef nonnull @ti_abb_clear_all_txdone._rs, ptr noundef nonnull @__func__.ti_abb_clear_all_txdone) #9
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %191, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %42, align 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !17
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.ti_abb_clear_all_txdone, i32 noundef %54, i32 noundef %62) #10
  br label %191

63:                                               ; preds = %43
  %64 = getelementptr inbounds %struct.ti_abb_reg, ptr %39, i32 0, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.ti_abb_reg, ptr %39, i32 0, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = or i32 %67, %65
  %69 = getelementptr inbounds %struct.ti_abb, ptr %4, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %72 = xor i32 %68, -1
  %73 = and i32 %71, %72
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %73) #9, !srcloc !14
  %74 = load i32, ptr %31, align 4
  switch i32 %74, label %95 [
    i32 3, label %75
    i32 1, label %85
  ]

75:                                               ; preds = %63
  %76 = load i32, ptr %66, align 4
  %77 = load ptr, ptr %69, align 4
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %79 = xor i32 %76, -1
  %80 = and i32 %78, %79
  %81 = tail call i32 @llvm.cttz.i32(i32 %76, i1 false) #9, !range !11
  %82 = shl nuw i32 1, %81
  %83 = and i32 %82, %76
  %84 = or i32 %80, %83
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %84) #9, !srcloc !14
  br label %95

85:                                               ; preds = %63
  %86 = load i32, ptr %64, align 4
  %87 = load ptr, ptr %69, align 4
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %89 = xor i32 %86, -1
  %90 = and i32 %88, %89
  %91 = tail call i32 @llvm.cttz.i32(i32 %86, i1 false) #9, !range !11
  %92 = shl nuw i32 1, %91
  %93 = and i32 %92, %86
  %94 = or i32 %90, %93
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %94) #9, !srcloc !14
  br label %95

95:                                               ; preds = %85, %75, %63
  %96 = getelementptr inbounds %struct.ti_abb_reg, ptr %39, i32 0, i32 7
  %97 = load i32, ptr %96, align 4
  %98 = load i32, ptr %31, align 4
  %99 = getelementptr inbounds %struct.ti_abb, ptr %4, i32 0, i32 4
  %100 = load ptr, ptr %99, align 4
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %102 = xor i32 %97, -1
  %103 = and i32 %101, %102
  %104 = tail call i32 @llvm.cttz.i32(i32 %97, i1 false) #9, !range !11
  %105 = shl i32 %98, %104
  %106 = and i32 %105, %97
  %107 = or i32 %103, %106
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %107) #9, !srcloc !14
  %108 = getelementptr inbounds %struct.ti_abb, ptr %4, i32 0, i32 7
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %134, label %111

111:                                              ; preds = %95
  %112 = load i32, ptr %31, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %134, label %114

114:                                              ; preds = %111
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %109) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !18
  %116 = getelementptr inbounds %struct.ti_abb, ptr %4, i32 0, i32 10
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr inbounds %struct.ti_abb, ptr %4, i32 0, i32 11
  %119 = load i32, ptr %118, align 4
  %120 = or i32 %119, %117
  %121 = xor i32 %120, -1
  %122 = and i32 %115, %121
  %123 = load i32, ptr %31, align 4
  switch i32 %123, label %131 [
    i32 3, label %124
    i32 1, label %124
  ]

124:                                              ; preds = %114, %114
  %125 = or i32 %122, %117
  %126 = getelementptr %struct.ti_abb_info, ptr %17, i32 %1, i32 1
  %127 = load i32, ptr %126, align 4
  %128 = tail call i32 @llvm.cttz.i32(i32 %119, i1 false) #9, !range !11
  %129 = shl i32 %127, %128
  %130 = or i32 %125, %129
  br label %131

131:                                              ; preds = %124, %114
  %132 = phi i32 [ %122, %114 ], [ %130, %124 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %133 = load ptr, ptr %108, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %132) #9, !srcloc !14
  br label %134

134:                                              ; preds = %131, %111, %95
  %135 = getelementptr inbounds %struct.ti_abb_reg, ptr %39, i32 0, i32 6
  %136 = load i32, ptr %135, align 4
  %137 = load ptr, ptr %99, align 4
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %139 = xor i32 %136, -1
  %140 = and i32 %138, %139
  %141 = tail call i32 @llvm.cttz.i32(i32 %136, i1 false) #9, !range !11
  %142 = shl nuw i32 1, %141
  %143 = and i32 %142, %136
  %144 = or i32 %140, %143
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %144) #9, !srcloc !14
  br label %145

145:                                              ; preds = %152, %134
  %146 = phi i32 [ 1, %134 ], [ %154, %152 ]
  %147 = load ptr, ptr %42, align 4
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %147) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %149 = load i32, ptr %41, align 4
  %150 = and i32 %149, %148
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %145
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %153(i32 noundef 214748) #9
  %154 = add i32 %146, 1
  %155 = load i32, ptr %40, align 4
  %156 = icmp ugt i32 %146, %155
  br i1 %156, label %157, label %145

157:                                              ; preds = %152
  %158 = tail call i32 @___ratelimit(ptr noundef nonnull @ti_abb_wait_txdone._rs, ptr noundef nonnull @__func__.ti_abb_wait_txdone) #9
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %191, label %160

160:                                              ; preds = %157
  %161 = load ptr, ptr %42, align 4
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %161) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.ti_abb_wait_txdone, i32 noundef %154, i32 noundef %162) #10
  br label %191

163:                                              ; preds = %172, %145
  %164 = phi i32 [ %174, %172 ], [ 1, %145 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %165 = load i32, ptr %41, align 4
  %166 = load ptr, ptr %42, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %165) #9, !srcloc !14
  %167 = load ptr, ptr %42, align 4
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %167) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %169 = load i32, ptr %41, align 4
  %170 = and i32 %169, %168
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %183, label %172

172:                                              ; preds = %163
  %173 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %173(i32 noundef 214748) #9
  %174 = add i32 %164, 1
  %175 = load i32, ptr %40, align 4
  %176 = icmp ugt i32 %164, %175
  br i1 %176, label %177, label %163

177:                                              ; preds = %172
  %178 = tail call i32 @___ratelimit(ptr noundef nonnull @ti_abb_clear_all_txdone._rs, ptr noundef nonnull @__func__.ti_abb_clear_all_txdone) #9
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %191, label %180

180:                                              ; preds = %177
  %181 = load ptr, ptr %42, align 4
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %181) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !17
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.ti_abb_clear_all_txdone, i32 noundef %174, i32 noundef %182) #10
  br label %191

183:                                              ; preds = %163
  %184 = load ptr, ptr %108, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %190, label %186

186:                                              ; preds = %183
  %187 = load i32, ptr %31, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  tail call fastcc void @ti_abb_program_ldovbb(ptr noundef nonnull %4, ptr noundef %31) #9
  br label %190

190:                                              ; preds = %189, %186, %183, %33
  store i32 %1, ptr %27, align 4
  br label %200

191:                                              ; preds = %180, %177, %160, %157, %60, %57
  %192 = tail call i32 @___ratelimit(ptr noundef nonnull @ti_abb_set_voltage_sel._rs.31, ptr noundef nonnull @__func__.ti_abb_set_voltage_sel) #9
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %200, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 23
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr i32, ptr %196, i32 %1
  %198 = load i32, ptr %197, align 4
  %199 = load i32, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.ti_abb_set_voltage_sel, i32 noundef %198, i32 noundef %1, i32 noundef %199, i32 noundef -110) #10
  br label %200

200:                                              ; preds = %194, %191, %190, %26, %25, %22, %19, %10, %7
  %201 = phi i32 [ -22, %25 ], [ -19, %10 ], [ -19, %7 ], [ -22, %22 ], [ -22, %19 ], [ 0, %26 ], [ -110, %191 ], [ -110, %194 ], [ 0, %190 ]
  ret i32 %201
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_abb_get_voltage_sel(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13
  %5 = icmp eq ptr %3, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call i32 @___ratelimit(ptr noundef nonnull @ti_abb_get_voltage_sel._rs, ptr noundef nonnull @__func__.ti_abb_get_voltage_sel) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.ti_abb_get_voltage_sel) #10
  br label %27

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ti_abb, ptr %3, i32 0, i32 12
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %10
  %19 = tail call i32 @___ratelimit(ptr noundef nonnull @ti_abb_get_voltage_sel._rs.34, ptr noundef nonnull @__func__.ti_abb_get_voltage_sel) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.ti_abb_get_voltage_sel) #10
  br label %27

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.ti_abb, ptr %3, i32 0, i32 13
  %24 = load i32, ptr %23, align 4
  %25 = icmp slt i32 %24, %12
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.ti_abb_get_voltage_sel, i32 noundef %24, i32 noundef %12) #10
  br label %27

27:                                               ; preds = %26, %22, %21, %18, %9, %6
  %28 = phi i32 [ -22, %26 ], [ -19, %9 ], [ -19, %6 ], [ -22, %21 ], [ -22, %18 ], [ %24, %22 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ti_abb_program_ldovbb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ti_abb, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !18
  %6 = getelementptr inbounds %struct.ti_abb, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ti_abb, ptr %0, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, %7
  %11 = xor i32 %10, -1
  %12 = and i32 %5, %11
  %13 = load i32, ptr %1, align 4
  switch i32 %13, label %21 [
    i32 3, label %14
    i32 1, label %14
  ]

14:                                               ; preds = %2, %2
  %15 = or i32 %12, %7
  %16 = getelementptr inbounds %struct.ti_abb_info, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.cttz.i32(i32 %9, i1 false) #9, !range !11
  %19 = shl i32 %17, %18
  %20 = or i32 %15, %19
  br label %21

21:                                               ; preds = %14, %2
  %22 = phi i32 [ %12, %2 ], [ %20, %14 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %23 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #9, !srcloc !14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
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
!9 = !{i64 2499458}
!10 = !{i64 2153655529}
!11 = !{i32 0, i32 33}
!12 = !{i64 2153629617}
!13 = !{i64 2153629788}
!14 = !{i64 2499040}
!15 = !{i64 2153630757}
!16 = !{i64 2153630394}
!17 = !{i64 2153636020}
!18 = !{i64 2153636346}
!19 = !{i64 2153636531}
!20 = !{i64 2153633462}
