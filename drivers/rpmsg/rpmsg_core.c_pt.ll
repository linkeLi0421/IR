; ModuleID = '/llk/IR/drivers/rpmsg/rpmsg_core.c_pt.bc'
source_filename = "../drivers/rpmsg/rpmsg_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpmsg_create_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22rpmsg_create_channel\22\09\09\09\09\09"
module asm "__kstrtabns_rpmsg_create_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpmsg_release_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22rpmsg_release_channel\22\09\09\09\09\09"
module asm "__kstrtabns_rpmsg_release_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpmsg_create_ept:\09\09\09\09\09"
module asm "\09.asciz \09\22rpmsg_create_ept\22\09\09\09\09\09"
module asm "__kstrtabns_rpmsg_create_ept:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpmsg_destroy_ept:\09\09\09\09\09"
module asm "\09.asciz \09\22rpmsg_destroy_ept\22\09\09\09\09\09"
module asm "__kstrtabns_rpmsg_destroy_ept:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpmsg_send:\09\09\09\09\09"
module asm "\09.asciz \09\22rpmsg_send\22\09\09\09\09\09"
module asm "__kstrtabns_rpmsg_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpmsg_sendto:\09\09\09\09\09"
module asm "\09.asciz \09\22rpmsg_sendto\22\09\09\09\09\09"
module asm "__kstrtabns_rpmsg_sendto:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpmsg_send_offchannel:\09\09\09\09\09"
module asm "\09.asciz \09\22rpmsg_send_offchannel\22\09\09\09\09\09"
module asm "__kstrtabns_rpmsg_send_offchannel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpmsg_trysend:\09\09\09\09\09"
module asm "\09.asciz \09\22rpmsg_trysend\22\09\09\09\09\09"
module asm "__kstrtabns_rpmsg_trysend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpmsg_trysendto:\09\09\09\09\09"
module asm "\09.asciz \09\22rpmsg_trysendto\22\09\09\09\09\09"
module asm "__kstrtabns_rpmsg_trysendto:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpmsg_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22rpmsg_poll\22\09\09\09\09\09"
module asm "__kstrtabns_rpmsg_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpmsg_trysend_offchannel:\09\09\09\09\09"
module asm "\09.asciz \09\22rpmsg_trysend_offchannel\22\09\09\09\09\09"
module asm "__kstrtabns_rpmsg_trysend_offchannel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpmsg_get_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22rpmsg_get_mtu\22\09\09\09\09\09"
module asm "__kstrtabns_rpmsg_get_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpmsg_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22rpmsg_find_device\22\09\09\09\09\09"
module asm "__kstrtabns_rpmsg_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpmsg_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22rpmsg_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_rpmsg_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpmsg_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22rpmsg_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_rpmsg_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___register_rpmsg_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22__register_rpmsg_driver\22\09\09\09\09\09"
module asm "__kstrtabns___register_rpmsg_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_rpmsg_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_rpmsg_driver\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_rpmsg_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.rpmsg_device = type { %struct.device, %struct.rpmsg_device_id, ptr, i32, i32, ptr, i8, i8, ptr }
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
%struct.rpmsg_device_id = type { [32 x i8], i32 }
%struct.rpmsg_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.rpmsg_endpoint = type { ptr, %struct.kref, ptr, %struct.mutex, i32, ptr, ptr }
%struct.rpmsg_endpoint_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpmsg_channel_info = type { [32 x i8], i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpmsg_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [27 x i8] c"drivers/rpmsg/rpmsg_core.c\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"no create_channel ops found\0A\00", align 1
@__kstrtab_rpmsg_create_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpmsg_create_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_rpmsg_create_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpmsg_create_channel to i32), ptr @__kstrtab_rpmsg_create_channel, ptr @__kstrtabns_rpmsg_create_channel }, section "___ksymtab+rpmsg_create_channel", align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"no release_channel ops found\0A\00", align 1
@__kstrtab_rpmsg_release_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpmsg_release_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_rpmsg_release_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpmsg_release_channel to i32), ptr @__kstrtab_rpmsg_release_channel, ptr @__kstrtabns_rpmsg_release_channel }, section "___ksymtab+rpmsg_release_channel", align 4
@__kstrtab_rpmsg_create_ept = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpmsg_create_ept = external dso_local constant [0 x i8], align 1
@__ksymtab_rpmsg_create_ept = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpmsg_create_ept to i32), ptr @__kstrtab_rpmsg_create_ept, ptr @__kstrtabns_rpmsg_create_ept }, section "___ksymtab+rpmsg_create_ept", align 4
@__kstrtab_rpmsg_destroy_ept = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpmsg_destroy_ept = external dso_local constant [0 x i8], align 1
@__ksymtab_rpmsg_destroy_ept = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpmsg_destroy_ept to i32), ptr @__kstrtab_rpmsg_destroy_ept, ptr @__kstrtabns_rpmsg_destroy_ept }, section "___ksymtab+rpmsg_destroy_ept", align 4
@__kstrtab_rpmsg_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpmsg_send = external dso_local constant [0 x i8], align 1
@__ksymtab_rpmsg_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpmsg_send to i32), ptr @__kstrtab_rpmsg_send, ptr @__kstrtabns_rpmsg_send }, section "___ksymtab+rpmsg_send", align 4
@__kstrtab_rpmsg_sendto = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpmsg_sendto = external dso_local constant [0 x i8], align 1
@__ksymtab_rpmsg_sendto = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpmsg_sendto to i32), ptr @__kstrtab_rpmsg_sendto, ptr @__kstrtabns_rpmsg_sendto }, section "___ksymtab+rpmsg_sendto", align 4
@__kstrtab_rpmsg_send_offchannel = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpmsg_send_offchannel = external dso_local constant [0 x i8], align 1
@__ksymtab_rpmsg_send_offchannel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpmsg_send_offchannel to i32), ptr @__kstrtab_rpmsg_send_offchannel, ptr @__kstrtabns_rpmsg_send_offchannel }, section "___ksymtab+rpmsg_send_offchannel", align 4
@__kstrtab_rpmsg_trysend = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpmsg_trysend = external dso_local constant [0 x i8], align 1
@__ksymtab_rpmsg_trysend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpmsg_trysend to i32), ptr @__kstrtab_rpmsg_trysend, ptr @__kstrtabns_rpmsg_trysend }, section "___ksymtab+rpmsg_trysend", align 4
@__kstrtab_rpmsg_trysendto = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpmsg_trysendto = external dso_local constant [0 x i8], align 1
@__ksymtab_rpmsg_trysendto = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpmsg_trysendto to i32), ptr @__kstrtab_rpmsg_trysendto, ptr @__kstrtabns_rpmsg_trysendto }, section "___ksymtab+rpmsg_trysendto", align 4
@__kstrtab_rpmsg_poll = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpmsg_poll = external dso_local constant [0 x i8], align 1
@__ksymtab_rpmsg_poll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpmsg_poll to i32), ptr @__kstrtab_rpmsg_poll, ptr @__kstrtabns_rpmsg_poll }, section "___ksymtab+rpmsg_poll", align 4
@__kstrtab_rpmsg_trysend_offchannel = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpmsg_trysend_offchannel = external dso_local constant [0 x i8], align 1
@__ksymtab_rpmsg_trysend_offchannel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpmsg_trysend_offchannel to i32), ptr @__kstrtab_rpmsg_trysend_offchannel, ptr @__kstrtabns_rpmsg_trysend_offchannel }, section "___ksymtab+rpmsg_trysend_offchannel", align 4
@__kstrtab_rpmsg_get_mtu = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpmsg_get_mtu = external dso_local constant [0 x i8], align 1
@__ksymtab_rpmsg_get_mtu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpmsg_get_mtu to i32), ptr @__kstrtab_rpmsg_get_mtu, ptr @__kstrtabns_rpmsg_get_mtu }, section "___ksymtab+rpmsg_get_mtu", align 4
@__kstrtab_rpmsg_find_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpmsg_find_device = external dso_local constant [0 x i8], align 1
@__ksymtab_rpmsg_find_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpmsg_find_device to i32), ptr @__kstrtab_rpmsg_find_device, ptr @__kstrtabns_rpmsg_find_device }, section "___ksymtab+rpmsg_find_device", align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"%s.%s.%d.%d\00", align 1
@rpmsg_bus = internal global %struct.bus_type { ptr @.str.5, ptr null, ptr null, ptr null, ptr @rpmsg_dev_groups, ptr null, ptr @rpmsg_dev_match, ptr @rpmsg_uevent, ptr @rpmsg_dev_probe, ptr null, ptr @rpmsg_dev_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"device_register failed: %d\0A\00", align 1
@__kstrtab_rpmsg_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpmsg_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_rpmsg_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpmsg_register_device to i32), ptr @__kstrtab_rpmsg_register_device, ptr @__kstrtabns_rpmsg_register_device }, section "___ksymtab+rpmsg_register_device", align 4
@__kstrtab_rpmsg_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpmsg_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_rpmsg_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpmsg_unregister_device to i32), ptr @__kstrtab_rpmsg_unregister_device, ptr @__kstrtabns_rpmsg_unregister_device }, section "___ksymtab+rpmsg_unregister_device", align 4
@__kstrtab___register_rpmsg_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns___register_rpmsg_driver = external dso_local constant [0 x i8], align 1
@__ksymtab___register_rpmsg_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__register_rpmsg_driver to i32), ptr @__kstrtab___register_rpmsg_driver, ptr @__kstrtabns___register_rpmsg_driver }, section "___ksymtab+__register_rpmsg_driver", align 4
@__kstrtab_unregister_rpmsg_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_rpmsg_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_rpmsg_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_rpmsg_driver to i32), ptr @__kstrtab_unregister_rpmsg_driver, ptr @__kstrtabns_unregister_rpmsg_driver }, section "___ksymtab+unregister_rpmsg_driver", align 4
@__UNIQUE_ID_description206 = internal constant [43 x i8] c"description=remote processor messaging bus\00", section ".modinfo", align 1
@__UNIQUE_ID_license207 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"rpmsg\00", align 1
@rpmsg_dev_groups = internal global [2 x ptr] [ptr @rpmsg_dev_group, ptr null], align 4
@rpmsg_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rpmsg_dev_attrs, ptr null }, align 4
@rpmsg_dev_attrs = internal global [7 x ptr] [ptr @dev_attr_name, ptr @dev_attr_modalias, ptr @dev_attr_dst, ptr @dev_attr_src, ptr @dev_attr_announce, ptr @dev_attr_driver_override, ptr null], align 4
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @name_show, ptr null }, align 4
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @modalias_show, ptr null }, align 4
@dev_attr_dst = internal global %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @dst_show, ptr null }, align 4
@dev_attr_src = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @src_show, ptr null }, align 4
@dev_attr_announce = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @announce_show, ptr null }, align 4
@dev_attr_driver_override = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420 }, ptr @driver_override_show, ptr @driver_override_store }, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"rpmsg:%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"dst\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"src\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"announce\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"driver_override\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"MODALIAS=rpmsg:%s\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"failed to create endpoint\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"%s: failed: %d\0A\00", align 1
@__func__.rpmsg_dev_probe = private unnamed_addr constant [16 x i8] c"rpmsg_dev_probe\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"failed to announce creation\0A\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"\013%s: failed to register rpmsg bus: %d\0A\00", align 1
@__func__.rpmsg_init = private unnamed_addr constant [11 x i8] c"rpmsg_init\00", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_description206, ptr @__UNIQUE_ID_license207, ptr @__ksymtab___register_rpmsg_driver, ptr @__ksymtab_rpmsg_create_channel, ptr @__ksymtab_rpmsg_create_ept, ptr @__ksymtab_rpmsg_destroy_ept, ptr @__ksymtab_rpmsg_find_device, ptr @__ksymtab_rpmsg_get_mtu, ptr @__ksymtab_rpmsg_poll, ptr @__ksymtab_rpmsg_register_device, ptr @__ksymtab_rpmsg_release_channel, ptr @__ksymtab_rpmsg_send, ptr @__ksymtab_rpmsg_send_offchannel, ptr @__ksymtab_rpmsg_sendto, ptr @__ksymtab_rpmsg_trysend, ptr @__ksymtab_rpmsg_trysend_offchannel, ptr @__ksymtab_rpmsg_trysendto, ptr @__ksymtab_rpmsg_unregister_device, ptr @__ksymtab_unregister_rpmsg_driver], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rpmsg_create_channel(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 34, i32 noundef 9, ptr noundef null) #11
  br label %15

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #12
  br label %15

13:                                               ; preds = %9
  %14 = tail call ptr %10(ptr noundef nonnull %0, ptr noundef %1) #11
  br label %15

15:                                               ; preds = %13, %12, %4
  %16 = phi ptr [ null, %4 ], [ %14, %13 ], [ null, %12 ]
  ret ptr %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpmsg_release_channel(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef null) #11
  br label %16

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rpmsg_device_ops, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #12
  br label %16

14:                                               ; preds = %9
  %15 = tail call i32 %11(ptr noundef nonnull %0, ptr noundef %1) #11
  br label %16

16:                                               ; preds = %14, %13, %4
  %17 = phi i32 [ -22, %4 ], [ %15, %14 ], [ -6, %13 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rpmsg_create_ept(ptr noundef %0, ptr noundef %1, ptr noundef %2, [10 x i32] %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 111, i32 noundef 9, ptr noundef null) #11
  br label %13

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.rpmsg_device_ops, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr %11(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, [10 x i32] %3) #11
  br label %13

13:                                               ; preds = %7, %6
  %14 = phi ptr [ null, %6 ], [ %12, %7 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpmsg_destroy_ept(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 4
  tail call void %8(ptr noundef nonnull %0) #11
  br label %9

9:                                                ; preds = %7, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpmsg_send(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 153, i32 noundef 9, ptr noundef null) #11
  br label %14

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rpmsg_endpoint_ops, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = tail call i32 %10(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #11
  br label %14

14:                                               ; preds = %12, %6, %5
  %15 = phi i32 [ -22, %5 ], [ %13, %12 ], [ -6, %6 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpmsg_sendto(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 182, i32 noundef 9, ptr noundef null) #11
  br label %15

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rpmsg_endpoint_ops, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call i32 %11(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #11
  br label %15

15:                                               ; preds = %13, %7, %6
  %16 = phi i32 [ -22, %6 ], [ %14, %13 ], [ -6, %7 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpmsg_send_offchannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 214, i32 noundef 9, ptr noundef null) #11
  br label %16

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rpmsg_endpoint_ops, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = tail call i32 %12(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #11
  br label %16

16:                                               ; preds = %14, %8, %7
  %17 = phi i32 [ -22, %7 ], [ %15, %14 ], [ -6, %8 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpmsg_trysend(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 242, i32 noundef 9, ptr noundef null) #11
  br label %14

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rpmsg_endpoint_ops, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = tail call i32 %10(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #11
  br label %14

14:                                               ; preds = %12, %6, %5
  %15 = phi i32 [ -22, %5 ], [ %13, %12 ], [ -6, %6 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpmsg_trysendto(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 270, i32 noundef 9, ptr noundef null) #11
  br label %15

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rpmsg_endpoint_ops, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call i32 %11(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #11
  br label %15

15:                                               ; preds = %13, %7, %6
  %16 = phi i32 [ -22, %6 ], [ %14, %13 ], [ -6, %7 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpmsg_poll(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 290, i32 noundef 9, ptr noundef null) #11
  br label %14

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rpmsg_endpoint_ops, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = tail call i32 %10(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #11
  br label %14

14:                                               ; preds = %12, %6, %5
  %15 = phi i32 [ 0, %5 ], [ %13, %12 ], [ 0, %6 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpmsg_trysend_offchannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 321, i32 noundef 9, ptr noundef null) #11
  br label %16

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rpmsg_endpoint_ops, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = tail call i32 %12(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #11
  br label %16

16:                                               ; preds = %14, %8, %7
  %17 = phi i32 [ -22, %7 ], [ %15, %14 ], [ -6, %8 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpmsg_get_mtu(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 342, i32 noundef 9, ptr noundef null) #11
  br label %12

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rpmsg_endpoint_ops, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 %8(ptr noundef nonnull %0) #11
  br label %12

12:                                               ; preds = %10, %4, %3
  %13 = phi i32 [ -22, %3 ], [ %11, %10 ], [ -524, %4 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rpmsg_find_device(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @device_find_child(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @rpmsg_device_match) #11
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_find_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @rpmsg_device_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.rpmsg_channel_info, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %4, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.rpmsg_channel_info, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 1
  %20 = tail call i32 @strncmp(ptr noundef %1, ptr noundef %19, i32 noundef 32)
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %18, %14, %6
  %24 = phi i32 [ 0, %6 ], [ 0, %14 ], [ %22, %18 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpmsg_register_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi ptr [ %8, %7 ], [ %5, %1 ]
  %11 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 1
  %12 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %10, ptr noundef %11, i32 noundef %13, i32 noundef %15) #11
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  store ptr @rpmsg_bus, ptr %17, align 4
  %18 = tail call i32 @device_register(ptr noundef %0) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %18) #12
  tail call void @put_device(ptr noundef %0) #11
  br label %21

21:                                               ; preds = %20, %9
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpmsg_unregister_device(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @device_find_child(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @rpmsg_device_match) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @device_unregister(ptr noundef nonnull %3) #11
  tail call void @put_device(ptr noundef nonnull %3) #11
  br label %6

6:                                                ; preds = %5, %2
  %7 = phi i32 [ 0, %5 ], [ -22, %2 ]
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__register_rpmsg_driver(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1
  store ptr @rpmsg_bus, ptr %3, align 4
  %4 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 2
  store ptr %1, ptr %4, align 4
  %5 = tail call i32 @driver_register(ptr noundef %0) #11
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_rpmsg_driver(ptr noundef %0) #0 {
  tail call void @driver_unregister(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @rpmsg_bus) #11
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.rpmsg_init, i32 noundef %1) #12
  br label %5

5:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #5 section ".exit.text" {
  tail call void @bus_unregister(ptr noundef nonnull @rpmsg_bus) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpmsg_dev_match(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.rpmsg_driver, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 4
  %10 = tail call i32 @strcmp(ptr noundef nonnull %6, ptr noundef %9)
  %11 = icmp eq i32 %10, 0
  br label %38

12:                                               ; preds = %2
  %13 = icmp eq ptr %4, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %12
  %15 = load i8, ptr %4, align 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 1
  br label %19

19:                                               ; preds = %28, %17
  %20 = phi ptr [ %4, %17 ], [ %30, %28 ]
  %21 = phi i32 [ 0, %17 ], [ %29, %28 ]
  %22 = tail call i32 @strncmp(ptr noundef %20, ptr noundef %18, i32 noundef 32) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr %struct.rpmsg_device_id, ptr %4, i32 %21, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 1, i32 1
  store i32 %26, ptr %27, align 8
  br label %38

28:                                               ; preds = %19
  %29 = add i32 %21, 1
  %30 = getelementptr %struct.rpmsg_device_id, ptr %4, i32 %29
  %31 = load i8, ptr %30, align 4
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %19

33:                                               ; preds = %28, %14, %12
  %34 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = tail call ptr @of_match_device(ptr noundef %35, ptr noundef %0) #11
  %37 = icmp ne ptr %36, null
  br label %38

38:                                               ; preds = %33, %24, %8
  %39 = phi i1 [ %11, %8 ], [ true, %24 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpmsg_uevent(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @of_device_uevent_modalias(ptr noundef %0, ptr noundef %1) #11
  %4 = icmp eq i32 %3, -19
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 1
  %7 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef %6) #11
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ %7, %5 ], [ %3, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpmsg_dev_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.rpmsg_channel_info, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %2, i8 0, i32 40, i1 false)
  %5 = tail call i32 @dev_pm_domain_attach(ptr noundef %0, i1 noundef zeroext true) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %88

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rpmsg_driver, ptr %4, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %57, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 1
  %13 = call ptr @strncpy(ptr noundef nonnull %2, ptr noundef %12, i32 noundef 32)
  %14 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.rpmsg_channel_info, ptr %2, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.rpmsg_channel_info, ptr %2, i32 0, i32 2
  store i32 -1, ptr %17, align 4
  %18 = icmp eq ptr %0, null
  br i1 %18, label %19, label %20, !prof !8

19:                                               ; preds = %11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 111, i32 noundef 9, ptr noundef null) #11
  br label %52

20:                                               ; preds = %11
  %21 = load i32, ptr %2, align 4
  %22 = insertvalue [10 x i32] poison, i32 %21, 0
  %23 = getelementptr inbounds [10 x i32], ptr %2, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = insertvalue [10 x i32] %22, i32 %24, 1
  %26 = getelementptr inbounds [10 x i32], ptr %2, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = insertvalue [10 x i32] %25, i32 %27, 2
  %29 = getelementptr inbounds [10 x i32], ptr %2, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = insertvalue [10 x i32] %28, i32 %30, 3
  %32 = getelementptr inbounds [10 x i32], ptr %2, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = insertvalue [10 x i32] %31, i32 %33, 4
  %35 = getelementptr inbounds [10 x i32], ptr %2, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = insertvalue [10 x i32] %34, i32 %36, 5
  %38 = getelementptr inbounds [10 x i32], ptr %2, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = insertvalue [10 x i32] %37, i32 %39, 6
  %41 = getelementptr inbounds [10 x i32], ptr %2, i32 0, i32 7
  %42 = load i32, ptr %41, align 4
  %43 = insertvalue [10 x i32] %40, i32 %42, 7
  %44 = insertvalue [10 x i32] %43, i32 %15, 8
  %45 = insertvalue [10 x i32] %44, i32 -1, 9
  %46 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 8
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.rpmsg_device_ops, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = call ptr %49(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef null, [10 x i32] %45) #11
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %20, %19
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.19) #12
  br label %88

53:                                               ; preds = %20
  %54 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 5
  store ptr %50, ptr %54, align 8
  %55 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %50, i32 0, i32 4
  %56 = load i32, ptr %55, align 4
  store i32 %56, ptr %14, align 8
  br label %57

57:                                               ; preds = %53, %7
  %58 = phi ptr [ %50, %53 ], [ null, %7 ]
  %59 = getelementptr inbounds %struct.rpmsg_driver, ptr %4, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = call i32 %60(ptr noundef %0) #11
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  %64 = icmp eq ptr %58, null
  br i1 %64, label %88, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 8
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.rpmsg_device_ops, ptr %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %88, label %71

71:                                               ; preds = %65
  %72 = call i32 %69(ptr noundef %0) #11
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %88, label %74

74:                                               ; preds = %71
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.21) #12
  %75 = getelementptr inbounds %struct.rpmsg_driver, ptr %4, i32 0, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  call void %76(ptr noundef %0) #11
  br label %81

79:                                               ; preds = %57
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.rpmsg_dev_probe, i32 noundef %61) #12
  %80 = icmp eq ptr %58, null
  br i1 %80, label %88, label %81

81:                                               ; preds = %79, %78, %74
  %82 = phi i32 [ %61, %79 ], [ %72, %74 ], [ %72, %78 ]
  %83 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %58, i32 0, i32 6
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %81
  %87 = load ptr, ptr %84, align 4
  call void %87(ptr noundef nonnull %58) #11
  br label %88

88:                                               ; preds = %86, %81, %79, %71, %65, %63, %52, %1
  %89 = phi i32 [ 0, %71 ], [ 0, %65 ], [ 0, %63 ], [ %5, %1 ], [ %61, %79 ], [ -12, %52 ], [ %82, %81 ], [ %82, %86 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #11
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rpmsg_dev_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rpmsg_device_ops, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 %7(ptr noundef %0) #11
  br label %11

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %struct.rpmsg_driver, ptr %3, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void %13(ptr noundef %0) #11
  br label %16

16:                                               ; preds = %15, %11
  tail call void @dev_pm_domain_detach(ptr noundef %0, i1 noundef zeroext true) #11
  %17 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 5
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %18, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %22, align 4
  tail call void %25(ptr noundef nonnull %18) #11
  br label %26

26:                                               ; preds = %24, %20, %16
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @name_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 1
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call i32 @of_device_modalias(ptr noundef %0, ptr noundef %2, i32 noundef 4096) #11
  %5 = icmp eq i32 %4, -19
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 1
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.9, ptr noundef %7)
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i32 [ %8, %6 ], [ %4, %3 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_modalias(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dst_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @src_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @announce_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 6
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr @.str.15, ptr @.str.14
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef nonnull %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @driver_override_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @driver_override_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call ptr @kstrndup(ptr noundef %2, i32 noundef %3, i32 noundef 3264) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strcspn(ptr noundef nonnull %5, ptr noundef nonnull @.str.17)
  %9 = getelementptr i8, ptr %5, i32 %8
  store i8 0, ptr %9, align 1
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %10) #11
  %11 = getelementptr inbounds %struct.rpmsg_device, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %5, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #11
  br label %16

16:                                               ; preds = %15, %7
  %17 = phi ptr [ null, %15 ], [ %5, %7 ]
  store ptr %17, ptr %11, align 4
  tail call void @mutex_unlock(ptr noundef %10) #11
  tail call void @kfree(ptr noundef %12) #11
  br label %18

18:                                               ; preds = %16, %4
  %19 = phi i32 [ %3, %16 ], [ -12, %4 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_uevent_modalias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_domain_attach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i8 0, i8 2}
