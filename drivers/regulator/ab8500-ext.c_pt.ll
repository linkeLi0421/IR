; ModuleID = '/llk/IR/drivers/regulator/ab8500-ext.c_pt.bc'
source_filename = "../drivers/regulator/ab8500-ext.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ab8500_ext_regulator_info = type { ptr, %struct.regulator_desc, ptr, i8, i8, i8, i8, i8, i8, i8 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_consumer_supply = type { ptr, ptr }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ab8500 = type { ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, i32, ptr, i32, i8, ptr, ptr, ptr, [4 x i32], [4 x i32], ptr, ptr, i32, ptr, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }

@__initcall__kmod_ab8500_ext__247_462_ab8500_ext_regulator_init4 = internal global ptr @ab8500_ext_regulator_init, section ".initcall4.init", align 4
@ab8500_ext_regulator_driver = internal global %struct.platform_driver { ptr @ab8500_ext_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ab8500_ext_regulator_exit = internal global ptr @ab8500_ext_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file248 = internal constant [45 x i8] c"ab8500_ext.file=drivers/regulator/ab8500-ext\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [26 x i8] c"ab8500_ext.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [65 x i8] c"ab8500_ext.author=Bengt Jonsson <bengt.g.jonsson@stericsson.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [56 x i8] c"ab8500_ext.description=AB8500 external regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias252 = internal constant [47 x i8] c"ab8500_ext.alias=platform:ab8500-ext-regulator\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [47 x i8] c"\013Failed to register ab8500 ext regulator: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"ab8500-ext-regulator\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"null mfd parent\0A\00", align 1
@ab8500_ext_regulator_info = internal global [3 x %struct.ab8500_ext_regulator_info] [%struct.ab8500_ext_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.4, ptr null, ptr @.str.5, i8 0, ptr null, ptr null, i32 0, i8 0, i32 1, i32 0, ptr @ab8500_ext_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i8 4, i8 8, i8 3, i8 1, i8 1, i8 3, i8 2 }, %struct.ab8500_ext_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.6, ptr null, ptr @.str.7, i8 0, ptr null, ptr null, i32 1, i8 0, i32 1, i32 0, ptr @ab8500_ext_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i8 4, i8 8, i8 12, i8 4, i8 4, i8 12, i8 8 }, %struct.ab8500_ext_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.8, ptr null, ptr @.str.9, i8 0, ptr null, ptr null, i32 2, i8 0, i32 1, i32 0, ptr @ab8500_ext_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i8 4, i8 8, i8 48, i8 16, i8 16, i8 48, i8 32 }], align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to register regulator %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"VEXTSUPPLY1\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"ab8500_ext1\00", align 1
@ab8500_ext_regulator_ops = internal constant %struct.regulator_ops { ptr @ab8500_ext_list_voltage, ptr @ab8500_ext_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_ext_regulator_enable, ptr @ab8500_ext_regulator_disable, ptr @ab8500_ext_regulator_is_enabled, ptr @ab8500_ext_regulator_set_mode, ptr @ab8500_ext_regulator_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"VEXTSUPPLY2\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ab8500_ext2\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"VEXTSUPPLY3\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"ab8500_ext3\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"regulator constraints null pointer\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"No regulator constraints\0A\00", align 1
@.str.12 = private unnamed_addr constant [62 x i8] c"Requested min %duV max %duV != constrained min %duV max %duV\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"regulator info null pointer\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"couldn't set enable bits for regulator\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"couldn't set disable bits for regulator\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"couldn't read 0x%x register\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Could not set regulator mode.\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"ab8500-ext-supply1\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"ab8500-ext-supply2\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"ab8500-ext-supply3\00", align 1
@ab8500_ext_supply3_consumers = internal global [1 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr @.str.22, ptr @.str.23 }], align 4
@ab8500_ext_regulators = internal global [3 x { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }] [{ ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.18, i32 1800000, i32 1800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 3, i8 0 }, i32 0, ptr null, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.19, i32 1360000, i32 1360000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 0, ptr null, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.20, i32 3400000, i32 3400000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 2, i8 0 }, i32 1, ptr @ab8500_ext_supply3_consumers, ptr null, ptr null }], align 4
@.str.22 = private unnamed_addr constant [13 x i8] c"sim-detect.0\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"vinvsim\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias252, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_ab8500_ext_regulator_exit, ptr @__initcall__kmod_ab8500_ext__247_462_ab8500_ext_regulator_init4, ptr @ab8500_ext_regulator_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ab8500_ext_regulator_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ab8500_ext_regulator_driver, ptr noundef null) #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %1) #7
  br label %5

5:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ab8500_ext_regulator_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ab8500_ext_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_ext_regulator_probe(ptr noundef %0) #4 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  %8 = getelementptr inbounds i8, ptr %2, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 12, i1 false)
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #7
  br label %39

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ab8500, ptr %7, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ab8500, ptr %7, i32 0, i32 7
  %17 = load i8, ptr %16, align 4
  %18 = icmp ugt i8 %17, 32
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i8 48, ptr getelementptr inbounds ([3 x %struct.ab8500_ext_regulator_info], ptr @ab8500_ext_regulator_info, i32 0, i32 2, i32 6), align 1
  store i8 48, ptr getelementptr inbounds ([3 x %struct.ab8500_ext_regulator_info], ptr @ab8500_ext_regulator_info, i32 0, i32 2, i32 7), align 4
  store i8 16, ptr getelementptr inbounds ([3 x %struct.ab8500_ext_regulator_info], ptr @ab8500_ext_regulator_info, i32 0, i32 2, i32 8), align 1
  br label %20

20:                                               ; preds = %19, %15, %11
  %21 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  %22 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 1
  store ptr %3, ptr @ab8500_ext_regulator_info, align 4
  %23 = load ptr, ptr getelementptr inbounds ([3 x { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }], ptr @ab8500_ext_regulators, i32 0, i32 0, i32 5), align 4
  store ptr %23, ptr getelementptr inbounds ([3 x %struct.ab8500_ext_regulator_info], ptr @ab8500_ext_regulator_info, i32 0, i32 0, i32 2), align 4
  store ptr %3, ptr %2, align 4
  store ptr @ab8500_ext_regulator_info, ptr %21, align 4
  store ptr @ab8500_ext_regulators, ptr %22, align 4
  %24 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef getelementptr inbounds ([3 x %struct.ab8500_ext_regulator_info], ptr @ab8500_ext_regulator_info, i32 0, i32 0, i32 1), ptr noundef nonnull %2) #6
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %34, label %26

26:                                               ; preds = %20
  store ptr %3, ptr getelementptr inbounds ([3 x %struct.ab8500_ext_regulator_info], ptr @ab8500_ext_regulator_info, i32 0, i32 1), align 4
  %27 = load ptr, ptr getelementptr inbounds ([3 x { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }], ptr @ab8500_ext_regulators, i32 0, i32 1, i32 5), align 4
  store ptr %27, ptr getelementptr inbounds ([3 x %struct.ab8500_ext_regulator_info], ptr @ab8500_ext_regulator_info, i32 0, i32 1, i32 2), align 4
  store ptr %3, ptr %2, align 4
  store ptr getelementptr inbounds ([3 x %struct.ab8500_ext_regulator_info], ptr @ab8500_ext_regulator_info, i32 0, i32 1), ptr %21, align 4
  store ptr getelementptr inbounds ([3 x { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }], ptr @ab8500_ext_regulators, i32 0, i32 1, i32 0), ptr %22, align 4
  %28 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef getelementptr inbounds ([3 x %struct.ab8500_ext_regulator_info], ptr @ab8500_ext_regulator_info, i32 0, i32 1, i32 1), ptr noundef nonnull %2) #6
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  store ptr %3, ptr getelementptr inbounds ([3 x %struct.ab8500_ext_regulator_info], ptr @ab8500_ext_regulator_info, i32 0, i32 2), align 4
  %31 = load ptr, ptr getelementptr inbounds ([3 x { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }], ptr @ab8500_ext_regulators, i32 0, i32 2, i32 5), align 4
  store ptr %31, ptr getelementptr inbounds ([3 x %struct.ab8500_ext_regulator_info], ptr @ab8500_ext_regulator_info, i32 0, i32 2, i32 2), align 4
  store ptr %3, ptr %2, align 4
  store ptr getelementptr inbounds ([3 x %struct.ab8500_ext_regulator_info], ptr @ab8500_ext_regulator_info, i32 0, i32 2), ptr %21, align 4
  store ptr getelementptr inbounds ([3 x { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }], ptr @ab8500_ext_regulators, i32 0, i32 2, i32 0), ptr %22, align 4
  %32 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef getelementptr inbounds ([3 x %struct.ab8500_ext_regulator_info], ptr @ab8500_ext_regulator_info, i32 0, i32 2, i32 1), ptr noundef nonnull %2) #6
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %39

34:                                               ; preds = %30, %26, %20
  %35 = phi ptr [ getelementptr inbounds ([3 x %struct.ab8500_ext_regulator_info], ptr @ab8500_ext_regulator_info, i32 0, i32 0, i32 1), %20 ], [ getelementptr inbounds ([3 x %struct.ab8500_ext_regulator_info], ptr @ab8500_ext_regulator_info, i32 0, i32 1, i32 1), %26 ], [ getelementptr inbounds ([3 x %struct.ab8500_ext_regulator_info], ptr @ab8500_ext_regulator_info, i32 0, i32 2, i32 1), %30 ]
  %36 = phi ptr [ %24, %20 ], [ %28, %26 ], [ %32, %30 ]
  %37 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef %37) #7
  %38 = ptrtoint ptr %36 to i32
  br label %39

39:                                               ; preds = %34, %30, %10
  %40 = phi i32 [ -22, %10 ], [ %38, %34 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %40
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_ext_list_voltage(ptr noundef %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @rdev_get_dev(ptr noundef %0) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.10) #7
  br label %19

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.regulation_constraints, ptr %4, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.regulation_constraints, ptr %4, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = icmp eq i32 %10, %14
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %19, label %18

18:                                               ; preds = %12, %8
  br label %19

19:                                               ; preds = %18, %12, %6
  %20 = phi i32 [ -22, %6 ], [ -22, %18 ], [ %10, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_ext_set_voltage(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #4 {
  %5 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call ptr @rdev_get_dev(ptr noundef %0) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.11) #7
  br label %23

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.regulation_constraints, ptr %6, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.regulation_constraints, ptr %6, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %23, label %18

18:                                               ; preds = %14, %10
  %19 = tail call ptr @rdev_get_dev(ptr noundef %0) #6
  %20 = load i32, ptr %11, align 4
  %21 = getelementptr inbounds %struct.regulation_constraints, ptr %6, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.12, i32 noundef %1, i32 noundef %2, i32 noundef %20, i32 noundef %22) #7
  br label %23

23:                                               ; preds = %18, %14, %8
  %24 = phi i32 [ -22, %18 ], [ -22, %8 ], [ 0, %14 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_ext_regulator_enable(ptr noundef %0) #4 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %2, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load i8, ptr %6, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %2, i32 0, i32 7
  br label %15

13:                                               ; preds = %8, %4
  %14 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %2, i32 0, i32 6
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ]
  %17 = load i8, ptr %16, align 1
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %2, i32 0, i32 3
  %20 = load i8, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %2, i32 0, i32 4
  %22 = load i8, ptr %21, align 1
  %23 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %2, i32 0, i32 5
  %24 = load i8, ptr %23, align 2
  %25 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %18, i8 noundef zeroext %20, i8 noundef zeroext %22, i8 noundef zeroext %24, i8 noundef zeroext %17) #6
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %15, %1
  %28 = phi ptr [ @.str.13, %1 ], [ @.str.14, %15 ]
  %29 = phi i32 [ -22, %1 ], [ %25, %15 ]
  %30 = tail call ptr @rdev_get_dev(ptr noundef %0) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull %28) #7
  br label %31

31:                                               ; preds = %27, %15
  %32 = phi i32 [ 0, %15 ], [ %29, %27 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_ext_regulator_disable(ptr noundef %0) #4 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %2, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = load i8, ptr %6, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %2, i32 0, i32 9
  %13 = load i8, ptr %12, align 2
  br label %14

14:                                               ; preds = %11, %8, %4
  %15 = phi i8 [ %13, %11 ], [ 0, %8 ], [ 0, %4 ]
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %2, i32 0, i32 3
  %18 = load i8, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %2, i32 0, i32 4
  %20 = load i8, ptr %19, align 1
  %21 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %2, i32 0, i32 5
  %22 = load i8, ptr %21, align 2
  %23 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %16, i8 noundef zeroext %18, i8 noundef zeroext %20, i8 noundef zeroext %22, i8 noundef zeroext %15) #6
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %14, %1
  %26 = phi ptr [ @.str.13, %1 ], [ @.str.15, %14 ]
  %27 = phi i32 [ -22, %1 ], [ %23, %14 ]
  %28 = tail call ptr @rdev_get_dev(ptr noundef %0) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull %26) #7
  br label %29

29:                                               ; preds = %25, %14
  %30 = phi i32 [ 0, %14 ], [ %27, %25 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_ext_regulator_is_enabled(ptr noundef %0) #4 {
  %2 = alloca i8, align 1
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 0, ptr %2, align 1, !annotation !9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @rdev_get_dev(ptr noundef %0) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.13) #7
  br label %32

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %3, i32 0, i32 3
  %10 = load i8, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %3, i32 0, i32 4
  %12 = load i8, ptr %11, align 1
  %13 = call i32 @abx500_get_register_interruptible(ptr noundef %8, i8 noundef zeroext %10, i8 noundef zeroext %12, ptr noundef nonnull %2) #6
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %7
  %16 = call ptr @rdev_get_dev(ptr noundef %0) #6
  %17 = load i8, ptr %11, align 1
  %18 = zext i8 %17 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.16, i32 noundef %18) #7
  br label %32

19:                                               ; preds = %7
  %20 = load i8, ptr %2, align 1
  %21 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %3, i32 0, i32 5
  %22 = load i8, ptr %21, align 2
  %23 = and i8 %22, %20
  %24 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %3, i32 0, i32 8
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %23, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %3, i32 0, i32 7
  %29 = load i8, ptr %28, align 4
  %30 = icmp eq i8 %23, %29
  %31 = zext i1 %30 to i32
  br label %32

32:                                               ; preds = %27, %19, %15, %5
  %33 = phi i32 [ -22, %5 ], [ %13, %15 ], [ 1, %19 ], [ %31, %27 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_ext_regulator_set_mode(ptr noundef %0, i32 noundef %1) #4 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call ptr @rdev_get_dev(ptr noundef %0) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.13) #7
  br label %38

7:                                                ; preds = %2
  switch i32 %1, label %38 [
    i32 2, label %8
    i32 4, label %10
  ]

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %3, i32 0, i32 7
  br label %12

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %3, i32 0, i32 8
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %11, %10 ], [ %9, %8 ]
  %14 = load i8, ptr %13, align 1
  %15 = tail call i32 @ab8500_ext_regulator_is_enabled(ptr noundef %0)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %3, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i8, ptr %19, align 1, !range !8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %21, %17
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %3, i32 0, i32 3
  %27 = load i8, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %3, i32 0, i32 4
  %29 = load i8, ptr %28, align 1
  %30 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %3, i32 0, i32 5
  %31 = load i8, ptr %30, align 2
  %32 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %25, i8 noundef zeroext %27, i8 noundef zeroext %29, i8 noundef zeroext %31, i8 noundef zeroext %14) #6
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = tail call ptr @rdev_get_dev(ptr noundef %0) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.17) #7
  br label %38

36:                                               ; preds = %24, %21, %12
  %37 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %3, i32 0, i32 6
  store i8 %14, ptr %37, align 1
  br label %38

38:                                               ; preds = %36, %34, %7, %5
  %39 = phi i32 [ -22, %5 ], [ 0, %36 ], [ %32, %34 ], [ -22, %7 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_ext_regulator_get_mode(ptr noundef %0) #4 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call ptr @rdev_get_dev(ptr noundef %0) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.13) #7
  br label %17

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %2, i32 0, i32 6
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %2, i32 0, i32 7
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %8, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ab8500_ext_regulator_info, ptr %2, i32 0, i32 8
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %8, %14
  %16 = select i1 %15, i32 4, i32 -22
  br label %17

17:                                               ; preds = %12, %6, %4
  %18 = phi i32 [ -22, %4 ], [ 2, %6 ], [ %16, %12 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_mask_and_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_get_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
