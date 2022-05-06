; ModuleID = '/llk/IR/drivers/net/dsa/bcm_sf2.c_pt.bc'
source_filename = "../drivers/net/dsa/bcm_sf2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.bcm_sf2_of_data = type { i32, ptr, i32, i32, i32 }
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
%struct.b53_io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.bcm_sf2_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, ptr, %struct.bcm_sf2_hw_params, [12 x %struct.bcm_sf2_port_status], i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, %struct.bcm_sf2_cfp_priv }
%struct.bcm_sf2_hw_params = type { i16, i16, i16, i32, i8, i8, i8, i8 }
%struct.bcm_sf2_port_status = type { i32, i32, i8 }
%struct.bcm_sf2_cfp_priv = type { %struct.mutex, [8 x i32], [8 x i32], i32, %struct.list_head }
%struct.b53_platform_data = type { %struct.dsa_chip_data, i32, i16, i8, ptr }
%struct.dsa_chip_data = type { ptr, i32, [12 x ptr], i32, ptr, [12 x ptr], [12 x ptr], [4 x i8] }
%struct.b53_device = type { ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, ptr, i32, i8, [3 x i8], i8, i8, i8, i32, i8, i16, i32, i16, i32, i8, ptr, i8, ptr, ptr, i8, i32, ptr, i8, i32, ptr }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.dsa_port = type { %union.anon.140, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.140 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.129 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.129 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_link_state = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i8 }
%struct.b53_port = type { i16, %struct.ethtool_eee }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.120, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.154, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.120 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.154 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }

@bcm_sf2_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4908-switch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_sf2_4908_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7445-switch-v4.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_sf2_7445_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7278-switch-v4.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_sf2_7278_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7278-switch-v4.8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_sf2_7278_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author453 = internal constant [28 x i8] c"author=Broadcom Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description454 = internal constant [67 x i8] c"description=Driver for Broadcom Starfighter 2 ethernet switch chip\00", section ".modinfo", align 1
@__UNIQUE_ID_license455 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias456 = internal constant [24 x i8] c"alias=platform:brcm-sf2\00", section ".modinfo", align 1
@bcm_sf2_4908_data = internal constant %struct.bcm_sf2_of_data { i32 18696, ptr @bcm_sf2_4908_reg_offsets, i32 0, i32 256, i32 2 }, align 4
@bcm_sf2_7445_data = internal constant %struct.bcm_sf2_of_data { i32 29765, ptr @bcm_sf2_7445_reg_offsets, i32 0, i32 256, i32 0 }, align 4
@bcm_sf2_7278_data = internal constant %struct.bcm_sf2_of_data { i32 29304, ptr @bcm_sf2_7278_reg_offsets, i32 1, i32 128, i32 0 }, align 4
@bcm_sf2_4908_reg_offsets = internal constant [19 x i16] [i16 0, i16 4, i16 8, i16 12, i16 16, i16 20, i16 36, i16 200, i16 0, i16 0, i16 0, i16 332, i16 64, i16 76, i16 88, i16 100, i16 136, i16 160, i16 184], align 2
@bcm_sf2_7445_reg_offsets = internal constant [15 x i16] [i16 0, i16 4, i16 8, i16 12, i16 24, i16 28, i16 44, i16 0, i16 52, i16 64, i16 76, i16 0, i16 144, i16 148, i16 152], align 2
@bcm_sf2_7278_reg_offsets = internal constant [15 x i16] [i16 0, i16 4, i16 8, i16 12, i16 16, i16 20, i16 36, i16 0, i16 224, i16 236, i16 248, i16 0, i16 64, i16 76, i16 88], align 2
@bcm_sf2_driver = internal global %struct.platform_driver { ptr @bcm_sf2_sw_probe, ptr @bcm_sf2_sw_remove, ptr @bcm_sf2_sw_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_sf2_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_sf2_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [9 x i8] c"brcm-sf2\00", align 1
@bcm_sf2_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @bcm_sf2_suspend, ptr @bcm_sf2_resume, ptr @bcm_sf2_suspend, ptr @bcm_sf2_resume, ptr @bcm_sf2_suspend, ptr @bcm_sf2_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"intrl2_0\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"intrl2_1\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"fcb\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"acb\00", align 1
@__const.bcm_sf2_sw_probe.reg_names = private unnamed_addr constant [6 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 4
@bcm_sf2_io_ops = internal constant %struct.b53_io_ops { ptr @bcm_sf2_core_read8, ptr @bcm_sf2_core_read16, ptr @bcm_sf2_core_read32, ptr @bcm_sf2_core_read64, ptr @bcm_sf2_core_read64, ptr @bcm_sf2_core_write8, ptr @bcm_sf2_core_write16, ptr @bcm_sf2_core_write32, ptr @bcm_sf2_core_write64, ptr @bcm_sf2_core_write64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@bcm_sf2_ops = internal constant %struct.dsa_switch_ops { ptr @b53_get_tag_protocol, ptr null, ptr null, ptr @bcm_sf2_sw_setup, ptr @bcm_sf2_sw_teardown, ptr null, ptr null, ptr @bcm_sf2_sw_get_phy_flags, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_sf2_sw_validate, ptr null, ptr @bcm_sf2_sw_mac_config, ptr null, ptr @bcm_sf2_sw_mac_link_down, ptr @bcm_sf2_sw_mac_link_up, ptr @bcm_sf2_sw_fixed_state, ptr @bcm_sf2_sw_get_strings, ptr @bcm_sf2_sw_get_ethtool_stats, ptr @bcm_sf2_sw_get_sset_count, ptr @b53_get_ethtool_phy_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_sf2_sw_get_wol, ptr @bcm_sf2_sw_set_wol, ptr null, ptr @bcm_sf2_sw_suspend, ptr @bcm_sf2_sw_resume, ptr @bcm_sf2_port_setup, ptr @bcm_sf2_port_disable, ptr @b53_set_mac_eee, ptr @b53_get_mac_eee, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @b53_br_join, ptr @b53_br_leave, ptr @b53_br_set_stp_state, ptr @b53_br_fast_age, ptr @b53_br_flags_pre, ptr @b53_br_flags, ptr @b53_vlan_filtering, ptr @b53_vlan_add, ptr @b53_vlan_del, ptr @b53_fdb_add, ptr @b53_fdb_del, ptr @b53_fdb_dump, ptr @b53_mdb_add, ptr @b53_mdb_del, ptr @bcm_sf2_get_rxnfc, ptr @bcm_sf2_set_rxnfc, ptr null, ptr null, ptr null, ptr @b53_mirror_add, ptr @b53_mirror_del, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@bcm_sf2_sw_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"&priv->cfp.lock\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"\013unable to find register: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"sw_switch\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"sw_switch_mdiv\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"\013unable to software reset switch: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"\013failed to register MDIO bus\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"\013failed to reset CFP\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"switch_0\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"\013failed to request switch_0 IRQ\0A\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"switch_1\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"\013failed to request switch_1 IRQ\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"brcm,num-gphy\00", align 1
@.str.21 = private unnamed_addr constant [57 x i8] c"Starfighter 2 top: %x.%02x, core: %x.%02x, IRQs: %d, %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"Unsupported interface: %d for port %d\0A\00", align 1
@bcm_sf2_reg_rgmii_cntrl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"drivers/net/dsa/bcm_sf2.c\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"Unsupported port %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"\013%s: failed to software reset switch\0A\00", align 1
@__func__.bcm_sf2_sw_resume = private unnamed_addr constant [18 x i8] c"bcm_sf2_sw_resume\00", align 1
@bcm_sf2_recalc_clock.rate_table = internal unnamed_addr constant [4 x i32] [i32 59220000, i32 60820000, i32 62500000, i32 62500000], align 4
@.str.26 = private unnamed_addr constant [24 x i8] c"Invalid port number %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"brcm,use-bcm-hdr\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"ethernet\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Invalid port mode\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bcm_sf2_mdio_register.index = internal unnamed_addr global i32 0, align 4
@.str.30 = private unnamed_addr constant [17 x i8] c"brcm,unimac-mdio\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"sf2 slave mii\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"sf2-%d\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"brcm,bcm7445d0\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias456, ptr @__UNIQUE_ID_author453, ptr @__UNIQUE_ID_description454, ptr @__UNIQUE_ID_license455], section "llvm.metadata"

@__mod_of__bcm_sf2_of_match_device_table = dso_local alias [5 x %struct.of_device_id], ptr @bcm_sf2_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_sf2_driver, ptr noundef nonnull @__this_module) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_sf2_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sf2_sw_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 376, i32 noundef 3520) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %210, label %7

7:                                                ; preds = %1
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 416, i32 noundef 3520) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %210, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @b53_switch_alloc(ptr noundef %2, ptr noundef nonnull @bcm_sf2_io_ops, ptr noundef nonnull %5) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %210, label %13

13:                                               ; preds = %10
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 176, i32 noundef 3520) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %210, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @of_match_node(ptr noundef nonnull @bcm_sf2_of_match, ptr noundef %4) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %210, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.of_device_id, ptr %17, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %210, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %21, align 4
  %25 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 7
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.bcm_sf2_of_data, ptr %21, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 8
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.bcm_sf2_of_data, ptr %21, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 9
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.bcm_sf2_of_data, ptr %21, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 10
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.bcm_sf2_of_data, ptr %21, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 11
  store i32 %36, ptr %37, align 4
  %38 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #11
  %39 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 6
  store ptr %38, ptr %39, align 4
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %23
  %42 = ptrtoint ptr %38 to i32
  br label %210

43:                                               ; preds = %23
  %44 = load i32, ptr %25, align 4
  %45 = getelementptr inbounds %struct.b53_platform_data, ptr %14, i32 0, i32 1
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.b53_device, ptr %11, i32 0, i32 1
  store ptr %14, ptr %46, align 4
  %47 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 19
  store ptr %11, ptr %47, align 4
  %48 = load ptr, ptr %11, align 4
  %49 = getelementptr inbounds %struct.dsa_switch, ptr %48, i32 0, i32 8
  store ptr @bcm_sf2_ops, ptr %49, align 4
  %50 = getelementptr inbounds %struct.dsa_switch, ptr %48, i32 0, i32 15
  store i32 8, ptr %50, align 4
  %51 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %51, align 8
  %52 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 12
  store i32 0, ptr %52, align 4
  %53 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 32
  tail call void @__mutex_init(ptr noundef %53, ptr noundef nonnull @.str.8, ptr noundef nonnull @bcm_sf2_sw_probe.__key) #11
  %54 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 32, i32 4
  store volatile ptr %54, ptr %54, align 4
  %55 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 32, i32 4, i32 1
  store ptr %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 32, i32 1
  tail call void @_set_bit(i32 noundef 0, ptr noundef %56) #11
  %57 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 32, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %57) #11
  %58 = tail call ptr @of_node_get(ptr noundef %4) #11
  %59 = tail call ptr @of_find_node_by_name(ptr noundef %4, ptr noundef nonnull @.str.9) #11
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %43
  tail call fastcc void @bcm_sf2_identify_ports(ptr noundef nonnull %5, ptr noundef nonnull %59)
  tail call void @of_node_put(ptr noundef nonnull %59) #11
  br label %62

62:                                               ; preds = %61, %43
  %63 = tail call i32 @irq_of_parse_and_map(ptr noundef %4, i32 noundef 0) #11
  %64 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 13
  store i32 %63, ptr %64, align 4
  %65 = tail call i32 @irq_of_parse_and_map(ptr noundef %4, i32 noundef 1) #11
  %66 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 14
  store i32 %65, ptr %66, align 4
  %67 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #11
  store ptr %67, ptr %5, align 4
  %68 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %69, label %77

69:                                               ; preds = %93, %89, %85, %81, %77, %62
  %70 = phi i32 [ 0, %62 ], [ 1, %77 ], [ 2, %81 ], [ 3, %85 ], [ 4, %89 ], [ 5, %93 ]
  %71 = phi ptr [ %5, %62 ], [ %78, %77 ], [ %82, %81 ], [ %86, %85 ], [ %90, %89 ], [ %94, %93 ]
  %72 = getelementptr [6 x ptr], ptr @__const.bcm_sf2_sw_probe.reg_names, i32 0, i32 %70
  %73 = load ptr, ptr %72, align 4
  %74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %73) #12
  %75 = load ptr, ptr %71, align 4
  %76 = ptrtoint ptr %75 to i32
  br label %210

77:                                               ; preds = %62
  %78 = getelementptr ptr, ptr %5, i32 1
  %79 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 1) #11
  store ptr %79, ptr %78, align 4
  %80 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %80, label %69, label %81

81:                                               ; preds = %77
  %82 = getelementptr ptr, ptr %5, i32 2
  %83 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 2) #11
  store ptr %83, ptr %82, align 4
  %84 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %69, label %85

85:                                               ; preds = %81
  %86 = getelementptr ptr, ptr %5, i32 3
  %87 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 3) #11
  store ptr %87, ptr %86, align 4
  %88 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  br i1 %88, label %69, label %89

89:                                               ; preds = %85
  %90 = getelementptr ptr, ptr %5, i32 4
  %91 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 4) #11
  store ptr %91, ptr %90, align 4
  %92 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %69, label %93

93:                                               ; preds = %89
  %94 = getelementptr ptr, ptr %5, i32 5
  %95 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 5) #11
  store ptr %95, ptr %94, align 4
  %96 = icmp ugt ptr %95, inttoptr (i32 -4096 to ptr)
  br i1 %96, label %69, label %97

97:                                               ; preds = %93
  %98 = tail call ptr @devm_clk_get_optional(ptr noundef %2, ptr noundef nonnull @.str.11) #11
  %99 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 23
  store ptr %98, ptr %99, align 4
  %100 = icmp ugt ptr %98, inttoptr (i32 -4096 to ptr)
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = ptrtoint ptr %98 to i32
  br label %210

103:                                              ; preds = %97
  tail call fastcc void @clk_prepare_enable(ptr noundef %98)
  %104 = tail call ptr @devm_clk_get_optional(ptr noundef %2, ptr noundef nonnull @.str.12) #11
  %105 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 24
  store ptr %104, ptr %105, align 4
  %106 = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = ptrtoint ptr %104 to i32
  br label %207

109:                                              ; preds = %103
  tail call fastcc void @clk_prepare_enable(ptr noundef %104)
  %110 = tail call fastcc i32 @bcm_sf2_sw_rst(ptr noundef nonnull %5)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %109
  %113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %110) #12
  br label %204

114:                                              ; preds = %109
  tail call fastcc void @bcm_sf2_crossbar_setup(ptr noundef nonnull %5)
  %115 = load ptr, ptr %47, align 4
  %116 = load ptr, ptr %115, align 4
  tail call fastcc void @bcm_sf2_gphy_enable_set(ptr noundef %116, i1 noundef zeroext true)
  %117 = tail call fastcc i32 @bcm_sf2_mdio_register(ptr noundef %48)
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %114
  %120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #12
  br label %204

121:                                              ; preds = %114
  %122 = load ptr, ptr %47, align 4
  %123 = load ptr, ptr %122, align 4
  tail call fastcc void @bcm_sf2_gphy_enable_set(ptr noundef %123, i1 noundef zeroext false)
  %124 = tail call i32 @bcm_sf2_cfp_rst(ptr noundef nonnull %5) #11
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %198

126:                                              ; preds = %121
  tail call fastcc void @bcm_sf2_intr_disable(ptr noundef nonnull %5)
  %127 = load i32, ptr %64, align 4
  %128 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %127, ptr noundef nonnull @bcm_sf2_switch_0_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef %48) #11
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %198, label %130

130:                                              ; preds = %126
  %131 = load i32, ptr %66, align 4
  %132 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %131, ptr noundef nonnull @bcm_sf2_switch_1_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef %48) #11
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %198, label %134

134:                                              ; preds = %130
  %135 = load i32, ptr %31, align 4
  %136 = shl i32 2048, %135
  %137 = load ptr, ptr %5, align 4
  %138 = getelementptr i8, ptr %137, i32 %136
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #11, !srcloc !8
  %140 = or i32 %139, 1
  %141 = load i32, ptr %31, align 4
  %142 = shl i32 2048, %141
  %143 = load ptr, ptr %5, align 4
  %144 = getelementptr i8, ptr %143, i32 %142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %140) #11, !srcloc !9
  %145 = and i32 %139, -2
  %146 = load i32, ptr %31, align 4
  %147 = shl i32 2048, %146
  %148 = load ptr, ptr %5, align 4
  %149 = getelementptr i8, ptr %148, i32 %147
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %145) #11, !srcloc !9
  %150 = load i32, ptr %31, align 4
  %151 = shl i32 2052, %150
  %152 = load ptr, ptr %5, align 4
  %153 = getelementptr i8, ptr %152, i32 %151
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #11, !srcloc !8
  %155 = trunc i32 %154 to i8
  %156 = add i8 %155, 1
  %157 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 20
  %158 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 20, i32 6
  %159 = tail call i8 @llvm.umin.i8(i8 %156, i8 12)
  store i8 %159, ptr %158, align 2
  %160 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 20, i32 3
  %161 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.20, ptr noundef %160, i32 noundef 1, i32 noundef 0) #11
  %162 = icmp sgt i32 %161, -1
  br i1 %162, label %164, label %163

163:                                              ; preds = %134
  store i32 1, ptr %160, align 4
  br label %164

164:                                              ; preds = %163, %134
  %165 = load ptr, ptr %78, align 4
  %166 = load ptr, ptr %28, align 4
  %167 = getelementptr i16, ptr %166, i32 4
  %168 = load i16, ptr %167, align 2
  %169 = zext i16 %168 to i32
  %170 = getelementptr i8, ptr %165, i32 %169
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #11, !srcloc !8
  %172 = lshr i32 %171, 16
  %173 = trunc i32 %172 to i16
  store i16 %173, ptr %157, align 4
  %174 = trunc i32 %171 to i16
  %175 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 20, i32 1
  store i16 %174, ptr %175, align 2
  %176 = load ptr, ptr %78, align 4
  %177 = load ptr, ptr %28, align 4
  %178 = getelementptr i16, ptr %177, i32 5
  %179 = load i16, ptr %178, align 2
  %180 = zext i16 %179 to i32
  %181 = getelementptr i8, ptr %176, i32 %180
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %181) #11, !srcloc !8
  %183 = trunc i32 %182 to i16
  %184 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 20, i32 2
  store i16 %183, ptr %184, align 4
  %185 = tail call i32 @b53_switch_register(ptr noundef nonnull %11) #11
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %202

187:                                              ; preds = %164
  %188 = load i16, ptr %157, align 4
  %189 = zext i16 %188 to i32
  %190 = lshr i32 %189, 8
  %191 = and i32 %189, 255
  %192 = load i16, ptr %175, align 2
  %193 = zext i16 %192 to i32
  %194 = lshr i32 %193, 8
  %195 = and i32 %193, 255
  %196 = load i32, ptr %64, align 4
  %197 = load i32, ptr %66, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef %190, i32 noundef %191, i32 noundef %194, i32 noundef %195, i32 noundef %196, i32 noundef %197) #12
  br label %210

198:                                              ; preds = %130, %126, %121
  %199 = phi ptr [ @.str.15, %121 ], [ @.str.17, %126 ], [ @.str.19, %130 ]
  %200 = phi i32 [ %124, %121 ], [ %128, %126 ], [ %132, %130 ]
  %201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %199) #12
  br label %202

202:                                              ; preds = %198, %164
  %203 = phi i32 [ %185, %164 ], [ %200, %198 ]
  tail call fastcc void @bcm_sf2_mdio_unregister(ptr noundef nonnull %5)
  br label %204

204:                                              ; preds = %202, %119, %112
  %205 = phi i32 [ %110, %112 ], [ %117, %119 ], [ %203, %202 ]
  %206 = load ptr, ptr %105, align 4
  tail call void @clk_disable(ptr noundef %206) #11
  tail call void @clk_unprepare(ptr noundef %206) #11
  br label %207

207:                                              ; preds = %204, %107
  %208 = phi i32 [ %108, %107 ], [ %205, %204 ]
  %209 = load ptr, ptr %99, align 4
  tail call void @clk_disable(ptr noundef %209) #11
  tail call void @clk_unprepare(ptr noundef %209) #11
  br label %210

210:                                              ; preds = %207, %187, %101, %69, %41, %19, %16, %13, %10, %7, %1
  %211 = phi i32 [ %42, %41 ], [ %76, %69 ], [ %102, %101 ], [ %208, %207 ], [ 0, %187 ], [ -12, %1 ], [ -12, %7 ], [ -12, %10 ], [ -12, %13 ], [ -22, %19 ], [ -22, %16 ]
  ret i32 %211
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sf2_sw_remove(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 22
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 -1) #11, !srcloc !9
  %10 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 16
  store i32 -1, ptr %10, align 4
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 -1) #11, !srcloc !9
  %13 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 -1) #11, !srcloc !9
  %16 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 18
  store i32 -1, ptr %16, align 4
  %17 = load ptr, ptr %13, align 4
  %18 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 -1) #11, !srcloc !9
  %19 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 19
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %20, align 4
  tail call void @dsa_unregister_switch(ptr noundef %21) #11
  %22 = load ptr, ptr %19, align 4
  %23 = load ptr, ptr %22, align 4
  tail call void @bcm_sf2_cfp_exit(ptr noundef %23) #11
  %24 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 29
  %25 = load ptr, ptr %24, align 4
  tail call void @mdiobus_unregister(ptr noundef %25) #11
  %26 = load ptr, ptr %24, align 4
  tail call void @mdiobus_free(ptr noundef %26) #11
  %27 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 28
  %28 = load ptr, ptr %27, align 4
  tail call void @of_node_put(ptr noundef %28) #11
  %29 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 24
  %30 = load ptr, ptr %29, align 4
  tail call void @clk_disable(ptr noundef %30) #11
  tail call void @clk_unprepare(ptr noundef %30) #11
  %31 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 23
  %32 = load ptr, ptr %31, align 4
  tail call void @clk_disable(ptr noundef %32) #11
  tail call void @clk_unprepare(ptr noundef %32) #11
  %33 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 29304
  br i1 %35, label %36, label %40

36:                                               ; preds = %5
  %37 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @reset_control_assert(ptr noundef %38) #11
  br label %40

40:                                               ; preds = %36, %5
  store ptr null, ptr %2, align 8
  br label %41

41:                                               ; preds = %40, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_sf2_sw_shutdown(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %53, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 20, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %49

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 19
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dsa_switch, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.b53_device, ptr %14, i32 0, i32 23
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %16, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i16, ptr %20, i32 6
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %18, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !8
  %26 = and i32 %25, -60
  %27 = or i32 %26, 32
  %28 = load ptr, ptr %17, align 4
  %29 = load ptr, ptr %19, align 4
  %30 = getelementptr i16, ptr %29, i32 6
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = getelementptr i8, ptr %28, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %27) #11, !srcloc !9
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 4509708) #11
  %35 = load ptr, ptr %17, align 4
  %36 = load ptr, ptr %19, align 4
  %37 = getelementptr i16, ptr %36, i32 6
  %38 = load i16, ptr %37, align 2
  %39 = zext i16 %38 to i32
  %40 = getelementptr i8, ptr %35, i32 %39
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !8
  %42 = and i32 %41, -33
  %43 = load ptr, ptr %17, align 4
  %44 = load ptr, ptr %19, align 4
  %45 = getelementptr i16, ptr %44, i32 6
  %46 = load i16, ptr %45, align 2
  %47 = zext i16 %46 to i32
  %48 = getelementptr i8, ptr %43, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %42) #11, !srcloc !9
  br label %49

49:                                               ; preds = %9, %5
  %50 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 19
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %51, align 4
  tail call void @dsa_switch_shutdown(ptr noundef %52) #11
  store ptr null, ptr %2, align 8
  br label %53

53:                                               ; preds = %49, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @b53_switch_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_sf2_identify_ports(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !10
  %8 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 25
  store i32 -1, ptr %8, align 4
  %9 = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %62, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 26
  %13 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 31
  %14 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 7
  br label %15

15:                                               ; preds = %59, %11
  %16 = phi ptr [ %9, %11 ], [ %60, %59 ]
  %17 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %16, ptr noundef nonnull @.str.2, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #11
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %59

19:                                               ; preds = %15
  %20 = load i32, ptr %3, align 4
  %21 = icmp ugt i32 %20, 11
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.26, i32 noundef %20) #12
  br label %59

23:                                               ; preds = %19
  %24 = getelementptr %struct.bcm_sf2_priv, ptr %0, i32 0, i32 21, i32 %20
  %25 = call i32 @of_get_phy_mode(ptr noundef nonnull %16, ptr noundef %24) #11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %23
  %28 = load i32, ptr %24, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, ptr %3, align 4
  %32 = shl nuw i32 1, %31
  %33 = load i32, ptr %12, align 4
  %34 = or i32 %33, %32
  store i32 %34, ptr %12, align 4
  %35 = load i32, ptr %24, align 4
  br label %36

36:                                               ; preds = %30, %27
  %37 = phi i32 [ %35, %30 ], [ %28, %27 ]
  %38 = icmp eq i32 %37, 17
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, ptr %3, align 4
  store i32 %40, ptr %8, align 4
  br label %41

41:                                               ; preds = %39, %36
  %42 = call ptr @of_find_property(ptr noundef nonnull %16, ptr noundef nonnull @.str.27, ptr noundef null) #11
  %43 = icmp eq ptr %42, null
  %44 = load i32, ptr %3, align 4
  br i1 %43, label %49, label %45

45:                                               ; preds = %41
  %46 = shl nuw i32 1, %44
  %47 = load i32, ptr %13, align 4
  %48 = or i32 %47, %46
  store i32 %48, ptr %13, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = icmp eq i32 %44, 5
  br i1 %50, label %51, label %59

51:                                               ; preds = %49
  %52 = load i32, ptr %14, align 4
  %53 = icmp eq i32 %52, 29304
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = call ptr @of_find_property(ptr noundef nonnull %16, ptr noundef nonnull @.str.28, ptr noundef null) #11
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = call i32 @of_remove_property(ptr noundef nonnull %16, ptr noundef nonnull %55) #11
  br label %59

59:                                               ; preds = %57, %54, %51, %49, %23, %22, %15
  %60 = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %16) #11
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %15

62:                                               ; preds = %59, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_prepare_enable(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #11
  br label %8

8:                                                ; preds = %7, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm_sf2_sw_rst(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 29304
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @reset_control_assert(ptr noundef %7) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %5
  %11 = load ptr, ptr %6, align 4
  %12 = tail call i32 @reset_control_deassert(ptr noundef %11) #11
  br label %40

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = shl i32 484, %15
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr i8, ptr %17, i32 %16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !8
  %20 = or i32 %19, 208
  %21 = load i32, ptr %14, align 4
  %22 = shl i32 484, %21
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr i8, ptr %23, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %20) #11, !srcloc !9
  br label %25

25:                                               ; preds = %34, %13
  %26 = phi i32 [ 1000, %13 ], [ %35, %34 ]
  %27 = load i32, ptr %14, align 4
  %28 = shl i32 484, %27
  %29 = load ptr, ptr %0, align 4
  %30 = getelementptr i8, ptr %29, i32 %28
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #11, !srcloc !8
  %32 = and i32 %31, 128
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %35 = add nsw i32 %26, -1
  %36 = icmp eq i32 %26, 0
  br i1 %36, label %40, label %25

37:                                               ; preds = %25
  %38 = icmp eq i32 %26, 0
  %39 = select i1 %38, i32 -110, i32 0
  br label %40

40:                                               ; preds = %37, %34, %10, %5
  %41 = phi i32 [ %12, %10 ], [ %8, %5 ], [ %39, %37 ], [ 0, %34 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_sf2_crossbar_setup(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i16, ptr %7, i32 7
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %5, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !8
  %13 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 18696
  br i1 %15, label %16, label %45

16:                                               ; preds = %1
  %17 = shl nsw i32 -1, %3
  %18 = and i32 %12, %17
  %19 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 26
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 128
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = getelementptr %struct.bcm_sf2_priv, ptr %0, i32 0, i32 21, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, -9
  %27 = icmp ult i32 %26, 4
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 526, i32 noundef 9, ptr noundef nonnull @.str.29) #11
  br label %45

29:                                               ; preds = %23, %16
  %30 = phi i32 [ 1, %16 ], [ 2, %23 ]
  %31 = or i32 %18, %30
  %32 = load ptr, ptr %4, align 4
  %33 = load ptr, ptr %6, align 4
  %34 = getelementptr i16, ptr %33, i32 7
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = getelementptr i8, ptr %32, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %31) #11, !srcloc !9
  %38 = load ptr, ptr %4, align 4
  %39 = load ptr, ptr %6, align 4
  %40 = getelementptr i16, ptr %39, i32 7
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = getelementptr i8, ptr %38, i32 %42
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #11, !srcloc !8
  br label %45

45:                                               ; preds = %29, %28, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_sf2_gphy_enable_set(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.b53_device, ptr %4, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i16, ptr %10, i32 6
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %8, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !8
  br i1 %1, label %16, label %40

16:                                               ; preds = %2
  %17 = and i32 %15, -60
  %18 = or i32 %17, 32
  %19 = load ptr, ptr %7, align 4
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr i16, ptr %20, i32 6
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %19, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %18) #11, !srcloc !9
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 4509708) #11
  %26 = load ptr, ptr %7, align 4
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr i16, ptr %27, i32 6
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = getelementptr i8, ptr %26, i32 %30
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #11, !srcloc !8
  %33 = and i32 %32, -33
  %34 = load ptr, ptr %7, align 4
  %35 = load ptr, ptr %9, align 4
  %36 = getelementptr i16, ptr %35, i32 6
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = getelementptr i8, ptr %34, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %33) #11, !srcloc !9
  br label %73

40:                                               ; preds = %2
  %41 = or i32 %15, 35
  %42 = load ptr, ptr %7, align 4
  %43 = load ptr, ptr %9, align 4
  %44 = getelementptr i16, ptr %43, i32 6
  %45 = load i16, ptr %44, align 2
  %46 = zext i16 %45 to i32
  %47 = getelementptr i8, ptr %42, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %41) #11, !srcloc !9
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #11
  %49 = or i32 %15, 51
  %50 = load ptr, ptr %7, align 4
  %51 = load ptr, ptr %9, align 4
  %52 = getelementptr i16, ptr %51, i32 6
  %53 = load i16, ptr %52, align 2
  %54 = zext i16 %53 to i32
  %55 = getelementptr i8, ptr %50, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %49) #11, !srcloc !9
  %56 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 7
  %57 = load i32, ptr %56, align 4
  switch i32 %57, label %73 [
    i32 29304, label %58
    i32 29765, label %58
  ]

58:                                               ; preds = %40, %40
  %59 = load ptr, ptr %7, align 4
  %60 = load ptr, ptr %9, align 4
  %61 = getelementptr i16, ptr %60, i32 12
  %62 = load i16, ptr %61, align 2
  %63 = zext i16 %62 to i32
  %64 = getelementptr i8, ptr %59, i32 %63
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #11, !srcloc !8
  %66 = or i32 %65, 16777216
  %67 = load ptr, ptr %7, align 4
  %68 = load ptr, ptr %9, align 4
  %69 = getelementptr i16, ptr %68, i32 12
  %70 = load i16, ptr %69, align 2
  %71 = zext i16 %70 to i32
  %72 = getelementptr i8, ptr %67, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %66) #11, !srcloc !9
  br label %73

73:                                               ; preds = %58, %40, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm_sf2_mdio_register(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.b53_device, ptr %4, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !10
  %7 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.30) #11
  %8 = tail call ptr @of_mdio_find_bus(ptr noundef %7) #11
  %9 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 30
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void @of_node_put(ptr noundef %7) #11
  br label %95

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.mii_bus, ptr %8, i32 0, i32 11
  %14 = tail call ptr @get_device(ptr noundef %13) #11
  %15 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 28
  store ptr %7, ptr %15, align 4
  %16 = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #11
  %17 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 29
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  tail call void @of_node_put(ptr noundef %7) #11
  br label %95

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.mii_bus, ptr %16, i32 0, i32 3
  store ptr %6, ptr %21, align 8
  %22 = load ptr, ptr %17, align 4
  %23 = getelementptr inbounds %struct.mii_bus, ptr %22, i32 0, i32 1
  store ptr @.str.31, ptr %23, align 4
  %24 = load ptr, ptr %17, align 4
  %25 = getelementptr inbounds %struct.mii_bus, ptr %24, i32 0, i32 4
  store ptr @bcm_sf2_sw_mdio_read, ptr %25, align 4
  %26 = load ptr, ptr %17, align 4
  %27 = getelementptr inbounds %struct.mii_bus, ptr %26, i32 0, i32 5
  store ptr @bcm_sf2_sw_mdio_write, ptr %27, align 8
  %28 = load ptr, ptr %17, align 4
  %29 = getelementptr inbounds %struct.mii_bus, ptr %28, i32 0, i32 2
  %30 = load i32, ptr @bcm_sf2_mdio_register.index, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr @bcm_sf2_mdio_register.index, align 4
  %32 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %29, i32 noundef 61, ptr noundef nonnull @.str.32, i32 noundef %30)
  %33 = load ptr, ptr %17, align 4
  %34 = getelementptr inbounds %struct.mii_bus, ptr %33, i32 0, i32 11, i32 25
  store ptr %7, ptr %34, align 8
  %35 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.33) #11
  %36 = icmp eq i32 %35, 0
  %37 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 27
  br i1 %36, label %41, label %38

38:                                               ; preds = %20
  %39 = load i32, ptr %37, align 4
  %40 = or i32 %39, 1073741825
  br label %41

41:                                               ; preds = %38, %20
  %42 = phi i32 [ %40, %38 ], [ 0, %20 ]
  store i32 %42, ptr %37, align 4
  %43 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 27
  %44 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 9
  store i32 %42, ptr %44, align 4
  %45 = load ptr, ptr %17, align 4
  %46 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 10
  store ptr %45, ptr %46, align 4
  %47 = load ptr, ptr %0, align 4
  %48 = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %17, align 4
  %51 = getelementptr inbounds %struct.mii_bus, ptr %50, i32 0, i32 9
  store ptr %49, ptr %51, align 4
  %52 = load i32, ptr %43, align 4
  %53 = xor i32 %52, -1
  %54 = load ptr, ptr %17, align 4
  %55 = getelementptr inbounds %struct.mii_bus, ptr %54, i32 0, i32 13
  store i32 %53, ptr %55, align 8
  %56 = tail call ptr @of_get_next_available_child(ptr noundef %7, ptr noundef null) #11
  %57 = icmp eq ptr %56, null
  br i1 %57, label %87, label %58

58:                                               ; preds = %84, %41
  %59 = phi ptr [ %85, %84 ], [ %56, %41 ]
  %60 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %59, ptr noundef nonnull @.str.2, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #11
  %61 = icmp slt i32 %60, 0
  %62 = load i32, ptr %2, align 4
  %63 = icmp sgt i32 %62, 31
  %64 = select i1 %61, i1 true, i1 %63
  br i1 %64, label %84, label %65

65:                                               ; preds = %58
  %66 = load i32, ptr %43, align 4
  %67 = shl nuw i32 1, %62
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %65
  %71 = call ptr @of_find_property(ptr noundef nonnull %59, ptr noundef nonnull @.str.34, ptr noundef null) #11
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = call i32 @of_remove_property(ptr noundef nonnull %59, ptr noundef nonnull %71) #11
  br label %75

75:                                               ; preds = %73, %70
  %76 = call ptr @of_find_property(ptr noundef nonnull %59, ptr noundef nonnull @.str.35, ptr noundef null) #11
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = call i32 @of_remove_property(ptr noundef nonnull %59, ptr noundef nonnull %76) #11
  br label %80

80:                                               ; preds = %78, %75
  %81 = call ptr @of_phy_find_device(ptr noundef nonnull %59) #11
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  call void @phy_device_remove(ptr noundef nonnull %81) #11
  br label %84

84:                                               ; preds = %83, %80, %65, %58
  %85 = call ptr @of_get_next_available_child(ptr noundef %7, ptr noundef nonnull %59) #11
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %58

87:                                               ; preds = %84, %41
  %88 = load ptr, ptr %17, align 4
  %89 = call i32 @__mdiobus_register(ptr noundef %88, ptr noundef nonnull @__this_module) #11
  %90 = icmp ne i32 %89, 0
  %91 = icmp ne ptr %7, null
  %92 = and i1 %91, %90
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load ptr, ptr %17, align 4
  call void @mdiobus_free(ptr noundef %94) #11
  call void @of_node_put(ptr noundef nonnull %7) #11
  br label %95

95:                                               ; preds = %93, %87, %19, %11
  %96 = phi i32 [ -12, %19 ], [ -517, %11 ], [ %89, %93 ], [ %89, %87 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_sf2_cfp_rst(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_sf2_intr_disable(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 -1) #11, !srcloc !9
  %5 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 16
  store i32 -1, ptr %5, align 4
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 -1) #11, !srcloc !9
  %8 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 -1) #11, !srcloc !9
  %11 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 18
  store i32 -1, ptr %11, align 4
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 -1) #11, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sf2_switch_0_isr(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.b53_device, ptr %4, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !8
  %10 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 16
  %11 = load i32, ptr %10, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %9, %12
  %14 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 15
  store i32 %13, ptr %14, align 4
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #11, !srcloc !9
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sf2_switch_1_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.b53_device, ptr %4, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !8
  %10 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 18
  %11 = load i32, ptr %10, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %9, %12
  %14 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 17
  store i32 %13, ptr %14, align 4
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #11, !srcloc !9
  %17 = load i32, ptr %14, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = getelementptr %struct.bcm_sf2_priv, ptr %6, i32 0, i32 21, i32 7, i32 1
  store i32 1, ptr %21, align 4
  tail call void @dsa_port_phylink_mac_change(ptr noundef %1, i32 noundef 7, i1 noundef zeroext true) #11
  %22 = load i32, ptr %14, align 4
  br label %23

23:                                               ; preds = %20, %2
  %24 = phi i32 [ %22, %20 ], [ %17, %2 ]
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = getelementptr %struct.bcm_sf2_priv, ptr %6, i32 0, i32 21, i32 7, i32 1
  store i32 0, ptr %28, align 4
  tail call void @dsa_port_phylink_mac_change(ptr noundef %1, i32 noundef 7, i1 noundef zeroext false) #11
  br label %29

29:                                               ; preds = %27, %23
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_switch_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_sf2_mdio_unregister(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  tail call void @mdiobus_unregister(ptr noundef %3) #11
  %4 = load ptr, ptr %2, align 4
  tail call void @mdiobus_free(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %0, i32 0, i32 28
  %6 = load ptr, ptr %5, align 4
  tail call void @of_node_put(ptr noundef %6) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sf2_core_read8(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = zext i8 %1 to i32
  %8 = shl nuw nsw i32 %7, 10
  %9 = zext i8 %2 to i32
  %10 = shl nuw nsw i32 %9, 2
  %11 = or i32 %10, %8
  %12 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %11, %13
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr i8, ptr %15, i32 %14
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !8
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr %3, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sf2_core_read16(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = zext i8 %1 to i32
  %8 = shl nuw nsw i32 %7, 10
  %9 = zext i8 %2 to i32
  %10 = shl nuw nsw i32 %9, 2
  %11 = or i32 %10, %8
  %12 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %11, %13
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr i8, ptr %15, i32 %14
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !8
  %18 = trunc i32 %17 to i16
  store i16 %18, ptr %3, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sf2_core_read32(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = zext i8 %1 to i32
  %8 = shl nuw nsw i32 %7, 10
  %9 = zext i8 %2 to i32
  %10 = shl nuw nsw i32 %9, 2
  %11 = or i32 %10, %8
  %12 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %11, %13
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr i8, ptr %15, i32 %14
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !8
  store i32 %17, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sf2_core_read64(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = zext i8 %1 to i32
  %8 = shl nuw nsw i32 %7, 10
  %9 = zext i8 %2 to i32
  %10 = shl nuw nsw i32 %9, 2
  %11 = or i32 %10, %8
  %12 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %12) #11
  %13 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %11, %14
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr i8, ptr %16, i32 %15
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #11, !srcloc !8
  %19 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i16, ptr %22, i32 3
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  %26 = getelementptr i8, ptr %20, i32 %25
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #11, !srcloc !8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %28 = load i16, ptr %12, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  %30 = zext i32 %27 to i64
  %31 = shl nuw i64 %30, 32
  %32 = zext i32 %18 to i64
  %33 = or i64 %31, %32
  store i64 %33, ptr %3, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sf2_core_write8(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = zext i8 %3 to i32
  %8 = zext i8 %1 to i32
  %9 = shl nuw nsw i32 %8, 10
  %10 = zext i8 %2 to i32
  %11 = shl nuw nsw i32 %10, 2
  %12 = or i32 %11, %9
  %13 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %12, %14
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr i8, ptr %16, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %7) #11, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sf2_core_write16(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = zext i16 %3 to i32
  %8 = zext i8 %1 to i32
  %9 = shl nuw nsw i32 %8, 10
  %10 = zext i8 %2 to i32
  %11 = shl nuw nsw i32 %10, 2
  %12 = or i32 %11, %9
  %13 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %12, %14
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr i8, ptr %16, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %7) #11, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sf2_core_write32(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = zext i8 %1 to i32
  %8 = shl nuw nsw i32 %7, 10
  %9 = zext i8 %2 to i32
  %10 = shl nuw nsw i32 %9, 2
  %11 = or i32 %10, %8
  %12 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %11, %13
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr i8, ptr %15, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %3) #11, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sf2_core_write64(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i64 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = zext i8 %1 to i32
  %8 = shl nuw nsw i32 %7, 10
  %9 = zext i8 %2 to i32
  %10 = shl nuw nsw i32 %9, 2
  %11 = or i32 %10, %8
  %12 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %12) #11
  %13 = lshr i64 %3, 32
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i16, ptr %18, i32 2
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %16, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %14) #11, !srcloc !9
  %23 = trunc i64 %3 to i32
  %24 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 9
  %25 = load i32, ptr %24, align 4
  %26 = shl i32 %11, %25
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr i8, ptr %27, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %23) #11, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %29 = load i16, ptr %12, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_get_tag_protocol(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sf2_sw_setup(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.b53_device, ptr %3, i32 0, i32 23
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 20, i32 6
  %7 = load i8, ptr %6, align 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %158, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  br label %11

11:                                               ; preds = %153, %9
  %12 = phi i32 [ 0, %9 ], [ %154, %153 ]
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.dsa_switch_tree, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %36, label %17

17:                                               ; preds = %26, %11
  %18 = phi ptr [ %27, %26 ], [ %15, %11 ]
  %19 = getelementptr i8, ptr %18, i32 -264
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %18, i32 -260
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %12
  br i1 %25, label %29, label %26

26:                                               ; preds = %22, %17
  %27 = load ptr, ptr %18, align 4
  %28 = icmp eq ptr %27, %14
  br i1 %28, label %31, label %17

29:                                               ; preds = %22
  %30 = getelementptr i8, ptr %18, i32 -280
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi ptr [ %30, %29 ], [ null, %26 ]
  %33 = getelementptr inbounds %struct.dsa_port, ptr %32, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %39, label %41

36:                                               ; preds = %11
  %37 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %55

39:                                               ; preds = %36, %31
  %40 = tail call i32 @bcm_sf2_port_setup(ptr noundef %0, i32 noundef %12, ptr noundef null)
  br label %153

41:                                               ; preds = %50, %31
  %42 = phi ptr [ %51, %50 ], [ %15, %31 ]
  %43 = getelementptr i8, ptr %42, i32 -264
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = getelementptr i8, ptr %42, i32 -260
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, %12
  br i1 %49, label %53, label %50

50:                                               ; preds = %46, %41
  %51 = load ptr, ptr %42, align 4
  %52 = icmp eq ptr %51, %14
  br i1 %52, label %55, label %41

53:                                               ; preds = %46
  %54 = getelementptr i8, ptr %42, i32 -280
  br label %55

55:                                               ; preds = %53, %50, %36
  %56 = phi ptr [ %54, %53 ], [ null, %36 ], [ null, %50 ]
  %57 = getelementptr inbounds %struct.dsa_port, ptr %56, i32 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %152

60:                                               ; preds = %55
  %61 = load ptr, ptr %2, align 4
  %62 = getelementptr inbounds %struct.b53_device, ptr %61, i32 0, i32 23
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %63, i32 0, i32 9
  %65 = load i32, ptr %64, align 4
  %66 = shl i32 9088, %65
  %67 = load ptr, ptr %63, align 4
  %68 = getelementptr i8, ptr %67, i32 %66
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #11, !srcloc !8
  %70 = shl nuw i32 %12, 1
  %71 = shl i32 3, %70
  %72 = xor i32 %71, -1
  %73 = and i32 %69, %72
  %74 = load i32, ptr %64, align 4
  %75 = shl i32 9088, %74
  %76 = load ptr, ptr %63, align 4
  %77 = getelementptr i8, ptr %76, i32 %75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %73) #11, !srcloc !9
  %78 = load i32, ptr %64, align 4
  %79 = shl i32 44, %78
  %80 = load ptr, ptr %63, align 4
  %81 = getelementptr i8, ptr %80, i32 %79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 2) #11, !srcloc !9
  %82 = load i32, ptr %64, align 4
  %83 = shl i32 136, %82
  %84 = load ptr, ptr %63, align 4
  %85 = getelementptr i8, ptr %84, i32 %83
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #11, !srcloc !8
  %87 = or i32 %86, 64
  %88 = load i32, ptr %64, align 4
  %89 = shl i32 136, %88
  %90 = load ptr, ptr %63, align 4
  %91 = getelementptr i8, ptr %90, i32 %89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %87) #11, !srcloc !9
  %92 = shl i32 %12, 4
  %93 = add nuw nsw i32 %92, 49600
  %94 = load i32, ptr %64, align 4
  %95 = shl i32 %93, %94
  %96 = load ptr, ptr %63, align 4
  %97 = getelementptr i8, ptr %96, i32 %95
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #11, !srcloc !8
  %99 = or i32 %98, 16434824
  %100 = load i32, ptr %64, align 4
  %101 = shl i32 %93, %100
  %102 = load ptr, ptr %63, align 4
  %103 = getelementptr i8, ptr %102, i32 %101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %99) #11, !srcloc !9
  tail call void @b53_brcm_hdr_setup(ptr noundef %0, i32 noundef %12) #11
  %104 = icmp eq i32 %12, 8
  br i1 %104, label %105, label %138

105:                                              ; preds = %60
  %106 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %63, i32 0, i32 7
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 18696
  %109 = icmp eq i32 %107, 29765
  %110 = or i1 %108, %109
  %111 = select i1 %110, i32 56, i32 233536
  %112 = load i32, ptr %64, align 4
  %113 = shl i32 %111, %112
  %114 = load ptr, ptr %63, align 4
  %115 = getelementptr i8, ptr %114, i32 %113
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #11, !srcloc !8
  %117 = load i32, ptr %106, align 4
  %118 = icmp eq i32 %117, 18696
  %119 = or i32 %116, 193
  %120 = and i32 %116, -194
  %121 = or i32 %120, 129
  %122 = select i1 %118, i32 %119, i32 %121
  %123 = load i32, ptr %64, align 4
  %124 = shl i32 %111, %123
  %125 = load ptr, ptr %63, align 4
  %126 = getelementptr i8, ptr %125, i32 %124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %122) #11, !srcloc !9
  %127 = load i32, ptr %64, align 4
  %128 = shl i32 32, %127
  %129 = load ptr, ptr %63, align 4
  %130 = getelementptr i8, ptr %129, i32 %128
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #11, !srcloc !8
  %132 = and i32 %131, -32
  %133 = or i32 %132, 28
  %134 = load i32, ptr %64, align 4
  %135 = shl i32 32, %134
  %136 = load ptr, ptr %63, align 4
  %137 = getelementptr i8, ptr %136, i32 %135
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %133) #11, !srcloc !9
  br label %150

138:                                              ; preds = %60
  %139 = shl i32 %12, 2
  %140 = load i32, ptr %64, align 4
  %141 = shl i32 %139, %140
  %142 = load ptr, ptr %63, align 4
  %143 = getelementptr i8, ptr %142, i32 %141
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #11, !srcloc !8
  %145 = and i32 %144, -4
  %146 = load i32, ptr %64, align 4
  %147 = shl i32 %139, %146
  %148 = load ptr, ptr %63, align 4
  %149 = getelementptr i8, ptr %148, i32 %147
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %145) #11, !srcloc !9
  br label %150

150:                                              ; preds = %138, %105
  %151 = getelementptr %struct.bcm_sf2_priv, ptr %63, i32 0, i32 21, i32 %12, i32 2
  store i8 1, ptr %151, align 4
  br label %153

152:                                              ; preds = %55
  tail call void @bcm_sf2_port_disable(ptr noundef %0, i32 noundef %12)
  br label %153

153:                                              ; preds = %152, %150, %39
  %154 = add nuw nsw i32 %12, 1
  %155 = load i8, ptr %6, align 2
  %156 = zext i8 %155 to i32
  %157 = icmp ult i32 %154, %156
  br i1 %157, label %11, label %158

158:                                              ; preds = %153, %1
  %159 = tail call i32 @b53_configure_vlan(ptr noundef %0) #11
  %160 = load ptr, ptr %2, align 4
  %161 = getelementptr inbounds %struct.b53_device, ptr %160, i32 0, i32 23
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %162, i32 0, i32 5
  %164 = load ptr, ptr %163, align 4
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #11, !srcloc !8
  %166 = or i32 %165, 12
  %167 = load ptr, ptr %163, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 %166) #11, !srcloc !9
  %168 = and i32 %165, -16
  %169 = or i32 %168, 3
  %170 = load ptr, ptr %163, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %169) #11, !srcloc !9
  %171 = tail call i32 @b53_setup_devlink_resources(ptr noundef %0) #11
  ret i32 %171
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_sf2_sw_teardown(ptr noundef %0) #2 {
  tail call void @dsa_devlink_resources_unregister(ptr noundef %0) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @bcm_sf2_sw_get_phy_flags(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.b53_device, ptr %4, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 26
  %8 = load i32, ptr %7, align 4
  %9 = shl nuw i32 1, %1
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 20, i32 2
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi i32 [ %15, %12 ], [ 41, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_sf2_sw_validate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = alloca [3 x i32], align 4
  %6 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.b53_device, ptr %7, i32 0, i32 23
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %10 = getelementptr inbounds i8, ptr %5, i32 4
  store i64 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.phylink_link_state, ptr %3, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -9
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  switch i32 %12, label %16 [
    i32 2, label %27
    i32 6, label %27
    i32 3, label %27
    i32 1, label %27
    i32 17, label %27
  ]

16:                                               ; preds = %15
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #11
  %17 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %9, i32 0, i32 9
  %18 = load i32, ptr %17, align 4
  %19 = shl i32 2052, %18
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr i8, ptr %20, i32 %19
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !8
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %38, label %24

24:                                               ; preds = %16
  %25 = load ptr, ptr %0, align 4
  %26 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.22, i32 noundef %26, i32 noundef %1) #12
  br label %38

27:                                               ; preds = %15, %15, %15, %15, %15, %4
  store i32 64, ptr %5, align 4
  call void @phylink_set_port_modes(ptr noundef nonnull %5) #11
  %28 = load i32, ptr %5, align 4
  %29 = or i32 %28, 24576
  %30 = load i32, ptr %11, align 4
  switch i32 %30, label %31 [
    i32 2, label %33
    i32 6, label %33
  ]

31:                                               ; preds = %27
  %32 = or i32 %28, 24624
  br label %33

33:                                               ; preds = %31, %27, %27
  %34 = phi i32 [ %29, %27 ], [ %29, %27 ], [ %32, %31 ]
  %35 = or i32 %34, 15
  store i32 %35, ptr %5, align 4
  %36 = call i32 @__bitmap_and(ptr noundef %2, ptr noundef %2, ptr noundef nonnull %5, i32 noundef 92) #11
  %37 = call i32 @__bitmap_and(ptr noundef %3, ptr noundef %3, ptr noundef nonnull %5, i32 noundef 92) #11
  br label %38

38:                                               ; preds = %33, %24, %16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_sf2_sw_mac_config(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.b53_device, ptr %6, i32 0, i32 23
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %8, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 2052, %10
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr i8, ptr %12, i32 %11
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !8
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %58, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.phylink_link_state, ptr %3, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %58 [
    i32 9, label %19
    i32 12, label %22
    i32 2, label %20
    i32 6, label %21
  ]

19:                                               ; preds = %16
  br label %22

20:                                               ; preds = %16
  br label %22

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21, %20, %19, %16
  %23 = phi i1 [ false, %19 ], [ true, %16 ], [ true, %21 ], [ true, %20 ]
  %24 = phi i32 [ 12, %19 ], [ %18, %16 ], [ 16, %21 ], [ 8, %20 ]
  %25 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %8, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 18696
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = icmp eq i32 %1, 7
  br i1 %29, label %37, label %32

30:                                               ; preds = %22
  %31 = icmp ult i32 %1, 3
  br i1 %31, label %35, label %32

32:                                               ; preds = %30, %28
  %33 = load i1, ptr @bcm_sf2_reg_rgmii_cntrl.__already_done, align 1
  br i1 %33, label %37, label %34, !prof !15

34:                                               ; preds = %32
  store i1 true, ptr @bcm_sf2_reg_rgmii_cntrl.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.24, i32 noundef %1) #11
  br label %37

35:                                               ; preds = %30
  %36 = add i32 %1, 8
  br label %37

37:                                               ; preds = %35, %34, %32, %28
  %38 = phi i32 [ 11, %28 ], [ 1, %34 ], [ 1, %32 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %8, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %8, i32 0, i32 8
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i16, ptr %42, i32 %38
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  %46 = getelementptr i8, ptr %40, i32 %45
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #11, !srcloc !8
  %48 = and i32 %47, -31
  %49 = or i32 %48, %24
  %50 = or i32 %49, 2
  %51 = select i1 %23, i32 %49, i32 %50
  %52 = load ptr, ptr %39, align 4
  %53 = load ptr, ptr %41, align 4
  %54 = getelementptr i16, ptr %53, i32 %38
  %55 = load i16, ptr %54, align 2
  %56 = zext i16 %55 to i32
  %57 = getelementptr i8, ptr %52, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %51) #11, !srcloc !9
  br label %58

58:                                               ; preds = %37, %16, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_sf2_sw_mac_link_down(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.b53_device, ptr %6, i32 0, i32 23
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %8, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 2052, %10
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr i8, ptr %12, i32 %11
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !8
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %35, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %8, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %19 [
    i32 18696, label %20
    i32 29765, label %20
  ]

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %19, %16, %16
  %21 = phi i32 [ 3, %19 ], [ 2, %16 ], [ 2, %16 ]
  %22 = phi i32 [ 233472, %19 ], [ 352, %16 ], [ 352, %16 ]
  %23 = shl i32 %1, %21
  %24 = add i32 %23, %22
  %25 = load i32, ptr %9, align 4
  %26 = shl i32 %24, %25
  %27 = load ptr, ptr %8, align 4
  %28 = getelementptr i8, ptr %27, i32 %26
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #11, !srcloc !8
  %30 = and i32 %29, -2
  %31 = load i32, ptr %9, align 4
  %32 = shl i32 %24, %31
  %33 = load ptr, ptr %8, align 4
  %34 = getelementptr i8, ptr %33, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %30) #11, !srcloc !9
  br label %35

35:                                               ; preds = %20, %4
  %36 = load ptr, ptr %5, align 4
  %37 = getelementptr inbounds %struct.b53_device, ptr %36, i32 0, i32 23
  %38 = load ptr, ptr %37, align 4
  switch i32 %3, label %70 [
    i32 12, label %39
    i32 11, label %39
    i32 10, label %39
    i32 9, label %39
    i32 6, label %39
    i32 2, label %39
  ]

39:                                               ; preds = %35, %35, %35, %35, %35, %35
  %40 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %38, i32 0, i32 7
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 18696
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = icmp eq i32 %1, 7
  br i1 %44, label %52, label %47

45:                                               ; preds = %39
  %46 = icmp ult i32 %1, 3
  br i1 %46, label %50, label %47

47:                                               ; preds = %45, %43
  %48 = load i1, ptr @bcm_sf2_reg_rgmii_cntrl.__already_done, align 1
  br i1 %48, label %52, label %49, !prof !15

49:                                               ; preds = %47
  store i1 true, ptr @bcm_sf2_reg_rgmii_cntrl.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.24, i32 noundef %1) #11
  br label %52

50:                                               ; preds = %45
  %51 = add i32 %1, 8
  br label %52

52:                                               ; preds = %50, %49, %47, %43
  %53 = phi i32 [ 11, %43 ], [ 1, %49 ], [ 1, %47 ], [ %51, %50 ]
  %54 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %38, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %38, i32 0, i32 8
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i16, ptr %57, i32 %53
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = getelementptr i8, ptr %55, i32 %60
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #11, !srcloc !8
  %63 = and i32 %62, -2
  %64 = load ptr, ptr %54, align 4
  %65 = load ptr, ptr %56, align 4
  %66 = getelementptr i16, ptr %65, i32 %53
  %67 = load i16, ptr %66, align 2
  %68 = zext i16 %67 to i32
  %69 = getelementptr i8, ptr %64, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %63) #11, !srcloc !9
  br label %70

70:                                               ; preds = %52, %35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_sf2_sw_mac_link_up(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8) #2 {
  %10 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.b53_device, ptr %11, i32 0, i32 23
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %13, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.b53_device, ptr %15, i32 0, i32 29
  %17 = load ptr, ptr %16, align 4
  switch i32 %3, label %49 [
    i32 12, label %18
    i32 11, label %18
    i32 10, label %18
    i32 9, label %18
    i32 6, label %18
    i32 2, label %18
  ]

18:                                               ; preds = %9, %9, %9, %9, %9, %9
  %19 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %13, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 18696
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = icmp eq i32 %1, 7
  br i1 %23, label %31, label %26

24:                                               ; preds = %18
  %25 = icmp ult i32 %1, 3
  br i1 %25, label %29, label %26

26:                                               ; preds = %24, %22
  %27 = load i1, ptr @bcm_sf2_reg_rgmii_cntrl.__already_done, align 1
  br i1 %27, label %31, label %28, !prof !15

28:                                               ; preds = %26
  store i1 true, ptr @bcm_sf2_reg_rgmii_cntrl.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.24, i32 noundef %1) #11
  br label %31

29:                                               ; preds = %24
  %30 = add i32 %1, 8
  br label %31

31:                                               ; preds = %29, %28, %26, %22
  %32 = phi i32 [ 11, %22 ], [ 1, %28 ], [ 1, %26 ], [ %30, %29 ]
  %33 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %13, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %13, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i16, ptr %36, i32 %32
  %38 = load i16, ptr %37, align 2
  %39 = zext i16 %38 to i32
  %40 = getelementptr i8, ptr %34, i32 %39
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !8
  %42 = or i32 %41, 1
  %43 = load ptr, ptr %33, align 4
  %44 = load ptr, ptr %35, align 4
  %45 = getelementptr i16, ptr %44, i32 %32
  %46 = load i16, ptr %45, align 2
  %47 = zext i16 %46 to i32
  %48 = getelementptr i8, ptr %43, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %42) #11, !srcloc !9
  br label %49

49:                                               ; preds = %31, %9
  %50 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %13, i32 0, i32 9
  %51 = load i32, ptr %50, align 4
  %52 = shl i32 2052, %51
  %53 = load ptr, ptr %13, align 4
  %54 = getelementptr i8, ptr %53, i32 %52
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #11, !srcloc !8
  %56 = icmp eq i32 %55, %1
  br i1 %56, label %111, label %57

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %13, i32 0, i32 7
  %59 = load i32, ptr %58, align 4
  switch i32 %59, label %60 [
    i32 18696, label %61
    i32 29765, label %61
  ]

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %60, %57, %57
  %62 = phi i32 [ 3, %60 ], [ 2, %57 ], [ 2, %57 ]
  %63 = phi i32 [ 233472, %60 ], [ 352, %57 ], [ 352, %57 ]
  %64 = shl i32 %1, %62
  %65 = add i32 %64, %63
  switch i32 %3, label %99 [
    i32 12, label %66
    i32 9, label %66
    i32 6, label %66
    i32 2, label %66
  ]

66:                                               ; preds = %61, %61, %61, %61
  %67 = icmp eq i32 %59, 18696
  br i1 %67, label %68, label %70

68:                                               ; preds = %66
  %69 = icmp eq i32 %1, 7
  br i1 %69, label %77, label %72

70:                                               ; preds = %66
  %71 = icmp ult i32 %1, 3
  br i1 %71, label %75, label %72

72:                                               ; preds = %70, %68
  %73 = load i1, ptr @bcm_sf2_reg_rgmii_cntrl.__already_done, align 1
  br i1 %73, label %77, label %74, !prof !15

74:                                               ; preds = %72
  store i1 true, ptr @bcm_sf2_reg_rgmii_cntrl.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.24, i32 noundef %1) #11
  br label %77

75:                                               ; preds = %70
  %76 = add i32 %1, 8
  br label %77

77:                                               ; preds = %75, %74, %72, %68
  %78 = phi i32 [ 11, %68 ], [ 1, %74 ], [ 1, %72 ], [ %76, %75 ]
  %79 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %13, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %13, i32 0, i32 8
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr i16, ptr %82, i32 %78
  %84 = load i16, ptr %83, align 2
  %85 = zext i16 %84 to i32
  %86 = getelementptr i8, ptr %80, i32 %85
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #11, !srcloc !8
  %88 = and i32 %87, -193
  %89 = or i32 %88, 128
  %90 = select i1 %7, i32 %89, i32 %88
  %91 = or i32 %90, 64
  %92 = select i1 %8, i32 %91, i32 %90
  %93 = load ptr, ptr %79, align 4
  %94 = load ptr, ptr %81, align 4
  %95 = getelementptr i16, ptr %94, i32 %78
  %96 = load i16, ptr %95, align 2
  %97 = zext i16 %96 to i32
  %98 = getelementptr i8, ptr %93, i32 %97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %92) #11, !srcloc !9
  br label %99

99:                                               ; preds = %77, %61
  %100 = icmp eq i32 %5, 100
  %101 = select i1 %100, i32 69, i32 65
  %102 = icmp eq i32 %5, 1000
  %103 = select i1 %102, i32 73, i32 %101
  %104 = icmp eq i32 %6, 1
  %105 = or i32 %103, 2
  %106 = select i1 %104, i32 %105, i32 %103
  %107 = load i32, ptr %50, align 4
  %108 = shl i32 %65, %107
  %109 = load ptr, ptr %13, align 4
  %110 = getelementptr i8, ptr %109, i32 %108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %106) #11, !srcloc !9
  br label %111

111:                                              ; preds = %99, %49
  %112 = icmp eq i32 %2, 0
  %113 = icmp ne ptr %4, null
  %114 = and i1 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = tail call i32 @b53_eee_init(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #11
  %117 = getelementptr %struct.b53_port, ptr %17, i32 %1, i32 1, i32 5
  store i32 %116, ptr %117, align 4
  br label %118

118:                                              ; preds = %115, %111
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_sf2_sw_fixed_state(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) #2 {
  %4 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.b53_device, ptr %5, i32 0, i32 23
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.phylink_link_state, ptr %2, i32 0, i32 6
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, -2
  store i8 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %7, i32 0, i32 25
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %46

14:                                               ; preds = %3
  %15 = getelementptr %struct.bcm_sf2_priv, ptr %7, i32 0, i32 21, i32 %1, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = or i8 %18, %10
  store i8 %19, ptr %8, align 4
  %20 = icmp eq i8 %18, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.dsa_switch_tree, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %41, label %27

27:                                               ; preds = %36, %21
  %28 = phi ptr [ %37, %36 ], [ %25, %21 ]
  %29 = getelementptr i8, ptr %28, i32 -264
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = getelementptr i8, ptr %28, i32 -260
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, %1
  br i1 %35, label %39, label %36

36:                                               ; preds = %32, %27
  %37 = load ptr, ptr %28, align 4
  %38 = icmp eq ptr %37, %24
  br i1 %38, label %41, label %27

39:                                               ; preds = %32
  %40 = getelementptr i8, ptr %28, i32 -280
  br label %41

41:                                               ; preds = %39, %36, %21
  %42 = phi ptr [ %40, %39 ], [ null, %21 ], [ null, %36 ]
  %43 = load ptr, ptr %42, align 4
  tail call void @netif_carrier_off(ptr noundef %43) #11
  br label %44

44:                                               ; preds = %41, %14
  %45 = getelementptr inbounds %struct.phylink_link_state, ptr %2, i32 0, i32 4
  store i32 1, ptr %45, align 4
  br label %48

46:                                               ; preds = %3
  %47 = or i8 %9, 1
  store i8 %47, ptr %8, align 4
  br label %48

48:                                               ; preds = %46, %44
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_sf2_sw_get_strings(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = tail call i32 @b53_get_sset_count(ptr noundef %0, i32 noundef %1, i32 noundef %2) #11
  tail call void @b53_get_strings(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #11
  %6 = shl i32 %5, 5
  %7 = getelementptr i8, ptr %3, i32 %6
  tail call void @bcm_sf2_cfp_get_strings(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %7) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_sf2_sw_get_ethtool_stats(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = tail call i32 @b53_get_sset_count(ptr noundef %0, i32 noundef %1, i32 noundef 1) #11
  tail call void @b53_get_ethtool_stats(ptr noundef %0, i32 noundef %1, ptr noundef %2) #11
  %5 = getelementptr i64, ptr %2, i32 %4
  tail call void @bcm_sf2_cfp_get_ethtool_stats(ptr noundef %0, i32 noundef %1, ptr noundef %5) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sf2_sw_get_sset_count(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call i32 @b53_get_sset_count(ptr noundef %0, i32 noundef %1, i32 noundef %2) #11
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @bcm_sf2_cfp_get_sset_count(ptr noundef %0, i32 noundef %1, i32 noundef %2) #11
  %8 = add i32 %7, %4
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i32 [ %8, %6 ], [ %4, %3 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b53_get_ethtool_phy_stats(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_sf2_sw_get_wol(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca %struct.ethtool_wolinfo, align 4
  %5 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch_tree, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %24, label %10

10:                                               ; preds = %19, %3
  %11 = phi ptr [ %20, %19 ], [ %8, %3 ]
  %12 = getelementptr i8, ptr %11, i32 -264
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %11, i32 -260
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %22, label %19

19:                                               ; preds = %15, %10
  %20 = load ptr, ptr %11, align 4
  %21 = icmp eq ptr %20, %7
  br i1 %21, label %24, label %10

22:                                               ; preds = %15
  %23 = getelementptr i8, ptr %11, i32 -280
  br label %24

24:                                               ; preds = %22, %19, %3
  %25 = phi ptr [ %23, %22 ], [ null, %3 ], [ null, %19 ]
  %26 = getelementptr inbounds %struct.dsa_port, ptr %25, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.b53_device, ptr %30, i32 0, i32 23
  %32 = load ptr, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false)
  %33 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 42
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.ethtool_ops, ptr %34, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %2, i32 0, i32 1
  store i32 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %2, i32 0, i32 3
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(6) %40, i8 0, i32 6, i1 false)
  br label %52

41:                                               ; preds = %24
  call void %36(ptr noundef %28, ptr noundef nonnull %4) #11
  %42 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %4, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %4, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %2, i32 0, i32 1
  store i32 %43, ptr %46, align 4
  %47 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %2, i32 0, i32 3
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(6) %47, i8 0, i32 6, i1 false)
  %48 = and i32 %45, 64
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %4, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %47, ptr noundef align 4 dereferenceable(6) %51, i32 6, i1 false)
  br label %52

52:                                               ; preds = %50, %41, %38
  %53 = phi i32 [ 0, %38 ], [ %45, %50 ], [ %45, %41 ]
  %54 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %32, i32 0, i32 22
  %55 = load i32, ptr %54, align 4
  %56 = shl nuw i32 1, %1
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i32 0, i32 %53
  %60 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %2, i32 0, i32 2
  store i32 %59, ptr %60, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sf2_sw_set_wol(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = alloca %struct.ethtool_wolinfo, align 4
  %5 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsa_switch_tree, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load ptr, ptr inttoptr (i32 32 to ptr), align 32
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.b53_device, ptr %14, i32 0, i32 23
  %16 = load ptr, ptr %15, align 4
  br label %54

17:                                               ; preds = %26, %3
  %18 = phi ptr [ %27, %26 ], [ %8, %3 ]
  %19 = getelementptr i8, ptr %18, i32 -264
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %18, i32 -260
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %1
  br i1 %25, label %29, label %26

26:                                               ; preds = %22, %17
  %27 = load ptr, ptr %18, align 4
  %28 = icmp eq ptr %27, %7
  br i1 %28, label %31, label %17

29:                                               ; preds = %22
  %30 = getelementptr i8, ptr %18, i32 -280
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi ptr [ %30, %29 ], [ null, %26 ]
  %33 = getelementptr inbounds %struct.dsa_port, ptr %32, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.b53_device, ptr %37, i32 0, i32 23
  %39 = load ptr, ptr %38, align 4
  br label %40

40:                                               ; preds = %49, %31
  %41 = phi ptr [ %50, %49 ], [ %8, %31 ]
  %42 = getelementptr i8, ptr %41, i32 -264
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = getelementptr i8, ptr %41, i32 -260
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, %1
  br i1 %48, label %52, label %49

49:                                               ; preds = %45, %40
  %50 = load ptr, ptr %41, align 4
  %51 = icmp eq ptr %50, %7
  br i1 %51, label %54, label %40

52:                                               ; preds = %45
  %53 = getelementptr i8, ptr %41, i32 -280
  br label %54

54:                                               ; preds = %52, %49, %10
  %55 = phi ptr [ %39, %52 ], [ %16, %10 ], [ %39, %49 ]
  %56 = phi ptr [ %35, %52 ], [ %12, %10 ], [ %35, %49 ]
  %57 = phi ptr [ %53, %52 ], [ null, %10 ], [ null, %49 ]
  %58 = getelementptr inbounds %struct.dsa_port, ptr %57, i32 0, i32 8
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.dsa_port, ptr %59, i32 0, i32 5
  %61 = load i32, ptr %60, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false)
  %62 = getelementptr inbounds %struct.net_device, ptr %56, i32 0, i32 42
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.ethtool_ops, ptr %63, i32 0, i32 6
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %54
  call void %65(ptr noundef %56, ptr noundef nonnull %4) #11
  %68 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %4, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = xor i32 %69, -1
  br label %71

71:                                               ; preds = %67, %54
  %72 = phi i32 [ %70, %67 ], [ -1, %54 ]
  %73 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %2, i32 0, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, %72
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %118

77:                                               ; preds = %71
  %78 = icmp eq i32 %74, 0
  %79 = shl nuw i32 1, %1
  br i1 %78, label %85, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %55, i32 0, i32 22
  %82 = load i32, ptr %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, ptr %81, align 4
  %84 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %55, i32 0, i32 22
  br label %96

85:                                               ; preds = %77
  %86 = xor i32 %79, -1
  %87 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %55, i32 0, i32 22
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, %86
  store i32 %89, ptr %87, align 4
  %90 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %55, i32 0, i32 22
  %91 = icmp eq i32 %89, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = shl i32 %61, 24
  %94 = ashr exact i32 %93, 24
  %95 = shl nuw i32 1, %94
  br label %105

96:                                               ; preds = %85, %80
  %97 = phi ptr [ %84, %80 ], [ %90, %85 ]
  %98 = phi i32 [ %83, %80 ], [ %89, %85 ]
  %99 = shl i32 %61, 24
  %100 = ashr exact i32 %99, 24
  %101 = shl nuw i32 1, %100
  %102 = icmp eq i32 %98, %101
  br i1 %102, label %105, label %103

103:                                              ; preds = %96
  %104 = or i32 %98, %101
  br label %111

105:                                              ; preds = %96, %92
  %106 = phi ptr [ %90, %92 ], [ %97, %96 ]
  %107 = phi i32 [ 0, %92 ], [ %98, %96 ]
  %108 = phi i32 [ %95, %92 ], [ %101, %96 ]
  %109 = xor i32 %108, -1
  %110 = and i32 %107, %109
  br label %111

111:                                              ; preds = %105, %103
  %112 = phi ptr [ %106, %105 ], [ %97, %103 ]
  %113 = phi i32 [ %110, %105 ], [ %104, %103 ]
  store i32 %113, ptr %112, align 4
  %114 = load ptr, ptr %62, align 8
  %115 = getelementptr inbounds %struct.ethtool_ops, ptr %114, i32 0, i32 7
  %116 = load ptr, ptr %115, align 4
  %117 = call i32 %116(ptr noundef %56, ptr noundef %2) #11
  br label %118

118:                                              ; preds = %111, %71
  %119 = phi i32 [ %117, %111 ], [ -22, %71 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #11
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sf2_sw_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.b53_device, ptr %3, i32 0, i32 23
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 -1) #11, !srcloc !9
  %9 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 16
  store i32 -1, ptr %9, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 -1) #11, !srcloc !9
  %12 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 -1) #11, !srcloc !9
  %15 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 18
  store i32 -1, ptr %15, align 4
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 -1) #11, !srcloc !9
  %18 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 18
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %77, label %21

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  br label %23

23:                                               ; preds = %73, %21
  %24 = phi i32 [ %19, %21 ], [ %74, %73 ]
  %25 = phi i32 [ 0, %21 ], [ %75, %73 ]
  %26 = load ptr, ptr %22, align 4
  %27 = getelementptr inbounds %struct.dsa_switch_tree, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %49, label %30

30:                                               ; preds = %39, %23
  %31 = phi ptr [ %40, %39 ], [ %28, %23 ]
  %32 = getelementptr i8, ptr %31, i32 -264
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = getelementptr i8, ptr %31, i32 -260
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, %25
  br i1 %38, label %42, label %39

39:                                               ; preds = %35, %30
  %40 = load ptr, ptr %31, align 4
  %41 = icmp eq ptr %40, %27
  br i1 %41, label %44, label %30

42:                                               ; preds = %35
  %43 = getelementptr i8, ptr %31, i32 -280
  br label %44

44:                                               ; preds = %42, %39
  %45 = phi ptr [ %43, %42 ], [ null, %39 ]
  %46 = getelementptr inbounds %struct.dsa_port, ptr %45, i32 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %71, label %52

49:                                               ; preds = %23
  %50 = load i32, ptr inttoptr (i32 24 to ptr), align 8
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %71, label %66

52:                                               ; preds = %61, %44
  %53 = phi ptr [ %62, %61 ], [ %28, %44 ]
  %54 = getelementptr i8, ptr %53, i32 -264
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = getelementptr i8, ptr %53, i32 -260
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, %25
  br i1 %60, label %64, label %61

61:                                               ; preds = %57, %52
  %62 = load ptr, ptr %53, align 4
  %63 = icmp eq ptr %62, %27
  br i1 %63, label %66, label %52

64:                                               ; preds = %57
  %65 = getelementptr i8, ptr %53, i32 -280
  br label %66

66:                                               ; preds = %64, %61, %49
  %67 = phi ptr [ %65, %64 ], [ null, %49 ], [ null, %61 ]
  %68 = getelementptr inbounds %struct.dsa_port, ptr %67, i32 0, i32 6
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %73

71:                                               ; preds = %66, %49, %44
  tail call void @bcm_sf2_port_disable(ptr noundef %0, i32 noundef %25)
  %72 = load i32, ptr %18, align 4
  br label %73

73:                                               ; preds = %71, %66
  %74 = phi i32 [ %24, %66 ], [ %72, %71 ]
  %75 = add nuw i32 %25, 1
  %76 = icmp ult i32 %75, %74
  br i1 %76, label %23, label %77

77:                                               ; preds = %73, %1
  %78 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 22
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 23
  %83 = load ptr, ptr %82, align 4
  tail call void @clk_disable(ptr noundef %83) #11
  tail call void @clk_unprepare(ptr noundef %83) #11
  br label %84

84:                                               ; preds = %81, %77
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sf2_sw_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.b53_device, ptr %3, i32 0, i32 23
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 23
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_prepare(ptr noundef %11) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = tail call i32 @clk_enable(ptr noundef %11) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @clk_unprepare(ptr noundef %11) #11
  br label %18

18:                                               ; preds = %17, %14, %9, %1
  %19 = tail call fastcc i32 @bcm_sf2_sw_rst(ptr noundef %5)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.bcm_sf2_sw_resume) #12
  br label %116

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 11
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i16, ptr %29, i32 7
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = getelementptr i8, ptr %27, i32 %32
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #11, !srcloc !8
  %35 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 18696
  br i1 %37, label %38, label %67

38:                                               ; preds = %23
  %39 = shl nsw i32 -1, %25
  %40 = and i32 %34, %39
  %41 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 26
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 128
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = getelementptr %struct.bcm_sf2_priv, ptr %5, i32 0, i32 21, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, -9
  %49 = icmp ult i32 %48, 4
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 526, i32 noundef 9, ptr noundef nonnull @.str.29) #11
  br label %67

51:                                               ; preds = %45, %38
  %52 = phi i32 [ 1, %38 ], [ 2, %45 ]
  %53 = or i32 %52, %40
  %54 = load ptr, ptr %26, align 4
  %55 = load ptr, ptr %28, align 4
  %56 = getelementptr i16, ptr %55, i32 7
  %57 = load i16, ptr %56, align 2
  %58 = zext i16 %57 to i32
  %59 = getelementptr i8, ptr %54, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %53) #11, !srcloc !9
  %60 = load ptr, ptr %26, align 4
  %61 = load ptr, ptr %28, align 4
  %62 = getelementptr i16, ptr %61, i32 7
  %63 = load i16, ptr %62, align 2
  %64 = zext i16 %63 to i32
  %65 = getelementptr i8, ptr %60, i32 %64
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #11, !srcloc !8
  br label %67

67:                                               ; preds = %51, %50, %23
  %68 = tail call i32 @bcm_sf2_cfp_resume(ptr noundef %0) #11
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %116

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 20, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %110

74:                                               ; preds = %70
  %75 = load ptr, ptr %2, align 4
  %76 = getelementptr inbounds %struct.b53_device, ptr %75, i32 0, i32 23
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %77, i32 0, i32 8
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr i16, ptr %81, i32 6
  %83 = load i16, ptr %82, align 2
  %84 = zext i16 %83 to i32
  %85 = getelementptr i8, ptr %79, i32 %84
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #11, !srcloc !8
  %87 = and i32 %86, -60
  %88 = or i32 %87, 32
  %89 = load ptr, ptr %78, align 4
  %90 = load ptr, ptr %80, align 4
  %91 = getelementptr i16, ptr %90, i32 6
  %92 = load i16, ptr %91, align 2
  %93 = zext i16 %92 to i32
  %94 = getelementptr i8, ptr %89, i32 %93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %88) #11, !srcloc !9
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %95(i32 noundef 4509708) #11
  %96 = load ptr, ptr %78, align 4
  %97 = load ptr, ptr %80, align 4
  %98 = getelementptr i16, ptr %97, i32 6
  %99 = load i16, ptr %98, align 2
  %100 = zext i16 %99 to i32
  %101 = getelementptr i8, ptr %96, i32 %100
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #11, !srcloc !8
  %103 = and i32 %102, -33
  %104 = load ptr, ptr %78, align 4
  %105 = load ptr, ptr %80, align 4
  %106 = getelementptr i16, ptr %105, i32 6
  %107 = load i16, ptr %106, align 2
  %108 = zext i16 %107 to i32
  %109 = getelementptr i8, ptr %104, i32 %108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %103) #11, !srcloc !9
  br label %110

110:                                              ; preds = %74, %70
  %111 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 8
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.dsa_switch_ops, ptr %112, i32 0, i32 3
  %114 = load ptr, ptr %113, align 4
  %115 = tail call i32 %114(ptr noundef %0) #11
  br label %116

116:                                              ; preds = %110, %67, %21
  %117 = phi i32 [ %19, %21 ], [ 0, %110 ], [ %68, %67 ]
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sf2_port_setup(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.b53_device, ptr %5, i32 0, i32 23
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dsa_switch_tree, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %27, label %13

13:                                               ; preds = %22, %3
  %14 = phi ptr [ %23, %22 ], [ %11, %3 ]
  %15 = getelementptr i8, ptr %14, i32 -264
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %14, i32 -260
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %25, label %22

22:                                               ; preds = %18, %13
  %23 = load ptr, ptr %14, align 4
  %24 = icmp eq ptr %23, %10
  br i1 %24, label %27, label %13

25:                                               ; preds = %18
  %26 = getelementptr i8, ptr %14, i32 -280
  br label %27

27:                                               ; preds = %25, %22, %3
  %28 = phi ptr [ %26, %25 ], [ null, %3 ], [ null, %22 ]
  %29 = getelementptr inbounds %struct.dsa_port, ptr %28, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %291

32:                                               ; preds = %27
  %33 = getelementptr %struct.bcm_sf2_priv, ptr %7, i32 0, i32 21, i32 %1, i32 2
  store i8 1, ptr %33, align 4
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr inbounds %struct.b53_device, ptr %34, i32 0, i32 23
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 18
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %91, label %40

40:                                               ; preds = %32
  %41 = load ptr, ptr %8, align 4
  %42 = getelementptr inbounds %struct.dsa_switch_tree, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %42
  br label %45

45:                                               ; preds = %72, %40
  %46 = phi i32 [ 0, %40 ], [ %73, %72 ]
  %47 = phi i32 [ 0, %40 ], [ %74, %72 ]
  br i1 %44, label %62, label %48

48:                                               ; preds = %57, %45
  %49 = phi ptr [ %58, %57 ], [ %43, %45 ]
  %50 = getelementptr i8, ptr %49, i32 -264
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = getelementptr i8, ptr %49, i32 -260
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, %47
  br i1 %56, label %60, label %57

57:                                               ; preds = %53, %48
  %58 = load ptr, ptr %49, align 4
  %59 = icmp eq ptr %58, %42
  br i1 %59, label %62, label %48

60:                                               ; preds = %53
  %61 = getelementptr i8, ptr %49, i32 -280
  br label %62

62:                                               ; preds = %60, %57, %45
  %63 = phi ptr [ %61, %60 ], [ null, %45 ], [ null, %57 ]
  %64 = getelementptr inbounds %struct.dsa_port, ptr %63, i32 0, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = getelementptr %struct.bcm_sf2_priv, ptr %36, i32 0, i32 21, i32 %47, i32 2
  %69 = load i8, ptr %68, align 4, !range !16
  %70 = zext i8 %69 to i32
  %71 = add i32 %46, %70
  br label %72

72:                                               ; preds = %67, %62
  %73 = phi i32 [ %46, %62 ], [ %71, %67 ]
  %74 = add nuw i32 %47, 1
  %75 = icmp eq i32 %74, %38
  br i1 %75, label %76, label %45

76:                                               ; preds = %72
  %77 = icmp eq i32 %73, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %36, i32 0, i32 24
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %91, label %82

82:                                               ; preds = %78
  %83 = icmp ugt i32 %73, 4
  br i1 %83, label %88, label %84

84:                                               ; preds = %82
  %85 = add nsw i32 %73, -1
  %86 = getelementptr [4 x i32], ptr @bcm_sf2_recalc_clock.rate_table, i32 0, i32 %85
  %87 = load i32, ptr %86, align 4
  br label %88

88:                                               ; preds = %84, %82
  %89 = phi i32 [ %87, %84 ], [ 90000000, %82 ]
  %90 = tail call i32 @clk_set_rate(ptr noundef nonnull %80, i32 noundef %89) #11
  br label %91

91:                                               ; preds = %88, %78, %76, %32
  %92 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %7, i32 0, i32 9
  %93 = load i32, ptr %92, align 4
  %94 = shl i32 9088, %93
  %95 = load ptr, ptr %7, align 4
  %96 = getelementptr i8, ptr %95, i32 %94
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #11, !srcloc !8
  %98 = shl i32 %1, 1
  %99 = shl i32 3, %98
  %100 = xor i32 %99, -1
  %101 = and i32 %97, %100
  %102 = load i32, ptr %92, align 4
  %103 = shl i32 9088, %102
  %104 = load ptr, ptr %7, align 4
  %105 = getelementptr i8, ptr %104, i32 %103
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %101) #11, !srcloc !9
  %106 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %7, i32 0, i32 31
  %107 = load i32, ptr %106, align 4
  %108 = shl nuw i32 1, %1
  %109 = and i32 %107, %108
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %91
  tail call void @b53_brcm_hdr_setup(ptr noundef %0, i32 noundef %1) #11
  br label %112

112:                                              ; preds = %111, %91
  %113 = shl i32 %1, 4
  %114 = add i32 %113, 49600
  %115 = load i32, ptr %92, align 4
  %116 = shl i32 %114, %115
  %117 = load ptr, ptr %7, align 4
  %118 = getelementptr i8, ptr %117, i32 %116
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #11, !srcloc !8
  %120 = or i32 %119, 16434824
  %121 = load i32, ptr %92, align 4
  %122 = shl i32 %114, %121
  %123 = load ptr, ptr %7, align 4
  %124 = getelementptr i8, ptr %123, i32 %122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %120) #11, !srcloc !9
  %125 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %7, i32 0, i32 26
  %126 = load i32, ptr %125, align 4
  %127 = and i32 %126, %108
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %173, label %129

129:                                              ; preds = %112
  %130 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %7, i32 0, i32 20, i32 3
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %173

133:                                              ; preds = %129
  %134 = load ptr, ptr %4, align 4
  %135 = getelementptr inbounds %struct.b53_device, ptr %134, i32 0, i32 23
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %136, i32 0, i32 1
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %136, i32 0, i32 8
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr i16, ptr %140, i32 6
  %142 = load i16, ptr %141, align 2
  %143 = zext i16 %142 to i32
  %144 = getelementptr i8, ptr %138, i32 %143
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #11, !srcloc !8
  %146 = and i32 %145, -60
  %147 = or i32 %146, 32
  %148 = load ptr, ptr %137, align 4
  %149 = load ptr, ptr %139, align 4
  %150 = getelementptr i16, ptr %149, i32 6
  %151 = load i16, ptr %150, align 2
  %152 = zext i16 %151 to i32
  %153 = getelementptr i8, ptr %148, i32 %152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %147) #11, !srcloc !9
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %154(i32 noundef 4509708) #11
  %155 = load ptr, ptr %137, align 4
  %156 = load ptr, ptr %139, align 4
  %157 = getelementptr i16, ptr %156, i32 6
  %158 = load i16, ptr %157, align 2
  %159 = zext i16 %158 to i32
  %160 = getelementptr i8, ptr %155, i32 %159
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #11, !srcloc !8
  %162 = and i32 %161, -33
  %163 = load ptr, ptr %137, align 4
  %164 = load ptr, ptr %139, align 4
  %165 = getelementptr i16, ptr %164, i32 6
  %166 = load i16, ptr %165, align 2
  %167 = zext i16 %166 to i32
  %168 = getelementptr i8, ptr %163, i32 %167
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 %162) #11, !srcloc !9
  %169 = icmp eq ptr %2, null
  br i1 %169, label %173, label %170

170:                                              ; preds = %133
  %171 = getelementptr inbounds %struct.phy_device, ptr %2, i32 0, i32 5
  store i32 1, ptr %171, align 4
  %172 = tail call i32 @phy_init_hw(ptr noundef nonnull %2) #11
  br label %173

173:                                              ; preds = %170, %133, %129, %112
  %174 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %7, i32 0, i32 25
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, %1
  br i1 %176, label %177, label %210

177:                                              ; preds = %173
  switch i32 %1, label %185 [
    i32 7, label %188
    i32 0, label %178
  ]

178:                                              ; preds = %177
  %179 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %7, i32 0, i32 16
  %180 = load i32, ptr %179, align 4
  %181 = and i32 %180, -32
  store i32 %181, ptr %179, align 4
  %182 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %7, i32 0, i32 2
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr i8, ptr %183, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 31) #11, !srcloc !9
  br label %210

185:                                              ; preds = %177
  %186 = sub i32 6, %1
  %187 = mul i32 %186, 5
  br label %188

188:                                              ; preds = %185, %177
  %189 = phi i32 [ %187, %185 ], [ 0, %177 ]
  %190 = shl nuw i32 1, %189
  %191 = add i32 %189, 1
  %192 = shl nuw i32 1, %191
  %193 = or i32 %192, %190
  %194 = add i32 %189, 2
  %195 = shl nuw i32 1, %194
  %196 = or i32 %193, %195
  %197 = add i32 %189, 3
  %198 = shl nuw i32 1, %197
  %199 = or i32 %196, %198
  %200 = add i32 %189, 4
  %201 = shl nuw i32 1, %200
  %202 = or i32 %199, %201
  %203 = xor i32 %202, -1
  %204 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %7, i32 0, i32 18
  %205 = load i32, ptr %204, align 4
  %206 = and i32 %205, %203
  store i32 %206, ptr %204, align 4
  %207 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %7, i32 0, i32 3
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr i8, ptr %208, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %209, i32 %202) #11, !srcloc !9
  br label %210

210:                                              ; preds = %188, %178, %173
  %211 = shl i32 %1, 3
  %212 = add i32 %211, 11392
  %213 = load i32, ptr %92, align 4
  %214 = shl i32 %212, %213
  %215 = load ptr, ptr %7, align 4
  %216 = getelementptr i8, ptr %215, i32 %214
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %216, i32 32) #11, !srcloc !9
  %217 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %7, i32 0, i32 5
  %218 = shl i32 %1, 5
  %219 = or i32 %218, 8
  %220 = load ptr, ptr %217, align 4
  %221 = getelementptr i8, ptr %220, i32 %219
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %221) #11, !srcloc !8
  %223 = and i32 %222, -2048
  %224 = or i32 %223, 24
  %225 = load ptr, ptr %217, align 4
  %226 = getelementptr i8, ptr %225, i32 %219
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %226, i32 %224) #11, !srcloc !9
  %227 = shl i32 %1, 5
  %228 = or i32 %227, 12
  %229 = load ptr, ptr %217, align 4
  %230 = getelementptr i8, ptr %229, i32 %228
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %230) #11, !srcloc !8
  %232 = and i32 %231, -2048
  %233 = or i32 %232, 24
  %234 = load ptr, ptr %217, align 4
  %235 = getelementptr i8, ptr %234, i32 %228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %235, i32 %233) #11, !srcloc !9
  %236 = shl i32 %1, 5
  %237 = or i32 %236, 16
  %238 = load ptr, ptr %217, align 4
  %239 = getelementptr i8, ptr %238, i32 %237
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %239) #11, !srcloc !8
  %241 = and i32 %240, -2048
  %242 = or i32 %241, 24
  %243 = load ptr, ptr %217, align 4
  %244 = getelementptr i8, ptr %243, i32 %237
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 %242) #11, !srcloc !9
  %245 = shl i32 %1, 5
  %246 = or i32 %245, 20
  %247 = load ptr, ptr %217, align 4
  %248 = getelementptr i8, ptr %247, i32 %246
  %249 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %248) #11, !srcloc !8
  %250 = and i32 %249, -2048
  %251 = or i32 %250, 24
  %252 = load ptr, ptr %217, align 4
  %253 = getelementptr i8, ptr %252, i32 %246
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %253, i32 %251) #11, !srcloc !9
  %254 = shl i32 %1, 5
  %255 = or i32 %254, 24
  %256 = load ptr, ptr %217, align 4
  %257 = getelementptr i8, ptr %256, i32 %255
  %258 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %257) #11, !srcloc !8
  %259 = and i32 %258, -2048
  %260 = or i32 %259, 24
  %261 = load ptr, ptr %217, align 4
  %262 = getelementptr i8, ptr %261, i32 %255
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %262, i32 %260) #11, !srcloc !9
  %263 = shl i32 %1, 5
  %264 = or i32 %263, 28
  %265 = load ptr, ptr %217, align 4
  %266 = getelementptr i8, ptr %265, i32 %264
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %266) #11, !srcloc !8
  %268 = and i32 %267, -2048
  %269 = or i32 %268, 24
  %270 = load ptr, ptr %217, align 4
  %271 = getelementptr i8, ptr %270, i32 %264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %271, i32 %269) #11, !srcloc !9
  %272 = shl i32 %1, 5
  %273 = add i32 %272, 32
  %274 = load ptr, ptr %217, align 4
  %275 = getelementptr i8, ptr %274, i32 %273
  %276 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %275) #11, !srcloc !8
  %277 = and i32 %276, -2048
  %278 = or i32 %277, 24
  %279 = load ptr, ptr %217, align 4
  %280 = getelementptr i8, ptr %279, i32 %273
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %280, i32 %278) #11, !srcloc !9
  %281 = shl i32 %1, 5
  %282 = add i32 %281, 36
  %283 = load ptr, ptr %217, align 4
  %284 = getelementptr i8, ptr %283, i32 %282
  %285 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %284) #11, !srcloc !8
  %286 = and i32 %285, -2048
  %287 = or i32 %286, 24
  %288 = load ptr, ptr %217, align 4
  %289 = getelementptr i8, ptr %288, i32 %282
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %289, i32 %287) #11, !srcloc !9
  %290 = tail call i32 @b53_enable_port(ptr noundef %0, i32 noundef %1, ptr noundef %2) #11
  br label %291

291:                                              ; preds = %210, %27
  %292 = phi i32 [ %290, %210 ], [ 0, %27 ]
  ret i32 %292
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_sf2_port_disable(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.b53_device, ptr %4, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 22
  %8 = load i32, ptr %7, align 4
  %9 = shl nuw i32 1, %1
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 240, %14
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr i8, ptr %16, i32 %15
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #11, !srcloc !8
  %19 = or i32 %18, %9
  %20 = load i32, ptr %13, align 4
  %21 = shl i32 240, %20
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr i8, ptr %22, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %19) #11, !srcloc !9
  br label %191

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 25
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %28, label %64

28:                                               ; preds = %24
  switch i32 %1, label %38 [
    i32 7, label %41
    i32 0, label %29
  ]

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 31) #11, !srcloc !9
  %33 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 16
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, 31
  store i32 %35, ptr %33, align 4
  %36 = load ptr, ptr %30, align 4
  %37 = getelementptr i8, ptr %36, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 31) #11, !srcloc !9
  br label %64

38:                                               ; preds = %28
  %39 = sub i32 6, %1
  %40 = mul i32 %39, 5
  br label %41

41:                                               ; preds = %38, %28
  %42 = phi i32 [ %40, %38 ], [ 0, %28 ]
  %43 = shl nuw i32 1, %42
  %44 = add i32 %42, 1
  %45 = shl nuw i32 1, %44
  %46 = or i32 %45, %43
  %47 = add i32 %42, 2
  %48 = shl nuw i32 1, %47
  %49 = or i32 %46, %48
  %50 = add i32 %42, 3
  %51 = shl nuw i32 1, %50
  %52 = or i32 %49, %51
  %53 = add i32 %42, 4
  %54 = shl nuw i32 1, %53
  %55 = or i32 %52, %54
  %56 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i8, ptr %57, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %55) #11, !srcloc !9
  %59 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 18
  %60 = load i32, ptr %59, align 4
  %61 = or i32 %55, %60
  store i32 %61, ptr %59, align 4
  %62 = load ptr, ptr %56, align 4
  %63 = getelementptr i8, ptr %62, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %55) #11, !srcloc !9
  br label %64

64:                                               ; preds = %41, %29, %24
  %65 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 26
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, %9
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %118, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 20, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %118

73:                                               ; preds = %69
  %74 = load ptr, ptr %3, align 4
  %75 = getelementptr inbounds %struct.b53_device, ptr %74, i32 0, i32 23
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %76, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %76, i32 0, i32 8
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr i16, ptr %80, i32 6
  %82 = load i16, ptr %81, align 2
  %83 = zext i16 %82 to i32
  %84 = getelementptr i8, ptr %78, i32 %83
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #11, !srcloc !8
  %86 = or i32 %85, 35
  %87 = load ptr, ptr %77, align 4
  %88 = load ptr, ptr %79, align 4
  %89 = getelementptr i16, ptr %88, i32 6
  %90 = load i16, ptr %89, align 2
  %91 = zext i16 %90 to i32
  %92 = getelementptr i8, ptr %87, i32 %91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %86) #11, !srcloc !9
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 214748000) #11
  %94 = or i32 %85, 51
  %95 = load ptr, ptr %77, align 4
  %96 = load ptr, ptr %79, align 4
  %97 = getelementptr i16, ptr %96, i32 6
  %98 = load i16, ptr %97, align 2
  %99 = zext i16 %98 to i32
  %100 = getelementptr i8, ptr %95, i32 %99
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %94) #11, !srcloc !9
  %101 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %76, i32 0, i32 7
  %102 = load i32, ptr %101, align 4
  switch i32 %102, label %118 [
    i32 29304, label %103
    i32 29765, label %103
  ]

103:                                              ; preds = %73, %73
  %104 = load ptr, ptr %77, align 4
  %105 = load ptr, ptr %79, align 4
  %106 = getelementptr i16, ptr %105, i32 12
  %107 = load i16, ptr %106, align 2
  %108 = zext i16 %107 to i32
  %109 = getelementptr i8, ptr %104, i32 %108
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #11, !srcloc !8
  %111 = or i32 %110, 16777216
  %112 = load ptr, ptr %77, align 4
  %113 = load ptr, ptr %79, align 4
  %114 = getelementptr i16, ptr %113, i32 12
  %115 = load i16, ptr %114, align 2
  %116 = zext i16 %115 to i32
  %117 = getelementptr i8, ptr %112, i32 %116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %111) #11, !srcloc !9
  br label %118

118:                                              ; preds = %103, %73, %69, %64
  tail call void @b53_disable_port(ptr noundef %0, i32 noundef %1) #11
  %119 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 9
  %120 = load i32, ptr %119, align 4
  %121 = shl i32 9088, %120
  %122 = load ptr, ptr %6, align 4
  %123 = getelementptr i8, ptr %122, i32 %121
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #11, !srcloc !8
  %125 = shl i32 %1, 1
  %126 = shl i32 3, %125
  %127 = or i32 %124, %126
  %128 = load i32, ptr %119, align 4
  %129 = shl i32 9088, %128
  %130 = load ptr, ptr %6, align 4
  %131 = getelementptr i8, ptr %130, i32 %129
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %127) #11, !srcloc !9
  %132 = getelementptr %struct.bcm_sf2_priv, ptr %6, i32 0, i32 21, i32 %1, i32 2
  store i8 0, ptr %132, align 4
  %133 = load ptr, ptr %3, align 4
  %134 = getelementptr inbounds %struct.b53_device, ptr %133, i32 0, i32 23
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 18
  %137 = load i32, ptr %136, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %191, label %139

139:                                              ; preds = %118
  %140 = getelementptr inbounds %struct.dsa_switch, ptr %0, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.dsa_switch_tree, ptr %141, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, %142
  br label %145

145:                                              ; preds = %172, %139
  %146 = phi i32 [ 0, %139 ], [ %173, %172 ]
  %147 = phi i32 [ 0, %139 ], [ %174, %172 ]
  br i1 %144, label %162, label %148

148:                                              ; preds = %157, %145
  %149 = phi ptr [ %158, %157 ], [ %143, %145 ]
  %150 = getelementptr i8, ptr %149, i32 -264
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, %0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = getelementptr i8, ptr %149, i32 -260
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %155, %147
  br i1 %156, label %160, label %157

157:                                              ; preds = %153, %148
  %158 = load ptr, ptr %149, align 4
  %159 = icmp eq ptr %158, %142
  br i1 %159, label %162, label %148

160:                                              ; preds = %153
  %161 = getelementptr i8, ptr %149, i32 -280
  br label %162

162:                                              ; preds = %160, %157, %145
  %163 = phi ptr [ %161, %160 ], [ null, %145 ], [ null, %157 ]
  %164 = getelementptr inbounds %struct.dsa_port, ptr %163, i32 0, i32 6
  %165 = load i32, ptr %164, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %172, label %167

167:                                              ; preds = %162
  %168 = getelementptr %struct.bcm_sf2_priv, ptr %135, i32 0, i32 21, i32 %147, i32 2
  %169 = load i8, ptr %168, align 4, !range !16
  %170 = zext i8 %169 to i32
  %171 = add i32 %146, %170
  br label %172

172:                                              ; preds = %167, %162
  %173 = phi i32 [ %146, %162 ], [ %171, %167 ]
  %174 = add nuw i32 %147, 1
  %175 = icmp eq i32 %174, %137
  br i1 %175, label %176, label %145

176:                                              ; preds = %172
  %177 = icmp eq i32 %173, 0
  br i1 %177, label %191, label %178

178:                                              ; preds = %176
  %179 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %135, i32 0, i32 24
  %180 = load ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %191, label %182

182:                                              ; preds = %178
  %183 = icmp ugt i32 %173, 4
  br i1 %183, label %188, label %184

184:                                              ; preds = %182
  %185 = add nsw i32 %173, -1
  %186 = getelementptr [4 x i32], ptr @bcm_sf2_recalc_clock.rate_table, i32 0, i32 %185
  %187 = load i32, ptr %186, align 4
  br label %188

188:                                              ; preds = %184, %182
  %189 = phi i32 [ %187, %184 ], [ 90000000, %182 ]
  %190 = tail call i32 @clk_set_rate(ptr noundef nonnull %180, i32 noundef %189) #11
  br label %191

191:                                              ; preds = %188, %178, %176, %118, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_set_mac_eee(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_get_mac_eee(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_br_join(ptr noundef, i32 noundef, [4 x i32], ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b53_br_leave(ptr noundef, i32 noundef, [4 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b53_br_set_stp_state(ptr noundef, i32 noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b53_br_fast_age(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_br_flags_pre(ptr noundef, i32 noundef, [2 x i32], ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_br_flags(ptr noundef, i32 noundef, [2 x i32], ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_vlan_filtering(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_vlan_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_vlan_del(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_fdb_add(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_fdb_del(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_fdb_dump(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_mdb_add(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_mdb_del(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_sf2_get_rxnfc(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_sf2_set_rxnfc(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_mirror_add(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b53_mirror_del(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_configure_vlan(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_setup_devlink_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b53_brcm_hdr_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_devlink_resources_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_set_port_modes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_eee_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_get_sset_count(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b53_get_strings(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_sf2_cfp_get_strings(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b53_get_ethtool_stats(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_sf2_cfp_get_ethtool_stats(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_sf2_cfp_get_sset_count(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_sf2_cfp_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_enable_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b53_disable_port(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_remove_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_mdio_find_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sf2_sw_mdio_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq i32 %1, 30
  br i1 %6, label %7, label %52

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 27
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1073741824
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %52, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr i8, ptr %14, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !8
  %21 = or i32 %20, 1
  %22 = load ptr, ptr %13, align 4
  %23 = load ptr, ptr %15, align 4
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  %26 = getelementptr i8, ptr %22, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %21) #11, !srcloc !9
  %27 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = shl i32 448, %28
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr i8, ptr %30, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 30) #11, !srcloc !9
  %32 = shl i32 %2, 3
  %33 = or i32 %32, 131072
  %34 = load i32, ptr %27, align 4
  %35 = shl i32 %33, %34
  %36 = load ptr, ptr %5, align 4
  %37 = getelementptr i8, ptr %36, i32 %35
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !8
  %39 = and i32 %38, 65535
  %40 = load ptr, ptr %13, align 4
  %41 = load ptr, ptr %15, align 4
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  %44 = getelementptr i8, ptr %40, i32 %43
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #11, !srcloc !8
  %46 = and i32 %45, -2
  %47 = load ptr, ptr %13, align 4
  %48 = load ptr, ptr %15, align 4
  %49 = load i16, ptr %48, align 2
  %50 = zext i16 %49 to i32
  %51 = getelementptr i8, ptr %47, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %46) #11, !srcloc !9
  br label %56

52:                                               ; preds = %7, %3
  %53 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %5, i32 0, i32 30
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 @mdiobus_read_nested(ptr noundef %54, i32 noundef %1, i32 noundef %2) #11
  br label %56

56:                                               ; preds = %52, %12
  %57 = phi i32 [ %39, %12 ], [ %55, %52 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sf2_sw_mdio_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq i32 %1, 30
  br i1 %7, label %8, label %52

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 27
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1073741824
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %52, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = getelementptr i8, ptr %15, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !8
  %22 = or i32 %21, 1
  %23 = load ptr, ptr %14, align 4
  %24 = load ptr, ptr %16, align 4
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = getelementptr i8, ptr %23, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %22) #11, !srcloc !9
  %28 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 9
  %29 = load i32, ptr %28, align 4
  %30 = shl i32 448, %29
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr i8, ptr %31, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 30) #11, !srcloc !9
  %33 = shl i32 %2, 3
  %34 = or i32 %33, 131072
  %35 = zext i16 %3 to i32
  %36 = load i32, ptr %28, align 4
  %37 = shl i32 %34, %36
  %38 = load ptr, ptr %6, align 4
  %39 = getelementptr i8, ptr %38, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %35) #11, !srcloc !9
  %40 = load ptr, ptr %14, align 4
  %41 = load ptr, ptr %16, align 4
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  %44 = getelementptr i8, ptr %40, i32 %43
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #11, !srcloc !8
  %46 = and i32 %45, -2
  %47 = load ptr, ptr %14, align 4
  %48 = load ptr, ptr %16, align 4
  %49 = load i16, ptr %48, align 2
  %50 = zext i16 %49 to i32
  %51 = getelementptr i8, ptr %47, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %46) #11, !srcloc !9
  br label %56

52:                                               ; preds = %8, %4
  %53 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %6, i32 0, i32 30
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 @mdiobus_write_nested(ptr noundef %54, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #11
  br label %56

56:                                               ; preds = %52, %13
  %57 = phi i32 [ 0, %13 ], [ %55, %52 ]
  ret i32 %57
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_find_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_device_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read_nested(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write_nested(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_port_phylink_mac_change(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_unregister_switch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_sf2_cfp_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_switch_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sf2_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @dsa_switch_suspend(ptr noundef %6) #11
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_sf2_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcm_sf2_priv, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @dsa_switch_resume(ptr noundef %6) #11
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_switch_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_switch_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 5453855}
!9 = !{i64 5453437}
!10 = !{!"auto-init"}
!11 = !{i64 2148966308}
!12 = !{i64 2148962132}
!13 = !{i64 2148962207, i64 2148962234, i64 2148962281, i64 2148962303, i64 2148962331, i64 2148962351}
!14 = !{i64 2148989311}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i8 0, i8 2}
