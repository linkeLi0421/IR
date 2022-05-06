; ModuleID = '/llk/IR/drivers/scsi/scsi_sysfs.c_pt.bc'
source_filename = "../drivers/scsi/scsi_sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_bus_type\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_remove_device\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_remove_target:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_remove_target\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_remove_target:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_register_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_register_interface\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_register_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_is_sdev_device:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_is_sdev_device\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_is_sdev_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.anon = type { i32, ptr }
%struct.anon.0 = type { i32, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_transport_template = type { %struct.transport_container, %struct.transport_container, %struct.transport_container, ptr, i32, i32, i32, i32, i32, i8, ptr }
%struct.transport_container = type { %struct.attribute_container, ptr }
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class_interface = type { %struct.list_head, ptr, ptr, ptr }
%struct.scsi_vpd = type { %struct.callback_head, i32, [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}

@sdev_states = internal unnamed_addr constant [9 x %struct.anon] [%struct.anon { i32 1, ptr @.str.6 }, %struct.anon { i32 2, ptr @.str.7 }, %struct.anon { i32 3, ptr @.str.8 }, %struct.anon { i32 4, ptr @.str.9 }, %struct.anon { i32 5, ptr @.str.10 }, %struct.anon { i32 6, ptr @.str.11 }, %struct.anon { i32 7, ptr @.str.12 }, %struct.anon { i32 8, ptr @.str.13 }, %struct.anon { i32 9, ptr @.str.14 }], align 4
@shost_states = internal unnamed_addr constant [7 x %struct.anon.0] [%struct.anon.0 { i32 1, ptr @.str.6 }, %struct.anon.0 { i32 2, ptr @.str.7 }, %struct.anon.0 { i32 3, ptr @.str.8 }, %struct.anon.0 { i32 4, ptr @.str.9 }, %struct.anon.0 { i32 5, ptr @.str.15 }, %struct.anon.0 { i32 6, ptr @.str.16 }, %struct.anon.0 { i32 7, ptr @.str.17 }], align 4
@scsi_shost_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @scsi_sysfs_shost_attrs, ptr null }, align 4
@scsi_shost_groups = dso_local local_unnamed_addr global [2 x ptr] [ptr @scsi_shost_attr_group, ptr null], align 4
@.str = private unnamed_addr constant [5 x i8] c"scsi\00", align 1
@scsi_bus_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@scsi_bus_type = dso_local global %struct.bus_type { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scsi_bus_match, ptr @scsi_bus_uevent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scsi_bus_pm_ops, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@__kstrtab_scsi_bus_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_bus_type = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_bus_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_bus_type to i32), ptr @__kstrtab_scsi_bus_type, ptr @__kstrtabns_scsi_bus_type }, section "___ksymtab_gpl+scsi_bus_type", align 4
@scsi_sysfs_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@sdev_class = internal global %struct.class { ptr @.str.56, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scsi_device_cls_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to add device: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to add class device: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to register bsg queue, errno=%d\0A\00", align 1
@__kstrtab_scsi_remove_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_remove_device = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_remove_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_remove_device to i32), ptr @__kstrtab_scsi_remove_device, ptr @__kstrtabns_scsi_remove_device }, section "___ksymtab+scsi_remove_device", align 4
@__kstrtab_scsi_remove_target = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_remove_target = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_remove_target = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_remove_target to i32), ptr @__kstrtab_scsi_remove_target, ptr @__kstrtabns_scsi_remove_target }, section "___ksymtab+scsi_remove_target", align 4
@__kstrtab_scsi_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_register_driver to i32), ptr @__kstrtab_scsi_register_driver, ptr @__kstrtabns_scsi_register_driver }, section "___ksymtab+scsi_register_driver", align 4
@__kstrtab_scsi_register_interface = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_register_interface = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_register_interface = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_register_interface to i32), ptr @__kstrtab_scsi_register_interface, ptr @__kstrtabns_scsi_register_interface }, section "___ksymtab+scsi_register_interface", align 4
@scsi_dev_type = internal global %struct.device_type { ptr @.str.56, ptr @scsi_sdev_attr_groups, ptr null, ptr null, ptr @scsi_device_dev_release, ptr null }, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"%d:%d:%d:%llu\00", align 1
@__kstrtab_scsi_is_sdev_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_is_sdev_device = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_is_sdev_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_is_sdev_device to i32), ptr @__kstrtab_scsi_is_sdev_device, ptr @__kstrtabns_scsi_is_sdev_device }, section "___ksymtab+scsi_is_sdev_device", align 4
@blank_transport_template = dso_local local_unnamed_addr global %struct.scsi_transport_template zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"created\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"cancel\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"deleted\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"quiesce\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"offline\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"transport-offline\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"blocked\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"created-blocked\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"recovery\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"cancel/recovery\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"deleted/recovery\00", align 1
@scsi_sysfs_shost_attrs = internal global [18 x ptr] [ptr @dev_attr_use_blk_mq, ptr @dev_attr_unique_id, ptr @dev_attr_host_busy, ptr @dev_attr_cmd_per_lun, ptr @dev_attr_can_queue, ptr @dev_attr_sg_tablesize, ptr @dev_attr_sg_prot_tablesize, ptr @dev_attr_proc_name, ptr @dev_attr_scan, ptr @dev_attr_hstate, ptr @dev_attr_supported_mode, ptr @dev_attr_active_mode, ptr @dev_attr_prot_capabilities, ptr @dev_attr_prot_guard_type, ptr @dev_attr_host_reset, ptr @dev_attr_eh_deadline, ptr @dev_attr_nr_hw_queues, ptr null], align 4
@dev_attr_use_blk_mq = internal global %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @show_use_blk_mq, ptr null }, align 4
@dev_attr_unique_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292 }, ptr @show_unique_id, ptr null }, align 4
@dev_attr_host_busy = internal global %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @show_host_busy, ptr null }, align 4
@dev_attr_cmd_per_lun = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @show_cmd_per_lun, ptr null }, align 4
@dev_attr_can_queue = internal global %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @show_can_queue, ptr null }, align 4
@dev_attr_sg_tablesize = internal global %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292 }, ptr @show_sg_tablesize, ptr null }, align 4
@dev_attr_sg_prot_tablesize = internal global %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292 }, ptr @show_sg_prot_tablesize, ptr null }, align 4
@dev_attr_proc_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292 }, ptr @show_proc_name, ptr null }, align 4
@dev_attr_scan = internal global %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 128 }, ptr null, ptr @store_scan }, align 4
@dev_attr_hstate = internal global %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420 }, ptr @show_shost_state, ptr @store_shost_state }, align 4
@dev_attr_supported_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420 }, ptr @show_shost_supported_mode, ptr null }, align 4
@dev_attr_active_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420 }, ptr @show_shost_active_mode, ptr null }, align 4
@dev_attr_prot_capabilities = internal global %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292 }, ptr @show_prot_capabilities, ptr null }, align 4
@dev_attr_prot_guard_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292 }, ptr @show_prot_guard_type, ptr null }, align 4
@dev_attr_host_reset = internal global %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 128 }, ptr null, ptr @store_host_reset }, align 4
@dev_attr_eh_deadline = internal global %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420 }, ptr @show_shost_eh_deadline, ptr @store_shost_eh_deadline }, align 4
@dev_attr_nr_hw_queues = internal global %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292 }, ptr @show_nr_hw_queues, ptr null }, align 4
@.str.18 = private unnamed_addr constant [11 x i8] c"use_blk_mq\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"unique_id\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"host_busy\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"cmd_per_lun\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"can_queue\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"sg_tablesize\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"%hu\0A\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"sg_prot_tablesize\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"proc_name\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"scan\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"%10s %10s %16s %c\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"supported_mode\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"Initiator\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.41 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"Target\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"active_mode\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"prot_capabilities\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"prot_guard_type\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"host_reset\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"adapter\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"firmware\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"eh_deadline\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"off\0A\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"nr_hw_queues\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"MODALIAS=scsi:t-0x%02x\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"scsi_device\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"target device_add failed, error %d\0A\00", align 1
@scsi_sdev_attr_groups = internal global [2 x ptr] [ptr @scsi_sdev_attr_group, ptr null], align 4
@scsi_sdev_attr_group = internal global %struct.attribute_group { ptr null, ptr @scsi_sdev_attr_is_visible, ptr @scsi_sdev_bin_attr_is_visible, ptr @scsi_sdev_attrs, ptr @scsi_sdev_bin_attrs }, align 4
@scsi_sdev_attrs = internal global [29 x ptr] [ptr @dev_attr_device_blocked, ptr @dev_attr_type, ptr @dev_attr_scsi_level, ptr @dev_attr_device_busy, ptr @dev_attr_vendor, ptr @dev_attr_model, ptr @dev_attr_rev, ptr @dev_attr_rescan, ptr @dev_attr_delete, ptr @dev_attr_state, ptr @dev_attr_timeout, ptr @dev_attr_eh_timeout, ptr @dev_attr_iocounterbits, ptr @dev_attr_iorequest_cnt, ptr @dev_attr_iodone_cnt, ptr @dev_attr_ioerr_cnt, ptr @dev_attr_modalias, ptr @dev_attr_queue_depth, ptr @dev_attr_queue_type, ptr @dev_attr_wwid, ptr @dev_attr_blacklist, ptr @dev_attr_queue_ramp_up_period, ptr @dev_attr_evt_media_change, ptr @dev_attr_evt_inquiry_change_reported, ptr @dev_attr_evt_capacity_change_reported, ptr @dev_attr_evt_soft_threshold_reached, ptr @dev_attr_evt_mode_parameter_change_reported, ptr @dev_attr_evt_lun_change_reported, ptr null], align 4
@scsi_sdev_bin_attrs = internal global [6 x ptr] [ptr @dev_attr_vpd_pg0, ptr @dev_attr_vpd_pg83, ptr @dev_attr_vpd_pg80, ptr @dev_attr_vpd_pg89, ptr @dev_attr_inquiry, ptr null], align 4
@dev_attr_queue_depth = internal global %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420 }, ptr @sdev_show_queue_depth, ptr @sdev_store_queue_depth }, align 4
@dev_attr_queue_ramp_up_period = internal global %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420 }, ptr @sdev_show_queue_ramp_up_period, ptr @sdev_store_queue_ramp_up_period }, align 4
@.str.58 = private unnamed_addr constant [12 x i8] c"queue_depth\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"queue_ramp_up_period\00", align 1
@dev_attr_vpd_pg0 = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.60, i16 292 }, i32 0, ptr null, ptr null, ptr @show_vpd_pg0, ptr null, ptr null }, align 4
@dev_attr_vpd_pg80 = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.61, i16 292 }, i32 0, ptr null, ptr null, ptr @show_vpd_pg80, ptr null, ptr null }, align 4
@dev_attr_vpd_pg83 = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.62, i16 292 }, i32 0, ptr null, ptr null, ptr @show_vpd_pg83, ptr null, ptr null }, align 4
@dev_attr_vpd_pg89 = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.63, i16 292 }, i32 0, ptr null, ptr null, ptr @show_vpd_pg89, ptr null, ptr null }, align 4
@.str.60 = private unnamed_addr constant [8 x i8] c"vpd_pg0\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"vpd_pg80\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"vpd_pg83\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"vpd_pg89\00", align 1
@dev_attr_device_blocked = internal global %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292 }, ptr @sdev_show_device_blocked, ptr null }, align 4
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292 }, ptr @sdev_show_type, ptr null }, align 4
@dev_attr_scsi_level = internal global %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292 }, ptr @sdev_show_scsi_level, ptr null }, align 4
@dev_attr_device_busy = internal global %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292 }, ptr @sdev_show_device_busy, ptr null }, align 4
@dev_attr_vendor = internal global %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292 }, ptr @sdev_show_vendor, ptr null }, align 4
@dev_attr_model = internal global %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292 }, ptr @sdev_show_model, ptr null }, align 4
@dev_attr_rev = internal global %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292 }, ptr @sdev_show_rev, ptr null }, align 4
@dev_attr_rescan = internal global %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 128 }, ptr null, ptr @store_rescan_field }, align 4
@dev_attr_delete = internal global %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 128 }, ptr null, ptr @sdev_store_delete }, align 4
@dev_attr_state = internal global %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420 }, ptr @show_state_field, ptr @store_state_field }, align 4
@dev_attr_timeout = internal global %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 420 }, ptr @sdev_show_timeout, ptr @sdev_store_timeout }, align 4
@dev_attr_eh_timeout = internal global %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 420 }, ptr @sdev_show_eh_timeout, ptr @sdev_store_eh_timeout }, align 4
@dev_attr_iocounterbits = internal global %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292 }, ptr @show_iostat_counterbits, ptr null }, align 4
@dev_attr_iorequest_cnt = internal global %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 292 }, ptr @show_iostat_iorequest_cnt, ptr null }, align 4
@dev_attr_iodone_cnt = internal global %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 292 }, ptr @show_iostat_iodone_cnt, ptr null }, align 4
@dev_attr_ioerr_cnt = internal global %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292 }, ptr @show_iostat_ioerr_cnt, ptr null }, align 4
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292 }, ptr @sdev_show_modalias, ptr null }, align 4
@dev_attr_queue_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 420 }, ptr @show_queue_type_field, ptr @store_queue_type_field }, align 4
@dev_attr_wwid = internal global %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 292 }, ptr @sdev_show_wwid, ptr null }, align 4
@dev_attr_blacklist = internal global %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 292 }, ptr @sdev_show_blacklist, ptr null }, align 4
@dev_attr_evt_media_change = internal global %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 292 }, ptr @sdev_show_evt_media_change, ptr @sdev_store_evt_media_change }, align 4
@dev_attr_evt_inquiry_change_reported = internal global %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 292 }, ptr @sdev_show_evt_inquiry_change_reported, ptr @sdev_store_evt_inquiry_change_reported }, align 4
@dev_attr_evt_capacity_change_reported = internal global %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 292 }, ptr @sdev_show_evt_capacity_change_reported, ptr @sdev_store_evt_capacity_change_reported }, align 4
@dev_attr_evt_soft_threshold_reached = internal global %struct.device_attribute { %struct.attribute { ptr @.str.125, i16 292 }, ptr @sdev_show_evt_soft_threshold_reached, ptr @sdev_store_evt_soft_threshold_reached }, align 4
@dev_attr_evt_mode_parameter_change_reported = internal global %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 292 }, ptr @sdev_show_evt_mode_parameter_change_reported, ptr @sdev_store_evt_mode_parameter_change_reported }, align 4
@dev_attr_evt_lun_change_reported = internal global %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 292 }, ptr @sdev_show_evt_lun_change_reported, ptr @sdev_store_evt_lun_change_reported }, align 4
@.str.64 = private unnamed_addr constant [15 x i8] c"device_blocked\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"scsi_level\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"device_busy\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"vendor\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"%.8s\0A\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"%.16s\0A\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"rev\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"%.4s\0A\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"rescan\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@sdev_store_delete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c"drivers/scsi/scsi_sysfs.c\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"eh_timeout\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"iocounterbits\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"iorequest_cnt\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"0x%llx\0A\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"iodone_cnt\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"ioerr_cnt\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"scsi:t-0x%02x\0A\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"queue_type\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"simple\00", align 1
@.str.89 = private unnamed_addr constant [50 x i8] c"ignoring write to deprecated queue_type attribute\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"wwid\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"blacklist\00", align 1
@sdev_bflags_name = internal unnamed_addr constant [34 x ptr] [ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr null, ptr null, ptr null, ptr null, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr null, ptr @.str.114, ptr @.str.115, ptr null, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121], align 4
@.str.92 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.93 = private unnamed_addr constant [18 x i8] c"%sINVALID_BIT(%d)\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"NOLUN\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"FORCELUN\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"BORKEN\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"KEY\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"SINGLELUN\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"NOTQ\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"SPARSELUN\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"MAX5LUN\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"ISROM\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"LARGELUN\00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c"INQUIRY_36\00", align 1
@.str.105 = private unnamed_addr constant [17 x i8] c"IGN_MEDIA_CHANGE\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"NOSTARTONADD\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"REPORTLUN2\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"NOREPORTLUN\00", align 1
@.str.109 = private unnamed_addr constant [13 x i8] c"NOT_LOCKABLE\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"NO_ULD_ATTACH\00", align 1
@.str.111 = private unnamed_addr constant [14 x i8] c"SELECT_NO_ATN\00", align 1
@.str.112 = private unnamed_addr constant [14 x i8] c"RETRY_HWERROR\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"MAX_512\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"NO_DIF\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"SKIP_VPD_PAGES\00", align 1
@.str.116 = private unnamed_addr constant [14 x i8] c"TRY_VPD_PAGES\00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c"NO_RSOC\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"MAX_1024\00", align 1
@.str.119 = private unnamed_addr constant [15 x i8] c"UNMAP_LIMIT_WS\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"RETRY_ITF\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"RETRY_ASC_C1\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"evt_media_change\00", align 1
@.str.123 = private unnamed_addr constant [28 x i8] c"evt_inquiry_change_reported\00", align 1
@.str.124 = private unnamed_addr constant [29 x i8] c"evt_capacity_change_reported\00", align 1
@.str.125 = private unnamed_addr constant [27 x i8] c"evt_soft_threshold_reached\00", align 1
@.str.126 = private unnamed_addr constant [35 x i8] c"evt_mode_parameter_change_reported\00", align 1
@.str.127 = private unnamed_addr constant [24 x i8] c"evt_lun_change_reported\00", align 1
@dev_attr_inquiry = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.128, i16 292 }, i32 0, ptr null, ptr null, ptr @show_inquiry, ptr null, ptr null }, align 4
@.str.128 = private unnamed_addr constant [8 x i8] c"inquiry\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_scsi_bus_type, ptr @__ksymtab_scsi_is_sdev_device, ptr @__ksymtab_scsi_register_driver, ptr @__ksymtab_scsi_register_interface, ptr @__ksymtab_scsi_remove_device, ptr @__ksymtab_scsi_remove_target], section "llvm.metadata"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local ptr @scsi_device_state_name(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 9
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr [9 x %struct.anon], ptr @sdev_states, i32 0, i32 %2, i32 1
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local ptr @scsi_host_state_name(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 7
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr [7 x %struct.anon.0], ptr @shost_states, i32 0, i32 %2, i32 1
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @scsi_bus_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @scsi_dev_type
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -68
  %8 = load i64, ptr %7, align 4
  %9 = and i64 %8, 1073741824
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %0, i32 -146
  %13 = load i8, ptr %12, align 2
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %11, %6, %2
  %17 = phi i32 [ %15, %11 ], [ 0, %2 ], [ 0, %6 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scsi_bus_uevent(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @scsi_dev_type
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -148
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.55, i32 noundef %9) #14
  br label %11

11:                                               ; preds = %6, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_sysfs_register() local_unnamed_addr #3 {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @scsi_bus_type) #14
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @__class_register(ptr noundef nonnull @sdev_class, ptr noundef nonnull @scsi_sysfs_register.__key) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @bus_unregister(ptr noundef nonnull @scsi_bus_type) #14
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %1, %0 ], [ %4, %6 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_sysfs_unregister() local_unnamed_addr #3 {
  tail call void @class_unregister(ptr noundef nonnull @sdev_class) #14
  tail call void @bus_unregister(ptr noundef nonnull @scsi_bus_type) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_sysfs_add_sdev(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.scsi_target, ptr %3, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.scsi_target, ptr %3, i32 0, i32 3
  %9 = tail call i32 @device_add(ptr noundef %8) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = tail call i32 @transport_add_device(ptr noundef %8) #14
  store i32 2, ptr %4, align 4
  %13 = tail call i32 @__pm_runtime_set_status(ptr noundef %8, i32 noundef 0) #14
  tail call void @pm_runtime_enable(ptr noundef %8) #14
  %14 = getelementptr inbounds %struct.scsi_target, ptr %3, i32 0, i32 3, i32 11, i32 1
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 8
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = or i16 %15, 2
  store i16 %19, ptr %14, align 4
  br label %21

20:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.57, i32 noundef %9) #15
  br label %65

21:                                               ; preds = %18, %11, %1
  %22 = getelementptr inbounds %struct.scsi_target, ptr %3, i32 0, i32 3
  tail call void @transport_configure_device(ptr noundef %22) #14
  %23 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 54
  %24 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 54, i32 11, i32 1
  %25 = load i16, ptr %24, align 4
  %26 = and i16 %25, 8
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = or i16 %25, 2
  store i16 %29, ptr %24, align 4
  br label %30

30:                                               ; preds = %28, %21
  tail call void @scsi_autopm_get_target(ptr noundef %3) #14
  %31 = tail call i32 @__pm_runtime_set_status(ptr noundef %23, i32 noundef 0) #14
  %32 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %33 = load i64, ptr %32, align 4
  %34 = and i64 %33, 70368744177664
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  tail call void @pm_runtime_forbid(ptr noundef %23) #14
  br label %37

37:                                               ; preds = %36, %30
  tail call void @pm_runtime_enable(ptr noundef %23) #14
  tail call void @scsi_autopm_put_target(ptr noundef %3) #14
  %38 = tail call i32 @scsi_autopm_get_device(ptr noundef %0) #14
  %39 = tail call i32 @device_add(ptr noundef %23) #14
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef %39) #14
  br label %65

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 55
  %44 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 55, i32 11, i32 1
  %45 = load i16, ptr %44, align 4
  %46 = and i16 %45, 8
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = or i16 %45, 2
  store i16 %49, ptr %44, align 4
  br label %50

50:                                               ; preds = %48, %42
  %51 = tail call i32 @device_add(ptr noundef %43) #14
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef %51) #14
  tail call void @device_del(ptr noundef %23) #14
  br label %65

54:                                               ; preds = %50
  %55 = tail call i32 @transport_add_device(ptr noundef %23) #14
  %56 = load i64, ptr %32, align 4
  %57 = or i64 %56, 1099511627776
  store i64 %57, ptr %32, align 4
  %58 = tail call ptr @scsi_bsg_register_queue(ptr noundef %0) #14
  %59 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 64
  store ptr %58, ptr %59, align 8
  %60 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = ptrtoint ptr %58 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef %62) #14
  store ptr null, ptr %59, align 8
  br label %63

63:                                               ; preds = %61, %54
  %64 = phi i32 [ %62, %61 ], [ 0, %54 ]
  tail call void @scsi_autopm_put_device(ptr noundef %0) #14
  br label %65

65:                                               ; preds = %63, %53, %41, %20
  %66 = phi i32 [ %39, %41 ], [ %51, %53 ], [ %64, %63 ], [ %9, %20 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_configure_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_autopm_get_target(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_autopm_put_target(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_autopm_get_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_add_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_bsg_register_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_autopm_put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__scsi_remove_device(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 54
  %3 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 68
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %47, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %8 = load i64, ptr %7, align 4
  %9 = and i64 %8, 1099511627776
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 67
  tail call void @mutex_lock(ptr noundef %12) #14
  %13 = tail call i32 @scsi_device_set_state(ptr noundef %0, i32 noundef 3) #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @scsi_device_set_state(ptr noundef %0, i32 noundef 4) #14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @scsi_start_queue(ptr noundef %0) #14
  br label %20

19:                                               ; preds = %15
  tail call void @mutex_unlock(ptr noundef %12) #14
  br label %47

20:                                               ; preds = %18, %11
  tail call void @mutex_unlock(ptr noundef %12) #14
  %21 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 64
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @bsg_unregister_queue(ptr noundef nonnull %22) #14
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 55
  tail call void @device_unregister(ptr noundef %26) #14
  tail call void @transport_remove_device(ptr noundef %2) #14
  tail call void @device_del(ptr noundef %2) #14
  br label %29

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 55
  tail call void @put_device(ptr noundef %28) #14
  br label %29

29:                                               ; preds = %27, %25
  %30 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 67
  tail call void @mutex_lock(ptr noundef %30) #14
  %31 = tail call i32 @scsi_device_set_state(ptr noundef %0, i32 noundef 4) #14
  tail call void @mutex_unlock(ptr noundef %30) #14
  %32 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void @blk_cleanup_queue(ptr noundef %33) #14
  %34 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 57
  %35 = tail call zeroext i1 @cancel_work_sync(ptr noundef %34) #14
  %36 = load ptr, ptr %0, align 8
  %37 = getelementptr inbounds %struct.Scsi_Host, ptr %36, i32 0, i32 11
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.scsi_host_template, ptr %38, i32 0, i32 16
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %29
  tail call void %40(ptr noundef %0) #14
  br label %43

43:                                               ; preds = %42, %29
  tail call void @transport_destroy_device(ptr noundef %2) #14
  %44 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 54, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 -24
  tail call void @scsi_target_reap(ptr noundef %46) #14
  tail call void @put_device(ptr noundef %2) #14
  br label %47

47:                                               ; preds = %43, %19, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_set_state(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_start_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bsg_unregister_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_remove_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_destroy_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_target_reap(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_remove_device(ptr noundef %0) #3 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %3) #14
  tail call void @__scsi_remove_device(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_remove_target(ptr noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  br label %4

4:                                                ; preds = %8, %1
  %5 = phi ptr [ %3, %1 ], [ %10, %8 ]
  %6 = tail call i32 @scsi_is_host_device(ptr noundef %5) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %4

12:                                               ; preds = %4
  %13 = getelementptr i8, ptr %5, i32 -360
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi ptr [ %13, %12 ], [ null, %8 ]
  %16 = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #14
  %19 = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %123, label %22

22:                                               ; preds = %113, %14
  %23 = phi ptr [ %118, %113 ], [ %20, %14 ]
  %24 = phi i32 [ %117, %113 ], [ %18, %14 ]
  br label %25

25:                                               ; preds = %120, %22
  %26 = phi ptr [ %23, %22 ], [ %121, %120 ]
  %27 = getelementptr i8, ptr %26, i32 528
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -3
  %30 = icmp ult i32 %29, 3
  br i1 %30, label %120, label %31

31:                                               ; preds = %25
  %32 = getelementptr i8, ptr %26, i32 56
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %0
  %35 = getelementptr i8, ptr %26, i32 20
  %36 = icmp eq ptr %35, %0
  %37 = select i1 %34, i1 true, i1 %36
  br i1 %37, label %38, label %120

38:                                               ; preds = %31
  %39 = getelementptr i8, ptr %26, i32 528
  %40 = getelementptr i8, ptr %26, i32 56
  %41 = getelementptr i8, ptr %26, i32 -4
  %42 = getelementptr i8, ptr %26, i32 492
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %42) #14, !srcloc !8
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 1, ptr elementtype(i32) %42) #14, !srcloc !9
  %44 = extractvalue { i32, i32, i32 } %43, 0
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46, !prof !10

46:                                               ; preds = %38
  %47 = add i32 %44, 1
  %48 = or i32 %47, %44
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %52, label %50, !prof !11

50:                                               ; preds = %46, %38
  %51 = phi i32 [ 2, %38 ], [ 1, %46 ]
  tail call void @refcount_warn_saturate(ptr noundef %42, i32 noundef %51) #14
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i32, ptr %39, align 4
  %54 = icmp eq i32 %53, 1
  %55 = select i1 %54, i32 4, i32 3
  store i32 %55, ptr %39, align 4
  %56 = load ptr, ptr %16, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %56, i32 noundef %24) #14
  %57 = load ptr, ptr %40, align 4
  br label %58

58:                                               ; preds = %62, %52
  %59 = phi ptr [ %57, %52 ], [ %64, %62 ]
  %60 = tail call i32 @scsi_is_host_device(ptr noundef %59) #14
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %58

66:                                               ; preds = %58
  %67 = getelementptr i8, ptr %59, i32 -360
  br label %68

68:                                               ; preds = %66, %62
  %69 = phi ptr [ %67, %66 ], [ null, %62 ]
  %70 = getelementptr inbounds %struct.Scsi_Host, ptr %69, i32 0, i32 4
  %71 = load ptr, ptr %70, align 4
  %72 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %71) #14
  %73 = load ptr, ptr %69, align 8
  %74 = icmp eq ptr %73, %69
  br i1 %74, label %113, label %75

75:                                               ; preds = %68
  %76 = getelementptr i8, ptr %26, i32 496
  %77 = getelementptr i8, ptr %26, i32 500
  br label %78

78:                                               ; preds = %101, %75
  %79 = phi ptr [ %73, %75 ], [ %108, %101 ]
  %80 = phi i32 [ %72, %75 ], [ %107, %101 ]
  br label %81

81:                                               ; preds = %110, %78
  %82 = phi ptr [ %79, %78 ], [ %111, %110 ]
  %83 = getelementptr i8, ptr %82, i32 84
  %84 = load i32, ptr %83, align 4
  %85 = load i32, ptr %76, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %110

87:                                               ; preds = %81
  %88 = getelementptr i8, ptr %82, i32 80
  %89 = load i32, ptr %88, align 8
  %90 = load i32, ptr %77, align 8
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %110

92:                                               ; preds = %87
  %93 = getelementptr i8, ptr %82, i32 1284
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, -3
  %96 = icmp ult i32 %95, 2
  br i1 %96, label %110, label %97

97:                                               ; preds = %92
  %98 = getelementptr i8, ptr %82, i32 256
  %99 = tail call ptr @get_device(ptr noundef %98) #14
  %100 = icmp eq ptr %99, null
  br i1 %100, label %110, label %101

101:                                              ; preds = %97
  %102 = getelementptr i8, ptr %82, i32 -8
  %103 = load ptr, ptr %70, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %103, i32 noundef %80) #14
  %104 = load ptr, ptr %102, align 8
  %105 = getelementptr inbounds %struct.Scsi_Host, ptr %104, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %105) #14
  tail call void @__scsi_remove_device(ptr noundef %102) #14
  tail call void @mutex_unlock(ptr noundef %105) #14
  tail call void @put_device(ptr noundef %98) #14
  %106 = load ptr, ptr %70, align 4
  %107 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %106) #14
  %108 = load ptr, ptr %69, align 8
  %109 = icmp eq ptr %108, %69
  br i1 %109, label %113, label %78

110:                                              ; preds = %97, %92, %87, %81
  %111 = load ptr, ptr %82, align 8
  %112 = icmp eq ptr %111, %69
  br i1 %112, label %113, label %81

113:                                              ; preds = %110, %101, %68
  %114 = phi i32 [ %72, %68 ], [ %80, %110 ], [ %107, %101 ]
  %115 = load ptr, ptr %70, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %115, i32 noundef %114) #14
  tail call void @scsi_target_reap(ptr noundef %41) #14
  %116 = load ptr, ptr %16, align 4
  %117 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %116) #14
  %118 = load ptr, ptr %19, align 4
  %119 = icmp eq ptr %118, %19
  br i1 %119, label %123, label %22

120:                                              ; preds = %31, %25
  %121 = load ptr, ptr %26, align 4
  %122 = icmp eq ptr %121, %19
  br i1 %122, label %123, label %25

123:                                              ; preds = %120, %113, %14
  %124 = phi i32 [ %18, %14 ], [ %24, %120 ], [ %117, %113 ]
  %125 = load ptr, ptr %16, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %125, i32 noundef %124) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_register_driver(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1
  store ptr @scsi_bus_type, ptr %2, align 4
  %3 = tail call i32 @driver_register(ptr noundef %0) #14
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_register_interface(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.class_interface, ptr %0, i32 0, i32 1
  store ptr @sdev_class, ptr %2, align 4
  %3 = tail call i32 @class_interface_register(ptr noundef %0) #14
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_interface_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_sysfs_add_host(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 49
  tail call void @transport_setup_device(ptr noundef %2) #14
  %3 = tail call i32 @transport_add_device(ptr noundef %2) #14
  tail call void @transport_configure_device(ptr noundef %2) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_sysfs_device_initialize(ptr noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 37
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 54
  tail call void @device_initialize(ptr noundef %7) #14
  %8 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 54, i32 5
  store ptr @scsi_bus_type, ptr %8, align 4
  %9 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 54, i32 4
  store ptr @scsi_dev_type, ptr %9, align 8
  tail call void @scsi_enable_async_suspend(ptr noundef %7) #14
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 17
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 17
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 16
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 18
  %18 = load i64, ptr %17, align 8
  %19 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %7, ptr noundef nonnull @.str.5, i32 noundef %12, i32 noundef %14, i32 noundef %16, i64 noundef %18) #14
  %20 = getelementptr inbounds %struct.scsi_host_template, ptr %4, i32 0, i32 48
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 54, i32 32
  store ptr %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 55
  tail call void @device_initialize(ptr noundef %23) #14
  %24 = tail call ptr @get_device(ptr noundef %7) #14
  %25 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 55, i32 1
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 55, i32 31
  store ptr @sdev_class, ptr %26, align 4
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr inbounds %struct.Scsi_Host, ptr %27, i32 0, i32 17
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %13, align 4
  %31 = load i32, ptr %15, align 8
  %32 = load i64, ptr %17, align 8
  %33 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %23, ptr noundef nonnull @.str.5, i32 noundef %29, i32 noundef %30, i32 noundef %31, i64 noundef %32) #14
  %34 = getelementptr inbounds %struct.scsi_target, ptr %6, i32 0, i32 12
  %35 = load i8, ptr %34, align 8
  %36 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 23
  store i8 %35, ptr %36, align 1
  %37 = add i8 %35, -4
  %38 = icmp ult i8 %37, -3
  br i1 %38, label %48, label %39

39:                                               ; preds = %1
  %40 = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 36
  %41 = load i16, ptr %40, align 8
  %42 = and i16 %41, 1024
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %46 = load i64, ptr %45, align 4
  %47 = or i64 %46, 17592186044416
  store i64 %47, ptr %45, align 4
  br label %48

48:                                               ; preds = %44, %39, %1
  tail call void @transport_setup_device(ptr noundef %7) #14
  %49 = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %50) #14
  %52 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 3
  %53 = getelementptr inbounds %struct.scsi_target, ptr %6, i32 0, i32 2
  %54 = getelementptr inbounds %struct.scsi_target, ptr %6, i32 0, i32 2, i32 1
  %55 = load ptr, ptr %54, align 4
  store ptr %52, ptr %54, align 4
  store ptr %53, ptr %52, align 4
  %56 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 3, i32 1
  store ptr %55, ptr %56, align 4
  store volatile ptr %52, ptr %55, align 4
  %57 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 2
  %58 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  store ptr %57, ptr %58, align 4
  store ptr %2, ptr %57, align 4
  %60 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 2, i32 1
  store ptr %59, ptr %60, align 4
  store volatile ptr %57, ptr %59, align 4
  %61 = load ptr, ptr %49, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %61, i32 noundef %51) #14
  %62 = getelementptr inbounds %struct.scsi_target, ptr %6, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %62) #14, !srcloc !8
  %63 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %62, ptr %62, i32 1, ptr elementtype(i32) %62) #14, !srcloc !9
  %64 = extractvalue { i32, i32, i32 } %63, 0
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66, !prof !10

66:                                               ; preds = %48
  %67 = add i32 %64, 1
  %68 = or i32 %67, %64
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %72, label %70, !prof !11

70:                                               ; preds = %66, %48
  %71 = phi i32 [ 2, %48 ], [ 1, %66 ]
  tail call void @refcount_warn_saturate(ptr noundef %62, i32 noundef %71) #14
  br label %72

72:                                               ; preds = %70, %66
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_enable_async_suspend(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_setup_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @scsi_is_sdev_device(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, @scsi_dev_type
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @show_use_blk_mq(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %2, ptr noundef nonnull align 1 dereferenceable(3) @.str.19, i32 3, i1 false)
  ret i32 2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_unique_id(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -584
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.21, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_host_busy(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -832
  %5 = tail call i32 @scsi_host_busy(ptr noundef %4) #14
  %6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_host_busy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_cmd_per_lun(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -568
  %5 = load i16, ptr %4, align 8
  %6 = sext i16 %5 to i32
  %7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.25, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_can_queue(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -572
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_sg_tablesize(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -566
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.28, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_sg_prot_tablesize(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -564
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.28, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_proc_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -744
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.scsi_host_template, ptr %5, i32 0, i32 32
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.31, ptr noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_scan(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #3 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca [15 x i8], align 1
  %9 = alloca [15 x i8], align 1
  %10 = alloca [17 x i8], align 1
  %11 = alloca i8, align 1
  %12 = getelementptr i8, ptr %0, i32 -832
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %8) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(15) %8, i8 0, i32 15, i1 false) #14, !annotation !12
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %9) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(15) %9, i8 0, i32 15, i1 false) #14, !annotation !12
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %10) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(17) %10, i8 0, i32 17, i1 false) #14, !annotation !12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #14
  store i8 0, ptr %11, align 1, !annotation !12
  %13 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.33, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #14
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %57

15:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store ptr null, ptr %7, align 4, !annotation !12
  %16 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %8, ptr noundef nonnull dereferenceable(2) @.str.34, i32 2) #14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = call i64 @simple_strtoull(ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef 0) #14
  %20 = load ptr, ptr %7, align 4
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  %23 = trunc i64 %19 to i32
  br i1 %22, label %25, label %24

24:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  br label %57

25:                                               ; preds = %18, %15
  %26 = phi i32 [ %23, %18 ], [ -1, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store ptr null, ptr %6, align 4, !annotation !12
  %27 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %9, ptr noundef nonnull dereferenceable(2) @.str.34, i32 2) #14
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = call i64 @simple_strtoull(ptr noundef nonnull %9, ptr noundef nonnull %6, i32 noundef 0) #14
  %31 = load ptr, ptr %6, align 4
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 0
  %34 = trunc i64 %30 to i32
  br i1 %33, label %36, label %35

35:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %57

36:                                               ; preds = %29, %25
  %37 = phi i32 [ %34, %29 ], [ -1, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store ptr null, ptr %5, align 4, !annotation !12
  %38 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %10, ptr noundef nonnull dereferenceable(2) @.str.34, i32 2) #14
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = call i64 @simple_strtoull(ptr noundef nonnull %10, ptr noundef nonnull %5, i32 noundef 0) #14
  %42 = load ptr, ptr %5, align 4
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %57

46:                                               ; preds = %40, %36
  %47 = phi i64 [ %41, %40 ], [ -1, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %48 = getelementptr i8, ptr %0, i32 -740
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.scsi_transport_template, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = call i32 %51(ptr noundef %12, i32 noundef %26, i32 noundef %37, i64 noundef %47) #14
  br label %58

55:                                               ; preds = %46
  %56 = call i32 @scsi_scan_host_selected(ptr noundef %12, i32 noundef %26, i32 noundef %37, i64 noundef %47, i32 noundef 2) #14
  br label %58

57:                                               ; preds = %45, %35, %24, %4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %8) #14
  br label %62

58:                                               ; preds = %55, %53
  %59 = phi i32 [ %54, %53 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %8) #14
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i32 %3, i32 %59
  br label %62

62:                                               ; preds = %58, %57
  %63 = phi i32 [ -22, %57 ], [ %61, %58 ]
  ret i32 %63
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_scan_host_selected(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_shost_state(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -476
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1
  %7 = icmp ult i32 %6, 7
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr [7 x %struct.anon.0], ptr @shost_states, i32 0, i32 %6, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.31, ptr noundef nonnull %10)
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ %11, %8 ], [ -22, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_shost_state(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #3 {
  %5 = getelementptr i8, ptr %0, i32 -832
  %6 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.6, ptr noundef %2, i32 noundef 7)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %2, i32 7
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 10
  br i1 %11, label %54, label %12

12:                                               ; preds = %8, %4
  %13 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.7, ptr noundef %2, i32 noundef 7)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %2, i32 7
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 10
  br i1 %18, label %54, label %19

19:                                               ; preds = %15, %12
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.8, ptr noundef %2, i32 noundef 6)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = getelementptr i8, ptr %2, i32 6
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 10
  br i1 %25, label %54, label %26

26:                                               ; preds = %22, %19
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.9, ptr noundef %2, i32 noundef 7)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr i8, ptr %2, i32 7
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 10
  br i1 %32, label %54, label %33

33:                                               ; preds = %29, %26
  %34 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(9) @.str.15, ptr noundef %2, i32 noundef 8)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = getelementptr i8, ptr %2, i32 8
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, 10
  br i1 %39, label %54, label %40

40:                                               ; preds = %36, %33
  %41 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(16) @.str.16, ptr noundef %2, i32 noundef 15)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = getelementptr i8, ptr %2, i32 15
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 10
  br i1 %46, label %54, label %47

47:                                               ; preds = %43, %40
  %48 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(17) @.str.17, ptr noundef %2, i32 noundef 16)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = getelementptr i8, ptr %2, i32 16
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 10
  br i1 %53, label %54, label %63

54:                                               ; preds = %50, %43, %36, %29, %22, %15, %8
  %55 = phi i32 [ 0, %8 ], [ 1, %15 ], [ 2, %22 ], [ 3, %29 ], [ 4, %36 ], [ 5, %43 ], [ 6, %50 ]
  %56 = getelementptr [7 x %struct.anon.0], ptr @shost_states, i32 0, i32 %55
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = tail call i32 @scsi_host_set_state(ptr noundef %5, i32 noundef %57) #14
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, i32 %3, i32 -22
  br label %63

63:                                               ; preds = %59, %54, %50, %47
  %64 = phi i32 [ -22, %54 ], [ %62, %59 ], [ -22, %50 ], [ -22, %47 ]
  ret i32 %64
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_host_set_state(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_shost_supported_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -744
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.scsi_host_template, ptr %5, i32 0, i32 45
  %7 = load i8, ptr %6, align 4
  %8 = lshr i8 %7, 1
  %9 = and i8 %8, 3
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i8 1, i8 %9
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %2, ptr noundef nonnull align 1 dereferenceable(10) @.str.38, i32 10, i1 false) #14
  br label %16

16:                                               ; preds = %15, %3
  %17 = phi i32 [ 9, %15 ], [ 0, %3 ]
  %18 = and i32 %12, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %2, i32 %17
  %22 = select i1 %14, ptr @.str.41, ptr @.str.40
  %23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %21, ptr noundef nonnull @.str.39, ptr noundef nonnull %22, ptr noundef nonnull @.str.42) #14
  %24 = add i32 %23, %17
  br label %25

25:                                               ; preds = %20, %16
  %26 = phi i32 [ %24, %20 ], [ %17, %16 ]
  %27 = getelementptr i8, ptr %2, i32 %26
  store i16 10, ptr %27, align 1
  %28 = add i32 %26, 1
  ret i32 %28
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_shost_active_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -536
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 3
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %2, ptr noundef nonnull align 1 dereferenceable(9) @.str.45, i32 9, i1 false)
  br label %27

9:                                                ; preds = %3
  %10 = zext i16 %6 to i32
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %2, ptr noundef nonnull align 1 dereferenceable(10) @.str.38, i32 10, i1 false) #14
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i32 [ 9, %13 ], [ 0, %9 ]
  %16 = and i32 %10, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %2, i32 %15
  %20 = select i1 %12, ptr @.str.41, ptr @.str.40
  %21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %19, ptr noundef nonnull @.str.39, ptr noundef nonnull %20, ptr noundef nonnull @.str.42) #14
  %22 = add i32 %21, %15
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi i32 [ %22, %18 ], [ %15, %14 ]
  %25 = getelementptr i8, ptr %2, i32 %24
  store i16 10, ptr %25, align 1
  %26 = add i32 %24, 1
  br label %27

27:                                               ; preds = %23, %8
  %28 = phi i32 [ 8, %8 ], [ %26, %23 ]
  ret i32 %28
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_prot_capabilities(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -500
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.21, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_prot_guard_type(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -496
  %5 = load i8, ptr %4, align 8
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.25, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_host_reset(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = getelementptr i8, ptr %0, i32 -832
  %6 = getelementptr i8, ptr %0, i32 -744
  %7 = load ptr, ptr %6, align 8
  %8 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.49) #14
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.50) #14
  br i1 %10, label %11, label %20

11:                                               ; preds = %9, %4
  %12 = phi i32 [ 1, %4 ], [ 2, %9 ]
  %13 = getelementptr inbounds %struct.scsi_host_template, ptr %7, i32 0, i32 31
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = tail call i32 %14(ptr noundef %5, i32 noundef %12) #14
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 %3, i32 %17
  br label %20

20:                                               ; preds = %16, %11, %9
  %21 = phi i32 [ -22, %9 ], [ -95, %11 ], [ %19, %16 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_shost_eh_deadline(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -608
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(5) @.str.52, i32 5, i1 false)
  br label %11

8:                                                ; preds = %3
  %9 = sdiv i32 %5, 100
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef %9)
  br label %11

11:                                               ; preds = %8, %7
  %12 = phi i32 [ 4, %7 ], [ %10, %8 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_shost_eh_deadline(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !12
  %6 = getelementptr i8, ptr %0, i32 -740
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.scsi_transport_template, ptr %7, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %48

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 -744
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.scsi_host_template, ptr %15, i32 0, i32 13
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %48, label %19

19:                                               ; preds = %13, %4
  %20 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(4) @.str.53, i32 noundef 3)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 -1, ptr %5, align 4
  br label %26

23:                                               ; preds = %19
  %24 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %23, %22
  %27 = getelementptr i8, ptr %0, i32 -804
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #14
  %30 = getelementptr i8, ptr %0, i32 -476
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -5
  %33 = icmp ult i32 %32, 3
  br i1 %33, label %45, label %34

34:                                               ; preds = %26
  %35 = getelementptr i8, ptr %0, i32 -536
  %36 = load i16, ptr %35, align 8
  %37 = and i16 %36, 16
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, ptr %5, align 4
  %41 = icmp eq i32 %40, -1
  %42 = mul i32 %40, 100
  %43 = select i1 %41, i32 -1, i32 %42
  %44 = getelementptr i8, ptr %0, i32 -608
  store i32 %43, ptr %44, align 8
  br label %45

45:                                               ; preds = %39, %34, %26
  %46 = phi i32 [ -16, %34 ], [ -16, %26 ], [ %3, %39 ]
  %47 = load ptr, ptr %27, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %47, i32 noundef %29) #14
  br label %48

48:                                               ; preds = %45, %23, %13, %9
  %49 = phi i32 [ %46, %45 ], [ -22, %13 ], [ -22, %9 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_nr_hw_queues(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -692
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scsi_device_cls_release(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -472
  tail call void @put_device(ptr noundef %2) #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scsi_device_dev_release(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -264
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.scsi_host_template, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call zeroext i1 @try_module_get(ptr noundef %7) #14
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 11
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.scsi_host_template, ptr %12, i32 0, i32 3
  store ptr null, ptr %13, align 4
  br label %14

14:                                               ; preds = %9, %1
  %15 = getelementptr i8, ptr %0, i32 944
  %16 = tail call i32 @execute_in_process_context(ptr noundef nonnull @scsi_device_dev_release_usercontext, ptr noundef %15) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @scsi_sdev_attr_is_visible(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #11 {
  %4 = getelementptr i8, ptr %0, i32 -264
  %5 = icmp eq ptr %1, @dev_attr_queue_depth
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.scsi_host_template, ptr %9, i32 0, i32 21
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %22

13:                                               ; preds = %3
  %14 = icmp eq ptr %1, @dev_attr_queue_ramp_up_period
  br i1 %14, label %15, label %22

15:                                               ; preds = %13
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, ptr %16, i32 0, i32 11
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.scsi_host_template, ptr %18, i32 0, i32 21
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15, %13, %6
  %23 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %24 = load i16, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %15, %6
  %26 = phi i16 [ %24, %22 ], [ 292, %6 ], [ 0, %15 ]
  ret i16 %26
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @scsi_sdev_bin_attr_is_visible(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) #2 {
  %4 = icmp eq ptr %1, @dev_attr_vpd_pg0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 -104
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %27

9:                                                ; preds = %3
  %10 = icmp eq ptr %1, @dev_attr_vpd_pg80
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  %12 = getelementptr i8, ptr %0, i32 -96
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %27

15:                                               ; preds = %9
  %16 = icmp eq ptr %1, @dev_attr_vpd_pg83
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = getelementptr i8, ptr %0, i32 -100
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %27

21:                                               ; preds = %15
  %22 = icmp eq ptr %1, @dev_attr_vpd_pg89
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = getelementptr i8, ptr %0, i32 -92
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %21, %17, %11, %5
  br label %28

28:                                               ; preds = %27, %23, %17, %11, %5
  %29 = phi i16 [ 292, %27 ], [ 0, %5 ], [ 0, %11 ], [ 0, %17 ], [ 0, %23 ]
  ret i16 %29
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_show_queue_depth(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -196
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_store_queue_depth(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = getelementptr i8, ptr %0, i32 -264
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.scsi_host_template, ptr %8, i32 0, i32 21
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %4
  %13 = tail call i32 @simple_strtoul(ptr noundef %2, ptr noundef null, i32 noundef 0) #14
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %28, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, ptr %16, i32 0, i32 26
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %13, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %9, align 4
  %22 = tail call i32 %21(ptr noundef %5, i32 noundef %13) #14
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %0, i32 -196
  %26 = load i16, ptr %25, align 4
  %27 = getelementptr i8, ptr %0, i32 -194
  store i16 %26, ptr %27, align 2
  br label %28

28:                                               ; preds = %24, %20, %15, %12, %4
  %29 = phi i32 [ %3, %24 ], [ -22, %4 ], [ -22, %15 ], [ -22, %12 ], [ %22, %20 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_show_queue_ramp_up_period(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -184
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @jiffies_to_msecs(i32 noundef %5) #14
  %7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.21, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_store_queue_ramp_up_period(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !12
  %6 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4
  %10 = call i32 @__msecs_to_jiffies(i32 noundef %9) #14
  %11 = getelementptr i8, ptr %0, i32 -184
  store i32 %10, ptr %11, align 8
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %3, %8 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_vpd_pg0(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #3 {
  %7 = alloca i64, align 8
  store i64 %4, ptr %7, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %8 = getelementptr i8, ptr %1, i32 -104
  %9 = load volatile ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.scsi_vpd, ptr %9, i32 0, i32 2
  %13 = getelementptr inbounds %struct.scsi_vpd, ptr %9, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = call i32 @memory_read_from_buffer(ptr noundef %3, i32 noundef %5, ptr noundef nonnull %7, ptr noundef %12, i32 noundef %14) #14
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi i32 [ %15, %11 ], [ -22, %6 ]
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memory_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_vpd_pg80(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #3 {
  %7 = alloca i64, align 8
  store i64 %4, ptr %7, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %8 = getelementptr i8, ptr %1, i32 -96
  %9 = load volatile ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.scsi_vpd, ptr %9, i32 0, i32 2
  %13 = getelementptr inbounds %struct.scsi_vpd, ptr %9, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = call i32 @memory_read_from_buffer(ptr noundef %3, i32 noundef %5, ptr noundef nonnull %7, ptr noundef %12, i32 noundef %14) #14
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi i32 [ %15, %11 ], [ -22, %6 ]
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_vpd_pg83(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #3 {
  %7 = alloca i64, align 8
  store i64 %4, ptr %7, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %8 = getelementptr i8, ptr %1, i32 -100
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.scsi_vpd, ptr %9, i32 0, i32 2
  %13 = getelementptr inbounds %struct.scsi_vpd, ptr %9, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = call i32 @memory_read_from_buffer(ptr noundef %3, i32 noundef %5, ptr noundef nonnull %7, ptr noundef %12, i32 noundef %14) #14
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi i32 [ %15, %11 ], [ -22, %6 ]
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_vpd_pg89(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #3 {
  %7 = alloca i64, align 8
  store i64 %4, ptr %7, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %8 = getelementptr i8, ptr %1, i32 -92
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.scsi_vpd, ptr %9, i32 0, i32 2
  %13 = getelementptr inbounds %struct.scsi_vpd, ptr %9, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = call i32 @memory_read_from_buffer(ptr noundef %3, i32 noundef %5, ptr noundef nonnull %7, ptr noundef %12, i32 noundef %14) #14
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi i32 [ %15, %11 ], [ -22, %6 ]
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_show_device_blocked(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -216
  %5 = load volatile i32, ptr %4, align 4
  %6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_show_type(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -148
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_show_scsi_level(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -147
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_show_device_busy(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -240
  %5 = tail call i32 @sbitmap_weight(ptr noundef %4) #14
  %6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbitmap_weight(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_show_vendor(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -116
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.69, ptr noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_show_model(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -112
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.71, ptr noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_show_rev(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -108
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.73, ptr noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_rescan_field(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef returned %3) #3 {
  tail call void @scsi_rescan_device(ptr noundef %0) #14
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_rescan_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_store_delete(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3) #3 {
  %5 = getelementptr i8, ptr %0, i32 -264
  %6 = tail call i32 @scsi_device_get(ptr noundef %5) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = tail call ptr @sysfs_break_active_protection(ptr noundef %0, ptr noundef %1) #14
  %10 = icmp eq ptr %9, null
  %11 = load i1, ptr @sdev_store_delete.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !10

14:                                               ; preds = %8
  store i1 true, ptr @sdev_store_delete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 773, i32 noundef 9, ptr noundef null) #14
  br label %15

15:                                               ; preds = %14, %8
  tail call void @device_remove_file(ptr noundef %0, ptr noundef %1) #14
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, ptr %16, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %17) #14
  tail call void @__scsi_remove_device(ptr noundef %5) #14
  tail call void @mutex_unlock(ptr noundef %17) #14
  br i1 %10, label %19, label %18

18:                                               ; preds = %15
  tail call void @sysfs_unbreak_active_protection(ptr noundef nonnull %9) #14
  br label %19

19:                                               ; preds = %18, %15
  tail call void @scsi_device_put(ptr noundef %5) #14
  br label %20

20:                                               ; preds = %19, %4
  %21 = phi i32 [ %3, %19 ], [ -19, %4 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sysfs_break_active_protection(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_unbreak_active_protection(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_state_field(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 1028
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1
  %7 = icmp ult i32 %6, 9
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr [9 x %struct.anon], ptr @sdev_states, i32 0, i32 %6, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.31, ptr noundef nonnull %10)
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ %11, %8 ], [ -22, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_state_field(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #3 {
  %5 = getelementptr i8, ptr %0, i32 -264
  %6 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.6, ptr noundef %2, i32 noundef 7)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %2, i32 7
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 10
  br i1 %11, label %68, label %12

12:                                               ; preds = %8, %4
  %13 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.7, ptr noundef %2, i32 noundef 7)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %2, i32 7
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 10
  br i1 %18, label %68, label %19

19:                                               ; preds = %15, %12
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.8, ptr noundef %2, i32 noundef 6)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = getelementptr i8, ptr %2, i32 6
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 10
  br i1 %25, label %68, label %26

26:                                               ; preds = %22, %19
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.9, ptr noundef %2, i32 noundef 7)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr i8, ptr %2, i32 7
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 10
  br i1 %32, label %68, label %33

33:                                               ; preds = %29, %26
  %34 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.10, ptr noundef %2, i32 noundef 7)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = getelementptr i8, ptr %2, i32 7
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, 10
  br i1 %39, label %68, label %40

40:                                               ; preds = %36, %33
  %41 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.11, ptr noundef %2, i32 noundef 7)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = getelementptr i8, ptr %2, i32 7
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 10
  br i1 %46, label %68, label %47

47:                                               ; preds = %43, %40
  %48 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(18) @.str.12, ptr noundef %2, i32 noundef 17)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = getelementptr i8, ptr %2, i32 17
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 10
  br i1 %53, label %68, label %54

54:                                               ; preds = %50, %47
  %55 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.13, ptr noundef %2, i32 noundef 7)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = getelementptr i8, ptr %2, i32 7
  %59 = load i8, ptr %58, align 1
  %60 = icmp eq i8 %59, 10
  br i1 %60, label %68, label %61

61:                                               ; preds = %57, %54
  %62 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(16) @.str.14, ptr noundef %2, i32 noundef 15)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %61
  %65 = getelementptr i8, ptr %2, i32 15
  %66 = load i8, ptr %65, align 1
  %67 = icmp eq i8 %66, 10
  br i1 %67, label %68, label %90

68:                                               ; preds = %64, %57, %50, %43, %36, %29, %22, %15, %8
  %69 = phi i32 [ 0, %8 ], [ 1, %15 ], [ 2, %22 ], [ 3, %29 ], [ 4, %36 ], [ 5, %43 ], [ 6, %50 ], [ 7, %57 ], [ 8, %64 ]
  %70 = getelementptr [9 x %struct.anon], ptr @sdev_states, i32 0, i32 %69
  %71 = load i32, ptr %70, align 4
  switch i32 %71, label %90 [
    i32 2, label %72
    i32 6, label %72
  ]

72:                                               ; preds = %68, %68
  %73 = getelementptr i8, ptr %0, i32 1008
  tail call void @mutex_lock(ptr noundef %73) #14
  %74 = getelementptr i8, ptr %0, i32 1028
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 2
  %77 = icmp eq i32 %71, 2
  %78 = select i1 %76, i1 %77, i1 false
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  tail call void @mutex_unlock(ptr noundef %73) #14
  br label %89

80:                                               ; preds = %72
  %81 = tail call i32 @scsi_device_set_state(ptr noundef %5, i32 noundef %71) #14
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %82, i1 %77, i1 false
  tail call void @mutex_unlock(ptr noundef %73) #14
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = getelementptr i8, ptr %0, i32 -260
  %86 = load ptr, ptr %85, align 4
  tail call void @blk_mq_run_hw_queues(ptr noundef %86, i1 noundef zeroext true) #14
  tail call void @scsi_rescan_device(ptr noundef %0) #14
  br label %89

87:                                               ; preds = %80
  %88 = icmp eq i32 %81, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %87, %84, %79
  br label %90

90:                                               ; preds = %89, %87, %68, %64, %61
  %91 = phi i32 [ -22, %68 ], [ %3, %89 ], [ -22, %87 ], [ -22, %64 ], [ -22, %61 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_run_hw_queues(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_show_timeout(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -260
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 23
  %7 = load i32, ptr %6, align 8
  %8 = udiv i32 %7, 100
  %9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_store_timeout(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef returned %3) #3 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !12
  %6 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.23, ptr noundef nonnull %5)
  %7 = getelementptr i8, ptr %0, i32 -260
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %5, align 4
  %10 = mul i32 %9, 100
  call void @blk_queue_rq_timeout(ptr noundef %8, i32 noundef %10) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_rq_timeout(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_show_eh_timeout(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -72
  %5 = load i32, ptr %4, align 8
  %6 = udiv i32 %5, 100
  %7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.21, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_store_eh_timeout(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !12
  %6 = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32, ptr %5, align 4
  %12 = mul i32 %11, 100
  %13 = getelementptr i8, ptr %0, i32 -72
  store i32 %12, ptr %13, align 8
  br label %14

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ %3, %10 ], [ -13, %4 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_iostat_counterbits(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef 32)
  ret i32 %4
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_iostat_iorequest_cnt(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = load volatile i32, ptr %4, align 4
  %6 = sext i32 %5 to i64
  %7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.81, i64 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_iostat_iodone_cnt(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load volatile i32, ptr %4, align 4
  %6 = sext i32 %5 to i64
  %7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.81, i64 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_iostat_ioerr_cnt(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load volatile i32, ptr %4, align 4
  %6 = sext i32 %5 to i64
  %7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.81, i64 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_show_modalias(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -148
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.85, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_queue_type_field(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -68
  %5 = load i64, ptr %4, align 4
  %6 = and i64 %5, 4096
  %7 = icmp eq i64 %6, 0
  %8 = select i1 %7, ptr @.str.87, ptr @.str.88
  %9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.31, ptr noundef nonnull %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_queue_type_field(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3) #3 {
  %5 = getelementptr i8, ptr %0, i32 -68
  %6 = load i64, ptr %5, align 4
  %7 = and i64 %6, 2048
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 -264
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %10, ptr noundef null, ptr noundef nonnull @.str.89) #14
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi i32 [ %3, %9 ], [ -22, %4 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_show_wwid(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -264
  %5 = tail call i32 @scsi_vpd_lun_id(ptr noundef %4, ptr noundef %2, i32 noundef 4096) #14
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %2, i32 %5
  store i8 10, ptr %8, align 1
  %9 = add nuw i32 %5, 1
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %9, %7 ], [ %5, %3 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_vpd_lun_id(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_show_blacklist(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -80
  br label %5

5:                                                ; preds = %34, %3
  %6 = phi i32 [ 0, %3 ], [ %35, %34 ]
  %7 = phi i32 [ 0, %3 ], [ %36, %34 ]
  %8 = load i64, ptr %4, align 8
  %9 = shl nuw i32 1, %7
  %10 = zext i32 %9 to i64
  %11 = and i64 %8, %10
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %5
  %14 = icmp ult i32 %7, 34
  br i1 %14, label %15, label %25

15:                                               ; preds = %13
  %16 = getelementptr [34 x ptr], ptr @sdev_bflags_name, i32 0, i32 %7
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %2, i32 %6
  %21 = sub i32 4096, %6
  %22 = icmp eq i32 %6, 0
  %23 = select i1 %22, ptr @.str.41, ptr @.str.92
  %24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %20, i32 noundef %21, ptr noundef nonnull @.str.39, ptr noundef nonnull %23, ptr noundef nonnull %17) #14
  br label %31

25:                                               ; preds = %15, %13
  %26 = getelementptr i8, ptr %2, i32 %6
  %27 = sub i32 4096, %6
  %28 = icmp eq i32 %6, 0
  %29 = select i1 %28, ptr @.str.41, ptr @.str.92
  %30 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %26, i32 noundef %27, ptr noundef nonnull @.str.93, ptr noundef nonnull %29, i32 noundef %7) #14
  br label %31

31:                                               ; preds = %25, %19
  %32 = phi i32 [ %24, %19 ], [ %30, %25 ]
  %33 = add i32 %32, %6
  br label %34

34:                                               ; preds = %31, %5
  %35 = phi i32 [ %33, %31 ], [ %6, %5 ]
  %36 = add nuw nsw i32 %7, 1
  %37 = icmp eq i32 %36, 64
  br i1 %37, label %38, label %5

38:                                               ; preds = %34
  %39 = icmp eq i32 %35, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %38
  %41 = getelementptr i8, ptr %2, i32 %35
  %42 = sub i32 4096, %35
  %43 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %41, i32 noundef %42, ptr noundef nonnull @.str.43) #14
  %44 = add i32 %43, %35
  br label %45

45:                                               ; preds = %40, %38
  %46 = phi i32 [ %44, %40 ], [ 0, %38 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_show_evt_media_change(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -48
  %5 = load volatile i32, ptr %4, align 4
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  %8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_store_evt_media_change(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = tail call i32 @simple_strtoul(ptr noundef %2, ptr noundef null, i32 noundef 0) #14
  switch i32 %5, label %10 [
    i32 0, label %6
    i32 1, label %8
  ]

6:                                                ; preds = %4
  %7 = getelementptr i8, ptr %0, i32 -48
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %7) #14
  br label %10

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -48
  tail call void @_set_bit(i32 noundef 1, ptr noundef %9) #14
  br label %10

10:                                               ; preds = %8, %6, %4
  %11 = phi i32 [ -22, %4 ], [ %3, %8 ], [ %3, %6 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_show_evt_inquiry_change_reported(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -48
  %5 = load volatile i32, ptr %4, align 4
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  %8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_store_evt_inquiry_change_reported(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = tail call i32 @simple_strtoul(ptr noundef %2, ptr noundef null, i32 noundef 0) #14
  switch i32 %5, label %10 [
    i32 0, label %6
    i32 1, label %8
  ]

6:                                                ; preds = %4
  %7 = getelementptr i8, ptr %0, i32 -48
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %7) #14
  br label %10

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -48
  tail call void @_set_bit(i32 noundef 2, ptr noundef %9) #14
  br label %10

10:                                               ; preds = %8, %6, %4
  %11 = phi i32 [ -22, %4 ], [ %3, %8 ], [ %3, %6 ]
  ret i32 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_show_evt_capacity_change_reported(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -48
  %5 = load volatile i32, ptr %4, align 4
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  %8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_store_evt_capacity_change_reported(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = tail call i32 @simple_strtoul(ptr noundef %2, ptr noundef null, i32 noundef 0) #14
  switch i32 %5, label %10 [
    i32 0, label %6
    i32 1, label %8
  ]

6:                                                ; preds = %4
  %7 = getelementptr i8, ptr %0, i32 -48
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %7) #14
  br label %10

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -48
  tail call void @_set_bit(i32 noundef 3, ptr noundef %9) #14
  br label %10

10:                                               ; preds = %8, %6, %4
  %11 = phi i32 [ -22, %4 ], [ %3, %8 ], [ %3, %6 ]
  ret i32 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_show_evt_soft_threshold_reached(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -48
  %5 = load volatile i32, ptr %4, align 4
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  %8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_store_evt_soft_threshold_reached(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = tail call i32 @simple_strtoul(ptr noundef %2, ptr noundef null, i32 noundef 0) #14
  switch i32 %5, label %10 [
    i32 0, label %6
    i32 1, label %8
  ]

6:                                                ; preds = %4
  %7 = getelementptr i8, ptr %0, i32 -48
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %7) #14
  br label %10

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -48
  tail call void @_set_bit(i32 noundef 4, ptr noundef %9) #14
  br label %10

10:                                               ; preds = %8, %6, %4
  %11 = phi i32 [ -22, %4 ], [ %3, %8 ], [ %3, %6 ]
  ret i32 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_show_evt_mode_parameter_change_reported(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -48
  %5 = load volatile i32, ptr %4, align 4
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  %8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_store_evt_mode_parameter_change_reported(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = tail call i32 @simple_strtoul(ptr noundef %2, ptr noundef null, i32 noundef 0) #14
  switch i32 %5, label %10 [
    i32 0, label %6
    i32 1, label %8
  ]

6:                                                ; preds = %4
  %7 = getelementptr i8, ptr %0, i32 -48
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %7) #14
  br label %10

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -48
  tail call void @_set_bit(i32 noundef 5, ptr noundef %9) #14
  br label %10

10:                                               ; preds = %8, %6, %4
  %11 = phi i32 [ -22, %4 ], [ %3, %8 ], [ %3, %6 ]
  ret i32 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_show_evt_lun_change_reported(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -48
  %5 = load volatile i32, ptr %4, align 4
  %6 = lshr i32 %5, 6
  %7 = and i32 %6, 1
  %8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdev_store_evt_lun_change_reported(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = tail call i32 @simple_strtoul(ptr noundef %2, ptr noundef null, i32 noundef 0) #14
  switch i32 %5, label %10 [
    i32 0, label %6
    i32 1, label %8
  ]

6:                                                ; preds = %4
  %7 = getelementptr i8, ptr %0, i32 -48
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %7) #14
  br label %10

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -48
  tail call void @_set_bit(i32 noundef 6, ptr noundef %9) #14
  br label %10

10:                                               ; preds = %8, %6, %4
  %11 = phi i32 [ -22, %4 ], [ %3, %8 ], [ %3, %6 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_inquiry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #3 {
  %7 = alloca i64, align 8
  store i64 %4, ptr %7, align 8
  %8 = getelementptr i8, ptr %1, i32 -120
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %1, i32 -124
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = call i32 @memory_read_from_buffer(ptr noundef %3, i32 noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %9, i32 noundef %14) #14
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi i32 [ %15, %11 ], [ -22, %6 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @execute_in_process_context(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scsi_device_dev_release_usercontext(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -1208
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.scsi_host_template, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 -908
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #14
  %13 = getelementptr i8, ptr %0, i32 -1200
  %14 = getelementptr i8, ptr %0, i32 -1196
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  %18 = getelementptr i8, ptr %0, i32 -1192
  %19 = getelementptr i8, ptr %0, i32 -1188
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  store volatile ptr %21, ptr %20, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %19, align 4
  %23 = getelementptr i8, ptr %0, i32 -1148
  %24 = getelementptr i8, ptr %0, i32 -1144
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %26, ptr %25, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %24, align 4
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds %struct.Scsi_Host, ptr %28, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %12) #14
  %31 = getelementptr i8, ptr %0, i32 -976
  %32 = tail call zeroext i1 @cancel_work_sync(ptr noundef %31) #14
  %33 = getelementptr i8, ptr %0, i32 -984
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %44, label %36

36:                                               ; preds = %36, %1
  %37 = phi ptr [ %38, %36 ], [ %34, %1 ]
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %37, i32 -4
  %40 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %41, ptr %42, align 4
  store volatile ptr %38, ptr %41, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %37, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %40, align 4
  tail call void @kfree(ptr noundef %39) #14
  %43 = icmp eq ptr %38, %33
  br i1 %43, label %44, label %36

44:                                               ; preds = %36, %1
  %45 = getelementptr i8, ptr %0, i32 -1204
  %46 = load ptr, ptr %45, align 4
  tail call void @blk_put_queue(ptr noundef %46) #14
  store ptr null, ptr %45, align 4
  %47 = getelementptr i8, ptr %0, i32 -1164
  %48 = load ptr, ptr %47, align 4
  tail call void @free_percpu(ptr noundef %48) #14
  %49 = getelementptr i8, ptr %0, i32 -1168
  %50 = load ptr, ptr %49, align 4
  tail call void @kfree(ptr noundef %50) #14
  store ptr null, ptr %49, align 4
  %51 = getelementptr i8, ptr %0, i32 -1088
  tail call void @mutex_lock(ptr noundef %51) #14
  %52 = getelementptr i8, ptr %0, i32 -1048
  %53 = load ptr, ptr %52, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !15
  store volatile ptr null, ptr %52, align 8
  %54 = getelementptr i8, ptr %0, i32 -1040
  %55 = load ptr, ptr %54, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !16
  store volatile ptr null, ptr %54, align 8
  %56 = getelementptr i8, ptr %0, i32 -1044
  %57 = load ptr, ptr %56, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !17
  store volatile ptr null, ptr %56, align 4
  %58 = getelementptr i8, ptr %0, i32 -1036
  %59 = load ptr, ptr %58, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !18
  store volatile ptr null, ptr %58, align 4
  tail call void @mutex_unlock(ptr noundef %51) #14
  %60 = icmp eq ptr %53, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %44
  tail call void @kvfree_call_rcu(ptr noundef nonnull %53, ptr noundef null) #14
  br label %62

62:                                               ; preds = %61, %44
  %63 = icmp eq ptr %57, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %62
  tail call void @kvfree_call_rcu(ptr noundef nonnull %57, ptr noundef null) #14
  br label %65

65:                                               ; preds = %64, %62
  %66 = icmp eq ptr %55, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %65
  tail call void @kvfree_call_rcu(ptr noundef nonnull %55, ptr noundef null) #14
  br label %68

68:                                               ; preds = %67, %65
  %69 = icmp eq ptr %59, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %68
  tail call void @kvfree_call_rcu(ptr noundef nonnull %59, ptr noundef null) #14
  br label %71

71:                                               ; preds = %70, %68
  %72 = getelementptr i8, ptr %0, i32 -1064
  %73 = load ptr, ptr %72, align 8
  tail call void @kfree(ptr noundef %73) #14
  tail call void @kfree(ptr noundef %2) #14
  %74 = icmp eq ptr %9, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  tail call void @put_device(ptr noundef nonnull %9) #14
  br label %76

76:                                               ; preds = %75, %71
  tail call void @module_put(ptr noundef %7) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_put_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind willreturn }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }

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
!8 = !{i64 583132, i64 2148073103, i64 2148073129, i64 2148073176, i64 2148073198, i64 2148073226, i64 2148073246}
!9 = !{i64 2148085976, i64 2148086008, i64 2148086037, i64 2148086071, i64 2148086102, i64 2148086125}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{!"auto-init"}
!13 = !{i64 2149086012}
!14 = !{i64 2149086229}
!15 = !{i64 2153423432}
!16 = !{i64 2153432097}
!17 = !{i64 2153440791}
!18 = !{i64 2153449485}
