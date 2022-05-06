; ModuleID = '/llk/IR/drivers/gpu/drm/drm_sysfs.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sysfs_hotplug_event:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sysfs_hotplug_event\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sysfs_hotplug_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sysfs_connector_hotplug_event:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sysfs_connector_hotplug_event\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sysfs_connector_hotplug_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_sysfs_connector_status_event:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_sysfs_connector_status_event\22\09\09\09\09\09"
module asm "__kstrtabns_drm_sysfs_connector_status_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_class_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_class_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_drm_class_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_class_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_class_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_drm_class_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.class_attribute_string = type { %struct.class_attribute, ptr }
%struct.class_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.73 }
%union.anon.73 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.72, ptr, i32, ptr, i8, i32 }
%struct.anon.71 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.72 = type { i32, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_property = type { %struct.list_head, %struct.drm_mode_object, i32, [32 x i8], i32, ptr, ptr, %struct.list_head }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }

@drm_sysfs_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [4 x i8] c"drm\00", align 1
@drm_class = dso_local local_unnamed_addr global ptr null, align 4
@class_attr_version = internal global %struct.class_attribute_string { %struct.class_attribute { %struct.attribute { ptr @.str.17, i16 292 }, ptr @show_class_attr_string, ptr null }, ptr @.str.18 }, align 4
@drm_sysfs_device_connector = internal global %struct.device_type { ptr @.str.20, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@connector_dev_groups = internal global [2 x ptr] [ptr @connector_dev_group, ptr null], align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"card%d-%s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"adding \22%s\22 to sysfs\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"[drm] *ERROR* failed to register connector device: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ddc\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"removing \22%s\22 from sysfs\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"LEASE=1\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"generating lease event\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"generating hotplug event\0A\00", align 1
@__kstrtab_drm_sysfs_hotplug_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sysfs_hotplug_event = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sysfs_hotplug_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sysfs_hotplug_event to i32), ptr @__kstrtab_drm_sysfs_hotplug_event, ptr @__kstrtabns_drm_sysfs_hotplug_event }, section "___ksymtab+drm_sysfs_hotplug_event", align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"CONNECTOR=%u\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"[CONNECTOR:%d:%s] generating connector hotplug event\0A\00", align 1
@__kstrtab_drm_sysfs_connector_hotplug_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sysfs_connector_hotplug_event = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sysfs_connector_hotplug_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sysfs_connector_hotplug_event to i32), ptr @__kstrtab_drm_sysfs_connector_hotplug_event, ptr @__kstrtabns_drm_sysfs_connector_hotplug_event }, section "___ksymtab+drm_sysfs_connector_hotplug_event", align 4
@__const.drm_sysfs_connector_status_event.hotplug_str = private unnamed_addr constant [10 x i8] c"HOTPLUG=1\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"drivers/gpu/drm/drm_sysfs.c\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"PROPERTY=%u\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"generating connector status event\0A\00", align 1
@__kstrtab_drm_sysfs_connector_status_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_sysfs_connector_status_event = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_sysfs_connector_status_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_sysfs_connector_status_event to i32), ptr @__kstrtab_drm_sysfs_connector_status_event, ptr @__kstrtabns_drm_sysfs_connector_status_event }, section "___ksymtab+drm_sysfs_connector_status_event", align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"renderD%d\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"card%d\00", align 1
@drm_sysfs_device_minor = internal global %struct.device_type { ptr @.str.34, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_drm_class_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_class_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_class_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_class_device_register to i32), ptr @__kstrtab_drm_class_device_register, ptr @__kstrtabns_drm_class_device_register }, section "___ksymtab_gpl+drm_class_device_register", align 4
@__kstrtab_drm_class_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_class_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_class_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_class_device_unregister to i32), ptr @__kstrtab_drm_class_device_unregister, ptr @__kstrtabns_drm_class_device_unregister }, section "___ksymtab_gpl+drm_class_device_unregister", align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"drm 1.1.0 20060810\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"dri/%s\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.20 = private unnamed_addr constant [14 x i8] c"drm_connector\00", align 1
@connector_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @connector_dev_attrs, ptr @connector_bin_attrs }, align 4
@connector_dev_attrs = internal global [5 x ptr] [ptr @dev_attr_status, ptr @dev_attr_enabled, ptr @dev_attr_dpms, ptr @dev_attr_modes, ptr null], align 4
@connector_bin_attrs = internal global [2 x ptr] [ptr @edid_attr, ptr null], align 4
@dev_attr_status = internal global %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420 }, ptr @status_show, ptr @status_store }, align 4
@dev_attr_enabled = internal global %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292 }, ptr @enabled_show, ptr null }, align 4
@dev_attr_dpms = internal global %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292 }, ptr @dpms_show, ptr null }, align 4
@dev_attr_modes = internal global %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292 }, ptr @modes_show, ptr null }, align 4
@.str.21 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"detect\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"on-digital\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.27 = private unnamed_addr constant [60 x i8] c"[CONNECTOR:%d:%s] force updated from %d to %d or reprobing\0A\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"enabled\0A\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"disabled\0A\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"dpms\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"modes\00", align 1
@edid_attr = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.33, i16 292 }, i32 0, ptr null, ptr null, ptr @edid_show, ptr null, ptr null }, align 4
@.str.33 = private unnamed_addr constant [5 x i8] c"edid\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"drm_minor\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_drm_class_device_register, ptr @__ksymtab_drm_class_device_unregister, ptr @__ksymtab_drm_sysfs_connector_hotplug_event, ptr @__ksymtab_drm_sysfs_connector_status_event, ptr @__ksymtab_drm_sysfs_hotplug_event], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_sysfs_init() local_unnamed_addr #0 {
  %1 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @drm_sysfs_init.__key) #8
  store ptr %1, ptr @drm_class, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = ptrtoint ptr %1 to i32
  br label %12

5:                                                ; preds = %0
  %6 = tail call i32 @class_create_file_ns(ptr noundef %1, ptr noundef nonnull @class_attr_version, ptr noundef null) #8
  %7 = icmp eq i32 %6, 0
  %8 = load ptr, ptr @drm_class, align 4
  br i1 %7, label %10, label %9

9:                                                ; preds = %5
  tail call void @class_destroy(ptr noundef %8) #8
  store ptr null, ptr @drm_class, align 4
  br label %12

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.class, ptr %8, i32 0, i32 6
  store ptr @drm_devnode, ptr %11, align 4
  br label %12

12:                                               ; preds = %10, %9, %3
  %13 = phi i32 [ %4, %3 ], [ %6, %9 ], [ 0, %10 ]
  ret i32 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @drm_devnode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %10 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.19, ptr noundef %9) #8
  ret ptr %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sysfs_destroy() local_unnamed_addr #0 {
  %1 = load ptr, ptr @drm_class, align 4
  %2 = icmp eq ptr %1, null
  %3 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  tail call void @class_remove_file_ns(ptr noundef nonnull %1, ptr noundef nonnull @class_attr_version, ptr noundef null) #8
  %6 = load ptr, ptr @drm_class, align 4
  tail call void @class_destroy(ptr noundef %6) #8
  store ptr null, ptr @drm_class, align 4
  br label %7

7:                                                ; preds = %5, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_sysfs_connector_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %44

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 472) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %44, label %10

10:                                               ; preds = %6
  tail call void @device_initialize(ptr noundef nonnull %8) #8
  %11 = load ptr, ptr @drm_class, align 4
  %12 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 31
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 4
  store ptr @drm_sysfs_device_connector, ptr %13, align 8
  %14 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_minor, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 32
  store ptr @connector_dev_groups, ptr %19, align 8
  %20 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 33
  store ptr @drm_sysfs_release, ptr %20, align 4
  %21 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  store ptr %0, ptr %21, align 8
  %22 = load ptr, ptr %14, align 4
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %8, ptr noundef nonnull @.str.1, i32 noundef %23, ptr noundef %25) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %10
  %29 = load ptr, ptr %24, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef %29) #8
  %30 = tail call i32 @device_add(ptr noundef nonnull %8) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.3, i32 noundef %30) #10
  br label %42

35:                                               ; preds = %28
  store ptr %8, ptr %3, align 4
  %36 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 46
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.i2c_adapter, ptr %37, i32 0, i32 9
  %41 = tail call i32 @sysfs_create_link(ptr noundef nonnull %8, ptr noundef %40, ptr noundef nonnull @.str.4) #8
  br label %44

42:                                               ; preds = %32, %10
  %43 = phi i32 [ %26, %10 ], [ %30, %32 ]
  tail call void @put_device(ptr noundef nonnull %8) #8
  br label %44

44:                                               ; preds = %42, %39, %35, %6, %1
  %45 = phi i32 [ %43, %42 ], [ %41, %39 ], [ 0, %1 ], [ -12, %6 ], [ 0, %35 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_sysfs_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sysfs_connector_remove(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 46
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @sysfs_remove_link(ptr noundef nonnull %3, ptr noundef nonnull @.str.4) #8
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %12) #8
  %13 = load ptr, ptr %2, align 4
  tail call void @device_unregister(ptr noundef %13) #8
  store ptr null, ptr %2, align 4
  br label %14

14:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sysfs_lease_event(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store ptr @.str.6, ptr %2, align 8
  %3 = getelementptr inbounds ptr, ptr %2, i32 1
  store ptr null, ptr %3, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7) #8
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @kobject_uevent_env(ptr noundef %7, i32 noundef 2, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sysfs_hotplug_event(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store ptr @__const.drm_sysfs_connector_status_event.hotplug_str, ptr %2, align 8
  %3 = getelementptr inbounds ptr, ptr %2, i32 1
  store ptr null, ptr %3, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9) #8
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @kobject_uevent_env(ptr noundef %7, i32 noundef 2, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sysfs_connector_hotplug_event(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [10 x i8], align 1
  %3 = alloca [21 x i8], align 1
  %4 = alloca [3 x ptr], align 4
  %5 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %2, ptr noundef nonnull align 1 dereferenceable(10) @__const.drm_sysfs_connector_status_event.hotplug_str, i32 10, i1 false)
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %3, i8 0, i32 21, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  store ptr %2, ptr %4, align 4
  %6 = getelementptr inbounds ptr, ptr %4, i32 1
  store ptr %3, ptr %6, align 4
  %7 = getelementptr inbounds ptr, ptr %4, i32 2
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 21, ptr noundef nonnull @.str.10, i32 noundef %9)
  %11 = load ptr, ptr %0, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi ptr [ %15, %13 ], [ null, %1 ]
  %18 = load i32, ptr %8, align 8
  %19 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %17, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef %18, ptr noundef %20) #8
  %21 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.drm_minor, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @kobject_uevent_env(ptr noundef %24, i32 noundef 2, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_sysfs_connector_status_event(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [10 x i8], align 1
  %4 = alloca [21 x i8], align 1
  %5 = alloca [21 x i8], align 1
  %6 = alloca [4 x ptr], align 4
  %7 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %3, ptr noundef nonnull align 1 dereferenceable(10) @__const.drm_sysfs_connector_status_event.hotplug_str, i32 10, i1 false)
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %4, i8 0, i32 21, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %5, i8 0, i32 21, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  store ptr %3, ptr %6, align 4
  %8 = getelementptr inbounds ptr, ptr %6, i32 1
  store ptr %4, ptr %8, align 4
  %9 = getelementptr inbounds ptr, ptr %6, i32 2
  store ptr %5, ptr %9, align 4
  %10 = getelementptr inbounds ptr, ptr %6, i32 3
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 6
  %12 = getelementptr inbounds %struct.drm_property, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = call ptr @drm_mode_obj_find_prop_id(ptr noundef %11, i32 noundef %13) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17, !prof !9

16:                                               ; preds = %2
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 455, i32 noundef 9, ptr noundef null) #8
  br label %17

17:                                               ; preds = %16, %2
  %18 = load i32, ptr %11, align 8
  %19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 21, ptr noundef nonnull @.str.10, i32 noundef %18)
  %20 = load i32, ptr %12, align 4
  %21 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 21, ptr noundef nonnull @.str.13, i32 noundef %20)
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.14) #8
  %22 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.drm_minor, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @kobject_uevent_env(ptr noundef %25, i32 noundef 2, ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_obj_find_prop_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_sysfs_minor_alloc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 472) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = icmp eq i32 %3, 2
  %9 = select i1 %8, ptr @.str.15, ptr @.str.16
  tail call void @device_initialize(ptr noundef nonnull %5) #8
  %10 = load i32, ptr %0, align 4
  %11 = or i32 %10, 236978176
  %12 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  store i32 %11, ptr %12, align 8
  %13 = load ptr, ptr @drm_class, align 4
  %14 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 31
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 4
  store ptr @drm_sysfs_device_minor, ptr %15, align 8
  %16 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 33
  store ptr @drm_sysfs_release, ptr %21, align 4
  %22 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  store ptr %0, ptr %22, align 8
  %23 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %5, ptr noundef nonnull %9, i32 noundef %10) #8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  tail call void @put_device(ptr noundef nonnull %5) #8
  %26 = inttoptr i32 %23 to ptr
  br label %27

27:                                               ; preds = %25, %7, %1
  %28 = phi ptr [ %26, %25 ], [ %5, %7 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_class_device_register(ptr noundef %0) #0 {
  %2 = load ptr, ptr @drm_class, align 4
  %3 = icmp eq ptr %2, null
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  store ptr %2, ptr %7, align 4
  %8 = tail call i32 @device_register(ptr noundef %0) #8
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ %8, %6 ], [ -2, %1 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_class_device_unregister(ptr noundef %0) #0 {
  tail call void @device_unregister(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @show_class_attr_string(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @status_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_connector, ptr %5, i32 0, i32 18
  %7 = load volatile i32, ptr %6, align 8
  %8 = tail call ptr @drm_get_connector_status_name(i32 noundef %7) #8
  %9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.22, ptr noundef %8) #8
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @status_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30
  %9 = tail call i32 @mutex_lock_interruptible(ptr noundef %8) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %51

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 37
  %13 = load i32, ptr %12, align 4
  %14 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.23) #8
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 0, ptr %12, align 4
  br label %33

16:                                               ; preds = %11
  %17 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.24) #8
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  store i32 2, ptr %12, align 4
  br label %27

19:                                               ; preds = %16
  %20 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.25) #8
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  store i32 3, ptr %12, align 4
  br label %27

22:                                               ; preds = %19
  %23 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.26) #8
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = load i32, ptr %12, align 4
  br label %27

26:                                               ; preds = %22
  store i32 1, ptr %12, align 4
  br label %27

27:                                               ; preds = %26, %24, %21, %18
  %28 = phi i32 [ 2, %18 ], [ 1, %26 ], [ 3, %21 ], [ %25, %24 ]
  %29 = phi i32 [ %3, %18 ], [ %3, %26 ], [ %3, %21 ], [ -22, %24 ]
  %30 = icmp ne i32 %13, %28
  %31 = icmp eq i32 %28, 0
  %32 = or i1 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %27, %15
  %34 = phi i32 [ %3, %15 ], [ %29, %27 ]
  %35 = phi i32 [ 0, %15 ], [ %28, %27 ]
  %36 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 6
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 7
  %39 = load ptr, ptr %38, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.27, i32 noundef %37, ptr noundef %39, i32 noundef %13, i32 noundef %35) #8
  %40 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 21
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.drm_connector_funcs, ptr %41, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 25
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 26
  %47 = load i32, ptr %46, align 4
  %48 = tail call i32 %43(ptr noundef %6, i32 noundef %45, i32 noundef %47) #8
  br label %49

49:                                               ; preds = %33, %27
  %50 = phi i32 [ %29, %27 ], [ %34, %33 ]
  tail call void @mutex_unlock(ptr noundef %8) #8
  br label %51

51:                                               ; preds = %49, %4
  %52 = phi i32 [ %50, %49 ], [ %9, %4 ]
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_connector_status_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @enabled_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_connector, ptr %5, i32 0, i32 41
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @.str.30, ptr @.str.29
  %10 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull %9) #8
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpms_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_connector, ptr %5, i32 0, i32 34
  %7 = load volatile i32, ptr %6, align 8
  %8 = tail call ptr @drm_get_dpms_name(i32 noundef %7) #8
  %9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.22, ptr noundef %8) #8
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_dpms_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @modes_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30
  tail call void @mutex_lock(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.drm_connector, ptr %5, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %21, label %11

11:                                               ; preds = %11, %3
  %12 = phi ptr [ %19, %11 ], [ %9, %3 ]
  %13 = phi i32 [ %18, %11 ], [ 0, %3 ]
  %14 = getelementptr i8, ptr %2, i32 %13
  %15 = sub i32 4096, %13
  %16 = getelementptr i8, ptr %12, i32 8
  %17 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %14, i32 noundef %15, ptr noundef nonnull @.str.22, ptr noundef %16) #8
  %18 = add i32 %17, %13
  %19 = load ptr, ptr %12, align 4
  %20 = icmp eq ptr %19, %8
  br i1 %20, label %21, label %11

21:                                               ; preds = %11, %3
  %22 = phi i32 [ 0, %3 ], [ %18, %11 ]
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 30
  tail call void @mutex_unlock(ptr noundef %24) #8
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edid_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 30
  tail call void @mutex_lock(ptr noundef %10) #8
  %11 = getelementptr inbounds %struct.drm_connector, ptr %8, i32 0, i32 22
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.drm_property_blob, ptr %12, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.drm_property_blob, ptr %12, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = zext i32 %20 to i64
  %22 = icmp sgt i64 %21, %4
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = zext i32 %5 to i64
  %25 = add i64 %24, %4
  %26 = icmp sgt i64 %25, %21
  %27 = trunc i64 %4 to i32
  %28 = sub i32 %20, %27
  %29 = select i1 %26, i32 %28, i32 %5
  %30 = getelementptr i8, ptr %16, i32 %27
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %3, ptr align 1 %30, i32 %29, i1 false)
  br label %31

31:                                               ; preds = %23, %18, %14, %6
  %32 = phi i32 [ 0, %18 ], [ %29, %23 ], [ 0, %14 ], [ 0, %6 ]
  %33 = load ptr, ptr %8, align 8
  %34 = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 30
  tail call void @mutex_unlock(ptr noundef %34) #8
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
