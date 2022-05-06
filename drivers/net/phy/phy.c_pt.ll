; ModuleID = '/llk/IR/drivers/net/phy/phy.c_pt.bc'
source_filename = "../drivers/net/phy/phy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_print_status:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_print_status\22\09\09\09\09\09"
module asm "__kstrtabns_phy_print_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_restart_aneg:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_restart_aneg\22\09\09\09\09\09"
module asm "__kstrtabns_phy_restart_aneg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_aneg_done:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_aneg_done\22\09\09\09\09\09"
module asm "__kstrtabns_phy_aneg_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_ethtool_ksettings_get:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_ethtool_ksettings_get\22\09\09\09\09\09"
module asm "__kstrtabns_phy_ethtool_ksettings_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_mii_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_mii_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_phy_mii_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_do_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_do_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_phy_do_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_do_ioctl_running:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_do_ioctl_running\22\09\09\09\09\09"
module asm "__kstrtabns_phy_do_ioctl_running:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_queue_state_machine:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_queue_state_machine\22\09\09\09\09\09"
module asm "__kstrtabns_phy_queue_state_machine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_trigger_machine:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_trigger_machine\22\09\09\09\09\09"
module asm "__kstrtabns_phy_trigger_machine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_ethtool_get_strings:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_ethtool_get_strings\22\09\09\09\09\09"
module asm "__kstrtabns_phy_ethtool_get_strings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_ethtool_get_sset_count:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_ethtool_get_sset_count\22\09\09\09\09\09"
module asm "__kstrtabns_phy_ethtool_get_sset_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_ethtool_get_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_ethtool_get_stats\22\09\09\09\09\09"
module asm "__kstrtabns_phy_ethtool_get_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_start_cable_test:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_start_cable_test\22\09\09\09\09\09"
module asm "__kstrtabns_phy_start_cable_test:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_start_cable_test_tdr:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_start_cable_test_tdr\22\09\09\09\09\09"
module asm "__kstrtabns_phy_start_cable_test_tdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_config_aneg:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_config_aneg\22\09\09\09\09\09"
module asm "__kstrtabns_phy_config_aneg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_start_aneg:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_start_aneg\22\09\09\09\09\09"
module asm "__kstrtabns_phy_start_aneg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_ethtool_ksettings_set:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_ethtool_ksettings_set\22\09\09\09\09\09"
module asm "__kstrtabns_phy_ethtool_ksettings_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_speed_down:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_speed_down\22\09\09\09\09\09"
module asm "__kstrtabns_phy_speed_down:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_speed_up:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_speed_up\22\09\09\09\09\09"
module asm "__kstrtabns_phy_speed_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_start_machine:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_start_machine\22\09\09\09\09\09"
module asm "__kstrtabns_phy_start_machine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_error:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_error\22\09\09\09\09\09"
module asm "__kstrtabns_phy_error:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_request_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_request_interrupt\22\09\09\09\09\09"
module asm "__kstrtabns_phy_request_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_free_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_free_interrupt\22\09\09\09\09\09"
module asm "__kstrtabns_phy_free_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_stop\22\09\09\09\09\09"
module asm "__kstrtabns_phy_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_start:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_start\22\09\09\09\09\09"
module asm "__kstrtabns_phy_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_mac_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_mac_interrupt\22\09\09\09\09\09"
module asm "__kstrtabns_phy_mac_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_init_eee:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_init_eee\22\09\09\09\09\09"
module asm "__kstrtabns_phy_init_eee:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_get_eee_err:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_get_eee_err\22\09\09\09\09\09"
module asm "__kstrtabns_phy_get_eee_err:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_ethtool_get_eee:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_ethtool_get_eee\22\09\09\09\09\09"
module asm "__kstrtabns_phy_ethtool_get_eee:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_ethtool_set_eee:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_ethtool_set_eee\22\09\09\09\09\09"
module asm "__kstrtabns_phy_ethtool_set_eee:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_ethtool_set_wol:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_ethtool_set_wol\22\09\09\09\09\09"
module asm "__kstrtabns_phy_ethtool_set_wol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_ethtool_get_wol:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_ethtool_get_wol\22\09\09\09\09\09"
module asm "__kstrtabns_phy_ethtool_get_wol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_ethtool_get_link_ksettings:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_ethtool_get_link_ksettings\22\09\09\09\09\09"
module asm "__kstrtabns_phy_ethtool_get_link_ksettings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_ethtool_set_link_ksettings:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_ethtool_set_link_ksettings\22\09\09\09\09\09"
module asm "__kstrtabns_phy_ethtool_set_link_ksettings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_ethtool_nway_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_ethtool_nway_reset\22\09\09\09\09\09"
module asm "__kstrtabns_phy_ethtool_nway_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.132, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.132 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.ifreq = type { %union.anon.117, %union.anon.118 }
%union.anon.117 = type { [16 x i8] }
%union.anon.118 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.mii_ioctl_data = type { i16, i16, i16, i16 }
%struct.mii_timestamper = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.116, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.133, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.116 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.133 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.phy_setting = type { i32, i8, i8 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }

@.str = private unnamed_addr constant [40 x i8] c"Link is Up - %s/%s %s- flow control %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"(downshifted) \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Link is Down\0A\00", align 1
@__kstrtab_phy_print_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_print_status = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_print_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_print_status to i32), ptr @__kstrtab_phy_print_status, ptr @__kstrtabns_phy_print_status }, section "___ksymtab+phy_print_status", align 4
@__kstrtab_phy_restart_aneg = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_restart_aneg = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_restart_aneg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_restart_aneg to i32), ptr @__kstrtab_phy_restart_aneg, ptr @__kstrtabns_phy_restart_aneg }, section "___ksymtab_gpl+phy_restart_aneg", align 4
@__kstrtab_phy_aneg_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_aneg_done = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_aneg_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_aneg_done to i32), ptr @__kstrtab_phy_aneg_done, ptr @__kstrtabns_phy_aneg_done }, section "___ksymtab+phy_aneg_done", align 4
@__kstrtab_phy_ethtool_ksettings_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_ethtool_ksettings_get = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_ethtool_ksettings_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_ethtool_ksettings_get to i32), ptr @__kstrtab_phy_ethtool_ksettings_get, ptr @__kstrtabns_phy_ethtool_ksettings_get }, section "___ksymtab+phy_ethtool_ksettings_get", align 4
@__kstrtab_phy_mii_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_mii_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_mii_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_mii_ioctl to i32), ptr @__kstrtab_phy_mii_ioctl, ptr @__kstrtabns_phy_mii_ioctl }, section "___ksymtab+phy_mii_ioctl", align 4
@__kstrtab_phy_do_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_do_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_do_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_do_ioctl to i32), ptr @__kstrtab_phy_do_ioctl, ptr @__kstrtabns_phy_do_ioctl }, section "___ksymtab+phy_do_ioctl", align 4
@__kstrtab_phy_do_ioctl_running = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_do_ioctl_running = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_do_ioctl_running = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_do_ioctl_running to i32), ptr @__kstrtab_phy_do_ioctl_running, ptr @__kstrtabns_phy_do_ioctl_running }, section "___ksymtab+phy_do_ioctl_running", align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_phy_queue_state_machine = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_queue_state_machine = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_queue_state_machine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_queue_state_machine to i32), ptr @__kstrtab_phy_queue_state_machine, ptr @__kstrtabns_phy_queue_state_machine }, section "___ksymtab+phy_queue_state_machine", align 4
@__kstrtab_phy_trigger_machine = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_trigger_machine = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_trigger_machine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_trigger_machine to i32), ptr @__kstrtab_phy_trigger_machine, ptr @__kstrtabns_phy_trigger_machine }, section "___ksymtab+phy_trigger_machine", align 4
@__kstrtab_phy_ethtool_get_strings = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_ethtool_get_strings = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_ethtool_get_strings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_ethtool_get_strings to i32), ptr @__kstrtab_phy_ethtool_get_strings, ptr @__kstrtabns_phy_ethtool_get_strings }, section "___ksymtab+phy_ethtool_get_strings", align 4
@__kstrtab_phy_ethtool_get_sset_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_ethtool_get_sset_count = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_ethtool_get_sset_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_ethtool_get_sset_count to i32), ptr @__kstrtab_phy_ethtool_get_sset_count, ptr @__kstrtabns_phy_ethtool_get_sset_count }, section "___ksymtab+phy_ethtool_get_sset_count", align 4
@__kstrtab_phy_ethtool_get_stats = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_ethtool_get_stats = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_ethtool_get_stats = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_ethtool_get_stats to i32), ptr @__kstrtab_phy_ethtool_get_stats, ptr @__kstrtabns_phy_ethtool_get_stats }, section "___ksymtab+phy_ethtool_get_stats", align 4
@phy_start_cable_test.__msg = internal constant [42 x i8] c"PHY driver does not support cable testing\00", align 1
@phy_start_cable_test.__msg.4 = internal constant [30 x i8] c"PHY already performing a test\00", align 1
@phy_start_cable_test.__msg.5 = internal constant [45 x i8] c"PHY not configured. Try setting interface up\00", align 1
@__kstrtab_phy_start_cable_test = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_start_cable_test = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_start_cable_test = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_start_cable_test to i32), ptr @__kstrtab_phy_start_cable_test, ptr @__kstrtabns_phy_start_cable_test }, section "___ksymtab+phy_start_cable_test", align 4
@phy_start_cable_test_tdr.__msg = internal constant [43 x i8] c"PHY driver does not support cable test TDR\00", align 1
@phy_start_cable_test_tdr.__msg.6 = internal constant [30 x i8] c"PHY already performing a test\00", align 1
@phy_start_cable_test_tdr.__msg.7 = internal constant [45 x i8] c"PHY not configured. Try setting interface up\00", align 1
@__kstrtab_phy_start_cable_test_tdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_start_cable_test_tdr = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_start_cable_test_tdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_start_cable_test_tdr to i32), ptr @__kstrtab_phy_start_cable_test_tdr, ptr @__kstrtabns_phy_start_cable_test_tdr }, section "___ksymtab+phy_start_cable_test_tdr", align 4
@__kstrtab_phy_config_aneg = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_config_aneg = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_config_aneg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_config_aneg to i32), ptr @__kstrtab_phy_config_aneg, ptr @__kstrtabns_phy_config_aneg }, section "___ksymtab+phy_config_aneg", align 4
@__kstrtab_phy_start_aneg = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_start_aneg = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_start_aneg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_start_aneg to i32), ptr @__kstrtab_phy_start_aneg, ptr @__kstrtabns_phy_start_aneg }, section "___ksymtab+phy_start_aneg", align 4
@__kstrtab_phy_ethtool_ksettings_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_ethtool_ksettings_set = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_ethtool_ksettings_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_ethtool_ksettings_set to i32), ptr @__kstrtab_phy_ethtool_ksettings_set, ptr @__kstrtabns_phy_ethtool_ksettings_set }, section "___ksymtab+phy_ethtool_ksettings_set", align 4
@__kstrtab_phy_speed_down = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_speed_down = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_speed_down = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_speed_down to i32), ptr @__kstrtab_phy_speed_down, ptr @__kstrtabns_phy_speed_down }, section "___ksymtab_gpl+phy_speed_down", align 4
@__kstrtab_phy_speed_up = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_speed_up = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_speed_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_speed_up to i32), ptr @__kstrtab_phy_speed_up, ptr @__kstrtabns_phy_speed_up }, section "___ksymtab_gpl+phy_speed_up", align 4
@__kstrtab_phy_start_machine = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_start_machine = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_start_machine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_start_machine to i32), ptr @__kstrtab_phy_start_machine, ptr @__kstrtabns_phy_start_machine }, section "___ksymtab_gpl+phy_start_machine", align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"drivers/net/phy/phy.c\00", align 1
@__kstrtab_phy_error = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_error = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_error = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_error to i32), ptr @__kstrtab_phy_error, ptr @__kstrtabns_phy_error }, section "___ksymtab+phy_error", align 4
@.str.9 = private unnamed_addr constant [53 x i8] c"Error %d requesting IRQ %d, falling back to polling\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Can't enable interrupt, falling back to polling\0A\00", align 1
@__kstrtab_phy_request_interrupt = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_request_interrupt = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_request_interrupt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_request_interrupt to i32), ptr @__kstrtab_phy_request_interrupt, ptr @__kstrtabns_phy_request_interrupt }, section "___ksymtab+phy_request_interrupt", align 4
@__kstrtab_phy_free_interrupt = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_free_interrupt = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_free_interrupt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_free_interrupt to i32), ptr @__kstrtab_phy_free_interrupt, ptr @__kstrtabns_phy_free_interrupt }, section "___ksymtab+phy_free_interrupt", align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"called from state %s\0A\00", align 1
@__kstrtab_phy_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_stop to i32), ptr @__kstrtab_phy_stop, ptr @__kstrtabns_phy_stop }, section "___ksymtab+phy_stop", align 4
@__kstrtab_phy_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_start = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_start to i32), ptr @__kstrtab_phy_start, ptr @__kstrtabns_phy_start }, section "___ksymtab+phy_start", align 4
@__kstrtab_phy_mac_interrupt = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_mac_interrupt = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_mac_interrupt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_mac_interrupt to i32), ptr @__kstrtab_phy_mac_interrupt, ptr @__kstrtabns_phy_mac_interrupt }, section "___ksymtab+phy_mac_interrupt", align 4
@__kstrtab_phy_init_eee = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_init_eee = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_init_eee = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_init_eee to i32), ptr @__kstrtab_phy_init_eee, ptr @__kstrtabns_phy_init_eee }, section "___ksymtab+phy_init_eee", align 4
@__kstrtab_phy_get_eee_err = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_get_eee_err = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_get_eee_err = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_get_eee_err to i32), ptr @__kstrtab_phy_get_eee_err, ptr @__kstrtabns_phy_get_eee_err }, section "___ksymtab+phy_get_eee_err", align 4
@__kstrtab_phy_ethtool_get_eee = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_ethtool_get_eee = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_ethtool_get_eee = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_ethtool_get_eee to i32), ptr @__kstrtab_phy_ethtool_get_eee, ptr @__kstrtabns_phy_ethtool_get_eee }, section "___ksymtab+phy_ethtool_get_eee", align 4
@__kstrtab_phy_ethtool_set_eee = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_ethtool_set_eee = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_ethtool_set_eee = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_ethtool_set_eee to i32), ptr @__kstrtab_phy_ethtool_set_eee, ptr @__kstrtabns_phy_ethtool_set_eee }, section "___ksymtab+phy_ethtool_set_eee", align 4
@__kstrtab_phy_ethtool_set_wol = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_ethtool_set_wol = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_ethtool_set_wol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_ethtool_set_wol to i32), ptr @__kstrtab_phy_ethtool_set_wol, ptr @__kstrtabns_phy_ethtool_set_wol }, section "___ksymtab+phy_ethtool_set_wol", align 4
@__kstrtab_phy_ethtool_get_wol = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_ethtool_get_wol = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_ethtool_get_wol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_ethtool_get_wol to i32), ptr @__kstrtab_phy_ethtool_get_wol, ptr @__kstrtabns_phy_ethtool_get_wol }, section "___ksymtab+phy_ethtool_get_wol", align 4
@__kstrtab_phy_ethtool_get_link_ksettings = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_ethtool_get_link_ksettings = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_ethtool_get_link_ksettings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_ethtool_get_link_ksettings to i32), ptr @__kstrtab_phy_ethtool_get_link_ksettings, ptr @__kstrtabns_phy_ethtool_get_link_ksettings }, section "___ksymtab+phy_ethtool_get_link_ksettings", align 4
@__kstrtab_phy_ethtool_set_link_ksettings = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_ethtool_set_link_ksettings = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_ethtool_set_link_ksettings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_ethtool_set_link_ksettings to i32), ptr @__kstrtab_phy_ethtool_set_link_ksettings, ptr @__kstrtabns_phy_ethtool_set_link_ksettings }, section "___ksymtab+phy_ethtool_set_link_ksettings", align 4
@__kstrtab_phy_ethtool_nway_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_ethtool_nway_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_ethtool_nway_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_ethtool_nway_reset to i32), ptr @__kstrtab_phy_ethtool_nway_reset, ptr @__kstrtabns_phy_ethtool_nway_reset }, section "___ksymtab+phy_ethtool_nway_reset", align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"rx/tx\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"READY\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"RUNNING\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"NOLINK\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"CABLETEST\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"HALTED\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Error while aborting cable test\00", align 1
@llvm.compiler.used = appending global [35 x ptr] [ptr @__ksymtab_phy_aneg_done, ptr @__ksymtab_phy_config_aneg, ptr @__ksymtab_phy_do_ioctl, ptr @__ksymtab_phy_do_ioctl_running, ptr @__ksymtab_phy_error, ptr @__ksymtab_phy_ethtool_get_eee, ptr @__ksymtab_phy_ethtool_get_link_ksettings, ptr @__ksymtab_phy_ethtool_get_sset_count, ptr @__ksymtab_phy_ethtool_get_stats, ptr @__ksymtab_phy_ethtool_get_strings, ptr @__ksymtab_phy_ethtool_get_wol, ptr @__ksymtab_phy_ethtool_ksettings_get, ptr @__ksymtab_phy_ethtool_ksettings_set, ptr @__ksymtab_phy_ethtool_nway_reset, ptr @__ksymtab_phy_ethtool_set_eee, ptr @__ksymtab_phy_ethtool_set_link_ksettings, ptr @__ksymtab_phy_ethtool_set_wol, ptr @__ksymtab_phy_free_interrupt, ptr @__ksymtab_phy_get_eee_err, ptr @__ksymtab_phy_init_eee, ptr @__ksymtab_phy_mac_interrupt, ptr @__ksymtab_phy_mii_ioctl, ptr @__ksymtab_phy_print_status, ptr @__ksymtab_phy_queue_state_machine, ptr @__ksymtab_phy_request_interrupt, ptr @__ksymtab_phy_restart_aneg, ptr @__ksymtab_phy_speed_down, ptr @__ksymtab_phy_speed_up, ptr @__ksymtab_phy_start, ptr @__ksymtab_phy_start_aneg, ptr @__ksymtab_phy_start_cable_test, ptr @__ksymtab_phy_start_cable_test_tdr, ptr @__ksymtab_phy_start_machine, ptr @__ksymtab_phy_stop, ptr @__ksymtab_phy_trigger_machine], section "llvm.metadata"
@switch.table.phy_start = private unnamed_addr constant [7 x ptr] [ptr @.str.16, ptr null, ptr null, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_print_status(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 8192
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 32
  %7 = load ptr, ptr %6, align 8
  br i1 %5, label %46, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = tail call ptr @phy_speed_to_str(i32 noundef %10) #9
  %12 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = tail call ptr @phy_duplex_to_str(i32 noundef %13) #9
  %15 = load i16, ptr %2, align 8
  %16 = and i16 %15, 512
  %17 = icmp eq i16 %16, 0
  %18 = select i1 %17, ptr @.str.2, ptr @.str.1
  %19 = and i16 %15, 4096
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 8192
  %25 = icmp eq i32 %24, 0
  %26 = load volatile i32, ptr %22, align 4
  %27 = and i32 %26, 16384
  %28 = icmp eq i32 %27, 0
  br i1 %25, label %33, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 11
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29, %21
  br i1 %28, label %43, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 12
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  br i1 %25, label %39, label %44

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 11
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %34, %33, %8
  br label %44

44:                                               ; preds = %43, %39, %38, %29
  %45 = phi ptr [ @.str.15, %43 ], [ @.str.12, %29 ], [ @.str.13, %38 ], [ @.str.14, %39 ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef %11, ptr noundef %14, ptr noundef nonnull %18, ptr noundef nonnull %45) #10
  br label %47

46:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %7, ptr noundef nonnull @.str.3) #10
  br label %47

47:                                               ; preds = %46, %44
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_speed_to_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_duplex_to_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_restart_aneg(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call i32 @genphy_c45_restart_aneg(ptr noundef %0) #9
  br label %15

13:                                               ; preds = %6, %1
  %14 = tail call i32 @genphy_restart_aneg(ptr noundef %0) #9
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %14, %13 ], [ %12, %11 ]
  ret i32 %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_restart_aneg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_restart_aneg(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_aneg_done(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 %7(ptr noundef %0) #9
  br label %20

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @genphy_c45_aneg_done(ptr noundef %0) #9
  br label %20

18:                                               ; preds = %11
  %19 = tail call i32 @genphy_aneg_done(ptr noundef %0) #9
  br label %20

20:                                               ; preds = %18, %16, %9
  %21 = phi i32 [ %10, %9 ], [ %17, %16 ], [ %19, %18 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_aneg_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_aneg_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_supported_speeds(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  %5 = tail call i32 @phy_speeds(ptr noundef %1, i32 noundef %2, ptr noundef %4) #9
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_speeds(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_ethtool_ksettings_get(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %4, ptr noundef align 4 dereferenceable(12) %5, i32 12, i1 false) #9
  %6 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1, i32 1
  %7 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %6, ptr noundef align 4 dereferenceable(12) %7, i32 12, i1 false) #9
  %8 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1, i32 2
  %9 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 18
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %8, ptr noundef align 4 dereferenceable(12) %9, i32 12, i1 false) #9
  %10 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 2
  store i8 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 13
  %18 = load i8, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 11
  store i8 %18, ptr %19, align 1
  %20 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 15
  %21 = load i8, ptr %20, align 2
  %22 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 12
  store i8 %21, ptr %22, align 2
  %23 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 17
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 10
  %28 = load i32, ptr %27, align 8
  %29 = trunc i32 %28 to i8
  br label %30

30:                                               ; preds = %26, %2
  %31 = phi i8 [ %29, %26 ], [ 4, %2 ]
  %32 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 3
  store i8 %31, ptr %32, align 1
  %33 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %34 = load i16, ptr %33, align 8
  %35 = trunc i16 %34 to i8
  %36 = lshr i8 %35, 1
  %37 = and i8 %36, 1
  %38 = xor i8 %37, 1
  %39 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 10
  store i8 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %41 = load i32, ptr %40, align 8
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 4
  store i8 %42, ptr %43, align 2
  %44 = load i16, ptr %33, align 8
  %45 = lshr i16 %44, 12
  %46 = trunc i16 %45 to i8
  %47 = and i8 %46, 1
  %48 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 5
  store i8 %47, ptr %48, align 1
  %49 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 35
  %50 = load i8, ptr %49, align 1
  %51 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 8
  store i8 %50, ptr %51, align 2
  %52 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 34
  %53 = load i8, ptr %52, align 8
  %54 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 7
  store i8 %53, ptr %54, align 1
  tail call void @mutex_unlock(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_mii_ioctl(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %5 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1, i32 0, i32 1
  %6 = load i16, ptr %5, align 2
  switch i32 %2, label %144 [
    i32 35143, label %9
    i32 35144, label %7
    i32 35145, label %41
    i32 35248, label %134
  ]

7:                                                ; preds = %3
  %8 = load i16, ptr %4, align 2
  br label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = trunc i32 %11 to i16
  store i16 %12, ptr %4, align 2
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i16 [ %8, %7 ], [ %12, %9 ]
  %15 = and i16 %14, -1024
  %16 = icmp eq i16 %15, -32768
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = lshr i16 %14, 5
  %19 = and i16 %18, 31
  %20 = and i16 %14, 31
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.mii_ioctl_data, ptr %4, i32 0, i32 1
  %23 = load i16, ptr %22, align 2
  %24 = shl nuw nsw i32 %21, 16
  %25 = zext i16 %23 to i32
  %26 = or i32 %24, %25
  %27 = or i32 %26, 1073741824
  br label %32

28:                                               ; preds = %13
  %29 = getelementptr inbounds %struct.mii_ioctl_data, ptr %4, i32 0, i32 1
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  br label %32

32:                                               ; preds = %28, %17
  %33 = phi i16 [ %19, %17 ], [ %14, %28 ]
  %34 = phi i32 [ %27, %17 ], [ %31, %28 ]
  %35 = zext i16 %33 to i32
  %36 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  %38 = tail call i32 @mdiobus_read(ptr noundef %37, i32 noundef %35, i32 noundef %34) #9
  %39 = trunc i32 %38 to i16
  %40 = getelementptr inbounds %struct.mii_ioctl_data, ptr %4, i32 0, i32 3
  store i16 %39, ptr %40, align 2
  br label %144

41:                                               ; preds = %3
  %42 = load i16, ptr %4, align 2
  %43 = and i16 %42, -1024
  %44 = icmp eq i16 %43, -32768
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = lshr i16 %42, 5
  %47 = and i16 %46, 31
  %48 = and i16 %42, 31
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds %struct.mii_ioctl_data, ptr %4, i32 0, i32 1
  %51 = load i16, ptr %50, align 2
  %52 = shl nuw nsw i32 %49, 16
  %53 = zext i16 %51 to i32
  %54 = or i32 %52, %53
  %55 = or i32 %54, 1073741824
  br label %60

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.mii_ioctl_data, ptr %4, i32 0, i32 1
  %58 = load i16, ptr %57, align 2
  %59 = zext i16 %58 to i32
  br label %60

60:                                               ; preds = %56, %45
  %61 = phi i16 [ %47, %45 ], [ %42, %56 ]
  %62 = phi i32 [ %55, %45 ], [ %59, %56 ]
  %63 = zext i16 %61 to i32
  %64 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %65 = load i32, ptr %64, align 8
  %66 = icmp eq i32 %65, %63
  br i1 %66, label %67, label %117

67:                                               ; preds = %60
  switch i32 %62, label %117 [
    i32 0, label %68
    i32 4, label %94
    i32 9, label %109
  ]

68:                                               ; preds = %67
  %69 = zext i16 %6 to i32
  %70 = and i32 %69, 36864
  %71 = icmp eq i32 %70, 0
  %72 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %73 = load i16, ptr %72, align 8
  %74 = and i16 %73, 4096
  br i1 %71, label %75, label %91

75:                                               ; preds = %68
  %76 = icmp ne i16 %74, 0
  %77 = and i16 %73, -4097
  store i16 %77, ptr %72, align 8
  %78 = lshr i32 %69, 8
  %79 = and i32 %78, 1
  %80 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  store i32 %79, ptr %80, align 4
  %81 = and i32 %69, 64
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  store i32 1000, ptr %84, align 8
  br label %117

85:                                               ; preds = %75
  %86 = and i32 %69, 8192
  %87 = icmp eq i32 %86, 0
  %88 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  br i1 %87, label %90, label %89

89:                                               ; preds = %85
  store i32 100, ptr %88, align 8
  br label %117

90:                                               ; preds = %85
  store i32 10, ptr %88, align 8
  br label %117

91:                                               ; preds = %68
  %92 = icmp eq i16 %74, 0
  %93 = or i16 %73, 4096
  store i16 %93, ptr %72, align 8
  br label %117

94:                                               ; preds = %67
  %95 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17
  %96 = zext i16 %6 to i32
  %97 = load i32, ptr %95, align 4
  %98 = and i32 %97, -24592
  %99 = lshr i32 %96, 5
  %100 = and i32 %99, 1
  %101 = shl nuw nsw i32 %96, 3
  %102 = and i32 %101, 8192
  %103 = and i32 %101, 16384
  %104 = and i32 %99, 14
  %105 = or i32 %104, %102
  %106 = or i32 %105, %103
  %107 = or i32 %106, %100
  %108 = or i32 %107, %98
  store i32 %108, ptr %95, align 4
  br label %117

109:                                              ; preds = %67
  %110 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17
  %111 = load i32, ptr %110, align 4
  %112 = and i32 %111, -49
  %113 = lshr i16 %6, 4
  %114 = and i16 %113, 48
  %115 = zext i16 %114 to i32
  %116 = or i32 %112, %115
  store i32 %116, ptr %110, align 4
  br label %117

117:                                              ; preds = %109, %94, %91, %90, %89, %83, %67, %60
  %118 = phi i1 [ false, %67 ], [ true, %109 ], [ true, %94 ], [ %76, %83 ], [ %76, %89 ], [ %76, %90 ], [ %92, %91 ], [ false, %60 ]
  %119 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %120 = load ptr, ptr %119, align 8
  %121 = tail call i32 @mdiobus_write(ptr noundef %120, i32 noundef %63, i32 noundef %62, i16 noundef zeroext %6) #9
  %122 = load i32, ptr %64, align 8
  %123 = icmp ne i32 %122, %63
  %124 = icmp ne i32 %62, 0
  %125 = select i1 %123, i1 true, i1 %124
  %126 = icmp sgt i16 %6, -1
  %127 = select i1 %125, i1 true, i1 %126
  br i1 %127, label %130, label %128

128:                                              ; preds = %117
  %129 = tail call i32 @phy_init_hw(ptr noundef %0) #9
  br label %144

130:                                              ; preds = %117
  br i1 %118, label %131, label %144

131:                                              ; preds = %130
  %132 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %132) #9
  %133 = tail call fastcc i32 @_phy_start_aneg(ptr noundef %0) #9
  tail call void @mutex_unlock(ptr noundef %132) #9
  br label %144

134:                                              ; preds = %3
  %135 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 33
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %144, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.mii_timestamper, ptr %136, i32 0, i32 2
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %138
  %143 = tail call i32 %140(ptr noundef nonnull %136, ptr noundef %1) #9
  br label %144

144:                                              ; preds = %142, %138, %134, %131, %130, %128, %32, %3
  %145 = phi i32 [ %143, %142 ], [ %129, %128 ], [ %133, %131 ], [ 0, %32 ], [ 0, %130 ], [ -95, %134 ], [ -95, %138 ], [ -95, %3 ]
  ret i32 %145
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_start_aneg(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %2) #9
  %3 = tail call fastcc i32 @_phy_start_aneg(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %2) #9
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_do_ioctl(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @phy_mii_ioctl(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2)
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ -19, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_do_ioctl_running(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @phy_mii_ioctl(ptr noundef nonnull %10, ptr noundef %1, i32 noundef %2) #9
  br label %14

14:                                               ; preds = %12, %8, %3
  %15 = phi i32 [ -19, %3 ], [ %13, %12 ], [ -19, %8 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_queue_state_machine(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr @system_power_efficient_wq, align 4
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 27
  %5 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %4, i32 noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_trigger_machine(ptr noundef %0) #0 {
  %2 = load ptr, ptr @system_power_efficient_wq, align 4
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 27
  %4 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %2, ptr noundef %3, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_ethtool_get_strings(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %7) #9
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.phy_driver, ptr %8, i32 0, i32 33
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef %0, ptr noundef %1) #9
  tail call void @mutex_unlock(ptr noundef %7) #9
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %6 ], [ -5, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_ethtool_get_sset_count(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 33
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 34
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %18) #9
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds %struct.phy_driver, ptr %19, i32 0, i32 32
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %0) #9
  tail call void @mutex_unlock(ptr noundef %18) #9
  br label %23

23:                                               ; preds = %17, %13, %9, %5, %1
  %24 = phi i32 [ %22, %17 ], [ -5, %1 ], [ -95, %13 ], [ -95, %9 ], [ -95, %5 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_ethtool_get_stats(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.phy_driver, ptr %9, i32 0, i32 34
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  tail call void @mutex_unlock(ptr noundef %8) #9
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ 0, %7 ], [ -5, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_start_cable_test(ptr noundef %0, ptr noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 32
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.phy_driver, ptr %6, i32 0, i32 29
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.phy_driver, ptr %6, i32 0, i32 31
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %8, %2
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @phy_start_cable_test.__msg) #9
  %17 = icmp eq ptr %1, null
  br i1 %17, label %68, label %18

18:                                               ; preds = %16
  store ptr @phy_start_cable_test.__msg, ptr %1, align 4
  br label %68

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %20) #9
  %21 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 6
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @phy_start_cable_test.__msg.4) #9
  %25 = icmp eq ptr %1, null
  br i1 %25, label %66, label %26

26:                                               ; preds = %24
  store ptr @phy_start_cable_test.__msg.4, ptr %1, align 4
  br label %66

27:                                               ; preds = %19
  %28 = add i32 %22, -7
  %29 = icmp ult i32 %28, -4
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @phy_start_cable_test.__msg.5) #9
  %31 = icmp eq ptr %1, null
  br i1 %31, label %66, label %32

32:                                               ; preds = %30
  store ptr @phy_start_cable_test.__msg.5, ptr %1, align 4
  br label %66

33:                                               ; preds = %27
  %34 = tail call i32 @ethnl_cable_test_alloc(ptr noundef %0, i8 noundef zeroext 27) #9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 36
  %38 = load ptr, ptr %37, align 4
  tail call void %38(ptr noundef %0, i1 noundef zeroext false) #9
  %39 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 6
  %40 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %39) #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  tail call void @linkwatch_fire_event(ptr noundef %4) #9
  br label %43

43:                                               ; preds = %42, %36
  %44 = load ptr, ptr %5, align 8
  %45 = getelementptr inbounds %struct.phy_driver, ptr %44, i32 0, i32 29
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 %46(ptr noundef %0) #9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %43
  tail call fastcc void @netif_testing_off(ptr noundef %4)
  %50 = load ptr, ptr %37, align 4
  tail call void %50(ptr noundef %0, i1 noundef zeroext true) #9
  tail call void @ethnl_cable_test_free(ptr noundef %0) #9
  br label %66

51:                                               ; preds = %43
  store i32 6, ptr %21, align 4
  %52 = load ptr, ptr %5, align 8
  %53 = getelementptr inbounds %struct.phy_driver, ptr %52, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 21
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %65

61:                                               ; preds = %57, %51
  %62 = load ptr, ptr @system_power_efficient_wq, align 4
  %63 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 27
  %64 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %62, ptr noundef %63, i32 noundef 0) #9
  br label %65

65:                                               ; preds = %61, %57
  tail call void @mutex_unlock(ptr noundef %20) #9
  br label %68

66:                                               ; preds = %49, %33, %32, %30, %26, %24
  %67 = phi i32 [ %34, %33 ], [ %47, %49 ], [ -16, %26 ], [ -16, %24 ], [ -16, %32 ], [ -16, %30 ]
  tail call void @mutex_unlock(ptr noundef %20) #9
  br label %68

68:                                               ; preds = %66, %65, %18, %16
  %69 = phi i32 [ %67, %66 ], [ 0, %65 ], [ -95, %18 ], [ -95, %16 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_cable_test_alloc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @netif_testing_off(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %3 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %2) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @linkwatch_fire_event(ptr noundef %0) #9
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_cable_test_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_start_cable_test_tdr(ptr noundef %0, ptr noundef writeonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 32
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.phy_driver, ptr %7, i32 0, i32 30
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.phy_driver, ptr %7, i32 0, i32 31
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %9, %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @phy_start_cable_test_tdr.__msg) #9
  %18 = icmp eq ptr %1, null
  br i1 %18, label %69, label %19

19:                                               ; preds = %17
  store ptr @phy_start_cable_test_tdr.__msg, ptr %1, align 4
  br label %69

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %21) #9
  %22 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 6
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @phy_start_cable_test_tdr.__msg.6) #9
  %26 = icmp eq ptr %1, null
  br i1 %26, label %67, label %27

27:                                               ; preds = %25
  store ptr @phy_start_cable_test_tdr.__msg.6, ptr %1, align 4
  br label %67

28:                                               ; preds = %20
  %29 = add i32 %23, -7
  %30 = icmp ult i32 %29, -4
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @phy_start_cable_test_tdr.__msg.7) #9
  %32 = icmp eq ptr %1, null
  br i1 %32, label %67, label %33

33:                                               ; preds = %31
  store ptr @phy_start_cable_test_tdr.__msg.7, ptr %1, align 4
  br label %67

34:                                               ; preds = %28
  %35 = tail call i32 @ethnl_cable_test_alloc(ptr noundef %0, i8 noundef zeroext 28) #9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 36
  %39 = load ptr, ptr %38, align 4
  tail call void %39(ptr noundef %0, i1 noundef zeroext false) #9
  %40 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %41 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %40) #9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  tail call void @linkwatch_fire_event(ptr noundef %5) #9
  br label %44

44:                                               ; preds = %43, %37
  %45 = load ptr, ptr %6, align 8
  %46 = getelementptr inbounds %struct.phy_driver, ptr %45, i32 0, i32 30
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 %47(ptr noundef %0, ptr noundef %2) #9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  tail call fastcc void @netif_testing_off(ptr noundef %5)
  %51 = load ptr, ptr %38, align 4
  tail call void %51(ptr noundef %0, i1 noundef zeroext true) #9
  tail call void @ethnl_cable_test_free(ptr noundef %0) #9
  br label %67

52:                                               ; preds = %44
  store i32 6, ptr %22, align 4
  %53 = load ptr, ptr %6, align 8
  %54 = getelementptr inbounds %struct.phy_driver, ptr %53, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 21
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %66

62:                                               ; preds = %58, %52
  %63 = load ptr, ptr @system_power_efficient_wq, align 4
  %64 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 27
  %65 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %63, ptr noundef %64, i32 noundef 0) #9
  br label %66

66:                                               ; preds = %62, %58
  tail call void @mutex_unlock(ptr noundef %21) #9
  br label %69

67:                                               ; preds = %50, %34, %33, %31, %27, %25
  %68 = phi i32 [ %35, %34 ], [ %48, %50 ], [ -16, %27 ], [ -16, %25 ], [ -16, %33 ], [ -16, %31 ]
  tail call void @mutex_unlock(ptr noundef %21) #9
  br label %69

69:                                               ; preds = %67, %66, %19, %17
  %70 = phi i32 [ %68, %67 ], [ 0, %66 ], [ -95, %19 ], [ -95, %17 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_config_aneg(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0) #9
  br label %23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = tail call i32 @genphy_c45_config_aneg(ptr noundef %0) #9
  br label %23

21:                                               ; preds = %14, %9
  %22 = tail call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext false) #9
  br label %23

23:                                               ; preds = %21, %19, %7
  %24 = phi i32 [ %8, %7 ], [ %22, %21 ], [ %20, %19 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_config_aneg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_phy_start_aneg(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %87, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 4096
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  %16 = tail call ptr @phy_lookup_setting(i32 noundef %12, i32 noundef %14, ptr noundef %15, i1 noundef zeroext false) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %10
  %19 = load i32, ptr %16, align 4
  store i32 %19, ptr %11, align 8
  %20 = getelementptr inbounds %struct.phy_setting, ptr %16, i32 0, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i32
  br label %24

23:                                               ; preds = %10
  store i32 -1, ptr %11, align 8
  br label %24

24:                                               ; preds = %23, %18
  %25 = phi i32 [ 255, %23 ], [ %22, %18 ]
  store i32 %25, ptr %13, align 4
  %26 = load ptr, ptr %2, align 8
  br label %27

27:                                               ; preds = %24, %5
  %28 = phi ptr [ %26, %24 ], [ %3, %5 ]
  %29 = getelementptr inbounds %struct.phy_driver, ptr %28, i32 0, i32 13
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = tail call i32 %30(ptr noundef %0) #9
  br label %47

34:                                               ; preds = %27
  %35 = load i16, ptr %6, align 8
  %36 = and i16 %35, 1
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 3
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = tail call i32 @genphy_c45_config_aneg(ptr noundef %0) #9
  br label %47

45:                                               ; preds = %38, %34
  %46 = tail call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext false) #9
  br label %47

47:                                               ; preds = %45, %43, %32
  %48 = phi i32 [ %33, %32 ], [ %46, %45 ], [ %44, %43 ]
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %87, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = icmp ugt i32 %52, 2
  br i1 %53, label %54, label %87

54:                                               ; preds = %50
  %55 = load i16, ptr %6, align 8
  %56 = and i16 %55, 256
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %87

58:                                               ; preds = %54
  %59 = load ptr, ptr %2, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %87, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.phy_driver, ptr %59, i32 0, i32 15
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = tail call i32 %63(ptr noundef %0) #9
  br label %69

67:                                               ; preds = %61
  %68 = tail call i32 @genphy_read_status(ptr noundef %0) #9
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  %73 = load i16, ptr %6, align 8
  %74 = and i16 %73, 8192
  %75 = icmp eq i16 %74, 0
  %76 = load i32, ptr %51, align 4
  br i1 %75, label %80, label %77

77:                                               ; preds = %72
  %78 = icmp eq i32 %76, 4
  br i1 %78, label %87, label %79

79:                                               ; preds = %77
  tail call void @phy_check_downshift(ptr noundef %0) #9
  br label %82

80:                                               ; preds = %72
  %81 = icmp eq i32 %76, 5
  br i1 %81, label %87, label %82

82:                                               ; preds = %80, %79
  %83 = phi i32 [ 4, %79 ], [ 5, %80 ]
  %84 = xor i1 %75, true
  store i32 %83, ptr %51, align 4
  %85 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 36
  %86 = load ptr, ptr %85, align 4
  tail call void %86(ptr noundef %0, i1 noundef zeroext %84) #9
  br label %87

87:                                               ; preds = %82, %80, %77, %69, %58, %54, %50, %47, %1
  %88 = phi i32 [ -5, %1 ], [ %48, %47 ], [ %48, %50 ], [ 0, %54 ], [ %70, %69 ], [ 0, %80 ], [ 0, %77 ], [ -5, %58 ], [ 0, %82 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_ethtool_ksettings_set(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 2
  %5 = load i8, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 4
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, %10
  br i1 %13, label %14, label %67

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 5
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef align 4 dereferenceable(12) %17, i32 12, i1 false) #9
  %18 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  %19 = call i32 @__bitmap_and(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef %18, i32 noundef 92) #9
  %20 = icmp ugt i8 %16, 1
  br i1 %20, label %67, label %21

21:                                               ; preds = %14
  %22 = icmp eq i8 %16, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = call i32 @_find_first_bit_le(ptr noundef nonnull %3, i32 noundef 92) #9
  %25 = icmp eq i32 %24, 92
  br i1 %25, label %67, label %29

26:                                               ; preds = %21
  switch i32 %7, label %67 [
    i32 1000, label %27
    i32 100, label %27
    i32 10, label %27
  ]

27:                                               ; preds = %26, %26, %26
  %28 = icmp ugt i8 %5, 1
  br i1 %28, label %67, label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 28
  call void @mutex_lock(ptr noundef %30) #9
  %31 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %32 = load i16, ptr %31, align 8
  %33 = zext i8 %16 to i16
  %34 = shl nuw nsw i16 %33, 12
  %35 = and i16 %32, -4097
  %36 = or i16 %35, %34
  store i16 %36, ptr %31, align 8
  br i1 %22, label %37, label %41

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %38, ptr noundef nonnull align 4 dereferenceable(12) %3, i32 12, i1 false) #9
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %39, 64
  br label %48

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  store i32 %7, ptr %42, align 8
  %43 = zext i8 %5 to i32
  %44 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %45, ptr noundef nonnull align 4 dereferenceable(12) %3, i32 12, i1 false) #9
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, -65
  br label %48

48:                                               ; preds = %41, %37
  %49 = phi ptr [ %38, %37 ], [ %45, %41 ]
  %50 = phi i32 [ %40, %37 ], [ %47, %41 ]
  store i32 %50, ptr %49, align 4
  %51 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 11
  %52 = load i8, ptr %51, align 1
  %53 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 14
  store i8 %52, ptr %53, align 1
  %54 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 8
  %55 = load i8, ptr %54, align 2
  %56 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 35
  store i8 %55, ptr %56, align 1
  %57 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = icmp ugt i32 %58, 2
  br i1 %59, label %60, label %64

60:                                               ; preds = %48
  store i32 3, ptr %57, align 4
  %61 = load ptr, ptr @system_power_efficient_wq, align 4
  %62 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 27
  %63 = call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %61, ptr noundef %62, i32 noundef 0) #9
  br label %66

64:                                               ; preds = %48
  %65 = call fastcc i32 @_phy_start_aneg(ptr noundef %0)
  br label %66

66:                                               ; preds = %64, %60
  call void @mutex_unlock(ptr noundef %30) #9
  br label %67

67:                                               ; preds = %66, %27, %26, %23, %14, %2
  %68 = phi i32 [ 0, %66 ], [ -22, %2 ], [ -22, %14 ], [ -22, %23 ], [ -22, %26 ], [ -22, %27 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  ret i32 %68
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_speed_down(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 4096
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %69, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef align 4 dereferenceable(12) %9, i32 12, i1 false) #9
  %10 = tail call i32 @phy_speed_down_core(ptr noundef %0) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %69

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 19
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) %3, i32 12, i1 false) #9
  %14 = call i32 @__bitmap_equal(ptr noundef %9, ptr noundef nonnull %3, i32 noundef 92) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %69

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.phy_driver, ptr %18, i32 0, i32 13
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = call i32 %20(ptr noundef %0) #9
  br label %37

24:                                               ; preds = %16
  %25 = load i16, ptr %4, align 8
  %26 = and i16 %25, 1
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 3
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @genphy_c45_config_aneg(ptr noundef %0) #9
  br label %37

35:                                               ; preds = %28, %24
  %36 = call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext false) #9
  br label %37

37:                                               ; preds = %35, %33, %22
  %38 = phi i32 [ %23, %22 ], [ %36, %35 ], [ %34, %33 ]
  %39 = icmp eq i32 %38, 0
  %40 = and i1 %39, %1
  br i1 %40, label %41, label %69

41:                                               ; preds = %59, %37
  %42 = phi i32 [ %63, %59 ], [ 100, %37 ]
  call void @msleep(i32 noundef 100) #9
  %43 = load ptr, ptr %17, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.phy_driver, ptr %43, i32 0, i32 14
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = call i32 %47(ptr noundef %0) #9
  br label %59

51:                                               ; preds = %45, %41
  %52 = load i16, ptr %4, align 8
  %53 = and i16 %52, 1
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = call i32 @genphy_c45_aneg_done(ptr noundef %0) #9
  br label %59

57:                                               ; preds = %51
  %58 = call i32 @genphy_aneg_done(ptr noundef %0) #9
  br label %59

59:                                               ; preds = %57, %55, %49
  %60 = phi i32 [ %50, %49 ], [ %56, %55 ], [ %58, %57 ]
  %61 = icmp eq i32 %60, 0
  %62 = xor i1 %61, true
  %63 = add nsw i32 %42, -1
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %62, i1 true, i1 %64
  br i1 %65, label %66, label %41

66:                                               ; preds = %59
  %67 = call i32 @llvm.smin.i32(i32 %60, i32 0) #9
  %68 = select i1 %61, i32 -110, i32 %67
  br label %69

69:                                               ; preds = %66, %37, %12, %8, %2
  %70 = phi i32 [ 0, %2 ], [ %10, %8 ], [ 0, %12 ], [ %38, %37 ], [ %68, %66 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_speed_down_core(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_speed_up(ptr noundef %0) #0 {
  %2 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #9
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 4096
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %36, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 19
  %9 = tail call i32 @_find_first_bit_le(ptr noundef %8, i32 noundef 92) #9
  %10 = icmp eq i32 %9, 92
  br i1 %10, label %36, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef align 4 dereferenceable(12) %12, i32 12, i1 false) #9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %12, ptr noundef align 4 dereferenceable(12) %8, i32 12, i1 false) #9
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %8, i8 0, i32 12, i1 false) #9
  %13 = call i32 @__bitmap_equal(ptr noundef %12, ptr noundef nonnull %2, i32 noundef 92) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.phy_driver, ptr %17, i32 0, i32 13
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = call i32 %19(ptr noundef %0) #9
  br label %36

23:                                               ; preds = %15
  %24 = load i16, ptr %3, align 8
  %25 = and i16 %24, 1
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 3
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @genphy_c45_config_aneg(ptr noundef %0) #9
  br label %36

34:                                               ; preds = %27, %23
  %35 = call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext false) #9
  br label %36

36:                                               ; preds = %34, %32, %21, %11, %7, %1
  %37 = phi i32 [ 0, %1 ], [ 0, %7 ], [ 0, %11 ], [ %22, %21 ], [ %35, %34 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_start_machine(ptr noundef %0) #0 {
  %2 = load ptr, ptr @system_power_efficient_wq, align 4
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 27
  %4 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %2, ptr noundef %3, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_stop_machine(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 27
  %3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %2) #9
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %4) #9
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 2
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 3, ptr %5, align 4
  br label %9

9:                                                ; preds = %8, %1
  tail call void @mutex_unlock(ptr noundef %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_error(ptr noundef %0) #0 {
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 942, i32 noundef 9, ptr noundef null) #9
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5
  store i32 2, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef %2) #9
  %4 = load ptr, ptr @system_power_efficient_wq, align 4
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 27
  %6 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %4, ptr noundef %5, i32 noundef 0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_disable_interrupts(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 32767
  store i16 %4, ptr %2, align 8
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.phy_driver, ptr %6, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 %8(ptr noundef %0) #9
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi i32 [ %11, %10 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_request_interrupt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 21
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi ptr [ %8, %7 ], [ %5, %1 ]
  %11 = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef null, ptr noundef nonnull @phy_interrupt, i32 noundef 8320, ptr noundef %10, ptr noundef %0) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %11, i32 noundef %14) #10
  br label %39

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %17 = load i16, ptr %16, align 8
  %18 = or i16 %17, -32768
  store i16 %18, ptr %16, align 8
  %19 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.phy_driver, ptr %20, i32 0, i32 16
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %15
  %25 = tail call i32 %22(ptr noundef %0) #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.10) #10
  %28 = load i16, ptr %16, align 8
  %29 = and i16 %28, 32767
  store i16 %29, ptr %16, align 8
  %30 = load ptr, ptr %19, align 8
  %31 = getelementptr inbounds %struct.phy_driver, ptr %30, i32 0, i32 16
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  %35 = tail call i32 %32(ptr noundef %0) #9
  br label %36

36:                                               ; preds = %34, %27
  %37 = load i32, ptr %2, align 4
  %38 = tail call ptr @free_irq(i32 noundef %37, ptr noundef %0) #9
  br label %39

39:                                               ; preds = %36, %13
  store i32 -1, ptr %2, align 4
  br label %40

40:                                               ; preds = %39, %24, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_interrupt(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.phy_driver, ptr %4, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1) #9
  ret i32 %7
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_free_interrupt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 32767
  store i16 %4, ptr %2, align 8
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.phy_driver, ptr %6, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 %8(ptr noundef %0) #9
  br label %12

12:                                               ; preds = %10, %1
  %13 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 21
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @free_irq(i32 noundef %14, ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_stop(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -3
  %7 = icmp ult i32 %6, -2
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = icmp eq i32 %5, 1
  %10 = select i1 %9, ptr @.str.17, ptr null
  %11 = icmp eq i32 %5, 2
  %12 = select i1 %11, ptr @.str.22, ptr %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1039, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %12) #9
  br label %33

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %14) #9
  %15 = load i32, ptr %4, align 4
  %16 = icmp eq i32 %15, 6
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  tail call void @ethnl_cable_test_finished(ptr noundef %0) #9
  %18 = tail call i32 @phy_init_hw(ptr noundef %0) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.23) #10
  br label %21

21:                                               ; preds = %20, %17
  %22 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %23 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %22) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @linkwatch_fire_event(ptr noundef %3) #9
  br label %26

26:                                               ; preds = %25, %21, %13
  store i32 2, ptr %4, align 4
  tail call void @mutex_unlock(ptr noundef %14) #9
  %27 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 27
  tail call void @phy_state_machine(ptr noundef %27)
  %28 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %27) #9
  tail call void @mutex_lock(ptr noundef %14) #9
  %29 = load i32, ptr %4, align 4
  %30 = icmp ugt i32 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 3, ptr %4, align 4
  br label %32

32:                                               ; preds = %31, %26
  tail call void @mutex_unlock(ptr noundef %14) #9
  br label %33

33:                                               ; preds = %32, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_state_machine(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = getelementptr i8, ptr %0, i32 -804
  %4 = getelementptr i8, ptr %0, i32 76
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #9
  store i8 0, ptr %2, align 1
  %6 = getelementptr i8, ptr %0, i32 44
  tail call void @mutex_lock(ptr noundef %6) #9
  %7 = getelementptr i8, ptr %0, i32 -112
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %81 [
    i32 2, label %66
    i32 6, label %44
    i32 3, label %77
    i32 5, label %9
    i32 4, label %9
  ]

9:                                                ; preds = %1, %1
  %10 = getelementptr i8, ptr %0, i32 -116
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 256
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %81

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %0, i32 -260
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %81, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.phy_driver, ptr %16, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 %20(ptr noundef %3) #9
  br label %26

24:                                               ; preds = %18
  %25 = tail call i32 @genphy_read_status(ptr noundef %3) #9
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %81

29:                                               ; preds = %26
  %30 = load i16, ptr %10, align 8
  %31 = and i16 %30, 8192
  %32 = icmp eq i16 %31, 0
  %33 = load i32, ptr %7, align 4
  br i1 %32, label %37, label %34

34:                                               ; preds = %29
  %35 = icmp eq i32 %33, 4
  br i1 %35, label %81, label %36

36:                                               ; preds = %34
  tail call void @phy_check_downshift(ptr noundef %3) #9
  br label %39

37:                                               ; preds = %29
  %38 = icmp eq i32 %33, 5
  br i1 %38, label %81, label %39

39:                                               ; preds = %37, %36
  %40 = phi i32 [ 4, %36 ], [ 5, %37 ]
  %41 = xor i1 %32, true
  store i32 %40, ptr %7, align 4
  %42 = getelementptr i8, ptr %0, i32 88
  %43 = load ptr, ptr %42, align 4
  tail call void %43(ptr noundef %3, i1 noundef zeroext %41) #9
  br label %81

44:                                               ; preds = %1
  %45 = getelementptr i8, ptr %0, i32 -260
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.phy_driver, ptr %46, i32 0, i32 31
  %48 = load ptr, ptr %47, align 4
  %49 = call i32 %48(ptr noundef %3, ptr noundef nonnull %2) #9
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %44
  call void @ethnl_cable_test_finished(ptr noundef %3) #9
  %52 = call i32 @phy_init_hw(ptr noundef %3) #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.23) #10
  br label %55

55:                                               ; preds = %54, %51
  %56 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %57 = call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %56) #9
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %76, label %75

59:                                               ; preds = %44
  %60 = load i8, ptr %2, align 1, !range !8
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %81, label %62

62:                                               ; preds = %59
  call void @ethnl_cable_test_finished(ptr noundef %3) #9
  %63 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %64 = call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %63) #9
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %76, label %75

66:                                               ; preds = %1
  %67 = getelementptr i8, ptr %0, i32 -116
  %68 = load i16, ptr %67, align 8
  %69 = and i16 %68, 8192
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %66
  %72 = and i16 %68, -8193
  store i16 %72, ptr %67, align 8
  %73 = getelementptr i8, ptr %0, i32 88
  %74 = load ptr, ptr %73, align 4
  tail call void %74(ptr noundef %3, i1 noundef zeroext false) #9
  br label %79

75:                                               ; preds = %62, %55
  call void @linkwatch_fire_event(ptr noundef %5) #9
  br label %76

76:                                               ; preds = %75, %62, %55
  store i32 3, ptr %7, align 4
  br label %77

77:                                               ; preds = %76, %1
  call void @mutex_unlock(ptr noundef %6) #9
  call void @mutex_lock(ptr noundef %6) #9
  %78 = call fastcc i32 @_phy_start_aneg(ptr noundef %3) #9
  br label %81

79:                                               ; preds = %71, %66
  tail call void @mutex_unlock(ptr noundef %6) #9
  %80 = tail call i32 @phy_suspend(ptr noundef %3) #9
  br label %89

81:                                               ; preds = %77, %59, %39, %37, %34, %26, %14, %9, %1
  %82 = phi i32 [ %78, %77 ], [ 0, %1 ], [ 0, %59 ], [ 0, %9 ], [ %27, %26 ], [ 0, %37 ], [ 0, %34 ], [ -5, %14 ], [ 0, %39 ]
  call void @mutex_unlock(ptr noundef %6) #9
  %83 = icmp eq i32 %82, -19
  br i1 %83, label %125, label %84

84:                                               ; preds = %81
  %85 = icmp slt i32 %82, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 942, i32 noundef 9, ptr noundef null) #9
  call void @mutex_lock(ptr noundef %6) #9
  store i32 2, ptr %7, align 4
  call void @mutex_unlock(ptr noundef %6) #9
  %87 = load ptr, ptr @system_power_efficient_wq, align 4
  %88 = call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %87, ptr noundef %0, i32 noundef 0) #9
  br label %89

89:                                               ; preds = %86, %84, %79
  %90 = load i32, ptr %7, align 4
  %91 = icmp eq i32 %8, %90
  br i1 %91, label %101, label %92

92:                                               ; preds = %89
  %93 = getelementptr i8, ptr %0, i32 -260
  %94 = load ptr, ptr %93, align 8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.phy_driver, ptr %94, i32 0, i32 22
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  call void %98(ptr noundef %3) #9
  br label %101

101:                                              ; preds = %100, %96, %92, %89
  call void @mutex_lock(ptr noundef %6) #9
  %102 = load i32, ptr %7, align 4
  %103 = icmp eq i32 %102, 6
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = getelementptr i8, ptr %0, i32 -260
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds %struct.phy_driver, ptr %106, i32 0, i32 5
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %108, 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %117, label %121

111:                                              ; preds = %101
  %112 = getelementptr i8, ptr %0, i32 -24
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, -1
  %115 = icmp ugt i32 %102, 2
  %116 = select i1 %114, i1 %115, i1 false
  br i1 %116, label %121, label %124

117:                                              ; preds = %104
  %118 = getelementptr i8, ptr %0, i32 -24
  %119 = load i32, ptr %118, align 4
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %124

121:                                              ; preds = %117, %111, %104
  %122 = load ptr, ptr @system_power_efficient_wq, align 4
  %123 = call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %122, ptr noundef %0, i32 noundef 100) #9
  br label %124

124:                                              ; preds = %121, %117, %111
  call void @mutex_unlock(ptr noundef %6) #9
  br label %125

125:                                              ; preds = %124, %81
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_start(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -1
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = icmp ult i32 %4, 7
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = getelementptr inbounds [7 x ptr], ptr @switch.table.phy_start, i32 0, i32 %4
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %11, %9 ], [ null, %7 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1083, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %13) #9
  br label %19

14:                                               ; preds = %1
  %15 = tail call i32 @__phy_resume(ptr noundef %0) #9
  store i32 3, ptr %3, align 4
  %16 = load ptr, ptr @system_power_efficient_wq, align 4
  %17 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 27
  %18 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %16, ptr noundef %17, i32 noundef 0) #9
  br label %19

19:                                               ; preds = %14, %12
  tail call void @mutex_unlock(ptr noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phy_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_cable_test_finished(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_mac_interrupt(ptr noundef %0) #0 {
  %2 = load ptr, ptr @system_power_efficient_wq, align 4
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 27
  %4 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %2, ptr noundef %3, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_init_eee(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca [3 x i32], align 4
  %4 = alloca [3 x i32], align 4
  %5 = alloca [3 x i32], align 4
  %6 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %68, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %67

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false), !annotation !9
  %14 = getelementptr inbounds %struct.phy_driver, ptr %7, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i32 %15(ptr noundef %0) #9
  br label %21

19:                                               ; preds = %13
  %20 = tail call i32 @genphy_read_status(ptr noundef %0) #9
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %21
  %25 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 20) #9
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %64, label %27

27:                                               ; preds = %24
  %28 = and i32 %25, 65535
  %29 = shl nuw nsw i32 %28, 2
  %30 = and i32 %29, 8
  %31 = shl nuw nsw i32 %28, 3
  %32 = and i32 %31, 32
  %33 = or i32 %32, %30
  %34 = shl nuw nsw i32 %28, 9
  %35 = and i32 %34, 4096
  %36 = or i32 %33, %35
  %37 = shl nuw nsw i32 %28, 13
  %38 = and i32 %37, 131072
  %39 = or i32 %36, %38
  %40 = and i32 %37, 262144
  %41 = or i32 %39, %40
  %42 = and i32 %37, 524288
  %43 = or i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %27
  %46 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 7, i32 noundef 61) #9
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %64, label %48

48:                                               ; preds = %45
  %49 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 7, i32 noundef 60) #9
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %64, label %51

51:                                               ; preds = %48
  %52 = trunc i32 %49 to i16
  call fastcc void @mmd_eee_adv_to_linkmode(ptr noundef nonnull %5, i16 noundef zeroext %52)
  %53 = trunc i32 %46 to i16
  call fastcc void @mmd_eee_adv_to_linkmode(ptr noundef nonnull %4, i16 noundef zeroext %53)
  %54 = call i32 @__bitmap_and(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 92) #9
  %55 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  %56 = load i32, ptr %55, align 8
  %57 = load i32, ptr %10, align 4
  %58 = call ptr @phy_lookup_setting(i32 noundef %56, i32 noundef %57, ptr noundef nonnull %3, i1 noundef zeroext true) #9
  %59 = icmp eq ptr %58, null
  %60 = xor i1 %1, true
  %61 = or i1 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %51
  %63 = call i32 @phy_modify_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 0, i16 noundef zeroext 0, i16 noundef zeroext 1024) #9
  br label %65

64:                                               ; preds = %48, %45, %27, %24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  br label %67

65:                                               ; preds = %62, %21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  br label %68

66:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  br i1 %59, label %67, label %68

67:                                               ; preds = %66, %64, %9
  br label %68

68:                                               ; preds = %67, %66, %65, %2
  %69 = phi i32 [ -93, %67 ], [ 0, %66 ], [ -5, %2 ], [ %22, %65 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_mmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @mmd_eee_adv_to_linkmode(ptr nocapture noundef %0, i16 noundef zeroext %1) unnamed_addr #6 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %0, i8 0, i32 12, i1 false) #9
  %3 = zext i16 %1 to i32
  %4 = and i32 %3, 126
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = shl nuw nsw i32 %3, 13
  %8 = and i32 %7, 262144
  %9 = shl nuw nsw i32 %3, 13
  %10 = and i32 %9, 131072
  %11 = shl nuw nsw i32 %3, 9
  %12 = and i32 %11, 4096
  %13 = shl nuw nsw i32 %3, 3
  %14 = and i32 %13, 32
  %15 = shl nuw nsw i32 %3, 2
  %16 = and i32 %15, 8
  %17 = or i32 %14, %16
  %18 = or i32 %12, %17
  %19 = or i32 %10, %18
  %20 = or i32 %8, %19
  %21 = shl nuw nsw i32 %3, 13
  %22 = and i32 %21, 524288
  %23 = or i32 %22, %20
  store i32 %23, ptr %0, align 4
  br label %24

24:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_get_eee_err(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 22) #9
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ -5, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_ethtool_get_eee(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %75, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 20) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %75, label %9

9:                                                ; preds = %6
  %10 = and i32 %7, 65535
  %11 = shl nuw nsw i32 %10, 2
  %12 = and i32 %11, 8
  %13 = shl nuw nsw i32 %10, 3
  %14 = and i32 %13, 32
  %15 = or i32 %14, %12
  %16 = shl nuw nsw i32 %10, 9
  %17 = and i32 %16, 4096
  %18 = or i32 %15, %17
  %19 = shl nuw nsw i32 %10, 13
  %20 = and i32 %19, 131072
  %21 = or i32 %18, %20
  %22 = and i32 %19, 262144
  %23 = or i32 %21, %22
  %24 = and i32 %19, 524288
  %25 = or i32 %23, %24
  %26 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  %27 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 7, i32 noundef 60) #9
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %75, label %29

29:                                               ; preds = %9
  %30 = and i32 %27, 65535
  %31 = shl nuw nsw i32 %30, 2
  %32 = and i32 %31, 8
  %33 = shl nuw nsw i32 %30, 3
  %34 = and i32 %33, 32
  %35 = or i32 %34, %32
  %36 = shl nuw nsw i32 %30, 9
  %37 = and i32 %36, 4096
  %38 = or i32 %35, %37
  %39 = shl nuw nsw i32 %30, 13
  %40 = and i32 %39, 131072
  %41 = or i32 %38, %40
  %42 = and i32 %39, 262144
  %43 = or i32 %41, %42
  %44 = and i32 %39, 524288
  %45 = or i32 %43, %44
  %46 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 2
  store i32 %45, ptr %46, align 4
  %47 = icmp ne i32 %45, 0
  %48 = zext i1 %47 to i32
  %49 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 5
  store i32 %48, ptr %49, align 4
  %50 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 7, i32 noundef 61) #9
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %75, label %52

52:                                               ; preds = %29
  %53 = and i32 %50, 65535
  %54 = shl nuw nsw i32 %53, 2
  %55 = and i32 %54, 8
  %56 = shl nuw nsw i32 %53, 3
  %57 = and i32 %56, 32
  %58 = or i32 %57, %55
  %59 = shl nuw nsw i32 %53, 9
  %60 = and i32 %59, 4096
  %61 = or i32 %58, %60
  %62 = shl nuw nsw i32 %53, 13
  %63 = and i32 %62, 131072
  %64 = or i32 %61, %63
  %65 = and i32 %62, 262144
  %66 = or i32 %64, %65
  %67 = and i32 %62, 524288
  %68 = or i32 %66, %67
  %69 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 3
  store i32 %68, ptr %69, align 4
  %70 = load i32, ptr %46, align 4
  %71 = and i32 %70, %68
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 4
  store i32 %73, ptr %74, align 4
  br label %75

75:                                               ; preds = %52, %29, %9, %6, %2
  %76 = phi i32 [ 0, %52 ], [ -5, %2 ], [ %7, %6 ], [ %27, %9 ], [ %50, %29 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_ethtool_set_eee(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %71, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 20) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %71, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 7, i32 noundef 60) #9
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %71, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ethtool_eee, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  %21 = lshr i32 %18, 2
  %22 = and i32 %21, 2
  %23 = lshr i32 %18, 3
  %24 = and i32 %23, 4
  %25 = or i32 %24, %22
  %26 = lshr i32 %18, 9
  %27 = and i32 %26, 8
  %28 = or i32 %25, %27
  %29 = lshr i32 %18, 13
  %30 = and i32 %29, 16
  %31 = or i32 %28, %30
  %32 = and i32 %29, 32
  %33 = or i32 %31, %32
  %34 = and i32 %29, 64
  %35 = or i32 %33, %34
  %36 = and i32 %35, %7
  br label %37

37:                                               ; preds = %20, %16
  %38 = phi i32 [ %36, %20 ], [ %7, %16 ]
  %39 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 20
  %40 = load i32, ptr %39, align 8
  %41 = xor i32 %40, -1
  %42 = and i32 %38, %41
  br label %43

43:                                               ; preds = %37, %12
  %44 = phi i32 [ %42, %37 ], [ 0, %12 ]
  %45 = icmp eq i32 %10, %44
  br i1 %45, label %70, label %46

46:                                               ; preds = %43
  %47 = trunc i32 %44 to i16
  %48 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 7, i32 noundef 60, i16 noundef zeroext %47) #9
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %71, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %52 = load i16, ptr %51, align 8
  %53 = and i16 %52, 4096
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %50
  %56 = and i16 %52, 1
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 3
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = tail call i32 @genphy_c45_restart_aneg(ptr noundef %0) #9
  br label %67

65:                                               ; preds = %58, %55
  %66 = tail call i32 @genphy_restart_aneg(ptr noundef %0) #9
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %66, %65 ], [ %64, %63 ]
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67, %50, %43
  br label %71

71:                                               ; preds = %70, %67, %46, %9, %6, %2
  %72 = phi i32 [ 0, %70 ], [ -5, %2 ], [ %7, %6 ], [ %10, %9 ], [ %48, %46 ], [ %68, %67 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_ethtool_set_wol(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.phy_driver, ptr %4, i32 0, i32 20
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 %8(ptr noundef %0, ptr noundef %1) #9
  br label %12

12:                                               ; preds = %10, %6, %2
  %13 = phi i32 [ %11, %10 ], [ -95, %6 ], [ -95, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_ethtool_get_wol(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.phy_driver, ptr %4, i32 0, i32 21
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void %8(ptr noundef %0, ptr noundef %1) #9
  br label %11

11:                                               ; preds = %10, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_ethtool_get_link_ksettings(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %59, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1
  %9 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %8, ptr noundef align 4 dereferenceable(12) %9, i32 12, i1 false) #9
  %10 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1, i32 1
  %11 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %10, ptr noundef align 4 dereferenceable(12) %11, i32 12, i1 false) #9
  %12 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %1, i32 0, i32 1, i32 2
  %13 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 18
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %12, ptr noundef align 4 dereferenceable(12) %13, i32 12, i1 false) #9
  %14 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 8
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 9
  %18 = load i32, ptr %17, align 4
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 2
  store i8 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 13
  %22 = load i8, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 11
  store i8 %22, ptr %23, align 1
  %24 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 15
  %25 = load i8, ptr %24, align 2
  %26 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 12
  store i8 %25, ptr %26, align 2
  %27 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 17
  br i1 %29, label %34, label %30

30:                                               ; preds = %6
  %31 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 10
  %32 = load i32, ptr %31, align 8
  %33 = trunc i32 %32 to i8
  br label %34

34:                                               ; preds = %30, %6
  %35 = phi i8 [ %33, %30 ], [ 4, %6 ]
  %36 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 3
  store i8 %35, ptr %36, align 1
  %37 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 4
  %38 = load i16, ptr %37, align 8
  %39 = trunc i16 %38 to i8
  %40 = lshr i8 %39, 1
  %41 = and i8 %40, 1
  %42 = xor i8 %41, 1
  %43 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 10
  store i8 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.mdio_device, ptr %4, i32 0, i32 6
  %45 = load i32, ptr %44, align 8
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 4
  store i8 %46, ptr %47, align 2
  %48 = load i16, ptr %37, align 8
  %49 = lshr i16 %48, 12
  %50 = trunc i16 %49 to i8
  %51 = and i8 %50, 1
  %52 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 5
  store i8 %51, ptr %52, align 1
  %53 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 35
  %54 = load i8, ptr %53, align 1
  %55 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 8
  store i8 %54, ptr %55, align 2
  %56 = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 34
  %57 = load i8, ptr %56, align 8
  %58 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 7
  store i8 %57, ptr %58, align 1
  tail call void @mutex_unlock(ptr noundef %7) #9
  br label %59

59:                                               ; preds = %34, %2
  %60 = phi i32 [ 0, %34 ], [ -19, %2 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_ethtool_set_link_ksettings(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @phy_ethtool_ksettings_set(ptr noundef nonnull %4, ptr noundef %1)
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ -19, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_ethtool_nway_reset(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 4
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 3
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = tail call i32 @genphy_c45_restart_aneg(ptr noundef nonnull %3) #9
  br label %23

21:                                               ; preds = %14, %9
  %22 = tail call i32 @genphy_restart_aneg(ptr noundef nonnull %3) #9
  br label %23

23:                                               ; preds = %21, %19, %5, %1
  %24 = phi i32 [ -19, %1 ], [ -5, %5 ], [ %22, %21 ], [ %20, %19 ]
  ret i32 %24
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @linkwatch_fire_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_lookup_setting(i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_equal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_check_downshift(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
