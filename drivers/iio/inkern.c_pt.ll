; ModuleID = '/llk/IR/drivers/iio/inkern.c_pt.bc'
source_filename = "../drivers/iio/inkern.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_map_array_register:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_map_array_register\22\09\09\09\09\09"
module asm "__kstrtabns_iio_map_array_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_map_array_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_map_array_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_iio_map_array_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_iio_map_array_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_iio_map_array_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_iio_map_array_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_iio_channel_get_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22of_iio_channel_get_by_name\22\09\09\09\09\09"
module asm "__kstrtabns_of_iio_channel_get_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_channel_get:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_channel_get\22\09\09\09\09\09"
module asm "__kstrtabns_iio_channel_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_channel_release:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_channel_release\22\09\09\09\09\09"
module asm "__kstrtabns_iio_channel_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_iio_channel_get:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_iio_channel_get\22\09\09\09\09\09"
module asm "__kstrtabns_devm_iio_channel_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_of_iio_channel_get_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_of_iio_channel_get_by_name\22\09\09\09\09\09"
module asm "__kstrtabns_devm_of_iio_channel_get_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_channel_get_all:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_channel_get_all\22\09\09\09\09\09"
module asm "__kstrtabns_iio_channel_get_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_channel_release_all:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_channel_release_all\22\09\09\09\09\09"
module asm "__kstrtabns_iio_channel_release_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_iio_channel_get_all:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_iio_channel_get_all\22\09\09\09\09\09"
module asm "__kstrtabns_devm_iio_channel_get_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_read_channel_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_read_channel_raw\22\09\09\09\09\09"
module asm "__kstrtabns_iio_read_channel_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_read_channel_average_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_read_channel_average_raw\22\09\09\09\09\09"
module asm "__kstrtabns_iio_read_channel_average_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_convert_raw_to_processed:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_convert_raw_to_processed\22\09\09\09\09\09"
module asm "__kstrtabns_iio_convert_raw_to_processed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_read_channel_attribute:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_read_channel_attribute\22\09\09\09\09\09"
module asm "__kstrtabns_iio_read_channel_attribute:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_read_channel_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_read_channel_offset\22\09\09\09\09\09"
module asm "__kstrtabns_iio_read_channel_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_read_channel_processed_scale:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_read_channel_processed_scale\22\09\09\09\09\09"
module asm "__kstrtabns_iio_read_channel_processed_scale:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_read_channel_processed:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_read_channel_processed\22\09\09\09\09\09"
module asm "__kstrtabns_iio_read_channel_processed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_read_channel_scale:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_read_channel_scale\22\09\09\09\09\09"
module asm "__kstrtabns_iio_read_channel_scale:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_read_avail_channel_attribute:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_read_avail_channel_attribute\22\09\09\09\09\09"
module asm "__kstrtabns_iio_read_avail_channel_attribute:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_read_avail_channel_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_read_avail_channel_raw\22\09\09\09\09\09"
module asm "__kstrtabns_iio_read_avail_channel_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_read_max_channel_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_read_max_channel_raw\22\09\09\09\09\09"
module asm "__kstrtabns_iio_read_max_channel_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_get_channel_type:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_get_channel_type\22\09\09\09\09\09"
module asm "__kstrtabns_iio_get_channel_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_write_channel_attribute:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_write_channel_attribute\22\09\09\09\09\09"
module asm "__kstrtabns_iio_write_channel_attribute:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_write_channel_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_write_channel_raw\22\09\09\09\09\09"
module asm "__kstrtabns_iio_write_channel_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_get_channel_ext_info_count:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_get_channel_ext_info_count\22\09\09\09\09\09"
module asm "__kstrtabns_iio_get_channel_ext_info_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_read_channel_ext_info:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_read_channel_ext_info\22\09\09\09\09\09"
module asm "__kstrtabns_iio_read_channel_ext_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_write_channel_ext_info:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_write_channel_ext_info\22\09\09\09\09\09"
module asm "__kstrtabns_iio_write_channel_ext_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_map = type { ptr, ptr, ptr, ptr }
%struct.iio_map_internal = type { ptr, ptr, %struct.list_head }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.5, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.5 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_channel = type { ptr, ptr, ptr }
%struct.iio_dev_opaque = type { %struct.iio_dev, i32, ptr, %struct.mutex, i8, ptr, ptr, i32, ptr, %struct.list_head, %struct.list_head, %struct.attribute_group, %struct.list_head, ptr, i32, %struct.attribute_group, %struct.attribute_group, ptr, i32, i32, i32, %struct.cdev, i32, ptr, i32, [20 x i8], i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@iio_map_list_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @iio_map_list_lock, i64 12), ptr getelementptr (i8, ptr @iio_map_list_lock, i64 12) } }, align 4
@iio_map_list = internal global %struct.list_head { ptr @iio_map_list, ptr @iio_map_list }, align 4
@__kstrtab_iio_map_array_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_map_array_register = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_map_array_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_map_array_register to i32), ptr @__kstrtab_iio_map_array_register, ptr @__kstrtabns_iio_map_array_register }, section "___ksymtab_gpl+iio_map_array_register", align 4
@__kstrtab_iio_map_array_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_map_array_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_map_array_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_map_array_unregister to i32), ptr @__kstrtab_iio_map_array_unregister, ptr @__kstrtabns_iio_map_array_unregister }, section "___ksymtab_gpl+iio_map_array_unregister", align 4
@__kstrtab_devm_iio_map_array_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_iio_map_array_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_iio_map_array_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_iio_map_array_register to i32), ptr @__kstrtab_devm_iio_map_array_register, ptr @__kstrtabns_devm_iio_map_array_register }, section "___ksymtab_gpl+devm_iio_map_array_register", align 4
@.str = private unnamed_addr constant [17 x i8] c"io-channel-names\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"\013ERROR: could not get IIO channel %pOF:%s(%i)\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"io-channel-ranges\00", align 1
@__kstrtab_of_iio_channel_get_by_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_iio_channel_get_by_name = external dso_local constant [0 x i8], align 1
@__ksymtab_of_iio_channel_get_by_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_iio_channel_get_by_name to i32), ptr @__kstrtab_of_iio_channel_get_by_name, ptr @__kstrtabns_of_iio_channel_get_by_name }, section "___ksymtab_gpl+of_iio_channel_get_by_name", align 4
@__kstrtab_iio_channel_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_channel_get = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_channel_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_channel_get to i32), ptr @__kstrtab_iio_channel_get, ptr @__kstrtabns_iio_channel_get }, section "___ksymtab_gpl+iio_channel_get", align 4
@__kstrtab_iio_channel_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_channel_release = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_channel_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_channel_release to i32), ptr @__kstrtab_iio_channel_release, ptr @__kstrtabns_iio_channel_release }, section "___ksymtab_gpl+iio_channel_release", align 4
@__kstrtab_devm_iio_channel_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_iio_channel_get = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_iio_channel_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_iio_channel_get to i32), ptr @__kstrtab_devm_iio_channel_get, ptr @__kstrtabns_devm_iio_channel_get }, section "___ksymtab_gpl+devm_iio_channel_get", align 4
@__kstrtab_devm_of_iio_channel_get_by_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_of_iio_channel_get_by_name = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_of_iio_channel_get_by_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_of_iio_channel_get_by_name to i32), ptr @__kstrtab_devm_of_iio_channel_get_by_name, ptr @__kstrtabns_devm_of_iio_channel_get_by_name }, section "___ksymtab_gpl+devm_of_iio_channel_get_by_name", align 4
@__kstrtab_iio_channel_get_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_channel_get_all = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_channel_get_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_channel_get_all to i32), ptr @__kstrtab_iio_channel_get_all, ptr @__kstrtabns_iio_channel_get_all }, section "___ksymtab_gpl+iio_channel_get_all", align 4
@__kstrtab_iio_channel_release_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_channel_release_all = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_channel_release_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_channel_release_all to i32), ptr @__kstrtab_iio_channel_release_all, ptr @__kstrtabns_iio_channel_release_all }, section "___ksymtab_gpl+iio_channel_release_all", align 4
@__kstrtab_devm_iio_channel_get_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_iio_channel_get_all = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_iio_channel_get_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_iio_channel_get_all to i32), ptr @__kstrtab_devm_iio_channel_get_all, ptr @__kstrtabns_devm_iio_channel_get_all }, section "___ksymtab_gpl+devm_iio_channel_get_all", align 4
@__kstrtab_iio_read_channel_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_read_channel_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_read_channel_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_read_channel_raw to i32), ptr @__kstrtab_iio_read_channel_raw, ptr @__kstrtabns_iio_read_channel_raw }, section "___ksymtab_gpl+iio_read_channel_raw", align 4
@__kstrtab_iio_read_channel_average_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_read_channel_average_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_read_channel_average_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_read_channel_average_raw to i32), ptr @__kstrtab_iio_read_channel_average_raw, ptr @__kstrtabns_iio_read_channel_average_raw }, section "___ksymtab_gpl+iio_read_channel_average_raw", align 4
@__kstrtab_iio_convert_raw_to_processed = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_convert_raw_to_processed = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_convert_raw_to_processed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_convert_raw_to_processed to i32), ptr @__kstrtab_iio_convert_raw_to_processed, ptr @__kstrtabns_iio_convert_raw_to_processed }, section "___ksymtab_gpl+iio_convert_raw_to_processed", align 4
@__kstrtab_iio_read_channel_attribute = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_read_channel_attribute = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_read_channel_attribute = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_read_channel_attribute to i32), ptr @__kstrtab_iio_read_channel_attribute, ptr @__kstrtabns_iio_read_channel_attribute }, section "___ksymtab_gpl+iio_read_channel_attribute", align 4
@__kstrtab_iio_read_channel_offset = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_read_channel_offset = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_read_channel_offset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_read_channel_offset to i32), ptr @__kstrtab_iio_read_channel_offset, ptr @__kstrtabns_iio_read_channel_offset }, section "___ksymtab_gpl+iio_read_channel_offset", align 4
@__kstrtab_iio_read_channel_processed_scale = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_read_channel_processed_scale = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_read_channel_processed_scale = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_read_channel_processed_scale to i32), ptr @__kstrtab_iio_read_channel_processed_scale, ptr @__kstrtabns_iio_read_channel_processed_scale }, section "___ksymtab_gpl+iio_read_channel_processed_scale", align 4
@__kstrtab_iio_read_channel_processed = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_read_channel_processed = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_read_channel_processed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_read_channel_processed to i32), ptr @__kstrtab_iio_read_channel_processed, ptr @__kstrtabns_iio_read_channel_processed }, section "___ksymtab_gpl+iio_read_channel_processed", align 4
@__kstrtab_iio_read_channel_scale = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_read_channel_scale = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_read_channel_scale = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_read_channel_scale to i32), ptr @__kstrtab_iio_read_channel_scale, ptr @__kstrtabns_iio_read_channel_scale }, section "___ksymtab_gpl+iio_read_channel_scale", align 4
@__kstrtab_iio_read_avail_channel_attribute = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_read_avail_channel_attribute = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_read_avail_channel_attribute = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_read_avail_channel_attribute to i32), ptr @__kstrtab_iio_read_avail_channel_attribute, ptr @__kstrtabns_iio_read_avail_channel_attribute }, section "___ksymtab_gpl+iio_read_avail_channel_attribute", align 4
@__kstrtab_iio_read_avail_channel_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_read_avail_channel_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_read_avail_channel_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_read_avail_channel_raw to i32), ptr @__kstrtab_iio_read_avail_channel_raw, ptr @__kstrtabns_iio_read_avail_channel_raw }, section "___ksymtab_gpl+iio_read_avail_channel_raw", align 4
@__kstrtab_iio_read_max_channel_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_read_max_channel_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_read_max_channel_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_read_max_channel_raw to i32), ptr @__kstrtab_iio_read_max_channel_raw, ptr @__kstrtabns_iio_read_max_channel_raw }, section "___ksymtab_gpl+iio_read_max_channel_raw", align 4
@__kstrtab_iio_get_channel_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_get_channel_type = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_get_channel_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_get_channel_type to i32), ptr @__kstrtab_iio_get_channel_type, ptr @__kstrtabns_iio_get_channel_type }, section "___ksymtab_gpl+iio_get_channel_type", align 4
@__kstrtab_iio_write_channel_attribute = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_write_channel_attribute = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_write_channel_attribute = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_write_channel_attribute to i32), ptr @__kstrtab_iio_write_channel_attribute, ptr @__kstrtabns_iio_write_channel_attribute }, section "___ksymtab_gpl+iio_write_channel_attribute", align 4
@__kstrtab_iio_write_channel_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_write_channel_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_write_channel_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_write_channel_raw to i32), ptr @__kstrtab_iio_write_channel_raw, ptr @__kstrtabns_iio_write_channel_raw }, section "___ksymtab_gpl+iio_write_channel_raw", align 4
@__kstrtab_iio_get_channel_ext_info_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_get_channel_ext_info_count = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_get_channel_ext_info_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_get_channel_ext_info_count to i32), ptr @__kstrtab_iio_get_channel_ext_info_count, ptr @__kstrtabns_iio_get_channel_ext_info_count }, section "___ksymtab_gpl+iio_get_channel_ext_info_count", align 4
@__kstrtab_iio_read_channel_ext_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_read_channel_ext_info = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_read_channel_ext_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_read_channel_ext_info to i32), ptr @__kstrtab_iio_read_channel_ext_info, ptr @__kstrtabns_iio_read_channel_ext_info }, section "___ksymtab_gpl+iio_read_channel_ext_info", align 4
@__kstrtab_iio_write_channel_ext_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_write_channel_ext_info = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_write_channel_ext_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_write_channel_ext_info to i32), ptr @__kstrtab_iio_write_channel_ext_info, ptr @__kstrtabns_iio_write_channel_ext_info }, section "___ksymtab_gpl+iio_write_channel_ext_info", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"io-channels\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"#io-channel-cells\00", align 1
@iio_bus_type = external dso_local global %struct.bus_type, align 4
@iio_device_type = external dso_local constant %struct.device_type, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"invalid channel index %u\0A\00", align 1
@llvm.compiler.used = appending global [28 x ptr] [ptr @__ksymtab_devm_iio_channel_get, ptr @__ksymtab_devm_iio_channel_get_all, ptr @__ksymtab_devm_iio_map_array_register, ptr @__ksymtab_devm_of_iio_channel_get_by_name, ptr @__ksymtab_iio_channel_get, ptr @__ksymtab_iio_channel_get_all, ptr @__ksymtab_iio_channel_release, ptr @__ksymtab_iio_channel_release_all, ptr @__ksymtab_iio_convert_raw_to_processed, ptr @__ksymtab_iio_get_channel_ext_info_count, ptr @__ksymtab_iio_get_channel_type, ptr @__ksymtab_iio_map_array_register, ptr @__ksymtab_iio_map_array_unregister, ptr @__ksymtab_iio_read_avail_channel_attribute, ptr @__ksymtab_iio_read_avail_channel_raw, ptr @__ksymtab_iio_read_channel_attribute, ptr @__ksymtab_iio_read_channel_average_raw, ptr @__ksymtab_iio_read_channel_ext_info, ptr @__ksymtab_iio_read_channel_offset, ptr @__ksymtab_iio_read_channel_processed, ptr @__ksymtab_iio_read_channel_processed_scale, ptr @__ksymtab_iio_read_channel_raw, ptr @__ksymtab_iio_read_channel_scale, ptr @__ksymtab_iio_read_max_channel_raw, ptr @__ksymtab_iio_write_channel_attribute, ptr @__ksymtab_iio_write_channel_ext_info, ptr @__ksymtab_iio_write_channel_raw, ptr @__ksymtab_of_iio_channel_get_by_name], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_map_array_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %41, label %4

4:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @iio_map_list_lock) #11
  %5 = getelementptr %struct.iio_map, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %39, label %8

8:                                                ; preds = %14, %4
  %9 = phi ptr [ %20, %14 ], [ %1, %4 ]
  %10 = phi i32 [ %19, %14 ], [ 0, %4 ]
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 16) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.iio_map_internal, ptr %12, i32 0, i32 1
  store ptr %9, ptr %15, align 4
  store ptr %0, ptr %12, align 8
  %16 = getelementptr inbounds %struct.iio_map_internal, ptr %12, i32 0, i32 2
  %17 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @iio_map_list, i32 0, i32 1), align 4
  store ptr %16, ptr getelementptr inbounds (%struct.list_head, ptr @iio_map_list, i32 0, i32 1), align 4
  store ptr @iio_map_list, ptr %16, align 8
  %18 = getelementptr inbounds %struct.iio_map_internal, ptr %12, i32 0, i32 2, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %16, ptr %17, align 4
  %19 = add i32 %10, 1
  %20 = getelementptr %struct.iio_map, ptr %1, i32 %19
  %21 = getelementptr %struct.iio_map, ptr %1, i32 %19, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %39, label %8

24:                                               ; preds = %8
  %25 = load ptr, ptr @iio_map_list, align 4
  %26 = icmp eq ptr %25, @iio_map_list
  br i1 %26, label %39, label %27

27:                                               ; preds = %37, %24
  %28 = phi ptr [ %30, %37 ], [ %25, %24 ]
  %29 = getelementptr i8, ptr %28, i32 -8
  %30 = load ptr, ptr %28, align 4
  %31 = load ptr, ptr %29, align 4
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  store volatile ptr %30, ptr %35, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %34, align 4
  tail call void @kfree(ptr noundef %29) #11
  br label %37

37:                                               ; preds = %33, %27
  %38 = icmp eq ptr %30, @iio_map_list
  br i1 %38, label %39, label %27

39:                                               ; preds = %37, %24, %14, %4
  %40 = phi i32 [ -12, %24 ], [ 0, %4 ], [ -12, %37 ], [ 0, %14 ]
  tail call void @mutex_unlock(ptr noundef nonnull @iio_map_list_lock) #11
  br label %41

41:                                               ; preds = %39, %2
  %42 = phi i32 [ %40, %39 ], [ 0, %2 ]
  ret i32 %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_map_array_unregister(ptr noundef readnone %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @iio_map_list_lock) #11
  %2 = load ptr, ptr @iio_map_list, align 4
  %3 = icmp eq ptr %2, @iio_map_list
  br i1 %3, label %18, label %4

4:                                                ; preds = %15, %1
  %5 = phi i32 [ %16, %15 ], [ -19, %1 ]
  %6 = phi ptr [ %8, %15 ], [ %2, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -8
  %8 = load ptr, ptr %6, align 4
  %9 = load ptr, ptr %7, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  store volatile ptr %8, ptr %13, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  tail call void @kfree(ptr noundef %7) #11
  br label %15

15:                                               ; preds = %11, %4
  %16 = phi i32 [ 0, %11 ], [ %5, %4 ]
  %17 = icmp eq ptr %8, @iio_map_list
  br i1 %17, label %18, label %4

18:                                               ; preds = %15, %1
  %19 = phi i32 [ -19, %1 ], [ %16, %15 ]
  tail call void @mutex_unlock(ptr noundef nonnull @iio_map_list_lock) #11
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_iio_map_array_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @iio_map_array_register(ptr noundef %1, ptr noundef %2)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @iio_map_array_unregister_cb, ptr noundef %1) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %6
  tail call void @mutex_lock(ptr noundef nonnull @iio_map_list_lock) #11
  %10 = load ptr, ptr @iio_map_list, align 4
  %11 = icmp eq ptr %10, @iio_map_list
  br i1 %11, label %24, label %12

12:                                               ; preds = %22, %9
  %13 = phi ptr [ %15, %22 ], [ %10, %9 ]
  %14 = getelementptr i8, ptr %13, i32 -8
  %15 = load ptr, ptr %13, align 4
  %16 = load ptr, ptr %14, align 4
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %15, ptr %20, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %19, align 4
  tail call void @kfree(ptr noundef %14) #11
  br label %22

22:                                               ; preds = %18, %12
  %23 = icmp eq ptr %15, @iio_map_list
  br i1 %23, label %24, label %12

24:                                               ; preds = %22, %9
  tail call void @mutex_unlock(ptr noundef nonnull @iio_map_list_lock) #11
  br label %25

25:                                               ; preds = %24, %6, %3
  %26 = phi i32 [ %4, %3 ], [ 0, %6 ], [ %7, %24 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iio_map_array_unregister_cb(ptr noundef readnone %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @iio_map_list_lock) #11
  %2 = load ptr, ptr @iio_map_list, align 4
  %3 = icmp eq ptr %2, @iio_map_list
  br i1 %3, label %16, label %4

4:                                                ; preds = %14, %1
  %5 = phi ptr [ %7, %14 ], [ %2, %1 ]
  %6 = getelementptr i8, ptr %5, i32 -8
  %7 = load ptr, ptr %5, align 4
  %8 = load ptr, ptr %6, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  store volatile ptr %7, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  tail call void @kfree(ptr noundef %6) #11
  br label %14

14:                                               ; preds = %10, %4
  %15 = icmp eq ptr %7, @iio_map_list
  br i1 %15, label %16, label %4

16:                                               ; preds = %14, %1
  tail call void @mutex_unlock(ptr noundef nonnull @iio_map_list_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_iio_channel_get_by_name(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %38, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br label %6

6:                                                ; preds = %35, %4
  %7 = phi ptr [ %0, %4 ], [ %33, %35 ]
  br i1 %5, label %11, label %8

8:                                                ; preds = %6
  %9 = tail call i32 @of_property_match_string(ptr noundef nonnull %7, ptr noundef nonnull @.str, ptr noundef nonnull %1) #11
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %8, %6
  %12 = phi i32 [ %9, %8 ], [ 0, %6 ]
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 12) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = tail call fastcc i32 @__of_iio_channel_get(ptr noundef nonnull %14, ptr noundef nonnull %7, i32 noundef %12) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  tail call void @kfree(ptr noundef nonnull %14) #11
  %20 = inttoptr i32 %17 to ptr
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi ptr [ %20, %19 ], [ %14, %16 ]
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = icmp eq ptr %22, inttoptr (i32 -517 to ptr)
  br i1 %25, label %38, label %26

26:                                               ; preds = %24, %11
  %27 = phi ptr [ %22, %24 ], [ inttoptr (i32 -12 to ptr), %11 ]
  br i1 %5, label %30, label %28

28:                                               ; preds = %26
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %7, ptr noundef nonnull %1, i32 noundef %12) #13
  br label %38

30:                                               ; preds = %26, %8
  %31 = phi ptr [ %27, %26 ], [ inttoptr (i32 -22 to ptr), %8 ]
  %32 = getelementptr inbounds %struct.device_node, ptr %7, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = tail call ptr @of_get_property(ptr noundef nonnull %33, ptr noundef nonnull @.str.3, ptr noundef null) #11
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %6

38:                                               ; preds = %35, %30, %28, %24, %21, %2
  %39 = phi ptr [ null, %28 ], [ null, %2 ], [ %22, %21 ], [ inttoptr (i32 -517 to ptr), %24 ], [ null, %35 ], [ %31, %30 ]
  ret ptr %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @iio_channel_get(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 4
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi ptr [ %6, %4 ], [ %9, %8 ]
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = tail call ptr @of_iio_channel_get_by_name(ptr noundef %13, ptr noundef %1)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %95

16:                                               ; preds = %10, %2
  %17 = phi ptr [ %11, %10 ], [ null, %2 ]
  %18 = icmp eq ptr %17, null
  %19 = icmp eq ptr %1, null
  %20 = and i1 %19, %18
  br i1 %20, label %95, label %21

21:                                               ; preds = %16
  tail call void @mutex_lock(ptr noundef nonnull @iio_map_list_lock) #11
  %22 = load ptr, ptr @iio_map_list, align 4
  %23 = icmp eq ptr %22, @iio_map_list
  br i1 %23, label %24, label %25

24:                                               ; preds = %49, %21
  tail call void @mutex_unlock(ptr noundef nonnull @iio_map_list_lock) #11
  br label %95

25:                                               ; preds = %49, %21
  %26 = phi ptr [ %50, %49 ], [ %22, %21 ]
  br i1 %18, label %34, label %27

27:                                               ; preds = %25
  %28 = getelementptr i8, ptr %26, i32 -4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.iio_map, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @strcmp(ptr noundef nonnull %17, ptr noundef %31) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %27, %25
  br i1 %19, label %42, label %35

35:                                               ; preds = %34
  %36 = getelementptr i8, ptr %26, i32 -4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.iio_map, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef %39) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35, %34
  %43 = getelementptr i8, ptr %26, i32 -8
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.iio_dev, ptr %44, i32 0, i32 2
  %48 = tail call ptr @get_device(ptr noundef %47) #11
  br label %52

49:                                               ; preds = %35, %27
  %50 = load ptr, ptr %26, align 4
  %51 = icmp eq ptr %50, @iio_map_list
  br i1 %51, label %24, label %25

52:                                               ; preds = %46, %42
  tail call void @mutex_unlock(ptr noundef nonnull @iio_map_list_lock) #11
  %53 = icmp eq ptr %43, null
  br i1 %53, label %95, label %54

54:                                               ; preds = %52
  %55 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %56 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3520, i32 noundef 12) #12
  %57 = icmp eq ptr %56, null
  br i1 %57, label %89, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %43, align 4
  store ptr %59, ptr %56, align 8
  %60 = getelementptr i8, ptr %26, i32 -4
  %61 = load ptr, ptr %60, align 4
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %95, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.iio_dev, ptr %59, i32 0, i32 14
  %66 = load i32, ptr %65, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.iio_dev, ptr %59, i32 0, i32 13
  %70 = load ptr, ptr %69, align 8
  br label %71

71:                                               ; preds = %79, %68
  %72 = phi i32 [ 0, %68 ], [ %80, %79 ]
  %73 = getelementptr %struct.iio_chan_spec, ptr %70, i32 %72, i32 18
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = tail call i32 @strcmp(ptr noundef nonnull %62, ptr noundef nonnull %74) #11
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %76, %71
  %80 = add nuw nsw i32 %72, 1
  %81 = icmp eq i32 %80, %66
  br i1 %81, label %82, label %71

82:                                               ; preds = %79, %64
  %83 = getelementptr inbounds %struct.iio_channel, ptr %56, i32 0, i32 1
  store ptr null, ptr %83, align 4
  br label %88

84:                                               ; preds = %76
  %85 = getelementptr %struct.iio_chan_spec, ptr %70, i32 %72
  %86 = getelementptr inbounds %struct.iio_channel, ptr %56, i32 0, i32 1
  store ptr %85, ptr %86, align 4
  %87 = icmp eq ptr %85, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %84, %82
  tail call void @kfree(ptr noundef nonnull %56) #11
  br label %89

89:                                               ; preds = %88, %54
  %90 = phi ptr [ inttoptr (i32 -22 to ptr), %88 ], [ inttoptr (i32 -12 to ptr), %54 ]
  %91 = load ptr, ptr %43, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.iio_dev, ptr %91, i32 0, i32 2
  tail call void @put_device(ptr noundef %94) #11
  br label %95

95:                                               ; preds = %93, %89, %84, %58, %52, %24, %16, %10
  %96 = phi ptr [ %14, %10 ], [ %56, %84 ], [ %56, %58 ], [ inttoptr (i32 -19 to ptr), %16 ], [ inttoptr (i32 -19 to ptr), %24 ], [ inttoptr (i32 -19 to ptr), %52 ], [ %90, %89 ], [ %90, %93 ]
  ret ptr %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iio_channel_release(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 2
  tail call void @put_device(ptr noundef %7) #11
  br label %8

8:                                                ; preds = %6, %3
  tail call void @kfree(ptr noundef nonnull %0) #11
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_iio_channel_get(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @iio_channel_get(ptr noundef %0, ptr noundef %1)
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_iio_channel_free, ptr noundef %3) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %5
  %9 = icmp eq ptr %3, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr %3, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.iio_dev, ptr %11, i32 0, i32 2
  tail call void @put_device(ptr noundef %14) #11
  br label %15

15:                                               ; preds = %13, %10
  tail call void @kfree(ptr noundef nonnull %3) #11
  br label %16

16:                                               ; preds = %15, %8
  %17 = inttoptr i32 %6 to ptr
  br label %18

18:                                               ; preds = %16, %5, %2
  %19 = phi ptr [ %17, %16 ], [ %3, %2 ], [ %3, %5 ]
  ret ptr %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_iio_channel_free(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 2
  tail call void @put_device(ptr noundef %7) #11
  br label %8

8:                                                ; preds = %6, %3
  tail call void @kfree(ptr noundef nonnull %0) #11
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_of_iio_channel_get_by_name(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @of_iio_channel_get_by_name(ptr noundef %1, ptr noundef %2)
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_iio_channel_free, ptr noundef %4) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %6
  %10 = icmp eq ptr %4, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = load ptr, ptr %4, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.iio_dev, ptr %12, i32 0, i32 2
  tail call void @put_device(ptr noundef %15) #11
  br label %16

16:                                               ; preds = %14, %11
  tail call void @kfree(ptr noundef nonnull %4) #11
  br label %17

17:                                               ; preds = %16, %9
  %18 = inttoptr i32 %7 to ptr
  br label %19

19:                                               ; preds = %17, %6, %3
  %20 = phi ptr [ %18, %17 ], [ %4, %3 ], [ %4, %6 ]
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @iio_channel_get_all(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %166, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  br label %5

5:                                                ; preds = %10, %3
  %6 = phi i32 [ 0, %3 ], [ %11, %10 ]
  %7 = load ptr, ptr %4, align 8
  %8 = tail call i32 @__of_parse_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef -1, i32 noundef %6, ptr noundef null) #11
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = add i32 %6, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %48, label %5

13:                                               ; preds = %5
  %14 = icmp eq i32 %6, 0
  br i1 %14, label %48, label %15

15:                                               ; preds = %13
  %16 = add i32 %6, 1
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 12) #11
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %166, label %19, !prof !8

19:                                               ; preds = %15
  %20 = extractvalue { i32, i1 } %17, 0
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %166, label %23

23:                                               ; preds = %19
  %24 = icmp sgt i32 %6, 0
  br i1 %24, label %25, label %166

25:                                               ; preds = %33, %23
  %26 = phi i32 [ %34, %33 ], [ 0, %23 ]
  %27 = getelementptr %struct.iio_channel, ptr %21, i32 %26
  %28 = load ptr, ptr %4, align 8
  %29 = tail call fastcc i32 @__of_iio_channel_get(ptr noundef %27, ptr noundef %28, i32 noundef %26) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = icmp eq i32 %26, 0
  br i1 %32, label %46, label %36

33:                                               ; preds = %25
  %34 = add nuw nsw i32 %26, 1
  %35 = icmp eq i32 %34, %6
  br i1 %35, label %166, label %25

36:                                               ; preds = %43, %31
  %37 = phi i32 [ %44, %43 ], [ 0, %31 ]
  %38 = getelementptr %struct.iio_channel, ptr %21, i32 %37
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.iio_dev, ptr %39, i32 0, i32 2
  tail call void @put_device(ptr noundef %42) #11
  br label %43

43:                                               ; preds = %41, %36
  %44 = add nuw nsw i32 %37, 1
  %45 = icmp eq i32 %44, %26
  br i1 %45, label %46, label %36

46:                                               ; preds = %43, %31
  tail call void @kfree(ptr noundef nonnull %21) #11
  %47 = inttoptr i32 %29 to ptr
  br label %166

48:                                               ; preds = %13, %10
  %49 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load ptr, ptr %0, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi ptr [ %53, %52 ], [ %50, %48 ]
  tail call void @mutex_lock(ptr noundef nonnull @iio_map_list_lock) #11
  %56 = load ptr, ptr @iio_map_list, align 4
  %57 = icmp eq ptr %56, @iio_map_list
  br i1 %57, label %163, label %58

58:                                               ; preds = %54
  %59 = icmp eq ptr %55, null
  br label %60

60:                                               ; preds = %72, %58
  %61 = phi ptr [ %56, %58 ], [ %74, %72 ]
  %62 = phi i32 [ 0, %58 ], [ %73, %72 ]
  br i1 %59, label %70, label %63

63:                                               ; preds = %60
  %64 = getelementptr i8, ptr %61, i32 -4
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.iio_map, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 @strcmp(ptr noundef nonnull %55, ptr noundef %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63, %60
  %71 = add i32 %62, 1
  br label %72

72:                                               ; preds = %70, %63
  %73 = phi i32 [ %62, %63 ], [ %71, %70 ]
  %74 = load ptr, ptr %61, align 4
  %75 = icmp eq ptr %74, @iio_map_list
  br i1 %75, label %76, label %60

76:                                               ; preds = %72
  %77 = icmp eq i32 %73, 0
  br i1 %77, label %163, label %78

78:                                               ; preds = %76
  %79 = add i32 %73, 1
  %80 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %79, i32 12) #11
  %81 = extractvalue { i32, i1 } %80, 1
  br i1 %81, label %163, label %82, !prof !8

82:                                               ; preds = %78
  %83 = extractvalue { i32, i1 } %80, 0
  %84 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %83, i32 noundef 3520) #14
  %85 = icmp eq ptr %84, null
  br i1 %85, label %163, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr @iio_map_list, align 4
  %88 = icmp eq ptr %87, @iio_map_list
  br i1 %88, label %149, label %89

89:                                               ; preds = %86
  %90 = icmp eq ptr %55, null
  br label %91

91:                                               ; preds = %142, %89
  %92 = phi ptr [ %87, %89 ], [ %144, %142 ]
  %93 = phi i32 [ 0, %89 ], [ %143, %142 ]
  %94 = getelementptr i8, ptr %92, i32 -8
  br i1 %90, label %102, label %95

95:                                               ; preds = %91
  %96 = getelementptr i8, ptr %92, i32 -4
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.iio_map, ptr %97, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = tail call i32 @strcmp(ptr noundef nonnull %55, ptr noundef %99)
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %142

102:                                              ; preds = %95, %91
  %103 = load ptr, ptr %94, align 4
  %104 = getelementptr %struct.iio_channel, ptr %84, i32 %93
  store ptr %103, ptr %104, align 4
  %105 = getelementptr i8, ptr %92, i32 -4
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.iio_map, ptr %106, i32 0, i32 3
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr %struct.iio_channel, ptr %84, i32 %93, i32 2
  store ptr %108, ptr %109, align 4
  %110 = load ptr, ptr %105, align 4
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.iio_dev, ptr %103, i32 0, i32 14
  %113 = load i32, ptr %112, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %102
  %116 = getelementptr inbounds %struct.iio_dev, ptr %103, i32 0, i32 13
  %117 = load ptr, ptr %116, align 8
  br label %118

118:                                              ; preds = %126, %115
  %119 = phi i32 [ 0, %115 ], [ %127, %126 ]
  %120 = getelementptr %struct.iio_chan_spec, ptr %117, i32 %119, i32 18
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %118
  %124 = tail call i32 @strcmp(ptr noundef %111, ptr noundef nonnull %121) #11
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %123, %118
  %127 = add nuw nsw i32 %119, 1
  %128 = icmp eq i32 %127, %113
  br i1 %128, label %129, label %118

129:                                              ; preds = %126, %102
  %130 = getelementptr %struct.iio_channel, ptr %84, i32 %93, i32 1
  store ptr null, ptr %130, align 4
  br label %149

131:                                              ; preds = %123
  %132 = getelementptr %struct.iio_chan_spec, ptr %117, i32 %119
  %133 = getelementptr %struct.iio_channel, ptr %84, i32 %93, i32 1
  store ptr %132, ptr %133, align 4
  %134 = icmp eq ptr %132, null
  br i1 %134, label %149, label %135

135:                                              ; preds = %131
  %136 = icmp eq ptr %103, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.iio_dev, ptr %103, i32 0, i32 2
  %139 = tail call ptr @get_device(ptr noundef %138) #11
  br label %140

140:                                              ; preds = %137, %135
  %141 = add i32 %93, 1
  br label %142

142:                                              ; preds = %140, %95
  %143 = phi i32 [ %93, %95 ], [ %141, %140 ]
  %144 = load ptr, ptr %92, align 4
  %145 = icmp eq ptr %144, @iio_map_list
  br i1 %145, label %146, label %91

146:                                              ; preds = %142
  %147 = icmp eq i32 %143, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %146
  tail call void @mutex_unlock(ptr noundef nonnull @iio_map_list_lock) #11
  br label %166

149:                                              ; preds = %146, %131, %129, %86
  %150 = phi i32 [ -19, %146 ], [ -22, %129 ], [ -19, %86 ], [ -22, %131 ]
  %151 = icmp sgt i32 %73, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %159, %149
  %153 = phi i32 [ %160, %159 ], [ 0, %149 ]
  %154 = getelementptr %struct.iio_channel, ptr %84, i32 %153
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %159, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.iio_dev, ptr %155, i32 0, i32 2
  tail call void @put_device(ptr noundef %158) #11
  br label %159

159:                                              ; preds = %157, %152
  %160 = add nuw nsw i32 %153, 1
  %161 = icmp eq i32 %160, %73
  br i1 %161, label %162, label %152

162:                                              ; preds = %159, %149
  tail call void @kfree(ptr noundef nonnull %84) #11
  br label %163

163:                                              ; preds = %162, %82, %78, %76, %54
  %164 = phi i32 [ %150, %162 ], [ -19, %76 ], [ -12, %82 ], [ -12, %78 ], [ -19, %54 ]
  tail call void @mutex_unlock(ptr noundef nonnull @iio_map_list_lock) #11
  %165 = inttoptr i32 %164 to ptr
  br label %166

166:                                              ; preds = %163, %148, %46, %33, %23, %19, %15, %1
  %167 = phi ptr [ %165, %163 ], [ %84, %148 ], [ inttoptr (i32 -22 to ptr), %1 ], [ inttoptr (i32 -12 to ptr), %19 ], [ inttoptr (i32 -12 to ptr), %15 ], [ %47, %46 ], [ %21, %23 ], [ %21, %33 ]
  ret ptr %167
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iio_channel_release_all(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %9, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %8, %4 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 2
  tail call void @put_device(ptr noundef %7) #11
  %8 = getelementptr %struct.iio_channel, ptr %6, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4

11:                                               ; preds = %4, %1
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_iio_channel_get_all(ptr noundef %0) #0 {
  %2 = tail call ptr @iio_channel_get_all(ptr noundef %0)
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_iio_channel_free_all, ptr noundef %2) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %15, %10 ], [ %8, %7 ]
  %12 = phi ptr [ %14, %10 ], [ %2, %7 ]
  %13 = getelementptr inbounds %struct.iio_dev, ptr %11, i32 0, i32 2
  tail call void @put_device(ptr noundef %13) #11
  %14 = getelementptr %struct.iio_channel, ptr %12, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %10

17:                                               ; preds = %10, %7
  tail call void @kfree(ptr noundef %2) #11
  %18 = inttoptr i32 %5 to ptr
  br label %19

19:                                               ; preds = %17, %4, %1
  %20 = phi ptr [ %18, %17 ], [ %2, %1 ], [ %2, %4 ]
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_iio_channel_free_all(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %9, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %8, %4 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 2
  tail call void @put_device(ptr noundef %7) #11
  %8 = getelementptr %struct.iio_channel, ptr %6, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4

11:                                               ; preds = %4, %1
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_read_channel_raw(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [4 x i32], align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.iio_dev_opaque, ptr %6, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %7) #11
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.iio_dev, ptr %8, i32 0, i32 17
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %41, label %12

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #11, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 2, ptr %5, align 4
  %13 = getelementptr inbounds %struct.iio_channel, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.iio_chan_spec, ptr %14, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.iio_chan_spec, ptr %14, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, %16
  %20 = getelementptr inbounds %struct.iio_chan_spec, ptr %14, i32 0, i32 10
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %19, %21
  %23 = getelementptr inbounds %struct.iio_chan_spec, ptr %14, i32 0, i32 12
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %22, %24
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %12
  %29 = getelementptr inbounds %struct.iio_info, ptr %10, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = call i32 %30(ptr noundef %8, ptr noundef %14, i32 noundef 4, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0) #11
  %34 = load i32, ptr %4, align 4
  store i32 %34, ptr %1, align 4
  br label %39

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.iio_info, ptr %10, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 %37(ptr noundef %8, ptr noundef %14, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 0) #11
  br label %39

39:                                               ; preds = %35, %32, %12
  %40 = phi i32 [ -22, %12 ], [ %33, %32 ], [ %38, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %41

41:                                               ; preds = %39, %2
  %42 = phi i32 [ %40, %39 ], [ -19, %2 ]
  call void @mutex_unlock(ptr noundef %7) #11
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_read_channel_average_raw(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [4 x i32], align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.iio_dev_opaque, ptr %6, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %7) #11
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.iio_dev, ptr %8, i32 0, i32 17
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %41, label %12

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #11, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 2, ptr %5, align 4
  %13 = getelementptr inbounds %struct.iio_channel, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.iio_chan_spec, ptr %14, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.iio_chan_spec, ptr %14, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, %16
  %20 = getelementptr inbounds %struct.iio_chan_spec, ptr %14, i32 0, i32 10
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %19, %21
  %23 = getelementptr inbounds %struct.iio_chan_spec, ptr %14, i32 0, i32 12
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %22, %24
  %26 = and i32 %25, 512
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %12
  %29 = getelementptr inbounds %struct.iio_info, ptr %10, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = call i32 %30(ptr noundef %8, ptr noundef %14, i32 noundef 4, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 9) #11
  %34 = load i32, ptr %4, align 4
  store i32 %34, ptr %1, align 4
  br label %39

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.iio_info, ptr %10, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 %37(ptr noundef %8, ptr noundef %14, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 9) #11
  br label %39

39:                                               ; preds = %35, %32, %12
  %40 = phi i32 [ -22, %12 ], [ %33, %32 ], [ %38, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %41

41:                                               ; preds = %39, %2
  %42 = phi i32 [ %40, %39 ], [ -19, %2 ]
  call void @mutex_unlock(ptr noundef %7) #11
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_convert_raw_to_processed(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.iio_dev_opaque, ptr %5, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %6) #11
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 17
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = tail call fastcc i32 @iio_convert_raw_to_processed_unlocked(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  br label %13

13:                                               ; preds = %11, %4
  %14 = phi i32 [ %12, %11 ], [ -19, %4 ]
  tail call void @mutex_unlock(ptr noundef %6) #11
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @iio_convert_raw_to_processed_unlocked(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #11
  store i32 0, ptr %13, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #11
  store i32 0, ptr %14, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #11
  store i32 0, ptr %15, align 4, !annotation !9
  %16 = sext i32 %1 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  store i32 0, ptr %10, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %11, i8 0, i32 16, i1 false) #11, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  store i32 2, ptr %12, align 4
  %17 = getelementptr inbounds %struct.iio_channel, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.iio_chan_spec, ptr %18, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.iio_chan_spec, ptr %18, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = or i32 %22, %20
  %24 = getelementptr inbounds %struct.iio_chan_spec, ptr %18, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %23, %25
  %27 = getelementptr inbounds %struct.iio_chan_spec, ptr %18, i32 0, i32 12
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %26, %28
  %30 = and i32 %29, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  br label %67

33:                                               ; preds = %4
  %34 = load ptr, ptr %0, align 4
  %35 = getelementptr inbounds %struct.iio_dev, ptr %34, i32 0, i32 17
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.iio_info, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = call i32 %38(ptr noundef %34, ptr noundef %18, i32 noundef 4, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef 3) #11
  %42 = load i32, ptr %11, align 4
  store i32 %42, ptr %15, align 4
  br label %48

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.iio_info, ptr %36, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = call i32 %45(ptr noundef %34, ptr noundef %18, ptr noundef nonnull %15, ptr noundef nonnull %10, i32 noundef 3) #11
  %47 = load i32, ptr %15, align 4
  br label %48

48:                                               ; preds = %43, %40
  %49 = phi i32 [ %42, %40 ], [ %47, %43 ]
  %50 = phi i32 [ %41, %40 ], [ %46, %43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  %51 = icmp slt i32 %50, 0
  %52 = select i1 %51, i32 0, i32 %49
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %16
  %55 = load ptr, ptr %17, align 4
  %56 = getelementptr inbounds %struct.iio_chan_spec, ptr %55, i32 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.iio_chan_spec, ptr %55, i32 0, i32 8
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.iio_chan_spec, ptr %55, i32 0, i32 10
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.iio_chan_spec, ptr %55, i32 0, i32 12
  %63 = load i32, ptr %62, align 4
  %64 = or i32 %59, %57
  %65 = or i32 %64, %61
  %66 = or i32 %65, %63
  br label %67

67:                                               ; preds = %48, %32
  %68 = phi i32 [ %66, %48 ], [ %29, %32 ]
  %69 = phi ptr [ %55, %48 ], [ %18, %32 ]
  %70 = phi i64 [ %54, %48 ], [ %16, %32 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i32 16, i1 false) #11, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  store i32 2, ptr %9, align 4
  %71 = and i32 %68, 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  br label %149

74:                                               ; preds = %67
  %75 = load ptr, ptr %0, align 4
  %76 = getelementptr inbounds %struct.iio_dev, ptr %75, i32 0, i32 17
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.iio_info, ptr %77, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %74
  %82 = call i32 %79(ptr noundef %75, ptr noundef %69, i32 noundef 4, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 2) #11
  %83 = load i32, ptr %8, align 4
  store i32 %83, ptr %13, align 4
  %84 = getelementptr inbounds [4 x i32], ptr %8, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  store i32 %85, ptr %14, align 4
  br label %90

86:                                               ; preds = %74
  %87 = getelementptr inbounds %struct.iio_info, ptr %77, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = call i32 %88(ptr noundef %75, ptr noundef %69, ptr noundef nonnull %13, ptr noundef nonnull %14, i32 noundef 2) #11
  br label %90

90:                                               ; preds = %86, %81
  %91 = phi i32 [ %82, %81 ], [ %89, %86 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %149, label %93

93:                                               ; preds = %90
  switch i32 %91, label %151 [
    i32 1, label %94
    i32 2, label %98
    i32 3, label %114
    i32 10, label %130
    i32 11, label %139
  ]

94:                                               ; preds = %93
  %95 = load i32, ptr %13, align 4
  %96 = trunc i64 %70 to i32
  %97 = mul i32 %95, %96
  br label %149

98:                                               ; preds = %93
  %99 = load i32, ptr %14, align 4
  %100 = icmp slt i32 %99, 0
  %101 = load i32, ptr %13, align 4
  %102 = trunc i64 %70 to i32
  %103 = mul i32 %101, %102
  %104 = sub i32 0, %103
  %105 = select i1 %100, i32 %104, i32 %103
  store i32 %105, ptr %2, align 4
  %106 = sext i32 %99 to i64
  %107 = zext i32 %3 to i64
  %108 = mul i64 %70, %107
  %109 = mul i64 %108, %106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4, !annotation !9
  %110 = call i64 @div_s64_rem(i64 noundef %109, i32 noundef 1000000, ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  %111 = load i32, ptr %2, align 4
  %112 = trunc i64 %110 to i32
  %113 = add i32 %111, %112
  br label %149

114:                                              ; preds = %93
  %115 = load i32, ptr %14, align 4
  %116 = icmp slt i32 %115, 0
  %117 = load i32, ptr %13, align 4
  %118 = trunc i64 %70 to i32
  %119 = mul i32 %117, %118
  %120 = sub i32 0, %119
  %121 = select i1 %116, i32 %120, i32 %119
  store i32 %121, ptr %2, align 4
  %122 = sext i32 %115 to i64
  %123 = zext i32 %3 to i64
  %124 = mul i64 %70, %123
  %125 = mul i64 %124, %122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !9
  %126 = call i64 @div_s64_rem(i64 noundef %125, i32 noundef 1000000000, ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  %127 = load i32, ptr %2, align 4
  %128 = trunc i64 %126 to i32
  %129 = add i32 %127, %128
  br label %149

130:                                              ; preds = %93
  %131 = load i32, ptr %13, align 4
  %132 = sext i32 %131 to i64
  %133 = zext i32 %3 to i64
  %134 = mul i64 %70, %133
  %135 = mul i64 %134, %132
  %136 = load i32, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !9
  %137 = call i64 @div_s64_rem(i64 noundef %135, i32 noundef %136, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  %138 = trunc i64 %137 to i32
  br label %149

139:                                              ; preds = %93
  %140 = load i32, ptr %13, align 4
  %141 = sext i32 %140 to i64
  %142 = zext i32 %3 to i64
  %143 = mul i64 %70, %142
  %144 = mul i64 %143, %141
  %145 = load i32, ptr %14, align 4
  %146 = zext i32 %145 to i64
  %147 = ashr i64 %144, %146
  %148 = trunc i64 %147 to i32
  br label %149

149:                                              ; preds = %139, %130, %114, %98, %94, %90, %73
  %150 = phi i32 [ %97, %94 ], [ %113, %98 ], [ %129, %114 ], [ %138, %130 ], [ %148, %139 ], [ %1, %73 ], [ %1, %90 ]
  store i32 %150, ptr %2, align 4
  br label %151

151:                                              ; preds = %149, %93
  %152 = phi i32 [ -22, %93 ], [ 0, %149 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #11
  ret i32 %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_read_channel_attribute(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 4
  %7 = alloca i32, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.iio_dev_opaque, ptr %8, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %9) #11
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.iio_dev, ptr %10, i32 0, i32 17
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %48, label %14

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false) #11, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 2, ptr %7, align 4
  %15 = icmp eq ptr %2, null
  %16 = select i1 %15, ptr %5, ptr %2
  %17 = getelementptr inbounds %struct.iio_channel, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.iio_chan_spec, ptr %18, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = shl nuw i32 1, %3
  %22 = getelementptr inbounds %struct.iio_chan_spec, ptr %18, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %23, %20
  %25 = getelementptr inbounds %struct.iio_chan_spec, ptr %18, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %24, %26
  %28 = getelementptr inbounds %struct.iio_chan_spec, ptr %18, i32 0, i32 12
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %27, %29
  %31 = and i32 %30, %21
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %14
  %34 = getelementptr inbounds %struct.iio_info, ptr %12, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = call i32 %35(ptr noundef %10, ptr noundef %18, i32 noundef 4, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %3) #11
  %39 = load i32, ptr %6, align 4
  store i32 %39, ptr %1, align 4
  %40 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  store i32 %41, ptr %16, align 4
  br label %46

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.iio_info, ptr %12, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = call i32 %44(ptr noundef %10, ptr noundef %18, ptr noundef %1, ptr noundef nonnull %16, i32 noundef %3) #11
  br label %46

46:                                               ; preds = %42, %37, %14
  %47 = phi i32 [ -22, %14 ], [ %38, %37 ], [ %45, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  br label %48

48:                                               ; preds = %46, %4
  %49 = phi i32 [ %47, %46 ], [ -19, %4 ]
  call void @mutex_unlock(ptr noundef %9) #11
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_read_channel_offset(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @iio_read_channel_attribute(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 3)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_read_channel_processed_scale(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 4
  %9 = alloca i32, align 4
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.iio_dev_opaque, ptr %10, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %11) #11
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.iio_dev, ptr %12, i32 0, i32 17
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %70, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.iio_channel, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.iio_chan_spec, ptr %18, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.iio_chan_spec, ptr %18, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = or i32 %22, %20
  %24 = getelementptr inbounds %struct.iio_chan_spec, ptr %18, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %23, %25
  %27 = getelementptr inbounds %struct.iio_chan_spec, ptr %18, i32 0, i32 12
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %26, %28
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i32 16, i1 false) #11, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  store i32 2, ptr %9, align 4
  %33 = getelementptr inbounds %struct.iio_info, ptr %14, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = call i32 %34(ptr noundef %12, ptr noundef %18, i32 noundef 4, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef 1) #11
  %38 = load i32, ptr %8, align 4
  store i32 %38, ptr %1, align 4
  br label %43

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.iio_info, ptr %14, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 %41(ptr noundef %12, ptr noundef %18, ptr noundef %1, ptr noundef nonnull %7, i32 noundef 1) #11
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi i32 [ %37, %36 ], [ %42, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %70, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr %1, align 4
  %48 = mul i32 %47, %2
  store i32 %48, ptr %1, align 4
  br label %70

49:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false) #11, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 2, ptr %6, align 4
  %50 = and i32 %29, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %70

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.iio_info, ptr %14, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = call i32 %55(ptr noundef %12, ptr noundef %18, i32 noundef 4, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #11
  %59 = load i32, ptr %5, align 4
  store i32 %59, ptr %1, align 4
  br label %64

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.iio_info, ptr %14, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 %62(ptr noundef %12, ptr noundef %18, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 0) #11
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi i32 [ %58, %57 ], [ %63, %60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, ptr %1, align 4
  %69 = call fastcc i32 @iio_convert_raw_to_processed_unlocked(ptr noundef %0, i32 noundef %68, ptr noundef %1, i32 noundef %2)
  br label %70

70:                                               ; preds = %67, %64, %52, %46, %43, %3
  %71 = phi i32 [ %44, %43 ], [ %44, %46 ], [ %65, %64 ], [ %69, %67 ], [ -19, %3 ], [ -22, %52 ]
  call void @mutex_unlock(ptr noundef %11) #11
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_read_channel_processed(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = tail call i32 @iio_read_channel_processed_scale(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_read_channel_scale(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @iio_read_channel_attribute(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 2)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_read_avail_channel_attribute(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.iio_dev_opaque, ptr %6, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %7) #11
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.iio_dev, ptr %8, i32 0, i32 17
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.iio_channel, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.iio_chan_spec, ptr %14, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = shl nuw i32 1, %4
  %18 = getelementptr inbounds %struct.iio_chan_spec, ptr %14, i32 0, i32 9
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %19, %16
  %21 = getelementptr inbounds %struct.iio_chan_spec, ptr %14, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = or i32 %20, %22
  %24 = getelementptr inbounds %struct.iio_chan_spec, ptr %14, i32 0, i32 13
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %23, %25
  %27 = and i32 %26, %17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %12
  %30 = getelementptr inbounds %struct.iio_info, ptr %10, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef %8, ptr noundef %14, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #11
  br label %33

33:                                               ; preds = %29, %12, %5
  %34 = phi i32 [ -19, %5 ], [ %32, %29 ], [ -22, %12 ]
  tail call void @mutex_unlock(ptr noundef %7) #11
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_read_avail_channel_raw(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.iio_dev_opaque, ptr %5, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %6) #11
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 17
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.iio_channel, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.iio_chan_spec, ptr %13, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.iio_chan_spec, ptr %13, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, %15
  %19 = getelementptr inbounds %struct.iio_chan_spec, ptr %13, i32 0, i32 11
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %18, %20
  %22 = getelementptr inbounds %struct.iio_chan_spec, ptr %13, i32 0, i32 13
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %21, %23
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %11
  %28 = getelementptr inbounds %struct.iio_info, ptr %9, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 %29(ptr noundef %7, ptr noundef %13, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %2, i32 noundef 0) #11
  br label %31

31:                                               ; preds = %27, %11, %3
  %32 = phi i32 [ -19, %3 ], [ %30, %27 ], [ -22, %11 ]
  call void @mutex_unlock(ptr noundef %6) #11
  %33 = icmp sgt i32 %32, -1
  %34 = load i32, ptr %4, align 4
  %35 = icmp ne i32 %34, 1
  %36 = select i1 %33, i1 %35, i1 false
  %37 = select i1 %36, i32 -22, i32 %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_read_max_channel_raw(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.iio_dev_opaque, ptr %6, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %7) #11
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.iio_dev, ptr %8, i32 0, i32 17
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %64, label %12

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !9
  %13 = getelementptr inbounds %struct.iio_channel, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.iio_chan_spec, ptr %14, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.iio_chan_spec, ptr %14, i32 0, i32 9
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, %16
  %20 = getelementptr inbounds %struct.iio_chan_spec, ptr %14, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %19, %21
  %23 = getelementptr inbounds %struct.iio_chan_spec, ptr %14, i32 0, i32 13
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %22, %24
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %62, label %28

28:                                               ; preds = %12
  %29 = getelementptr inbounds %struct.iio_info, ptr %10, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 %30(ptr noundef %8, ptr noundef %14, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 0) #11
  switch i32 %31, label %62 [
    i32 1, label %32
    i32 0, label %39
  ]

32:                                               ; preds = %28
  %33 = load i32, ptr %5, align 4
  %34 = icmp eq i32 %33, 1
  %35 = load ptr, ptr %3, align 4
  %36 = select i1 %34, i32 2, i32 4
  %37 = getelementptr i32, ptr %35, i32 %36
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %1, align 4
  br label %62

39:                                               ; preds = %28
  %40 = load i32, ptr %4, align 4
  %41 = icmp sgt i32 %40, 0
  %42 = load i32, ptr %5, align 4
  %43 = icmp eq i32 %42, 1
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %62

45:                                               ; preds = %39
  %46 = load ptr, ptr %3, align 4
  %47 = add nsw i32 %40, -1
  store i32 %47, ptr %4, align 4
  %48 = getelementptr i32, ptr %46, i32 %47
  %49 = load i32, ptr %48, align 4
  store i32 %49, ptr %1, align 4
  %50 = icmp eq i32 %47, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %59, %45
  %52 = phi i32 [ %60, %59 ], [ %49, %45 ]
  %53 = phi i32 [ %54, %59 ], [ %47, %45 ]
  %54 = add i32 %53, -1
  store i32 %54, ptr %4, align 4
  %55 = getelementptr i32, ptr %46, i32 %54
  %56 = load i32, ptr %55, align 4
  %57 = icmp sgt i32 %56, %52
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 %56, ptr %1, align 4
  br label %59

59:                                               ; preds = %58, %51
  %60 = phi i32 [ %56, %58 ], [ %52, %51 ]
  %61 = icmp eq i32 %54, 0
  br i1 %61, label %62, label %51

62:                                               ; preds = %59, %45, %39, %32, %28, %12
  %63 = phi i32 [ 0, %32 ], [ -22, %39 ], [ %31, %28 ], [ -22, %12 ], [ 0, %45 ], [ 0, %59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %64

64:                                               ; preds = %62, %2
  %65 = phi i32 [ %63, %62 ], [ -19, %2 ]
  call void @mutex_unlock(ptr noundef %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_get_channel_type(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.iio_dev_opaque, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #11
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.iio_channel, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %1, align 4
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i32 [ 0, %9 ], [ -19, %2 ]
  tail call void @mutex_unlock(ptr noundef %4) #11
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_write_channel_attribute(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.iio_dev_opaque, ptr %5, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %6) #11
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 17
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.iio_info, ptr %9, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.iio_channel, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %13(ptr noundef %7, ptr noundef %15, i32 noundef %1, i32 noundef %2, i32 noundef %3) #11
  br label %17

17:                                               ; preds = %11, %4
  %18 = phi i32 [ %16, %11 ], [ -19, %4 ]
  tail call void @mutex_unlock(ptr noundef %6) #11
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_write_channel_raw(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.iio_dev_opaque, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #11
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.iio_info, ptr %7, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.iio_channel, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %11(ptr noundef %5, ptr noundef %13, i32 noundef %1, i32 noundef 0, i32 noundef 0) #11
  br label %15

15:                                               ; preds = %9, %2
  %16 = phi i32 [ %14, %9 ], [ -19, %2 ]
  tail call void @mutex_unlock(ptr noundef %4) #11
  ret i32 %16
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @iio_get_channel_ext_info_count(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.iio_channel, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.iio_chan_spec, ptr %3, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %10, %7
  %11 = phi i32 [ %13, %10 ], [ 0, %7 ]
  %12 = phi ptr [ %14, %10 ], [ %5, %7 ]
  %13 = add i32 %11, 1
  %14 = getelementptr %struct.iio_chan_spec_ext_info, ptr %12, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %10

17:                                               ; preds = %10, %7, %1
  %18 = phi i32 [ 0, %1 ], [ 0, %7 ], [ %13, %10 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_read_channel_ext_info(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.iio_channel, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.iio_chan_spec, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %7, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %17, %9
  %13 = phi ptr [ %19, %17 ], [ %10, %9 ]
  %14 = phi ptr [ %18, %17 ], [ %7, %9 ]
  %15 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull %13) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr %struct.iio_chan_spec_ext_info, ptr %14, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %12

21:                                               ; preds = %12
  %22 = icmp eq ptr %14, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.iio_chan_spec_ext_info, ptr %14, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.iio_chan_spec_ext_info, ptr %14, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 %25(ptr noundef %26, i32 noundef %28, ptr noundef %5, ptr noundef %2) #11
  br label %30

30:                                               ; preds = %23, %21, %17, %9, %3
  %31 = phi i32 [ %29, %23 ], [ -22, %21 ], [ -22, %3 ], [ -22, %9 ], [ -22, %17 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_write_channel_ext_info(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.iio_channel, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.iio_chan_spec, ptr %6, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %31, label %13

13:                                               ; preds = %18, %10
  %14 = phi ptr [ %20, %18 ], [ %11, %10 ]
  %15 = phi ptr [ %19, %18 ], [ %8, %10 ]
  %16 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull %14) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr %struct.iio_chan_spec_ext_info, ptr %15, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %13

22:                                               ; preds = %13
  %23 = icmp eq ptr %15, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.iio_chan_spec_ext_info, ptr %15, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %0, align 4
  %28 = getelementptr inbounds %struct.iio_chan_spec_ext_info, ptr %15, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 %26(ptr noundef %27, i32 noundef %29, ptr noundef %6, ptr noundef %2, i32 noundef %3) #11
  br label %31

31:                                               ; preds = %24, %22, %18, %10, %4
  %32 = phi i32 [ %30, %24 ], [ -22, %22 ], [ -22, %4 ], [ -22, %10 ], [ -22, %18 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__of_iio_channel_get(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false), !annotation !9
  %5 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef -1, i32 noundef %2, ptr noundef nonnull %4) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %45

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 4
  %9 = call ptr @bus_find_device(ptr noundef nonnull @iio_bus_type, ptr noundef null, ptr noundef %8, ptr noundef nonnull @iio_dev_node_match) #11
  %10 = load ptr, ptr %4, align 4
  call void @of_node_put(ptr noundef %10) #11
  %11 = icmp eq ptr %9, null
  br i1 %11, label %45, label %12

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %9, i32 -8
  store ptr %13, ptr %0, align 4
  %14 = getelementptr i8, ptr %9, i32 544
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.iio_info, ptr %15, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = call i32 %17(ptr noundef %13, ptr noundef nonnull %4) #11
  br label %32

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.of_phandle_args, ptr %4, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.of_phandle_args, ptr %4, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %9, i32 532
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %27, %29
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %9, ptr noundef nonnull @.str.6, i32 noundef %27) #13
  br label %41

32:                                               ; preds = %25, %19
  %33 = phi i32 [ %20, %19 ], [ %27, %25 ]
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32, %21
  %36 = phi i32 [ %33, %32 ], [ 0, %21 ]
  %37 = getelementptr i8, ptr %9, i32 528
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr %struct.iio_chan_spec, ptr %38, i32 %36
  %40 = getelementptr inbounds %struct.iio_channel, ptr %0, i32 0, i32 1
  store ptr %39, ptr %40, align 4
  br label %45

41:                                               ; preds = %32, %31
  %42 = phi i32 [ -22, %31 ], [ %33, %32 ]
  %43 = icmp eq ptr %13, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  call void @put_device(ptr noundef nonnull %9) #11
  br label %45

45:                                               ; preds = %44, %41, %35, %7, %3
  %46 = phi i32 [ 0, %35 ], [ %5, %3 ], [ -517, %7 ], [ %42, %41 ], [ %42, %44 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret i32 %46
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @iio_dev_node_match(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #9 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, @iio_device_type
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %2 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
