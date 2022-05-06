; ModuleID = '/llk/IR/drivers/power/supply/cros_peripheral_charger.c_pt.bc'
source_filename = "../drivers/power/supply/cros_peripheral_charger.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.cros_ec_dev = type { %struct.device, ptr, ptr, ptr, i8, i16, %struct.ec_response_get_features }
%struct.ec_response_get_features = type { [2 x i32] }
%struct.charger_data = type { ptr, ptr, ptr, i32, [8 x ptr], %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.port_data = type { i32, [12 x i8], ptr, %struct.power_supply_desc, i32, i32, i32, ptr, i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }

@__UNIQUE_ID_license168 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description169 = internal constant [50 x i8] c"description=ChromeOS EC peripheral device charger\00", section ".modinfo", align 1
@__UNIQUE_ID_alias170 = internal constant [28 x i8] c"alias=platform:cros-ec-pchg\00", section ".modinfo", align 1
@cros_pchg_driver = internal global %struct.platform_driver { ptr @cros_pchg_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"cros-ec-pchg\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"No peripheral charge ports (err:%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"EC_CMD_PCHG version %d isn't available.\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Too many peripheral charge ports (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"%d peripheral charge ports found\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"peripheral%d\00", align 1
@cros_pchg_props = internal global [4 x i32] [i32 0, i32 1, i32 47, i32 66], align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to register power supply\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Failed to register notifier (err:%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Unable to get number or ports (err:%d)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.9 = private unnamed_addr constant [48 x i8] c"Unable to get versions of EC_CMD_PCHG (err:%d)\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.10 = private unnamed_addr constant [39 x i8] c"Unable to get port.%d status (err:%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Unable to get device events (err:%d)\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias170, ptr @__UNIQUE_ID_description169, ptr @__UNIQUE_ID_license168], section "llvm.metadata"
@switch.table.cros_pchg_get_port_status = private unnamed_addr constant [3 x i32] [i32 1, i32 1, i32 4], align 4
@switch.table.cros_pchg_get_port_status.12 = private unnamed_addr constant [3 x i32] [i32 2, i32 4, i32 1], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_pchg_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_pchg_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_pchg_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.power_supply_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.cros_ec_dev, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 60, i32 noundef 3520) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %105, label %12

12:                                               ; preds = %1
  store ptr %3, ptr %10, align 4
  %13 = getelementptr inbounds %struct.charger_data, ptr %10, i32 0, i32 1
  store ptr %7, ptr %13, align 4
  %14 = getelementptr inbounds %struct.charger_data, ptr %10, i32 0, i32 2
  store ptr %9, ptr %14, align 4
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 21) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %12
  store i32 0, ptr %16, align 8
  %19 = getelementptr inbounds %struct.cros_ec_dev, ptr %7, i32 0, i32 5
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = add nuw nsw i32 %21, 308
  %23 = getelementptr inbounds %struct.cros_ec_command, ptr %16, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.cros_ec_command, ptr %16, i32 0, i32 2
  store i32 0, ptr %24, align 8
  %25 = getelementptr inbounds %struct.cros_ec_command, ptr %16, i32 0, i32 3
  store i32 1, ptr %25, align 4
  %26 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %9, ptr noundef nonnull %16) #8
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  tail call void @kfree(ptr noundef nonnull %16) #8
  br label %29

29:                                               ; preds = %28, %12
  %30 = phi i32 [ %26, %28 ], [ -12, %12 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %30) #10
  br label %36

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.cros_ec_command, ptr %16, i32 0, i32 5
  %33 = load i8, ptr %32, align 4
  tail call void @kfree(ptr noundef nonnull %16) #8
  %34 = zext i8 %33 to i32
  %35 = icmp eq i8 %33, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31, %29
  %37 = phi i32 [ %30, %29 ], [ 0, %31 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %37) #10
  br label %105

38:                                               ; preds = %31
  %39 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %40 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 24) #9
  %41 = icmp eq ptr %40, null
  br i1 %41, label %53, label %42

42:                                               ; preds = %38
  store i32 1, ptr %40, align 8
  %43 = load i16, ptr %19, align 2
  %44 = zext i16 %43 to i32
  %45 = add nuw nsw i32 %44, 8
  %46 = getelementptr inbounds %struct.cros_ec_command, ptr %40, i32 0, i32 1
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.cros_ec_command, ptr %40, i32 0, i32 2
  store i32 2, ptr %47, align 8
  %48 = getelementptr inbounds %struct.cros_ec_command, ptr %40, i32 0, i32 3
  store i32 4, ptr %48, align 4
  %49 = getelementptr inbounds %struct.cros_ec_command, ptr %40, i32 0, i32 5
  store i16 309, ptr %49, align 4
  %50 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %9, ptr noundef nonnull %40) #8
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %55, label %52

52:                                               ; preds = %42
  tail call void @kfree(ptr noundef nonnull %40) #8
  br label %53

53:                                               ; preds = %52, %38
  %54 = phi i32 [ %50, %52 ], [ -12, %38 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %54) #10
  br label %59

55:                                               ; preds = %42
  %56 = load i32, ptr %49, align 4
  tail call void @kfree(ptr noundef nonnull %40) #8
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %53
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef 1) #10
  br label %105

60:                                               ; preds = %55
  %61 = icmp ugt i8 %33, 8
  br i1 %61, label %62, label %63

62:                                               ; preds = %60
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %34) #10
  br label %105

63:                                               ; preds = %60
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %34) #10
  %64 = getelementptr inbounds %struct.power_supply_config, ptr %2, i32 0, i32 2
  %65 = getelementptr inbounds %struct.charger_data, ptr %10, i32 0, i32 3
  br label %66

66:                                               ; preds = %87, %63
  %67 = phi i32 [ 0, %63 ], [ %92, %87 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false)
  %68 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 92, i32 noundef 3520) #8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %85, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.port_data, ptr %68, i32 0, i32 7
  store ptr %10, ptr %71, align 4
  store i32 %67, ptr %68, align 4
  %72 = getelementptr inbounds %struct.port_data, ptr %68, i32 0, i32 1
  %73 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %72, i32 noundef 12, ptr noundef nonnull @.str.5, i32 noundef %67)
  %74 = getelementptr inbounds %struct.port_data, ptr %68, i32 0, i32 3
  store ptr %72, ptr %74, align 4
  %75 = getelementptr inbounds %struct.port_data, ptr %68, i32 0, i32 3, i32 1
  store i32 1, ptr %75, align 4
  %76 = getelementptr inbounds %struct.port_data, ptr %68, i32 0, i32 3, i32 6
  store ptr @cros_pchg_get_prop, ptr %76, align 4
  %77 = getelementptr inbounds %struct.port_data, ptr %68, i32 0, i32 3, i32 9
  store ptr null, ptr %77, align 4
  %78 = getelementptr inbounds %struct.port_data, ptr %68, i32 0, i32 3, i32 4
  store ptr @cros_pchg_props, ptr %78, align 4
  %79 = getelementptr inbounds %struct.port_data, ptr %68, i32 0, i32 3, i32 5
  store i32 4, ptr %79, align 4
  store ptr %68, ptr %64, align 4
  %80 = call ptr @devm_power_supply_register(ptr noundef %3, ptr noundef %74, ptr noundef nonnull %2) #8
  %81 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %81, label %82, label %87

82:                                               ; preds = %70
  %83 = ptrtoint ptr %80 to i32
  %84 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %83, ptr noundef nonnull @.str.6) #8
  br label %85

85:                                               ; preds = %82, %66
  %86 = phi i32 [ %84, %82 ], [ -12, %66 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  br label %105

87:                                               ; preds = %70
  %88 = getelementptr inbounds %struct.port_data, ptr %68, i32 0, i32 2
  store ptr %80, ptr %88, align 4
  %89 = load i32, ptr %65, align 4
  %90 = add i32 %89, 1
  store i32 %90, ptr %65, align 4
  %91 = getelementptr %struct.charger_data, ptr %10, i32 0, i32 4, i32 %89
  store ptr %68, ptr %91, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  %92 = add nuw nsw i32 %67, 1
  %93 = icmp eq i32 %92, %34
  br i1 %93, label %94, label %66

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.charger_data, ptr %10, i32 0, i32 3
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.charger_data, ptr %10, i32 0, i32 5
  store ptr @cros_ec_notify, ptr %99, align 4
  %100 = load ptr, ptr %8, align 8
  %101 = getelementptr inbounds %struct.cros_ec_device, ptr %100, i32 0, i32 22
  %102 = call i32 @blocking_notifier_chain_register(ptr noundef %101, ptr noundef %99) #8
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %102) #10
  br label %105

105:                                              ; preds = %104, %98, %94, %85, %62, %59, %36, %1
  %106 = phi i32 [ -19, %36 ], [ -105, %62 ], [ -95, %59 ], [ -12, %1 ], [ -19, %94 ], [ 0, %104 ], [ 0, %98 ], [ %86, %85 ]
  ret i32 %106
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_pchg_get_prop(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = tail call ptr @power_supply_get_drvdata(ptr noundef %0) #8
  switch i32 %1, label %17 [
    i32 0, label %5
    i32 47, label %5
    i32 1, label %5
    i32 66, label %15
  ]

5:                                                ; preds = %3, %3, %3
  tail call fastcc void @cros_pchg_get_port_status(ptr noundef %4, i1 noundef zeroext true)
  switch i32 %1, label %17 [
    i32 0, label %6
    i32 47, label %8
    i32 1, label %10
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.port_data, ptr %4, i32 0, i32 4
  br label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.port_data, ptr %4, i32 0, i32 5
  br label %12

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.port_data, ptr %4, i32 0, i32 6
  br label %12

12:                                               ; preds = %10, %8, %6
  %13 = phi ptr [ %11, %10 ], [ %9, %8 ], [ %7, %6 ]
  %14 = load i32, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %3
  %16 = phi i32 [ 2, %3 ], [ %14, %12 ]
  store i32 %16, ptr %2, align 4
  br label %17

17:                                               ; preds = %15, %5, %3
  %18 = phi i32 [ -22, %3 ], [ -22, %5 ], [ 0, %15 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_notify(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = tail call i32 @cros_ec_get_host_event(ptr noundef %2) #8
  %5 = getelementptr i8, ptr %0, i32 -48
  %6 = and i32 %4, 512
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %47, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr i8, ptr %0, i32 -44
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 25) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %8
  store i32 0, ptr %13, align 8
  %16 = getelementptr inbounds %struct.cros_ec_dev, ptr %11, i32 0, i32 5
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = add nuw nsw i32 %18, 170
  %20 = getelementptr inbounds %struct.cros_ec_command, ptr %13, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.cros_ec_command, ptr %13, i32 0, i32 2
  store i32 5, ptr %21, align 8
  %22 = getelementptr inbounds %struct.cros_ec_command, ptr %13, i32 0, i32 3
  store i32 4, ptr %22, align 4
  %23 = getelementptr inbounds %struct.cros_ec_command, ptr %13, i32 0, i32 5
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.cros_ec_command, ptr %13, i32 1, i32 1
  store i8 0, ptr %24, align 8
  %25 = getelementptr i8, ptr %0, i32 -40
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %26, ptr noundef nonnull %13) #8
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %32, label %29

29:                                               ; preds = %15
  tail call void @kfree(ptr noundef nonnull %13) #8
  br label %30

30:                                               ; preds = %29, %8
  %31 = phi i32 [ %27, %29 ], [ -12, %8 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.11, i32 noundef %31) #10
  br label %47

32:                                               ; preds = %15
  %33 = load i32, ptr %23, align 4
  tail call void @kfree(ptr noundef nonnull %13) #8
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %0, i32 -36
  %38 = load i32, ptr %37, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %40, %36
  %41 = phi i32 [ %44, %40 ], [ 0, %36 ]
  %42 = getelementptr %struct.charger_data, ptr %5, i32 0, i32 4, i32 %41
  %43 = load ptr, ptr %42, align 4
  tail call fastcc void @cros_pchg_get_port_status(ptr noundef %43, i1 noundef zeroext false) #8
  %44 = add nuw nsw i32 %41, 1
  %45 = load i32, ptr %37, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %40, label %47

47:                                               ; preds = %40, %36, %32, %30, %3
  %48 = phi i32 [ 0, %3 ], [ 0, %32 ], [ 0, %30 ], [ 1, %36 ], [ 1, %40 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cros_pchg_get_port_status(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  br i1 %1, label %3, label %10

3:                                                ; preds = %2
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = getelementptr inbounds %struct.port_data, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %4, -50
  %8 = sub i32 %7, %6
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %70, label %10

10:                                               ; preds = %3, %2
  %11 = getelementptr inbounds %struct.port_data, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.port_data, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.port_data, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %0, align 4
  %19 = getelementptr inbounds %struct.charger_data, ptr %12, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 36) #9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %64, label %24

24:                                               ; preds = %10
  %25 = trunc i32 %18 to i8
  store i32 1, ptr %22, align 8
  %26 = getelementptr inbounds %struct.cros_ec_dev, ptr %20, i32 0, i32 5
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  %29 = add nuw nsw i32 %28, 309
  %30 = getelementptr inbounds %struct.cros_ec_command, ptr %22, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.cros_ec_command, ptr %22, i32 0, i32 2
  store i32 1, ptr %31, align 8
  %32 = getelementptr inbounds %struct.cros_ec_command, ptr %22, i32 0, i32 3
  store i32 16, ptr %32, align 4
  %33 = getelementptr inbounds %struct.cros_ec_command, ptr %22, i32 0, i32 5
  store i8 %25, ptr %33, align 4
  %34 = getelementptr inbounds %struct.charger_data, ptr %12, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %35, ptr noundef nonnull %22) #8
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %39, label %38

38:                                               ; preds = %24
  tail call void @kfree(ptr noundef nonnull %22) #8
  br label %64

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.cros_ec_command, ptr %22, i32 1, i32 1
  %41 = load i8, ptr %40, align 8
  %42 = getelementptr inbounds i8, ptr %33, i32 5
  %43 = load i8, ptr %42, align 1
  tail call void @kfree(ptr noundef nonnull %22) #8
  %44 = add i8 %41, -3
  %45 = icmp ult i8 %44, 3
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = sext i8 %44 to i32
  %48 = getelementptr inbounds [3 x i32], ptr @switch.table.cros_pchg_get_port_status, i32 0, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = sext i8 %44 to i32
  %51 = getelementptr inbounds [3 x i32], ptr @switch.table.cros_pchg_get_port_status.12, i32 0, i32 %50
  %52 = load i32, ptr %51, align 4
  br label %53

53:                                               ; preds = %46, %39
  %54 = phi i32 [ 0, %39 ], [ %49, %46 ]
  %55 = phi i32 [ 1, %39 ], [ %52, %46 ]
  store i32 %54, ptr %14, align 4
  %56 = getelementptr inbounds %struct.port_data, ptr %0, i32 0, i32 6
  store i32 %55, ptr %56, align 4
  %57 = zext i8 %43 to i32
  store i32 %57, ptr %16, align 4
  %58 = icmp eq i32 %54, %15
  %59 = icmp eq i32 %17, %57
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %67, label %61

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.port_data, ptr %0, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  tail call void @power_supply_changed(ptr noundef %63) #8
  br label %67

64:                                               ; preds = %38, %10
  %65 = phi i32 [ %36, %38 ], [ -12, %10 ]
  %66 = load i32, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.10, i32 noundef %66, i32 noundef %65) #10
  br label %70

67:                                               ; preds = %61, %53
  %68 = load volatile i32, ptr @jiffies, align 64
  %69 = getelementptr inbounds %struct.port_data, ptr %0, i32 0, i32 8
  store i32 %68, ptr %69, align 4
  br label %70

70:                                               ; preds = %67, %64, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_get_host_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
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
