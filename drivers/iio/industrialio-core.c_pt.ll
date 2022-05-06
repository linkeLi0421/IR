; ModuleID = '/llk/IR/drivers/iio/industrialio-core.c_pt.bc'
source_filename = "../drivers/iio/industrialio-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_bus_type\22\09\09\09\09\09"
module asm "__kstrtabns_iio_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_device_id:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_device_id\22\09\09\09\09\09"
module asm "__kstrtabns_iio_device_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_get_debugfs_dentry:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_get_debugfs_dentry\22\09\09\09\09\09"
module asm "__kstrtabns_iio_get_debugfs_dentry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_read_const_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_read_const_attr\22\09\09\09\09\09"
module asm "__kstrtabns_iio_read_const_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_device_set_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_device_set_clock\22\09\09\09\09\09"
module asm "__kstrtabns_iio_device_set_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_device_get_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_device_get_clock\22\09\09\09\09\09"
module asm "__kstrtabns_iio_device_get_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_get_time_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_get_time_ns\22\09\09\09\09\09"
module asm "__kstrtabns_iio_get_time_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_get_time_res:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_get_time_res\22\09\09\09\09\09"
module asm "__kstrtabns_iio_get_time_res:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_enum_available_read:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_enum_available_read\22\09\09\09\09\09"
module asm "__kstrtabns_iio_enum_available_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_enum_read:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_enum_read\22\09\09\09\09\09"
module asm "__kstrtabns_iio_enum_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_enum_write:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_enum_write\22\09\09\09\09\09"
module asm "__kstrtabns_iio_enum_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_show_mount_matrix:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_show_mount_matrix\22\09\09\09\09\09"
module asm "__kstrtabns_iio_show_mount_matrix:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_read_mount_matrix:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_read_mount_matrix\22\09\09\09\09\09"
module asm "__kstrtabns_iio_read_mount_matrix:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_format_value:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_format_value\22\09\09\09\09\09"
module asm "__kstrtabns_iio_format_value:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_str_to_fixpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_str_to_fixpoint\22\09\09\09\09\09"
module asm "__kstrtabns_iio_str_to_fixpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_device_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_device_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_iio_device_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_device_free:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_device_free\22\09\09\09\09\09"
module asm "__kstrtabns_iio_device_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_iio_device_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_iio_device_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_devm_iio_device_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___iio_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__iio_device_register\22\09\09\09\09\09"
module asm "__kstrtabns___iio_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_iio_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_iio_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_iio_device_register\22\09\09\09\09\09"
module asm "__kstrtabns___devm_iio_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_device_claim_direct_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_device_claim_direct_mode\22\09\09\09\09\09"
module asm "__kstrtabns_iio_device_claim_direct_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_device_release_direct_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_device_release_direct_mode\22\09\09\09\09\09"
module asm "__kstrtabns_iio_device_release_direct_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.iio_dev_opaque = type { %struct.iio_dev, i32, ptr, %struct.mutex, i8, ptr, ptr, i32, ptr, %struct.list_head, %struct.list_head, %struct.attribute_group, %struct.list_head, ptr, i32, %struct.attribute_group, %struct.attribute_group, ptr, i32, i32, i32, %struct.cdev, i32, ptr, i32, [20 x i8], i32 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.62, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.62 = type { i8, i8, i8, i8, i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.iio_enum = type { ptr, i32, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iio_ioctl_handler = type { %struct.list_head, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, ptr, %struct.address_space, %struct.list_head, %union.anon.61, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.58 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.59 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.60 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.61 = type { ptr }
%struct.iio_dev_buffer_pair = type { ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"iio\00", align 1
@iio_bus_type = dso_local global %struct.bus_type { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@__kstrtab_iio_bus_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_bus_type = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_bus_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_bus_type to i32), ptr @__kstrtab_iio_bus_type, ptr @__kstrtabns_iio_bus_type }, section "___ksymtab+iio_bus_type", align 4
@__kstrtab_iio_device_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_device_id = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_device_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_device_id to i32), ptr @__kstrtab_iio_device_id, ptr @__kstrtabns_iio_device_id }, section "___ksymtab_gpl+iio_device_id", align 4
@__kstrtab_iio_get_debugfs_dentry = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_get_debugfs_dentry = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_get_debugfs_dentry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_get_debugfs_dentry to i32), ptr @__kstrtab_iio_get_debugfs_dentry, ptr @__kstrtabns_iio_get_debugfs_dentry }, section "___ksymtab_gpl+iio_get_debugfs_dentry", align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__kstrtab_iio_read_const_attr = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_read_const_attr = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_read_const_attr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_read_const_attr to i32), ptr @__kstrtab_iio_read_const_attr, ptr @__kstrtabns_iio_read_const_attr }, section "___ksymtab+iio_read_const_attr", align 4
@__kstrtab_iio_device_set_clock = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_device_set_clock = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_device_set_clock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_device_set_clock to i32), ptr @__kstrtab_iio_device_set_clock, ptr @__kstrtabns_iio_device_set_clock }, section "___ksymtab+iio_device_set_clock", align 4
@__kstrtab_iio_device_get_clock = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_device_get_clock = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_device_get_clock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_device_get_clock to i32), ptr @__kstrtab_iio_device_get_clock, ptr @__kstrtabns_iio_device_get_clock }, section "___ksymtab+iio_device_get_clock", align 4
@__kstrtab_iio_get_time_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_get_time_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_get_time_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_get_time_ns to i32), ptr @__kstrtab_iio_get_time_ns, ptr @__kstrtabns_iio_get_time_ns }, section "___ksymtab+iio_get_time_ns", align 4
@hrtimer_resolution = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_iio_get_time_res = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_get_time_res = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_get_time_res = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_get_time_res to i32), ptr @__kstrtab_iio_get_time_res, ptr @__kstrtabns_iio_get_time_res }, section "___ksymtab+iio_get_time_res", align 4
@iio_devt = internal global i32 0, align 4
@iio_debugfs_dentry = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@__kstrtab_iio_enum_available_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_enum_available_read = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_enum_available_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_enum_available_read to i32), ptr @__kstrtab_iio_enum_available_read, ptr @__kstrtabns_iio_enum_available_read }, section "___ksymtab_gpl+iio_enum_available_read", align 4
@__kstrtab_iio_enum_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_enum_read = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_enum_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_enum_read to i32), ptr @__kstrtab_iio_enum_read, ptr @__kstrtabns_iio_enum_read }, section "___ksymtab_gpl+iio_enum_read", align 4
@__kstrtab_iio_enum_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_enum_write = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_enum_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_enum_write to i32), ptr @__kstrtab_iio_enum_write, ptr @__kstrtabns_iio_enum_write }, section "___ksymtab_gpl+iio_enum_write", align 4
@iio_mount_idmatrix = internal unnamed_addr constant %struct.iio_mount_matrix { [9 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.17, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.17] }, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"%s, %s, %s; %s, %s, %s; %s, %s, %s\0A\00", align 1
@__kstrtab_iio_show_mount_matrix = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_show_mount_matrix = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_show_mount_matrix = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_show_mount_matrix to i32), ptr @__kstrtab_iio_show_mount_matrix, ptr @__kstrtabns_iio_show_mount_matrix }, section "___ksymtab_gpl+iio_show_mount_matrix", align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"mount-matrix\00", align 1
@__kstrtab_iio_read_mount_matrix = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_read_mount_matrix = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_read_mount_matrix = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_read_mount_matrix to i32), ptr @__kstrtab_iio_read_mount_matrix, ptr @__kstrtabns_iio_read_mount_matrix }, section "___ksymtab+iio_read_mount_matrix", align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__kstrtab_iio_format_value = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_format_value = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_format_value = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_format_value to i32), ptr @__kstrtab_iio_format_value, ptr @__kstrtabns_iio_format_value }, section "___ksymtab_gpl+iio_format_value", align 4
@__kstrtab_iio_str_to_fixpoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_str_to_fixpoint = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_str_to_fixpoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_str_to_fixpoint to i32), ptr @__kstrtab_iio_str_to_fixpoint, ptr @__kstrtabns_iio_str_to_fixpoint }, section "___ksymtab_gpl+iio_str_to_fixpoint", align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"tried to double register : %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"iio_device\00", align 1
@iio_device_type = dso_local constant %struct.device_type { ptr @.str.7, ptr null, ptr null, ptr null, ptr @iio_dev_release, ptr null }, align 4
@iio_device_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"&indio_dev->mlock\00", align 1
@iio_device_alloc.__key.9 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"&iio_dev_opaque->info_exist_lock\00", align 1
@iio_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str.11 = private unnamed_addr constant [37 x i8] c"\013iio-core: failed to get device id\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"iio:device%d\00", align 1
@__kstrtab_iio_device_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_device_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_device_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_device_alloc to i32), ptr @__kstrtab_iio_device_alloc, ptr @__kstrtabns_iio_device_alloc }, section "___ksymtab+iio_device_alloc", align 4
@__kstrtab_iio_device_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_device_free = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_device_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_device_free to i32), ptr @__kstrtab_iio_device_free, ptr @__kstrtabns_iio_device_free }, section "___ksymtab+iio_device_free", align 4
@__kstrtab_devm_iio_device_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_iio_device_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_iio_device_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_iio_device_alloc to i32), ptr @__kstrtab_devm_iio_device_alloc, ptr @__kstrtabns_devm_iio_device_alloc }, section "___ksymtab_gpl+devm_iio_device_alloc", align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"Failed to create buffer sysfs interfaces\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Failed to register sysfs interfaces\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"Failed to register event set\0A\00", align 1
@noop_ring_setup_ops = internal constant %struct.iio_buffer_setup_ops zeroinitializer, align 4
@iio_buffer_fileops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr @iio_buffer_read_wrapper, ptr @iio_buffer_write_wrapper, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iio_buffer_poll_wrapper, ptr @iio_ioctl, ptr null, ptr null, i32 0, ptr @iio_chrdev_open, ptr null, ptr @iio_chrdev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@iio_event_fileops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iio_ioctl, ptr null, ptr null, i32 0, ptr @iio_chrdev_open, ptr null, ptr @iio_chrdev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab___iio_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___iio_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab___iio_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__iio_device_register to i32), ptr @__kstrtab___iio_device_register, ptr @__kstrtabns___iio_device_register }, section "___ksymtab+__iio_device_register", align 4
@__kstrtab_iio_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_device_unregister to i32), ptr @__kstrtab_iio_device_unregister, ptr @__kstrtabns_iio_device_unregister }, section "___ksymtab+iio_device_unregister", align 4
@__kstrtab___devm_iio_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_iio_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_iio_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_iio_device_register to i32), ptr @__kstrtab___devm_iio_device_register, ptr @__kstrtabns___devm_iio_device_register }, section "___ksymtab_gpl+__devm_iio_device_register", align 4
@__kstrtab_iio_device_claim_direct_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_device_claim_direct_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_device_claim_direct_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_device_claim_direct_mode to i32), ptr @__kstrtab_iio_device_claim_direct_mode, ptr @__kstrtabns_iio_device_claim_direct_mode }, section "___ksymtab_gpl+iio_device_claim_direct_mode", align 4
@__kstrtab_iio_device_release_direct_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_device_release_direct_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_device_release_direct_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_device_release_direct_mode to i32), ptr @__kstrtab_iio_device_release_direct_mode, ptr @__kstrtabns_iio_device_release_direct_mode }, section "___ksymtab_gpl+iio_device_release_direct_mode", align 4
@__initcall__kmod_industrialio__208_2062_iio_init4 = internal global ptr @iio_init, section ".initcall4.init", align 4
@__exitcall_iio_exit = internal global ptr @iio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author209 = internal constant [56 x i8] c"industrialio.author=Jonathan Cameron <jic23@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description210 = internal constant [45 x i8] c"industrialio.description=Industrial I/O core\00", section ".modinfo", align 1
@__UNIQUE_ID_file211 = internal constant [43 x i8] c"industrialio.file=drivers/iio/industrialio\00", section ".modinfo", align 1
@__UNIQUE_ID_license212 = internal constant [25 x i8] c"industrialio.license=GPL\00", section ".modinfo", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"mounting matrix not found: using identity...\0A\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"-%d.%06u%s\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c" dB\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"%d.%06u%s\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"-%d.%09u\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"%d.%09u\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"-0.%09u\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"dB\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.32 = private unnamed_addr constant [9 x i8] c"%s_%s_%s\00", align 1
@iio_modifier_names = internal unnamed_addr constant [45 x ptr] [ptr null, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], align 4
@.str.33 = private unnamed_addr constant [6 x i8] c"%s_%s\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@iio_direction = internal unnamed_addr constant [2 x ptr] [ptr @.str.84, ptr @.str.85], align 4
@.str.35 = private unnamed_addr constant [12 x i8] c"%s_%s-%s_%s\00", align 1
@iio_chan_type_name_spec = internal unnamed_addr constant [35 x ptr] [ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120], align 4
@.str.36 = private unnamed_addr constant [32 x i8] c"drivers/iio/industrialio-core.c\00", align 1
@.str.37 = private unnamed_addr constant [39 x i8] c"Differential channels must be indexed\0A\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"%s_%s%d-%s%d_%s\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"%s_%s%d_%s\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"x&y\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"x&z\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"y&z\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"x&y&z\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"x|y\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"x|z\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"y|z\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"x|y|z\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"ir\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"sqrt(x^2+y^2)\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"x^2+y^2+z^2\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"quaternion\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"ambient\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"from_north_magnetic\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"from_north_true\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"from_north_magnetic_tilt_comp\00", align 1
@.str.65 = private unnamed_addr constant [26 x i8] c"from_north_true_tilt_comp\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"jogging\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"walking\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"still\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"sqrt(x^2+y^2+z^2)\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"co2\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"voc\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"uv\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"duv\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"pm1\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"pm2p5\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"pm4\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"pm10\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"ethanol\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"h2\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"o2\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"voltage\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"accel\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"anglvel\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"magn\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"illuminance\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"intensity\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"proximity\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"incli\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"rot\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"angl\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"timestamp\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"capacitance\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"altvoltage\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"cct\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"pressure\00", align 1
@.str.104 = private unnamed_addr constant [17 x i8] c"humidityrelative\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"activity\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"steps\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"energy\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"distance\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"velocity\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"concentration\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"resistance\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"ph\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"uvindex\00", align 1
@.str.114 = private unnamed_addr constant [23 x i8] c"electricalconductivity\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c"gravity\00", align 1
@.str.118 = private unnamed_addr constant [17 x i8] c"positionrelative\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"phase\00", align 1
@.str.120 = private unnamed_addr constant [18 x i8] c"massconcentration\00", align 1
@.str.121 = private unnamed_addr constant [25 x i8] c"Duplicate scan index %d\0A\00", align 1
@.str.122 = private unnamed_addr constant [52 x i8] c"Cannot use labels and extend_name at the same time\0A\00", align 1
@.str.123 = private unnamed_addr constant [18 x i8] c"direct_reg_access\00", align 1
@iio_debugfs_reg_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr @iio_debugfs_read_reg, ptr @iio_debugfs_write_reg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.124 = private unnamed_addr constant [17 x i8] c"%s: read failed\0A\00", align 1
@__func__.iio_debugfs_read_reg = private unnamed_addr constant [21 x i8] c"iio_debugfs_read_reg\00", align 1
@.str.125 = private unnamed_addr constant [6 x i8] c"0x%X\0A\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"%i %i\00", align 1
@.str.127 = private unnamed_addr constant [18 x i8] c"%s: write failed\0A\00", align 1
@__func__.iio_debugfs_write_reg = private unnamed_addr constant [22 x i8] c"iio_debugfs_write_reg\00", align 1
@dev_attr_current_timestamp_clock = internal global %struct.device_attribute { %struct.attribute { ptr @.str.130, i16 420 }, ptr @iio_show_timestamp_clock, ptr @iio_store_timestamp_clock }, align 4
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.176, i16 292 }, ptr @iio_show_dev_name, ptr null }, align 4
@dev_attr_label = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @iio_show_dev_label, ptr null }, align 4
@.str.130 = private unnamed_addr constant [24 x i8] c"current_timestamp_clock\00", align 1
@.str.131 = private unnamed_addr constant [10 x i8] c"realtime\0A\00", align 1
@.str.132 = private unnamed_addr constant [11 x i8] c"monotonic\0A\00", align 1
@.str.133 = private unnamed_addr constant [15 x i8] c"monotonic_raw\0A\00", align 1
@.str.134 = private unnamed_addr constant [17 x i8] c"realtime_coarse\0A\00", align 1
@.str.135 = private unnamed_addr constant [18 x i8] c"monotonic_coarse\0A\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"boottime\0A\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"tai\0A\00", align 1
@.str.138 = private unnamed_addr constant [9 x i8] c"realtime\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"monotonic\00", align 1
@.str.140 = private unnamed_addr constant [14 x i8] c"monotonic_raw\00", align 1
@.str.141 = private unnamed_addr constant [16 x i8] c"realtime_coarse\00", align 1
@.str.142 = private unnamed_addr constant [17 x i8] c"monotonic_coarse\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c"boottime\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"tai\00", align 1
@iio_chan_info_postfix = internal unnamed_addr constant [28 x ptr] [ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.119, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171], align 4
@.str.145 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.149 = private unnamed_addr constant [11 x i8] c"calibscale\00", align 1
@.str.150 = private unnamed_addr constant [10 x i8] c"calibbias\00", align 1
@.str.151 = private unnamed_addr constant [9 x i8] c"peak_raw\00", align 1
@.str.152 = private unnamed_addr constant [11 x i8] c"peak_scale\00", align 1
@.str.153 = private unnamed_addr constant [26 x i8] c"quadrature_correction_raw\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"mean_raw\00", align 1
@.str.155 = private unnamed_addr constant [30 x i8] c"filter_low_pass_3db_frequency\00", align 1
@.str.156 = private unnamed_addr constant [31 x i8] c"filter_high_pass_3db_frequency\00", align 1
@.str.157 = private unnamed_addr constant [19 x i8] c"sampling_frequency\00", align 1
@.str.158 = private unnamed_addr constant [10 x i8] c"frequency\00", align 1
@.str.159 = private unnamed_addr constant [13 x i8] c"hardwaregain\00", align 1
@.str.160 = private unnamed_addr constant [11 x i8] c"hysteresis\00", align 1
@.str.161 = private unnamed_addr constant [20 x i8] c"hysteresis_relative\00", align 1
@.str.162 = private unnamed_addr constant [17 x i8] c"integration_time\00", align 1
@.str.163 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.164 = private unnamed_addr constant [12 x i8] c"calibheight\00", align 1
@.str.165 = private unnamed_addr constant [12 x i8] c"calibweight\00", align 1
@.str.166 = private unnamed_addr constant [15 x i8] c"debounce_count\00", align 1
@.str.167 = private unnamed_addr constant [14 x i8] c"debounce_time\00", align 1
@.str.168 = private unnamed_addr constant [16 x i8] c"calibemissivity\00", align 1
@.str.169 = private unnamed_addr constant [19 x i8] c"oversampling_ratio\00", align 1
@.str.170 = private unnamed_addr constant [18 x i8] c"thermocouple_type\00", align 1
@.str.171 = private unnamed_addr constant [13 x i8] c"calibambient\00", align 1
@.str.172 = private unnamed_addr constant [13 x i8] c"%s_available\00", align 1
@.str.173 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.174 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.175 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.176 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.177 = private unnamed_addr constant [41 x i8] c"\013iio-core: could not register bus type\0A\00", align 1
@.str.178 = private unnamed_addr constant [48 x i8] c"\013iio-core: failed to allocate char dev region\0A\00", align 1
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author209, ptr @__UNIQUE_ID_description210, ptr @__UNIQUE_ID_file211, ptr @__UNIQUE_ID_license212, ptr @__exitcall_iio_exit, ptr @__initcall__kmod_industrialio__208_2062_iio_init4, ptr @__ksymtab___devm_iio_device_register, ptr @__ksymtab___iio_device_register, ptr @__ksymtab_devm_iio_device_alloc, ptr @__ksymtab_iio_bus_type, ptr @__ksymtab_iio_device_alloc, ptr @__ksymtab_iio_device_claim_direct_mode, ptr @__ksymtab_iio_device_free, ptr @__ksymtab_iio_device_get_clock, ptr @__ksymtab_iio_device_id, ptr @__ksymtab_iio_device_release_direct_mode, ptr @__ksymtab_iio_device_set_clock, ptr @__ksymtab_iio_device_unregister, ptr @__ksymtab_iio_enum_available_read, ptr @__ksymtab_iio_enum_read, ptr @__ksymtab_iio_enum_write, ptr @__ksymtab_iio_format_value, ptr @__ksymtab_iio_get_debugfs_dentry, ptr @__ksymtab_iio_get_time_ns, ptr @__ksymtab_iio_get_time_res, ptr @__ksymtab_iio_read_const_attr, ptr @__ksymtab_iio_read_mount_matrix, ptr @__ksymtab_iio_show_mount_matrix, ptr @__ksymtab_iio_str_to_fixpoint, ptr @iio_exit], section "llvm.metadata"
@switch.table.iio_show_timestamp_clock = private unnamed_addr constant [12 x ptr] [ptr @.str.131, ptr @.str.132, ptr @.str.131, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.131, ptr @.str.131, ptr @.str.131, ptr @.str.137], align 4
@switch.table.iio_show_timestamp_clock.179 = private unnamed_addr constant [12 x i32] [i32 10, i32 11, i32 10, i32 10, i32 15, i32 17, i32 18, i32 10, i32 10, i32 10, i32 10, i32 5], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @iio_device_id(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  ret i32 %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @iio_get_debugfs_dentry(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 23
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @iio_find_channel_from_si(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 14
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 13
  %8 = load ptr, ptr %7, align 8
  br label %9

9:                                                ; preds = %16, %6
  %10 = phi i32 [ 0, %6 ], [ %17, %16 ]
  %11 = getelementptr %struct.iio_chan_spec, ptr %8, i32 %10, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = getelementptr %struct.iio_chan_spec, ptr %8, i32 %10
  br label %19

16:                                               ; preds = %9
  %17 = add nuw nsw i32 %10, 1
  %18 = icmp eq i32 %17, %4
  br i1 %18, label %19, label %9

19:                                               ; preds = %16, %14, %2
  %20 = phi ptr [ %15, %14 ], [ null, %2 ], [ null, %16 ]
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_read_const_attr(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #3 {
  %4 = getelementptr i8, ptr %1, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef %5) #17
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_device_set_clock(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 5
  %6 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = icmp eq ptr %4, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = tail call zeroext i1 @iio_event_enabled(ptr noundef nonnull %4) #17
  br i1 %11, label %19, label %12

12:                                               ; preds = %10, %8
  %13 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 20
  store i32 %1, ptr %18, align 8
  br label %19

19:                                               ; preds = %17, %12, %10
  %20 = phi i32 [ 0, %17 ], [ -16, %12 ], [ -16, %10 ]
  tail call void @mutex_unlock(ptr noundef %5) #17
  br label %21

21:                                               ; preds = %19, %2
  %22 = phi i32 [ %6, %2 ], [ %20, %19 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iio_event_enabled(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @iio_device_get_clock(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 20
  %3 = load i32, ptr %2, align 8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @iio_get_time_ns(ptr nocapture noundef readonly %0) #3 {
  %2 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 20
  %4 = load i32, ptr %3, align 8
  switch i32 %4, label %28 [
    i32 0, label %5
    i32 1, label %7
    i32 4, label %9
    i32 5, label %11
    i32 6, label %13
    i32 7, label %24
    i32 11, label %26
  ]

5:                                                ; preds = %1
  %6 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #17
  br label %29

7:                                                ; preds = %1
  %8 = tail call i64 @ktime_get() #17
  br label %29

9:                                                ; preds = %1
  %10 = tail call i64 @ktime_get_raw() #17
  br label %29

11:                                               ; preds = %1
  %12 = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 0) #17
  br label %29

13:                                               ; preds = %1
  call void @ktime_get_coarse_ts64(ptr noundef nonnull %2) #17
  %14 = load i64, ptr %2, align 8
  %15 = icmp sgt i64 %14, 9223372035
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = icmp slt i64 %14, -9223372035
  br i1 %17, label %29, label %18

18:                                               ; preds = %16
  %19 = mul nsw i64 %14, 1000000000
  %20 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  %21 = load i32, ptr %20, align 8
  %22 = sext i32 %21 to i64
  %23 = add i64 %19, %22
  br label %29

24:                                               ; preds = %1
  %25 = tail call i64 @ktime_get_with_offset(i32 noundef 1) #17
  br label %29

26:                                               ; preds = %1
  %27 = tail call i64 @ktime_get_with_offset(i32 noundef 2) #17
  br label %29

28:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iio/industrialio-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 318, 0\0A.popsection", ""() #17, !srcloc !9
  unreachable

29:                                               ; preds = %26, %24, %18, %16, %13, %11, %9, %7, %5
  %30 = phi i64 [ %27, %26 ], [ %25, %24 ], [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ %23, %18 ], [ 9223372036854775807, %13 ], [ -9223372036854775808, %16 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  ret i64 %30
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_coarse_ts64(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_get_time_res(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 20
  %3 = load i32, ptr %2, align 8
  switch i32 %3, label %6 [
    i32 0, label %4
    i32 1, label %4
    i32 4, label %4
    i32 7, label %4
    i32 11, label %4
    i32 5, label %7
    i32 6, label %7
  ]

4:                                                ; preds = %1, %1, %1, %1, %1
  %5 = load i32, ptr @hrtimer_resolution, align 4
  br label %7

6:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iio/industrialio-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 341, 0\0A.popsection", ""() #17, !srcloc !10
  unreachable

7:                                                ; preds = %4, %1, %1
  %8 = phi i32 [ %5, %4 ], [ 10000000, %1 ], [ 10000000, %1 ]
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @iio_exit() #6 section ".exit.text" {
  %1 = load i32, ptr @iio_devt, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @unregister_chrdev_region(i32 noundef %1, i32 noundef 256) #17
  br label %4

4:                                                ; preds = %3, %0
  tail call void @bus_unregister(ptr noundef nonnull @iio_bus_type) #17
  %5 = load ptr, ptr @iio_debugfs_dentry, align 4
  tail call void @debugfs_remove(ptr noundef %5) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_enum_available_read(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture readnone %2, ptr noundef %3) #3 {
  %5 = inttoptr i32 %1 to ptr
  %6 = getelementptr inbounds %struct.iio_enum, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %21, %4
  %10 = phi i32 [ %22, %21 ], [ %7, %4 ]
  %11 = phi i32 [ %23, %21 ], [ 0, %4 ]
  %12 = phi i32 [ %24, %21 ], [ 0, %4 ]
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr ptr, ptr %13, i32 %12
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %9
  %18 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %3, i32 noundef %11, ptr noundef nonnull @.str.2, ptr noundef nonnull %15) #17
  %19 = add i32 %18, %11
  %20 = load i32, ptr %6, align 4
  br label %21

21:                                               ; preds = %17, %9
  %22 = phi i32 [ %20, %17 ], [ %10, %9 ]
  %23 = phi i32 [ %19, %17 ], [ %11, %9 ]
  %24 = add nuw i32 %12, 1
  %25 = icmp ult i32 %24, %22
  br i1 %25, label %9, label %26

26:                                               ; preds = %21
  %27 = add i32 %23, -1
  %28 = getelementptr i8, ptr %3, i32 %27
  store i8 10, ptr %28, align 1
  br label %29

29:                                               ; preds = %26, %4
  %30 = phi i32 [ %23, %26 ], [ 0, %4 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_enum_read(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #3 {
  %5 = inttoptr i32 %1 to ptr
  %6 = getelementptr inbounds %struct.iio_enum, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %4
  %10 = tail call i32 %7(ptr noundef %0, ptr noundef %2) #17
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.iio_enum, ptr %5, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %10, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr ptr, ptr %17, i32 %10
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull %19) #17
  br label %23

23:                                               ; preds = %21, %16, %12, %9, %4
  %24 = phi i32 [ %22, %21 ], [ -22, %4 ], [ %10, %9 ], [ -22, %16 ], [ -22, %12 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_enum_write(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #3 {
  %6 = inttoptr i32 %1 to ptr
  %7 = getelementptr inbounds %struct.iio_enum, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.iio_enum, ptr %6, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %22, %10
  %16 = phi i32 [ %23, %22 ], [ 0, %10 ]
  %17 = getelementptr ptr, ptr %11, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = tail call zeroext i1 @sysfs_streq(ptr noundef nonnull %18, ptr noundef %3) #17
  br i1 %21, label %25, label %22

22:                                               ; preds = %20, %15
  %23 = add nuw i32 %16, 1
  %24 = icmp eq i32 %23, %13
  br i1 %24, label %32, label %15

25:                                               ; preds = %20
  %26 = icmp slt i32 %16, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr %7, align 4
  %29 = tail call i32 %28(ptr noundef %0, ptr noundef %2, i32 noundef %16) #17
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 %4, i32 %29
  br label %32

32:                                               ; preds = %27, %25, %22, %10, %5
  %33 = phi i32 [ %31, %27 ], [ -22, %5 ], [ %16, %25 ], [ -22, %10 ], [ -22, %22 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_show_mount_matrix(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #3 {
  %5 = inttoptr i32 %1 to ptr
  %6 = tail call ptr %5(ptr noundef %0, ptr noundef %2) #17
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = ptrtoint ptr %6 to i32
  br label %31

10:                                               ; preds = %4
  %11 = icmp eq ptr %6, null
  %12 = select i1 %11, ptr @iio_mount_idmatrix, ptr %6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr [9 x ptr], ptr %12, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr [9 x ptr], ptr %12, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr [9 x ptr], ptr %12, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr [9 x ptr], ptr %12, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr [9 x ptr], ptr %12, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr [9 x ptr], ptr %12, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr [9 x ptr], ptr %12, i32 0, i32 7
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr [9 x ptr], ptr %12, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef %13, ptr noundef %15, ptr noundef %17, ptr noundef %19, ptr noundef %21, ptr noundef %23, ptr noundef %25, ptr noundef %27, ptr noundef %29) #17
  br label %31

31:                                               ; preds = %10, %8
  %32 = phi i32 [ %9, %8 ], [ %30, %10 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_read_mount_matrix(ptr noundef %0, ptr noundef %1) #3 {
  %3 = tail call i32 @device_property_read_string_array(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %1, i32 noundef 9) #17
  %4 = icmp eq i32 %3, 9
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = icmp sgt i32 %3, -1
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = icmp eq i32 %3, -22
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(36) @iio_mount_idmatrix, i32 36, i1 false) #17
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.19) #18
  br label %10

10:                                               ; preds = %9, %7, %5, %2
  %11 = phi i32 [ 0, %9 ], [ 0, %2 ], [ -22, %5 ], [ %3, %7 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_format_value(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #3 {
  %5 = tail call fastcc i32 @__iio_format_value(ptr noundef %0, i32 noundef 0, i32 noundef %1, i32 noundef %2, ptr noundef %3)
  %6 = icmp ugt i32 %5, 4094
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %0, i32 noundef %5, ptr noundef nonnull @.str.5) #17
  %9 = add i32 %8, %5
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi i32 [ %9, %7 ], [ -27, %4 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__iio_format_value(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #3 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store i32 0, ptr %7, align 4, !annotation !8
  switch i32 %2, label %107 [
    i32 1, label %10
    i32 4, label %13
    i32 2, label %14
    i32 3, label %26
    i32 10, label %37
    i32 11, label %56
    i32 5, label %8
    i32 12, label %94
    i32 6, label %98
  ]

8:                                                ; preds = %5
  %9 = icmp sgt i32 %3, 0
  br i1 %9, label %84, label %107

10:                                               ; preds = %5
  %11 = load i32, ptr %4, align 4
  %12 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.20, i32 noundef %11) #17
  br label %107

13:                                               ; preds = %5
  br label %14

14:                                               ; preds = %13, %5
  %15 = phi ptr [ @.str.23, %5 ], [ @.str.22, %13 ]
  %16 = getelementptr i32, ptr %4, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp slt i32 %17, 0
  %19 = load i32, ptr %4, align 4
  br i1 %18, label %20, label %24

20:                                               ; preds = %14
  %21 = tail call i32 @llvm.abs.i32(i32 %19, i1 false)
  %22 = sub i32 0, %17
  %23 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.21, i32 noundef %21, i32 noundef %22, ptr noundef nonnull %15) #17
  br label %107

24:                                               ; preds = %14
  %25 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.24, i32 noundef %19, i32 noundef %17, ptr noundef nonnull %15) #17
  br label %107

26:                                               ; preds = %5
  %27 = getelementptr i32, ptr %4, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp slt i32 %28, 0
  %30 = load i32, ptr %4, align 4
  br i1 %29, label %31, label %35

31:                                               ; preds = %26
  %32 = tail call i32 @llvm.abs.i32(i32 %30, i1 false)
  %33 = sub i32 0, %28
  %34 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.25, i32 noundef %32, i32 noundef %33) #17
  br label %107

35:                                               ; preds = %26
  %36 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.26, i32 noundef %30, i32 noundef %28) #17
  br label %107

37:                                               ; preds = %5
  %38 = load i32, ptr %4, align 4
  %39 = sext i32 %38 to i64
  %40 = mul nsw i64 %39, 1000000000
  %41 = getelementptr i32, ptr %4, i32 1
  %42 = load i32, ptr %41, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 0, ptr %6, align 4, !annotation !8
  %43 = call i64 @div_s64_rem(i64 noundef %40, i32 noundef %42, ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  %44 = load i32, ptr %41, align 4
  store i32 %44, ptr %7, align 4
  %45 = call i64 @div_s64_rem(i64 noundef %43, i32 noundef 1000000000, ptr noundef nonnull %7) #17
  %46 = trunc i64 %45 to i32
  %47 = icmp slt i64 %43, 0
  %48 = icmp eq i32 %46, 0
  %49 = select i1 %47, i1 %48, i1 false
  %50 = load i32, ptr %7, align 4
  %51 = call i32 @llvm.abs.i32(i32 %50, i1 false)
  br i1 %49, label %52, label %54

52:                                               ; preds = %37
  %53 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.27, i32 noundef %51) #17
  br label %107

54:                                               ; preds = %37
  %55 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.26, i32 noundef %46, i32 noundef %51) #17
  br label %107

56:                                               ; preds = %5
  %57 = load i32, ptr %4, align 4
  %58 = sext i32 %57 to i64
  %59 = mul nsw i64 %58, 1000000000
  %60 = getelementptr i32, ptr %4, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = icmp slt i32 %57, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = sub nsw i64 0, %59
  %65 = zext i32 %61 to i64
  %66 = ashr i64 %64, %65
  %67 = sub nsw i64 0, %66
  br label %71

68:                                               ; preds = %56
  %69 = zext i32 %61 to i64
  %70 = ashr i64 %59, %69
  br label %71

71:                                               ; preds = %68, %63
  %72 = phi i64 [ %67, %63 ], [ %70, %68 ]
  %73 = call i64 @div_s64_rem(i64 noundef %72, i32 noundef 1000000000, ptr noundef nonnull %7) #17
  %74 = trunc i64 %73 to i32
  %75 = icmp eq i32 %74, 0
  %76 = icmp slt i64 %72, 0
  %77 = and i1 %76, %75
  %78 = load i32, ptr %7, align 4
  %79 = call i32 @llvm.abs.i32(i32 %78, i1 false)
  br i1 %77, label %80, label %82

80:                                               ; preds = %71
  %81 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.27, i32 noundef %79) #17
  br label %107

82:                                               ; preds = %71
  %83 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.26, i32 noundef %74, i32 noundef %79) #17
  br label %107

84:                                               ; preds = %84, %8
  %85 = phi i32 [ %91, %84 ], [ 0, %8 ]
  %86 = phi i32 [ %92, %84 ], [ 0, %8 ]
  %87 = add i32 %85, %1
  %88 = getelementptr i32, ptr %4, i32 %86
  %89 = load i32, ptr %88, align 4
  %90 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %0, i32 noundef %87, ptr noundef nonnull @.str.28, i32 noundef %89) #17
  %91 = add i32 %90, %85
  %92 = add nuw nsw i32 %86, 1
  %93 = icmp eq i32 %92, %3
  br i1 %93, label %107, label %84

94:                                               ; preds = %5
  %95 = load i32, ptr %4, align 4
  %96 = and i32 %95, 255
  %97 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.29, i32 noundef %96) #17
  br label %107

98:                                               ; preds = %5
  %99 = getelementptr i32, ptr %4, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = zext i32 %100 to i64
  %102 = shl nuw i64 %101, 32
  %103 = load i32, ptr %4, align 4
  %104 = zext i32 %103 to i64
  %105 = or i64 %102, %104
  %106 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.30, i64 noundef %105) #17
  br label %107

107:                                              ; preds = %98, %94, %84, %82, %80, %54, %52, %35, %31, %24, %20, %10, %8, %5
  %108 = phi i32 [ %106, %98 ], [ %97, %94 ], [ %81, %80 ], [ %83, %82 ], [ %53, %52 ], [ %55, %54 ], [ %34, %31 ], [ %36, %35 ], [ %23, %20 ], [ %25, %24 ], [ %12, %10 ], [ 0, %5 ], [ 0, %8 ], [ %91, %84 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_str_to_fixpoint(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #3 {
  %5 = tail call fastcc i32 @__iio_str_to_fixpoint(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__iio_str_to_fixpoint(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, i1 noundef zeroext %4) unnamed_addr #3 {
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  store i32 0, ptr %3, align 4
  %8 = tail call i32 @kstrtoint(ptr noundef %0, i32 noundef 0, ptr noundef %2) #17
  br label %85

9:                                                ; preds = %5
  %10 = load i8, ptr %0, align 1
  %11 = icmp eq i8 %10, 45
  %12 = icmp eq i8 %10, 43
  %13 = or i1 %11, %12
  %14 = zext i1 %13 to i32
  %15 = getelementptr i8, ptr %0, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %74, label %18

18:                                               ; preds = %63, %9
  %19 = phi i8 [ %69, %63 ], [ %16, %9 ]
  %20 = phi i1 [ %67, %63 ], [ true, %9 ]
  %21 = phi i32 [ %66, %63 ], [ 0, %9 ]
  %22 = phi i32 [ %65, %63 ], [ 0, %9 ]
  %23 = phi ptr [ %68, %63 ], [ %15, %9 ]
  %24 = phi i32 [ %64, %63 ], [ %1, %9 ]
  br label %25

25:                                               ; preds = %51, %18
  %26 = phi i8 [ %19, %18 ], [ %54, %51 ]
  %27 = phi ptr [ %23, %18 ], [ %53, %51 ]
  %28 = add i8 %26, -48
  %29 = icmp ult i8 %28, 10
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = zext i8 %26 to i32
  br i1 %20, label %32, label %36

32:                                               ; preds = %30
  %33 = mul i32 %22, 10
  %34 = add nsw i32 %31, -48
  %35 = add i32 %34, %33
  br label %63

36:                                               ; preds = %30
  %37 = add nsw i32 %31, -48
  %38 = mul i32 %37, %24
  %39 = add i32 %38, %21
  %40 = sdiv i32 %24, 10
  br label %63

41:                                               ; preds = %25
  %42 = icmp eq i8 %26, 10
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  %44 = getelementptr i8, ptr %27, i32 1
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %71, label %85

47:                                               ; preds = %41
  %48 = tail call i32 @strncmp(ptr noundef %27, ptr noundef nonnull dereferenceable(4) @.str.22, i32 noundef 3)
  %49 = icmp eq i32 %48, 0
  %50 = and i1 %49, %4
  br i1 %50, label %51, label %56

51:                                               ; preds = %56, %47
  %52 = phi i32 [ 2, %56 ], [ 3, %47 ]
  %53 = getelementptr i8, ptr %27, i32 %52
  %54 = load i8, ptr %53, align 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %71, label %25

56:                                               ; preds = %47
  %57 = tail call i32 @strncmp(ptr noundef %27, ptr noundef nonnull dereferenceable(3) @.str.31, i32 noundef 2)
  %58 = icmp eq i32 %57, 0
  %59 = and i1 %58, %4
  br i1 %59, label %51, label %60

60:                                               ; preds = %56
  %61 = icmp eq i8 %26, 46
  %62 = and i1 %20, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %60, %36, %32
  %64 = phi i32 [ %24, %32 ], [ %40, %36 ], [ %24, %60 ]
  %65 = phi i32 [ %35, %32 ], [ %22, %36 ], [ %22, %60 ]
  %66 = phi i32 [ %21, %32 ], [ %39, %36 ], [ %21, %60 ]
  %67 = phi i1 [ true, %32 ], [ false, %36 ], [ false, %60 ]
  %68 = getelementptr i8, ptr %27, i32 1
  %69 = load i8, ptr %68, align 1
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %18

71:                                               ; preds = %63, %51, %43
  %72 = phi i32 [ %22, %43 ], [ %22, %51 ], [ %65, %63 ]
  %73 = phi i32 [ %21, %43 ], [ %21, %51 ], [ %66, %63 ]
  br i1 %11, label %75, label %82

74:                                               ; preds = %9
  br i1 %11, label %79, label %82

75:                                               ; preds = %71
  %76 = icmp eq i32 %72, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %75
  %78 = sub i32 0, %72
  br label %82

79:                                               ; preds = %75, %74
  %80 = phi i32 [ %73, %75 ], [ 0, %74 ]
  %81 = sub i32 0, %80
  br label %82

82:                                               ; preds = %79, %77, %74, %71
  %83 = phi i32 [ %78, %77 ], [ 0, %79 ], [ %72, %71 ], [ 0, %74 ]
  %84 = phi i32 [ %73, %77 ], [ %81, %79 ], [ %73, %71 ], [ 0, %74 ]
  store i32 %83, ptr %2, align 4
  store i32 %84, ptr %3, align 4
  br label %85

85:                                               ; preds = %82, %60, %43, %7
  %86 = phi i32 [ %8, %7 ], [ 0, %82 ], [ -22, %43 ], [ -22, %60 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__iio_add_chan_devattr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #3 {
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 40) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %163, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 19
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 1
  %17 = icmp ne i8 %16, 0
  %18 = icmp eq i32 %5, 0
  %19 = and i1 %18, %17
  %20 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %19, label %23, label %32

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr [45 x ptr], ptr @iio_modifier_names, i32 0, i32 %25
  %27 = load ptr, ptr %26, align 4
  br i1 %22, label %30, label %28

28:                                               ; preds = %23
  %29 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.32, ptr noundef %27, ptr noundef nonnull %21, ptr noundef %0) #17
  br label %39

30:                                               ; preds = %23
  %31 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.33, ptr noundef %27, ptr noundef %0) #17
  br label %39

32:                                               ; preds = %13
  %33 = icmp ne i32 %5, 0
  %34 = or i1 %33, %22
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = tail call noalias ptr @kstrdup(ptr noundef %0, i32 noundef 3264) #17
  br label %39

37:                                               ; preds = %32
  %38 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.33, ptr noundef nonnull %21, ptr noundef %0) #17
  br label %39

39:                                               ; preds = %37, %35, %30, %28
  %40 = phi ptr [ %29, %28 ], [ %31, %30 ], [ %36, %35 ], [ %38, %37 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %161, label %42

42:                                               ; preds = %39
  %43 = load i8, ptr %14, align 4
  %44 = and i8 %43, 8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %84, label %46

46:                                               ; preds = %42
  switch i32 %5, label %158 [
    i32 3, label %47
    i32 2, label %49
    i32 1, label %56
    i32 0, label %66
  ]

47:                                               ; preds = %46
  %48 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.34, ptr noundef nonnull %40) #17
  br label %121

49:                                               ; preds = %46
  %50 = lshr i8 %43, 2
  %51 = and i8 %50, 1
  %52 = zext i8 %51 to i32
  %53 = getelementptr [2 x ptr], ptr @iio_direction, i32 0, i32 %52
  %54 = load ptr, ptr %53, align 4
  %55 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.33, ptr noundef %54, ptr noundef nonnull %40) #17
  br label %121

56:                                               ; preds = %46
  %57 = lshr i8 %43, 2
  %58 = and i8 %57, 1
  %59 = zext i8 %58 to i32
  %60 = getelementptr [2 x ptr], ptr @iio_direction, i32 0, i32 %59
  %61 = load ptr, ptr %60, align 4
  %62 = load i32, ptr %1, align 4
  %63 = getelementptr [35 x ptr], ptr @iio_chan_type_name_spec, i32 0, i32 %62
  %64 = load ptr, ptr %63, align 4
  %65 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.35, ptr noundef %61, ptr noundef %64, ptr noundef %64, ptr noundef nonnull %40) #17
  br label %121

66:                                               ; preds = %46
  %67 = and i8 %43, 2
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 1064, i32 noundef 9, ptr noundef nonnull @.str.37) #17
  br label %158

70:                                               ; preds = %66
  %71 = lshr i8 %43, 2
  %72 = and i8 %71, 1
  %73 = zext i8 %72 to i32
  %74 = getelementptr [2 x ptr], ptr @iio_direction, i32 0, i32 %73
  %75 = load ptr, ptr %74, align 4
  %76 = load i32, ptr %1, align 4
  %77 = getelementptr [35 x ptr], ptr @iio_chan_type_name_spec, i32 0, i32 %76
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.38, ptr noundef %75, ptr noundef %78, i32 noundef %80, ptr noundef %78, i32 noundef %82, ptr noundef nonnull %40) #17
  br label %121

84:                                               ; preds = %42
  switch i32 %5, label %158 [
    i32 3, label %85
    i32 2, label %87
    i32 1, label %94
    i32 0, label %104
  ]

85:                                               ; preds = %84
  %86 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.34, ptr noundef nonnull %40) #17
  br label %121

87:                                               ; preds = %84
  %88 = lshr i8 %43, 2
  %89 = and i8 %88, 1
  %90 = zext i8 %89 to i32
  %91 = getelementptr [2 x ptr], ptr @iio_direction, i32 0, i32 %90
  %92 = load ptr, ptr %91, align 4
  %93 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.33, ptr noundef %92, ptr noundef nonnull %40) #17
  br label %121

94:                                               ; preds = %84
  %95 = lshr i8 %43, 2
  %96 = and i8 %95, 1
  %97 = zext i8 %96 to i32
  %98 = getelementptr [2 x ptr], ptr @iio_direction, i32 0, i32 %97
  %99 = load ptr, ptr %98, align 4
  %100 = load i32, ptr %1, align 4
  %101 = getelementptr [35 x ptr], ptr @iio_chan_type_name_spec, i32 0, i32 %100
  %102 = load ptr, ptr %101, align 4
  %103 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.32, ptr noundef %99, ptr noundef %102, ptr noundef nonnull %40) #17
  br label %121

104:                                              ; preds = %84
  %105 = and i8 %43, 2
  %106 = icmp eq i8 %105, 0
  %107 = lshr i8 %43, 2
  %108 = and i8 %107, 1
  %109 = zext i8 %108 to i32
  %110 = getelementptr [2 x ptr], ptr @iio_direction, i32 0, i32 %109
  %111 = load ptr, ptr %110, align 4
  %112 = load i32, ptr %1, align 4
  %113 = getelementptr [35 x ptr], ptr @iio_chan_type_name_spec, i32 0, i32 %112
  %114 = load ptr, ptr %113, align 4
  br i1 %106, label %119, label %115

115:                                              ; preds = %104
  %116 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.39, ptr noundef %111, ptr noundef %114, i32 noundef %117, ptr noundef nonnull %40) #17
  br label %121

119:                                              ; preds = %104
  %120 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.32, ptr noundef %111, ptr noundef %114, ptr noundef nonnull %40) #17
  br label %121

121:                                              ; preds = %119, %115, %94, %87, %85, %70, %56, %49, %47
  %122 = phi ptr [ %83, %70 ], [ %65, %56 ], [ %55, %49 ], [ %48, %47 ], [ %118, %115 ], [ %120, %119 ], [ %103, %94 ], [ %93, %87 ], [ %86, %85 ]
  %123 = icmp eq ptr %122, null
  br i1 %123, label %158, label %124

124:                                              ; preds = %121
  store ptr %122, ptr %11, align 8
  %125 = icmp eq ptr %2, null
  br i1 %125, label %131, label %126

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.attribute, ptr %11, i32 0, i32 1
  %128 = load i16, ptr %127, align 4
  %129 = or i16 %128, 292
  store i16 %129, ptr %127, align 4
  %130 = getelementptr inbounds %struct.device_attribute, ptr %11, i32 0, i32 1
  store ptr %2, ptr %130, align 8
  br label %131

131:                                              ; preds = %126, %124
  %132 = icmp eq ptr %3, null
  br i1 %132, label %138, label %133

133:                                              ; preds = %131
  %134 = getelementptr inbounds %struct.attribute, ptr %11, i32 0, i32 1
  %135 = load i16, ptr %134, align 4
  %136 = or i16 %135, 128
  store i16 %136, ptr %134, align 4
  %137 = getelementptr inbounds %struct.device_attribute, ptr %11, i32 0, i32 2
  store ptr %3, ptr %137, align 4
  br label %138

138:                                              ; preds = %133, %131
  tail call void @kfree(ptr noundef nonnull %40) #17
  %139 = getelementptr inbounds %struct.iio_dev_attr, ptr %11, i32 0, i32 3
  store ptr %1, ptr %139, align 8
  %140 = getelementptr inbounds %struct.iio_dev_attr, ptr %11, i32 0, i32 1
  store i64 %4, ptr %140, align 8
  %141 = getelementptr inbounds %struct.iio_dev_attr, ptr %11, i32 0, i32 4
  store ptr %7, ptr %141, align 4
  br label %142

142:                                              ; preds = %146, %138
  %143 = phi ptr [ %8, %138 ], [ %144, %146 ]
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, %8
  br i1 %145, label %153, label %146

146:                                              ; preds = %142
  %147 = getelementptr i8, ptr %144, i32 -24
  %148 = load ptr, ptr %147, align 8
  %149 = tail call i32 @strcmp(ptr noundef %148, ptr noundef nonnull %122)
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %142

151:                                              ; preds = %146
  br i1 %18, label %152, label %158

152:                                              ; preds = %151
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef %148) #18
  br label %158

153:                                              ; preds = %142
  %154 = getelementptr inbounds %struct.iio_dev_attr, ptr %11, i32 0, i32 2
  %155 = load ptr, ptr %8, align 4
  %156 = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  store ptr %154, ptr %156, align 4
  store ptr %155, ptr %154, align 8
  %157 = getelementptr inbounds %struct.iio_dev_attr, ptr %11, i32 0, i32 2, i32 1
  store ptr %8, ptr %157, align 4
  store volatile ptr %154, ptr %8, align 4
  br label %163

158:                                              ; preds = %152, %151, %121, %84, %69, %46
  %159 = phi ptr [ %40, %69 ], [ %40, %121 ], [ %40, %46 ], [ %40, %84 ], [ %122, %152 ], [ %122, %151 ]
  %160 = phi i32 [ -22, %69 ], [ -12, %121 ], [ -12, %46 ], [ -12, %84 ], [ -16, %152 ], [ -16, %151 ]
  tail call void @kfree(ptr noundef nonnull %159) #17
  br label %161

161:                                              ; preds = %158, %39
  %162 = phi i32 [ -12, %39 ], [ %160, %158 ]
  tail call void @kfree(ptr noundef nonnull %11) #17
  br label %163

163:                                              ; preds = %161, %153, %9
  %164 = phi i32 [ %162, %161 ], [ 0, %153 ], [ -12, %9 ]
  ret i32 %164
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iio_free_chan_devattr_list(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %14, label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %6 = getelementptr i8, ptr %5, i32 -24
  %7 = load ptr, ptr %5, align 8
  %8 = load ptr, ptr %6, align 8
  tail call void @kfree_const(ptr noundef %8) #17
  %9 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  tail call void @kfree(ptr noundef %6) #17
  %13 = icmp eq ptr %7, %0
  br i1 %13, label %14, label %4

14:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_device_register_sysfs_group(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 14
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %6, 2
  %8 = add i32 %7, 8
  %9 = tail call noalias ptr @krealloc(ptr noundef %4, i32 noundef %8, i32 noundef 3264) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i32, ptr %5, align 8
  %13 = add i32 %12, 1
  store i32 %13, ptr %5, align 8
  %14 = getelementptr ptr, ptr %9, i32 %12
  store ptr %1, ptr %14, align 4
  %15 = getelementptr ptr, ptr %9, i32 %13
  store ptr null, ptr %15, align 4
  store ptr %9, ptr %3, align 4
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi i32 [ 0, %11 ], [ -12, %2 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iio_dev_release(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @iio_device_unregister_trigger_consumer(ptr noundef %2) #17
  br label %7

7:                                                ; preds = %6, %1
  tail call void @iio_device_unregister_eventset(ptr noundef %2) #17
  %8 = getelementptr i8, ptr %0, i32 616
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %21, label %11

11:                                               ; preds = %11, %7
  %12 = phi ptr [ %14, %11 ], [ %9, %7 ]
  %13 = getelementptr i8, ptr %12, i32 -24
  %14 = load ptr, ptr %12, align 8
  %15 = load ptr, ptr %13, align 8
  tail call void @kfree_const(ptr noundef %15) #17
  %16 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %12, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  tail call void @kfree(ptr noundef %13) #17
  %20 = icmp eq ptr %14, %8
  br i1 %20, label %21, label %11

21:                                               ; preds = %11, %7
  %22 = getelementptr i8, ptr %0, i32 636
  %23 = load ptr, ptr %22, align 4
  tail call void @kfree(ptr noundef %23) #17
  store ptr null, ptr %22, align 4
  %24 = getelementptr i8, ptr %0, i32 652
  %25 = load ptr, ptr %24, align 4
  tail call void @kfree(ptr noundef %25) #17
  store ptr null, ptr %24, align 4
  tail call void @iio_device_detach_buffers(ptr noundef %2) #17
  %26 = getelementptr i8, ptr %0, i32 560
  %27 = load i32, ptr %26, align 8
  tail call void @ida_free(ptr noundef nonnull @iio_ida, i32 noundef %27) #17
  tail call void @kfree(ptr noundef %2) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @iio_device_alloc(ptr noundef %0, i32 noundef %1) #3 {
  %3 = icmp eq i32 %1, 0
  %4 = add i32 %1, 832
  %5 = select i1 %3, i32 824, i32 %4
  %6 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %6, i32 832
  %10 = getelementptr inbounds %struct.iio_dev, ptr %6, i32 0, i32 19
  store ptr %9, ptr %10, align 16
  %11 = getelementptr inbounds %struct.iio_dev, ptr %6, i32 0, i32 2
  %12 = getelementptr inbounds %struct.iio_dev, ptr %6, i32 0, i32 2, i32 1
  store ptr %0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.iio_dev, ptr %6, i32 0, i32 2, i32 4
  store ptr @iio_device_type, ptr %13, align 8
  %14 = getelementptr inbounds %struct.iio_dev, ptr %6, i32 0, i32 2, i32 5
  store ptr @iio_bus_type, ptr %14, align 4
  tail call void @device_initialize(ptr noundef %11) #17
  %15 = getelementptr inbounds %struct.iio_dev, ptr %6, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %15, ptr noundef nonnull @.str.8, ptr noundef nonnull @iio_device_alloc.__key) #17
  %16 = getelementptr inbounds %struct.iio_dev_opaque, ptr %6, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %16, ptr noundef nonnull @.str.10, ptr noundef nonnull @iio_device_alloc.__key.9) #17
  %17 = getelementptr inbounds %struct.iio_dev_opaque, ptr %6, i32 0, i32 10
  store volatile ptr %17, ptr %17, align 16
  %18 = getelementptr inbounds %struct.iio_dev_opaque, ptr %6, i32 0, i32 10, i32 1
  store ptr %17, ptr %18, align 4
  %19 = tail call i32 @ida_alloc_range(ptr noundef nonnull @iio_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #17
  %20 = getelementptr inbounds %struct.iio_dev_opaque, ptr %6, i32 0, i32 1
  store i32 %19, ptr %20, align 8
  %21 = icmp slt i32 %19, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %8
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #18
  tail call void @kfree(ptr noundef nonnull %6) #17
  br label %34

24:                                               ; preds = %8
  %25 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %11, ptr noundef nonnull @.str.12, i32 noundef %19) #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %20, align 8
  tail call void @ida_free(ptr noundef nonnull @iio_ida, i32 noundef %28) #17
  tail call void @kfree(ptr noundef nonnull %6) #17
  br label %34

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.iio_dev_opaque, ptr %6, i32 0, i32 9
  store volatile ptr %30, ptr %30, align 8
  %31 = getelementptr inbounds %struct.iio_dev_opaque, ptr %6, i32 0, i32 9, i32 1
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.iio_dev_opaque, ptr %6, i32 0, i32 12
  store volatile ptr %32, ptr %32, align 4
  %33 = getelementptr inbounds %struct.iio_dev_opaque, ptr %6, i32 0, i32 12, i32 1
  store ptr %32, ptr %33, align 16
  br label %34

34:                                               ; preds = %29, %27, %22, %2
  %35 = phi ptr [ null, %22 ], [ null, %27 ], [ %6, %29 ], [ null, %2 ]
  ret ptr %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iio_device_free(ptr noundef %0) #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  tail call void @put_device(ptr noundef %4) #17
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_iio_device_alloc(ptr noundef %0, i32 noundef %1) #3 {
  %3 = tail call ptr @iio_device_alloc(ptr noundef %0, i32 noundef %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_iio_device_release, ptr noundef nonnull %3) #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 2
  tail call void @put_device(ptr noundef %9) #17
  br label %10

10:                                               ; preds = %8, %5, %2
  %11 = phi ptr [ null, %2 ], [ %3, %5 ], [ null, %8 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_iio_device_release(ptr noundef %0) #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  tail call void @put_device(ptr noundef %4) #17
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iio_device_ioctl_handler_register(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 12
  %4 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 12, i32 1
  %5 = load ptr, ptr %4, align 4
  store ptr %1, ptr %4, align 4
  store ptr %3, ptr %1, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  store volatile ptr %1, ptr %5, align 4
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iio_device_ioctl_handler_unregister(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  store volatile ptr %4, ptr %3, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__iio_device_register(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %517, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 2
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  %9 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 25
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %9, align 8
  br label %19

19:                                               ; preds = %16, %12, %6
  %20 = phi ptr [ %18, %16 ], [ null, %12 ], [ %10, %6 ]
  %21 = tail call ptr @of_get_property(ptr noundef %20, ptr noundef nonnull @.str.13, ptr noundef null) #17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 16
  store ptr %21, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 13
  %27 = load ptr, ptr %26, align 8
  %28 = load i32, ptr %0, align 8
  %29 = and i32 %28, 14
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %53, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 14
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, -1
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %49, %31
  %37 = phi i32 [ %50, %49 ], [ 0, %31 ]
  %38 = getelementptr %struct.iio_chan_spec, ptr %27, i32 %37, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %45, %36
  %42 = phi i32 [ %43, %45 ], [ %37, %36 ]
  %43 = add nuw nsw i32 %42, 1
  %44 = icmp slt i32 %43, %33
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr %struct.iio_chan_spec, ptr %27, i32 %43, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %39, %47
  br i1 %48, label %52, label %41

49:                                               ; preds = %41, %36
  %50 = add nuw nsw i32 %37, 1
  %51 = icmp eq i32 %50, %34
  br i1 %51, label %53, label %36

52:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.121, i32 noundef %39) #18
  br label %517

53:                                               ; preds = %49, %31, %25
  %54 = load ptr, ptr %3, align 8
  %55 = getelementptr inbounds %struct.iio_info, ptr %54, i32 0, i32 6
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %71, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 14
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %71, label %65

62:                                               ; preds = %65
  %63 = add nuw i32 %66, 1
  %64 = icmp eq i32 %63, %60
  br i1 %64, label %71, label %65

65:                                               ; preds = %62, %58
  %66 = phi i32 [ %63, %62 ], [ 0, %58 ]
  %67 = getelementptr %struct.iio_chan_spec, ptr %27, i32 %66, i32 17
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %62, label %70

70:                                               ; preds = %65
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.122) #18
  br label %517

71:                                               ; preds = %62, %58, %53
  %72 = getelementptr inbounds %struct.iio_info, ptr %54, i32 0, i32 14
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  %75 = load ptr, ptr @iio_debugfs_dentry, align 4
  %76 = icmp eq ptr %75, null
  %77 = select i1 %74, i1 true, i1 %76
  br i1 %77, label %89, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load ptr, ptr %8, align 4
  br label %84

84:                                               ; preds = %82, %78
  %85 = phi ptr [ %83, %82 ], [ %80, %78 ]
  %86 = tail call ptr @debugfs_create_dir(ptr noundef %85, ptr noundef nonnull %75) #17
  %87 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 23
  store ptr %86, ptr %87, align 4
  %88 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.123, i16 noundef zeroext 420, ptr noundef %86, ptr noundef %0, ptr noundef nonnull @iio_debugfs_reg_fops) #17
  br label %89

89:                                               ; preds = %84, %71
  %90 = tail call i32 @iio_buffers_alloc_sysfs_and_mask(ptr noundef %0) #17
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 1
  %94 = load ptr, ptr %93, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.14) #18
  br label %513

95:                                               ; preds = %89
  %96 = load ptr, ptr %3, align 8
  %97 = getelementptr inbounds %struct.iio_info, ptr %96, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %112, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.attribute_group, ptr %98, i32 0, i32 3
  %102 = load ptr, ptr %101, align 4
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %112, label %105

105:                                              ; preds = %105, %100
  %106 = phi ptr [ %108, %105 ], [ %102, %100 ]
  %107 = phi i32 [ %109, %105 ], [ 0, %100 ]
  %108 = getelementptr ptr, ptr %106, i32 1
  %109 = add i32 %107, 1
  %110 = load ptr, ptr %108, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %105

112:                                              ; preds = %105, %100, %95
  %113 = phi i32 [ 0, %95 ], [ 0, %100 ], [ %109, %105 ]
  %114 = load ptr, ptr %26, align 8
  %115 = icmp eq ptr %114, null
  br i1 %115, label %320, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 14
  %118 = load i32, ptr %117, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %320

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 10
  br label %122

122:                                              ; preds = %318, %120
  %123 = phi i32 [ %118, %120 ], [ %314, %318 ]
  %124 = phi ptr [ %114, %120 ], [ %319, %318 ]
  %125 = phi i32 [ 0, %120 ], [ %316, %318 ]
  %126 = phi ptr [ null, %120 ], [ %131, %318 ]
  %127 = phi i32 [ %113, %120 ], [ %315, %318 ]
  %128 = getelementptr %struct.iio_chan_spec, ptr %124, i32 %125
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 13
  %131 = select i1 %130, ptr @dev_attr_current_timestamp_clock, ptr %126
  %132 = getelementptr %struct.iio_chan_spec, ptr %124, i32 %125, i32 1
  %133 = load i32, ptr %132, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %313, label %135

135:                                              ; preds = %122
  %136 = getelementptr %struct.iio_chan_spec, ptr %124, i32 %125, i32 6
  %137 = tail call i32 @_find_next_bit_le(ptr noundef %136, i32 noundef 32, i32 noundef 0) #17
  %138 = icmp ult i32 %137, 32
  br i1 %138, label %139, label %156

139:                                              ; preds = %149, %135
  %140 = phi i32 [ %150, %149 ], [ 0, %135 ]
  %141 = phi i32 [ %152, %149 ], [ %137, %135 ]
  %142 = icmp ugt i32 %141, 27
  br i1 %142, label %415, label %143

143:                                              ; preds = %139
  %144 = getelementptr [28 x ptr], ptr @iio_chan_info_postfix, i32 0, i32 %141
  %145 = load ptr, ptr %144, align 4
  %146 = zext i32 %141 to i64
  %147 = tail call i32 @__iio_add_chan_devattr(ptr noundef %145, ptr noundef %128, ptr noundef nonnull @iio_read_channel_info, ptr noundef nonnull @iio_write_channel_info, i64 noundef %146, i32 noundef 0, ptr noundef %8, ptr noundef null, ptr noundef %121) #17
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %415, label %149

149:                                              ; preds = %143
  %150 = add i32 %140, 1
  %151 = add nuw nsw i32 %141, 1
  %152 = tail call i32 @_find_next_bit_le(ptr noundef %136, i32 noundef 32, i32 noundef %151) #17
  %153 = icmp ult i32 %152, 32
  br i1 %153, label %139, label %154

154:                                              ; preds = %149
  %155 = icmp slt i32 %150, 0
  br i1 %155, label %415, label %156

156:                                              ; preds = %154, %135
  %157 = phi i32 [ %150, %154 ], [ 0, %135 ]
  %158 = getelementptr %struct.iio_chan_spec, ptr %124, i32 %125, i32 7
  %159 = tail call fastcc i32 @iio_device_add_info_mask_type_avail(ptr noundef %0, ptr noundef %128, i32 noundef 0, ptr noundef %158) #17
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %415, label %161

161:                                              ; preds = %156
  %162 = getelementptr %struct.iio_chan_spec, ptr %124, i32 %125, i32 8
  %163 = tail call i32 @_find_next_bit_le(ptr noundef %162, i32 noundef 32, i32 noundef 0) #17
  %164 = icmp ult i32 %163, 32
  br i1 %164, label %165, label %186

165:                                              ; preds = %179, %161
  %166 = phi i32 [ %180, %179 ], [ 0, %161 ]
  %167 = phi i32 [ %182, %179 ], [ %163, %161 ]
  %168 = icmp ugt i32 %167, 27
  br i1 %168, label %415, label %169

169:                                              ; preds = %165
  %170 = getelementptr [28 x ptr], ptr @iio_chan_info_postfix, i32 0, i32 %167
  %171 = load ptr, ptr %170, align 4
  %172 = zext i32 %167 to i64
  %173 = tail call i32 @__iio_add_chan_devattr(ptr noundef %171, ptr noundef %128, ptr noundef nonnull @iio_read_channel_info, ptr noundef nonnull @iio_write_channel_info, i64 noundef %172, i32 noundef 1, ptr noundef %8, ptr noundef null, ptr noundef %121) #17
  %174 = icmp eq i32 %173, -16
  br i1 %174, label %179, label %175

175:                                              ; preds = %169
  %176 = icmp slt i32 %173, 0
  br i1 %176, label %415, label %177

177:                                              ; preds = %175
  %178 = add i32 %166, 1
  br label %179

179:                                              ; preds = %177, %169
  %180 = phi i32 [ %166, %169 ], [ %178, %177 ]
  %181 = add nuw nsw i32 %167, 1
  %182 = tail call i32 @_find_next_bit_le(ptr noundef %162, i32 noundef 32, i32 noundef %181) #17
  %183 = icmp ult i32 %182, 32
  br i1 %183, label %165, label %184

184:                                              ; preds = %179
  %185 = icmp slt i32 %180, 0
  br i1 %185, label %415, label %186

186:                                              ; preds = %184, %161
  %187 = phi i32 [ %180, %184 ], [ 0, %161 ]
  %188 = getelementptr %struct.iio_chan_spec, ptr %124, i32 %125, i32 9
  %189 = tail call fastcc i32 @iio_device_add_info_mask_type_avail(ptr noundef %0, ptr noundef %128, i32 noundef 1, ptr noundef %188) #17
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %415, label %191

191:                                              ; preds = %186
  %192 = getelementptr %struct.iio_chan_spec, ptr %124, i32 %125, i32 10
  %193 = tail call i32 @_find_next_bit_le(ptr noundef %192, i32 noundef 32, i32 noundef 0) #17
  %194 = icmp ult i32 %193, 32
  br i1 %194, label %195, label %216

195:                                              ; preds = %209, %191
  %196 = phi i32 [ %210, %209 ], [ 0, %191 ]
  %197 = phi i32 [ %212, %209 ], [ %193, %191 ]
  %198 = icmp ugt i32 %197, 27
  br i1 %198, label %415, label %199

199:                                              ; preds = %195
  %200 = getelementptr [28 x ptr], ptr @iio_chan_info_postfix, i32 0, i32 %197
  %201 = load ptr, ptr %200, align 4
  %202 = zext i32 %197 to i64
  %203 = tail call i32 @__iio_add_chan_devattr(ptr noundef %201, ptr noundef %128, ptr noundef nonnull @iio_read_channel_info, ptr noundef nonnull @iio_write_channel_info, i64 noundef %202, i32 noundef 2, ptr noundef %8, ptr noundef null, ptr noundef %121) #17
  %204 = icmp eq i32 %203, -16
  br i1 %204, label %209, label %205

205:                                              ; preds = %199
  %206 = icmp slt i32 %203, 0
  br i1 %206, label %415, label %207

207:                                              ; preds = %205
  %208 = add i32 %196, 1
  br label %209

209:                                              ; preds = %207, %199
  %210 = phi i32 [ %196, %199 ], [ %208, %207 ]
  %211 = add nuw nsw i32 %197, 1
  %212 = tail call i32 @_find_next_bit_le(ptr noundef %192, i32 noundef 32, i32 noundef %211) #17
  %213 = icmp ult i32 %212, 32
  br i1 %213, label %195, label %214

214:                                              ; preds = %209
  %215 = icmp slt i32 %210, 0
  br i1 %215, label %415, label %216

216:                                              ; preds = %214, %191
  %217 = phi i32 [ %210, %214 ], [ 0, %191 ]
  %218 = getelementptr %struct.iio_chan_spec, ptr %124, i32 %125, i32 11
  %219 = tail call fastcc i32 @iio_device_add_info_mask_type_avail(ptr noundef %0, ptr noundef %128, i32 noundef 2, ptr noundef %218) #17
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %415, label %221

221:                                              ; preds = %216
  %222 = getelementptr %struct.iio_chan_spec, ptr %124, i32 %125, i32 12
  %223 = tail call i32 @_find_next_bit_le(ptr noundef %222, i32 noundef 32, i32 noundef 0) #17
  %224 = icmp ult i32 %223, 32
  br i1 %224, label %225, label %246

225:                                              ; preds = %239, %221
  %226 = phi i32 [ %240, %239 ], [ 0, %221 ]
  %227 = phi i32 [ %242, %239 ], [ %223, %221 ]
  %228 = icmp ugt i32 %227, 27
  br i1 %228, label %415, label %229

229:                                              ; preds = %225
  %230 = getelementptr [28 x ptr], ptr @iio_chan_info_postfix, i32 0, i32 %227
  %231 = load ptr, ptr %230, align 4
  %232 = zext i32 %227 to i64
  %233 = tail call i32 @__iio_add_chan_devattr(ptr noundef %231, ptr noundef %128, ptr noundef nonnull @iio_read_channel_info, ptr noundef nonnull @iio_write_channel_info, i64 noundef %232, i32 noundef 3, ptr noundef %8, ptr noundef null, ptr noundef %121) #17
  %234 = icmp eq i32 %233, -16
  br i1 %234, label %239, label %235

235:                                              ; preds = %229
  %236 = icmp slt i32 %233, 0
  br i1 %236, label %415, label %237

237:                                              ; preds = %235
  %238 = add i32 %226, 1
  br label %239

239:                                              ; preds = %237, %229
  %240 = phi i32 [ %226, %229 ], [ %238, %237 ]
  %241 = add nuw nsw i32 %227, 1
  %242 = tail call i32 @_find_next_bit_le(ptr noundef %222, i32 noundef 32, i32 noundef %241) #17
  %243 = icmp ult i32 %242, 32
  br i1 %243, label %225, label %244

244:                                              ; preds = %239
  %245 = icmp slt i32 %240, 0
  br i1 %245, label %415, label %246

246:                                              ; preds = %244, %221
  %247 = phi i32 [ %240, %244 ], [ 0, %221 ]
  %248 = getelementptr %struct.iio_chan_spec, ptr %124, i32 %125, i32 13
  %249 = tail call fastcc i32 @iio_device_add_info_mask_type_avail(ptr noundef %0, ptr noundef %128, i32 noundef 3, ptr noundef %248) #17
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %415, label %251

251:                                              ; preds = %246
  %252 = load ptr, ptr %3, align 8
  %253 = getelementptr inbounds %struct.iio_info, ptr %252, i32 0, i32 6
  %254 = load ptr, ptr %253, align 4
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %260

256:                                              ; preds = %251
  %257 = getelementptr %struct.iio_chan_spec, ptr %124, i32 %125, i32 17
  %258 = load ptr, ptr %257, align 4
  %259 = icmp eq ptr %258, null
  br i1 %259, label %263, label %260

260:                                              ; preds = %256, %251
  %261 = tail call i32 @__iio_add_chan_devattr(ptr noundef nonnull @.str.13, ptr noundef %128, ptr noundef nonnull @iio_read_channel_label, ptr noundef null, i64 noundef 0, i32 noundef 0, ptr noundef %8, ptr noundef null, ptr noundef %121) #17
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %415, label %263

263:                                              ; preds = %260, %256
  %264 = phi i32 [ 1, %260 ], [ 0, %256 ]
  %265 = add i32 %159, %157
  %266 = add i32 %265, %187
  %267 = add i32 %266, %189
  %268 = add i32 %267, %217
  %269 = add i32 %268, %219
  %270 = add i32 %269, %247
  %271 = add i32 %270, %249
  %272 = add i32 %271, %264
  %273 = getelementptr %struct.iio_chan_spec, ptr %124, i32 %125, i32 16
  %274 = load ptr, ptr %273, align 4
  %275 = icmp eq ptr %274, null
  br i1 %275, label %307, label %276

276:                                              ; preds = %263
  %277 = load ptr, ptr %274, align 4
  %278 = icmp eq ptr %277, null
  br i1 %278, label %307, label %279

279:                                              ; preds = %302, %276
  %280 = phi ptr [ %305, %302 ], [ %277, %276 ]
  %281 = phi i32 [ %296, %302 ], [ 0, %276 ]
  %282 = phi ptr [ %304, %302 ], [ %274, %276 ]
  %283 = phi i32 [ %303, %302 ], [ %272, %276 ]
  %284 = getelementptr inbounds %struct.iio_chan_spec_ext_info, ptr %282, i32 0, i32 2
  %285 = load ptr, ptr %284, align 4
  %286 = icmp eq ptr %285, null
  %287 = select i1 %286, ptr null, ptr @iio_read_channel_ext_info
  %288 = getelementptr inbounds %struct.iio_chan_spec_ext_info, ptr %282, i32 0, i32 3
  %289 = load ptr, ptr %288, align 4
  %290 = icmp eq ptr %289, null
  %291 = select i1 %290, ptr null, ptr @iio_write_channel_ext_info
  %292 = zext i32 %281 to i64
  %293 = getelementptr inbounds %struct.iio_chan_spec_ext_info, ptr %282, i32 0, i32 1
  %294 = load i32, ptr %293, align 4
  %295 = tail call i32 @__iio_add_chan_devattr(ptr noundef nonnull %280, ptr noundef %128, ptr noundef %287, ptr noundef %291, i64 noundef %292, i32 noundef %294, ptr noundef %8, ptr noundef null, ptr noundef %121) #17
  %296 = add i32 %281, 1
  switch i32 %295, label %307 [
    i32 -16, label %297
    i32 0, label %300
  ]

297:                                              ; preds = %279
  %298 = load i32, ptr %293, align 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %415, label %302

300:                                              ; preds = %279
  %301 = add i32 %283, 1
  br label %302

302:                                              ; preds = %300, %297
  %303 = phi i32 [ %283, %297 ], [ %301, %300 ]
  %304 = getelementptr %struct.iio_chan_spec_ext_info, ptr %282, i32 1
  %305 = load ptr, ptr %304, align 4
  %306 = icmp eq ptr %305, null
  br i1 %306, label %307, label %279

307:                                              ; preds = %302, %279, %276, %263
  %308 = phi i32 [ %272, %263 ], [ %272, %276 ], [ %303, %302 ], [ %295, %279 ]
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %415, label %310

310:                                              ; preds = %307
  %311 = add i32 %308, %127
  %312 = load i32, ptr %117, align 4
  br label %313

313:                                              ; preds = %310, %122
  %314 = phi i32 [ %312, %310 ], [ %123, %122 ]
  %315 = phi i32 [ %311, %310 ], [ %127, %122 ]
  %316 = add nuw nsw i32 %125, 1
  %317 = icmp slt i32 %316, %314
  br i1 %317, label %318, label %320

318:                                              ; preds = %313
  %319 = load ptr, ptr %26, align 8
  br label %122

320:                                              ; preds = %313, %116, %112
  %321 = phi i32 [ %113, %112 ], [ %113, %116 ], [ %315, %313 ]
  %322 = phi ptr [ null, %112 ], [ null, %116 ], [ %131, %313 ]
  %323 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 5
  %324 = load ptr, ptr %323, align 8
  %325 = icmp eq ptr %324, null
  %326 = select i1 %325, ptr %322, ptr @dev_attr_current_timestamp_clock
  %327 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 15
  %328 = load ptr, ptr %327, align 8
  %329 = icmp ne ptr %328, null
  %330 = zext i1 %329 to i32
  %331 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 16
  %332 = load ptr, ptr %331, align 4
  %333 = icmp ne ptr %332, null
  %334 = zext i1 %333 to i32
  %335 = icmp eq ptr %326, null
  %336 = xor i1 %335, true
  %337 = zext i1 %336 to i32
  %338 = add i32 %321, 1
  %339 = add i32 %338, %330
  %340 = add i32 %339, %334
  %341 = add i32 %340, %337
  %342 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %341, i32 4) #17
  %343 = extractvalue { i32, i1 } %342, 1
  br i1 %343, label %344, label %346, !prof !11

344:                                              ; preds = %320
  %345 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 11, i32 3
  store ptr null, ptr %345, align 4
  br label %415

346:                                              ; preds = %320
  %347 = extractvalue { i32, i1 } %342, 0
  %348 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %347, i32 noundef 3520) #21
  %349 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 11, i32 3
  store ptr %348, ptr %349, align 4
  %350 = icmp eq ptr %348, null
  br i1 %350, label %415, label %351

351:                                              ; preds = %346
  %352 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 11
  %353 = load ptr, ptr %3, align 8
  %354 = getelementptr inbounds %struct.iio_info, ptr %353, i32 0, i32 1
  %355 = load ptr, ptr %354, align 4
  %356 = icmp eq ptr %355, null
  br i1 %356, label %367, label %357

357:                                              ; preds = %351
  %358 = getelementptr inbounds %struct.attribute_group, ptr %355, i32 0, i32 3
  %359 = load ptr, ptr %358, align 4
  %360 = shl i32 %113, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %348, ptr align 4 %359, i32 %360, i1 false) #17
  %361 = load ptr, ptr %3, align 8
  %362 = getelementptr inbounds %struct.iio_info, ptr %361, i32 0, i32 1
  %363 = load ptr, ptr %362, align 4
  %364 = getelementptr inbounds %struct.attribute_group, ptr %363, i32 0, i32 1
  %365 = load ptr, ptr %364, align 4
  %366 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 11, i32 1
  store ptr %365, ptr %366, align 4
  br label %367

367:                                              ; preds = %357, %351
  %368 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 10
  %369 = load ptr, ptr %368, align 8
  %370 = icmp eq ptr %369, %368
  br i1 %370, label %380, label %371

371:                                              ; preds = %371, %367
  %372 = phi ptr [ %378, %371 ], [ %369, %367 ]
  %373 = phi i32 [ %376, %371 ], [ %113, %367 ]
  %374 = getelementptr i8, ptr %372, i32 -24
  %375 = load ptr, ptr %349, align 4
  %376 = add i32 %373, 1
  %377 = getelementptr ptr, ptr %375, i32 %373
  store ptr %374, ptr %377, align 4
  %378 = load ptr, ptr %372, align 8
  %379 = icmp eq ptr %378, %368
  br i1 %379, label %380, label %371

380:                                              ; preds = %371, %367
  %381 = phi i32 [ %113, %367 ], [ %376, %371 ]
  %382 = load ptr, ptr %327, align 8
  %383 = icmp eq ptr %382, null
  br i1 %383, label %388, label %384

384:                                              ; preds = %380
  %385 = load ptr, ptr %349, align 4
  %386 = add i32 %381, 1
  %387 = getelementptr ptr, ptr %385, i32 %381
  store ptr @dev_attr_name, ptr %387, align 4
  br label %388

388:                                              ; preds = %384, %380
  %389 = phi i32 [ %386, %384 ], [ %381, %380 ]
  %390 = load ptr, ptr %331, align 4
  %391 = icmp eq ptr %390, null
  br i1 %391, label %396, label %392

392:                                              ; preds = %388
  %393 = load ptr, ptr %349, align 4
  %394 = add i32 %389, 1
  %395 = getelementptr ptr, ptr %393, i32 %389
  store ptr @dev_attr_label, ptr %395, align 4
  br label %396

396:                                              ; preds = %392, %388
  %397 = phi i32 [ %394, %392 ], [ %389, %388 ]
  br i1 %335, label %401, label %398

398:                                              ; preds = %396
  %399 = load ptr, ptr %349, align 4
  %400 = getelementptr ptr, ptr %399, i32 %397
  store ptr %326, ptr %400, align 4
  br label %401

401:                                              ; preds = %398, %396
  %402 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 13
  %403 = load ptr, ptr %402, align 4
  %404 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 14
  %405 = load i32, ptr %404, align 8
  %406 = shl i32 %405, 2
  %407 = add i32 %406, 8
  %408 = tail call noalias ptr @krealloc(ptr noundef %403, i32 noundef %407, i32 noundef 3264) #20
  %409 = icmp eq ptr %408, null
  br i1 %409, label %415, label %410

410:                                              ; preds = %401
  %411 = load i32, ptr %404, align 8
  %412 = add i32 %411, 1
  store i32 %412, ptr %404, align 8
  %413 = getelementptr ptr, ptr %408, i32 %411
  store ptr %352, ptr %413, align 4
  %414 = getelementptr ptr, ptr %408, i32 %412
  store ptr null, ptr %414, align 4
  store ptr %408, ptr %402, align 4
  br label %435

415:                                              ; preds = %401, %346, %344, %307, %297, %260, %246, %244, %235, %225, %216, %214, %205, %195, %186, %184, %175, %165, %156, %154, %143, %139
  %416 = phi i32 [ -12, %346 ], [ -12, %344 ], [ -12, %401 ], [ -16, %297 ], [ -22, %225 ], [ %233, %235 ], [ -22, %195 ], [ %203, %205 ], [ -22, %165 ], [ %173, %175 ], [ -22, %139 ], [ %147, %143 ], [ %308, %307 ], [ %261, %260 ], [ %249, %246 ], [ %240, %244 ], [ %219, %216 ], [ %210, %214 ], [ %189, %186 ], [ %180, %184 ], [ %159, %156 ], [ %150, %154 ]
  %417 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 10
  %418 = load ptr, ptr %417, align 4
  %419 = icmp eq ptr %418, %417
  br i1 %419, label %432, label %420

420:                                              ; preds = %420, %415
  %421 = phi ptr [ %423, %420 ], [ %418, %415 ]
  %422 = getelementptr i8, ptr %421, i32 -24
  %423 = load ptr, ptr %421, align 8
  %424 = load ptr, ptr %422, align 8
  tail call void @kfree_const(ptr noundef %424) #17
  %425 = getelementptr inbounds %struct.list_head, ptr %421, i32 0, i32 1
  %426 = load ptr, ptr %425, align 4
  %427 = load ptr, ptr %421, align 4
  %428 = getelementptr inbounds %struct.list_head, ptr %427, i32 0, i32 1
  store ptr %426, ptr %428, align 4
  store volatile ptr %427, ptr %426, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %421, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %425, align 4
  tail call void @kfree(ptr noundef %422) #17
  %429 = icmp eq ptr %423, %417
  br i1 %429, label %430, label %420

430:                                              ; preds = %420
  %431 = icmp eq i32 %416, 0
  br i1 %431, label %435, label %432

432:                                              ; preds = %430, %415
  %433 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 1
  %434 = load ptr, ptr %433, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %434, ptr noundef nonnull @.str.15) #18
  br label %511

435:                                              ; preds = %430, %410
  %436 = tail call i32 @iio_device_register_eventset(ptr noundef %0) #17
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %441, label %438

438:                                              ; preds = %435
  %439 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 1
  %440 = load ptr, ptr %439, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %440, ptr noundef nonnull @.str.16) #18
  br label %491

441:                                              ; preds = %435
  %442 = load i32, ptr %0, align 8
  %443 = and i32 %442, 50
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %448, label %445

445:                                              ; preds = %441
  %446 = tail call i32 @iio_device_register_trigger_consumer(ptr noundef %0) #17
  %447 = load i32, ptr %0, align 8
  br label %448

448:                                              ; preds = %445, %441
  %449 = phi i32 [ %447, %445 ], [ %442, %441 ]
  %450 = and i32 %449, 14
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %457, label %452

452:                                              ; preds = %448
  %453 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 18
  %454 = load ptr, ptr %453, align 4
  %455 = icmp eq ptr %454, null
  br i1 %455, label %456, label %457

456:                                              ; preds = %452
  store ptr @noop_ring_setup_ops, ptr %453, align 4
  br label %457

457:                                              ; preds = %456, %452, %448
  %458 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 7
  %459 = load i32, ptr %458, align 8
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %465

461:                                              ; preds = %457
  %462 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 5
  %463 = load ptr, ptr %462, align 8
  %464 = icmp eq ptr %463, null
  br i1 %464, label %468, label %465

465:                                              ; preds = %461, %457
  %466 = phi ptr [ @iio_buffer_fileops, %457 ], [ @iio_event_fileops, %461 ]
  %467 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 21
  tail call void @cdev_init(ptr noundef %467, ptr noundef nonnull %466) #17
  br label %468

468:                                              ; preds = %465, %461
  %469 = load i32, ptr %458, align 8
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %471, label %475

471:                                              ; preds = %468
  %472 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 5
  %473 = load ptr, ptr %472, align 8
  %474 = icmp eq ptr %473, null
  br i1 %474, label %483, label %475

475:                                              ; preds = %471, %468
  %476 = load i32, ptr @iio_devt, align 4
  %477 = and i32 %476, -1048576
  %478 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 1
  %479 = load i32, ptr %478, align 8
  %480 = or i32 %477, %479
  %481 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 27
  store i32 %480, ptr %481, align 8
  %482 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 21, i32 1
  store ptr %1, ptr %482, align 4
  br label %483

483:                                              ; preds = %475, %471
  %484 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 13
  %485 = load ptr, ptr %484, align 4
  %486 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 32
  store ptr %485, ptr %486, align 8
  %487 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 21
  %488 = tail call i32 @cdev_device_add(ptr noundef %487, ptr noundef %8) #17
  %489 = icmp slt i32 %488, 0
  br i1 %489, label %490, label %517

490:                                              ; preds = %483
  tail call void @iio_device_unregister_eventset(ptr noundef %0) #17
  br label %491

491:                                              ; preds = %490, %438
  %492 = phi i32 [ %436, %438 ], [ %488, %490 ]
  %493 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 10
  %494 = load ptr, ptr %493, align 4
  %495 = icmp eq ptr %494, %493
  br i1 %495, label %506, label %496

496:                                              ; preds = %496, %491
  %497 = phi ptr [ %499, %496 ], [ %494, %491 ]
  %498 = getelementptr i8, ptr %497, i32 -24
  %499 = load ptr, ptr %497, align 8
  %500 = load ptr, ptr %498, align 8
  tail call void @kfree_const(ptr noundef %500) #17
  %501 = getelementptr inbounds %struct.list_head, ptr %497, i32 0, i32 1
  %502 = load ptr, ptr %501, align 4
  %503 = load ptr, ptr %497, align 4
  %504 = getelementptr inbounds %struct.list_head, ptr %503, i32 0, i32 1
  store ptr %502, ptr %504, align 4
  store volatile ptr %503, ptr %502, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %497, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %501, align 4
  tail call void @kfree(ptr noundef %498) #17
  %505 = icmp eq ptr %499, %493
  br i1 %505, label %506, label %496

506:                                              ; preds = %496, %491
  %507 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 11, i32 3
  %508 = load ptr, ptr %507, align 4
  tail call void @kfree(ptr noundef %508) #17
  store ptr null, ptr %507, align 4
  %509 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 13
  %510 = load ptr, ptr %509, align 4
  tail call void @kfree(ptr noundef %510) #17
  store ptr null, ptr %509, align 4
  br label %511

511:                                              ; preds = %506, %432
  %512 = phi i32 [ %416, %432 ], [ %492, %506 ]
  tail call void @iio_buffers_free_sysfs_and_mask(ptr noundef %0) #17
  br label %513

513:                                              ; preds = %511, %92
  %514 = phi i32 [ %90, %92 ], [ %512, %511 ]
  %515 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 23
  %516 = load ptr, ptr %515, align 4
  tail call void @debugfs_remove(ptr noundef %516) #17
  br label %517

517:                                              ; preds = %513, %483, %70, %52, %2
  %518 = phi i32 [ %514, %513 ], [ -22, %2 ], [ -22, %52 ], [ -22, %70 ], [ 0, %483 ]
  ret i32 %518
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_buffers_alloc_sysfs_and_mask(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_register_eventset(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_register_trigger_consumer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister_eventset(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_buffers_free_sysfs_and_mask(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iio_device_unregister(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 21
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  tail call void @cdev_device_del(ptr noundef %2, ptr noundef %3) #17
  %4 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #17
  %5 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  tail call void @debugfs_remove(ptr noundef %6) #17
  tail call void @iio_disable_all_buffers(ptr noundef %0) #17
  %7 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 17
  store ptr null, ptr %7, align 8
  tail call void @iio_device_wakeup_eventset(ptr noundef %0) #17
  tail call void @iio_buffer_wakeup_poll(ptr noundef %0) #17
  tail call void @mutex_unlock(ptr noundef %4) #17
  tail call void @iio_buffers_free_sysfs_and_mask(ptr noundef %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_disable_all_buffers(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_wakeup_eventset(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_buffer_wakeup_poll(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__devm_iio_device_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = tail call i32 @__iio_device_register(ptr noundef %1, ptr noundef %2)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_iio_device_unreg, ptr noundef %1) #17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.iio_dev_opaque, ptr %1, i32 0, i32 21
  %11 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  tail call void @cdev_device_del(ptr noundef %10, ptr noundef %11) #17
  %12 = getelementptr inbounds %struct.iio_dev_opaque, ptr %1, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %12) #17
  %13 = getelementptr inbounds %struct.iio_dev_opaque, ptr %1, i32 0, i32 23
  %14 = load ptr, ptr %13, align 4
  tail call void @debugfs_remove(ptr noundef %14) #17
  tail call void @iio_disable_all_buffers(ptr noundef %1) #17
  %15 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 17
  store ptr null, ptr %15, align 8
  tail call void @iio_device_wakeup_eventset(ptr noundef %1) #17
  tail call void @iio_buffer_wakeup_poll(ptr noundef %1) #17
  tail call void @mutex_unlock(ptr noundef %12) #17
  tail call void @iio_buffers_free_sysfs_and_mask(ptr noundef %1) #17
  br label %16

16:                                               ; preds = %9, %6, %3
  %17 = phi i32 [ %4, %3 ], [ 0, %6 ], [ %7, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_iio_device_unreg(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 21
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  tail call void @cdev_device_del(ptr noundef %2, ptr noundef %3) #17
  %4 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #17
  %5 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  tail call void @debugfs_remove(ptr noundef %6) #17
  tail call void @iio_disable_all_buffers(ptr noundef %0) #17
  %7 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 17
  store ptr null, ptr %7, align 8
  tail call void @iio_device_wakeup_eventset(ptr noundef %0) #17
  tail call void @iio_buffer_wakeup_poll(ptr noundef %0) #17
  tail call void @mutex_unlock(ptr noundef %4) #17
  tail call void @iio_buffers_free_sysfs_and_mask(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_device_claim_direct_mode(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %2) #17
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef %2) #17
  br label %8

8:                                                ; preds = %7, %1
  %9 = phi i32 [ -16, %7 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iio_device_release_direct_mode(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %2) #17
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @iio_init() #6 section ".init.text" {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @iio_bus_type) #17
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177) #18
  br label %12

5:                                                ; preds = %0
  %6 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @iio_devt, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str) #17
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178) #18
  tail call void @bus_unregister(ptr noundef nonnull @iio_bus_type) #17
  br label %12

10:                                               ; preds = %5
  %11 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #17
  store ptr %11, ptr @iio_debugfs_dentry, align 4
  br label %12

12:                                               ; preds = %10, %8, %3
  %13 = phi i32 [ 0, %10 ], [ %1, %3 ], [ %6, %8 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_raw() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_coarse_with_offset(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister_trigger_consumer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_detach_buffers(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_debugfs_read_reg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #3 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4
  %8 = load i64, ptr %3, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.iio_dev_opaque, ptr %7, i32 0, i32 25
  %12 = getelementptr inbounds %struct.iio_dev_opaque, ptr %7, i32 0, i32 26
  %13 = load i32, ptr %12, align 8
  %14 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %11, i32 noundef %13) #17
  br label %33

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 17
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.iio_info, ptr %17, i32 0, i32 14
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.iio_dev_opaque, ptr %7, i32 0, i32 24
  %21 = load i32, ptr %20, align 8
  %22 = call i32 %19(ptr noundef %7, i32 noundef %21, i32 noundef 0, ptr noundef nonnull %5) #17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 2, i32 1
  %26 = load ptr, ptr %25, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.124, ptr noundef nonnull @__func__.iio_debugfs_read_reg) #18
  br label %33

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.iio_dev_opaque, ptr %7, i32 0, i32 25
  %29 = load i32, ptr %5, align 4
  %30 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %28, i32 noundef 20, ptr noundef nonnull @.str.125, i32 noundef %29)
  %31 = getelementptr inbounds %struct.iio_dev_opaque, ptr %7, i32 0, i32 26
  store i32 %30, ptr %31, align 8
  %32 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %28, i32 noundef %30) #17
  br label %33

33:                                               ; preds = %27, %24, %10
  %34 = phi i32 [ %14, %10 ], [ %22, %24 ], [ %32, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_debugfs_write_reg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #3 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [80 x i8], align 1
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %7) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %7, i8 0, i32 80, i1 false), !annotation !8
  %10 = tail call i32 @llvm.umin.i32(i32 %2, i32 79)
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %10, i32 -1090519040) #22, !srcloc !12
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21, !prof !13

14:                                               ; preds = %4
  %15 = tail call ptr @llvm.thread.pointer() #17
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #23, !srcloc !14
  %18 = and i32 %17, -13
  %19 = or i32 %18, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #17, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !16
  %20 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %10) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #17, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !16
  br label %21

21:                                               ; preds = %14, %4
  %22 = phi i32 [ %20, %14 ], [ %10, %4 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24, !prof !13

24:                                               ; preds = %21
  %25 = sub i32 %10, %22
  %26 = getelementptr i8, ptr %7, i32 %25
  call void @llvm.memset.p0.i32(ptr align 1 %26, i8 0, i32 %22, i1 false) #17
  br label %46

27:                                               ; preds = %21
  %28 = getelementptr [80 x i8], ptr %7, i32 0, i32 %10
  store i8 0, ptr %28, align 1
  %29 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %7, ptr noundef nonnull @.str.126, ptr noundef nonnull %5, ptr noundef nonnull %6)
  switch i32 %29, label %46 [
    i32 1, label %30
    i32 2, label %33
  ]

30:                                               ; preds = %27
  %31 = load i32, ptr %5, align 4
  %32 = getelementptr inbounds %struct.iio_dev_opaque, ptr %9, i32 0, i32 24
  store i32 %31, ptr %32, align 8
  br label %46

33:                                               ; preds = %27
  %34 = load i32, ptr %5, align 4
  %35 = getelementptr inbounds %struct.iio_dev_opaque, ptr %9, i32 0, i32 24
  store i32 %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.iio_dev, ptr %9, i32 0, i32 17
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.iio_info, ptr %37, i32 0, i32 14
  %39 = load ptr, ptr %38, align 4
  %40 = load i32, ptr %6, align 4
  %41 = call i32 %39(ptr noundef %9, i32 noundef %34, i32 noundef %40, ptr noundef null) #17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.iio_dev, ptr %9, i32 0, i32 2, i32 1
  %45 = load ptr, ptr %44, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.127, ptr noundef nonnull @__func__.iio_debugfs_write_reg) #18
  br label %46

46:                                               ; preds = %43, %33, %30, %27, %24
  %47 = phi i32 [ %41, %43 ], [ -22, %27 ], [ %10, %33 ], [ %10, %30 ], [ -14, %24 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #15

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_show_timestamp_clock(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 712
  %5 = load i32, ptr %4, align 8
  %6 = icmp ult i32 %5, 12
  br i1 %6, label %8, label %7

7:                                                ; preds = %8, %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iio/industrialio-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1455, 0\0A.popsection", ""() #17, !srcloc !17
  unreachable

8:                                                ; preds = %3
  %9 = trunc i32 %5 to i16
  %10 = lshr i16 2291, %9
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %7, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds [12 x ptr], ptr @switch.table.iio_show_timestamp_clock, i32 0, i32 %5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds [12 x i32], ptr @switch.table.iio_show_timestamp_clock.179, i32 0, i32 %5
  %17 = load i32, ptr %16, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %2, ptr noundef nonnull align 1 %15, i32 %17, i1 false)
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_store_timestamp_clock(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.138) #17
  br i1 %5, label %18, label %6

6:                                                ; preds = %4
  %7 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.139) #17
  br i1 %7, label %18, label %8

8:                                                ; preds = %6
  %9 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.140) #17
  br i1 %9, label %18, label %10

10:                                               ; preds = %8
  %11 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.141) #17
  br i1 %11, label %18, label %12

12:                                               ; preds = %10
  %13 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.142) #17
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.143) #17
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.144) #17
  br i1 %17, label %18, label %42

18:                                               ; preds = %16, %14, %12, %10, %8, %6, %4
  %19 = phi i32 [ 0, %4 ], [ 1, %6 ], [ 4, %8 ], [ 5, %10 ], [ 6, %12 ], [ 7, %14 ], [ 11, %16 ]
  %20 = getelementptr i8, ptr %0, i32 592
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %0, i32 480
  %23 = tail call i32 @mutex_lock_interruptible(ptr noundef %22) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %18
  %26 = icmp eq ptr %21, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  %28 = tail call zeroext i1 @iio_event_enabled(ptr noundef nonnull %21) #17
  br i1 %28, label %36, label %29

29:                                               ; preds = %27, %25
  %30 = getelementptr i8, ptr %0, i32 -4
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 14
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = getelementptr i8, ptr %0, i32 712
  store i32 %19, ptr %35, align 8
  br label %36

36:                                               ; preds = %34, %29, %27
  %37 = phi i32 [ 0, %34 ], [ -16, %29 ], [ -16, %27 ]
  tail call void @mutex_unlock(ptr noundef %22) #17
  br label %38

38:                                               ; preds = %36, %18
  %39 = phi i32 [ %23, %18 ], [ %37, %36 ]
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 %3, i32 %39
  br label %42

42:                                               ; preds = %38, %16
  %43 = phi i32 [ -22, %16 ], [ %41, %38 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @iio_device_add_info_mask_type_avail(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #3 {
  %5 = tail call i32 @_find_next_bit_le(ptr noundef %3, i32 noundef 32, i32 noundef 0) #17
  %6 = icmp ult i32 %5, 32
  br i1 %6, label %7, label %34

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  %9 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 10
  %10 = icmp ne i32 %2, 0
  br label %11

11:                                               ; preds = %29, %7
  %12 = phi i32 [ 0, %7 ], [ %30, %29 ]
  %13 = phi i32 [ %5, %7 ], [ %32, %29 ]
  %14 = icmp ugt i32 %13, 27
  br i1 %14, label %34, label %15

15:                                               ; preds = %11
  %16 = getelementptr [28 x ptr], ptr @iio_chan_info_postfix, i32 0, i32 %13
  %17 = load ptr, ptr %16, align 4
  %18 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.172, ptr noundef %17) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %15
  %21 = zext i32 %13 to i64
  %22 = tail call i32 @__iio_add_chan_devattr(ptr noundef nonnull %18, ptr noundef %1, ptr noundef nonnull @iio_read_channel_info_avail, ptr noundef null, i64 noundef %21, i32 noundef %2, ptr noundef %8, ptr noundef null, ptr noundef %9)
  tail call void @kfree(ptr noundef nonnull %18) #17
  %23 = icmp eq i32 %22, -16
  %24 = and i1 %10, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = icmp slt i32 %22, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %25
  %28 = add i32 %12, 1
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi i32 [ %12, %20 ], [ %28, %27 ]
  %31 = add nuw nsw i32 %13, 1
  %32 = tail call i32 @_find_next_bit_le(ptr noundef %3, i32 noundef 32, i32 noundef %31) #17
  %33 = icmp ult i32 %32, 32
  br i1 %33, label %11, label %34

34:                                               ; preds = %29, %25, %15, %11, %4
  %35 = phi i32 [ 0, %4 ], [ %30, %29 ], [ %22, %25 ], [ -12, %15 ], [ -22, %11 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_read_channel_ext_info(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.iio_chan_spec, ptr %6, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = getelementptr %struct.iio_chan_spec_ext_info, ptr %8, i32 %11, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.iio_chan_spec_ext_info, ptr %8, i32 %11, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 %13(ptr noundef %4, i32 noundef %15, ptr noundef %6, ptr noundef %2) #17
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_write_channel_ext_info(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.iio_chan_spec, ptr %7, i32 0, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = getelementptr %struct.iio_chan_spec_ext_info, ptr %9, i32 %12, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.iio_chan_spec_ext_info, ptr %9, i32 %12, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 %14(ptr noundef %5, i32 noundef %16, ptr noundef %7, ptr noundef %2, i32 noundef %3) #17
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_read_channel_info(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #3 {
  %4 = alloca [4 x i32], align 4
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 2, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 544
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.iio_info, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 %10(ptr noundef %6, ptr noundef %14, i32 noundef 4, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %17) #17
  br label %29

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.iio_info, ptr %8, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 1
  %25 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 1
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 %21(ptr noundef %6, ptr noundef %23, ptr noundef nonnull %4, ptr noundef %24, i32 noundef %27) #17
  br label %29

29:                                               ; preds = %19, %12
  %30 = phi i32 [ %18, %12 ], [ %28, %19 ]
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr %5, align 4
  %34 = call fastcc i32 @__iio_format_value(ptr noundef %2, i32 noundef 0, i32 noundef %30, i32 noundef %33, ptr noundef nonnull %4) #17
  %35 = icmp ugt i32 %34, 4094
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %34, ptr noundef nonnull @.str.5) #17
  %38 = add i32 %37, %34
  br label %39

39:                                               ; preds = %36, %32, %29
  %40 = phi i32 [ %30, %29 ], [ %38, %36 ], [ -27, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_write_channel_info(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = getelementptr i8, ptr %0, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 0, ptr %6, align 4
  %9 = getelementptr i8, ptr %0, i32 544
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.iio_info, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %58, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.iio_info, ptr %10, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = tail call i32 %16(ptr noundef %8, ptr noundef %20, i32 noundef %23) #17
  switch i32 %24, label %58 [
    i32 1, label %35
    i32 4, label %25
    i32 2, label %26
    i32 3, label %28
    i32 12, label %29
  ]

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %18
  %27 = phi i1 [ false, %18 ], [ true, %25 ]
  br label %35

28:                                               ; preds = %18
  br label %35

29:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #17
  store i8 0, ptr %7, align 1, !annotation !8
  %30 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.29, ptr noundef nonnull %7)
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %57

32:                                               ; preds = %29
  %33 = load i8, ptr %7, align 1
  %34 = zext i8 %33 to i32
  store i32 %34, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #17
  br label %43

35:                                               ; preds = %28, %26, %18, %14
  %36 = phi i32 [ 0, %18 ], [ 100000, %14 ], [ 100000, %26 ], [ 100000000, %28 ]
  %37 = phi i1 [ false, %18 ], [ false, %14 ], [ %27, %26 ], [ false, %28 ]
  %38 = call fastcc i32 @__iio_str_to_fixpoint(ptr noundef %2, i32 noundef %36, ptr noundef nonnull %5, ptr noundef nonnull %6, i1 noundef zeroext %37)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %35
  %41 = load i32, ptr %5, align 4
  %42 = load i32, ptr %6, align 4
  br label %43

43:                                               ; preds = %40, %32
  %44 = phi i32 [ %42, %40 ], [ 0, %32 ]
  %45 = phi i32 [ %41, %40 ], [ %34, %32 ]
  %46 = load ptr, ptr %9, align 8
  %47 = getelementptr inbounds %struct.iio_info, ptr %46, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 3
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 1
  %52 = load i64, ptr %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 %48(ptr noundef %8, ptr noundef %50, i32 noundef %45, i32 noundef %44, i32 noundef %53) #17
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 %3, i32 %54
  br label %58

57:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #17
  br label %58

58:                                               ; preds = %57, %43, %35, %18, %4
  %59 = phi i32 [ -22, %4 ], [ -22, %18 ], [ -22, %57 ], [ %38, %35 ], [ %56, %43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_read_channel_info_avail(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #3 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr i8, ptr %0, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store ptr null, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 0, ptr %6, align 4, !annotation !8
  %8 = getelementptr i8, ptr %0, i32 544
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.iio_info, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 %11(ptr noundef %7, ptr noundef %13, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef %16) #17
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %77, label %19

19:                                               ; preds = %3
  switch i32 %17, label %77 [
    i32 0, label %20
    i32 1, label %50
  ]

20:                                               ; preds = %19
  %21 = load ptr, ptr %4, align 4
  %22 = load i32, ptr %6, align 4
  %23 = load i32, ptr %5, align 4
  %24 = icmp eq i32 %22, 1
  %25 = select i1 %24, i32 1, i32 2
  %26 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.23) #17
  %27 = sub i32 %23, %25
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %46, label %32

29:                                               ; preds = %40
  %30 = add i32 %33, %25
  %31 = icmp sgt i32 %30, %27
  br i1 %31, label %46, label %32

32:                                               ; preds = %29, %20
  %33 = phi i32 [ %30, %29 ], [ 0, %20 ]
  %34 = phi i32 [ %44, %29 ], [ %26, %20 ]
  %35 = icmp eq i32 %33, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %34, ptr noundef nonnull @.str.173) #17
  %38 = add i32 %37, %34
  %39 = icmp ugt i32 %38, 4095
  br i1 %39, label %77, label %40

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %38, %36 ], [ %34, %32 ]
  %42 = getelementptr i32, ptr %21, i32 %33
  %43 = call fastcc i32 @__iio_format_value(ptr noundef %2, i32 noundef %41, i32 noundef %22, i32 noundef %25, ptr noundef %42) #17
  %44 = add i32 %43, %41
  %45 = icmp ugt i32 %44, 4095
  br i1 %45, label %77, label %29

46:                                               ; preds = %29, %20
  %47 = phi i32 [ %26, %20 ], [ %44, %29 ]
  %48 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %47, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23) #17
  %49 = add i32 %48, %47
  br label %77

50:                                               ; preds = %19
  %51 = load ptr, ptr %4, align 4
  %52 = load i32, ptr %6, align 4
  %53 = icmp eq i32 %52, 1
  %54 = select i1 %53, i32 1, i32 2
  %55 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.174) #17
  %56 = xor i32 %54, 3
  br label %60

57:                                               ; preds = %68
  %58 = add i32 %61, %54
  %59 = icmp sgt i32 %58, %56
  br i1 %59, label %74, label %60

60:                                               ; preds = %57, %50
  %61 = phi i32 [ %58, %57 ], [ 0, %50 ]
  %62 = phi i32 [ %72, %57 ], [ %55, %50 ]
  %63 = icmp eq i32 %61, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %62, ptr noundef nonnull @.str.173) #17
  %66 = add i32 %65, %62
  %67 = icmp ugt i32 %66, 4095
  br i1 %67, label %77, label %68

68:                                               ; preds = %64, %60
  %69 = phi i32 [ %66, %64 ], [ %62, %60 ]
  %70 = getelementptr i32, ptr %51, i32 %61
  %71 = call fastcc i32 @__iio_format_value(ptr noundef %2, i32 noundef %69, i32 noundef %52, i32 noundef %54, ptr noundef %70) #17
  %72 = add i32 %71, %69
  %73 = icmp ugt i32 %72, 4095
  br i1 %73, label %77, label %57

74:                                               ; preds = %57
  %75 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %72, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.175) #17
  %76 = add i32 %75, %72
  br label %77

77:                                               ; preds = %74, %68, %64, %46, %40, %36, %19, %3
  %78 = phi i32 [ %17, %3 ], [ -22, %19 ], [ %49, %46 ], [ %76, %74 ], [ -27, %36 ], [ -27, %40 ], [ -27, %64 ], [ -27, %68 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_read_channel_label(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 544
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.iio_info, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %0, i32 -8
  %11 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 %7(ptr noundef %10, ptr noundef %12, ptr noundef %2) #17
  br label %22

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.iio_chan_spec, ptr %16, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %18)
  br label %22

22:                                               ; preds = %20, %14, %9
  %23 = phi i32 [ %13, %9 ], [ %21, %20 ], [ -22, %14 ]
  ret i32 %23
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #16

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_show_dev_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 536
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef %5) #17
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_show_dev_label(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 540
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef %5) #17
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_buffer_read_wrapper(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_buffer_write_wrapper(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_buffer_poll_wrapper(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.iio_dev_opaque, ptr %6, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %7) #17
  %8 = getelementptr inbounds %struct.iio_dev, ptr %6, i32 0, i32 17
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.iio_dev_opaque, ptr %6, i32 0, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %24, label %18

15:                                               ; preds = %18
  %16 = load ptr, ptr %19, align 4
  %17 = icmp eq ptr %16, %12
  br i1 %17, label %24, label %18

18:                                               ; preds = %15, %11
  %19 = phi ptr [ %16, %15 ], [ %13, %11 ]
  %20 = getelementptr inbounds %struct.iio_ioctl_handler, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %6, ptr noundef %0, i32 noundef %1, i32 noundef %2) #17
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %15, label %24

24:                                               ; preds = %18, %15, %11, %3
  %25 = phi i32 [ -19, %3 ], [ -19, %11 ], [ %22, %18 ], [ -19, %15 ]
  tail call void @mutex_unlock(ptr noundef %7) #17
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_chrdev_open(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -724
  %6 = getelementptr i8, ptr %4, i32 60
  %7 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %6) #17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = icmp eq ptr %5, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 8) #19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %23

15:                                               ; preds = %9
  %16 = getelementptr i8, ptr %4, i32 -716
  %17 = tail call ptr @get_device(ptr noundef %16) #17
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 8) #19
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  tail call void @put_device(ptr noundef %16) #17
  br label %22

22:                                               ; preds = %21, %11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %6) #17
  br label %29

23:                                               ; preds = %15, %11
  %24 = phi ptr [ %19, %15 ], [ %13, %11 ]
  store ptr %5, ptr %24, align 8
  %25 = getelementptr i8, ptr %4, i32 -244
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.iio_dev_buffer_pair, ptr %24, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %24, ptr %28, align 8
  br label %29

29:                                               ; preds = %23, %22, %2
  %30 = phi i32 [ 0, %23 ], [ -12, %22 ], [ -16, %2 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_chrdev_release(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -724
  tail call void @kfree(ptr noundef %4) #17
  %8 = getelementptr i8, ptr %6, i32 60
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %8) #17
  %9 = icmp eq ptr %7, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %6, i32 -716
  tail call void @put_device(ptr noundef %11) #17
  br label %12

12:                                               ; preds = %10, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #16

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(1) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind readnone }
attributes #23 = { nounwind readonly }

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
!9 = !{i64 2152194353, i64 2152194849, i64 2152194390, i64 2152194446, i64 2152194480, i64 2152194504, i64 2152194545, i64 2152194566, i64 2152194594, i64 2152194628}
!10 = !{i64 2152196594, i64 2152197090, i64 2152196631, i64 2152196687, i64 2152196721, i64 2152196745, i64 2152196786, i64 2152196807, i64 2152196835, i64 2152196869}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2151517446, i64 2151517471}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 4013558}
!15 = !{i64 4013755}
!16 = !{i64 2151499034}
!17 = !{i64 2152281214, i64 2152281711, i64 2152281251, i64 2152281307, i64 2152281341, i64 2152281365, i64 2152281406, i64 2152281427, i64 2152281455, i64 2152281489}
