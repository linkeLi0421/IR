; ModuleID = '/llk/IR/net/switchdev/switchdev.c_pt.bc'
source_filename = "../net/switchdev/switchdev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_switchdev_deferred_process:\09\09\09\09\09"
module asm "\09.asciz \09\22switchdev_deferred_process\22\09\09\09\09\09"
module asm "__kstrtabns_switchdev_deferred_process:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_switchdev_port_attr_set:\09\09\09\09\09"
module asm "\09.asciz \09\22switchdev_port_attr_set\22\09\09\09\09\09"
module asm "__kstrtabns_switchdev_port_attr_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_switchdev_port_obj_add:\09\09\09\09\09"
module asm "\09.asciz \09\22switchdev_port_obj_add\22\09\09\09\09\09"
module asm "__kstrtabns_switchdev_port_obj_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_switchdev_port_obj_del:\09\09\09\09\09"
module asm "\09.asciz \09\22switchdev_port_obj_del\22\09\09\09\09\09"
module asm "__kstrtabns_switchdev_port_obj_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_switchdev_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22register_switchdev_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_register_switchdev_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_switchdev_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_switchdev_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_switchdev_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_call_switchdev_notifiers:\09\09\09\09\09"
module asm "\09.asciz \09\22call_switchdev_notifiers\22\09\09\09\09\09"
module asm "__kstrtabns_call_switchdev_notifiers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_switchdev_blocking_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22register_switchdev_blocking_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_register_switchdev_blocking_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_switchdev_blocking_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_switchdev_blocking_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_switchdev_blocking_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_call_switchdev_blocking_notifiers:\09\09\09\09\09"
module asm "\09.asciz \09\22call_switchdev_blocking_notifiers\22\09\09\09\09\09"
module asm "__kstrtabns_call_switchdev_blocking_notifiers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_switchdev_handle_fdb_event_to_device:\09\09\09\09\09"
module asm "\09.asciz \09\22switchdev_handle_fdb_event_to_device\22\09\09\09\09\09"
module asm "__kstrtabns_switchdev_handle_fdb_event_to_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_switchdev_handle_port_obj_add:\09\09\09\09\09"
module asm "\09.asciz \09\22switchdev_handle_port_obj_add\22\09\09\09\09\09"
module asm "__kstrtabns_switchdev_handle_port_obj_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_switchdev_handle_port_obj_del:\09\09\09\09\09"
module asm "\09.asciz \09\22switchdev_handle_port_obj_del\22\09\09\09\09\09"
module asm "__kstrtabns_switchdev_handle_port_obj_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_switchdev_handle_port_attr_set:\09\09\09\09\09"
module asm "\09.asciz \09\22switchdev_handle_port_attr_set\22\09\09\09\09\09"
module asm "__kstrtabns_switchdev_handle_port_attr_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_switchdev_bridge_port_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22switchdev_bridge_port_offload\22\09\09\09\09\09"
module asm "__kstrtabns_switchdev_bridge_port_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_switchdev_bridge_port_unoffload:\09\09\09\09\09"
module asm "\09.asciz \09\22switchdev_bridge_port_unoffload\22\09\09\09\09\09"
module asm "__kstrtabns_switchdev_bridge_port_unoffload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.switchdev_deferred_item = type { %struct.list_head, ptr, %struct.netdevice_tracker, ptr, [0 x i32] }
%struct.netdevice_tracker = type {}
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.130, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.130 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.switchdev_notifier_port_attr_info = type { %struct.switchdev_notifier_info, ptr, i8 }
%struct.switchdev_notifier_info = type { ptr, ptr, ptr }
%struct.switchdev_attr = type { ptr, i32, i32, ptr, ptr, %union.anon.135 }
%union.anon.135 = type { %struct.switchdev_brport_flags }
%struct.switchdev_brport_flags = type { i32, i32 }
%struct.switchdev_notifier_port_obj_info = type { %struct.switchdev_notifier_info, ptr, i8 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.switchdev_nested_priv = type { ptr, ptr, ptr, ptr }
%struct.netdev_nested_priv = type { i8, ptr }
%struct.switchdev_notifier_brport_info = type { %struct.switchdev_notifier_info, %struct.switchdev_brport }
%struct.switchdev_brport = type { ptr, ptr, ptr, ptr, i8 }

@switchdev_deferred_process.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [26 x i8] c"net/switchdev/switchdev.c\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@__kstrtab_switchdev_deferred_process = external dso_local constant [0 x i8], align 1
@__kstrtabns_switchdev_deferred_process = external dso_local constant [0 x i8], align 1
@__ksymtab_switchdev_deferred_process = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @switchdev_deferred_process to i32), ptr @__kstrtab_switchdev_deferred_process, ptr @__kstrtabns_switchdev_deferred_process }, section "___ksymtab_gpl+switchdev_deferred_process", align 4
@switchdev_port_attr_set.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_switchdev_port_attr_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_switchdev_port_attr_set = external dso_local constant [0 x i8], align 1
@__ksymtab_switchdev_port_attr_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @switchdev_port_attr_set to i32), ptr @__kstrtab_switchdev_port_attr_set, ptr @__kstrtabns_switchdev_port_attr_set }, section "___ksymtab_gpl+switchdev_port_attr_set", align 4
@switchdev_port_obj_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_switchdev_port_obj_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_switchdev_port_obj_add = external dso_local constant [0 x i8], align 1
@__ksymtab_switchdev_port_obj_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @switchdev_port_obj_add to i32), ptr @__kstrtab_switchdev_port_obj_add, ptr @__kstrtabns_switchdev_port_obj_add }, section "___ksymtab_gpl+switchdev_port_obj_add", align 4
@switchdev_port_obj_del.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_switchdev_port_obj_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_switchdev_port_obj_del = external dso_local constant [0 x i8], align 1
@__ksymtab_switchdev_port_obj_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @switchdev_port_obj_del to i32), ptr @__kstrtab_switchdev_port_obj_del, ptr @__kstrtabns_switchdev_port_obj_del }, section "___ksymtab_gpl+switchdev_port_obj_del", align 4
@switchdev_notif_chain = internal global %struct.atomic_notifier_head zeroinitializer, align 4
@__kstrtab_register_switchdev_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_switchdev_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_register_switchdev_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_switchdev_notifier to i32), ptr @__kstrtab_register_switchdev_notifier, ptr @__kstrtabns_register_switchdev_notifier }, section "___ksymtab_gpl+register_switchdev_notifier", align 4
@__kstrtab_unregister_switchdev_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_switchdev_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_switchdev_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_switchdev_notifier to i32), ptr @__kstrtab_unregister_switchdev_notifier, ptr @__kstrtabns_unregister_switchdev_notifier }, section "___ksymtab_gpl+unregister_switchdev_notifier", align 4
@__kstrtab_call_switchdev_notifiers = external dso_local constant [0 x i8], align 1
@__kstrtabns_call_switchdev_notifiers = external dso_local constant [0 x i8], align 1
@__ksymtab_call_switchdev_notifiers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @call_switchdev_notifiers to i32), ptr @__kstrtab_call_switchdev_notifiers, ptr @__kstrtabns_call_switchdev_notifiers }, section "___ksymtab_gpl+call_switchdev_notifiers", align 4
@switchdev_blocking_notif_chain = internal global %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @switchdev_blocking_notif_chain, i64 16), ptr getelementptr (i8, ptr @switchdev_blocking_notif_chain, i64 16) } }, ptr null }, align 4
@__kstrtab_register_switchdev_blocking_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_switchdev_blocking_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_register_switchdev_blocking_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_switchdev_blocking_notifier to i32), ptr @__kstrtab_register_switchdev_blocking_notifier, ptr @__kstrtabns_register_switchdev_blocking_notifier }, section "___ksymtab_gpl+register_switchdev_blocking_notifier", align 4
@__kstrtab_unregister_switchdev_blocking_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_switchdev_blocking_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_switchdev_blocking_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_switchdev_blocking_notifier to i32), ptr @__kstrtab_unregister_switchdev_blocking_notifier, ptr @__kstrtabns_unregister_switchdev_blocking_notifier }, section "___ksymtab_gpl+unregister_switchdev_blocking_notifier", align 4
@__kstrtab_call_switchdev_blocking_notifiers = external dso_local constant [0 x i8], align 1
@__kstrtabns_call_switchdev_blocking_notifiers = external dso_local constant [0 x i8], align 1
@__ksymtab_call_switchdev_blocking_notifiers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @call_switchdev_blocking_notifiers to i32), ptr @__kstrtab_call_switchdev_blocking_notifiers, ptr @__kstrtabns_call_switchdev_blocking_notifiers }, section "___ksymtab_gpl+call_switchdev_blocking_notifiers", align 4
@__kstrtab_switchdev_handle_fdb_event_to_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_switchdev_handle_fdb_event_to_device = external dso_local constant [0 x i8], align 1
@__ksymtab_switchdev_handle_fdb_event_to_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @switchdev_handle_fdb_event_to_device to i32), ptr @__kstrtab_switchdev_handle_fdb_event_to_device, ptr @__kstrtabns_switchdev_handle_fdb_event_to_device }, section "___ksymtab_gpl+switchdev_handle_fdb_event_to_device", align 4
@__kstrtab_switchdev_handle_port_obj_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_switchdev_handle_port_obj_add = external dso_local constant [0 x i8], align 1
@__ksymtab_switchdev_handle_port_obj_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @switchdev_handle_port_obj_add to i32), ptr @__kstrtab_switchdev_handle_port_obj_add, ptr @__kstrtabns_switchdev_handle_port_obj_add }, section "___ksymtab_gpl+switchdev_handle_port_obj_add", align 4
@__kstrtab_switchdev_handle_port_obj_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_switchdev_handle_port_obj_del = external dso_local constant [0 x i8], align 1
@__ksymtab_switchdev_handle_port_obj_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @switchdev_handle_port_obj_del to i32), ptr @__kstrtab_switchdev_handle_port_obj_del, ptr @__kstrtabns_switchdev_handle_port_obj_del }, section "___ksymtab_gpl+switchdev_handle_port_obj_del", align 4
@__kstrtab_switchdev_handle_port_attr_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_switchdev_handle_port_attr_set = external dso_local constant [0 x i8], align 1
@__ksymtab_switchdev_handle_port_attr_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @switchdev_handle_port_attr_set to i32), ptr @__kstrtab_switchdev_handle_port_attr_set, ptr @__kstrtabns_switchdev_handle_port_attr_set }, section "___ksymtab_gpl+switchdev_handle_port_attr_set", align 4
@switchdev_bridge_port_offload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_switchdev_bridge_port_offload = external dso_local constant [0 x i8], align 1
@__kstrtabns_switchdev_bridge_port_offload = external dso_local constant [0 x i8], align 1
@__ksymtab_switchdev_bridge_port_offload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @switchdev_bridge_port_offload to i32), ptr @__kstrtab_switchdev_bridge_port_offload, ptr @__kstrtabns_switchdev_bridge_port_offload }, section "___ksymtab_gpl+switchdev_bridge_port_offload", align 4
@switchdev_bridge_port_unoffload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_switchdev_bridge_port_unoffload = external dso_local constant [0 x i8], align 1
@__kstrtabns_switchdev_bridge_port_unoffload = external dso_local constant [0 x i8], align 1
@__ksymtab_switchdev_bridge_port_unoffload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @switchdev_bridge_port_unoffload to i32), ptr @__kstrtab_switchdev_bridge_port_unoffload, ptr @__kstrtabns_switchdev_bridge_port_unoffload }, section "___ksymtab_gpl+switchdev_bridge_port_unoffload", align 4
@deferred_lock = internal global %struct.spinlock zeroinitializer, align 4
@deferred = internal global %struct.list_head { ptr @deferred, ptr @deferred }, align 4
@deferred_process_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @deferred_process_work, i64 4), ptr getelementptr (i8, ptr @deferred_process_work, i64 4) }, ptr @switchdev_deferred_process_work }, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"failed (err=%d) to set attribute (id=%d)\0A\00", align 1
@switchdev_port_obj_add_deferred.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"failed (err=%d) to add object (id=%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"failed (err=%d) to del object (id=%d)\0A\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ksymtab_call_switchdev_blocking_notifiers, ptr @__ksymtab_call_switchdev_notifiers, ptr @__ksymtab_register_switchdev_blocking_notifier, ptr @__ksymtab_register_switchdev_notifier, ptr @__ksymtab_switchdev_bridge_port_offload, ptr @__ksymtab_switchdev_bridge_port_unoffload, ptr @__ksymtab_switchdev_deferred_process, ptr @__ksymtab_switchdev_handle_fdb_event_to_device, ptr @__ksymtab_switchdev_handle_port_attr_set, ptr @__ksymtab_switchdev_handle_port_obj_add, ptr @__ksymtab_switchdev_handle_port_obj_del, ptr @__ksymtab_switchdev_port_attr_set, ptr @__ksymtab_switchdev_port_obj_add, ptr @__ksymtab_switchdev_port_obj_del, ptr @__ksymtab_unregister_switchdev_blocking_notifier, ptr @__ksymtab_unregister_switchdev_notifier], section "llvm.metadata"
@switch.table.switchdev_port_obj_del = private unnamed_addr constant [3 x i32] [i32 32, i32 36, i32 36], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @switchdev_deferred_process() #0 {
  %1 = tail call i32 @rtnl_is_locked() #8
  %2 = icmp eq i32 %1, 0
  %3 = load i1, ptr @switchdev_deferred_process.__already_done, align 1
  %4 = xor i1 %3, true
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %0
  store i1 true, ptr @switchdev_deferred_process.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 63) #8
  br label %7

7:                                                ; preds = %6, %0
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @deferred_lock) #8
  %8 = load volatile ptr, ptr @deferred, align 4
  %9 = icmp eq ptr %8, @deferred
  br i1 %9, label %10, label %11

10:                                               ; preds = %38, %7
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @deferred_lock) #8
  br label %41

11:                                               ; preds = %38, %7
  %12 = phi ptr [ %39, %38 ], [ %8, %7 ]
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @deferred_lock) #8
  %17 = icmp eq ptr %12, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.switchdev_deferred_item, ptr %12, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.switchdev_deferred_item, ptr %12, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.switchdev_deferred_item, ptr %12, i32 0, i32 4
  tail call void %20(ptr noundef %22, ptr noundef %23) #8
  %24 = load ptr, ptr %21, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %18
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !10
  %28 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 99
  %29 = load ptr, ptr %28, align 8
  %30 = ptrtoint ptr %29 to i32
  %31 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %32 = inttoptr i32 %31 to ptr
  %33 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %32) #3, !srcloc !11
  %34 = add i32 %33, %30
  %35 = inttoptr i32 %34 to ptr
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, -1
  store i32 %37, ptr %35, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %27) #8, !srcloc !12
  br label %38

38:                                               ; preds = %26, %18
  tail call void @kfree(ptr noundef nonnull %12) #8
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @deferred_lock) #8
  %39 = load volatile ptr, ptr @deferred, align 4
  %40 = icmp eq ptr %39, @deferred
  br i1 %40, label %10, label %11

41:                                               ; preds = %11, %10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @switchdev_port_attr_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.switchdev_notifier_port_attr_info, align 4
  %5 = getelementptr inbounds %struct.switchdev_attr, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call fastcc i32 @switchdev_deferred_enqueue(ptr noundef %0, ptr noundef %1, i32 noundef 28, ptr noundef nonnull @switchdev_port_attr_set_deferred) #8
  br label %37

11:                                               ; preds = %3
  %12 = tail call i32 @rtnl_is_locked() #8
  %13 = icmp eq i32 %12, 0
  %14 = load i1, ptr @switchdev_port_attr_set.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !9

17:                                               ; preds = %11
  store i1 true, ptr @switchdev_port_attr_set.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 174, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 174) #8
  br label %18

18:                                               ; preds = %17, %11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #8
  %19 = getelementptr inbounds %struct.switchdev_notifier_port_attr_info, ptr %4, i32 0, i32 1
  %20 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %20, i8 0, i64 12, i1 false) #8
  store ptr %1, ptr %19, align 4
  %21 = getelementptr inbounds %struct.switchdev_notifier_port_attr_info, ptr %4, i32 0, i32 2
  store ptr %0, ptr %4, align 4
  %22 = getelementptr inbounds %struct.switchdev_notifier_info, ptr %4, i32 0, i32 1
  store ptr %2, ptr %22, align 4
  %23 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @switchdev_blocking_notif_chain, i32 noundef 9, ptr noundef nonnull %4) #8
  %24 = and i32 %23, -32769
  %25 = icmp sgt i32 %24, 1
  %26 = sub i32 1, %24
  %27 = select i1 %25, i32 %26, i32 0
  %28 = icmp eq i32 %27, 0
  %29 = load i8, ptr %21, align 4, !range !13
  %30 = icmp eq i8 %29, 0
  br i1 %28, label %33, label %31

31:                                               ; preds = %18
  br i1 %30, label %32, label %35, !prof !9

32:                                               ; preds = %31
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 119, i32 noundef 9, ptr noundef null) #8
  br label %35

33:                                               ; preds = %18
  %34 = select i1 %30, i32 -95, i32 0
  br label %35

35:                                               ; preds = %33, %32, %31
  %36 = phi i32 [ %27, %32 ], [ %27, %31 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #8
  br label %37

37:                                               ; preds = %35, %9
  %38 = phi i32 [ %10, %9 ], [ %36, %35 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @switchdev_port_obj_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.switchdev_notifier_port_obj_info, align 4
  %5 = getelementptr inbounds %struct.switchdev_obj, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.switchdev_obj, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  %13 = icmp ult i32 %12, 3
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/switchdev/switchdev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 189, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

15:                                               ; preds = %9
  %16 = getelementptr inbounds [3 x i32], ptr @switch.table.switchdev_port_obj_del, i32 0, i32 %12
  %17 = load i32, ptr %16, align 4
  %18 = tail call fastcc i32 @switchdev_deferred_enqueue(ptr noundef %0, ptr noundef %1, i32 noundef %17, ptr noundef nonnull @switchdev_port_obj_add_deferred) #8
  br label %45

19:                                               ; preds = %3
  %20 = tail call i32 @rtnl_is_locked() #8
  %21 = icmp eq i32 %20, 0
  %22 = load i1, ptr @switchdev_port_obj_add.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !9

25:                                               ; preds = %19
  store i1 true, ptr @switchdev_port_obj_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 257, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 257) #8
  br label %26

26:                                               ; preds = %25, %19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #8
  %27 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %4, i32 0, i32 1
  %28 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %28, i8 0, i64 12, i1 false) #8
  store ptr %1, ptr %27, align 4
  %29 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %4, i32 0, i32 2
  store ptr %0, ptr %4, align 4
  %30 = getelementptr inbounds %struct.switchdev_notifier_info, ptr %4, i32 0, i32 1
  store ptr %2, ptr %30, align 4
  %31 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @switchdev_blocking_notif_chain, i32 noundef 7, ptr noundef nonnull %4) #8
  %32 = and i32 %31, -32769
  %33 = icmp sgt i32 %32, 1
  %34 = sub i32 1, %32
  %35 = select i1 %33, i32 %34, i32 0
  %36 = icmp eq i32 %35, 0
  %37 = load i8, ptr %29, align 4, !range !13
  %38 = icmp eq i8 %37, 0
  br i1 %36, label %41, label %39

39:                                               ; preds = %26
  br i1 %38, label %40, label %43, !prof !9

40:                                               ; preds = %39
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 210, i32 noundef 9, ptr noundef null) #8
  br label %43

41:                                               ; preds = %26
  %42 = select i1 %38, i32 -95, i32 0
  br label %43

43:                                               ; preds = %41, %40, %39
  %44 = phi i32 [ %35, %40 ], [ %35, %39 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #8
  br label %45

45:                                               ; preds = %43, %15
  %46 = phi i32 [ %18, %15 ], [ %44, %43 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @switchdev_port_obj_del(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.switchdev_notifier_port_obj_info, align 4
  %4 = getelementptr inbounds %struct.switchdev_obj, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.switchdev_obj, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/switchdev/switchdev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 189, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

14:                                               ; preds = %8
  %15 = getelementptr inbounds [3 x i32], ptr @switch.table.switchdev_port_obj_del, i32 0, i32 %11
  %16 = load i32, ptr %15, align 4
  %17 = tail call fastcc i32 @switchdev_deferred_enqueue(ptr noundef %0, ptr noundef %1, i32 noundef %16, ptr noundef nonnull @switchdev_port_obj_del_deferred) #8
  br label %44

18:                                               ; preds = %2
  %19 = tail call i32 @rtnl_is_locked() #8
  %20 = icmp eq i32 %19, 0
  %21 = load i1, ptr @switchdev_port_obj_del.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !9

24:                                               ; preds = %18
  store i1 true, ptr @switchdev_port_obj_del.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 305, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 305) #8
  br label %25

25:                                               ; preds = %24, %18
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #8
  %26 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %3, i32 0, i32 1
  %27 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %27, i8 0, i64 12, i1 false) #8
  store ptr %1, ptr %26, align 4
  %28 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %3, i32 0, i32 2
  store ptr %0, ptr %3, align 4
  %29 = getelementptr inbounds %struct.switchdev_notifier_info, ptr %3, i32 0, i32 1
  store ptr null, ptr %29, align 4
  %30 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @switchdev_blocking_notif_chain, i32 noundef 8, ptr noundef nonnull %3) #8
  %31 = and i32 %30, -32769
  %32 = icmp sgt i32 %31, 1
  %33 = sub i32 1, %31
  %34 = select i1 %32, i32 %33, i32 0
  %35 = icmp eq i32 %34, 0
  %36 = load i8, ptr %28, align 4, !range !13
  %37 = icmp eq i8 %36, 0
  br i1 %35, label %40, label %38

38:                                               ; preds = %25
  br i1 %37, label %39, label %42, !prof !9

39:                                               ; preds = %38
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 210, i32 noundef 9, ptr noundef null) #8
  br label %42

40:                                               ; preds = %25
  %41 = select i1 %37, i32 -95, i32 0
  br label %42

42:                                               ; preds = %40, %39, %38
  %43 = phi i32 [ %34, %39 ], [ %34, %38 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #8
  br label %44

44:                                               ; preds = %42, %14
  %45 = phi i32 [ %17, %14 ], [ %43, %42 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_switchdev_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @switchdev_notif_chain, ptr noundef %0) #8
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unregister_switchdev_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef nonnull @switchdev_notif_chain, ptr noundef %0) #8
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @call_switchdev_notifiers(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  store ptr %1, ptr %2, align 4
  %5 = getelementptr inbounds %struct.switchdev_notifier_info, ptr %2, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  %6 = tail call i32 @atomic_notifier_call_chain(ptr noundef nonnull @switchdev_notif_chain, i32 noundef %0, ptr noundef %2) #8
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_switchdev_blocking_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @switchdev_blocking_notif_chain, ptr noundef %0) #8
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unregister_switchdev_blocking_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @switchdev_blocking_notif_chain, ptr noundef %0) #8
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @call_switchdev_blocking_notifiers(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  store ptr %1, ptr %2, align 4
  %5 = getelementptr inbounds %struct.switchdev_notifier_info, ptr %2, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  %6 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @switchdev_blocking_notif_chain, i32 noundef %0, ptr noundef %2) #8
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @switchdev_handle_fdb_event_to_device(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = tail call fastcc i32 @__switchdev_handle_fdb_event_to_device(ptr noundef %0, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %9 = icmp eq i32 %8, -95
  %10 = select i1 %9, i32 0, i32 %8
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__switchdev_handle_fdb_event_to_device(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = alloca %struct.switchdev_nested_priv, align 4
  %10 = alloca %struct.netdev_nested_priv, align 8
  %11 = alloca %struct.switchdev_nested_priv, align 4
  %12 = alloca %struct.netdev_nested_priv, align 8
  %13 = alloca %struct.switchdev_nested_priv, align 4
  %14 = alloca %struct.netdev_nested_priv, align 8
  %15 = alloca %struct.switchdev_nested_priv, align 4
  %16 = alloca %struct.netdev_nested_priv, align 8
  %17 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #8
  %18 = tail call zeroext i1 %4(ptr noundef %0) #8
  br i1 %18, label %19, label %23

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.switchdev_notifier_info, ptr %3, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %6(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %21, ptr noundef %3) #8
  br label %106

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 1024
  %27 = icmp ne i32 %26, 0
  %28 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %29 = load i64, ptr %28, align 16
  %30 = and i64 %29, 4
  %31 = icmp ne i64 %30, 0
  %32 = select i1 %27, i1 %31, i1 false
  %33 = and i64 %29, 4194304
  %34 = icmp ne i64 %33, 0
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #8
  store ptr %4, ptr %15, align 4
  %37 = getelementptr inbounds %struct.switchdev_nested_priv, ptr %15, i32 0, i32 1
  store ptr %5, ptr %37, align 4
  %38 = getelementptr inbounds %struct.switchdev_nested_priv, ptr %15, i32 0, i32 2
  store ptr %0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.switchdev_nested_priv, ptr %15, i32 0, i32 3
  store ptr null, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8
  store i64 0, ptr %16, align 8, !annotation !15
  %40 = getelementptr inbounds %struct.netdev_nested_priv, ptr %16, i32 0, i32 1
  store ptr %15, ptr %40, align 4
  %41 = call i32 @netdev_walk_all_lower_dev_rcu(ptr noundef %0, ptr noundef nonnull @switchdev_lower_dev_walk, ptr noundef nonnull %16) #8
  %42 = load ptr, ptr %39, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %88, label %44

44:                                               ; preds = %36
  %45 = icmp eq ptr %7, null
  br i1 %45, label %106, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.switchdev_notifier_info, ptr %3, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = call i32 %7(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %48, ptr noundef %3) #8
  br label %106

50:                                               ; preds = %23
  %51 = and i64 %29, 2
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %88, label %53

53:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #8
  store ptr %4, ptr %13, align 4
  %54 = getelementptr inbounds %struct.switchdev_nested_priv, ptr %13, i32 0, i32 1
  store ptr %5, ptr %54, align 4
  %55 = getelementptr inbounds %struct.switchdev_nested_priv, ptr %13, i32 0, i32 2
  store ptr %0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.switchdev_nested_priv, ptr %13, i32 0, i32 3
  store ptr null, ptr %56, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  store i64 0, ptr %14, align 8, !annotation !15
  %57 = getelementptr inbounds %struct.netdev_nested_priv, ptr %14, i32 0, i32 1
  store ptr %13, ptr %57, align 4
  %58 = call i32 @netdev_walk_all_lower_dev_rcu(ptr noundef %0, ptr noundef nonnull @switchdev_lower_dev_walk, ptr noundef nonnull %14) #8
  %59 = load ptr, ptr %56, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %106, label %61

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 13, i32 1
  %63 = load ptr, ptr %62, align 8
  store ptr %63, ptr %17, align 4
  %64 = call ptr @netdev_lower_get_next(ptr noundef %0, ptr noundef nonnull %17) #8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %106, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.switchdev_nested_priv, ptr %11, i32 0, i32 1
  %68 = getelementptr inbounds %struct.switchdev_nested_priv, ptr %11, i32 0, i32 2
  %69 = getelementptr inbounds %struct.switchdev_nested_priv, ptr %11, i32 0, i32 3
  %70 = getelementptr inbounds %struct.netdev_nested_priv, ptr %12, i32 0, i32 1
  br label %71

71:                                               ; preds = %85, %66
  %72 = phi ptr [ %64, %66 ], [ %86, %85 ]
  %73 = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 15
  %74 = load i64, ptr %73, align 16
  %75 = and i64 %74, 2
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = call zeroext i1 %4(ptr noundef nonnull %72) #8
  br i1 %78, label %83, label %79

79:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8
  store ptr %4, ptr %11, align 4
  store ptr %5, ptr %67, align 4
  store ptr %72, ptr %68, align 4
  store ptr null, ptr %69, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 0, ptr %12, align 8, !annotation !15
  store ptr %11, ptr %70, align 4
  %80 = call i32 @netdev_walk_all_lower_dev_rcu(ptr noundef nonnull %72, ptr noundef nonnull @switchdev_lower_dev_walk, ptr noundef nonnull %12) #8
  %81 = load ptr, ptr %69, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %79, %77
  %84 = call fastcc i32 @__switchdev_handle_fdb_event_to_device(ptr noundef nonnull %72, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  switch i32 %84, label %106 [
    i32 -95, label %85
    i32 0, label %85
  ]

85:                                               ; preds = %83, %83, %79, %71
  %86 = call ptr @netdev_lower_get_next(ptr noundef %0, ptr noundef nonnull %17) #8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %106, label %71

88:                                               ; preds = %50, %36
  %89 = call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %0) #8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %106, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.net_device, ptr %89, i32 0, i32 15
  %93 = load i64, ptr %92, align 16
  %94 = and i64 %93, 2
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  store ptr %4, ptr %9, align 4
  %97 = getelementptr inbounds %struct.switchdev_nested_priv, ptr %9, i32 0, i32 1
  store ptr %5, ptr %97, align 4
  %98 = getelementptr inbounds %struct.switchdev_nested_priv, ptr %9, i32 0, i32 2
  store ptr %89, ptr %98, align 4
  %99 = getelementptr inbounds %struct.switchdev_nested_priv, ptr %9, i32 0, i32 3
  store ptr null, ptr %99, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  store i64 0, ptr %10, align 8, !annotation !15
  %100 = getelementptr inbounds %struct.netdev_nested_priv, ptr %10, i32 0, i32 1
  store ptr %9, ptr %100, align 4
  %101 = call i32 @netdev_walk_all_lower_dev_rcu(ptr noundef nonnull %89, ptr noundef nonnull @switchdev_lower_dev_walk, ptr noundef nonnull %10) #8
  %102 = load ptr, ptr %99, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %96
  %105 = call fastcc i32 @__switchdev_handle_fdb_event_to_device(ptr noundef nonnull %89, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  br label %106

106:                                              ; preds = %104, %96, %91, %88, %85, %83, %61, %53, %46, %44, %19
  %107 = phi i32 [ %22, %19 ], [ %49, %46 ], [ %105, %104 ], [ -95, %44 ], [ 0, %53 ], [ 0, %91 ], [ 0, %88 ], [ 0, %96 ], [ 0, %61 ], [ %84, %83 ], [ 0, %85 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #8
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @switchdev_handle_port_obj_add(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = tail call fastcc i32 @__switchdev_handle_port_obj_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %6 = icmp eq i32 %5, -95
  %7 = select i1 %6, i32 0, i32 %5
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__switchdev_handle_port_obj_add(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %6 = getelementptr inbounds %struct.switchdev_notifier_info, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call zeroext i1 %2(ptr noundef %0) #8
  br i1 %8, label %9, label %18

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.switchdev_notifier_info, ptr %1, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %3(ptr noundef %0, ptr noundef %11, ptr noundef %13, ptr noundef %7) #8
  %15 = icmp eq i32 %14, -95
  br i1 %15, label %36, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %1, i32 0, i32 2
  store i8 1, ptr %17, align 4
  br label %36

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 13, i32 1
  %20 = load ptr, ptr %19, align 8
  store ptr %20, ptr %5, align 4
  %21 = call ptr @netdev_lower_get_next(ptr noundef %0, ptr noundef nonnull %5) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %32, %18
  %24 = phi i32 [ %33, %32 ], [ -95, %18 ]
  %25 = phi ptr [ %34, %32 ], [ %21, %18 ]
  %26 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 15
  %27 = load i64, ptr %26, align 16
  %28 = and i64 %27, 2
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call fastcc i32 @__switchdev_handle_port_obj_add(ptr noundef nonnull %25, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  switch i32 %31, label %36 [
    i32 -95, label %32
    i32 0, label %32
  ]

32:                                               ; preds = %30, %30, %23
  %33 = phi i32 [ %24, %23 ], [ %31, %30 ], [ %31, %30 ]
  %34 = call ptr @netdev_lower_get_next(ptr noundef %0, ptr noundef nonnull %5) #8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %23

36:                                               ; preds = %32, %30, %18, %16, %9
  %37 = phi i32 [ %14, %16 ], [ -95, %9 ], [ -95, %18 ], [ %31, %30 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @switchdev_handle_port_obj_del(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = tail call fastcc i32 @__switchdev_handle_port_obj_del(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %6 = icmp eq i32 %5, -95
  %7 = select i1 %6, i32 0, i32 %5
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__switchdev_handle_port_obj_del(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %6 = tail call zeroext i1 %2(ptr noundef %0) #8
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.switchdev_notifier_info, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %3(ptr noundef %0, ptr noundef %9, ptr noundef %11) #8
  %13 = icmp eq i32 %12, -95
  br i1 %13, label %34, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %1, i32 0, i32 2
  store i8 1, ptr %15, align 4
  br label %34

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 13, i32 1
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %5, align 4
  %19 = call ptr @netdev_lower_get_next(ptr noundef %0, ptr noundef nonnull %5) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %30, %16
  %22 = phi i32 [ %31, %30 ], [ -95, %16 ]
  %23 = phi ptr [ %32, %30 ], [ %19, %16 ]
  %24 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 15
  %25 = load i64, ptr %24, align 16
  %26 = and i64 %25, 2
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call fastcc i32 @__switchdev_handle_port_obj_del(ptr noundef nonnull %23, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  switch i32 %29, label %34 [
    i32 -95, label %30
    i32 0, label %30
  ]

30:                                               ; preds = %28, %28, %21
  %31 = phi i32 [ %22, %21 ], [ %29, %28 ], [ %29, %28 ]
  %32 = call ptr @netdev_lower_get_next(ptr noundef %0, ptr noundef nonnull %5) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %21

34:                                               ; preds = %30, %28, %16, %14, %7
  %35 = phi i32 [ %12, %14 ], [ -95, %7 ], [ -95, %16 ], [ %29, %28 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @switchdev_handle_port_attr_set(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = tail call fastcc i32 @__switchdev_handle_port_attr_set(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %6 = icmp eq i32 %5, -95
  %7 = select i1 %6, i32 0, i32 %5
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__switchdev_handle_port_attr_set(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %6 = getelementptr inbounds %struct.switchdev_notifier_info, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call zeroext i1 %2(ptr noundef %0) #8
  br i1 %8, label %9, label %18

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.switchdev_notifier_info, ptr %1, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.switchdev_notifier_port_attr_info, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %3(ptr noundef %0, ptr noundef %11, ptr noundef %13, ptr noundef %7) #8
  %15 = icmp eq i32 %14, -95
  br i1 %15, label %36, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.switchdev_notifier_port_attr_info, ptr %1, i32 0, i32 2
  store i8 1, ptr %17, align 4
  br label %36

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 13, i32 1
  %20 = load ptr, ptr %19, align 8
  store ptr %20, ptr %5, align 4
  %21 = call ptr @netdev_lower_get_next(ptr noundef %0, ptr noundef nonnull %5) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %32, %18
  %24 = phi i32 [ %33, %32 ], [ -95, %18 ]
  %25 = phi ptr [ %34, %32 ], [ %21, %18 ]
  %26 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 15
  %27 = load i64, ptr %26, align 16
  %28 = and i64 %27, 2
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call fastcc i32 @__switchdev_handle_port_attr_set(ptr noundef nonnull %25, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  switch i32 %31, label %36 [
    i32 -95, label %32
    i32 0, label %32
  ]

32:                                               ; preds = %30, %30, %23
  %33 = phi i32 [ %24, %23 ], [ %31, %30 ], [ %31, %30 ]
  %34 = call ptr @netdev_lower_get_next(ptr noundef %0, ptr noundef nonnull %5) #8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %23

36:                                               ; preds = %32, %30, %18, %16, %9
  %37 = phi i32 [ %14, %16 ], [ -95, %9 ], [ -95, %18 ], [ %31, %30 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @switchdev_bridge_port_offload(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr noundef %6) #0 {
  %8 = alloca %struct.switchdev_notifier_brport_info, align 4
  %9 = zext i1 %5 to i8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #8
  %10 = getelementptr inbounds %struct.switchdev_notifier_brport_info, ptr %8, i32 0, i32 1
  %11 = getelementptr inbounds i8, ptr %8, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  store ptr %1, ptr %10, align 4
  %12 = getelementptr inbounds %struct.switchdev_notifier_brport_info, ptr %8, i32 0, i32 1, i32 1
  store ptr %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.switchdev_notifier_brport_info, ptr %8, i32 0, i32 1, i32 2
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.switchdev_notifier_brport_info, ptr %8, i32 0, i32 1, i32 3
  store ptr %4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.switchdev_notifier_brport_info, ptr %8, i32 0, i32 1, i32 4
  store i8 %9, ptr %15, align 4
  %16 = tail call i32 @rtnl_is_locked() #8
  %17 = icmp eq i32 %16, 0
  %18 = load i1, ptr @switchdev_bridge_port_offload.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %7
  store i1 true, ptr @switchdev_bridge_port_offload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 726, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 726) #8
  br label %22

22:                                               ; preds = %21, %7
  store ptr %0, ptr %8, align 4
  %23 = getelementptr inbounds %struct.switchdev_notifier_info, ptr %8, i32 0, i32 1
  store ptr %6, ptr %23, align 4
  %24 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @switchdev_blocking_notif_chain, i32 noundef 15, ptr noundef nonnull %8) #8
  %25 = and i32 %24, -32769
  %26 = icmp sgt i32 %25, 1
  %27 = sub i32 1, %25
  %28 = select i1 %26, i32 %27, i32 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #8
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @switchdev_bridge_port_unoffload(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.switchdev_notifier_brport_info, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  %6 = getelementptr inbounds %struct.switchdev_notifier_brport_info, ptr %5, i32 0, i32 1, i32 1
  %7 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store ptr %1, ptr %6, align 4
  %8 = getelementptr inbounds %struct.switchdev_notifier_brport_info, ptr %5, i32 0, i32 1, i32 2
  store ptr %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.switchdev_notifier_brport_info, ptr %5, i32 0, i32 1, i32 3
  store ptr %3, ptr %9, align 4
  %10 = tail call i32 @rtnl_is_locked() #8
  %11 = icmp eq i32 %10, 0
  %12 = load i1, ptr @switchdev_bridge_port_unoffload.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %4
  store i1 true, ptr @switchdev_bridge_port_unoffload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 748, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 748) #8
  br label %16

16:                                               ; preds = %15, %4
  store ptr %0, ptr %5, align 4
  %17 = getelementptr inbounds %struct.switchdev_notifier_info, ptr %5, i32 0, i32 1
  store ptr null, ptr %17, align 4
  %18 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @switchdev_blocking_notif_chain, i32 noundef 16, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @switchdev_deferred_enqueue(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = add i32 %2, 16
  %6 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %5, i32 noundef 2592) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.switchdev_deferred_item, ptr %6, i32 0, i32 1
  store ptr %0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.switchdev_deferred_item, ptr %6, i32 0, i32 3
  store ptr %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.switchdev_deferred_item, ptr %6, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 16 %11, ptr align 1 %1, i32 %2, i1 false)
  %12 = icmp eq ptr %0, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %8
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !10
  %15 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 99
  %16 = load ptr, ptr %15, align 8
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #3, !srcloc !11
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #8, !srcloc !12
  br label %25

25:                                               ; preds = %13, %8
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @deferred_lock) #8
  %26 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @deferred, i32 0, i32 1), align 4
  store ptr %6, ptr getelementptr inbounds (%struct.list_head, ptr @deferred, i32 0, i32 1), align 4
  store ptr @deferred, ptr %6, align 64
  %27 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  store volatile ptr %6, ptr %26, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @deferred_lock) #8
  %28 = load ptr, ptr @system_wq, align 4
  %29 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %28, ptr noundef nonnull @deferred_process_work) #8
  br label %30

30:                                               ; preds = %25, %4
  %31 = phi i32 [ 0, %25 ], [ -12, %4 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @switchdev_port_attr_set_deferred(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.switchdev_notifier_port_attr_info, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct.switchdev_notifier_port_attr_info, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false) #8
  store ptr %1, ptr %4, align 4
  %6 = getelementptr inbounds %struct.switchdev_notifier_port_attr_info, ptr %3, i32 0, i32 2
  store ptr %0, ptr %3, align 4
  %7 = getelementptr inbounds %struct.switchdev_notifier_info, ptr %3, i32 0, i32 1
  store ptr null, ptr %7, align 4
  %8 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @switchdev_blocking_notif_chain, i32 noundef 9, ptr noundef nonnull %3) #8
  %9 = and i32 %8, -32769
  %10 = icmp sgt i32 %9, 1
  %11 = sub i32 1, %9
  %12 = select i1 %10, i32 %11, i32 0
  %13 = icmp eq i32 %12, 0
  %14 = load i8, ptr %6, align 4, !range !13
  %15 = icmp eq i8 %14, 0
  br i1 %13, label %18, label %16

16:                                               ; preds = %2
  br i1 %15, label %17, label %20, !prof !9

17:                                               ; preds = %16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 119, i32 noundef 9, ptr noundef null) #8
  br label %20

18:                                               ; preds = %2
  %19 = select i1 %15, i32 -95, i32 0
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #8
  br label %24

20:                                               ; preds = %17, %16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #8
  switch i32 %12, label %21 [
    i32 -95, label %24
    i32 0, label %24
  ]

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.switchdev_attr, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %12, i32 noundef %23) #10
  br label %24

24:                                               ; preds = %21, %20, %20, %18
  %25 = phi i32 [ %19, %18 ], [ %12, %20 ], [ %12, %20 ], [ %12, %21 ]
  %26 = getelementptr inbounds %struct.switchdev_attr, ptr %1, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.switchdev_attr, ptr %1, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  call void %27(ptr noundef %0, i32 noundef %25, ptr noundef %31) #8
  br label %32

32:                                               ; preds = %29, %24
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @switchdev_deferred_process_work(ptr nocapture noundef readnone %0) #0 {
  tail call void @rtnl_lock() #8
  tail call void @switchdev_deferred_process()
  tail call void @rtnl_unlock() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @switchdev_port_obj_add_deferred(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.switchdev_notifier_port_obj_info, align 4
  %4 = tail call i32 @rtnl_is_locked() #8
  %5 = icmp eq i32 %4, 0
  %6 = load i1, ptr @switchdev_port_obj_add_deferred.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %2
  store i1 true, ptr @switchdev_port_obj_add_deferred.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 224, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 224) #8
  br label %10

10:                                               ; preds = %9, %2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #8
  %11 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %3, i32 0, i32 1
  %12 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %12, i8 0, i64 12, i1 false) #8
  store ptr %1, ptr %11, align 4
  %13 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %3, i32 0, i32 2
  store ptr %0, ptr %3, align 4
  %14 = getelementptr inbounds %struct.switchdev_notifier_info, ptr %3, i32 0, i32 1
  store ptr null, ptr %14, align 4
  %15 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @switchdev_blocking_notif_chain, i32 noundef 7, ptr noundef nonnull %3) #8
  %16 = and i32 %15, -32769
  %17 = icmp sgt i32 %16, 1
  %18 = sub i32 1, %16
  %19 = select i1 %17, i32 %18, i32 0
  %20 = icmp eq i32 %19, 0
  %21 = load i8, ptr %13, align 4, !range !13
  %22 = icmp eq i8 %21, 0
  br i1 %20, label %25, label %23

23:                                               ; preds = %10
  br i1 %22, label %24, label %27, !prof !9

24:                                               ; preds = %23
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 210, i32 noundef 9, ptr noundef null) #8
  br label %27

25:                                               ; preds = %10
  %26 = select i1 %22, i32 -95, i32 0
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #8
  br label %31

27:                                               ; preds = %24, %23
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #8
  switch i32 %19, label %28 [
    i32 -95, label %31
    i32 0, label %31
  ]

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.switchdev_obj, ptr %1, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %19, i32 noundef %30) #10
  br label %31

31:                                               ; preds = %28, %27, %27, %25
  %32 = phi i32 [ %26, %25 ], [ %19, %27 ], [ %19, %27 ], [ %19, %28 ]
  %33 = getelementptr inbounds %struct.switchdev_obj, ptr %1, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.switchdev_obj, ptr %1, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  call void %34(ptr noundef %0, i32 noundef %32, ptr noundef %38) #8
  br label %39

39:                                               ; preds = %36, %31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @switchdev_port_obj_del_deferred(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.switchdev_notifier_port_obj_info, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false) #8
  store ptr %1, ptr %4, align 4
  %6 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %3, i32 0, i32 2
  store ptr %0, ptr %3, align 4
  %7 = getelementptr inbounds %struct.switchdev_notifier_info, ptr %3, i32 0, i32 1
  store ptr null, ptr %7, align 4
  %8 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @switchdev_blocking_notif_chain, i32 noundef 8, ptr noundef nonnull %3) #8
  %9 = and i32 %8, -32769
  %10 = icmp sgt i32 %9, 1
  %11 = sub i32 1, %9
  %12 = select i1 %10, i32 %11, i32 0
  %13 = icmp eq i32 %12, 0
  %14 = load i8, ptr %6, align 4, !range !13
  %15 = icmp eq i8 %14, 0
  br i1 %13, label %18, label %16

16:                                               ; preds = %2
  br i1 %15, label %17, label %20, !prof !9

17:                                               ; preds = %16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 210, i32 noundef 9, ptr noundef null) #8
  br label %20

18:                                               ; preds = %2
  %19 = select i1 %15, i32 -95, i32 0
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #8
  br label %24

20:                                               ; preds = %17, %16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #8
  switch i32 %12, label %21 [
    i32 -95, label %24
    i32 0, label %24
  ]

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.switchdev_obj, ptr %1, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %12, i32 noundef %23) #10
  br label %24

24:                                               ; preds = %21, %20, %20, %18
  %25 = phi i32 [ %19, %18 ], [ %12, %20 ], [ %12, %20 ], [ %12, %21 ]
  %26 = getelementptr inbounds %struct.switchdev_obj, ptr %1, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.switchdev_obj, ptr %1, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  call void %27(ptr noundef %0, i32 noundef %25, ptr noundef %31) #8
  br label %32

32:                                               ; preds = %29, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_lower_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_walk_all_lower_dev_rcu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @switchdev_lower_dev_walk(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.netdev_nested_priv, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.switchdev_nested_priv, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.switchdev_nested_priv, ptr %4, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call zeroext i1 %5(ptr noundef %0) #8
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = tail call zeroext i1 %7(ptr noundef %0, ptr noundef %9) #8
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.switchdev_nested_priv, ptr %4, i32 0, i32 3
  store ptr %0, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %11, %2
  %16 = phi i32 [ 1, %13 ], [ 0, %11 ], [ 0, %2 ]
  ret i32 %16
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 325290, i64 325351}
!11 = !{i64 343990}
!12 = !{i64 328307}
!13 = !{i8 0, i8 2}
!14 = !{i64 2155818087, i64 2155818577, i64 2155818124, i64 2155818180, i64 2155818214, i64 2155818238, i64 2155818279, i64 2155818300, i64 2155818328, i64 2155818362}
!15 = !{!"auto-init"}
