; ModuleID = '/llk/IR/drivers/usb/core/port.c_pt.bc'
source_filename = "../drivers/usb/core/port.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.component_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.usb_hub = type { ptr, ptr, %struct.kref, ptr, ptr, ptr, %struct.mutex, i32, i32, [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, %struct.usb_tt, i32, i32, i8, [31 x i8], %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.spinlock, %struct.timer_list, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.usb_tt = type { ptr, i32, i32, ptr, %struct.spinlock, %struct.list_head, %struct.work_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_port = type { ptr, %struct.device, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, i8, i32, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.67, i32 }
%union.anon.67 = type { ptr }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.64 }>
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { [4 x i8], [4 x i8] }

@.str = private unnamed_addr constant [9 x i8] c"usb_port\00", align 1
@usb_port_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb_port_runtime_suspend, ptr @usb_port_runtime_resume, ptr null }, align 4
@usb_port_device_type = dso_local global %struct.device_type { ptr @.str, ptr null, ptr null, ptr null, ptr @usb_port_device_release, ptr @usb_port_pm_ops }, align 4
@port_dev_usb3_group = internal global [3 x ptr] [ptr @port_dev_attr_grp, ptr @port_dev_usb3_attr_grp, ptr null], align 4
@port_dev_group = internal global [2 x ptr] [ptr @port_dev_attr_grp, ptr null], align 4
@usb_port_driver = internal global %struct.device_driver { ptr @.str.22, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb_port_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%s-port%d\00", align 1
@usb_hub_create_port_device.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"&port_dev->status_lock\00", align 1
@connector_ops = internal constant %struct.component_ops { ptr @connector_bind, ptr @connector_unbind }, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to add component\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"failed to expose pm_qos_no_poweroff\0A\00", align 1
@usb_port_block_power_off = internal unnamed_addr global i1 false, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@port_dev_attr_grp = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @port_dev_attrs, ptr null }, align 4
@port_dev_usb3_attr_grp = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @port_dev_usb3_attrs, ptr null }, align 4
@port_dev_attrs = internal global [5 x ptr] [ptr @dev_attr_connect_type, ptr @dev_attr_location, ptr @dev_attr_quirks, ptr @dev_attr_over_current_count, ptr null], align 4
@dev_attr_connect_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @connect_type_show, ptr null }, align 4
@dev_attr_location = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @location_show, ptr null }, align 4
@dev_attr_quirks = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420 }, ptr @quirks_show, ptr @quirks_store }, align 4
@dev_attr_over_current_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @over_current_count_show, ptr null }, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"connect_type\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"hotplug\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"hardwired\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"not used\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"0x%08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"quirks\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"over_current_count\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@port_dev_usb3_attrs = internal global [2 x ptr] [ptr @dev_attr_usb3_lpm_permit, ptr null], align 4
@dev_attr_usb3_lpm_permit = internal global %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420 }, ptr @usb3_lpm_permit_show, ptr @usb3_lpm_permit_store }, align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"usb3_lpm_permit\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"u1_u2\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"u1\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"u2\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"connector\00", align 1
@link_peers_report.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c"\014usb: port power management may be unreliable\0A\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"peer\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"drivers/usb/core/port.c\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"%s and %s are not peers?\0A\00", align 1
@switch.table.connect_type_show = private unnamed_addr constant [3 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_port_device_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = getelementptr i8, ptr %0, i32 480
  %4 = load ptr, ptr %3, align 8
  tail call void @kfree(ptr noundef %4) #9
  tail call void @kfree(ptr noundef %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_hub_create_port_device(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 536) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %156, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 36) #10
  %11 = getelementptr inbounds %struct.usb_port, ptr %6, i32 0, i32 4
  store ptr %10, ptr %11, align 8
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void @kfree(ptr noundef nonnull %6) #9
  br label %156

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 27
  %16 = load ptr, ptr %15, align 4
  %17 = add i32 %1, -1
  %18 = getelementptr ptr, ptr %16, i32 %17
  store ptr %6, ptr %18, align 4
  %19 = trunc i32 %1 to i8
  %20 = getelementptr inbounds %struct.usb_port, ptr %6, i32 0, i32 9
  store i8 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 13
  tail call void @_set_bit(i32 noundef %1, ptr noundef %21) #9
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.usb_port, ptr %6, i32 0, i32 1
  %24 = getelementptr inbounds %struct.usb_port, ptr %6, i32 0, i32 1, i32 1
  store ptr %22, ptr %24, align 4
  %25 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 16, i32 5
  %26 = load i8, ptr %25, align 2
  %27 = icmp eq i8 %26, 3
  br i1 %27, label %28, label %32

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.usb_port, ptr %6, i32 0, i32 11
  %30 = load i8, ptr %29, align 4
  %31 = or i8 %30, 6
  store i8 %31, ptr %29, align 4
  br label %32

32:                                               ; preds = %28, %14
  %33 = phi ptr [ @port_dev_usb3_group, %28 ], [ @port_dev_group, %14 ]
  %34 = getelementptr inbounds %struct.usb_port, ptr %6, i32 0, i32 1, i32 32
  store ptr %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.usb_port, ptr %6, i32 0, i32 1, i32 4
  store ptr @usb_port_device_type, ptr %35, align 8
  %36 = getelementptr inbounds %struct.usb_port, ptr %6, i32 0, i32 1, i32 6
  store ptr @usb_port_driver, ptr %36, align 8
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 16, i32 5
  %39 = load i8, ptr %38, align 2
  %40 = icmp eq i8 %39, 3
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.usb_port, ptr %6, i32 0, i32 11
  %43 = load i8, ptr %42, align 4
  %44 = or i8 %43, 1
  store i8 %44, ptr %42, align 4
  br label %45

45:                                               ; preds = %41, %32
  %46 = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 15, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 15
  %51 = load ptr, ptr %50, align 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi ptr [ %51, %49 ], [ %47, %45 ]
  %54 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %23, ptr noundef nonnull @.str.1, ptr noundef %53, i32 noundef %1) #9
  %55 = getelementptr inbounds %struct.usb_port, ptr %6, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %55, ptr noundef nonnull @.str.2, ptr noundef nonnull @usb_hub_create_port_device.__key) #9
  %56 = tail call i32 @device_register(ptr noundef %23) #9
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  tail call void @put_device(ptr noundef %23) #9
  br label %156

59:                                               ; preds = %52
  %60 = load ptr, ptr %11, align 8
  %61 = tail call i32 @dev_pm_qos_add_request(ptr noundef %23, ptr noundef %60, i32 noundef 5, i32 noundef 1) #9
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  tail call void @device_unregister(ptr noundef %23) #9
  br label %156

64:                                               ; preds = %59
  %65 = tail call i32 @component_add(ptr noundef %23, ptr noundef nonnull @connector_ops) #9
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.3) #11
  tail call void @device_unregister(ptr noundef %23) #9
  br label %156

68:                                               ; preds = %64
  %69 = load ptr, ptr %15, align 4
  %70 = getelementptr ptr, ptr %69, i32 %17
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %3, align 4
  %73 = getelementptr inbounds %struct.usb_port, ptr %71, i32 0, i32 6
  %74 = load i32, ptr %73, align 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %68
  %77 = tail call i32 @usb_for_each_dev(ptr noundef %71, ptr noundef nonnull @match_location) #9
  br label %127

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.usb_device, ptr %72, i32 0, i32 11
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.usb_device, ptr %72, i32 0, i32 12
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.usb_hcd, ptr %84, i32 0, i32 24
  %86 = load ptr, ptr %85, align 8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %127, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.usb_bus, ptr %86, i32 0, i32 11
  br label %107

90:                                               ; preds = %78
  %91 = tail call ptr @usb_hub_to_struct_hub(ptr noundef nonnull %80) #9
  %92 = icmp eq ptr %91, null
  br i1 %92, label %127, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.usb_hub, ptr %91, i32 0, i32 27
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.usb_device, ptr %72, i32 0, i32 25
  %97 = load i8, ptr %96, align 2
  %98 = zext i8 %97 to i32
  %99 = add nsw i32 %98, -1
  %100 = getelementptr ptr, ptr %95, i32 %99
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %127, label %103

103:                                              ; preds = %93
  %104 = getelementptr inbounds %struct.usb_port, ptr %101, i32 0, i32 3
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %127, label %107

107:                                              ; preds = %103, %88
  %108 = phi ptr [ %89, %88 ], [ %105, %103 ]
  %109 = load ptr, ptr %108, align 8
  %110 = tail call ptr @usb_hub_to_struct_hub(ptr noundef %109) #9
  %111 = icmp eq ptr %110, null
  br i1 %111, label %127, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.usb_device, ptr %109, i32 0, i32 35
  %114 = load i32, ptr %113, align 4
  %115 = icmp slt i32 %114, %1
  br i1 %115, label %127, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.usb_hub, ptr %110, i32 0, i32 27
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr ptr, ptr %118, i32 %17
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %127, label %122

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.usb_port, ptr %120, i32 0, i32 6
  %124 = load i32, ptr %123, align 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  tail call fastcc void @link_peers_report(ptr noundef %71, ptr noundef nonnull %120) #9
  br label %127

127:                                              ; preds = %126, %122, %116, %112, %107, %103, %93, %90, %82, %76
  %128 = tail call i32 @__pm_runtime_set_status(ptr noundef %23, i32 noundef 0) #9
  %129 = getelementptr inbounds %struct.usb_port, ptr %6, i32 0, i32 1, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %129) #9, !srcloc !8
  %130 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %129, ptr %129, i32 1, ptr elementtype(i32) %129) #9, !srcloc !9
  tail call void @pm_runtime_enable(ptr noundef %23) #9
  %131 = getelementptr inbounds %struct.usb_port, ptr %6, i32 0, i32 1, i32 11, i32 1
  %132 = load i16, ptr %131, align 4
  %133 = and i16 %132, 8
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %127
  %136 = or i16 %132, 2
  store i16 %136, ptr %131, align 4
  br label %137

137:                                              ; preds = %135, %127
  %138 = icmp eq ptr %0, null
  br i1 %138, label %156, label %139

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 16
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %141, i32 0, i32 3
  %143 = load i16, ptr %142, align 1
  %144 = and i16 %143, 2
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %139
  %147 = tail call i32 @dev_pm_qos_expose_flags(ptr noundef %23, i32 noundef 1) #9
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.4) #11
  br label %156

150:                                              ; preds = %146
  %151 = load ptr, ptr %11, align 8
  %152 = tail call i32 @dev_pm_qos_remove_request(ptr noundef %151) #9
  %153 = icmp sgt i32 %152, -1
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = load ptr, ptr %11, align 8
  tail call void @kfree(ptr noundef %155) #9
  store ptr null, ptr %11, align 8
  br label %156

156:                                              ; preds = %154, %150, %149, %139, %137, %67, %63, %58, %13, %2
  %157 = phi i32 [ %56, %58 ], [ %61, %63 ], [ %65, %67 ], [ 0, %149 ], [ -12, %13 ], [ -12, %2 ], [ 0, %139 ], [ 0, %154 ], [ 0, %150 ], [ 0, %137 ]
  ret i32 %157
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_add_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_expose_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_remove_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_hub_remove_port_device(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = add i32 %1, -1
  %6 = getelementptr ptr, ptr %4, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_port, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %46, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.usb_port, ptr %9, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %7
  br i1 %14, label %32, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.usb_port, ptr %7, i32 0, i32 1, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.usb_port, ptr %7, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi ptr [ %21, %19 ], [ %17, %15 ]
  %24 = getelementptr inbounds %struct.usb_port, ptr %9, i32 0, i32 1, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.usb_port, ptr %9, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = phi ptr [ %29, %27 ], [ %25, %22 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 412, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef %23, ptr noundef %31) #9
  br label %32

32:                                               ; preds = %30, %11
  %33 = getelementptr inbounds %struct.usb_port, ptr %7, i32 0, i32 11
  %34 = load i8, ptr %33, align 4
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  %37 = select i1 %36, ptr %7, ptr %9
  %38 = select i1 %36, ptr %9, ptr %7
  %39 = getelementptr inbounds %struct.usb_port, ptr %37, i32 0, i32 1
  %40 = tail call i32 @__pm_runtime_resume(ptr noundef %39, i32 noundef 4) #9
  %41 = getelementptr inbounds %struct.usb_port, ptr %7, i32 0, i32 1
  tail call void @sysfs_remove_link(ptr noundef %41, ptr noundef nonnull @.str.26) #9
  store ptr null, ptr %12, align 4
  %42 = getelementptr inbounds %struct.usb_port, ptr %9, i32 0, i32 1
  tail call void @sysfs_remove_link(ptr noundef %42, ptr noundef nonnull @.str.26) #9
  store ptr null, ptr %8, align 4
  %43 = getelementptr inbounds %struct.usb_port, ptr %38, i32 0, i32 1
  %44 = tail call i32 @__pm_runtime_idle(ptr noundef %43, i32 noundef 5) #9
  %45 = tail call i32 @__pm_runtime_idle(ptr noundef %39, i32 noundef 5) #9
  br label %46

46:                                               ; preds = %32, %2
  %47 = getelementptr inbounds %struct.usb_port, ptr %7, i32 0, i32 1
  tail call void @component_del(ptr noundef %47, ptr noundef nonnull @connector_ops) #9
  tail call void @device_unregister(ptr noundef %47) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_port_runtime_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -128
  %7 = getelementptr i8, ptr %3, i32 -32
  %8 = tail call ptr @usb_hub_to_struct_hub(ptr noundef %6) #9
  %9 = getelementptr i8, ptr %0, i32 476
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %0, i32 516
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = icmp eq ptr %8, null
  br i1 %14, label %46, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.usb_hub, ptr %8, i32 0, i32 20
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %15
  %21 = tail call i32 @dev_pm_qos_flags(ptr noundef %0, i32 noundef 1) #9
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %46, label %23

23:                                               ; preds = %20
  %24 = load i1, ptr @usb_port_block_power_off, align 4
  br i1 %24, label %46, label %25

25:                                               ; preds = %23
  %26 = tail call i32 @usb_autopm_get_interface(ptr noundef %7) #9
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @usb_hub_set_port_power(ptr noundef %6, ptr noundef nonnull %8, i32 noundef %13, i1 noundef zeroext false) #9
  %30 = tail call i32 @usb_clear_port_feature(ptr noundef %6, i32 noundef %13, i32 noundef 16) #9
  %31 = getelementptr i8, ptr %0, i32 524
  %32 = load i8, ptr %31, align 4
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = tail call i32 @usb_clear_port_feature(ptr noundef %6, i32 noundef %13, i32 noundef 17) #9
  br label %37

37:                                               ; preds = %35, %28
  tail call void @usb_autopm_put_interface(ptr noundef %7) #9
  %38 = load i8, ptr %31, align 4
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  %41 = icmp ne ptr %10, null
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.usb_port, ptr %10, i32 0, i32 1
  %45 = tail call i32 @__pm_runtime_idle(ptr noundef %44, i32 noundef 5) #9
  br label %46

46:                                               ; preds = %43, %37, %25, %23, %20, %15, %1
  %47 = phi i32 [ -22, %1 ], [ -16, %15 ], [ -11, %20 ], [ -16, %23 ], [ %26, %25 ], [ %29, %43 ], [ %29, %37 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_port_runtime_resume(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -128
  %8 = getelementptr i8, ptr %4, i32 -32
  %9 = tail call ptr @usb_hub_to_struct_hub(ptr noundef %7) #9
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr i8, ptr %0, i32 476
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %0, i32 516
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = icmp eq ptr %9, null
  br i1 %16, label %74, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.usb_hub, ptr %9, i32 0, i32 20
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.usb_hub, ptr %9, i32 0, i32 13
  tail call void @_set_bit(i32 noundef %15, ptr noundef %23) #9
  br label %74

24:                                               ; preds = %17
  %25 = getelementptr i8, ptr %0, i32 524
  %26 = load i8, ptr %25, align 4
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  %29 = icmp ne ptr %12, null
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.usb_port, ptr %12, i32 0, i32 1
  %33 = tail call i32 @__pm_runtime_resume(ptr noundef %32, i32 noundef 4) #9
  br label %34

34:                                               ; preds = %31, %24
  %35 = tail call i32 @usb_autopm_get_interface(ptr noundef %8) #9
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %74, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @usb_hub_set_port_power(ptr noundef %7, ptr noundef nonnull %9, i32 noundef %15, i1 noundef zeroext true) #9
  %39 = getelementptr inbounds %struct.usb_hub, ptr %9, i32 0, i32 16
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %40, i32 0, i32 4
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 1
  %45 = getelementptr inbounds %struct.usb_hub, ptr %9, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.usb_device, ptr %46, i32 0, i32 11
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  %50 = tail call i32 @llvm.umax.i32(i32 %44, i32 100) #9
  %51 = select i1 %49, i32 %44, i32 %50
  tail call void @msleep(i32 noundef %51) #9
  %52 = icmp eq ptr %10, null
  %53 = icmp ne i32 %38, 0
  %54 = select i1 %52, i1 true, i1 %53
  br i1 %54, label %73, label %55

55:                                               ; preds = %37
  %56 = tail call i32 @hub_port_debounce(ptr noundef nonnull %9, i32 noundef %15, i1 noundef zeroext true) #9
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = getelementptr i8, ptr %6, i32 478
  %60 = load i8, ptr %59, align 2
  %61 = icmp eq i8 %60, 3
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.usb_hub, ptr %9, i32 0, i32 15
  tail call void @_set_bit(i32 noundef %15, ptr noundef %63) #9
  br label %64

64:                                               ; preds = %62, %58, %55
  %65 = getelementptr inbounds %struct.usb_hub, ptr %9, i32 0, i32 14
  %66 = tail call i32 @_test_and_set_bit(i32 noundef %15, ptr noundef %65) #9
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %69) #9, !srcloc !8
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %69, ptr %69, i32 1, ptr elementtype(i32) %69) #9, !srcloc !9
  %71 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  %72 = tail call i32 @__pm_runtime_resume(ptr noundef %71, i32 noundef 1) #9
  br label %73

73:                                               ; preds = %68, %64, %37
  tail call void @usb_autopm_put_interface(ptr noundef %8) #9
  br label %74

74:                                               ; preds = %73, %34, %22, %1
  %75 = phi i32 [ 0, %22 ], [ %38, %73 ], [ -22, %1 ], [ %35, %34 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_hub_to_struct_hub(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hub_set_port_power(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_port_feature(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hub_port_debounce(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @connect_type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 484
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds [3 x ptr], ptr @switch.table.connect_type_show, i32 0, i32 %6
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi ptr [ %10, %8 ], [ @.str.9, %3 ]
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, ptr noundef nonnull %12)
  ret i32 %13
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @location_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 488
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @quirks_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 520
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @quirks_store(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !10
  %6 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 16, ptr noundef nonnull %5) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4
  %10 = getelementptr i8, ptr %0, i32 520
  store i32 %9, ptr %10, align 8
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ %3, %8 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @over_current_count_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 512
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb3_lpm_permit_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 524
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  %8 = and i8 %5, 4
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr @.str.19, ptr @.str.18
  %11 = select i1 %9, ptr @.str.21, ptr @.str.20
  %12 = select i1 %7, ptr %11, ptr %10
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, ptr noundef nonnull %12)
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb3_lpm_permit_store(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(6) @.str.18, i32 noundef 5)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 524
  %11 = load i8, ptr %10, align 4
  %12 = or i8 %11, 6
  store i8 %12, ptr %10, align 4
  br label %36

13:                                               ; preds = %4
  %14 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(3) @.str.19, i32 noundef 2)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = getelementptr i8, ptr %0, i32 524
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, -7
  %20 = or i8 %19, 2
  store i8 %20, ptr %17, align 4
  br label %36

21:                                               ; preds = %13
  %22 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(3) @.str.20, i32 noundef 2)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = getelementptr i8, ptr %0, i32 524
  %26 = load i8, ptr %25, align 4
  %27 = and i8 %26, -7
  %28 = or i8 %27, 4
  store i8 %28, ptr %25, align 4
  br label %36

29:                                               ; preds = %21
  %30 = load i8, ptr %2, align 1
  %31 = icmp eq i8 %30, 48
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  %33 = getelementptr i8, ptr %0, i32 524
  %34 = load i8, ptr %33, align 4
  %35 = and i8 %34, -7
  store i8 %35, ptr %33, align 4
  br label %36

36:                                               ; preds = %32, %24, %16, %9
  %37 = icmp eq ptr %6, null
  br i1 %37, label %51, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 12
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15, i32 9
  tail call void @mutex_lock(ptr noundef %43) #9
  %44 = getelementptr inbounds %struct.usb_hcd, ptr %40, i32 0, i32 23
  %45 = load ptr, ptr %44, align 4
  tail call void @mutex_lock(ptr noundef %45) #9
  %46 = tail call i32 @usb_disable_lpm(ptr noundef nonnull %6) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  tail call void @usb_enable_lpm(ptr noundef nonnull %6) #9
  br label %49

49:                                               ; preds = %48, %42
  %50 = load ptr, ptr %44, align 4
  tail call void @mutex_unlock(ptr noundef %50) #9
  tail call void @mutex_unlock(ptr noundef %43) #9
  br label %51

51:                                               ; preds = %49, %38, %36, %29
  %52 = phi i32 [ -22, %29 ], [ -22, %38 ], [ %3, %49 ], [ %3, %36 ]
  ret i32 %52
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disable_lpm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_enable_lpm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_port_shutdown(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @usb_disable_usb2_hardware_lpm(ptr noundef nonnull %3) #9
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disable_usb2_hardware_lpm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @connector_bind(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = tail call i32 @sysfs_create_link(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.23) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %11, %10 ], [ %8, %6 ]
  %14 = tail call i32 @sysfs_create_link(ptr noundef %1, ptr noundef %0, ptr noundef %13) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @sysfs_remove_link(ptr noundef %0, ptr noundef nonnull @.str.23) #9
  br label %17

17:                                               ; preds = %16, %12, %3
  %18 = phi i32 [ %4, %3 ], [ %14, %16 ], [ 0, %12 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @connector_unbind(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 4
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi ptr [ %8, %7 ], [ %5, %3 ]
  tail call void @sysfs_remove_link(ptr noundef %1, ptr noundef %10) #9
  tail call void @sysfs_remove_link(ptr noundef %0, ptr noundef nonnull @.str.23) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_for_each_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @match_location(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @usb_hub_to_struct_hub(ptr noundef %0) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb_port, ptr %1, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -64
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %11, i32 0, i32 24
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 35
  %19 = load i32, ptr %18, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %40, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.usb_hub, ptr %3, i32 0, i32 27
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.usb_port, ptr %1, i32 0, i32 6
  br label %25

25:                                               ; preds = %37, %21
  %26 = phi i32 [ 1, %21 ], [ %38, %37 ]
  %27 = add i32 %26, -1
  %28 = getelementptr ptr, ptr %23, i32 %27
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.usb_port, ptr %29, i32 0, i32 6
  %33 = load i32, ptr %32, align 8
  %34 = load i32, ptr %24, align 8
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  tail call fastcc void @link_peers_report(ptr noundef %1, ptr noundef nonnull %29)
  br label %40

37:                                               ; preds = %31, %25
  %38 = add i32 %26, 1
  %39 = icmp sgt i32 %38, %19
  br i1 %39, label %40, label %25

40:                                               ; preds = %37, %36, %17, %5, %2
  %41 = phi i32 [ 1, %36 ], [ 0, %2 ], [ 0, %5 ], [ 0, %17 ], [ 0, %37 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @link_peers_report(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usb_port, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_port, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %53, label %10

10:                                               ; preds = %6, %2
  %11 = icmp eq ptr %4, null
  br i1 %11, label %12, label %48

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.usb_port, ptr %1, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %48

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.usb_port, ptr %0, i32 0, i32 1
  %18 = getelementptr inbounds %struct.usb_port, ptr %1, i32 0, i32 1
  %19 = tail call i32 @sysfs_create_link(ptr noundef %17, ptr noundef %18, ptr noundef nonnull @.str.26) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %16
  %22 = tail call i32 @sysfs_create_link(ptr noundef %18, ptr noundef %17, ptr noundef nonnull @.str.26) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @sysfs_remove_link(ptr noundef %17, ptr noundef nonnull @.str.26) #9
  br label %48

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.usb_port, ptr %0, i32 0, i32 11
  %27 = load i8, ptr %26, align 4
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  %30 = getelementptr inbounds %struct.usb_port, ptr %1, i32 0, i32 11
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %29, label %35, label %34

34:                                               ; preds = %25
  br i1 %33, label %40, label %36, !prof !11

35:                                               ; preds = %25
  br i1 %33, label %36, label %40, !prof !12

36:                                               ; preds = %35, %34
  %37 = phi i32 [ 365, %34 ], [ 369, %35 ]
  %38 = phi ptr [ %1, %34 ], [ %0, %35 ]
  %39 = phi ptr [ %0, %34 ], [ %1, %35 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef %37, i32 noundef 9, ptr noundef null) #9
  br label %40

40:                                               ; preds = %36, %35, %34
  %41 = phi ptr [ %1, %34 ], [ %0, %35 ], [ %38, %36 ]
  %42 = phi ptr [ %0, %34 ], [ %1, %35 ], [ %39, %36 ]
  %43 = getelementptr inbounds %struct.usb_port, ptr %41, i32 0, i32 1
  %44 = tail call i32 @__pm_runtime_resume(ptr noundef %43, i32 noundef 4) #9
  store ptr %1, ptr %3, align 4
  store ptr %0, ptr %13, align 4
  %45 = getelementptr inbounds %struct.usb_port, ptr %42, i32 0, i32 1
  %46 = tail call i32 @__pm_runtime_resume(ptr noundef %45, i32 noundef 4) #9
  %47 = tail call i32 @__pm_runtime_idle(ptr noundef %43, i32 noundef 5) #9
  br label %53

48:                                               ; preds = %24, %16, %12, %10
  %49 = load i1, ptr @link_peers_report.__already_done, align 1
  br i1 %49, label %52, label %50, !prof !11

50:                                               ; preds = %48
  store i1 true, ptr @link_peers_report.__already_done, align 1
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #11
  br label %52

52:                                               ; preds = %50, %48
  store i1 true, ptr @usb_port_block_power_off, align 4
  br label %53

53:                                               ; preds = %52, %40, %6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
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
!8 = !{i64 770645, i64 2148260616, i64 2148260642, i64 2148260689, i64 2148260711, i64 2148260739, i64 2148260759}
!9 = !{i64 2148272031, i64 2148272057, i64 2148272086, i64 2148272120, i64 2148272151, i64 2148272174}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{!"branch_weights", i32 1, i32 2000}
