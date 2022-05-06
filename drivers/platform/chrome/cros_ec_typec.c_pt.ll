; ModuleID = '/llk/IR/drivers/platform/chrome/cros_ec_typec.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_ec_typec.c"
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
%struct.ec_params_get_cmd_versions_v1 = type { i16 }
%struct.ec_response_get_cmd_versions = type { i32 }
%struct.ec_response_usb_pd_ports = type { i8 }
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
%struct.cros_typec_data = type { ptr, ptr, i32, i32, [8 x ptr], %struct.notifier_block, %struct.work_struct, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.cros_typec_port = type { ptr, %struct.typec_capability, ptr, ptr, ptr, %struct.usb_pd_identity, %struct.usb_pd_identity, ptr, ptr, ptr, %struct.typec_mux_state, i8, i8, [2 x %struct.typec_altmode], i8, i8, ptr, %struct.list_head, %struct.list_head }
%struct.typec_capability = type { i32, i32, i16, i16, i32, i32, [3 x i32], i8, ptr, ptr, ptr }
%struct.usb_pd_identity = type { i32, i32, i32, [3 x i32] }
%struct.typec_mux_state = type { ptr, i32, ptr }
%struct.typec_altmode = type { %struct.device, i16, i32, i32, i8, ptr, ptr }
%struct.typec_thunderbolt_data = type { i32, i32, i32 }
%struct.enter_usb_data = type { i32, i8 }
%struct.ec_params_usb_pd_mux_ack = type { i8 }
%struct.ec_params_usb_pd_mux_info = type { i8 }
%struct.ec_params_typec_control = type { i8, i8, i16, %union.anon.6 }
%union.anon.6 = type { i32, [124 x i8] }
%struct.typec_cable_desc = type { i32, i8, ptr, i16 }
%struct.typec_plug_desc = type { i32 }
%struct.ec_params_typec_discovery = type { i8, i8 }
%struct.ec_response_typec_status = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [32 x i8], i32, i16, i16, [7 x i32], [7 x i32] }
%struct.ec_params_typec_status = type { i8 }
%struct.typec_partner_desc = type { i8, i32, ptr, i16 }
%struct.ec_params_usb_pd_control = type { i8, i8, i8, i8 }
%struct.ec_response_usb_pd_control_v2 = type { i8, i8, i8, [32 x i8], i8, i8, i8, i8, i8, i8 }
%struct.ec_response_usb_pd_mux_info = type { i8 }
%struct.ec_response_usb_pd_control_v1 = type { i8, i8, i8, [32 x i8] }
%struct.ec_response_usb_pd_control = type { i8, i8, i8, i8 }
%struct.ec_response_typec_discovery = type { i8, i8, i16, [6 x i32], [0 x %struct.svid_mode_info] }
%struct.svid_mode_info = type { i16, i16, [6 x i32] }
%struct.typec_altmode_desc = type { i16, i8, i32, i32 }
%struct.cros_typec_altmode_node = type { ptr, %struct.list_head }
%struct.typec_displayport_data = type { i32, i32 }

@cros_typec_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,cros-ec-typec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author166 = internal constant [46 x i8] c"author=Prashant Malani <pmalani@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description167 = internal constant [40 x i8] c"description=Chrome OS EC Type C control\00", section ".modinfo", align 1
@__UNIQUE_ID_license168 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@cros_typec_driver = internal global %struct.platform_driver { ptr @cros_typec_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cros_typec_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_typec_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [14 x i8] c"cros-ec-typec\00", align 1
@cros_typec_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @cros_typec_suspend, ptr @cros_typec_resume, ptr @cros_typec_suspend, ptr @cros_typec_resume, ptr @cros_typec_suspend, ptr @cros_typec_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to get PD command version info\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Too many ports reported: %d, limiting to max: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"No port entries found.\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"More ports listed than can be supported.\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"port-number\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"No port-number for port, aborting.\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Invalid port number.\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Failed to register port %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"power-role\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"power-role not found: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"data-role\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"data-role not found: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"try-power-role\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"try-power-role not found: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Update failed for port: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"cannot get status for invalid port %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"Failed to get mux info for port: %d, err = %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"Configure muxes failed, err = %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"Failed to register partner on port: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"EC_CMD_TYPEC_STATUS failed for port: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"Failed hard reset event clear, port: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"Couldn't parse SOP Disc data, port: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"Failed SOP Disc event clear, port: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"Couldn't parse SOP' Disc data, port: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [61 x i8] c"SOP Discovery received without partner registered, port: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"Failed to get SOP discovery data for port: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"Failed to update partner PD identity, port: %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [47 x i8] c"Failed to register partner altmodes, port: %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"Unable to set %s num_altmodes for port: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"partner\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"plug\00", align 1
@.str.33 = private unnamed_addr constant [48 x i8] c"Failed to get SOP' discovery data for port: %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [44 x i8] c"Failed to register plug altmodes, port: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"Failed to send Mux ACK to EC for port: %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"PD_CTRL version too old: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"No valid DP mode provided.\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author166, ptr @__UNIQUE_ID_description167, ptr @__UNIQUE_ID_license168], section "llvm.metadata"

@__mod_of__cros_typec_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @cros_typec_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_typec_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_typec_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_typec_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ec_params_get_cmd_versions_v1, align 2
  %5 = alloca %struct.ec_response_get_cmd_versions, align 4
  %6 = alloca %struct.ec_response_usb_pd_ports, align 1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7
  store i8 0, ptr %6, align 1, !annotation !8
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 80, i32 noundef 3520) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %192, label %10

10:                                               ; preds = %1
  store ptr %7, ptr %8, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.cros_typec_data, ptr %8, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %16, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  store i16 257, ptr %4, align 2
  %17 = call i32 @cros_ec_command(ptr noundef %14, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %4, i32 noundef 2, ptr noundef nonnull %5, i32 noundef 4) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %10
  %20 = load i32, ptr %5, align 4
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cros_typec_data, ptr %8, i32 0, i32 3
  store i32 2, ptr %24, align 4
  br label %32

25:                                               ; preds = %19
  %26 = and i32 %20, 2
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.cros_typec_data, ptr %8, i32 0, i32 3
  br i1 %27, label %30, label %29

29:                                               ; preds = %25
  store i32 1, ptr %28, align 4
  br label %32

30:                                               ; preds = %25
  store i32 0, ptr %28, align 4
  br label %32

31:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.1) #8
  br label %192

32:                                               ; preds = %30, %29, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  %33 = load ptr, ptr %15, align 4
  %34 = getelementptr inbounds %struct.cros_ec_device, ptr %33, i32 0, i32 29
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3, i32 8
  %37 = load ptr, ptr %36, align 8
  %38 = call zeroext i1 @cros_ec_check_features(ptr noundef %37, i32 noundef 41) #7
  %39 = getelementptr inbounds %struct.cros_typec_data, ptr %8, i32 0, i32 7
  %40 = zext i1 %38 to i8
  store i8 %40, ptr %39, align 4
  %41 = call zeroext i1 @cros_ec_check_features(ptr noundef %37, i32 noundef 43) #7
  %42 = getelementptr inbounds %struct.cros_typec_data, ptr %8, i32 0, i32 8
  %43 = zext i1 %41 to i8
  store i8 %43, ptr %42, align 1
  %44 = load ptr, ptr %15, align 4
  %45 = call i32 @cros_ec_command(ptr noundef %44, i32 noundef 0, i32 noundef 258, ptr noundef null, i32 noundef 0, ptr noundef nonnull %6, i32 noundef 1) #7
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %192, label %47

47:                                               ; preds = %32
  %48 = load i8, ptr %6, align 1
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds %struct.cros_typec_data, ptr %8, i32 0, i32 2
  store i32 %49, ptr %50, align 4
  %51 = icmp ugt i8 %48, 8
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %53, ptr noundef nonnull @.str.2, i32 noundef %49, i32 noundef 8) #8
  store i32 8, ptr %50, align 4
  br label %54

54:                                               ; preds = %52, %47
  %55 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4
  %56 = call i32 @device_get_child_node_count(ptr noundef %55) #7
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %160, label %58

58:                                               ; preds = %54
  %59 = load i32, ptr %50, align 4
  %60 = icmp sgt i32 %56, %59
  br i1 %60, label %160, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 25
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %63, null
  %65 = select i1 %64, ptr @.str.6, ptr @.str.5
  %66 = call ptr @device_get_next_child_node(ptr noundef %55, ptr noundef null) #7
  %67 = icmp eq ptr %66, null
  br i1 %67, label %163, label %68

68:                                               ; preds = %153, %61
  %69 = phi ptr [ %158, %153 ], [ %66, %61 ]
  %70 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %69, ptr noundef nonnull %65, ptr noundef nonnull %3, i32 noundef 1) #7
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.7) #8
  br label %164

73:                                               ; preds = %68
  %74 = load i32, ptr %3, align 4
  %75 = load i32, ptr %50, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.8) #8
  br label %164

78:                                               ; preds = %73
  %79 = call noalias ptr @devm_kmalloc(ptr noundef %55, i32 noundef 1160, i32 noundef 3520) #7
  %80 = icmp eq ptr %79, null
  br i1 %80, label %164, label %81

81:                                               ; preds = %78
  %82 = load i32, ptr %3, align 4
  %83 = getelementptr %struct.cros_typec_data, ptr %8, i32 0, i32 4, i32 %82
  store ptr %79, ptr %83, align 4
  %84 = getelementptr inbounds %struct.cros_typec_port, ptr %79, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4, !annotation !8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(48) %84, i8 0, i32 48, i1 false) #7
  %85 = call i32 @fwnode_property_read_string(ptr noundef nonnull %69, ptr noundef nonnull @.str.10, ptr noundef nonnull %2) #7
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.11, i32 noundef %85) #8
  br label %114

88:                                               ; preds = %81
  %89 = load ptr, ptr %2, align 4
  %90 = call i32 @typec_find_port_power_role(ptr noundef %89) #7
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %112, label %92

92:                                               ; preds = %88
  store i32 %90, ptr %84, align 4
  %93 = call i32 @fwnode_property_read_string(ptr noundef nonnull %69, ptr noundef nonnull @.str.12, ptr noundef nonnull %2) #7
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.13, i32 noundef %93) #8
  br label %114

96:                                               ; preds = %92
  %97 = load ptr, ptr %2, align 4
  %98 = call i32 @typec_find_port_data_role(ptr noundef %97) #7
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.cros_typec_port, ptr %79, i32 0, i32 1, i32 1
  store i32 %98, ptr %101, align 4
  %102 = call i32 @fwnode_property_read_string(ptr noundef nonnull %69, ptr noundef nonnull @.str.14, ptr noundef nonnull %2) #7
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.15, i32 noundef %102) #8
  br label %114

105:                                              ; preds = %100
  %106 = load ptr, ptr %2, align 4
  %107 = call i32 @typec_find_power_role(ptr noundef %106) #7
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.cros_typec_port, ptr %79, i32 0, i32 1, i32 5
  store i32 %107, ptr %110, align 4
  %111 = getelementptr inbounds %struct.cros_typec_port, ptr %79, i32 0, i32 1, i32 8
  store ptr %69, ptr %111, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %117

112:                                              ; preds = %105, %96, %88
  %113 = phi i32 [ %107, %105 ], [ %98, %96 ], [ %90, %88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %164

114:                                              ; preds = %104, %95, %87
  %115 = phi i32 [ %85, %87 ], [ %93, %95 ], [ %102, %104 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %164, label %117

117:                                              ; preds = %114, %109
  %118 = call ptr @typec_register_port(ptr noundef %55, ptr noundef %84) #7
  store ptr %118, ptr %79, align 8
  %119 = icmp ugt ptr %118, inttoptr (i32 -4096 to ptr)
  br i1 %119, label %166, label %120

120:                                              ; preds = %117
  %121 = call ptr @fwnode_typec_mux_get(ptr noundef nonnull %69, ptr noundef null) #7
  %122 = getelementptr inbounds %struct.cros_typec_port, ptr %79, i32 0, i32 8
  store ptr %121, ptr %122, align 4
  %123 = icmp ugt ptr %121, inttoptr (i32 -4096 to ptr)
  br i1 %123, label %137, label %124

124:                                              ; preds = %120
  %125 = call ptr @fwnode_typec_switch_get(ptr noundef nonnull %69) #7
  %126 = getelementptr inbounds %struct.cros_typec_port, ptr %79, i32 0, i32 7
  store ptr %125, ptr %126, align 8
  %127 = icmp ugt ptr %125, inttoptr (i32 -4096 to ptr)
  br i1 %127, label %134, label %128

128:                                              ; preds = %124
  %129 = call ptr @fwnode_usb_role_switch_get(ptr noundef nonnull %69) #7
  %130 = getelementptr inbounds %struct.cros_typec_port, ptr %79, i32 0, i32 9
  store ptr %129, ptr %130, align 8
  %131 = icmp ugt ptr %129, inttoptr (i32 -4096 to ptr)
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  call void @usb_role_switch_put(ptr noundef nonnull %129) #7
  %133 = load ptr, ptr %126, align 8
  br label %134

134:                                              ; preds = %132, %124
  %135 = phi ptr [ %125, %124 ], [ %133, %132 ]
  call void @typec_switch_put(ptr noundef %135) #7
  %136 = load ptr, ptr %122, align 4
  br label %137

137:                                              ; preds = %134, %120
  %138 = phi ptr [ %121, %120 ], [ %136, %134 ]
  call void @typec_mux_put(ptr noundef %138) #7
  br label %139

139:                                              ; preds = %137, %128
  %140 = load i32, ptr %3, align 4
  %141 = getelementptr %struct.cros_typec_data, ptr %8, i32 0, i32 4, i32 %140
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.cros_typec_port, ptr %142, i32 0, i32 13, i32 0, i32 1
  store i16 -255, ptr %143, align 8
  %144 = getelementptr inbounds %struct.cros_typec_port, ptr %142, i32 0, i32 13, i32 0, i32 2
  store i32 1, ptr %144, align 4
  %145 = getelementptr %struct.cros_typec_port, ptr %142, i32 0, i32 13, i32 1, i32 1
  store i16 -32633, ptr %145, align 8
  %146 = getelementptr %struct.cros_typec_port, ptr %142, i32 0, i32 13, i32 1, i32 2
  store i32 7, ptr %146, align 4
  %147 = getelementptr inbounds %struct.cros_typec_port, ptr %142, i32 0, i32 10
  store ptr null, ptr %147, align 4
  %148 = getelementptr inbounds %struct.cros_typec_port, ptr %142, i32 0, i32 10, i32 1
  store i32 1, ptr %148, align 4
  %149 = getelementptr inbounds %struct.cros_typec_port, ptr %142, i32 0, i32 10, i32 2
  store ptr null, ptr %149, align 4
  %150 = call noalias ptr @devm_kmalloc(ptr noundef %55, i32 noundef 255, i32 noundef 3520) #7
  %151 = getelementptr inbounds %struct.cros_typec_port, ptr %79, i32 0, i32 16
  store ptr %150, ptr %151, align 4
  %152 = icmp eq ptr %150, null
  br i1 %152, label %164, label %153

153:                                              ; preds = %139
  %154 = getelementptr inbounds %struct.cros_typec_port, ptr %79, i32 0, i32 17
  store volatile ptr %154, ptr %154, align 4
  %155 = getelementptr inbounds %struct.cros_typec_port, ptr %79, i32 0, i32 17, i32 1
  store ptr %154, ptr %155, align 4
  %156 = getelementptr inbounds %struct.cros_typec_port, ptr %79, i32 0, i32 18
  store volatile ptr %156, ptr %156, align 4
  %157 = getelementptr inbounds %struct.cros_typec_port, ptr %79, i32 0, i32 18, i32 1
  store ptr %156, ptr %157, align 4
  %158 = call ptr @device_get_next_child_node(ptr noundef %55, ptr noundef nonnull %69) #7
  %159 = icmp eq ptr %158, null
  br i1 %159, label %163, label %68

160:                                              ; preds = %58, %54
  %161 = phi ptr [ @.str.3, %54 ], [ @.str.4, %58 ]
  %162 = phi i32 [ -19, %54 ], [ -22, %58 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull %161) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %192

163:                                              ; preds = %153, %61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %171

164:                                              ; preds = %139, %114, %112, %78, %77, %72
  %165 = phi i32 [ %113, %112 ], [ -22, %77 ], [ -22, %72 ], [ -12, %139 ], [ -12, %78 ], [ %115, %114 ]
  call fastcc void @cros_unregister_ports(ptr noundef nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %192

166:                                              ; preds = %117
  %167 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.9, i32 noundef %167) #8
  %168 = load ptr, ptr %79, align 8
  %169 = ptrtoint ptr %168 to i32
  call fastcc void @cros_unregister_ports(ptr noundef nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %170 = icmp slt ptr %168, null
  br i1 %170, label %192, label %171

171:                                              ; preds = %166, %163
  %172 = getelementptr inbounds %struct.cros_typec_data, ptr %8, i32 0, i32 6
  store i32 -32, ptr %172, align 4
  %173 = getelementptr inbounds %struct.cros_typec_data, ptr %8, i32 0, i32 6, i32 1
  store volatile ptr %173, ptr %173, align 4
  %174 = getelementptr inbounds %struct.cros_typec_data, ptr %8, i32 0, i32 6, i32 1, i32 1
  store ptr %173, ptr %174, align 4
  %175 = getelementptr inbounds %struct.cros_typec_data, ptr %8, i32 0, i32 6, i32 2
  store ptr @cros_typec_port_work, ptr %175, align 4
  %176 = load i32, ptr %50, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %182, label %186

178:                                              ; preds = %182
  %179 = add nuw nsw i32 %183, 1
  %180 = load i32, ptr %50, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %178, %171
  %183 = phi i32 [ %179, %178 ], [ 0, %171 ]
  %184 = call fastcc i32 @cros_typec_port_update(ptr noundef nonnull %8, i32 noundef %183)
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %190, label %178

186:                                              ; preds = %178, %171
  %187 = getelementptr inbounds %struct.cros_typec_data, ptr %8, i32 0, i32 5
  store ptr @cros_ec_typec_event, ptr %187, align 4
  %188 = call i32 @cros_usbpd_register_notify(ptr noundef %187) #7
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %186, %182
  %191 = phi i32 [ %188, %186 ], [ %184, %182 ]
  call fastcc void @cros_unregister_ports(ptr noundef nonnull %8)
  br label %192

192:                                              ; preds = %190, %186, %166, %164, %160, %32, %31, %1
  %193 = phi i32 [ %17, %31 ], [ %191, %190 ], [ -12, %1 ], [ %45, %32 ], [ %169, %166 ], [ 0, %186 ], [ %162, %160 ], [ %165, %164 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7
  ret i32 %193
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cros_ec_check_features(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_command(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cros_typec_port_work(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -60
  %3 = getelementptr i8, ptr %0, i32 -52
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %12, %1
  %7 = phi i32 [ %13, %12 ], [ 0, %1 ]
  %8 = tail call fastcc i32 @cros_typec_port_update(ptr noundef %2, i32 noundef %7)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.16, i32 noundef %7) #8
  br label %12

12:                                               ; preds = %10, %6
  %13 = add nuw nsw i32 %7, 1
  %14 = load i32, ptr %3, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %6, label %16

16:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cros_typec_port_update(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.typec_thunderbolt_data, align 4
  %4 = alloca %struct.enter_usb_data, align 8
  %5 = alloca %struct.ec_params_usb_pd_mux_ack, align 1
  %6 = alloca %struct.ec_params_usb_pd_mux_info, align 1
  %7 = alloca %struct.ec_params_typec_control, align 1
  %8 = alloca %struct.typec_cable_desc, align 4
  %9 = alloca %struct.typec_plug_desc, align 4
  %10 = alloca %struct.ec_params_typec_discovery, align 2
  %11 = alloca %struct.ec_params_typec_control, align 1
  %12 = alloca %struct.ec_params_typec_discovery, align 2
  %13 = alloca %struct.ec_params_typec_control, align 1
  %14 = alloca %struct.ec_response_typec_status, align 1
  %15 = alloca %struct.ec_params_typec_status, align 1
  %16 = alloca %struct.typec_partner_desc, align 4
  %17 = alloca %struct.ec_params_usb_pd_control, align 4
  %18 = alloca %struct.ec_response_usb_pd_control_v2, align 1
  %19 = alloca %struct.ec_response_usb_pd_mux_info, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #7
  store i32 0, ptr %17, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %18) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(41) %18, i8 0, i32 41, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #7
  store i8 0, ptr %19, align 1, !annotation !8
  %20 = icmp slt i32 %1, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.cros_typec_data, ptr %0, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp sgt i32 %23, %1
  br i1 %24, label %27, label %25

25:                                               ; preds = %21, %2
  %26 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.17, i32 noundef %1) #8
  br label %519

27:                                               ; preds = %21
  %28 = trunc i32 %1 to i8
  store i8 %28, ptr %17, align 4
  %29 = getelementptr inbounds %struct.cros_typec_data, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.cros_typec_data, ptr %0, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = call i32 @cros_ec_command(ptr noundef %30, i32 noundef %32, i32 noundef 257, ptr noundef nonnull %17, i32 noundef 4, ptr noundef nonnull %18, i32 noundef 41) #7
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %519, label %35

35:                                               ; preds = %27
  %36 = load i32, ptr %31, align 4
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr %struct.cros_typec_data, ptr %0, i32 0, i32 4, i32 %1
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %39, align 8
  %41 = load i8, ptr %18, align 1
  br i1 %37, label %83, label %42

42:                                               ; preds = %35
  %43 = and i8 %41, 2
  %44 = icmp eq i8 %43, 0
  %45 = getelementptr inbounds %struct.ec_response_usb_pd_control_v1, ptr %18, i32 0, i32 2
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 0
  %48 = select i1 %47, i32 1, i32 2
  %49 = select i1 %44, i32 0, i32 %48
  %50 = call i32 @typec_set_orientation(ptr noundef %40, i32 noundef %49) #7
  %51 = getelementptr inbounds %struct.ec_response_usb_pd_control_v1, ptr %18, i32 0, i32 1
  %52 = load i8, ptr %51, align 1
  %53 = lshr i8 %52, 1
  %54 = and i8 %53, 1
  %55 = zext i8 %54 to i32
  call void @typec_set_data_role(ptr noundef %40, i32 noundef %55) #7
  %56 = load i8, ptr %51, align 1
  %57 = and i8 %56, 1
  %58 = zext i8 %57 to i32
  call void @typec_set_pwr_role(ptr noundef %40, i32 noundef %58) #7
  %59 = load i8, ptr %51, align 1
  %60 = lshr i8 %59, 2
  %61 = and i8 %60, 1
  %62 = zext i8 %61 to i32
  call void @typec_set_vconn_role(ptr noundef %40, i32 noundef %62) #7
  %63 = load i8, ptr %18, align 1
  %64 = and i8 %63, 2
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %42
  %67 = load ptr, ptr %38, align 4
  %68 = getelementptr inbounds %struct.cros_typec_port, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %95

71:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %16, i8 0, i32 16, i1 false) #7, !annotation !8
  %72 = lshr i8 %63, 2
  %73 = and i8 %72, 1
  store i8 %73, ptr %16, align 4
  %74 = getelementptr inbounds %struct.typec_partner_desc, ptr %16, i32 0, i32 2
  %75 = getelementptr inbounds %struct.cros_typec_port, ptr %67, i32 0, i32 5
  store ptr %75, ptr %74, align 4
  %76 = load ptr, ptr %67, align 8
  %77 = call ptr @typec_register_partner(ptr noundef %76, ptr noundef nonnull %16) #7
  %78 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  %79 = select i1 %78, ptr null, ptr %77
  store ptr %79, ptr %68, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #7
  br i1 %78, label %80, label %95

80:                                               ; preds = %71
  %81 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %81, ptr noundef nonnull @.str.20, i32 noundef %1) #8
  br label %95

82:                                               ; preds = %42
  call fastcc void @cros_typec_remove_partner(ptr noundef %0, i32 noundef %1) #7
  call fastcc void @cros_typec_remove_cable(ptr noundef %0, i32 noundef %1) #7
  br label %95

83:                                               ; preds = %35
  %84 = icmp eq i8 %41, 0
  %85 = getelementptr inbounds %struct.ec_response_usb_pd_control, ptr %18, i32 0, i32 2
  %86 = load i8, ptr %85, align 1
  %87 = icmp eq i8 %86, 0
  %88 = select i1 %87, i32 1, i32 2
  %89 = select i1 %84, i32 0, i32 %88
  %90 = getelementptr inbounds %struct.ec_response_usb_pd_control, ptr %18, i32 0, i32 1
  %91 = load i8, ptr %90, align 1
  %92 = icmp ne i8 %91, 0
  %93 = zext i1 %92 to i32
  call void @typec_set_pwr_role(ptr noundef %40, i32 noundef %93) #7
  %94 = call i32 @typec_set_orientation(ptr noundef %40, i32 noundef %89) #7
  br label %95

95:                                               ; preds = %83, %82, %80, %71, %66
  %96 = getelementptr inbounds %struct.cros_typec_data, ptr %0, i32 0, i32 7
  %97 = load i8, ptr %96, align 4, !range !9
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %327, label %99

99:                                               ; preds = %95
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %14) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(108) %14, i8 0, i32 108, i1 false) #7, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #7
  store i8 %28, ptr %15, align 1
  %100 = load ptr, ptr %29, align 4
  %101 = call i32 @cros_ec_command(ptr noundef %100, i32 noundef 0, i32 noundef 307, ptr noundef nonnull %15, i32 noundef 1, ptr noundef nonnull %14, i32 noundef 108) #7
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %104, ptr noundef nonnull @.str.21, i32 noundef %1) #8
  br label %326

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.ec_response_typec_status, ptr %14, i32 0, i32 13
  %107 = load i32, ptr %106, align 1
  %108 = and i32 %107, 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %105
  call fastcc void @cros_typec_remove_partner(ptr noundef %0, i32 noundef %1) #7
  call fastcc void @cros_typec_remove_cable(ptr noundef %0, i32 noundef %1) #7
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %13) #7
  %111 = getelementptr inbounds i8, ptr %13, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(130) %111, i8 0, i64 130, i1 false) #7
  store i8 %28, ptr %13, align 1
  %112 = getelementptr inbounds %struct.ec_params_typec_control, ptr %13, i32 0, i32 1
  store i8 1, ptr %112, align 1
  %113 = getelementptr inbounds %struct.ec_params_typec_control, ptr %13, i32 0, i32 3
  store i32 4, ptr %113, align 1
  %114 = load ptr, ptr %29, align 4
  %115 = call i32 @cros_ec_command(ptr noundef %114, i32 noundef 0, i32 noundef 306, ptr noundef nonnull %13, i32 noundef 132, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %13) #7
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %326

117:                                              ; preds = %110
  %118 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %118, ptr noundef nonnull @.str.22, i32 noundef %1) #8
  br label %326

119:                                              ; preds = %105
  %120 = and i32 %107, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %209, label %122

122:                                              ; preds = %119
  %123 = getelementptr %struct.cros_typec_data, ptr %0, i32 0, i32 4, i32 %1
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.cros_typec_port, ptr %124, i32 0, i32 14
  %126 = load i8, ptr %125, align 8, !range !9
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %209

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.ec_response_typec_status, ptr %14, i32 0, i32 14
  %130 = load i16, ptr %129, align 1
  %131 = getelementptr inbounds %struct.cros_typec_port, ptr %124, i32 0, i32 16
  %132 = load ptr, ptr %131, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #7
  store i8 %28, ptr %12, align 2
  %133 = getelementptr inbounds %struct.ec_params_typec_discovery, ptr %12, i32 0, i32 1
  store i8 0, ptr %133, align 1
  %134 = getelementptr inbounds %struct.cros_typec_port, ptr %124, i32 0, i32 2
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %187, label %137

137:                                              ; preds = %128
  %138 = lshr i16 %130, 4
  %139 = and i16 %138, 4080
  call void @typec_partner_set_pd_revision(ptr noundef nonnull %135, i16 noundef zeroext %139) #7
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(255) %132, i8 0, i32 255, i1 false) #7
  %140 = load ptr, ptr %29, align 4
  %141 = call i32 @cros_ec_command(ptr noundef %140, i32 noundef 0, i32 noundef 305, ptr noundef nonnull %12, i32 noundef 2, ptr noundef %132, i32 noundef 255) #7
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %187, label %143

143:                                              ; preds = %137
  %144 = load i8, ptr %132, align 1
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %180, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.cros_typec_port, ptr %124, i32 0, i32 5
  %148 = getelementptr inbounds %struct.ec_response_typec_discovery, ptr %132, i32 0, i32 3
  %149 = load i32, ptr %148, align 1
  store i32 %149, ptr %147, align 4
  %150 = load i8, ptr %132, align 1
  %151 = icmp ugt i8 %150, 1
  br i1 %151, label %152, label %180

152:                                              ; preds = %146
  %153 = getelementptr %struct.ec_response_typec_discovery, ptr %132, i32 0, i32 3, i32 1
  %154 = load i32, ptr %153, align 1
  %155 = getelementptr inbounds %struct.cros_typec_port, ptr %124, i32 0, i32 5, i32 1
  store i32 %154, ptr %155, align 4
  %156 = load i8, ptr %132, align 1
  %157 = icmp ugt i8 %156, 2
  br i1 %157, label %158, label %180

158:                                              ; preds = %152
  %159 = getelementptr %struct.ec_response_typec_discovery, ptr %132, i32 0, i32 3, i32 2
  %160 = load i32, ptr %159, align 1
  %161 = getelementptr inbounds %struct.cros_typec_port, ptr %124, i32 0, i32 5, i32 2
  store i32 %160, ptr %161, align 4
  %162 = load i8, ptr %132, align 1
  %163 = icmp ugt i8 %162, 3
  br i1 %163, label %164, label %180

164:                                              ; preds = %158
  %165 = getelementptr %struct.ec_response_typec_discovery, ptr %132, i32 0, i32 3, i32 3
  %166 = load i32, ptr %165, align 1
  %167 = getelementptr %struct.cros_typec_port, ptr %124, i32 0, i32 5, i32 3, i32 0
  store i32 %166, ptr %167, align 4
  %168 = load i8, ptr %132, align 1
  %169 = icmp ugt i8 %168, 4
  br i1 %169, label %170, label %180

170:                                              ; preds = %164
  %171 = getelementptr %struct.ec_response_typec_discovery, ptr %132, i32 0, i32 3, i32 4
  %172 = load i32, ptr %171, align 1
  %173 = getelementptr %struct.cros_typec_port, ptr %124, i32 0, i32 5, i32 3, i32 1
  store i32 %172, ptr %173, align 4
  %174 = load i8, ptr %132, align 1
  %175 = icmp ugt i8 %174, 5
  br i1 %175, label %176, label %180

176:                                              ; preds = %170
  %177 = getelementptr %struct.ec_response_typec_discovery, ptr %132, i32 0, i32 3, i32 5
  %178 = load i32, ptr %177, align 1
  %179 = getelementptr %struct.cros_typec_port, ptr %124, i32 0, i32 5, i32 3, i32 2
  store i32 %178, ptr %179, align 4
  br label %180

180:                                              ; preds = %176, %170, %164, %158, %152, %146, %143
  %181 = load ptr, ptr %134, align 4
  %182 = call i32 @typec_partner_set_identity(ptr noundef %181) #7
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %180
  %185 = call fastcc i32 @cros_typec_register_altmodes(ptr noundef %0, i32 noundef %1, i1 noundef zeroext true) #7
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %184, %180, %137, %128
  %188 = phi ptr [ @.str.26, %128 ], [ @.str.27, %137 ], [ @.str.28, %180 ], [ @.str.29, %184 ]
  %189 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull %188, i32 noundef %1) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #7
  %190 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %190, ptr noundef nonnull @.str.23, i32 noundef %1) #8
  br label %202

191:                                              ; preds = %184
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #7
  %192 = load ptr, ptr %123, align 4
  %193 = getelementptr inbounds %struct.cros_typec_port, ptr %192, i32 0, i32 14
  store i8 1, ptr %193, align 8
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %11) #7
  %194 = getelementptr inbounds i8, ptr %11, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(130) %194, i8 0, i64 130, i1 false) #7
  store i8 %28, ptr %11, align 1
  %195 = getelementptr inbounds %struct.ec_params_typec_control, ptr %11, i32 0, i32 1
  store i8 1, ptr %195, align 1
  %196 = getelementptr inbounds %struct.ec_params_typec_control, ptr %11, i32 0, i32 3
  store i32 1, ptr %196, align 1
  %197 = load ptr, ptr %29, align 4
  %198 = call i32 @cros_ec_command(ptr noundef %197, i32 noundef 0, i32 noundef 306, ptr noundef nonnull %11, i32 noundef 132, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %11) #7
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %191
  %201 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %201, ptr noundef nonnull @.str.24, i32 noundef %1) #8
  br label %202

202:                                              ; preds = %200, %191, %187
  %203 = getelementptr inbounds %struct.ec_response_typec_status, ptr %14, i32 0, i32 2
  %204 = load i8, ptr %203, align 1
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %202
  %207 = load ptr, ptr %123, align 4
  %208 = load ptr, ptr %207, align 8
  call void @typec_set_pwr_opmode(ptr noundef %208, i32 noundef 3) #7
  br label %209

209:                                              ; preds = %206, %202, %122, %119
  %210 = load i32, ptr %106, align 1
  %211 = and i32 %210, 2
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %326, label %213

213:                                              ; preds = %209
  %214 = getelementptr %struct.cros_typec_data, ptr %0, i32 0, i32 4, i32 %1
  %215 = load ptr, ptr %214, align 4
  %216 = getelementptr inbounds %struct.cros_typec_port, ptr %215, i32 0, i32 15
  %217 = load i8, ptr %216, align 1, !range !9
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %219, label %326

219:                                              ; preds = %213
  %220 = getelementptr inbounds %struct.ec_response_typec_status, ptr %14, i32 0, i32 15
  %221 = load i16, ptr %220, align 1
  %222 = lshr i16 %221, 4
  %223 = and i16 %222, 4080
  %224 = getelementptr inbounds %struct.cros_typec_port, ptr %215, i32 0, i32 16
  %225 = load ptr, ptr %224, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i32 16, i1 false) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  store i32 0, ptr %9, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #7
  store i8 %28, ptr %10, align 2
  %226 = getelementptr inbounds %struct.ec_params_typec_discovery, ptr %10, i32 0, i32 1
  store i8 1, ptr %226, align 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(255) %225, i8 0, i32 255, i1 false) #7
  %227 = load ptr, ptr %29, align 4
  %228 = call i32 @cros_ec_command(ptr noundef %227, i32 noundef 0, i32 noundef 305, ptr noundef nonnull %10, i32 noundef 2, ptr noundef %225, i32 noundef 255) #7
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %307, label %230

230:                                              ; preds = %219
  %231 = getelementptr inbounds %struct.cros_typec_port, ptr %215, i32 0, i32 6
  %232 = load i8, ptr %225, align 1
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %290, label %234

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.ec_response_typec_discovery, ptr %225, i32 0, i32 3
  %236 = load i32, ptr %235, align 1
  store i32 %236, ptr %231, align 4
  %237 = load i8, ptr %225, align 1
  %238 = icmp ugt i8 %237, 1
  br i1 %238, label %239, label %268

239:                                              ; preds = %234
  %240 = getelementptr %struct.ec_response_typec_discovery, ptr %225, i32 0, i32 3, i32 1
  %241 = load i32, ptr %240, align 1
  %242 = getelementptr inbounds %struct.cros_typec_port, ptr %215, i32 0, i32 6, i32 1
  store i32 %241, ptr %242, align 4
  %243 = load i8, ptr %225, align 1
  %244 = icmp ugt i8 %243, 2
  br i1 %244, label %245, label %268

245:                                              ; preds = %239
  %246 = getelementptr %struct.ec_response_typec_discovery, ptr %225, i32 0, i32 3, i32 2
  %247 = load i32, ptr %246, align 1
  %248 = getelementptr inbounds %struct.cros_typec_port, ptr %215, i32 0, i32 6, i32 2
  store i32 %247, ptr %248, align 4
  %249 = load i8, ptr %225, align 1
  %250 = icmp ugt i8 %249, 3
  br i1 %250, label %251, label %268

251:                                              ; preds = %245
  %252 = getelementptr %struct.ec_response_typec_discovery, ptr %225, i32 0, i32 3, i32 3
  %253 = load i32, ptr %252, align 1
  %254 = getelementptr %struct.cros_typec_port, ptr %215, i32 0, i32 6, i32 3, i32 0
  store i32 %253, ptr %254, align 4
  %255 = load i8, ptr %225, align 1
  %256 = icmp ugt i8 %255, 4
  br i1 %256, label %257, label %268

257:                                              ; preds = %251
  %258 = getelementptr %struct.ec_response_typec_discovery, ptr %225, i32 0, i32 3, i32 4
  %259 = load i32, ptr %258, align 1
  %260 = getelementptr %struct.cros_typec_port, ptr %215, i32 0, i32 6, i32 3, i32 1
  store i32 %259, ptr %260, align 4
  %261 = load i8, ptr %225, align 1
  %262 = icmp ugt i8 %261, 5
  br i1 %262, label %263, label %268

263:                                              ; preds = %257
  %264 = getelementptr %struct.ec_response_typec_discovery, ptr %225, i32 0, i32 3, i32 5
  %265 = load i32, ptr %264, align 1
  %266 = getelementptr %struct.cros_typec_port, ptr %215, i32 0, i32 6, i32 3, i32 2
  store i32 %265, ptr %266, align 4
  %267 = load i8, ptr %225, align 1
  br label %268

268:                                              ; preds = %263, %257, %251, %245, %239, %234
  %269 = phi i8 [ %237, %234 ], [ %243, %239 ], [ %249, %245 ], [ %255, %251 ], [ %261, %257 ], [ %267, %263 ]
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %290, label %271

271:                                              ; preds = %268
  %272 = getelementptr inbounds %struct.cros_typec_port, ptr %215, i32 0, i32 6, i32 3
  %273 = load i32, ptr %272, align 4
  %274 = lshr i32 %273, 18
  %275 = and i32 %274, 3
  switch i32 %275, label %280 [
    i32 0, label %276
    i32 1, label %277
    i32 2, label %278
    i32 3, label %279
  ]

276:                                              ; preds = %271
  store i32 1, ptr %8, align 4
  br label %281

277:                                              ; preds = %271
  store i32 2, ptr %8, align 4
  br label %281

278:                                              ; preds = %271
  store i32 3, ptr %8, align 4
  br label %281

279:                                              ; preds = %271
  store i32 4, ptr %8, align 4
  br label %281

280:                                              ; preds = %271
  unreachable

281:                                              ; preds = %279, %278, %277, %276
  %282 = load i32, ptr %231, align 8
  %283 = and i32 %282, 939524096
  %284 = icmp eq i32 %283, 536870912
  %285 = getelementptr inbounds %struct.typec_cable_desc, ptr %8, i32 0, i32 1
  %286 = zext i1 %284 to i8
  %287 = load i8, ptr %285, align 4
  %288 = and i8 %287, -2
  %289 = or i8 %288, %286
  store i8 %289, ptr %285, align 4
  br label %290

290:                                              ; preds = %281, %268, %230
  %291 = getelementptr inbounds %struct.typec_cable_desc, ptr %8, i32 0, i32 2
  store ptr %231, ptr %291, align 4
  %292 = getelementptr inbounds %struct.typec_cable_desc, ptr %8, i32 0, i32 3
  store i16 %223, ptr %292, align 4
  %293 = load ptr, ptr %215, align 8
  %294 = call ptr @typec_register_cable(ptr noundef %293, ptr noundef nonnull %8) #7
  %295 = getelementptr inbounds %struct.cros_typec_port, ptr %215, i32 0, i32 3
  store ptr %294, ptr %295, align 8
  %296 = icmp ugt ptr %294, inttoptr (i32 -4096 to ptr)
  br i1 %296, label %297, label %298

297:                                              ; preds = %290
  store ptr null, ptr %295, align 8
  br label %310

298:                                              ; preds = %290
  store i32 0, ptr %9, align 4
  %299 = call ptr @typec_register_plug(ptr noundef %294, ptr noundef nonnull %9) #7
  %300 = getelementptr inbounds %struct.cros_typec_port, ptr %215, i32 0, i32 4
  store ptr %299, ptr %300, align 4
  %301 = icmp ugt ptr %299, inttoptr (i32 -4096 to ptr)
  br i1 %301, label %302, label %303

302:                                              ; preds = %298
  store ptr null, ptr %300, align 4
  br label %310

303:                                              ; preds = %298
  %304 = call fastcc i32 @cros_typec_register_altmodes(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false) #7
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %307, label %306

306:                                              ; preds = %303
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  br label %315

307:                                              ; preds = %303, %219
  %308 = phi ptr [ @.str.33, %219 ], [ @.str.34, %303 ]
  %309 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %309, ptr noundef nonnull %308, i32 noundef %1) #8
  call fastcc void @cros_typec_remove_cable(ptr noundef %0, i32 noundef %1) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  br label %313

310:                                              ; preds = %302, %297
  %311 = phi ptr [ %294, %297 ], [ %299, %302 ]
  call fastcc void @cros_typec_remove_cable(ptr noundef %0, i32 noundef %1) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  %312 = icmp slt ptr %311, null
  br i1 %312, label %313, label %315

313:                                              ; preds = %310, %307
  %314 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %314, ptr noundef nonnull @.str.25, i32 noundef %1) #8
  br label %326

315:                                              ; preds = %310, %306
  %316 = load ptr, ptr %214, align 4
  %317 = getelementptr inbounds %struct.cros_typec_port, ptr %316, i32 0, i32 15
  store i8 1, ptr %317, align 1
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %7) #7
  %318 = getelementptr inbounds i8, ptr %7, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(130) %318, i8 0, i64 130, i1 false) #7
  store i8 %28, ptr %7, align 1
  %319 = getelementptr inbounds %struct.ec_params_typec_control, ptr %7, i32 0, i32 1
  store i8 1, ptr %319, align 1
  %320 = getelementptr inbounds %struct.ec_params_typec_control, ptr %7, i32 0, i32 3
  store i32 2, ptr %320, align 1
  %321 = load ptr, ptr %29, align 4
  %322 = call i32 @cros_ec_command(ptr noundef %321, i32 noundef 0, i32 noundef 306, ptr noundef nonnull %7, i32 noundef 132, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %7) #7
  %323 = icmp slt i32 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %315
  %325 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %325, ptr noundef nonnull @.str.24, i32 noundef %1) #8
  br label %326

326:                                              ; preds = %324, %315, %313, %213, %209, %117, %110, %103
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %14) #7
  br label %327

327:                                              ; preds = %326, %95
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7
  store i8 %28, ptr %6, align 1
  %328 = load ptr, ptr %29, align 4
  %329 = call i32 @cros_ec_command(ptr noundef %328, i32 noundef 0, i32 noundef 282, ptr noundef nonnull %6, i32 noundef 1, ptr noundef nonnull %19, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7
  %330 = icmp slt i32 %329, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %327
  %332 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %332, ptr noundef nonnull @.str.18, i32 noundef %1, i32 noundef %329) #8
  br label %519

333:                                              ; preds = %327
  %334 = getelementptr %struct.cros_typec_data, ptr %0, i32 0, i32 4, i32 %1
  %335 = load ptr, ptr %334, align 4
  %336 = getelementptr inbounds %struct.cros_typec_port, ptr %335, i32 0, i32 11
  %337 = load i8, ptr %336, align 8
  %338 = load i8, ptr %19, align 1
  %339 = icmp eq i8 %337, %338
  br i1 %339, label %343, label %340

340:                                              ; preds = %333
  %341 = getelementptr inbounds %struct.ec_response_usb_pd_control_v2, ptr %18, i32 0, i32 1
  %342 = load i8, ptr %341, align 1
  br label %349

343:                                              ; preds = %333
  %344 = getelementptr inbounds %struct.cros_typec_port, ptr %335, i32 0, i32 12
  %345 = load i8, ptr %344, align 1
  %346 = getelementptr inbounds %struct.ec_response_usb_pd_control_v2, ptr %18, i32 0, i32 1
  %347 = load i8, ptr %346, align 1
  %348 = icmp eq i8 %345, %347
  br i1 %348, label %519, label %349

349:                                              ; preds = %343, %340
  %350 = phi i8 [ %342, %340 ], [ %347, %343 ]
  store i8 %338, ptr %336, align 8
  %351 = getelementptr inbounds %struct.ec_response_usb_pd_control_v2, ptr %18, i32 0, i32 1
  %352 = load ptr, ptr %334, align 4
  %353 = getelementptr inbounds %struct.cros_typec_port, ptr %352, i32 0, i32 12
  store i8 %350, ptr %353, align 1
  %354 = load ptr, ptr %334, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  %355 = zext i8 %338 to i32
  %356 = icmp eq i8 %338, 0
  br i1 %356, label %357, label %370

357:                                              ; preds = %349
  %358 = getelementptr inbounds %struct.cros_typec_port, ptr %354, i32 0, i32 10
  store ptr null, ptr %358, align 4
  %359 = getelementptr inbounds %struct.cros_typec_port, ptr %354, i32 0, i32 10, i32 1
  store i32 1, ptr %359, align 4
  %360 = getelementptr inbounds %struct.cros_typec_port, ptr %354, i32 0, i32 10, i32 2
  store ptr null, ptr %360, align 4
  %361 = getelementptr inbounds %struct.cros_typec_port, ptr %354, i32 0, i32 9
  %362 = load ptr, ptr %361, align 8
  %363 = call i32 @usb_role_switch_set_role(ptr noundef %362, i32 noundef 0) #7
  %364 = getelementptr inbounds %struct.cros_typec_port, ptr %354, i32 0, i32 7
  %365 = load ptr, ptr %364, align 8
  %366 = call i32 @typec_switch_set(ptr noundef %365, i32 noundef 0) #7
  %367 = getelementptr inbounds %struct.cros_typec_port, ptr %354, i32 0, i32 8
  %368 = load ptr, ptr %367, align 4
  %369 = call i32 @typec_mux_set(ptr noundef %368, ptr noundef %358) #7
  br label %501

370:                                              ; preds = %349
  %371 = and i32 %355, 4
  %372 = icmp eq i32 %371, 0
  %373 = select i1 %372, i32 1, i32 2
  %374 = getelementptr inbounds %struct.cros_typec_port, ptr %354, i32 0, i32 7
  %375 = load ptr, ptr %374, align 8
  %376 = call i32 @typec_switch_set(ptr noundef %375, i32 noundef %373) #7
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %512

378:                                              ; preds = %370
  %379 = load ptr, ptr %334, align 4
  %380 = getelementptr inbounds %struct.cros_typec_port, ptr %379, i32 0, i32 9
  %381 = load ptr, ptr %380, align 8
  %382 = load i8, ptr %351, align 1
  %383 = and i8 %382, 2
  %384 = icmp eq i8 %383, 0
  %385 = select i1 %384, i32 2, i32 1
  %386 = call i32 @usb_role_switch_set_role(ptr noundef %381, i32 noundef %385) #7
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %512

388:                                              ; preds = %378
  %389 = and i32 %355, 128
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %420, label %391

391:                                              ; preds = %388
  %392 = load ptr, ptr %334, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 536870912, ptr %4, align 8, !annotation !8
  %393 = getelementptr inbounds %struct.ec_response_usb_pd_control_v2, ptr %18, i32 0, i32 8
  %394 = load i8, ptr %393, align 1
  %395 = zext i8 %394 to i32
  %396 = shl nuw nsw i32 %395, 21
  %397 = or i32 %396, 536870912
  store i32 %397, ptr %4, align 8
  %398 = getelementptr inbounds %struct.ec_response_usb_pd_control_v2, ptr %18, i32 0, i32 7
  %399 = load i8, ptr %398, align 1
  %400 = zext i8 %399 to i32
  %401 = and i32 %400, 2
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %405, label %403

403:                                              ; preds = %391
  %404 = or i32 %396, 538443776
  store i32 %404, ptr %4, align 8
  br label %410

405:                                              ; preds = %391
  %406 = and i32 %400, 1
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %410, label %408

408:                                              ; preds = %405
  %409 = or i32 %396, 537395200
  store i32 %409, ptr %4, align 8
  br label %410

410:                                              ; preds = %408, %405, %403
  %411 = lshr i8 %399, 3
  %412 = and i8 %411, 1
  %413 = getelementptr inbounds %struct.enter_usb_data, ptr %4, i32 0, i32 1
  store i8 %412, ptr %413, align 4
  %414 = getelementptr inbounds %struct.cros_typec_port, ptr %392, i32 0, i32 10
  store ptr null, ptr %414, align 4
  %415 = getelementptr inbounds %struct.cros_typec_port, ptr %392, i32 0, i32 10, i32 2
  store ptr %4, ptr %415, align 4
  %416 = getelementptr inbounds %struct.cros_typec_port, ptr %392, i32 0, i32 10, i32 1
  store i32 4, ptr %416, align 4
  %417 = getelementptr inbounds %struct.cros_typec_port, ptr %392, i32 0, i32 8
  %418 = load ptr, ptr %417, align 4
  %419 = call i32 @typec_mux_set(ptr noundef %418, ptr noundef %414) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  br label %501

420:                                              ; preds = %388
  %421 = and i32 %355, 64
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %478, label %423

423:                                              ; preds = %420
  %424 = load ptr, ptr %334, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  %425 = load i32, ptr %31, align 4
  %426 = icmp ult i32 %425, 2
  br i1 %426, label %427, label %429

427:                                              ; preds = %423
  %428 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %428, ptr noundef nonnull @.str.36, i32 noundef %425) #8
  br label %476

429:                                              ; preds = %423
  %430 = getelementptr inbounds %struct.ec_response_usb_pd_control_v2, ptr %18, i32 0, i32 7
  %431 = load i8, ptr %430, align 1
  %432 = and i8 %431, 4
  %433 = icmp eq i8 %432, 0
  %434 = select i1 %433, i32 1, i32 65536
  store i32 %434, ptr %3, align 4
  %435 = getelementptr inbounds %struct.typec_thunderbolt_data, ptr %3, i32 0, i32 1
  %436 = getelementptr inbounds %struct.ec_response_usb_pd_control_v2, ptr %18, i32 0, i32 8
  %437 = load i8, ptr %436, align 1
  %438 = and i8 %437, 7
  %439 = zext i8 %438 to i32
  %440 = shl nuw nsw i32 %439, 16
  %441 = and i8 %431, 2
  %442 = icmp eq i8 %441, 0
  %443 = select i1 %442, i32 1, i32 2097153
  %444 = or i32 %443, %440
  %445 = and i8 %431, 8
  %446 = zext i8 %445 to i32
  %447 = shl nuw nsw i32 %446, 20
  %448 = or i32 %444, %447
  %449 = getelementptr inbounds %struct.ec_response_usb_pd_control_v2, ptr %18, i32 0, i32 9
  %450 = load i8, ptr %449, align 1
  %451 = and i8 %450, 3
  %452 = zext i8 %451 to i32
  %453 = shl nuw nsw i32 %452, 19
  %454 = or i32 %448, %453
  store i32 %454, ptr %435, align 4
  %455 = getelementptr inbounds %struct.typec_thunderbolt_data, ptr %3, i32 0, i32 2
  %456 = and i8 %431, 1
  %457 = zext i8 %456 to i32
  %458 = shl nuw nsw i32 %457, 24
  %459 = or i32 %440, %458
  store i32 %459, ptr %455, align 4
  %460 = getelementptr inbounds %struct.cros_typec_port, ptr %424, i32 0, i32 10
  %461 = load ptr, ptr %460, align 4
  %462 = icmp eq ptr %461, null
  br i1 %462, label %463, label %470

463:                                              ; preds = %429
  %464 = getelementptr %struct.cros_typec_port, ptr %424, i32 0, i32 13, i32 1
  store ptr %464, ptr %460, align 4
  %465 = getelementptr inbounds %struct.cros_typec_port, ptr %424, i32 0, i32 10, i32 1
  store i32 0, ptr %465, align 4
  %466 = getelementptr inbounds %struct.cros_typec_port, ptr %424, i32 0, i32 8
  %467 = load ptr, ptr %466, align 4
  %468 = call i32 @typec_mux_set(ptr noundef %467, ptr noundef %460) #7
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %470, label %476

470:                                              ; preds = %463, %429
  %471 = getelementptr inbounds %struct.cros_typec_port, ptr %424, i32 0, i32 10, i32 2
  store ptr %3, ptr %471, align 4
  %472 = getelementptr inbounds %struct.cros_typec_port, ptr %424, i32 0, i32 10, i32 1
  store i32 2, ptr %472, align 4
  %473 = getelementptr inbounds %struct.cros_typec_port, ptr %424, i32 0, i32 8
  %474 = load ptr, ptr %473, align 4
  %475 = call i32 @typec_mux_set(ptr noundef %474, ptr noundef %460) #7
  br label %476

476:                                              ; preds = %470, %463, %427
  %477 = phi i32 [ -524, %427 ], [ %475, %470 ], [ %468, %463 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  br label %501

478:                                              ; preds = %420
  %479 = and i32 %355, 2
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %483, label %481

481:                                              ; preds = %478
  %482 = call fastcc i32 @cros_typec_enable_dp(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %18) #7
  br label %501

483:                                              ; preds = %478
  %484 = and i32 %355, 32
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %492, label %486

486:                                              ; preds = %483
  %487 = getelementptr inbounds %struct.cros_typec_port, ptr %354, i32 0, i32 10
  %488 = getelementptr inbounds %struct.cros_typec_port, ptr %354, i32 0, i32 10, i32 1
  store i32 0, ptr %488, align 4
  %489 = getelementptr inbounds %struct.cros_typec_port, ptr %354, i32 0, i32 8
  %490 = load ptr, ptr %489, align 4
  %491 = call i32 @typec_mux_set(ptr noundef %490, ptr noundef %487) #7
  br label %501

492:                                              ; preds = %483
  %493 = and i32 %355, 1
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %501, label %495

495:                                              ; preds = %492
  %496 = getelementptr inbounds %struct.cros_typec_port, ptr %354, i32 0, i32 10
  store ptr null, ptr %496, align 4
  %497 = getelementptr inbounds %struct.cros_typec_port, ptr %354, i32 0, i32 10, i32 1
  store i32 1, ptr %497, align 4
  %498 = getelementptr inbounds %struct.cros_typec_port, ptr %354, i32 0, i32 8
  %499 = load ptr, ptr %498, align 4
  %500 = call i32 @typec_mux_set(ptr noundef %499, ptr noundef %496) #7
  br label %501

501:                                              ; preds = %495, %492, %486, %481, %476, %410, %357
  %502 = phi i32 [ %369, %357 ], [ %419, %410 ], [ %477, %476 ], [ %482, %481 ], [ %491, %486 ], [ %500, %495 ], [ 0, %492 ]
  %503 = getelementptr inbounds %struct.cros_typec_data, ptr %0, i32 0, i32 8
  %504 = load i8, ptr %503, align 1, !range !9
  %505 = icmp eq i8 %504, 0
  br i1 %505, label %514, label %506

506:                                              ; preds = %501
  store i8 %28, ptr %5, align 1
  %507 = load ptr, ptr %29, align 4
  %508 = call i32 @cros_ec_command(ptr noundef %507, i32 noundef 0, i32 noundef 1539, ptr noundef nonnull %5, i32 noundef 1, ptr noundef null, i32 noundef 0) #7
  %509 = icmp slt i32 %508, 0
  br i1 %509, label %510, label %514

510:                                              ; preds = %506
  %511 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %511, ptr noundef nonnull @.str.35, i32 noundef %1) #8
  br label %514

512:                                              ; preds = %378, %370
  %513 = phi i32 [ %386, %378 ], [ %376, %370 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  br label %516

514:                                              ; preds = %510, %506, %501
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  %515 = icmp eq i32 %502, 0
  br i1 %515, label %519, label %516

516:                                              ; preds = %514, %512
  %517 = phi i32 [ %513, %512 ], [ %502, %514 ]
  %518 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %518, ptr noundef nonnull @.str.19, i32 noundef %517) #8
  br label %519

519:                                              ; preds = %516, %514, %343, %331, %27, %25
  %520 = phi i32 [ -22, %25 ], [ 0, %331 ], [ %33, %27 ], [ 0, %343 ], [ %517, %516 ], [ 0, %514 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %18) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #7
  ret i32 %520
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_typec_event(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 12
  %5 = tail call zeroext i1 @flush_work(ptr noundef %4) #7
  %6 = load ptr, ptr @system_wq, align 4
  %7 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %6, ptr noundef %4) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_usbpd_register_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cros_unregister_ports(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.cros_typec_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %24, %1
  %6 = phi i32 [ %25, %24 ], [ %3, %1 ]
  %7 = phi i32 [ %26, %24 ], [ 0, %1 ]
  %8 = getelementptr %struct.cros_typec_data, ptr %0, i32 0, i32 4, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %5
  tail call fastcc void @cros_typec_remove_partner(ptr noundef %0, i32 noundef %7)
  tail call fastcc void @cros_typec_remove_cable(ptr noundef %0, i32 noundef %7)
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr inbounds %struct.cros_typec_port, ptr %12, i32 0, i32 9
  %14 = load ptr, ptr %13, align 8
  tail call void @usb_role_switch_put(ptr noundef %14) #7
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.cros_typec_port, ptr %15, i32 0, i32 7
  %17 = load ptr, ptr %16, align 8
  tail call void @typec_switch_put(ptr noundef %17) #7
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr inbounds %struct.cros_typec_port, ptr %18, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  tail call void @typec_mux_put(ptr noundef %20) #7
  %21 = load ptr, ptr %8, align 4
  %22 = load ptr, ptr %21, align 8
  tail call void @typec_unregister_port(ptr noundef %22) #7
  %23 = load i32, ptr %2, align 4
  br label %24

24:                                               ; preds = %11, %5
  %25 = phi i32 [ %6, %5 ], [ %23, %11 ]
  %26 = add nuw nsw i32 %7, 1
  %27 = icmp slt i32 %26, %25
  br i1 %27, label %5, label %28

28:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_find_port_power_role(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_find_port_data_role(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_find_power_role(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_typec_mux_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_typec_switch_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_usb_role_switch_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_role_switch_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_switch_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_mux_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_set_orientation(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_set_data_role(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_set_pwr_role(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_set_vconn_role(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cros_typec_remove_partner(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr %struct.cros_typec_data, ptr %0, i32 0, i32 4, i32 %1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cros_typec_port, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cros_typec_port, ptr %4, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %22, label %12

12:                                               ; preds = %12, %8
  %13 = phi ptr [ %15, %12 ], [ %10, %8 ]
  %14 = getelementptr i8, ptr %13, i32 -4
  %15 = load ptr, ptr %13, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %15, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  %19 = load ptr, ptr %14, align 4
  tail call void @typec_unregister_altmode(ptr noundef %19) #7
  %20 = load ptr, ptr %0, align 4
  tail call void @devm_kfree(ptr noundef %20, ptr noundef %14) #7
  %21 = icmp eq ptr %15, %9
  br i1 %21, label %22, label %12

22:                                               ; preds = %12, %8
  %23 = getelementptr inbounds %struct.cros_typec_port, ptr %4, i32 0, i32 10
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.cros_typec_port, ptr %4, i32 0, i32 10, i32 1
  store i32 1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.cros_typec_port, ptr %4, i32 0, i32 10, i32 2
  store ptr null, ptr %25, align 4
  %26 = getelementptr inbounds %struct.cros_typec_port, ptr %4, i32 0, i32 9
  %27 = load ptr, ptr %26, align 8
  %28 = tail call i32 @usb_role_switch_set_role(ptr noundef %27, i32 noundef 0) #7
  %29 = getelementptr inbounds %struct.cros_typec_port, ptr %4, i32 0, i32 7
  %30 = load ptr, ptr %29, align 8
  %31 = tail call i32 @typec_switch_set(ptr noundef %30, i32 noundef 0) #7
  %32 = getelementptr inbounds %struct.cros_typec_port, ptr %4, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @typec_mux_set(ptr noundef %33, ptr noundef %23) #7
  %35 = load ptr, ptr %5, align 4
  tail call void @typec_unregister_partner(ptr noundef %35) #7
  store ptr null, ptr %5, align 4
  %36 = getelementptr inbounds %struct.cros_typec_port, ptr %4, i32 0, i32 5
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %36, i8 0, i32 24, i1 false)
  %37 = getelementptr inbounds %struct.cros_typec_port, ptr %4, i32 0, i32 14
  store i8 0, ptr %37, align 8
  br label %38

38:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cros_typec_remove_cable(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr %struct.cros_typec_data, ptr %0, i32 0, i32 4, i32 %1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cros_typec_port, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cros_typec_port, ptr %4, i32 0, i32 18
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %22, label %12

12:                                               ; preds = %12, %8
  %13 = phi ptr [ %15, %12 ], [ %10, %8 ]
  %14 = getelementptr i8, ptr %13, i32 -4
  %15 = load ptr, ptr %13, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %15, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  %19 = load ptr, ptr %14, align 4
  tail call void @typec_unregister_altmode(ptr noundef %19) #7
  %20 = load ptr, ptr %0, align 4
  tail call void @devm_kfree(ptr noundef %20, ptr noundef %14) #7
  %21 = icmp eq ptr %15, %9
  br i1 %21, label %22, label %12

22:                                               ; preds = %12, %8
  %23 = getelementptr inbounds %struct.cros_typec_port, ptr %4, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  tail call void @typec_unregister_plug(ptr noundef %24) #7
  store ptr null, ptr %23, align 4
  %25 = load ptr, ptr %5, align 8
  tail call void @typec_unregister_cable(ptr noundef %25) #7
  store ptr null, ptr %5, align 8
  %26 = getelementptr inbounds %struct.cros_typec_port, ptr %4, i32 0, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %26, i8 0, i32 24, i1 false)
  %27 = getelementptr inbounds %struct.cros_typec_port, ptr %4, i32 0, i32 15
  store i8 0, ptr %27, align 1
  br label %28

28:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_register_partner(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_unregister_partner(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_unregister_altmode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_role_switch_set_role(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_switch_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_mux_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_unregister_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_unregister_cable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_set_pwr_opmode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_partner_set_pd_revision(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_partner_set_identity(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cros_typec_register_altmodes(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = alloca %struct.typec_altmode_desc, align 4
  %5 = getelementptr %struct.cros_typec_data, ptr %0, i32 0, i32 4, i32 %1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cros_typec_port, ptr %6, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false), !annotation !8
  %9 = getelementptr inbounds %struct.ec_response_typec_discovery, ptr %8, i32 0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %72, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.typec_altmode_desc, ptr %4, i32 0, i32 1
  %14 = getelementptr inbounds %struct.typec_altmode_desc, ptr %4, i32 0, i32 2
  %15 = getelementptr inbounds %struct.cros_typec_port, ptr %6, i32 0, i32 4
  %16 = getelementptr inbounds %struct.cros_typec_port, ptr %6, i32 0, i32 2
  %17 = getelementptr inbounds %struct.cros_typec_port, ptr %6, i32 0, i32 18
  %18 = getelementptr inbounds %struct.cros_typec_port, ptr %6, i32 0, i32 18, i32 1
  %19 = getelementptr inbounds %struct.cros_typec_port, ptr %6, i32 0, i32 17
  %20 = getelementptr inbounds %struct.cros_typec_port, ptr %6, i32 0, i32 17, i32 1
  %21 = select i1 %2, ptr %20, ptr %18
  %22 = select i1 %2, ptr %19, ptr %17
  br label %23

23:                                               ; preds = %66, %12
  %24 = phi i8 [ %10, %12 ], [ %67, %66 ]
  %25 = phi i32 [ 0, %12 ], [ %69, %66 ]
  %26 = phi i32 [ 0, %12 ], [ %68, %66 ]
  %27 = getelementptr %struct.ec_response_typec_discovery, ptr %8, i32 0, i32 4, i32 %25, i32 1
  %28 = load i16, ptr %27, align 1
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %66, label %30

30:                                               ; preds = %23
  %31 = getelementptr %struct.ec_response_typec_discovery, ptr %8, i32 0, i32 4, i32 %25
  br label %32

32:                                               ; preds = %55, %30
  %33 = phi i32 [ 0, %30 ], [ %60, %55 ]
  %34 = phi i32 [ %26, %30 ], [ %59, %55 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false)
  %35 = load i16, ptr %31, align 1
  store i16 %35, ptr %4, align 4
  %36 = trunc i32 %33 to i8
  store i8 %36, ptr %13, align 2
  %37 = getelementptr %struct.ec_response_typec_discovery, ptr %8, i32 0, i32 4, i32 %25, i32 2, i32 %33
  %38 = load i32, ptr %37, align 1
  store i32 %38, ptr %14, align 4
  br i1 %2, label %39, label %42

39:                                               ; preds = %32
  %40 = load ptr, ptr %16, align 4
  %41 = call ptr @typec_partner_register_altmode(ptr noundef %40, ptr noundef nonnull %4) #7
  br label %45

42:                                               ; preds = %32
  %43 = load ptr, ptr %15, align 4
  %44 = call ptr @typec_plug_register_altmode(ptr noundef %43, ptr noundef nonnull %4) #7
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi ptr [ %41, %39 ], [ %44, %42 ]
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = ptrtoint ptr %46 to i32
  br label %88

50:                                               ; preds = %45
  %51 = load ptr, ptr %0, align 4
  %52 = call noalias ptr @devm_kmalloc(ptr noundef %51, i32 noundef 12, i32 noundef 3520) #7
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  call void @typec_unregister_altmode(ptr noundef %46) #7
  br label %88

55:                                               ; preds = %50
  store ptr %46, ptr %52, align 4
  %56 = getelementptr inbounds %struct.cros_typec_altmode_node, ptr %52, i32 0, i32 1
  %57 = load ptr, ptr %21, align 4
  store ptr %56, ptr %21, align 4
  store ptr %22, ptr %56, align 4
  %58 = getelementptr inbounds %struct.cros_typec_altmode_node, ptr %52, i32 0, i32 1, i32 1
  store ptr %57, ptr %58, align 4
  store volatile ptr %56, ptr %57, align 4
  %59 = add i32 %34, 1
  %60 = add nuw nsw i32 %33, 1
  %61 = load i16, ptr %27, align 1
  %62 = zext i16 %61 to i32
  %63 = icmp ult i32 %60, %62
  br i1 %63, label %32, label %64

64:                                               ; preds = %55
  %65 = load i8, ptr %9, align 1
  br label %66

66:                                               ; preds = %64, %23
  %67 = phi i8 [ %24, %23 ], [ %65, %64 ]
  %68 = phi i32 [ %26, %23 ], [ %59, %64 ]
  %69 = add nuw nsw i32 %25, 1
  %70 = zext i8 %67 to i32
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %23, label %72

72:                                               ; preds = %66, %3
  %73 = phi i32 [ 0, %3 ], [ %68, %66 ]
  br i1 %2, label %74, label %78

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.cros_typec_port, ptr %6, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = call i32 @typec_partner_set_num_altmodes(ptr noundef %76, i32 noundef %73) #7
  br label %82

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.cros_typec_port, ptr %6, i32 0, i32 4
  %80 = load ptr, ptr %79, align 4
  %81 = call i32 @typec_plug_set_num_altmodes(ptr noundef %80, i32 noundef %73) #7
  br label %82

82:                                               ; preds = %78, %74
  %83 = phi i32 [ %77, %74 ], [ %81, %78 ]
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %106

85:                                               ; preds = %82
  %86 = load ptr, ptr %0, align 4
  %87 = select i1 %2, ptr @.str.31, ptr @.str.32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.30, ptr noundef nonnull %87, i32 noundef %1) #8
  br label %88

88:                                               ; preds = %85, %54, %48
  %89 = phi i32 [ %49, %48 ], [ -12, %54 ], [ %83, %85 ]
  %90 = load ptr, ptr %5, align 4
  %91 = getelementptr inbounds %struct.cros_typec_port, ptr %90, i32 0, i32 17
  %92 = getelementptr inbounds %struct.cros_typec_port, ptr %90, i32 0, i32 18
  %93 = select i1 %2, ptr %91, ptr %92
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, %93
  br i1 %95, label %106, label %96

96:                                               ; preds = %96, %88
  %97 = phi ptr [ %99, %96 ], [ %94, %88 ]
  %98 = getelementptr i8, ptr %97, i32 -4
  %99 = load ptr, ptr %97, align 4
  %100 = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  store ptr %101, ptr %102, align 4
  store volatile ptr %99, ptr %101, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %97, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %100, align 4
  %103 = load ptr, ptr %98, align 4
  call void @typec_unregister_altmode(ptr noundef %103) #7
  %104 = load ptr, ptr %0, align 4
  call void @devm_kfree(ptr noundef %104, ptr noundef %98) #7
  %105 = icmp eq ptr %99, %93
  br i1 %105, label %106, label %96

106:                                              ; preds = %96, %88, %82
  %107 = phi i32 [ 0, %82 ], [ %89, %88 ], [ %89, %96 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #7
  ret i32 %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_partner_register_altmode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_plug_register_altmode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_partner_set_num_altmodes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_plug_set_num_altmodes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_register_cable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_register_plug(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cros_typec_enable_dp(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = alloca %struct.typec_displayport_data, align 8
  %5 = getelementptr %struct.cros_typec_data, ptr %0, i32 0, i32 4, i32 %1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %7 = getelementptr inbounds %struct.cros_typec_data, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.36, i32 noundef %8) #8
  br label %53

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ec_response_usb_pd_control_v2, ptr %2, i32 0, i32 5
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.37) #8
  br label %53

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.cros_typec_port, ptr %6, i32 0, i32 11
  %20 = load i8, ptr %19, align 8
  %21 = and i8 %20, 8
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i32 8, i32 264
  %24 = shl i8 %20, 3
  %25 = and i8 %24, -128
  %26 = zext i8 %25 to i32
  %27 = or i32 %23, %26
  store i32 %27, ptr %4, align 8
  %28 = zext i8 %14 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = getelementptr inbounds %struct.typec_displayport_data, ptr %4, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.cros_typec_port, ptr %6, i32 0, i32 10
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %18
  %35 = getelementptr inbounds %struct.cros_typec_port, ptr %6, i32 0, i32 13
  store ptr %35, ptr %31, align 4
  %36 = getelementptr inbounds %struct.cros_typec_port, ptr %6, i32 0, i32 10, i32 1
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.cros_typec_port, ptr %6, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @typec_mux_set(ptr noundef %38, ptr noundef %31) #7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %34, %18
  %42 = getelementptr inbounds %struct.cros_typec_port, ptr %6, i32 0, i32 10, i32 2
  store ptr %4, ptr %42, align 4
  %43 = load i8, ptr %13, align 1
  %44 = call i8 @llvm.cttz.i8(i8 %43, i1 true), !range !10
  %45 = icmp eq i8 %43, 0
  %46 = add nuw nsw i8 %44, 3
  %47 = select i1 %45, i8 2, i8 %46
  %48 = zext i8 %47 to i32
  %49 = getelementptr inbounds %struct.cros_typec_port, ptr %6, i32 0, i32 10, i32 1
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.cros_typec_port, ptr %6, i32 0, i32 8
  %51 = load ptr, ptr %50, align 4
  %52 = call i32 @typec_mux_set(ptr noundef %51, ptr noundef %31) #7
  br label %53

53:                                               ; preds = %41, %34, %16, %10
  %54 = phi i32 [ -524, %10 ], [ %52, %41 ], [ -22, %16 ], [ %39, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_typec_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cros_typec_data, ptr %3, i32 0, i32 6
  %5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %4) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_typec_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cros_typec_data, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr @system_wq, align 4
  %6 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %5, ptr noundef %4) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{i8 0, i8 9}
