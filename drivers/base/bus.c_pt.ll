; ModuleID = '/llk/IR/drivers/base/bus.c_pt.bc'
source_filename = "../drivers/base/bus.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bus_create_file:\09\09\09\09\09"
module asm "\09.asciz \09\22bus_create_file\22\09\09\09\09\09"
module asm "__kstrtabns_bus_create_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bus_remove_file:\09\09\09\09\09"
module asm "\09.asciz \09\22bus_remove_file\22\09\09\09\09\09"
module asm "__kstrtabns_bus_remove_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bus_for_each_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22bus_for_each_dev\22\09\09\09\09\09"
module asm "__kstrtabns_bus_for_each_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bus_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22bus_find_device\22\09\09\09\09\09"
module asm "__kstrtabns_bus_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_subsys_find_device_by_id:\09\09\09\09\09"
module asm "\09.asciz \09\22subsys_find_device_by_id\22\09\09\09\09\09"
module asm "__kstrtabns_subsys_find_device_by_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bus_for_each_drv:\09\09\09\09\09"
module asm "\09.asciz \09\22bus_for_each_drv\22\09\09\09\09\09"
module asm "__kstrtabns_bus_for_each_drv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bus_rescan_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22bus_rescan_devices\22\09\09\09\09\09"
module asm "__kstrtabns_bus_rescan_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_reprobe:\09\09\09\09\09"
module asm "\09.asciz \09\22device_reprobe\22\09\09\09\09\09"
module asm "__kstrtabns_device_reprobe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bus_register:\09\09\09\09\09"
module asm "\09.asciz \09\22bus_register\22\09\09\09\09\09"
module asm "__kstrtabns_bus_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bus_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22bus_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_bus_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bus_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22bus_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_bus_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bus_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22bus_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_bus_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bus_get_kset:\09\09\09\09\09"
module asm "\09.asciz \09\22bus_get_kset\22\09\09\09\09\09"
module asm "__kstrtabns_bus_get_kset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bus_get_device_klist:\09\09\09\09\09"
module asm "\09.asciz \09\22bus_get_device_klist\22\09\09\09\09\09"
module asm "__kstrtabns_bus_get_device_klist:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bus_sort_breadthfirst:\09\09\09\09\09"
module asm "\09.asciz \09\22bus_sort_breadthfirst\22\09\09\09\09\09"
module asm "__kstrtabns_bus_sort_breadthfirst:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_subsys_dev_iter_init:\09\09\09\09\09"
module asm "\09.asciz \09\22subsys_dev_iter_init\22\09\09\09\09\09"
module asm "__kstrtabns_subsys_dev_iter_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_subsys_dev_iter_next:\09\09\09\09\09"
module asm "\09.asciz \09\22subsys_dev_iter_next\22\09\09\09\09\09"
module asm "__kstrtabns_subsys_dev_iter_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_subsys_dev_iter_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22subsys_dev_iter_exit\22\09\09\09\09\09"
module asm "__kstrtabns_subsys_dev_iter_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_subsys_interface_register:\09\09\09\09\09"
module asm "\09.asciz \09\22subsys_interface_register\22\09\09\09\09\09"
module asm "__kstrtabns_subsys_interface_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_subsys_interface_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22subsys_interface_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_subsys_interface_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_subsys_system_register:\09\09\09\09\09"
module asm "\09.asciz \09\22subsys_system_register\22\09\09\09\09\09"
module asm "__kstrtabns_subsys_system_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_subsys_virtual_register:\09\09\09\09\09"
module asm "\09.asciz \09\22subsys_virtual_register\22\09\09\09\09\09"
module asm "__kstrtabns_subsys_virtual_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.driver_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.lock_class_key = type {}
%struct.bus_attribute = type { %struct.attribute, ptr, ptr }
%struct.kset_uevent_ops = type { ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.klist_iter = type { ptr, ptr }
%struct.subsys_private = type { %struct.kset, ptr, %struct.list_head, %struct.mutex, ptr, %struct.klist, %struct.klist, %struct.blocking_notifier_head, i8, ptr, %struct.kset, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.device_private = type { %struct.klist, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.list_head, ptr, ptr, ptr, i8 }
%struct.klist_node = type { ptr, %struct.list_head, %struct.kref }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.driver_private = type { %struct.kobject, %struct.klist, %struct.klist_node, ptr, ptr }
%struct.subsys_dev_iter = type { %struct.klist_iter, ptr }
%struct.subsys_interface = type { ptr, ptr, %struct.list_head, ptr, ptr }

@__kstrtab_bus_create_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_bus_create_file = external dso_local constant [0 x i8], align 1
@__ksymtab_bus_create_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bus_create_file to i32), ptr @__kstrtab_bus_create_file, ptr @__kstrtabns_bus_create_file }, section "___ksymtab_gpl+bus_create_file", align 4
@__kstrtab_bus_remove_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_bus_remove_file = external dso_local constant [0 x i8], align 1
@__ksymtab_bus_remove_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bus_remove_file to i32), ptr @__kstrtab_bus_remove_file, ptr @__kstrtabns_bus_remove_file }, section "___ksymtab_gpl+bus_remove_file", align 4
@__kstrtab_bus_for_each_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_bus_for_each_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_bus_for_each_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bus_for_each_dev to i32), ptr @__kstrtab_bus_for_each_dev, ptr @__kstrtabns_bus_for_each_dev }, section "___ksymtab_gpl+bus_for_each_dev", align 4
@__kstrtab_bus_find_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_bus_find_device = external dso_local constant [0 x i8], align 1
@__ksymtab_bus_find_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bus_find_device to i32), ptr @__kstrtab_bus_find_device, ptr @__kstrtabns_bus_find_device }, section "___ksymtab_gpl+bus_find_device", align 4
@__kstrtab_subsys_find_device_by_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_subsys_find_device_by_id = external dso_local constant [0 x i8], align 1
@__ksymtab_subsys_find_device_by_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @subsys_find_device_by_id to i32), ptr @__kstrtab_subsys_find_device_by_id, ptr @__kstrtabns_subsys_find_device_by_id }, section "___ksymtab_gpl+subsys_find_device_by_id", align 4
@__kstrtab_bus_for_each_drv = external dso_local constant [0 x i8], align 1
@__kstrtabns_bus_for_each_drv = external dso_local constant [0 x i8], align 1
@__ksymtab_bus_for_each_drv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bus_for_each_drv to i32), ptr @__kstrtab_bus_for_each_drv, ptr @__kstrtabns_bus_for_each_drv }, section "___ksymtab_gpl+bus_for_each_drv", align 4
@.str = private unnamed_addr constant [10 x i8] c"subsystem\00", align 1
@driver_ktype = internal global %struct.kobj_type { ptr @driver_release, ptr @driver_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@driver_attr_uevent = internal global %struct.driver_attribute { %struct.attribute { ptr @.str.11, i16 128 }, ptr null, ptr @uevent_store }, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"\013%s: uevent attr (%s) failed\0A\00", align 1
@__func__.bus_add_driver = private unnamed_addr constant [15 x i8] c"bus_add_driver\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"\013%s: driver_add_groups(%s) failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"\013%s: add_bind_files(%s) failed\0A\00", align 1
@__kstrtab_bus_rescan_devices = external dso_local constant [0 x i8], align 1
@__kstrtabns_bus_rescan_devices = external dso_local constant [0 x i8], align 1
@__ksymtab_bus_rescan_devices = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bus_rescan_devices to i32), ptr @__kstrtab_bus_rescan_devices, ptr @__kstrtabns_bus_rescan_devices }, section "___ksymtab_gpl+bus_rescan_devices", align 4
@__kstrtab_device_reprobe = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_reprobe = external dso_local constant [0 x i8], align 1
@__ksymtab_device_reprobe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_reprobe to i32), ptr @__kstrtab_device_reprobe, ptr @__kstrtabns_device_reprobe }, section "___ksymtab_gpl+device_reprobe", align 4
@bus_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"&(&priv->bus_notifier)->rwsem\00", align 1
@bus_kset = internal unnamed_addr global ptr null, align 4
@bus_ktype = internal global %struct.kobj_type { ptr @bus_release, ptr @bus_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@bus_attr_uevent = internal global %struct.bus_attribute { %struct.attribute { ptr @.str.11, i16 128 }, ptr null, ptr @bus_uevent_store }, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"drivers\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"subsys mutex\00", align 1
@__kstrtab_bus_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_bus_register = external dso_local constant [0 x i8], align 1
@__ksymtab_bus_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bus_register to i32), ptr @__kstrtab_bus_register, ptr @__kstrtabns_bus_register }, section "___ksymtab_gpl+bus_register", align 4
@__kstrtab_bus_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_bus_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_bus_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bus_unregister to i32), ptr @__kstrtab_bus_unregister, ptr @__kstrtabns_bus_unregister }, section "___ksymtab_gpl+bus_unregister", align 4
@__kstrtab_bus_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_bus_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_bus_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bus_register_notifier to i32), ptr @__kstrtab_bus_register_notifier, ptr @__kstrtabns_bus_register_notifier }, section "___ksymtab_gpl+bus_register_notifier", align 4
@__kstrtab_bus_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_bus_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_bus_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bus_unregister_notifier to i32), ptr @__kstrtab_bus_unregister_notifier, ptr @__kstrtabns_bus_unregister_notifier }, section "___ksymtab_gpl+bus_unregister_notifier", align 4
@__kstrtab_bus_get_kset = external dso_local constant [0 x i8], align 1
@__kstrtabns_bus_get_kset = external dso_local constant [0 x i8], align 1
@__ksymtab_bus_get_kset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bus_get_kset to i32), ptr @__kstrtab_bus_get_kset, ptr @__kstrtabns_bus_get_kset }, section "___ksymtab_gpl+bus_get_kset", align 4
@__kstrtab_bus_get_device_klist = external dso_local constant [0 x i8], align 1
@__kstrtabns_bus_get_device_klist = external dso_local constant [0 x i8], align 1
@__ksymtab_bus_get_device_klist = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bus_get_device_klist to i32), ptr @__kstrtab_bus_get_device_klist, ptr @__kstrtabns_bus_get_device_klist }, section "___ksymtab_gpl+bus_get_device_klist", align 4
@__kstrtab_bus_sort_breadthfirst = external dso_local constant [0 x i8], align 1
@__kstrtabns_bus_sort_breadthfirst = external dso_local constant [0 x i8], align 1
@__ksymtab_bus_sort_breadthfirst = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bus_sort_breadthfirst to i32), ptr @__kstrtab_bus_sort_breadthfirst, ptr @__kstrtabns_bus_sort_breadthfirst }, section "___ksymtab_gpl+bus_sort_breadthfirst", align 4
@__kstrtab_subsys_dev_iter_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_subsys_dev_iter_init = external dso_local constant [0 x i8], align 1
@__ksymtab_subsys_dev_iter_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @subsys_dev_iter_init to i32), ptr @__kstrtab_subsys_dev_iter_init, ptr @__kstrtabns_subsys_dev_iter_init }, section "___ksymtab_gpl+subsys_dev_iter_init", align 4
@__kstrtab_subsys_dev_iter_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_subsys_dev_iter_next = external dso_local constant [0 x i8], align 1
@__ksymtab_subsys_dev_iter_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @subsys_dev_iter_next to i32), ptr @__kstrtab_subsys_dev_iter_next, ptr @__kstrtabns_subsys_dev_iter_next }, section "___ksymtab_gpl+subsys_dev_iter_next", align 4
@__kstrtab_subsys_dev_iter_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_subsys_dev_iter_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_subsys_dev_iter_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @subsys_dev_iter_exit to i32), ptr @__kstrtab_subsys_dev_iter_exit, ptr @__kstrtabns_subsys_dev_iter_exit }, section "___ksymtab_gpl+subsys_dev_iter_exit", align 4
@__kstrtab_subsys_interface_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_subsys_interface_register = external dso_local constant [0 x i8], align 1
@__ksymtab_subsys_interface_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @subsys_interface_register to i32), ptr @__kstrtab_subsys_interface_register, ptr @__kstrtabns_subsys_interface_register }, section "___ksymtab_gpl+subsys_interface_register", align 4
@__kstrtab_subsys_interface_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_subsys_interface_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_subsys_interface_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @subsys_interface_unregister to i32), ptr @__kstrtab_subsys_interface_unregister, ptr @__kstrtabns_subsys_interface_unregister }, section "___ksymtab_gpl+subsys_interface_unregister", align 4
@system_kset = internal unnamed_addr global ptr null, align 4
@__kstrtab_subsys_system_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_subsys_system_register = external dso_local constant [0 x i8], align 1
@__ksymtab_subsys_system_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @subsys_system_register to i32), ptr @__kstrtab_subsys_system_register, ptr @__kstrtabns_subsys_system_register }, section "___ksymtab_gpl+subsys_system_register", align 4
@__kstrtab_subsys_virtual_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_subsys_virtual_register = external dso_local constant [0 x i8], align 1
@__ksymtab_subsys_virtual_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @subsys_virtual_register to i32), ptr @__kstrtab_subsys_virtual_register, ptr @__kstrtabns_subsys_virtual_register }, section "___ksymtab_gpl+subsys_virtual_register", align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@bus_uevent_ops = internal constant %struct.kset_uevent_ops { ptr @bus_uevent_filter, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@devices_kset = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@driver_sysfs_ops = internal constant %struct.sysfs_ops { ptr @drv_attr_show, ptr @drv_attr_store }, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"uevent\00", align 1
@driver_attr_unbind = internal global %struct.driver_attribute { %struct.attribute { ptr @.str.12, i16 128 }, ptr null, ptr @unbind_store }, align 4
@driver_attr_bind = internal global %struct.driver_attribute { %struct.attribute { ptr @.str.13, i16 128 }, ptr null, ptr @bind_store }, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"unbind\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@bus_sysfs_ops = internal constant %struct.sysfs_ops { ptr @bus_attr_show, ptr @bus_attr_store }, align 4
@bus_attr_drivers_probe = internal global %struct.bus_attribute { %struct.attribute { ptr @.str.14, i16 128 }, ptr null, ptr @drivers_probe_store }, align 4
@bus_attr_drivers_autoprobe = internal global %struct.bus_attribute { %struct.attribute { ptr @.str.15, i16 420 }, ptr @drivers_autoprobe_show, ptr @drivers_autoprobe_store }, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"drivers_probe\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"drivers_autoprobe\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ksymtab_bus_create_file, ptr @__ksymtab_bus_find_device, ptr @__ksymtab_bus_for_each_dev, ptr @__ksymtab_bus_for_each_drv, ptr @__ksymtab_bus_get_device_klist, ptr @__ksymtab_bus_get_kset, ptr @__ksymtab_bus_register, ptr @__ksymtab_bus_register_notifier, ptr @__ksymtab_bus_remove_file, ptr @__ksymtab_bus_rescan_devices, ptr @__ksymtab_bus_sort_breadthfirst, ptr @__ksymtab_bus_unregister, ptr @__ksymtab_bus_unregister_notifier, ptr @__ksymtab_device_reprobe, ptr @__ksymtab_subsys_dev_iter_exit, ptr @__ksymtab_subsys_dev_iter_init, ptr @__ksymtab_subsys_dev_iter_next, ptr @__ksymtab_subsys_find_device_by_id, ptr @__ksymtab_subsys_interface_register, ptr @__ksymtab_subsys_interface_unregister, ptr @__ksymtab_subsys_system_register, ptr @__ksymtab_subsys_virtual_register], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bus_create_file(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.kset, ptr %6, i32 0, i32 2
  %10 = tail call ptr @kobject_get(ptr noundef %9) #10
  %11 = load ptr, ptr %5, align 4
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi ptr [ null, %4 ], [ %11, %8 ]
  %14 = getelementptr inbounds %struct.kset, ptr %13, i32 0, i32 2
  %15 = tail call i32 @sysfs_create_file_ns(ptr noundef %14, ptr noundef %1, ptr noundef null) #10
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.kset, ptr %16, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %17) #10
  br label %18

18:                                               ; preds = %12, %2
  %19 = phi i32 [ %15, %12 ], [ -22, %2 ]
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bus_remove_file(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.kset, ptr %6, i32 0, i32 2
  %10 = tail call ptr @kobject_get(ptr noundef %9) #10
  %11 = load ptr, ptr %5, align 4
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi ptr [ null, %4 ], [ %11, %8 ]
  %14 = getelementptr inbounds %struct.kset, ptr %13, i32 0, i32 2
  tail call void @sysfs_remove_file_ns(ptr noundef %14, ptr noundef %1, ptr noundef null) #10
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.kset, ptr %15, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %16) #10
  br label %17

17:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bus_for_each_dev(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.klist_iter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store i64 0, ptr %5, align 8, !annotation !8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 20
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.subsys_private, ptr %9, i32 0, i32 5
  %13 = icmp eq ptr %1, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.device_private, ptr %16, i32 0, i32 3
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi ptr [ %17, %14 ], [ null, %11 ]
  call void @klist_iter_init_node(ptr noundef %12, ptr noundef nonnull %5, ptr noundef %19) #10
  br label %20

20:                                               ; preds = %27, %18
  %21 = call ptr @klist_next(ptr noundef nonnull %5) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = getelementptr i8, ptr %21, i32 48
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = call i32 %3(ptr noundef nonnull %25, ptr noundef %2) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %20, label %30

30:                                               ; preds = %27, %23, %20
  %31 = phi i32 [ 0, %20 ], [ %28, %27 ], [ 0, %23 ]
  call void @klist_iter_exit(ptr noundef nonnull %5) #10
  br label %32

32:                                               ; preds = %30, %7, %4
  %33 = phi i32 [ %31, %30 ], [ -22, %7 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret i32 %33
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_init_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bus_find_device(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.klist_iter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store i64 0, ptr %5, align 8, !annotation !8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 20
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %38, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.subsys_private, ptr %9, i32 0, i32 5
  %13 = icmp eq ptr %1, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.device_private, ptr %16, i32 0, i32 3
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi ptr [ %17, %14 ], [ null, %11 ]
  call void @klist_iter_init_node(ptr noundef %12, ptr noundef nonnull %5, ptr noundef %19) #10
  %20 = call ptr @klist_next(ptr noundef nonnull %5) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %33, %18
  %23 = phi ptr [ %34, %33 ], [ %20, %18 ]
  %24 = getelementptr i8, ptr %23, i32 48
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = call i32 %3(ptr noundef nonnull %25, ptr noundef %2) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = call ptr @get_device(ptr noundef nonnull %25) #10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %27
  %34 = call ptr @klist_next(ptr noundef nonnull %5) #10
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %22

36:                                               ; preds = %33, %30, %22, %18
  %37 = phi ptr [ null, %18 ], [ null, %33 ], [ %25, %30 ], [ null, %22 ]
  call void @klist_iter_exit(ptr noundef nonnull %5) #10
  br label %38

38:                                               ; preds = %36, %7, %4
  %39 = phi ptr [ %37, %36 ], [ null, %7 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret ptr %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @subsys_find_device_by_id(ptr noundef readonly %0, i32 noundef %1, ptr noundef readonly %2) #0 {
  %4 = alloca %struct.klist_iter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8, !annotation !8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %52, label %6

6:                                                ; preds = %3
  %7 = icmp eq ptr %2, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.subsys_private, ptr %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.device_private, ptr %13, i32 0, i32 3
  call void @klist_iter_init_node(ptr noundef %11, ptr noundef nonnull %4, ptr noundef %14) #10
  %15 = call ptr @klist_next(ptr noundef nonnull %4) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %8
  %18 = getelementptr i8, ptr %15, i32 48
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 28
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = call ptr @get_device(ptr noundef nonnull %19) #10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %50

28:                                               ; preds = %25, %21, %17, %8
  call void @klist_iter_exit(ptr noundef nonnull %4) #10
  br label %29

29:                                               ; preds = %28, %6
  %30 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 20
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.subsys_private, ptr %31, i32 0, i32 5
  call void @klist_iter_init_node(ptr noundef %32, ptr noundef nonnull %4, ptr noundef null) #10
  %33 = call ptr @klist_next(ptr noundef nonnull %4) #10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %50, label %35

35:                                               ; preds = %47, %29
  %36 = phi ptr [ %48, %47 ], [ %33, %29 ]
  %37 = getelementptr i8, ptr %36, i32 48
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 28
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, %1
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = call ptr @get_device(ptr noundef nonnull %38) #10
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %40
  %48 = call ptr @klist_next(ptr noundef nonnull %4) #10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %35

50:                                               ; preds = %47, %44, %35, %29, %25
  %51 = phi ptr [ %19, %25 ], [ null, %29 ], [ %38, %44 ], [ null, %35 ], [ null, %47 ]
  call void @klist_iter_exit(ptr noundef nonnull %4) #10
  br label %52

52:                                               ; preds = %50, %3
  %53 = phi ptr [ null, %3 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret ptr %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bus_for_each_drv(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.klist_iter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store i64 0, ptr %5, align 8, !annotation !8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 20
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.subsys_private, ptr %9, i32 0, i32 6
  %11 = icmp eq ptr %1, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 18
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.driver_private, ptr %14, i32 0, i32 2
  br label %16

16:                                               ; preds = %12, %7
  %17 = phi ptr [ %15, %12 ], [ null, %7 ]
  call void @klist_iter_init_node(ptr noundef %10, ptr noundef nonnull %5, ptr noundef %17) #10
  %18 = call ptr @klist_next(ptr noundef nonnull %5) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %28, %16
  %21 = phi ptr [ %30, %28 ], [ %18, %16 ]
  %22 = phi i32 [ %29, %28 ], [ 0, %16 ]
  %23 = getelementptr i8, ptr %21, i32 20
  %24 = load ptr, ptr %23, align 4
  %25 = icmp ne ptr %24, null
  %26 = icmp eq i32 %22, 0
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = call i32 %3(ptr noundef nonnull %24, ptr noundef %2) #10
  %30 = call ptr @klist_next(ptr noundef nonnull %5) #10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %20

32:                                               ; preds = %28, %20, %16
  %33 = phi i32 [ 0, %16 ], [ %29, %28 ], [ %22, %20 ]
  call void @klist_iter_exit(ptr noundef nonnull %5) #10
  br label %34

34:                                               ; preds = %32, %4
  %35 = phi i32 [ %33, %32 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bus_add_device(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %66, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bus_type, ptr %3, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.kset, ptr %7, i32 0, i32 2
  %11 = tail call ptr @kobject_get(ptr noundef %10) #10
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct.bus_type, ptr %3, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @device_add_groups(ptr noundef %0, ptr noundef %14) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %12
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr inbounds %struct.subsys_private, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.kset, ptr %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load ptr, ptr %0, align 4
  br label %27

27:                                               ; preds = %25, %17
  %28 = phi ptr [ %26, %25 ], [ %23, %17 ]
  %29 = tail call i32 @sysfs_create_link(ptr noundef %21, ptr noundef %0, ptr noundef %28) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr inbounds %struct.bus_type, ptr %32, i32 0, i32 20
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.kset, ptr %34, i32 0, i32 2
  %36 = tail call i32 @sysfs_create_link(ptr noundef %0, ptr noundef %35, ptr noundef nonnull @.str) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.device_private, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %6, align 4
  %43 = getelementptr inbounds %struct.subsys_private, ptr %42, i32 0, i32 5
  tail call void @klist_add_tail(ptr noundef %41, ptr noundef %43) #10
  br label %66

44:                                               ; preds = %31
  %45 = load ptr, ptr %6, align 4
  %46 = getelementptr inbounds %struct.subsys_private, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.kset, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %22, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load ptr, ptr %0, align 4
  br label %53

53:                                               ; preds = %51, %44
  %54 = phi ptr [ %52, %51 ], [ %49, %44 ]
  tail call void @sysfs_remove_link(ptr noundef %48, ptr noundef %54) #10
  br label %55

55:                                               ; preds = %53, %27
  %56 = phi i32 [ %29, %27 ], [ %36, %53 ]
  %57 = load ptr, ptr %13, align 4
  tail call void @device_remove_groups(ptr noundef %0, ptr noundef %57) #10
  br label %58

58:                                               ; preds = %55, %12
  %59 = phi i32 [ %15, %12 ], [ %56, %55 ]
  %60 = load ptr, ptr %2, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.bus_type, ptr %60, i32 0, i32 20
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.kset, ptr %64, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %65) #10
  br label %66

66:                                               ; preds = %62, %58, %38, %1
  %67 = phi i32 [ 0, %38 ], [ 0, %1 ], [ %59, %58 ], [ %59, %62 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_groups(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_add_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bus_probe_device(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bus_type, ptr %3, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.subsys_private, ptr %7, i32 0, i32 8
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  tail call void @device_initial_probe(ptr noundef %0) #10
  %13 = load ptr, ptr %6, align 4
  br label %14

14:                                               ; preds = %12, %5
  %15 = phi ptr [ %13, %12 ], [ %7, %5 ]
  %16 = getelementptr inbounds %struct.subsys_private, ptr %15, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %16) #10
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.subsys_private, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %36, label %21

21:                                               ; preds = %31, %14
  %22 = phi ptr [ %32, %31 ], [ %17, %14 ]
  %23 = phi ptr [ %33, %31 ], [ %19, %14 ]
  %24 = getelementptr i8, ptr %23, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = getelementptr i8, ptr %23, i32 -8
  %29 = tail call i32 %25(ptr noundef %0, ptr noundef %28) #10
  %30 = load ptr, ptr %6, align 4
  br label %31

31:                                               ; preds = %27, %21
  %32 = phi ptr [ %22, %21 ], [ %30, %27 ]
  %33 = load ptr, ptr %23, align 4
  %34 = getelementptr inbounds %struct.subsys_private, ptr %32, i32 0, i32 2
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %36, label %21

36:                                               ; preds = %31, %14
  %37 = phi ptr [ %17, %14 ], [ %32, %31 ]
  %38 = getelementptr inbounds %struct.subsys_private, ptr %37, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %38) #10
  br label %39

39:                                               ; preds = %36, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initial_probe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bus_remove_device(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %61, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bus_type, ptr %3, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.subsys_private, ptr %7, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %8) #10
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.subsys_private, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %27, label %13

13:                                               ; preds = %22, %5
  %14 = phi ptr [ %23, %22 ], [ %9, %5 ]
  %15 = phi ptr [ %24, %22 ], [ %11, %5 ]
  %16 = getelementptr i8, ptr %15, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = getelementptr i8, ptr %15, i32 -8
  tail call void %17(ptr noundef %0, ptr noundef %20) #10
  %21 = load ptr, ptr %6, align 4
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi ptr [ %14, %13 ], [ %21, %19 ]
  %24 = load ptr, ptr %15, align 4
  %25 = getelementptr inbounds %struct.subsys_private, ptr %23, i32 0, i32 2
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %13

27:                                               ; preds = %22, %5
  %28 = phi ptr [ %9, %5 ], [ %23, %22 ]
  %29 = getelementptr inbounds %struct.subsys_private, ptr %28, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %29) #10
  tail call void @sysfs_remove_link(ptr noundef %0, ptr noundef nonnull @.str) #10
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr inbounds %struct.bus_type, ptr %30, i32 0, i32 20
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.subsys_private, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.kset, ptr %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load ptr, ptr %0, align 4
  br label %41

41:                                               ; preds = %39, %27
  %42 = phi ptr [ %40, %39 ], [ %37, %27 ]
  tail call void @sysfs_remove_link(ptr noundef %35, ptr noundef %42) #10
  %43 = load ptr, ptr %2, align 4
  %44 = getelementptr inbounds %struct.bus_type, ptr %43, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  tail call void @device_remove_groups(ptr noundef %0, ptr noundef %45) #10
  %46 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.device_private, ptr %47, i32 0, i32 3
  %49 = tail call i32 @klist_node_attached(ptr noundef %48) #10
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %41
  %52 = load ptr, ptr %46, align 8
  %53 = getelementptr inbounds %struct.device_private, ptr %52, i32 0, i32 3
  tail call void @klist_del(ptr noundef %53) #10
  br label %54

54:                                               ; preds = %51, %41
  tail call void @device_release_driver(ptr noundef %0) #10
  %55 = load ptr, ptr %2, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.bus_type, ptr %55, i32 0, i32 20
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.kset, ptr %59, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %60) #10
  br label %61

61:                                               ; preds = %57, %54, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @klist_node_attached(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_release_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bus_add_driver(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %77, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bus_type, ptr %3, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.kset, ptr %7, i32 0, i32 2
  %11 = tail call ptr @kobject_get(ptr noundef %10) #10
  br label %12

12:                                               ; preds = %9, %5
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 80) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %73, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.driver_private, ptr %14, i32 0, i32 1
  tail call void @klist_init(ptr noundef %17, ptr noundef null, ptr noundef null) #10
  %18 = getelementptr inbounds %struct.driver_private, ptr %14, i32 0, i32 4
  store ptr %0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 18
  store ptr %14, ptr %19, align 4
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr inbounds %struct.subsys_private, ptr %20, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.kobject, ptr %14, i32 0, i32 3
  store ptr %22, ptr %23, align 8
  %24 = load ptr, ptr %0, align 4
  %25 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %14, ptr noundef nonnull @driver_ktype, ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef %24) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %71

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.driver_private, ptr %14, i32 0, i32 2
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr inbounds %struct.subsys_private, ptr %29, i32 0, i32 6
  tail call void @klist_add_tail(ptr noundef %28, ptr noundef %30) #10
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr inbounds %struct.bus_type, ptr %31, i32 0, i32 20
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.subsys_private, ptr %33, i32 0, i32 8
  %35 = load i8, ptr %34, align 4
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %27
  %39 = tail call i32 @driver_attach(ptr noundef %0) #10
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %71

41:                                               ; preds = %38, %27
  %42 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  tail call void @module_add_driver(ptr noundef %43, ptr noundef %0) #10
  %44 = tail call i32 @driver_create_file(ptr noundef %0, ptr noundef nonnull @driver_attr_uevent) #10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %0, align 4
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.bus_add_driver, ptr noundef %47) #12
  br label %49

49:                                               ; preds = %46, %41
  %50 = getelementptr inbounds %struct.bus_type, ptr %3, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @driver_add_groups(ptr noundef %0, ptr noundef %51) #10
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load ptr, ptr %0, align 4
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.bus_add_driver, ptr noundef %55) #12
  br label %57

57:                                               ; preds = %54, %49
  %58 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 4
  %59 = load i8, ptr %58, align 4, !range !9
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = tail call i32 @driver_create_file(ptr noundef %0, ptr noundef nonnull @driver_attr_unbind) #10
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = tail call i32 @driver_create_file(ptr noundef %0, ptr noundef nonnull @driver_attr_bind) #10
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %64
  tail call void @driver_remove_file(ptr noundef %0, ptr noundef nonnull @driver_attr_unbind) #10
  br label %68

68:                                               ; preds = %67, %61
  %69 = load ptr, ptr %0, align 4
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.bus_add_driver, ptr noundef %69) #12
  br label %77

71:                                               ; preds = %38, %16
  %72 = phi i32 [ %25, %16 ], [ %39, %38 ]
  tail call void @kobject_put(ptr noundef nonnull %14) #10
  store ptr null, ptr %19, align 4
  br label %73

73:                                               ; preds = %71, %12
  %74 = phi i32 [ %72, %71 ], [ -12, %12 ]
  %75 = load ptr, ptr %6, align 4
  %76 = getelementptr inbounds %struct.kset, ptr %75, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %76) #10
  br label %77

77:                                               ; preds = %73, %68, %64, %57, %1
  %78 = phi i32 [ %74, %73 ], [ 0, %68 ], [ 0, %57 ], [ -22, %1 ], [ 0, %64 ]
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_add_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_create_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_add_groups(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bus_remove_driver(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 4
  %7 = load i8, ptr %6, align 4, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  tail call void @driver_remove_file(ptr noundef %0, ptr noundef nonnull @driver_attr_bind) #10
  tail call void @driver_remove_file(ptr noundef %0, ptr noundef nonnull @driver_attr_unbind) #10
  %10 = load ptr, ptr %2, align 4
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi ptr [ %10, %9 ], [ %3, %5 ]
  %13 = getelementptr inbounds %struct.bus_type, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  tail call void @driver_remove_groups(ptr noundef %0, ptr noundef %14) #10
  tail call void @driver_remove_file(ptr noundef %0, ptr noundef nonnull @driver_attr_uevent) #10
  %15 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 18
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.driver_private, ptr %16, i32 0, i32 2
  tail call void @klist_remove(ptr noundef %17) #10
  tail call void @driver_detach(ptr noundef %0) #10
  tail call void @module_remove_driver(ptr noundef %0) #10
  %18 = load ptr, ptr %15, align 4
  tail call void @kobject_put(ptr noundef %18) #10
  %19 = load ptr, ptr %2, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.bus_type, ptr %19, i32 0, i32 20
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.kset, ptr %23, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %24) #10
  br label %25

25:                                               ; preds = %21, %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_remove_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bus_rescan_devices(ptr noundef readonly %0) #0 {
  %2 = alloca %struct.klist_iter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store i64 0, ptr %2, align 8, !annotation !8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %50, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %50, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.subsys_private, ptr %6, i32 0, i32 5
  call void @klist_iter_init_node(ptr noundef %9, ptr noundef nonnull %2, ptr noundef null) #10
  br label %10

10:                                               ; preds = %45, %8
  %11 = call ptr @klist_next(ptr noundef nonnull %2) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %48, label %13

13:                                               ; preds = %10
  %14 = getelementptr i8, ptr %11, i32 48
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %48, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 6
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %45

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.bus_type, ptr %27, i32 0, i32 22
  %29 = load i8, ptr %28, align 4, !range !9
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 9
  call void @mutex_lock(ptr noundef %32) #10
  br label %33

33:                                               ; preds = %31, %25, %21
  %34 = call i32 @device_attach(ptr noundef nonnull %15) #10
  %35 = load ptr, ptr %22, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.bus_type, ptr %39, i32 0, i32 22
  %41 = load i8, ptr %40, align 4, !range !9
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %44) #10
  br label %45

45:                                               ; preds = %43, %37, %33, %17
  %46 = phi i32 [ 0, %17 ], [ %34, %43 ], [ %34, %37 ], [ %34, %33 ]
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %10, label %48

48:                                               ; preds = %45, %13, %10
  %49 = phi i32 [ %46, %45 ], [ 0, %13 ], [ 0, %10 ]
  call void @klist_iter_exit(ptr noundef nonnull %2) #10
  br label %50

50:                                               ; preds = %48, %4, %1
  %51 = phi i32 [ %49, %48 ], [ -22, %4 ], [ -22, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_reprobe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  tail call void @device_driver_detach(ptr noundef %0) #10
  %6 = load ptr, ptr %2, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %32

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.bus_type, ptr %14, i32 0, i32 22
  %16 = load i8, ptr %15, align 4, !range !9
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %19) #10
  br label %20

20:                                               ; preds = %18, %12, %8
  %21 = tail call i32 @device_attach(ptr noundef %0) #10
  %22 = load ptr, ptr %9, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.bus_type, ptr %26, i32 0, i32 22
  %28 = load i8, ptr %27, align 4, !range !9
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %31) #10
  br label %32

32:                                               ; preds = %30, %24, %20, %5
  %33 = phi i32 [ 0, %5 ], [ %21, %30 ], [ %21, %24 ], [ %21, %20 ]
  %34 = tail call i32 @llvm.smin.i32(i32 %33, i32 0) #10
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_driver_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bus_register(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 220) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %93, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.subsys_private, ptr %4, i32 0, i32 9
  store ptr %0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 20
  store ptr %4, ptr %8, align 4
  %9 = getelementptr inbounds %struct.subsys_private, ptr %4, i32 0, i32 7
  tail call void @__init_rwsem(ptr noundef %9, ptr noundef nonnull @.str.5, ptr noundef nonnull @bus_register.__key) #10
  %10 = getelementptr inbounds %struct.subsys_private, ptr %4, i32 0, i32 7, i32 1
  store ptr null, ptr %10, align 8
  %11 = getelementptr inbounds %struct.kset, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %0, align 4
  %13 = tail call i32 (ptr, ptr, ...) @kobject_set_name(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef %12) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %90

15:                                               ; preds = %6
  %16 = load ptr, ptr @bus_kset, align 4
  %17 = getelementptr inbounds %struct.kset, ptr %4, i32 0, i32 2, i32 3
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.kset, ptr %4, i32 0, i32 2, i32 4
  store ptr @bus_ktype, ptr %18, align 8
  %19 = getelementptr inbounds %struct.subsys_private, ptr %4, i32 0, i32 8
  %20 = load i8, ptr %19, align 4
  %21 = or i8 %20, 1
  store i8 %21, ptr %19, align 4
  %22 = tail call i32 @kset_register(ptr noundef nonnull %4) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %90

24:                                               ; preds = %15
  %25 = icmp eq ptr %0, null
  br i1 %25, label %87, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %8, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.kset, ptr %27, i32 0, i32 2
  %31 = tail call ptr @kobject_get(ptr noundef %30) #10
  %32 = load ptr, ptr %8, align 4
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi ptr [ null, %26 ], [ %32, %29 ]
  %35 = getelementptr inbounds %struct.kset, ptr %34, i32 0, i32 2
  %36 = tail call i32 @sysfs_create_file_ns(ptr noundef %35, ptr noundef nonnull @bus_attr_uevent, ptr noundef null) #10
  %37 = load ptr, ptr %8, align 4
  %38 = getelementptr inbounds %struct.kset, ptr %37, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %38) #10
  %39 = icmp eq i32 %36, 0
  br i1 %39, label %40, label %87

40:                                               ; preds = %33
  %41 = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef %11) #10
  %42 = getelementptr inbounds %struct.subsys_private, ptr %4, i32 0, i32 1
  store ptr %41, ptr %42, align 4
  %43 = icmp eq ptr %41, null
  br i1 %43, label %74, label %44

44:                                               ; preds = %40
  %45 = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str.7, ptr noundef null, ptr noundef %11) #10
  %46 = getelementptr inbounds %struct.subsys_private, ptr %4, i32 0, i32 4
  store ptr %45, ptr %46, align 4
  %47 = icmp eq ptr %45, null
  br i1 %47, label %69, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.subsys_private, ptr %4, i32 0, i32 2
  store volatile ptr %49, ptr %49, align 8
  %50 = getelementptr inbounds %struct.subsys_private, ptr %4, i32 0, i32 2, i32 1
  store ptr %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.subsys_private, ptr %4, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %51, ptr noundef nonnull @.str.8, ptr noundef %2) #10
  %52 = getelementptr inbounds %struct.subsys_private, ptr %4, i32 0, i32 5
  tail call void @klist_init(ptr noundef %52, ptr noundef nonnull @klist_devices_get, ptr noundef nonnull @klist_devices_put) #10
  %53 = getelementptr inbounds %struct.subsys_private, ptr %4, i32 0, i32 6
  tail call void @klist_init(ptr noundef %53, ptr noundef null, ptr noundef null) #10
  %54 = tail call fastcc i32 @add_probe_files(ptr noundef nonnull %0)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %8, align 4
  %60 = getelementptr inbounds %struct.kset, ptr %59, i32 0, i32 2
  %61 = tail call i32 @sysfs_create_groups(ptr noundef %60, ptr noundef %58) #10
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %93, label %63

63:                                               ; preds = %56
  tail call fastcc void @remove_probe_files(ptr noundef nonnull %0)
  br label %64

64:                                               ; preds = %63, %48
  %65 = phi i32 [ %54, %48 ], [ %61, %63 ]
  %66 = load ptr, ptr %8, align 4
  %67 = getelementptr inbounds %struct.subsys_private, ptr %66, i32 0, i32 4
  %68 = load ptr, ptr %67, align 4
  tail call void @kset_unregister(ptr noundef %68) #10
  br label %69

69:                                               ; preds = %64, %44
  %70 = phi i32 [ %65, %64 ], [ -12, %44 ]
  %71 = load ptr, ptr %8, align 4
  %72 = getelementptr inbounds %struct.subsys_private, ptr %71, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  tail call void @kset_unregister(ptr noundef %73) #10
  br label %74

74:                                               ; preds = %69, %40
  %75 = phi i32 [ %70, %69 ], [ -12, %40 ]
  %76 = load ptr, ptr %8, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.kset, ptr %76, i32 0, i32 2
  %80 = tail call ptr @kobject_get(ptr noundef %79) #10
  %81 = load ptr, ptr %8, align 4
  br label %82

82:                                               ; preds = %78, %74
  %83 = phi ptr [ null, %74 ], [ %81, %78 ]
  %84 = getelementptr inbounds %struct.kset, ptr %83, i32 0, i32 2
  tail call void @sysfs_remove_file_ns(ptr noundef %84, ptr noundef nonnull @bus_attr_uevent, ptr noundef null) #10
  %85 = load ptr, ptr %8, align 4
  %86 = getelementptr inbounds %struct.kset, ptr %85, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %86) #10
  br label %87

87:                                               ; preds = %82, %33, %24
  %88 = phi i32 [ %36, %33 ], [ %75, %82 ], [ -22, %24 ]
  %89 = load ptr, ptr %8, align 4
  tail call void @kset_unregister(ptr noundef %89) #10
  br label %90

90:                                               ; preds = %87, %15, %6
  %91 = phi i32 [ %13, %6 ], [ %22, %15 ], [ %88, %87 ]
  %92 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %92) #10
  store ptr null, ptr %8, align 4
  br label %93

93:                                               ; preds = %90, %56, %1
  %94 = phi i32 [ %91, %90 ], [ -12, %1 ], [ 0, %56 ]
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kset_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @klist_devices_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 48
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @get_device(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @klist_devices_put(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 48
  %3 = load ptr, ptr %2, align 4
  tail call void @put_device(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @add_probe_files(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %44, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.kset, ptr %5, i32 0, i32 2
  %9 = tail call ptr @kobject_get(ptr noundef %8) #10
  %10 = load ptr, ptr %4, align 4
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi ptr [ null, %3 ], [ %10, %7 ]
  %13 = getelementptr inbounds %struct.kset, ptr %12, i32 0, i32 2
  %14 = tail call i32 @sysfs_create_file_ns(ptr noundef %13, ptr noundef nonnull @bus_attr_drivers_probe, ptr noundef null) #10
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.kset, ptr %15, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %16) #10
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %11
  %19 = load ptr, ptr %4, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.kset, ptr %19, i32 0, i32 2
  %23 = tail call ptr @kobject_get(ptr noundef %22) #10
  %24 = load ptr, ptr %4, align 4
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi ptr [ null, %18 ], [ %24, %21 ]
  %27 = getelementptr inbounds %struct.kset, ptr %26, i32 0, i32 2
  %28 = tail call i32 @sysfs_create_file_ns(ptr noundef %27, ptr noundef nonnull @bus_attr_drivers_autoprobe, ptr noundef null) #10
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr inbounds %struct.kset, ptr %29, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %30) #10
  %31 = icmp eq i32 %28, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %25
  %33 = load ptr, ptr %4, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.kset, ptr %33, i32 0, i32 2
  %37 = tail call ptr @kobject_get(ptr noundef %36) #10
  %38 = load ptr, ptr %4, align 4
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi ptr [ null, %32 ], [ %38, %35 ]
  %41 = getelementptr inbounds %struct.kset, ptr %40, i32 0, i32 2
  tail call void @sysfs_remove_file_ns(ptr noundef %41, ptr noundef nonnull @bus_attr_drivers_probe, ptr noundef null) #10
  %42 = load ptr, ptr %4, align 4
  %43 = getelementptr inbounds %struct.kset, ptr %42, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %43) #10
  br label %44

44:                                               ; preds = %39, %25, %11, %1
  %45 = phi i32 [ %14, %11 ], [ %28, %39 ], [ 0, %25 ], [ -22, %1 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @remove_probe_files(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.kset, ptr %5, i32 0, i32 2
  %9 = tail call ptr @kobject_get(ptr noundef %8) #10
  %10 = load ptr, ptr %4, align 4
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi ptr [ null, %3 ], [ %10, %7 ]
  %13 = getelementptr inbounds %struct.kset, ptr %12, i32 0, i32 2
  tail call void @sysfs_remove_file_ns(ptr noundef %13, ptr noundef nonnull @bus_attr_drivers_autoprobe, ptr noundef null) #10
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.kset, ptr %14, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %15) #10
  %16 = load ptr, ptr %4, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.kset, ptr %16, i32 0, i32 2
  %20 = tail call ptr @kobject_get(ptr noundef %19) #10
  %21 = load ptr, ptr %4, align 4
  br label %22

22:                                               ; preds = %18, %11
  %23 = phi ptr [ null, %11 ], [ %21, %18 ]
  %24 = getelementptr inbounds %struct.kset, ptr %23, i32 0, i32 2
  tail call void @sysfs_remove_file_ns(ptr noundef %24, ptr noundef nonnull @bus_attr_drivers_probe, ptr noundef null) #10
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr inbounds %struct.kset, ptr %25, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %26) #10
  br label %27

27:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bus_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @device_unregister(ptr noundef nonnull %3) #10
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.kset, ptr %10, i32 0, i32 2
  tail call void @sysfs_remove_groups(ptr noundef %11, ptr noundef %8) #10
  tail call fastcc void @remove_probe_files(ptr noundef %0)
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.subsys_private, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  tail call void @kset_unregister(ptr noundef %14) #10
  %15 = load ptr, ptr %9, align 4
  %16 = getelementptr inbounds %struct.subsys_private, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void @kset_unregister(ptr noundef %17) #10
  %18 = icmp eq ptr %0, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %6
  %20 = load ptr, ptr %9, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.kset, ptr %20, i32 0, i32 2
  %24 = tail call ptr @kobject_get(ptr noundef %23) #10
  %25 = load ptr, ptr %9, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi ptr [ null, %19 ], [ %25, %22 ]
  %28 = getelementptr inbounds %struct.kset, ptr %27, i32 0, i32 2
  tail call void @sysfs_remove_file_ns(ptr noundef %28, ptr noundef nonnull @bus_attr_uevent, ptr noundef null) #10
  %29 = load ptr, ptr %9, align 4
  %30 = getelementptr inbounds %struct.kset, ptr %29, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %30) #10
  br label %31

31:                                               ; preds = %26, %6
  %32 = load ptr, ptr %9, align 4
  tail call void @kset_unregister(ptr noundef %32) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bus_register_notifier(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.subsys_private, ptr %4, i32 0, i32 7
  %6 = tail call i32 @blocking_notifier_chain_register(ptr noundef %5, ptr noundef %1) #10
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bus_unregister_notifier(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.subsys_private, ptr %4, i32 0, i32 7
  %6 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %5, ptr noundef %1) #10
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @bus_get_kset(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @bus_get_device_klist(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.subsys_private, ptr %3, i32 0, i32 5
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bus_sort_breadthfirst(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.subsys_private, ptr %6, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.subsys_private, ptr %6, i32 0, i32 5, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %49, label %11

11:                                               ; preds = %47, %2
  %12 = phi ptr [ %13, %47 ], [ %9, %2 ]
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %12, i32 44
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %20, %11
  %17 = phi ptr [ %3, %11 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %3
  br i1 %19, label %38, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %18, i32 44
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 %1(ptr noundef %15, ptr noundef %22) #10
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %16

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.device_private, ptr %27, i32 0, i32 3, i32 1
  %29 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.device_private, ptr %30, i32 0, i32 3, i32 1
  %32 = getelementptr inbounds %struct.device_private, ptr %27, i32 0, i32 3, i32 1, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %28, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %33, ptr %35, align 4
  store volatile ptr %34, ptr %33, align 4
  %36 = getelementptr inbounds %struct.device_private, ptr %30, i32 0, i32 3, i32 1, i32 1
  %37 = load ptr, ptr %36, align 4
  store ptr %28, ptr %36, align 4
  store ptr %31, ptr %28, align 4
  store ptr %37, ptr %32, align 4
  store volatile ptr %28, ptr %37, align 4
  br label %47

38:                                               ; preds = %16
  %39 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.device_private, ptr %40, i32 0, i32 3, i32 1
  %42 = getelementptr inbounds %struct.device_private, ptr %40, i32 0, i32 3, i32 1, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %41, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr %43, ptr %45, align 4
  store volatile ptr %44, ptr %43, align 4
  %46 = load ptr, ptr %4, align 4
  store ptr %41, ptr %4, align 4
  store ptr %3, ptr %41, align 4
  store ptr %46, ptr %42, align 4
  store volatile ptr %41, ptr %46, align 4
  br label %47

47:                                               ; preds = %38, %25
  %48 = icmp eq ptr %13, %8
  br i1 %48, label %49, label %11

49:                                               ; preds = %47, %2
  %50 = load volatile ptr, ptr %3, align 8
  %51 = icmp eq ptr %50, %3
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %8, align 4
  %54 = load ptr, ptr %4, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %8, ptr %55, align 4
  store ptr %50, ptr %8, align 4
  store ptr %53, ptr %54, align 4
  %56 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  store ptr %54, ptr %56, align 4
  br label %57

57:                                               ; preds = %52, %49
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %58 = load i16, ptr %7, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @subsys_dev_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.device_private, ptr %8, i32 0, i32 3
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi ptr [ %9, %6 ], [ null, %4 ]
  %12 = getelementptr inbounds %struct.bus_type, ptr %1, i32 0, i32 20
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.subsys_private, ptr %13, i32 0, i32 5
  tail call void @klist_iter_init_node(ptr noundef %14, ptr noundef %0, ptr noundef %11) #10
  %15 = getelementptr inbounds %struct.subsys_dev_iter, ptr %0, i32 0, i32 1
  store ptr %3, ptr %15, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @subsys_dev_iter_next(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.subsys_dev_iter, ptr %0, i32 0, i32 1
  br label %3

3:                                                ; preds = %11, %1
  %4 = tail call ptr @klist_next(ptr noundef %0) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %4, i32 48
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 4
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %9, %13
  br i1 %14, label %15, label %3

15:                                               ; preds = %11, %6, %3
  %16 = phi ptr [ null, %3 ], [ %8, %11 ], [ %8, %6 ]
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @klist_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @subsys_dev_iter_exit(ptr noundef %0) #0 {
  tail call void @klist_iter_exit(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @subsys_interface_register(ptr noundef %0) #0 {
  %2 = alloca %struct.subsys_dev_iter, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false), !annotation !8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %54, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.subsys_interface, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %54, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bus_type, ptr %6, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.kset, ptr %10, i32 0, i32 2
  %14 = tail call ptr @kobject_get(ptr noundef %13) #10
  %15 = load ptr, ptr %9, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi ptr [ %15, %12 ], [ null, %8 ]
  %18 = getelementptr inbounds %struct.subsys_private, ptr %17, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %18) #10
  %19 = getelementptr inbounds %struct.subsys_interface, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr inbounds %struct.subsys_private, ptr %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.subsys_private, ptr %20, i32 0, i32 2, i32 1
  %23 = load ptr, ptr %22, align 4
  store ptr %19, ptr %22, align 4
  store ptr %21, ptr %19, align 4
  %24 = getelementptr inbounds %struct.subsys_interface, ptr %0, i32 0, i32 2, i32 1
  store ptr %23, ptr %24, align 4
  store volatile ptr %19, ptr %23, align 4
  %25 = getelementptr inbounds %struct.subsys_interface, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %51, label %28

28:                                               ; preds = %16
  %29 = load ptr, ptr %9, align 4
  %30 = getelementptr inbounds %struct.subsys_private, ptr %29, i32 0, i32 5
  call void @klist_iter_init_node(ptr noundef %30, ptr noundef nonnull %2, ptr noundef null) #10
  %31 = getelementptr inbounds %struct.subsys_dev_iter, ptr %2, i32 0, i32 1
  store ptr null, ptr %31, align 4
  br label %32

32:                                               ; preds = %44, %28
  %33 = call ptr @klist_next(ptr noundef nonnull %2) #10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %50, label %35

35:                                               ; preds = %32
  %36 = getelementptr i8, ptr %33, i32 48
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %31, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 4
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %38, %42
  br i1 %43, label %45, label %44

44:                                               ; preds = %47, %40
  br label %32

45:                                               ; preds = %40, %35
  %46 = icmp eq ptr %37, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %45
  %48 = load ptr, ptr %25, align 4
  %49 = call i32 %48(ptr noundef nonnull %37, ptr noundef nonnull %0) #10
  br label %44

50:                                               ; preds = %45, %32
  call void @klist_iter_exit(ptr noundef nonnull %2) #10
  br label %51

51:                                               ; preds = %50, %16
  %52 = load ptr, ptr %9, align 4
  %53 = getelementptr inbounds %struct.subsys_private, ptr %52, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %53) #10
  br label %54

54:                                               ; preds = %51, %4, %1
  %55 = phi i32 [ 0, %51 ], [ -19, %4 ], [ -19, %1 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @subsys_interface_unregister(ptr noundef %0) #0 {
  %2 = alloca %struct.subsys_dev_iter, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false), !annotation !8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %47, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.subsys_interface, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bus_type, ptr %6, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.subsys_private, ptr %10, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %11) #10
  %12 = getelementptr inbounds %struct.subsys_interface, ptr %0, i32 0, i32 2
  %13 = getelementptr inbounds %struct.subsys_interface, ptr %0, i32 0, i32 2, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  store volatile ptr %12, ptr %12, align 4
  store ptr %12, ptr %13, align 4
  %17 = getelementptr inbounds %struct.subsys_interface, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %42, label %20

20:                                               ; preds = %8
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr inbounds %struct.subsys_private, ptr %21, i32 0, i32 5
  call void @klist_iter_init_node(ptr noundef %22, ptr noundef nonnull %2, ptr noundef null) #10
  %23 = getelementptr inbounds %struct.subsys_dev_iter, ptr %2, i32 0, i32 1
  store ptr null, ptr %23, align 4
  br label %24

24:                                               ; preds = %36, %20
  %25 = call ptr @klist_next(ptr noundef nonnull %2) #10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %24
  %28 = getelementptr i8, ptr %25, i32 48
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %23, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 4
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %30, %34
  br i1 %35, label %37, label %36

36:                                               ; preds = %39, %32
  br label %24

37:                                               ; preds = %32, %27
  %38 = icmp eq ptr %29, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %37
  %40 = load ptr, ptr %17, align 4
  call void %40(ptr noundef nonnull %29, ptr noundef nonnull %0) #10
  br label %36

41:                                               ; preds = %37, %24
  call void @klist_iter_exit(ptr noundef nonnull %2) #10
  br label %42

42:                                               ; preds = %41, %8
  %43 = load ptr, ptr %9, align 4
  %44 = getelementptr inbounds %struct.subsys_private, ptr %43, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %44) #10
  %45 = load ptr, ptr %9, align 4
  %46 = getelementptr inbounds %struct.kset, ptr %45, i32 0, i32 2
  call void @kobject_put(ptr noundef %46) #10
  br label %47

47:                                               ; preds = %42, %4, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @subsys_system_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @system_kset, align 4
  %4 = getelementptr inbounds %struct.kset, ptr %3, i32 0, i32 2
  %5 = tail call fastcc i32 @subsys_register(ptr noundef %0, ptr noundef %1, ptr noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @subsys_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call i32 @bus_register(ptr noundef %0)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 472) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 4
  %12 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %8, ptr noundef nonnull @.str.1, ptr noundef %11) #10
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.kobject, ptr %8, i32 0, i32 2
  store ptr %2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 32
  store ptr %1, ptr %16, align 8
  %17 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 33
  store ptr @system_root_device_release, ptr %17, align 4
  %18 = tail call i32 @device_register(ptr noundef nonnull %8) #10
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 2
  store ptr %8, ptr %21, align 4
  br label %28

22:                                               ; preds = %14
  tail call void @put_device(ptr noundef nonnull %8) #10
  br label %23

23:                                               ; preds = %22, %10
  %24 = phi ptr [ %8, %10 ], [ null, %22 ]
  %25 = phi i32 [ %12, %10 ], [ %18, %22 ]
  tail call void @kfree(ptr noundef %24) #10
  br label %26

26:                                               ; preds = %23, %6
  %27 = phi i32 [ %25, %23 ], [ -12, %6 ]
  tail call void @bus_unregister(ptr noundef %0)
  br label %28

28:                                               ; preds = %26, %20, %3
  %29 = phi i32 [ %27, %26 ], [ 0, %20 ], [ %4, %3 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @subsys_virtual_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @virtual_device_parent(ptr noundef null) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @subsys_register(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ -12, %2 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtual_device_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @buses_init() local_unnamed_addr #6 section ".init.text" {
  %1 = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str.9, ptr noundef nonnull @bus_uevent_ops, ptr noundef null) #10
  store ptr %1, ptr @bus_kset, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @devices_kset, align 4
  %5 = getelementptr inbounds %struct.kset, ptr %4, i32 0, i32 2
  %6 = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str.10, ptr noundef null, ptr noundef %5) #10
  store ptr %6, ptr @system_kset, align 4
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, i32 -12, i32 0
  br label %9

9:                                                ; preds = %3, %0
  %10 = phi i32 [ -12, %0 ], [ %8, %3 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @driver_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drv_attr_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.driver_attribute, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.driver_private, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %5(ptr noundef %9, ptr noundef %2) #10
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ -5, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drv_attr_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.driver_attribute, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.driver_private, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %6(ptr noundef %10, ptr noundef %2, i32 noundef %3) #10
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %11, %8 ], [ -5, %4 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uevent_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 18
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @kobject_synth_uevent(ptr noundef %5, ptr noundef %1, i32 noundef %2) #10
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 %2, i32 %6
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_synth_uevent(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unbind_store(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.klist_iter, align 8
  %5 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.bus_type, ptr %6, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  br label %37

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  br label %37

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.kset, ptr %10, i32 0, i32 2
  %16 = tail call ptr @kobject_get(ptr noundef %15) #10
  %17 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8, !annotation !8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %37, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.subsys_private, ptr %17, i32 0, i32 5
  call void @klist_iter_init_node(ptr noundef %20, ptr noundef nonnull %4, ptr noundef null) #10
  %21 = call ptr @klist_next(ptr noundef nonnull %4) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %34, %19
  %24 = phi ptr [ %35, %34 ], [ %21, %19 ]
  %25 = getelementptr i8, ptr %24, i32 48
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = call i32 @device_match_name(ptr noundef nonnull %26, ptr noundef %1) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = call ptr @get_device(ptr noundef nonnull %26) #10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31, %28
  %35 = call ptr @klist_next(ptr noundef nonnull %4) #10
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %23

37:                                               ; preds = %14, %13, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %44

38:                                               ; preds = %34, %23, %19
  call void @klist_iter_exit(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %44

39:                                               ; preds = %31
  call void @klist_iter_exit(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  %40 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 6
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, %0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  call void @device_driver_detach(ptr noundef nonnull %26) #10
  br label %44

44:                                               ; preds = %43, %39, %38, %37
  %45 = phi ptr [ %26, %43 ], [ %26, %39 ], [ null, %37 ], [ null, %38 ]
  %46 = phi i32 [ %2, %43 ], [ -19, %39 ], [ -19, %37 ], [ -19, %38 ]
  call void @put_device(ptr noundef %45) #10
  br i1 %7, label %51, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.bus_type, ptr %6, i32 0, i32 20
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.kset, ptr %49, i32 0, i32 2
  call void @kobject_put(ptr noundef %50) #10
  br label %51

51:                                               ; preds = %47, %44
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bind_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.klist_iter, align 8
  %5 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.bus_type, ptr %6, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  br label %37

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  br label %37

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.kset, ptr %10, i32 0, i32 2
  %16 = tail call ptr @kobject_get(ptr noundef %15) #10
  %17 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8, !annotation !8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %37, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.subsys_private, ptr %17, i32 0, i32 5
  call void @klist_iter_init_node(ptr noundef %20, ptr noundef nonnull %4, ptr noundef null) #10
  %21 = call ptr @klist_next(ptr noundef nonnull %4) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %34, %19
  %24 = phi ptr [ %35, %34 ], [ %21, %19 ]
  %25 = getelementptr i8, ptr %24, i32 48
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = call i32 @device_match_name(ptr noundef nonnull %26, ptr noundef %1) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = call ptr @get_device(ptr noundef nonnull %26) #10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31, %28
  %35 = call ptr @klist_next(ptr noundef nonnull %4) #10
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %23

37:                                               ; preds = %14, %13, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %51

38:                                               ; preds = %34, %23, %19
  call void @klist_iter_exit(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %51

39:                                               ; preds = %31
  call void @klist_iter_exit(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  %40 = load ptr, ptr %5, align 4
  %41 = getelementptr inbounds %struct.bus_type, ptr %40, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = call i32 %42(ptr noundef nonnull %26, ptr noundef %0) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44, %39
  %48 = call i32 @device_driver_attach(ptr noundef %0, ptr noundef nonnull %26) #10
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 %2, i32 %48
  br label %51

51:                                               ; preds = %47, %44, %38, %37
  %52 = phi ptr [ %26, %44 ], [ %26, %47 ], [ null, %37 ], [ null, %38 ]
  %53 = phi i32 [ -19, %44 ], [ %50, %47 ], [ -19, %37 ], [ -19, %38 ]
  call void @put_device(ptr noundef %52) #10
  br i1 %7, label %58, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.bus_type, ptr %6, i32 0, i32 20
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.kset, ptr %56, i32 0, i32 2
  call void @kobject_put(ptr noundef %57) #10
  br label %58

58:                                               ; preds = %54, %51
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_driver_attach(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bus_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -12
  %3 = getelementptr i8, ptr %0, i32 148
  %4 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %2) #10
  %5 = getelementptr inbounds %struct.bus_type, ptr %4, i32 0, i32 20
  store ptr null, ptr %5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bus_attr_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bus_attribute, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 148
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %5(ptr noundef %9, ptr noundef %2) #10
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bus_attr_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.bus_attribute, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 148
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %6(ptr noundef %10, ptr noundef %2, i32 noundef %3) #10
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %11, %8 ], [ 0, %4 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bus_uevent_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.kset, ptr %5, i32 0, i32 2
  %7 = tail call i32 @kobject_synth_uevent(ptr noundef %6, ptr noundef %1, i32 noundef %2) #10
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 %2, i32 %7
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drivers_probe_store(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.klist_iter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8, !annotation !8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 20
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.subsys_private, ptr %8, i32 0, i32 5
  call void @klist_iter_init_node(ptr noundef %11, ptr noundef nonnull %4, ptr noundef null) #10
  %12 = call ptr @klist_next(ptr noundef nonnull %4) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %25, %10
  %15 = phi ptr [ %26, %25 ], [ %12, %10 ]
  %16 = getelementptr i8, ptr %15, i32 48
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = call i32 @device_match_name(ptr noundef nonnull %17, ptr noundef %1) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = call ptr @get_device(ptr noundef nonnull %17) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22, %19
  %26 = call ptr @klist_next(ptr noundef nonnull %4) #10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %14

28:                                               ; preds = %6, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %63

29:                                               ; preds = %25, %14, %10
  call void @klist_iter_exit(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %63

30:                                               ; preds = %22
  call void @klist_iter_exit(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  %31 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 6
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.bus_type, ptr %40, i32 0, i32 22
  %42 = load i8, ptr %41, align 4, !range !9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 9
  call void @mutex_lock(ptr noundef %45) #10
  br label %46

46:                                               ; preds = %44, %38, %34
  %47 = call i32 @device_attach(ptr noundef nonnull %17) #10
  %48 = load ptr, ptr %35, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.bus_type, ptr %52, i32 0, i32 22
  %54 = load i8, ptr %53, align 4, !range !9
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %57) #10
  br label %58

58:                                               ; preds = %56, %50, %46
  %59 = icmp sgt i32 %47, -1
  br i1 %59, label %60, label %61

60:                                               ; preds = %58, %30
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %2, %60 ], [ -22, %58 ]
  call void @put_device(ptr noundef nonnull %17) #10
  br label %63

63:                                               ; preds = %61, %29, %28
  %64 = phi i32 [ %62, %61 ], [ -19, %28 ], [ -19, %29 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drivers_autoprobe_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.subsys_private, ptr %4, i32 0, i32 8
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 1
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %8) #10
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @drivers_autoprobe_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef returned %2) #8 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp ne i8 %4, 48
  %6 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.subsys_private, ptr %7, i32 0, i32 8
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, -2
  %11 = zext i1 %5 to i8
  %12 = or i8 %10, %11
  store i8 %12, ptr %8, align 4
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_groups(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @system_root_device_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @bus_uevent_filter(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @bus_ktype
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

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
!10 = !{i64 2149244445}
!11 = !{i64 2149240269}
!12 = !{i64 2149240344, i64 2149240371, i64 2149240418, i64 2149240440, i64 2149240468, i64 2149240488}
!13 = !{i64 2149267448}
