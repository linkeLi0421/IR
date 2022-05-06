; ModuleID = '/llk/IR/net/dsa/dsa.c_pt.bc'
source_filename = "../net/dsa/dsa.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_tag_drivers_register:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_tag_drivers_register\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_tag_drivers_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_tag_drivers_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_tag_drivers_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_tag_drivers_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_dev_to_net_device:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_dev_to_net_device\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_dev_to_net_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_switch_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_switch_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_switch_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_switch_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_switch_resume\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_switch_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_flush_workqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_flush_workqueue\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_flush_workqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_devlink_param_get:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_devlink_param_get\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_devlink_param_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_devlink_param_set:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_devlink_param_set\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_devlink_param_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_devlink_params_register:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_devlink_params_register\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_devlink_params_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_devlink_params_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_devlink_params_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_devlink_params_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_devlink_resource_register:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_devlink_resource_register\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_devlink_resource_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_devlink_resources_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_devlink_resources_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_devlink_resources_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_devlink_resource_occ_get_register:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_devlink_resource_occ_get_register\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_devlink_resource_occ_get_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_devlink_resource_occ_get_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_devlink_resource_occ_get_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_devlink_resource_occ_get_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_devlink_region_create:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_devlink_region_create\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_devlink_region_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_devlink_port_region_create:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_devlink_port_region_create\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_devlink_port_region_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_devlink_region_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_devlink_region_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_devlink_region_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsa_port_from_netdev:\09\09\09\09\09"
module asm "\09.asciz \09\22dsa_port_from_netdev\22\09\09\09\09\09"
module asm "__kstrtabns_dsa_port_from_netdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.packet_type = type { i16, i8, ptr, %struct.netdevice_tracker, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.netdevice_tracker = type {}
%struct.dsa_tag_driver = type { ptr, %struct.list_head, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.dsa_device_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8 }
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
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dsa_port = type { %union.anon.119, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.119 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.108 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.108 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.133, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.133 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.134, %union.anon.135, [48 x i8], %union.anon.136, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.138, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.134 = type { ptr }
%union.anon.135 = type { i64 }
%union.anon.136 = type { %struct.anon.137 }
%struct.anon.137 = type { i32, ptr }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.140, i32, i32, i32, i16, i16, %union.anon.142, %union.anon.143, %union.anon.144, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.140 = type { i32 }
%union.anon.142 = type { i32 }
%union.anon.143 = type { i32 }
%union.anon.144 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync, [28 x i8] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }

@__kstrtab_dsa_tag_drivers_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_tag_drivers_register = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_tag_drivers_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_tag_drivers_register to i32), ptr @__kstrtab_dsa_tag_drivers_register, ptr @__kstrtabns_dsa_tag_drivers_register }, section "___ksymtab_gpl+dsa_tag_drivers_register", align 4
@__kstrtab_dsa_tag_drivers_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_tag_drivers_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_tag_drivers_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_tag_drivers_unregister to i32), ptr @__kstrtab_dsa_tag_drivers_unregister, ptr @__kstrtabns_dsa_tag_drivers_unregister }, section "___ksymtab_gpl+dsa_tag_drivers_unregister", align 4
@dsa_tag_drivers_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dsa_tag_drivers_lock, i64 12), ptr getelementptr (i8, ptr @dsa_tag_drivers_lock, i64 12) } }, align 4
@dsa_tag_drivers_list = internal global %struct.list_head { ptr @dsa_tag_drivers_list, ptr @dsa_tag_drivers_list }, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"dsa_tag-\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"net\00", align 1
@__kstrtab_dsa_dev_to_net_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_dev_to_net_device = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_dev_to_net_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_dev_to_net_device to i32), ptr @__kstrtab_dsa_dev_to_net_device, ptr @__kstrtabns_dsa_dev_to_net_device }, section "___ksymtab_gpl+dsa_dev_to_net_device", align 4
@__kstrtab_dsa_switch_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_switch_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_switch_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_switch_suspend to i32), ptr @__kstrtab_dsa_switch_suspend, ptr @__kstrtabns_dsa_switch_suspend }, section "___ksymtab_gpl+dsa_switch_suspend", align 4
@__kstrtab_dsa_switch_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_switch_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_switch_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_switch_resume to i32), ptr @__kstrtab_dsa_switch_resume, ptr @__kstrtabns_dsa_switch_resume }, section "___ksymtab_gpl+dsa_switch_resume", align 4
@dsa_owq = internal unnamed_addr global ptr null, align 4
@__kstrtab_dsa_flush_workqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_flush_workqueue = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_flush_workqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_flush_workqueue to i32), ptr @__kstrtab_dsa_flush_workqueue, ptr @__kstrtabns_dsa_flush_workqueue }, section "___ksymtab_gpl+dsa_flush_workqueue", align 4
@__kstrtab_dsa_devlink_param_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_devlink_param_get = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_devlink_param_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_devlink_param_get to i32), ptr @__kstrtab_dsa_devlink_param_get, ptr @__kstrtabns_dsa_devlink_param_get }, section "___ksymtab_gpl+dsa_devlink_param_get", align 4
@__kstrtab_dsa_devlink_param_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_devlink_param_set = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_devlink_param_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_devlink_param_set to i32), ptr @__kstrtab_dsa_devlink_param_set, ptr @__kstrtabns_dsa_devlink_param_set }, section "___ksymtab_gpl+dsa_devlink_param_set", align 4
@__kstrtab_dsa_devlink_params_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_devlink_params_register = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_devlink_params_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_devlink_params_register to i32), ptr @__kstrtab_dsa_devlink_params_register, ptr @__kstrtabns_dsa_devlink_params_register }, section "___ksymtab_gpl+dsa_devlink_params_register", align 4
@__kstrtab_dsa_devlink_params_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_devlink_params_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_devlink_params_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_devlink_params_unregister to i32), ptr @__kstrtab_dsa_devlink_params_unregister, ptr @__kstrtabns_dsa_devlink_params_unregister }, section "___ksymtab_gpl+dsa_devlink_params_unregister", align 4
@__kstrtab_dsa_devlink_resource_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_devlink_resource_register = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_devlink_resource_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_devlink_resource_register to i32), ptr @__kstrtab_dsa_devlink_resource_register, ptr @__kstrtabns_dsa_devlink_resource_register }, section "___ksymtab_gpl+dsa_devlink_resource_register", align 4
@__kstrtab_dsa_devlink_resources_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_devlink_resources_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_devlink_resources_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_devlink_resources_unregister to i32), ptr @__kstrtab_dsa_devlink_resources_unregister, ptr @__kstrtabns_dsa_devlink_resources_unregister }, section "___ksymtab_gpl+dsa_devlink_resources_unregister", align 4
@__kstrtab_dsa_devlink_resource_occ_get_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_devlink_resource_occ_get_register = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_devlink_resource_occ_get_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_devlink_resource_occ_get_register to i32), ptr @__kstrtab_dsa_devlink_resource_occ_get_register, ptr @__kstrtabns_dsa_devlink_resource_occ_get_register }, section "___ksymtab_gpl+dsa_devlink_resource_occ_get_register", align 4
@__kstrtab_dsa_devlink_resource_occ_get_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_devlink_resource_occ_get_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_devlink_resource_occ_get_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_devlink_resource_occ_get_unregister to i32), ptr @__kstrtab_dsa_devlink_resource_occ_get_unregister, ptr @__kstrtabns_dsa_devlink_resource_occ_get_unregister }, section "___ksymtab_gpl+dsa_devlink_resource_occ_get_unregister", align 4
@__kstrtab_dsa_devlink_region_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_devlink_region_create = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_devlink_region_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_devlink_region_create to i32), ptr @__kstrtab_dsa_devlink_region_create, ptr @__kstrtabns_dsa_devlink_region_create }, section "___ksymtab_gpl+dsa_devlink_region_create", align 4
@__kstrtab_dsa_devlink_port_region_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_devlink_port_region_create = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_devlink_port_region_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_devlink_port_region_create to i32), ptr @__kstrtab_dsa_devlink_port_region_create, ptr @__kstrtabns_dsa_devlink_port_region_create }, section "___ksymtab_gpl+dsa_devlink_port_region_create", align 4
@__kstrtab_dsa_devlink_region_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_devlink_region_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_devlink_region_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_devlink_region_destroy to i32), ptr @__kstrtab_dsa_devlink_region_destroy, ptr @__kstrtabns_dsa_devlink_region_destroy }, section "___ksymtab_gpl+dsa_devlink_region_destroy", align 4
@__kstrtab_dsa_port_from_netdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsa_port_from_netdev = external dso_local constant [0 x i8], align 1
@__ksymtab_dsa_port_from_netdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsa_port_from_netdev to i32), ptr @__kstrtab_dsa_port_from_netdev, ptr @__kstrtabns_dsa_port_from_netdev }, section "___ksymtab_gpl+dsa_port_from_netdev", align 4
@__UNIQUE_ID_author453 = internal constant [50 x i8] c"author=Lennert Buytenhek <buytenh@wantstofly.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description454 = internal constant [68 x i8] c"description=Driver for Distributed Switch Architecture switch chips\00", section ".modinfo", align 1
@__UNIQUE_ID_license455 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias456 = internal constant [19 x i8] c"alias=platform:dsa\00", section ".modinfo", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"dsa_ordered\00", align 1
@dsa_pack_type = internal global %struct.packet_type { i16 -2048, i8 0, ptr null, %struct.netdevice_tracker zeroinitializer, ptr @dsa_switch_rcv, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@dsa_tag_driver_none_ops = internal global %struct.dsa_tag_driver { ptr @none_ops, %struct.list_head zeroinitializer, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@none_ops = internal constant %struct.dsa_device_ops { ptr @dsa_slave_notag_xmit, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr @.str.4, i32 0, i8 0 }, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_alias456, ptr @__UNIQUE_ID_author453, ptr @__UNIQUE_ID_description454, ptr @__UNIQUE_ID_license455, ptr @__ksymtab_dsa_dev_to_net_device, ptr @__ksymtab_dsa_devlink_param_get, ptr @__ksymtab_dsa_devlink_param_set, ptr @__ksymtab_dsa_devlink_params_register, ptr @__ksymtab_dsa_devlink_params_unregister, ptr @__ksymtab_dsa_devlink_port_region_create, ptr @__ksymtab_dsa_devlink_region_create, ptr @__ksymtab_dsa_devlink_region_destroy, ptr @__ksymtab_dsa_devlink_resource_occ_get_register, ptr @__ksymtab_dsa_devlink_resource_occ_get_unregister, ptr @__ksymtab_dsa_devlink_resource_register, ptr @__ksymtab_dsa_devlink_resources_unregister, ptr @__ksymtab_dsa_flush_workqueue, ptr @__ksymtab_dsa_port_from_netdev, ptr @__ksymtab_dsa_switch_resume, ptr @__ksymtab_dsa_switch_suspend, ptr @__ksymtab_dsa_tag_drivers_register, ptr @__ksymtab_dsa_tag_drivers_unregister], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_tag_drivers_register(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %5, %3
  %6 = phi i32 [ %13, %5 ], [ 0, %3 ]
  %7 = getelementptr ptr, ptr %0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dsa_tag_driver, ptr %8, i32 0, i32 2
  store ptr %2, ptr %9, align 4
  tail call void @mutex_lock(ptr noundef nonnull @dsa_tag_drivers_lock) #8
  %10 = getelementptr inbounds %struct.dsa_tag_driver, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dsa_tag_drivers_list, i32 0, i32 1), align 4
  store ptr %10, ptr getelementptr inbounds (%struct.list_head, ptr @dsa_tag_drivers_list, i32 0, i32 1), align 4
  store ptr @dsa_tag_drivers_list, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dsa_tag_driver, ptr %8, i32 0, i32 1, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %10, ptr %11, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @dsa_tag_drivers_lock) #8
  %13 = add nuw i32 %6, 1
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %5

15:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_tag_drivers_unregister(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %13, %4 ], [ 0, %2 ]
  %6 = getelementptr ptr, ptr %0, i32 %5
  %7 = load ptr, ptr %6, align 4
  tail call void @mutex_lock(ptr noundef nonnull @dsa_tag_drivers_lock) #8
  %8 = getelementptr inbounds %struct.dsa_tag_driver, ptr %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.dsa_tag_driver, ptr %7, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @dsa_tag_drivers_lock) #8
  %13 = add nuw i32 %5, 1
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %4

15:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @dsa_tag_protocol_to_str(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dsa_device_ops, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dsa_find_tagger_by_name(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @dsa_tag_drivers_lock) #8
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @dsa_tag_drivers_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @dsa_tag_drivers_list
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dsa_device_ops, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = tail call zeroext i1 @sysfs_streq(ptr noundef %0, ptr noundef %10) #8
  br i1 %11, label %12, label %2

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %4, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 @try_module_get(ptr noundef %14) #8
  %16 = select i1 %15, ptr %8, ptr inttoptr (i32 -92 to ptr)
  br label %17

17:                                               ; preds = %12, %2
  %18 = phi ptr [ %16, %12 ], [ inttoptr (i32 -92 to ptr), %2 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dsa_tag_drivers_lock) #8
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dsa_tag_driver_get(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %0) #8
  tail call void @mutex_lock(ptr noundef nonnull @dsa_tag_drivers_lock) #8
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ @dsa_tag_drivers_list, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @dsa_tag_drivers_list
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dsa_device_ops, ptr %9, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, %0
  br i1 %12, label %13, label %3

13:                                               ; preds = %7
  %14 = getelementptr i8, ptr %5, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = tail call zeroext i1 @try_module_get(ptr noundef %15) #8
  %17 = select i1 %16, ptr %9, ptr inttoptr (i32 -92 to ptr)
  br label %18

18:                                               ; preds = %13, %3
  %19 = phi ptr [ %17, %13 ], [ inttoptr (i32 -92 to ptr), %3 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dsa_tag_drivers_lock) #8
  ret ptr %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_tag_driver_put(ptr noundef readnone %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @dsa_tag_drivers_lock) #8
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @dsa_tag_drivers_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @dsa_tag_drivers_list
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %4, i32 8
  %12 = load ptr, ptr %11, align 4
  tail call void @module_put(ptr noundef %12) #8
  br label %13

13:                                               ; preds = %10, %2
  tail call void @mutex_unlock(ptr noundef nonnull @dsa_tag_drivers_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dsa_dev_to_net_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(4) @.str.2) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call ptr @get_device(ptr noundef %0) #8
  br label %13

11:                                               ; preds = %5, %1
  %12 = tail call ptr @device_find_child(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @dev_is_class) #8
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi ptr [ %0, %9 ], [ %12, %11 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %13
  %17 = getelementptr i8, ptr %14, i32 -688
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %16
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !9
  %21 = getelementptr i8, ptr %14, i32 -40
  %22 = load ptr, ptr %21, align 8
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #6, !srcloc !10
  %27 = add i32 %26, %23
  %28 = inttoptr i32 %27 to ptr
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #8, !srcloc !11
  br label %31

31:                                               ; preds = %19, %16
  tail call void @put_device(ptr noundef nonnull %14) #8
  br label %32

32:                                               ; preds = %31, %13
  %33 = phi ptr [ %17, %31 ], [ null, %13 ]
  ret ptr %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_switch_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %31, label %7

7:                                                ; preds = %26, %1
  %8 = phi ptr [ %27, %26 ], [ %3, %1 ]
  %9 = phi ptr [ %28, %26 ], [ %5, %1 ]
  %10 = getelementptr i8, ptr %9, i32 -280
  %11 = getelementptr i8, ptr %9, i32 -264
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %26

14:                                               ; preds = %7
  %15 = getelementptr i8, ptr %9, i32 -256
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load ptr, ptr %10, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @dsa_slave_suspend(ptr noundef nonnull %19) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load ptr, ptr %2, align 4
  br label %26

26:                                               ; preds = %24, %18, %14, %7
  %27 = phi ptr [ %25, %24 ], [ %8, %14 ], [ %8, %7 ], [ %8, %18 ]
  %28 = load ptr, ptr %9, align 4
  %29 = getelementptr inbounds %struct.dsa_switch_tree, ptr %27, i32 0, i32 1
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %31, label %7

31:                                               ; preds = %26, %1
  %32 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.dsa_switch_ops, ptr %33, i32 0, i32 32
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = tail call i32 %35(ptr noundef %0) #8
  br label %39

39:                                               ; preds = %37, %31, %21
  %40 = phi i32 [ %38, %37 ], [ 0, %31 ], [ %22, %21 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_slave_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_switch_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dsa_switch_ops, ptr %3, i32 0, i32 33
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dsa_switch_tree, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %40, label %16

16:                                               ; preds = %35, %10
  %17 = phi ptr [ %36, %35 ], [ %12, %10 ]
  %18 = phi ptr [ %37, %35 ], [ %14, %10 ]
  %19 = getelementptr i8, ptr %18, i32 -280
  %20 = getelementptr i8, ptr %18, i32 -264
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %35

23:                                               ; preds = %16
  %24 = getelementptr i8, ptr %18, i32 -256
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load ptr, ptr %19, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @dsa_slave_resume(ptr noundef nonnull %28) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load ptr, ptr %11, align 4
  br label %35

35:                                               ; preds = %33, %27, %23, %16
  %36 = phi ptr [ %34, %33 ], [ %17, %23 ], [ %17, %16 ], [ %17, %27 ]
  %37 = load ptr, ptr %18, align 4
  %38 = getelementptr inbounds %struct.dsa_switch_tree, ptr %36, i32 0, i32 1
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %16

40:                                               ; preds = %35, %30, %10, %7
  %41 = phi i32 [ %8, %7 ], [ 0, %10 ], [ %31, %30 ], [ 0, %35 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_slave_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @dsa_schedule_work(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @dsa_owq, align 4
  %3 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %2, ptr noundef %0) #8
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_flush_workqueue() #0 {
  %1 = load ptr, ptr @dsa_owq, align 4
  tail call void @flush_workqueue(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_devlink_param_get(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @devlink_priv(ptr noundef %0) #8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch_ops, ptr %7, i32 0, i32 78
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call i32 %9(ptr noundef %5, i32 noundef %1, ptr noundef %2) #8
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi i32 [ %12, %11 ], [ -95, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_devlink_param_set(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @devlink_priv(ptr noundef %0) #8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsa_switch, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch_ops, ptr %7, i32 0, i32 79
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call i32 %9(ptr noundef %5, i32 noundef %1, ptr noundef %2) #8
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi i32 [ %12, %11 ], [ -95, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_devlink_params_register(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @devlink_params_register(ptr noundef %5, ptr noundef %1, i32 noundef %2) #8
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_params_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_devlink_params_unregister(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  tail call void @devlink_params_unregister(ptr noundef %5, ptr noundef %1, i32 noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_params_unregister(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dsa_devlink_resource_register(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #0 {
  %7 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @devlink_resource_register(ptr noundef %8, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #8
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_resource_register(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_devlink_resources_unregister(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  tail call void @devlink_resources_unregister(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_resources_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_devlink_resource_occ_get_register(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  tail call void @devlink_resource_occ_get_register(ptr noundef %6, i64 noundef %1, ptr noundef %2, ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_resource_occ_get_register(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_devlink_resource_occ_get_unregister(ptr nocapture noundef readonly %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  tail call void @devlink_resource_occ_get_unregister(ptr noundef %4, i64 noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_resource_occ_get_unregister(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dsa_devlink_region_create(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @devlink_region_create(ptr noundef %6, ptr noundef %1, i32 noundef %2, i64 noundef %3) #8
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_region_create(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dsa_devlink_port_region_create(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch_tree, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %25, label %11

11:                                               ; preds = %20, %5
  %12 = phi ptr [ %21, %20 ], [ %9, %5 ]
  %13 = getelementptr i8, ptr %12, i32 -264
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %12, i32 -260
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %23, label %20

20:                                               ; preds = %16, %11
  %21 = load ptr, ptr %12, align 4
  %22 = icmp eq ptr %21, %8
  br i1 %22, label %25, label %11

23:                                               ; preds = %16
  %24 = getelementptr i8, ptr %12, i32 -280
  br label %25

25:                                               ; preds = %23, %20, %5
  %26 = phi ptr [ %24, %23 ], [ null, %5 ], [ null, %20 ]
  %27 = getelementptr inbounds %struct.dsa_port, ptr %26, i32 0, i32 15
  %28 = tail call ptr @devlink_port_region_create(ptr noundef %27, ptr noundef %2, i32 noundef %3, i64 noundef %4) #8
  ret ptr %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_port_region_create(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dsa_devlink_region_destroy(ptr noundef %0) #0 {
  tail call void @devlink_region_destroy(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_region_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dsa_port_from_netdev(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = tail call zeroext i1 @dsa_slave_dev_check(ptr noundef nonnull %0) #8
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 1416
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %3, %1
  %9 = phi ptr [ %7, %5 ], [ inttoptr (i32 -19 to ptr), %3 ], [ inttoptr (i32 -19 to ptr), %1 ]
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dsa_slave_dev_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.3, i32 noundef 655370, i32 noundef 1) #8
  store ptr %1, ptr @dsa_owq, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @dsa_slave_register_notifier() #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  tail call void @dev_add_pack(ptr noundef nonnull @dsa_pack_type) #8
  store ptr @__this_module, ptr getelementptr inbounds (%struct.dsa_tag_driver, ptr @dsa_tag_driver_none_ops, i32 0, i32 2), align 4
  tail call void @mutex_lock(ptr noundef nonnull @dsa_tag_drivers_lock) #8
  %7 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dsa_tag_drivers_list, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.dsa_tag_driver, ptr @dsa_tag_driver_none_ops, i32 0, i32 1), ptr getelementptr inbounds (%struct.list_head, ptr @dsa_tag_drivers_list, i32 0, i32 1), align 4
  store ptr @dsa_tag_drivers_list, ptr getelementptr inbounds (%struct.dsa_tag_driver, ptr @dsa_tag_driver_none_ops, i32 0, i32 1), align 4
  store ptr %7, ptr getelementptr inbounds (%struct.dsa_tag_driver, ptr @dsa_tag_driver_none_ops, i32 0, i32 1, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.dsa_tag_driver, ptr @dsa_tag_driver_none_ops, i32 0, i32 1), ptr %7, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @dsa_tag_drivers_lock) #8
  br label %10

8:                                                ; preds = %3
  %9 = load ptr, ptr @dsa_owq, align 4
  tail call void @destroy_workqueue(ptr noundef %9) #8
  br label %10

10:                                               ; preds = %8, %6, %0
  %11 = phi i32 [ %4, %8 ], [ 0, %6 ], [ -12, %0 ]
  ret i32 %11
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @mutex_lock(ptr noundef nonnull @dsa_tag_drivers_lock) #8
  %1 = load ptr, ptr getelementptr inbounds (%struct.dsa_tag_driver, ptr @dsa_tag_driver_none_ops, i32 0, i32 1, i32 1), align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.dsa_tag_driver, ptr @dsa_tag_driver_none_ops, i32 0, i32 1), align 4
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %1, ptr %3, align 4
  store volatile ptr %2, ptr %1, align 4
  store ptr inttoptr (i32 256 to ptr), ptr getelementptr inbounds (%struct.dsa_tag_driver, ptr @dsa_tag_driver_none_ops, i32 0, i32 1), align 4
  store ptr inttoptr (i32 290 to ptr), ptr getelementptr inbounds (%struct.dsa_tag_driver, ptr @dsa_tag_driver_none_ops, i32 0, i32 1, i32 1), align 4
  tail call void @mutex_unlock(ptr noundef nonnull @dsa_tag_drivers_lock) #8
  tail call void @dsa_slave_unregister_notifier() #8
  tail call void @dev_remove_pack(ptr noundef nonnull @dsa_pack_type) #8
  %4 = load ptr, ptr @dsa_owq, align 4
  tail call void @destroy_workqueue(ptr noundef %4) #8
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dev_is_class(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 4
  %8 = tail call i32 @strcmp(ptr noundef %7, ptr noundef %1)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %2
  br label %11

11:                                               ; preds = %10, %6
  %12 = phi i32 [ 0, %10 ], [ 1, %6 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_find_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_slave_register_notifier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsa_switch_rcv(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 67
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !12

8:                                                ; preds = %4
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #8
  br label %112

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %11 = load i8, ptr %10, align 2
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 10
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = tail call ptr @skb_copy(ptr noundef %0, i32 noundef 2592) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24, !prof !12

24:                                               ; preds = %21
  tail call void @consume_skb(ptr noundef %0) #8
  br label %28

25:                                               ; preds = %21
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #8
  br label %112

26:                                               ; preds = %14, %9
  %27 = icmp eq ptr %0, null
  br i1 %27, label %112, label %28

28:                                               ; preds = %26, %24
  %29 = phi ptr [ %22, %24 ], [ %0, %26 ]
  %30 = getelementptr inbounds %struct.dsa_port, ptr %6, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = tail call ptr %31(ptr noundef nonnull %29, ptr noundef %1) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  tail call void @kfree_skb_reason(ptr noundef nonnull %29, i32 noundef 0) #8
  br label %112

35:                                               ; preds = %28
  %36 = tail call ptr @skb_push(ptr noundef nonnull %32, i32 noundef 14) #8
  %37 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 13
  %38 = load i16, ptr %37, align 8
  %39 = and i16 %38, -8
  store i16 %39, ptr %37, align 8
  %40 = getelementptr inbounds %struct.anon, ptr %32, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %32, ptr noundef %41) #8
  %43 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 13, i32 0, i32 16
  store i16 %42, ptr %43, align 8
  %44 = load ptr, ptr %40, align 8
  %45 = tail call zeroext i1 @dsa_slave_dev_check(ptr noundef %44) #8
  br i1 %45, label %48, label %46, !prof !13

46:                                               ; preds = %35
  %47 = tail call i32 @netif_rx(ptr noundef nonnull %32) #8
  br label %112

48:                                               ; preds = %35
  %49 = load ptr, ptr %40, align 8
  %50 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 5
  %51 = load i32, ptr %50, align 8
  %52 = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 110
  %53 = load ptr, ptr %52, align 8
  %54 = ptrtoint ptr %53 to i32
  %55 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %56 = inttoptr i32 %55 to ptr
  %57 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %56) #6, !srcloc !10
  %58 = add i32 %57, %54
  %59 = inttoptr i32 %58 to ptr
  %60 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %59, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !14
  %63 = zext i32 %51 to i64
  %64 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %59, i32 0, i32 1
  %65 = load i64, ptr %64, align 8
  %66 = add i64 %65, %63
  store i64 %66, ptr %64, align 8
  %67 = load i64, ptr %59, align 32
  %68 = add i64 %67, 1
  store i64 %68, ptr %59, align 32
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !15
  %69 = load i32, ptr %60, align 4
  %70 = add i32 %69, 1
  store i32 %70, ptr %60, align 4
  %71 = getelementptr i8, ptr %49, i32 1416
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.dsa_port, ptr %72, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 17
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 16
  %78 = load ptr, ptr %77, align 8
  %79 = ptrtoint ptr %76 to i32
  %80 = ptrtoint ptr %78 to i32
  %81 = sub i32 %79, %80
  %82 = icmp ult i32 %81, 14
  br i1 %82, label %109, label %83

83:                                               ; preds = %48
  %84 = getelementptr i8, ptr %76, i32 -14
  store ptr %84, ptr %75, align 4
  %85 = load i32, ptr %50, align 8
  %86 = add i32 %85, 14
  store i32 %86, ptr %50, align 8
  %87 = tail call i32 @ptp_classify_raw(ptr noundef nonnull %32) #8
  %88 = load i32, ptr %50, align 8
  %89 = add i32 %88, -14
  store i32 %89, ptr %50, align 8
  %90 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 6
  %91 = load i32, ptr %90, align 4
  %92 = icmp ult i32 %89, %91
  br i1 %92, label %93, label %94, !prof !12

93:                                               ; preds = %83
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #8, !srcloc !16
  unreachable

94:                                               ; preds = %83
  %95 = load ptr, ptr %75, align 4
  %96 = getelementptr i8, ptr %95, i32 14
  store ptr %96, ptr %75, align 4
  %97 = icmp eq i32 %87, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.dsa_switch, ptr %74, i32 0, i32 8
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.dsa_switch_ops, ptr %100, i32 0, i32 77
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %109, label %104, !prof !12

104:                                              ; preds = %98
  %105 = load ptr, ptr %71, align 4
  %106 = getelementptr inbounds %struct.dsa_port, ptr %105, i32 0, i32 5
  %107 = load i32, ptr %106, align 4
  %108 = tail call zeroext i1 %102(ptr noundef %74, i32 noundef %107, ptr noundef nonnull %32, i32 noundef %87) #8
  br i1 %108, label %112, label %109

109:                                              ; preds = %104, %98, %94, %48
  %110 = getelementptr i8, ptr %49, i32 1412
  %111 = tail call i32 @gro_cells_receive(ptr noundef %110, ptr noundef nonnull %32) #8
  br label %112

112:                                              ; preds = %109, %104, %46, %34, %26, %25, %8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gro_cells_receive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_classify_raw(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @dsa_slave_notag_xmit(ptr noundef readnone returned %0, ptr nocapture noundef readnone %1) #7 {
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_slave_unregister_notifier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }

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
!9 = !{i64 611466, i64 611527}
!10 = !{i64 618571}
!11 = !{i64 614483}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2149638638}
!15 = !{i64 2149638939}
!16 = !{i64 2153554087, i64 2153554575, i64 2153554124, i64 2153554180, i64 2153554214, i64 2153554238, i64 2153554279, i64 2153554300, i64 2153554328, i64 2153554362}
