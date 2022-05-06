; ModuleID = '/llk/IR/drivers/net/phy/marvell.c_pt.bc'
source_filename = "../drivers/net/phy/marvell.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.marvell_hwmon_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.sfp_upstream_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.marvell_priv = type { [3 x i64], ptr, ptr, i8, i32, i32, i32, i8 }
%struct.ethtool_tunable = type { i32, i32, i32, i32, [0 x ptr] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.91, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.91 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.108 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.phy_tdr_config = type { i32, i32, i32, i8 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }

@__UNIQUE_ID_description330 = internal constant [39 x i8] c"marvell.description=Marvell PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author331 = internal constant [28 x i8] c"marvell.author=Andy Fleming\00", section ".modinfo", align 1
@__UNIQUE_ID_file332 = internal constant [37 x i8] c"marvell.file=drivers/net/phy/marvell\00", section ".modinfo", align 1
@__UNIQUE_ID_license333 = internal constant [20 x i8] c"marvell.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_marvell__378_3338_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@marvell_drivers = internal global [20 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040224, ptr @.str, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @marvell_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1101_config_aneg, ptr null, ptr null, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040272, ptr @.str.1, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @m88e1112_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @marvell_config_aneg, ptr null, ptr null, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1011_get_tunable, ptr @m88e1011_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040320, ptr @.str.2, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @m88e1111gbe_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1111_config_aneg, ptr null, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1111_get_tunable, ptr @m88e1111_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 33492160, ptr @.str.3, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @m88e1111gbe_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1111_config_aneg, ptr null, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1111_get_tunable, ptr @m88e1111_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040656, ptr @.str.4, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @m88e1118_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1118_config_aneg, ptr null, ptr null, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040304, ptr @.str.5, i32 -16, ptr null, i32 0, ptr @m88e1121_hwmon_ops, ptr null, ptr @marvell_1011gbe_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1121_config_aneg, ptr null, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1011_get_tunable, ptr @m88e1011_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040784, ptr @.str.6, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @m88e1318_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1318_config_aneg, ptr null, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr @m88e1318_set_wol, ptr @m88e1318_get_wol, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040336, ptr @.str.7, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @m88e1145_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1101_config_aneg, ptr null, ptr null, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1111_get_tunable, ptr @m88e1111_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040720, ptr @.str.8, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @m88e1149_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1118_config_aneg, ptr null, ptr null, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040688, ptr @.str.9, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @m88e1112_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @marvell_config_aneg, ptr null, ptr null, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1011_get_tunable, ptr @m88e1011_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040704, ptr @.str.10, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @m88e1116r_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1011_get_tunable, ptr @m88e1011_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040592, ptr @.str.11, i32 -16, ptr @phy_gbit_fibre_features, i32 4, ptr @m88e1510_hwmon_ops, ptr null, ptr @m88e1510_config_init, ptr @m88e1510_probe, ptr null, ptr @marvell_suspend, ptr @marvell_resume, ptr @m88e1510_config_aneg, ptr null, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr @m88e1318_set_wol, ptr @m88e1318_get_wol, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr @marvell_vct7_cable_test_start, ptr @marvell_vct5_cable_test_tdr_start, ptr @marvell_vct7_cable_test_get_status, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1011_get_tunable, ptr @m88e1011_set_tunable, ptr @m88e1510_loopback, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040816, ptr @.str.12, i32 -16, ptr null, i32 4, ptr @m88e1510_hwmon_ops, ptr null, ptr @marvell_1011gbe_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1510_config_aneg, ptr null, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr @marvell_vct7_cable_test_start, ptr @marvell_vct5_cable_test_tdr_start, ptr @marvell_vct7_cable_test_get_status, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1540_get_tunable, ptr @m88e1540_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040800, ptr @.str.13, i32 -16, ptr null, i32 4, ptr @m88e1510_hwmon_ops, ptr null, ptr @marvell_1011gbe_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1510_config_aneg, ptr null, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr @marvell_vct7_cable_test_start, ptr @marvell_vct5_cable_test_tdr_start, ptr @marvell_vct7_cable_test_get_status, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1540_get_tunable, ptr @m88e1540_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040736, ptr @.str.14, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @m88e3016_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr @marvell_aneg_done, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040961, ptr @.str.15, i32 -16, ptr null, i32 4, ptr @m88e1510_hwmon_ops, ptr null, ptr @marvell_1011gbe_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e6390_config_aneg, ptr null, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr @marvell_vct7_cable_test_start, ptr @marvell_vct5_cable_test_tdr_start, ptr @marvell_vct7_cable_test_get_status, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1540_get_tunable, ptr @m88e1540_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21041040, ptr @.str.16, i32 -16, ptr null, i32 4, ptr @m88e6390_hwmon_ops, ptr null, ptr @marvell_1011gbe_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e6390_config_aneg, ptr null, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr @marvell_vct7_cable_test_start, ptr @marvell_vct5_cable_test_tdr_start, ptr @marvell_vct7_cable_test_get_status, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1540_get_tunable, ptr @m88e1540_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2821019, ptr @.str.17, i32 -16, ptr null, i32 4, ptr @m88e6393_hwmon_ops, ptr null, ptr @marvell_1011gbe_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1510_config_aneg, ptr null, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr @marvell_vct7_cable_test_start, ptr @marvell_vct5_cable_test_tdr_start, ptr @marvell_vct7_cable_test_get_status, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1540_get_tunable, ptr @m88e1540_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040576, ptr @.str.18, i32 -16, ptr null, i32 0, ptr @m88e1510_hwmon_ops, ptr null, ptr @marvell_1011gbe_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1510_config_aneg, ptr null, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1540_get_tunable, ptr @m88e1540_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21040832, ptr @.str.19, i32 -16, ptr @phy_gbit_fibre_features, i32 0, ptr @m88e1510_hwmon_ops, ptr null, ptr @marvell_1011gbe_config_init, ptr @marvell_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @m88e1510_config_aneg, ptr null, ptr @marvell_read_status, ptr @marvell_config_intr, ptr @marvell_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_read_page, ptr @marvell_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_get_sset_count, ptr @marvell_get_strings, ptr @marvell_get_stats, ptr @m88e1540_get_tunable, ptr @m88e1540_set_tunable, ptr null, ptr null, ptr null }], align 4
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@.str = private unnamed_addr constant [16 x i8] c"Marvell 88E1101\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Marvell 88E1112\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Marvell 88E1111\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Marvell 88E1111 (Finisar)\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Marvell 88E1118\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Marvell 88E1121R\00", align 1
@m88e1121_hwmon_ops = internal constant %struct.marvell_hwmon_ops { ptr null, ptr @m88e1121_get_temp, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"Marvell 88E1318S\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Marvell 88E1145\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Marvell 88E1149R\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Marvell 88E1240\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Marvell 88E1116R\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Marvell 88E1510\00", align 1
@phy_gbit_fibre_features = external dso_local global [3 x i32], section ".data..ro_after_init", align 4
@m88e1510_hwmon_ops = internal constant %struct.marvell_hwmon_ops { ptr null, ptr @m88e1510_get_temp, ptr @m88e1510_get_temp_critical, ptr @m88e1510_set_temp_critical, ptr @m88e1510_get_temp_alarm }, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"Marvell 88E1540\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Marvell 88E1545\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Marvell 88E3016\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Marvell 88E6341 Family\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Marvell 88E6390 Family\00", align 1
@m88e6390_hwmon_ops = internal constant %struct.marvell_hwmon_ops { ptr null, ptr @m88e6390_get_temp, ptr null, ptr null, ptr null }, align 4
@.str.17 = private unnamed_addr constant [23 x i8] c"Marvell 88E6393 Family\00", align 1
@m88e6393_hwmon_ops = internal constant %struct.marvell_hwmon_ops { ptr @m88e6393_hwmon_config, ptr @m88e6393_get_temp, ptr @m88e6393_get_temp_critical, ptr @m88e6393_set_temp_critical, ptr @m88e1510_get_temp_alarm }, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"Marvell 88E1340S\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"Marvell 88E1548P\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"Fail to config marvell phy LED.\0A\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"marvell,reg-init\00", align 1
@marvell_hwmon_chip_info = internal constant %struct.hwmon_chip_info { ptr @marvell_hwmon_hwmon_ops, ptr @marvell_hwmon_info }, align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@marvell_hwmon_hwmon_ops = internal constant %struct.hwmon_ops { ptr @marvell_hwmon_is_visible, ptr @marvell_hwmon_read, ptr null, ptr @marvell_hwmon_write }, align 4
@marvell_hwmon_info = internal global [3 x ptr] [ptr @marvell_hwmon_chip, ptr @marvell_hwmon_temp, ptr null], align 4
@marvell_hwmon_chip = internal constant %struct.hwmon_channel_info { i32 0, ptr @marvell_hwmon_chip_config }, align 4
@marvell_hwmon_temp = internal constant %struct.hwmon_channel_info { i32 1, ptr @marvell_hwmon_temp_config }, align 4
@marvell_hwmon_chip_config = internal global [2 x i32] [i32 16, i32 0], align 4
@marvell_hwmon_temp_config = internal global [2 x i32] [i32 66050, i32 0], align 4
@.str.22 = private unnamed_addr constant [26 x i8] c"phy_receive_errors_copper\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"phy_idle_errors\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"phy_receive_errors_fiber\00", align 1
@m88e1510_sfp_ops = internal constant %struct.sfp_upstream_ops { ptr @phy_sfp_attach, ptr @phy_sfp_detach, ptr @m88e1510_sfp_insert, ptr @m88e1510_sfp_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.25 = private unnamed_addr constant [24 x i8] c"%s SFP module inserted\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"Incompatible SFP module inserted\0A\00", align 1
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.58 = private unnamed_addr constant [48 x i8] c"Timeout while waiting for cable test to finish\0A\00", align 1
@.str.59 = private unnamed_addr constant [55 x i8] c"Fast Link Down detection requires EEE to be disabled!\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author331, ptr @__UNIQUE_ID_description330, ptr @__UNIQUE_ID_file332, ptr @__UNIQUE_ID_license333, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_marvell__378_3338_phy_module_init6, ptr @phy_module_exit], section "llvm.metadata"
@switch.table.m88e1111_config_init = private unnamed_addr constant [3 x i16] [i16 130, i16 128, i16 2], align 2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" {
  %1 = tail call i32 @phy_drivers_register(ptr noundef nonnull @marvell_drivers, i32 noundef 20, ptr noundef null) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" {
  tail call void @phy_drivers_unregister(ptr noundef nonnull @marvell_drivers, i32 noundef 20) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_config_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 4
  switch i32 %4, label %16 [
    i32 1315019, label %11
    i32 1315049, label %11
    i32 1315037, label %5
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i16 4471, i16 4160
  br label %11

11:                                               ; preds = %5, %1, %1
  %12 = phi i16 [ 48, %1 ], [ 48, %1 ], [ %10, %5 ]
  %13 = tail call i32 @phy_write_paged(ptr noundef %0, i32 noundef 3, i32 noundef 16, i16 noundef zeroext %12) #12
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.20) #13
  br label %16

16:                                               ; preds = %15, %11, %1
  %17 = tail call fastcc i32 @marvell_of_reg_init(ptr noundef %0)
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_probe(ptr noundef %0) #2 {
  %2 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 56, i32 noundef 3520) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %59, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  store ptr %2, ptr %5, align 8
  %6 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.phy_driver, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %59, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 4
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi ptr [ %16, %15 ], [ %13, %11 ]
  %19 = tail call i32 @strlen(ptr noundef %18) #12
  %20 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %19, i32 noundef 3520) #12
  %21 = getelementptr inbounds %struct.marvell_priv, ptr %2, i32 0, i32 1
  store ptr %20, ptr %21, align 8
  %22 = icmp eq ptr %20, null
  br i1 %22, label %59, label %23

23:                                               ; preds = %17
  %24 = icmp eq i32 %19, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %41, %23
  %26 = phi i32 [ %42, %41 ], [ 0, %23 ]
  %27 = phi i32 [ %43, %41 ], [ 0, %23 ]
  %28 = getelementptr i8, ptr %18, i32 %27
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %25
  %32 = zext i8 %29 to i32
  %33 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %32
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, 7
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr %21, align 8
  %39 = add i32 %26, 1
  %40 = getelementptr i8, ptr %38, i32 %26
  store i8 %29, ptr %40, align 1
  br label %41

41:                                               ; preds = %37, %31
  %42 = phi i32 [ %39, %37 ], [ %26, %31 ]
  %43 = add nuw i32 %27, 1
  %44 = icmp eq i32 %43, %19
  br i1 %44, label %45, label %25

45:                                               ; preds = %41, %25
  %46 = load ptr, ptr %21, align 8
  br label %47

47:                                               ; preds = %45, %23
  %48 = phi ptr [ %46, %45 ], [ %20, %23 ]
  %49 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %0, ptr noundef %48, ptr noundef %0, ptr noundef nonnull @marvell_hwmon_chip_info, ptr noundef null) #12
  %50 = getelementptr inbounds %struct.marvell_priv, ptr %2, i32 0, i32 2
  store ptr %49, ptr %50, align 4
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = ptrtoint ptr %49 to i32
  br label %59

54:                                               ; preds = %47
  %55 = load ptr, ptr %9, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = tail call i32 %55(ptr noundef %0) #12
  br label %59

59:                                               ; preds = %57, %54, %52, %17, %4, %1
  %60 = phi i32 [ -12, %1 ], [ %53, %52 ], [ 0, %4 ], [ %58, %57 ], [ 0, %54 ], [ -12, %17 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1101_config_aneg(ptr noundef %0) #2 {
  %2 = tail call i32 @genphy_soft_reset(ptr noundef %0) #12
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %33, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = tail call i32 @mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 29, i16 noundef zeroext 31) #12
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 8
  %13 = load i32, ptr %7, align 8
  %14 = tail call i32 @mdiobus_write(ptr noundef %12, i32 noundef %13, i32 noundef 30, i16 noundef zeroext 8204) #12
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %5, align 8
  %18 = load i32, ptr %7, align 8
  %19 = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %18, i32 noundef 29, i16 noundef zeroext 5) #12
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %5, align 8
  %23 = load i32, ptr %7, align 8
  %24 = tail call i32 @mdiobus_write(ptr noundef %22, i32 noundef %23, i32 noundef 30, i16 noundef zeroext 0) #12
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %5, align 8
  %28 = load i32, ptr %7, align 8
  %29 = tail call i32 @mdiobus_write(ptr noundef %27, i32 noundef %28, i32 noundef 30, i16 noundef zeroext 256) #12
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = tail call i32 @marvell_config_aneg(ptr noundef %0)
  br label %33

33:                                               ; preds = %31, %26, %21, %16, %11, %4, %1
  %34 = phi i32 [ %32, %31 ], [ %2, %1 ], [ %9, %4 ], [ %14, %11 ], [ %19, %16 ], [ %24, %21 ], [ %29, %26 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_config_intr(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = icmp slt i16 %3, 0
  %5 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  br i1 %4, label %9, label %17

9:                                                ; preds = %1
  %10 = tail call i32 @mdiobus_read(ptr noundef %6, i32 noundef %8, i32 noundef 19) #12
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 0) #12
  %12 = icmp sgt i32 %10, -1
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8
  %15 = load i32, ptr %7, align 8
  %16 = tail call i32 @mdiobus_write(ptr noundef %14, i32 noundef %15, i32 noundef 18, i16 noundef zeroext 25600) #12
  br label %25

17:                                               ; preds = %1
  %18 = tail call i32 @mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 18, i16 noundef zeroext 0) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load ptr, ptr %5, align 8
  %22 = load i32, ptr %7, align 8
  %23 = tail call i32 @mdiobus_read(ptr noundef %21, i32 noundef %22, i32 noundef 19) #12
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 0) #12
  br label %25

25:                                               ; preds = %20, %17, %13, %9
  %26 = phi i32 [ %11, %9 ], [ %18, %17 ], [ %16, %13 ], [ %24, %20 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_handle_interrupt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 19) #12
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @phy_error(ptr noundef %0) #12
  br label %13

9:                                                ; preds = %1
  %10 = and i32 %6, 25600
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @phy_trigger_machine(ptr noundef %0) #12
  br label %13

13:                                               ; preds = %12, %9, %8
  %14 = phi i32 [ 0, %8 ], [ 1, %12 ], [ 0, %9 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_read_page(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @__mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 22) #12
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_write_page(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = trunc i32 %1 to i16
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 22, i16 noundef zeroext %3) #12
  ret i32 %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @marvell_get_sset_count(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1024
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 2, i32 3
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @marvell_get_strings(ptr noundef %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @strlcpy(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef 32) #12
  %8 = getelementptr i8, ptr %1, i32 32
  %9 = tail call i32 @strlcpy(ptr noundef %8, ptr noundef nonnull @.str.23, i32 noundef 32) #12
  br i1 %6, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %1, i32 64
  %12 = tail call i32 @strlcpy(ptr noundef %11, ptr noundef nonnull @.str.24, i32 noundef 32) #12
  br label %13

13:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @marvell_get_stats(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1024
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 0, i32 noundef 21) #12
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = and i32 %10, 65535
  %14 = zext i32 %13 to i64
  %15 = load i64, ptr %9, align 8
  %16 = add i64 %15, %14
  store i64 %16, ptr %9, align 8
  br label %17

17:                                               ; preds = %12, %3
  %18 = phi i64 [ %16, %12 ], [ -1, %3 ]
  store i64 %18, ptr %2, align 8
  %19 = load ptr, ptr %8, align 8
  %20 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 0, i32 noundef 10) #12
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = and i32 %20, 255
  %24 = zext i32 %23 to i64
  %25 = getelementptr [3 x i64], ptr %19, i32 0, i32 1
  %26 = load i64, ptr %25, align 8
  %27 = add i64 %26, %24
  store i64 %27, ptr %25, align 8
  br label %28

28:                                               ; preds = %22, %17
  %29 = phi i64 [ %27, %22 ], [ -1, %17 ]
  %30 = getelementptr i64, ptr %2, i32 1
  store i64 %29, ptr %30, align 8
  br i1 %7, label %44, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %8, align 8
  %33 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 1, i32 noundef 21) #12
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = and i32 %33, 65535
  %37 = zext i32 %36 to i64
  %38 = getelementptr [3 x i64], ptr %32, i32 0, i32 2
  %39 = load i64, ptr %38, align 8
  %40 = add i64 %39, %37
  store i64 %40, ptr %38, align 8
  br label %41

41:                                               ; preds = %35, %31
  %42 = phi i64 [ %40, %35 ], [ -1, %31 ]
  %43 = getelementptr i64, ptr %2, i32 2
  store i64 %42, ptr %43, align 8
  br label %44

44:                                               ; preds = %41, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1112_config_init(ptr noundef %0) #2 {
  %2 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 30720, i16 noundef zeroext 10240) #12
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @genphy_soft_reset(ptr noundef %0) #12
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @m88e1111_config_init(ptr noundef %0)
  br label %9

9:                                                ; preds = %7, %4, %1
  %10 = phi i32 [ %8, %7 ], [ %5, %4 ], [ %2, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_config_aneg(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 35
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 2
  %5 = select i1 %4, i16 32, i16 96
  %6 = icmp eq i8 %3, 1
  %7 = select i1 %6, i16 0, i16 %5
  %8 = tail call i32 @phy_modify_changed(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 96, i16 noundef zeroext %7) #12
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 8
  %15 = tail call i32 @mdiobus_write(ptr noundef %12, i32 noundef %14, i32 noundef 24, i16 noundef zeroext 16640) #12
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %10
  %18 = tail call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext false) #12
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %22 = load i16, ptr %21, align 8
  %23 = and i16 %22, 4096
  %24 = icmp eq i16 %23, 0
  %25 = icmp ne i32 %8, 0
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = tail call i32 @genphy_soft_reset(ptr noundef %0) #12
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27, %20
  br label %31

31:                                               ; preds = %30, %27, %17, %10, %1
  %32 = phi i32 [ 0, %30 ], [ %8, %1 ], [ %15, %10 ], [ %18, %17 ], [ %28, %27 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1011_get_tunable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.ethtool_tunable, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = tail call i32 @mdiobus_read(ptr noundef %9, i32 noundef %11, i32 noundef 16) #12
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %7
  %15 = lshr i32 %12, 12
  %16 = and i32 %12, 2048
  %17 = icmp eq i32 %16, 0
  %18 = trunc i32 %15 to i8
  %19 = and i8 %18, 7
  %20 = add nuw nsw i8 %19, 1
  %21 = select i1 %17, i8 0, i8 %20
  store i8 %21, ptr %2, align 1
  br label %22

22:                                               ; preds = %14, %7, %3
  %23 = phi i32 [ -95, %3 ], [ 0, %14 ], [ %12, %7 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1011_set_tunable(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.ethtool_tunable, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %26

7:                                                ; preds = %3
  %8 = load i8, ptr %2, align 1
  %9 = zext i8 %8 to i16
  %10 = icmp ugt i8 %8, 8
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = icmp eq i8 %8, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 2048, i16 noundef zeroext 0) #12
  br label %21

15:                                               ; preds = %11
  %16 = shl i16 %9, 12
  %17 = add i16 %16, 28672
  %18 = and i16 %17, 28672
  %19 = or i16 %18, 2048
  %20 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 30720, i16 noundef zeroext %19) #12
  br label %21

21:                                               ; preds = %15, %13
  %22 = phi i32 [ %20, %15 ], [ %14, %13 ]
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @genphy_soft_reset(ptr noundef %0) #12
  br label %26

26:                                               ; preds = %24, %21, %7, %3
  %27 = phi i32 [ -95, %3 ], [ %25, %24 ], [ -7, %7 ], [ %22, %21 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1111gbe_config_init(ptr noundef %0) #2 {
  %2 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 20, i16 noundef zeroext 3840, i16 noundef zeroext 1280) #12
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @genphy_soft_reset(ptr noundef %0) #12
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @m88e1111_config_init(ptr noundef %0)
  br label %9

9:                                                ; preds = %7, %4, %1
  %10 = phi i32 [ %8, %7 ], [ %5, %4 ], [ %2, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1111_config_aneg(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 27) #12
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %49, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 4
  %12 = and i32 %6, 15
  %13 = icmp eq i32 %12, 8
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = tail call i32 @marvell_config_aneg(ptr noundef %0)
  br label %49

17:                                               ; preds = %8
  %18 = load ptr, ptr %2, align 8
  %19 = load i32, ptr %4, align 8
  %20 = tail call i32 @mdiobus_write(ptr noundef %18, i32 noundef %19, i32 noundef 22, i16 noundef zeroext 0) #12
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @marvell_config_aneg(ptr noundef %0)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %2, align 8
  %27 = load i32, ptr %4, align 8
  %28 = tail call i32 @mdiobus_write(ptr noundef %26, i32 noundef %27, i32 noundef 22, i16 noundef zeroext 1) #12
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %25
  %31 = load i32, ptr %9, align 4
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = tail call i32 @genphy_check_and_restart_aneg(ptr noundef %0, i1 noundef zeroext false) #12
  br label %37

35:                                               ; preds = %30
  %36 = tail call fastcc i32 @marvell_config_aneg_fiber(ptr noundef %0)
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %2, align 8
  %42 = load i32, ptr %4, align 8
  %43 = tail call i32 @mdiobus_write(ptr noundef %41, i32 noundef %42, i32 noundef 22, i16 noundef zeroext 0) #12
  br label %49

44:                                               ; preds = %37, %25, %22, %17
  %45 = phi i32 [ %20, %17 ], [ %23, %22 ], [ %28, %25 ], [ %38, %37 ]
  %46 = load ptr, ptr %2, align 8
  %47 = load i32, ptr %4, align 8
  %48 = tail call i32 @mdiobus_write(ptr noundef %46, i32 noundef %47, i32 noundef 22, i16 noundef zeroext 0) #12
  br label %49

49:                                               ; preds = %44, %40, %15, %1
  %50 = phi i32 [ %16, %15 ], [ %45, %44 ], [ %43, %40 ], [ %6, %1 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_read_status(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1024
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 8
  %15 = tail call i32 @mdiobus_write(ptr noundef %12, i32 noundef %14, i32 noundef 22, i16 noundef zeroext 1) #12
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %10
  %18 = tail call fastcc i32 @marvell_read_status_page(ptr noundef %0, i32 noundef 1)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %22 = load i16, ptr %21, align 8
  %23 = and i16 %22, 8192
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load ptr, ptr %11, align 8
  %27 = load i32, ptr %13, align 8
  %28 = tail call i32 @mdiobus_write(ptr noundef %26, i32 noundef %27, i32 noundef 22, i16 noundef zeroext 0) #12
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25, %6, %1
  %31 = tail call fastcc i32 @marvell_read_status_page(ptr noundef %0, i32 noundef 0)
  br label %37

32:                                               ; preds = %25, %17, %10
  %33 = phi i32 [ %15, %10 ], [ %18, %17 ], [ %28, %25 ]
  %34 = load ptr, ptr %11, align 8
  %35 = load i32, ptr %13, align 8
  %36 = tail call i32 @mdiobus_write(ptr noundef %34, i32 noundef %35, i32 noundef 22, i16 noundef zeroext 0) #12
  br label %37

37:                                               ; preds = %32, %30, %20
  %38 = phi i32 [ %33, %32 ], [ %31, %30 ], [ 0, %20 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1111_get_tunable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.ethtool_tunable, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = tail call i32 @mdiobus_read(ptr noundef %9, i32 noundef %11, i32 noundef 20) #12
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %7
  %15 = lshr i32 %12, 9
  %16 = and i32 %12, 256
  %17 = icmp eq i32 %16, 0
  %18 = trunc i32 %15 to i8
  %19 = and i8 %18, 7
  %20 = add nuw nsw i8 %19, 1
  %21 = select i1 %17, i8 0, i8 %20
  store i8 %21, ptr %2, align 1
  br label %22

22:                                               ; preds = %14, %7, %3
  %23 = phi i32 [ -95, %3 ], [ 0, %14 ], [ %12, %7 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1111_set_tunable(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.ethtool_tunable, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %26

7:                                                ; preds = %3
  %8 = load i8, ptr %2, align 1
  %9 = zext i8 %8 to i16
  %10 = icmp ugt i8 %8, 8
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = icmp eq i8 %8, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 20, i16 noundef zeroext 256, i16 noundef zeroext 0) #12
  br label %21

15:                                               ; preds = %11
  %16 = shl i16 %9, 9
  %17 = add i16 %16, 3584
  %18 = and i16 %17, 3584
  %19 = or i16 %18, 256
  %20 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 20, i16 noundef zeroext 3840, i16 noundef zeroext %19) #12
  br label %21

21:                                               ; preds = %15, %13
  %22 = phi i32 [ %20, %15 ], [ %14, %13 ]
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @genphy_soft_reset(ptr noundef %0) #12
  br label %26

26:                                               ; preds = %24, %21, %7, %3
  %27 = phi i32 [ -95, %3 ], [ %25, %24 ], [ -7, %7 ], [ %22, %21 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1118_config_init(ptr noundef %0) #2 {
  %2 = tail call i32 @phy_write_paged(ptr noundef %0, i32 noundef 2, i32 noundef 21, i16 noundef zeroext 4208) #12
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %38, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -9
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %18

9:                                                ; preds = %4
  %10 = add i32 %6, -10
  %11 = icmp ult i32 %10, 3
  %12 = trunc i32 %10 to i16
  %13 = mul i16 %12, -16
  %14 = add i16 %13, 48
  %15 = select i1 %11, i16 %14, i16 0
  %16 = tail call i32 @phy_modify_paged_changed(ptr noundef %0, i32 noundef 2, i32 noundef 21, i16 noundef zeroext 48, i16 noundef zeroext %15) #12
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %9, %4
  %19 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i16 542, i16 4352
  %24 = tail call i32 @phy_write_paged(ptr noundef %0, i32 noundef 3, i32 noundef 16, i16 noundef zeroext %23) #12
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %18
  %27 = tail call fastcc i32 @marvell_of_reg_init(ptr noundef %0)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %33 = load i32, ptr %32, align 8
  %34 = tail call i32 @mdiobus_write(ptr noundef %31, i32 noundef %33, i32 noundef 22, i16 noundef zeroext 0) #12
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = tail call i32 @genphy_soft_reset(ptr noundef %0) #12
  br label %38

38:                                               ; preds = %36, %29, %26, %18, %9, %1
  %39 = phi i32 [ %37, %36 ], [ %2, %1 ], [ %16, %9 ], [ %24, %18 ], [ %27, %26 ], [ %34, %29 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1118_config_aneg(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 35
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 2
  %5 = select i1 %4, i16 32, i16 96
  %6 = icmp eq i8 %3, 1
  %7 = select i1 %6, i16 0, i16 %5
  %8 = tail call i32 @phy_modify_changed(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 96, i16 noundef zeroext %7) #12
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = tail call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext false) #12
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @genphy_soft_reset(ptr noundef %0) #12
  br label %15

15:                                               ; preds = %13, %10, %1
  %16 = phi i32 [ %14, %13 ], [ %8, %1 ], [ %11, %10 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_1011gbe_config_init(ptr noundef %0) #2 {
  %2 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 30720, i16 noundef zeroext 10240) #12
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @genphy_soft_reset(ptr noundef %0) #12
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 4
  switch i32 %10, label %22 [
    i32 1315019, label %17
    i32 1315049, label %17
    i32 1315037, label %11
  ]

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i16 4471, i16 4160
  br label %17

17:                                               ; preds = %11, %7, %7
  %18 = phi i16 [ 48, %7 ], [ 48, %7 ], [ %16, %11 ]
  %19 = tail call i32 @phy_write_paged(ptr noundef %0, i32 noundef 3, i32 noundef 16, i16 noundef zeroext %18) #12
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.20) #13
  br label %22

22:                                               ; preds = %21, %17, %7
  %23 = tail call fastcc i32 @marvell_of_reg_init(ptr noundef %0) #12
  br label %24

24:                                               ; preds = %22, %4, %1
  %25 = phi i32 [ %23, %22 ], [ %5, %4 ], [ %2, %1 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1121_config_aneg(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -9
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = add i32 %3, -10
  %8 = icmp ult i32 %7, 3
  %9 = trunc i32 %7 to i16
  %10 = mul i16 %9, -16
  %11 = add i16 %10, 48
  %12 = select i1 %8, i16 %11, i16 0
  %13 = tail call i32 @phy_modify_paged_changed(ptr noundef %0, i32 noundef 2, i32 noundef 21, i16 noundef zeroext 48, i16 noundef zeroext %12) #12
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %40, label %15

15:                                               ; preds = %6, %1
  %16 = phi i32 [ %13, %6 ], [ 0, %1 ]
  %17 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 35
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 2
  %20 = select i1 %19, i16 32, i16 96
  %21 = icmp eq i8 %18, 1
  %22 = select i1 %21, i16 0, i16 %20
  %23 = tail call i32 @phy_modify_changed(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 96, i16 noundef zeroext %22) #12
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %15
  %26 = tail call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext false) #12
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %25
  %29 = or i32 %23, %16
  %30 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %31 = load i16, ptr %30, align 8
  %32 = and i16 %31, 4096
  %33 = icmp eq i16 %32, 0
  %34 = icmp ne i32 %29, 0
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = tail call i32 @genphy_soft_reset(ptr noundef %0) #12
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %28
  br label %40

40:                                               ; preds = %39, %36, %25, %15, %6
  %41 = phi i32 [ 0, %39 ], [ %13, %6 ], [ %23, %15 ], [ %26, %25 ], [ %37, %36 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1318_config_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 21
  %3 = load i32, ptr %2, align 4
  %4 = icmp ult i32 %3, -2
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call i32 @phy_modify_paged(ptr noundef %0, i32 noundef 3, i32 noundef 18, i16 noundef zeroext -32768, i16 noundef zeroext 2176) #12
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %25

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 4
  switch i32 %11, label %23 [
    i32 1315019, label %18
    i32 1315049, label %18
    i32 1315037, label %12
  ]

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i16 4471, i16 4160
  br label %18

18:                                               ; preds = %12, %8, %8
  %19 = phi i16 [ 48, %8 ], [ 48, %8 ], [ %17, %12 ]
  %20 = tail call i32 @phy_write_paged(ptr noundef %0, i32 noundef 3, i32 noundef 16, i16 noundef zeroext %19) #12
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.20) #13
  br label %23

23:                                               ; preds = %22, %18, %8
  %24 = tail call fastcc i32 @marvell_of_reg_init(ptr noundef %0) #12
  br label %25

25:                                               ; preds = %23, %5
  %26 = phi i32 [ %6, %5 ], [ %24, %23 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1318_config_aneg(ptr noundef %0) #2 {
  %2 = tail call i32 @phy_modify_paged(ptr noundef %0, i32 noundef 2, i32 noundef 16, i16 noundef zeroext 0, i16 noundef zeroext 64) #12
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @m88e1121_config_aneg(ptr noundef %0)
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %2, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1318_set_wol(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = tail call i32 @phy_save_page(ptr noundef %0) #12
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %120, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 33
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %38, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 8
  %15 = tail call i32 @__mdiobus_write(ptr noundef %12, i32 noundef %14, i32 noundef 22, i16 noundef zeroext 0) #12
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %120, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 21
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, -2
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %11, align 8
  %23 = load i32, ptr %13, align 8
  %24 = tail call i32 @__mdiobus_read(ptr noundef %22, i32 noundef %23, i32 noundef 19) #12
  br label %25

25:                                               ; preds = %21, %17
  %26 = tail call i32 @__phy_modify(ptr noundef %0, i32 noundef 18, i16 noundef zeroext 0, i16 noundef zeroext 128) #12
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %120, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %11, align 8
  %30 = load i32, ptr %13, align 8
  %31 = tail call i32 @__mdiobus_write(ptr noundef %29, i32 noundef %30, i32 noundef 22, i16 noundef zeroext 3) #12
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %120, label %33

33:                                               ; preds = %28
  %34 = tail call i32 @__phy_modify(ptr noundef %0, i32 noundef 18, i16 noundef zeroext -32768, i16 noundef zeroext 2176) #12
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %120, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr %6, align 4
  br label %38

38:                                               ; preds = %36, %5
  %39 = phi i32 [ %37, %36 ], [ %7, %5 ]
  %40 = and i32 %39, 32
  %41 = icmp eq i32 %40, 0
  %42 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %45 = load i32, ptr %44, align 8
  %46 = tail call i32 @__mdiobus_write(ptr noundef %43, i32 noundef %45, i32 noundef 22, i16 noundef zeroext 17) #12
  %47 = icmp slt i32 %46, 0
  br i1 %41, label %100, label %48

48:                                               ; preds = %38
  br i1 %47, label %120, label %49

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 32
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 72
  %53 = load ptr, ptr %52, align 32
  %54 = getelementptr i8, ptr %53, i32 5
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i16
  %57 = shl nuw i16 %56, 8
  %58 = getelementptr i8, ptr %53, i32 4
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i16
  %61 = or i16 %57, %60
  %62 = load ptr, ptr %42, align 8
  %63 = load i32, ptr %44, align 8
  %64 = tail call i32 @__mdiobus_write(ptr noundef %62, i32 noundef %63, i32 noundef 23, i16 noundef zeroext %61) #12
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %120, label %66

66:                                               ; preds = %49
  %67 = load ptr, ptr %50, align 8
  %68 = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 72
  %69 = load ptr, ptr %68, align 32
  %70 = getelementptr i8, ptr %69, i32 3
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i16
  %73 = shl nuw i16 %72, 8
  %74 = getelementptr i8, ptr %69, i32 2
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i16
  %77 = or i16 %73, %76
  %78 = load ptr, ptr %42, align 8
  %79 = load i32, ptr %44, align 8
  %80 = tail call i32 @__mdiobus_write(ptr noundef %78, i32 noundef %79, i32 noundef 24, i16 noundef zeroext %77) #12
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %120, label %82

82:                                               ; preds = %66
  %83 = load ptr, ptr %50, align 8
  %84 = getelementptr inbounds %struct.net_device, ptr %83, i32 0, i32 72
  %85 = load ptr, ptr %84, align 32
  %86 = getelementptr i8, ptr %85, i32 1
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i16
  %89 = shl nuw i16 %88, 8
  %90 = load i8, ptr %85, align 1
  %91 = zext i8 %90 to i16
  %92 = or i16 %89, %91
  %93 = load ptr, ptr %42, align 8
  %94 = load i32, ptr %44, align 8
  %95 = tail call i32 @__mdiobus_write(ptr noundef %93, i32 noundef %94, i32 noundef 25, i16 noundef zeroext %92) #12
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %120, label %97

97:                                               ; preds = %82
  %98 = tail call i32 @__phy_modify(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 0, i16 noundef zeroext 20480) #12
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %120, label %104

100:                                              ; preds = %38
  br i1 %47, label %120, label %101

101:                                              ; preds = %100
  %102 = tail call i32 @__phy_modify(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 16384, i16 noundef zeroext 4096) #12
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %120, label %104

104:                                              ; preds = %101, %97
  %105 = load i32, ptr %6, align 4
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  %108 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %109 = load ptr, ptr %108, align 8
  %110 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %111 = load i32, ptr %110, align 8
  %112 = tail call i32 @__mdiobus_write(ptr noundef %109, i32 noundef %111, i32 noundef 22, i16 noundef zeroext 17) #12
  %113 = icmp slt i32 %112, 0
  br i1 %107, label %117, label %114

114:                                              ; preds = %104
  br i1 %113, label %120, label %115

115:                                              ; preds = %114
  %116 = tail call i32 @__phy_modify(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 0, i16 noundef zeroext 12288) #12
  br label %120

117:                                              ; preds = %104
  br i1 %113, label %120, label %118

118:                                              ; preds = %117
  %119 = tail call i32 @__phy_modify(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 8192, i16 noundef zeroext 4096) #12
  br label %120

120:                                              ; preds = %118, %117, %115, %114, %101, %100, %97, %82, %66, %49, %48, %33, %28, %25, %10, %2
  %121 = phi i32 [ 0, %2 ], [ %15, %10 ], [ %26, %25 ], [ %31, %28 ], [ %34, %33 ], [ %46, %48 ], [ %64, %49 ], [ %80, %66 ], [ %95, %82 ], [ %98, %97 ], [ %112, %114 ], [ %116, %115 ], [ %112, %117 ], [ %119, %118 ], [ %46, %100 ], [ %102, %101 ]
  %122 = tail call i32 @phy_restore_page(ptr noundef %0, i32 noundef %3, i32 noundef %121) #12
  ret i32 %122
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @m88e1318_get_wol(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  store i32 33, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  %5 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 17, i32 noundef 16) #12
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = and i32 %5, 16384
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr %4, align 4
  %12 = or i32 %11, 32
  store i32 %12, ptr %4, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = and i32 %5, 8192
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %4, align 4
  %18 = or i32 %17, 1
  store i32 %18, ptr %4, align 4
  br label %19

19:                                               ; preds = %16, %13, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1145_config_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_write(ptr noundef %3, i32 noundef %5, i32 noundef 29, i16 noundef zeroext 27) #12
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %70, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8
  %10 = load i32, ptr %4, align 8
  %11 = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %10, i32 noundef 30, i16 noundef zeroext 16783) #12
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %70, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %2, align 8
  %15 = load i32, ptr %4, align 8
  %16 = tail call i32 @mdiobus_write(ptr noundef %14, i32 noundef %15, i32 noundef 29, i16 noundef zeroext 22) #12
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %70, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %2, align 8
  %20 = load i32, ptr %4, align 8
  %21 = tail call i32 @mdiobus_write(ptr noundef %19, i32 noundef %20, i32 noundef 30, i16 noundef zeroext -23846) #12
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %70, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %27, label %55

27:                                               ; preds = %23
  %28 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 20, i16 noundef zeroext 130, i16 noundef zeroext 130) #12
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %70, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 6
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %2, align 8
  %37 = load i32, ptr %4, align 8
  %38 = tail call i32 @mdiobus_write(ptr noundef %36, i32 noundef %37, i32 noundef 29, i16 noundef zeroext 18) #12
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %70, label %40

40:                                               ; preds = %35
  %41 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 30, i16 noundef zeroext 4032, i16 noundef zeroext 1152) #12
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %70, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %2, align 8
  %45 = load i32, ptr %4, align 8
  %46 = tail call i32 @mdiobus_write(ptr noundef %44, i32 noundef %45, i32 noundef 29, i16 noundef zeroext 3) #12
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %70, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %2, align 8
  %50 = load i32, ptr %4, align 8
  %51 = tail call i32 @mdiobus_write(ptr noundef %49, i32 noundef %50, i32 noundef 30, i16 noundef zeroext -32768) #12
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %70, label %53

53:                                               ; preds = %48, %30
  %54 = load i32, ptr %24, align 4
  br label %55

55:                                               ; preds = %53, %23
  %56 = phi i32 [ %54, %53 ], [ %25, %23 ]
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 27, i16 noundef zeroext -24561, i16 noundef zeroext -32764) #12
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %58, %55
  %62 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 20, i16 noundef zeroext 3840, i16 noundef zeroext 1280) #12
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = tail call i32 @genphy_soft_reset(ptr noundef %0) #12
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = tail call fastcc i32 @marvell_of_reg_init(ptr noundef %0)
  %69 = tail call i32 @llvm.smin.i32(i32 %68, i32 0)
  br label %70

70:                                               ; preds = %67, %64, %61, %58, %48, %43, %40, %35, %27, %18, %13, %8, %1
  %71 = phi i32 [ %6, %1 ], [ %11, %8 ], [ %16, %13 ], [ %21, %18 ], [ %51, %48 ], [ %59, %58 ], [ %65, %64 ], [ %69, %67 ], [ %46, %43 ], [ %41, %40 ], [ %38, %35 ], [ %28, %27 ], [ %62, %61 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1149_config_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_write(ptr noundef %3, i32 noundef %5, i32 noundef 22, i16 noundef zeroext 2) #12
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8
  %10 = load i32, ptr %4, align 8
  %11 = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %10, i32 noundef 21, i16 noundef zeroext 4168) #12
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %8
  %14 = tail call fastcc i32 @marvell_of_reg_init(ptr noundef %0)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %2, align 8
  %18 = load i32, ptr %4, align 8
  %19 = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %18, i32 noundef 22, i16 noundef zeroext 0) #12
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = tail call i32 @genphy_soft_reset(ptr noundef %0) #12
  br label %23

23:                                               ; preds = %21, %16, %13, %8, %1
  %24 = phi i32 [ %22, %21 ], [ %6, %1 ], [ %11, %8 ], [ %14, %13 ], [ %19, %16 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1116r_config_init(ptr noundef %0) #2 {
  %2 = tail call i32 @genphy_soft_reset(ptr noundef %0) #12
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %60, label %4

4:                                                ; preds = %1
  tail call void @msleep(i32 noundef 500) #12
  %5 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = tail call i32 @mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 22, i16 noundef zeroext 0) #12
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %60, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 35
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 2
  %15 = select i1 %14, i16 32, i16 96
  %16 = icmp eq i8 %13, 1
  %17 = select i1 %16, i16 0, i16 %15
  %18 = tail call i32 @phy_modify_changed(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 96, i16 noundef zeroext %17) #12
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %60, label %20

20:                                               ; preds = %11
  %21 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 30720, i16 noundef zeroext 30720) #12
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %60, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @genphy_soft_reset(ptr noundef %0) #12
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %60, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -9
  %30 = icmp ult i32 %29, 4
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = add i32 %28, -10
  %33 = icmp ult i32 %32, 3
  %34 = trunc i32 %32 to i16
  %35 = mul i16 %34, -16
  %36 = add i16 %35, 48
  %37 = select i1 %33, i16 %36, i16 0
  %38 = tail call i32 @phy_modify_paged_changed(ptr noundef %0, i32 noundef 2, i32 noundef 21, i16 noundef zeroext 48, i16 noundef zeroext %37) #12
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %31, %26
  %41 = tail call i32 @genphy_soft_reset(ptr noundef %0) #12
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = lshr i32 %45, 4
  switch i32 %46, label %58 [
    i32 1315019, label %53
    i32 1315049, label %53
    i32 1315037, label %47
  ]

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 6
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 4
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i16 4471, i16 4160
  br label %53

53:                                               ; preds = %47, %43, %43
  %54 = phi i16 [ 48, %43 ], [ 48, %43 ], [ %52, %47 ]
  %55 = tail call i32 @phy_write_paged(ptr noundef %0, i32 noundef 3, i32 noundef 16, i16 noundef zeroext %54) #12
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.20) #13
  br label %58

58:                                               ; preds = %57, %53, %43
  %59 = tail call fastcc i32 @marvell_of_reg_init(ptr noundef %0) #12
  br label %60

60:                                               ; preds = %58, %40, %31, %23, %20, %11, %4, %1
  %61 = phi i32 [ %59, %58 ], [ %2, %1 ], [ %9, %4 ], [ %18, %11 ], [ %24, %23 ], [ %38, %31 ], [ %41, %40 ], [ %21, %20 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1510_config_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 22, i16 noundef zeroext 18) #12
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %5
  %13 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 20, i16 noundef zeroext 7, i16 noundef zeroext 1) #12
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext -32768) #12
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %6, align 8
  %20 = load i32, ptr %8, align 8
  %21 = tail call i32 @mdiobus_write(ptr noundef %19, i32 noundef %20, i32 noundef 22, i16 noundef zeroext 0) #12
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %18, %1
  %24 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 30720, i16 noundef zeroext 10240) #12
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @genphy_soft_reset(ptr noundef %0) #12
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @m88e1318_config_init(ptr noundef %0)
  br label %31

31:                                               ; preds = %29, %26, %23, %18, %15, %12, %5
  %32 = phi i32 [ %30, %29 ], [ %10, %5 ], [ %13, %12 ], [ %16, %15 ], [ %21, %18 ], [ %27, %26 ], [ %24, %23 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1510_probe(ptr noundef %0) #2 {
  %2 = tail call i32 @marvell_probe(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @phy_sfp_probe(ptr noundef %0, ptr noundef nonnull @m88e1510_sfp_ops) #12
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %2, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1024
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 @mdiobus_write(ptr noundef %8, i32 noundef %10, i32 noundef 22, i16 noundef zeroext 1) #12
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %6
  %14 = tail call i32 @genphy_suspend(ptr noundef %0) #12
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %7, align 8
  %18 = load i32, ptr %9, align 8
  %19 = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %18, i32 noundef 22, i16 noundef zeroext 0) #12
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16, %1
  %22 = tail call i32 @genphy_suspend(ptr noundef %0) #12
  br label %28

23:                                               ; preds = %16, %13, %6
  %24 = phi i32 [ %11, %6 ], [ %14, %13 ], [ %19, %16 ]
  %25 = load ptr, ptr %7, align 8
  %26 = load i32, ptr %9, align 8
  %27 = tail call i32 @mdiobus_write(ptr noundef %25, i32 noundef %26, i32 noundef 22, i16 noundef zeroext 0) #12
  br label %28

28:                                               ; preds = %23, %21
  %29 = phi i32 [ %24, %23 ], [ %22, %21 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1024
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 @mdiobus_write(ptr noundef %8, i32 noundef %10, i32 noundef 22, i16 noundef zeroext 1) #12
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %6
  %14 = tail call i32 @genphy_resume(ptr noundef %0) #12
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %7, align 8
  %18 = load i32, ptr %9, align 8
  %19 = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %18, i32 noundef 22, i16 noundef zeroext 0) #12
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16, %1
  %22 = tail call i32 @genphy_resume(ptr noundef %0) #12
  br label %28

23:                                               ; preds = %16, %13, %6
  %24 = phi i32 [ %11, %6 ], [ %14, %13 ], [ %19, %16 ]
  %25 = load ptr, ptr %7, align 8
  %26 = load i32, ptr %9, align 8
  %27 = tail call i32 @mdiobus_write(ptr noundef %25, i32 noundef %26, i32 noundef 22, i16 noundef zeroext 0) #12
  br label %28

28:                                               ; preds = %23, %21
  %29 = phi i32 [ %24, %23 ], [ %22, %21 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1510_config_aneg(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_write(ptr noundef %3, i32 noundef %5, i32 noundef 22, i16 noundef zeroext 0) #12
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @phy_modify_paged(ptr noundef %0, i32 noundef 2, i32 noundef 16, i16 noundef zeroext 0, i16 noundef zeroext 64) #12
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @m88e1121_config_aneg(ptr noundef %0) #12
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %35, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %2, align 8
  %20 = load i32, ptr %4, align 8
  %21 = tail call i32 @mdiobus_write(ptr noundef %19, i32 noundef %20, i32 noundef 22, i16 noundef zeroext 1) #12
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = tail call fastcc i32 @marvell_config_aneg_fiber(ptr noundef %0)
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %2, align 8
  %28 = load i32, ptr %4, align 8
  %29 = tail call i32 @mdiobus_write(ptr noundef %27, i32 noundef %28, i32 noundef 22, i16 noundef zeroext 0) #12
  br label %35

30:                                               ; preds = %23, %18, %11, %8, %1
  %31 = phi i32 [ %6, %1 ], [ %12, %11 ], [ %21, %18 ], [ %24, %23 ], [ %9, %8 ]
  %32 = load ptr, ptr %2, align 8
  %33 = load i32, ptr %4, align 8
  %34 = tail call i32 @mdiobus_write(ptr noundef %32, i32 noundef %33, i32 noundef 22, i16 noundef zeroext 0) #12
  br label %35

35:                                               ; preds = %30, %26, %14
  %36 = phi i32 [ %31, %30 ], [ %29, %26 ], [ 0, %14 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_vct7_cable_test_start(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @marvell_cable_test_start_common(ptr noundef %0)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.marvell_priv, ptr %3, i32 0, i32 3
  store i8 0, ptr %7, align 8
  %8 = tail call i32 @phy_write_paged(ptr noundef %0, i32 noundef 5, i32 noundef 23, i16 noundef zeroext 1539) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = tail call i32 @phy_write_paged(ptr noundef %0, i32 noundef 5, i32 noundef 24, i16 noundef zeroext 0) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i32 @phy_write_paged(ptr noundef %0, i32 noundef 7, i32 noundef 21, i16 noundef zeroext -32768) #12
  br label %15

15:                                               ; preds = %13, %10, %6, %1
  %16 = phi i32 [ %14, %13 ], [ %4, %1 ], [ %8, %6 ], [ %11, %10 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_vct5_cable_test_tdr_start(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.marvell_priv, ptr %4, i32 0, i32 3
  store i8 1, ptr %5, align 8
  %6 = load i32, ptr %1, align 4
  %7 = mul i32 %6, 10
  %8 = sdiv i32 %7, 805
  %9 = getelementptr inbounds %struct.marvell_priv, ptr %4, i32 0, i32 4
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.phy_tdr_config, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, 10
  %13 = sdiv i32 %12, 805
  %14 = getelementptr inbounds %struct.marvell_priv, ptr %4, i32 0, i32 5
  store i32 %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.phy_tdr_config, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %16, 10
  %18 = sdiv i32 %17, 805
  %19 = getelementptr inbounds %struct.marvell_priv, ptr %4, i32 0, i32 6
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.phy_tdr_config, ptr %1, i32 0, i32 3
  %21 = load i8, ptr %20, align 4
  %22 = getelementptr inbounds %struct.marvell_priv, ptr %4, i32 0, i32 7
  store i8 %21, ptr %22, align 8
  %23 = icmp ugt i32 %8, 511
  %24 = icmp ugt i32 %13, 511
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %46, label %26

26:                                               ; preds = %2
  %27 = tail call i32 @phy_write_paged(ptr noundef %0, i32 noundef 7, i32 noundef 21, i16 noundef zeroext 0) #12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = tail call fastcc i32 @marvell_cable_test_start_common(ptr noundef %0)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = tail call i32 @ethnl_cable_test_pulse(ptr noundef %0, i16 noundef zeroext 1000) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load i32, ptr %9, align 4
  %37 = mul i32 %36, 805
  %38 = sdiv i32 %37, 10
  %39 = load i32, ptr %14, align 8
  %40 = mul i32 %39, 805
  %41 = sdiv i32 %40, 10
  %42 = load i32, ptr %19, align 4
  %43 = mul i32 %42, 805
  %44 = sdiv i32 %43, 10
  %45 = tail call i32 @ethnl_cable_test_step(ptr noundef %0, i32 noundef %38, i32 noundef %41, i32 noundef %44) #12
  br label %46

46:                                               ; preds = %35, %32, %29, %26, %2
  %47 = phi i32 [ %45, %35 ], [ -22, %2 ], [ %27, %26 ], [ %30, %29 ], [ %33, %32 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_vct7_cable_test_get_status(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.marvell_priv, ptr %4, i32 0, i32 3
  %6 = load i8, ptr %5, align 8, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %155, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.marvell_priv, ptr %4, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, 12
  %12 = select i1 %11, i16 3072, i16 0
  %13 = or i16 %12, 4230
  %14 = tail call i32 @phy_write_paged(ptr noundef %0, i32 noundef 5, i32 noundef 28, i16 noundef zeroext %13) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %153

16:                                               ; preds = %8
  %17 = tail call i32 @phy_select_page(ptr noundef %0, i32 noundef 5) #12
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %150, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %9, align 4
  %21 = getelementptr inbounds %struct.marvell_priv, ptr %4, i32 0, i32 5
  %22 = load i32, ptr %21, align 8
  %23 = icmp ugt i32 %20, %22
  br i1 %23, label %150, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.marvell_priv, ptr %4, i32 0, i32 7
  %26 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %27 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %28 = getelementptr inbounds %struct.marvell_priv, ptr %4, i32 0, i32 6
  br label %29

29:                                               ; preds = %144, %24
  %30 = phi i16 [ %12, %24 ], [ %145, %144 ]
  %31 = phi i32 [ %20, %24 ], [ %147, %144 ]
  %32 = load i8, ptr %25, align 8
  %33 = sext i8 %32 to i32
  %34 = trunc i32 %31 to i16
  %35 = load ptr, ptr %26, align 8
  %36 = load i32, ptr %27, align 8
  %37 = tail call i32 @__mdiobus_write(ptr noundef %35, i32 noundef %36, i32 noundef 24, i16 noundef zeroext %34) #12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %150

39:                                               ; preds = %29
  %40 = load ptr, ptr %26, align 8
  %41 = load i32, ptr %27, align 8
  %42 = tail call i32 @__mdiobus_write(ptr noundef %40, i32 noundef %41, i32 noundef 23, i16 noundef zeroext -31037) #12
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %150

44:                                               ; preds = %53
  %45 = add nuw nsw i32 %48, 1
  %46 = icmp eq i32 %45, 32
  br i1 %46, label %59, label %47

47:                                               ; preds = %44, %39
  %48 = phi i32 [ %45, %44 ], [ 0, %39 ]
  %49 = load ptr, ptr %26, align 8
  %50 = load i32, ptr %27, align 8
  %51 = tail call i32 @__mdiobus_read(ptr noundef %49, i32 noundef %50, i32 noundef 23) #12
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %150, label %53

53:                                               ; preds = %47
  %54 = and i32 %51, 16384
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %44, label %56

56:                                               ; preds = %53
  %57 = add nsw i32 %33, 1
  %58 = icmp ult i32 %57, 2
  br i1 %58, label %60, label %78

59:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.58) #13
  br label %150

60:                                               ; preds = %56
  %61 = load ptr, ptr %26, align 8
  %62 = load i32, ptr %27, align 8
  %63 = tail call i32 @__mdiobus_read(ptr noundef %61, i32 noundef %62, i32 noundef 16) #12
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %60
  %66 = lshr i32 %63, 8
  %67 = and i32 %66, 127
  %68 = and i32 %63, 32768
  %69 = icmp eq i32 %68, 0
  %70 = sub nsw i32 0, %67
  %71 = select i1 %69, i32 %70, i32 %67
  %72 = mul nsw i32 %71, 1000
  %73 = sdiv i32 %72, 128
  %74 = trunc i32 %73 to i16
  br label %75

75:                                               ; preds = %65, %60
  %76 = phi i16 [ %74, %65 ], [ 0, %60 ]
  %77 = tail call i32 @ethnl_cable_test_amplitude(ptr noundef %0, i8 noundef zeroext 0, i16 noundef signext %76) #12
  br label %78

78:                                               ; preds = %75, %56
  switch i32 %33, label %135 [
    i32 -1, label %79
    i32 1, label %79
    i32 2, label %98
    i32 3, label %117
  ]

79:                                               ; preds = %78, %78
  %80 = load ptr, ptr %26, align 8
  %81 = load i32, ptr %27, align 8
  %82 = tail call i32 @__mdiobus_read(ptr noundef %80, i32 noundef %81, i32 noundef 17) #12
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %79
  %85 = lshr i32 %82, 8
  %86 = and i32 %85, 127
  %87 = and i32 %82, 32768
  %88 = icmp eq i32 %87, 0
  %89 = sub nsw i32 0, %86
  %90 = select i1 %88, i32 %89, i32 %86
  %91 = mul nsw i32 %90, 1000
  %92 = sdiv i32 %91, 128
  %93 = trunc i32 %92 to i16
  br label %94

94:                                               ; preds = %84, %79
  %95 = phi i16 [ %93, %84 ], [ 0, %79 ]
  %96 = tail call i32 @ethnl_cable_test_amplitude(ptr noundef %0, i8 noundef zeroext 1, i16 noundef signext %95) #12
  %97 = icmp eq i8 %32, -1
  br i1 %97, label %98, label %135

98:                                               ; preds = %94, %78
  %99 = load ptr, ptr %26, align 8
  %100 = load i32, ptr %27, align 8
  %101 = tail call i32 @__mdiobus_read(ptr noundef %99, i32 noundef %100, i32 noundef 18) #12
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %98
  %104 = lshr i32 %101, 8
  %105 = and i32 %104, 127
  %106 = and i32 %101, 32768
  %107 = icmp eq i32 %106, 0
  %108 = sub nsw i32 0, %105
  %109 = select i1 %107, i32 %108, i32 %105
  %110 = mul nsw i32 %109, 1000
  %111 = sdiv i32 %110, 128
  %112 = trunc i32 %111 to i16
  br label %113

113:                                              ; preds = %103, %98
  %114 = phi i16 [ %112, %103 ], [ 0, %98 ]
  %115 = tail call i32 @ethnl_cable_test_amplitude(ptr noundef %0, i8 noundef zeroext 2, i16 noundef signext %114) #12
  %116 = icmp eq i8 %32, -1
  br i1 %116, label %117, label %135

117:                                              ; preds = %113, %78
  %118 = load ptr, ptr %26, align 8
  %119 = load i32, ptr %27, align 8
  %120 = tail call i32 @__mdiobus_read(ptr noundef %118, i32 noundef %119, i32 noundef 19) #12
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %132, label %122

122:                                              ; preds = %117
  %123 = lshr i32 %120, 8
  %124 = and i32 %123, 127
  %125 = and i32 %120, 32768
  %126 = icmp eq i32 %125, 0
  %127 = sub nsw i32 0, %124
  %128 = select i1 %126, i32 %127, i32 %124
  %129 = mul nsw i32 %128, 1000
  %130 = sdiv i32 %129, 128
  %131 = trunc i32 %130 to i16
  br label %132

132:                                              ; preds = %122, %117
  %133 = phi i16 [ %131, %122 ], [ 0, %117 ]
  %134 = tail call i32 @ethnl_cable_test_amplitude(ptr noundef %0, i8 noundef zeroext 3, i16 noundef signext %133) #12
  br label %135

135:                                              ; preds = %132, %113, %94, %78
  %136 = icmp sgt i32 %31, 11
  %137 = icmp eq i16 %30, 3072
  %138 = select i1 %136, i1 %137, i1 false
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load ptr, ptr %26, align 8
  %141 = load i32, ptr %27, align 8
  %142 = tail call i32 @__mdiobus_write(ptr noundef %140, i32 noundef %141, i32 noundef 28, i16 noundef zeroext 4230) #12
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %139, %135
  %145 = phi i16 [ 0, %139 ], [ %30, %135 ]
  %146 = load i32, ptr %28, align 4
  %147 = add i32 %146, %31
  %148 = load i32, ptr %21, align 8
  %149 = icmp ugt i32 %147, %148
  br i1 %149, label %150, label %29

150:                                              ; preds = %144, %139, %59, %47, %39, %29, %19, %16
  %151 = phi i32 [ 0, %16 ], [ -110, %59 ], [ 0, %19 ], [ %51, %47 ], [ %42, %39 ], [ %37, %29 ], [ 0, %144 ], [ %142, %139 ]
  %152 = tail call i32 @phy_restore_page(ptr noundef %0, i32 noundef %17, i32 noundef %151) #12
  br label %153

153:                                              ; preds = %150, %8
  %154 = phi i32 [ %152, %150 ], [ %14, %8 ]
  store i8 1, ptr %1, align 1
  br label %240

155:                                              ; preds = %2
  store i8 0, ptr %1, align 1
  %156 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 7, i32 noundef 21) #12
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %240, label %158

158:                                              ; preds = %155
  %159 = and i32 %156, 2048
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %240

161:                                              ; preds = %158
  store i8 1, ptr %1, align 1
  %162 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 7, i32 noundef 20) #12
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %240, label %164

164:                                              ; preds = %161
  %165 = lshr i32 %162, 12
  %166 = and i32 %165, 15
  %167 = lshr i32 %162, 8
  %168 = and i32 %167, 15
  %169 = lshr i32 %162, 4
  %170 = and i32 %169, 15
  %171 = and i32 %162, 15
  %172 = add nsw i32 %171, -1
  %173 = icmp ult i32 %172, 4
  %174 = trunc i32 %172 to i8
  %175 = add i8 %174, 1
  %176 = select i1 %173, i8 %175, i8 0
  %177 = tail call i32 @ethnl_cable_test_result(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext %176) #12
  %178 = add nsw i32 %170, -1
  %179 = icmp ult i32 %178, 4
  %180 = trunc i32 %178 to i8
  %181 = add i8 %180, 1
  %182 = select i1 %179, i8 %181, i8 0
  %183 = tail call i32 @ethnl_cable_test_result(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext %182) #12
  %184 = add nsw i32 %168, -1
  %185 = icmp ult i32 %184, 4
  %186 = trunc i32 %184 to i8
  %187 = add i8 %186, 1
  %188 = select i1 %185, i8 %187, i8 0
  %189 = tail call i32 @ethnl_cable_test_result(ptr noundef %0, i8 noundef zeroext 2, i8 noundef zeroext %188) #12
  %190 = add nsw i32 %166, -1
  %191 = icmp ult i32 %190, 4
  %192 = trunc i32 %190 to i8
  %193 = add i8 %192, 1
  %194 = select i1 %191, i8 %193, i8 0
  %195 = tail call i32 @ethnl_cable_test_result(ptr noundef %0, i8 noundef zeroext 3, i8 noundef zeroext %194) #12
  %196 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 7, i32 noundef 21) #12
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %240, label %198

198:                                              ; preds = %164
  %199 = and i32 %196, 1024
  %200 = icmp eq i32 %199, 0
  %201 = add nsw i32 %171, -2
  %202 = icmp ult i32 %201, 3
  br i1 %202, label %203, label %210

203:                                              ; preds = %198
  %204 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 7, i32 noundef 16) #12
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %203
  %207 = mul i32 %204, 100
  %208 = select i1 %200, i32 %204, i32 %207
  %209 = tail call i32 @ethnl_cable_test_fault_length(ptr noundef %0, i8 noundef zeroext 0, i32 noundef %208) #12
  br label %210

210:                                              ; preds = %206, %203, %198
  %211 = add nsw i32 %170, -2
  %212 = icmp ult i32 %211, 3
  br i1 %212, label %213, label %220

213:                                              ; preds = %210
  %214 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 7, i32 noundef 17) #12
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %213
  %217 = mul i32 %214, 100
  %218 = select i1 %200, i32 %214, i32 %217
  %219 = tail call i32 @ethnl_cable_test_fault_length(ptr noundef %0, i8 noundef zeroext 1, i32 noundef %218) #12
  br label %220

220:                                              ; preds = %216, %213, %210
  %221 = add nsw i32 %168, -2
  %222 = icmp ult i32 %221, 3
  br i1 %222, label %223, label %230

223:                                              ; preds = %220
  %224 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 7, i32 noundef 18) #12
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %230, label %226

226:                                              ; preds = %223
  %227 = mul i32 %224, 100
  %228 = select i1 %200, i32 %224, i32 %227
  %229 = tail call i32 @ethnl_cable_test_fault_length(ptr noundef %0, i8 noundef zeroext 2, i32 noundef %228) #12
  br label %230

230:                                              ; preds = %226, %223, %220
  %231 = add nsw i32 %166, -2
  %232 = icmp ult i32 %231, 3
  br i1 %232, label %233, label %240

233:                                              ; preds = %230
  %234 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 7, i32 noundef 19) #12
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %233
  %237 = mul i32 %234, 100
  %238 = select i1 %200, i32 %234, i32 %237
  %239 = tail call i32 @ethnl_cable_test_fault_length(ptr noundef %0, i8 noundef zeroext 3, i32 noundef %238) #12
  br label %240

240:                                              ; preds = %236, %233, %230, %164, %161, %158, %155, %153
  %241 = phi i32 [ %154, %153 ], [ %156, %155 ], [ 0, %158 ], [ %162, %161 ], [ %196, %164 ], [ 0, %230 ], [ 0, %233 ], [ 0, %236 ]
  ret i32 %241
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1510_loopback(ptr noundef %0, i1 noundef zeroext %1) #2 {
  br i1 %1, label %3, label %38

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 100
  %7 = select i1 %6, i16 8192, i16 0
  %8 = icmp eq i32 %5, 1000
  %9 = select i1 %8, i16 64, i16 %7
  %10 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  %13 = or i16 %9, 256
  %14 = select i1 %12, i16 %13, i16 %9
  %15 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 8
  %19 = tail call i32 @mdiobus_write(ptr noundef %16, i32 noundef %18, i32 noundef 0, i16 noundef zeroext %14) #12
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %3
  %22 = load i32, ptr %4, align 8
  %23 = icmp eq i32 %22, 100
  %24 = select i1 %23, i16 8192, i16 0
  %25 = icmp eq i32 %22, 1000
  %26 = select i1 %25, i16 64, i16 %24
  %27 = tail call i32 @phy_modify_paged(ptr noundef %0, i32 noundef 2, i32 noundef 21, i16 noundef zeroext 8256, i16 noundef zeroext %26) #12
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %21
  %30 = tail call i32 @genphy_soft_reset(ptr noundef %0) #12
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr %4, align 8
  %34 = icmp eq i32 %33, 1000
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void @msleep(i32 noundef 1000) #12
  br label %36

36:                                               ; preds = %35, %32
  %37 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 16384, i16 noundef zeroext 16384) #12
  br label %43

38:                                               ; preds = %2
  %39 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 16384, i16 noundef zeroext 0) #12
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @phy_config_aneg(ptr noundef %0) #12
  br label %43

43:                                               ; preds = %41, %38, %36, %29, %21, %3
  %44 = phi i32 [ %42, %41 ], [ %37, %36 ], [ %19, %3 ], [ %27, %21 ], [ %30, %29 ], [ %39, %38 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1540_get_tunable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.ethtool_tunable, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %38 [
    i32 2, label %6
    i32 1, label %21
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 @mdiobus_read(ptr noundef %8, i32 noundef %10, i32 noundef 26) #12
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %6
  %14 = and i32 %11, 512
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %13
  %17 = lshr i32 %11, 7
  %18 = and i32 %17, 24
  %19 = lshr i32 672401920, %18
  %20 = trunc i32 %19 to i8
  br label %36

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %25 = load i32, ptr %24, align 8
  %26 = tail call i32 @mdiobus_read(ptr noundef %23, i32 noundef %25, i32 noundef 16) #12
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %21
  %29 = lshr i32 %26, 12
  %30 = and i32 %26, 2048
  %31 = icmp eq i32 %30, 0
  %32 = trunc i32 %29 to i8
  %33 = and i8 %32, 7
  %34 = add nuw nsw i8 %33, 1
  %35 = select i1 %31, i8 0, i8 %34
  br label %36

36:                                               ; preds = %28, %16, %13
  %37 = phi i8 [ %35, %28 ], [ -1, %13 ], [ %20, %16 ]
  store i8 %37, ptr %2, align 1
  br label %38

38:                                               ; preds = %36, %21, %6, %3
  %39 = phi i32 [ -95, %3 ], [ %11, %6 ], [ %26, %21 ], [ 0, %36 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1540_set_tunable(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca %struct.ethtool_eee, align 4
  %5 = getelementptr inbounds %struct.ethtool_tunable, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %55 [
    i32 2, label %7
    i32 1, label %36
  ]

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i32 40, i1 false) #12, !annotation !9
  %8 = load i8, ptr %2, align 1
  %9 = icmp eq i8 %8, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 26, i16 noundef zeroext 512, i16 noundef zeroext 0) #12
  br label %34

12:                                               ; preds = %7
  %13 = call i32 @phy_ethtool_get_eee(ptr noundef %0, ptr noundef nonnull %4) #12
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.ethtool_eee, ptr %4, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = select i1 %14, i1 %17, i1 false
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.59) #13
  br label %34

20:                                               ; preds = %12
  %21 = load i8, ptr %2, align 1
  %22 = icmp ult i8 %21, 6
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = icmp ult i8 %21, 16
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  %26 = icmp ult i8 %21, 31
  %27 = select i1 %26, i16 2048, i16 3072
  br label %28

28:                                               ; preds = %25, %23, %20
  %29 = phi i16 [ 0, %20 ], [ 1024, %23 ], [ %27, %25 ]
  %30 = call i32 @phy_modify(ptr noundef %0, i32 noundef 26, i16 noundef zeroext 3072, i16 noundef zeroext %29) #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 @phy_modify(ptr noundef %0, i32 noundef 26, i16 noundef zeroext 0, i16 noundef zeroext 512) #12
  br label %34

34:                                               ; preds = %32, %28, %19, %10
  %35 = phi i32 [ %11, %10 ], [ -16, %19 ], [ %33, %32 ], [ %30, %28 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #12
  br label %55

36:                                               ; preds = %3
  %37 = load i8, ptr %2, align 1
  %38 = zext i8 %37 to i16
  %39 = icmp ugt i8 %37, 8
  br i1 %39, label %55, label %40

40:                                               ; preds = %36
  %41 = icmp eq i8 %37, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %40
  %43 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 2048, i16 noundef zeroext 0) #12
  br label %50

44:                                               ; preds = %40
  %45 = shl i16 %38, 12
  %46 = add i16 %45, 28672
  %47 = and i16 %46, 28672
  %48 = or i16 %47, 2048
  %49 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 30720, i16 noundef zeroext %48) #12
  br label %50

50:                                               ; preds = %44, %42
  %51 = phi i32 [ %49, %44 ], [ %43, %42 ]
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = tail call i32 @genphy_soft_reset(ptr noundef %0) #12
  br label %55

55:                                               ; preds = %53, %50, %36, %34, %3
  %56 = phi i32 [ %35, %34 ], [ -95, %3 ], [ %54, %53 ], [ -7, %36 ], [ %51, %50 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e3016_config_init(ptr noundef %0) #2 {
  %2 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 512, i16 noundef zeroext 48) #12
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 4
  switch i32 %7, label %19 [
    i32 1315019, label %14
    i32 1315049, label %14
    i32 1315037, label %8
  ]

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i16 4471, i16 4160
  br label %14

14:                                               ; preds = %8, %4, %4
  %15 = phi i16 [ 48, %4 ], [ 48, %4 ], [ %13, %8 ]
  %16 = tail call i32 @phy_write_paged(ptr noundef %0, i32 noundef 3, i32 noundef 16, i16 noundef zeroext %15) #12
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.20) #13
  br label %19

19:                                               ; preds = %18, %14, %4
  %20 = tail call fastcc i32 @marvell_of_reg_init(ptr noundef %0) #12
  br label %21

21:                                               ; preds = %19, %1
  %22 = phi i32 [ %20, %19 ], [ %2, %1 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_aneg_done(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 17) #12
  %7 = icmp slt i32 %6, 0
  %8 = and i32 %6, 2048
  %9 = select i1 %7, i32 %6, i32 %8
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e6390_config_aneg(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_write(ptr noundef %3, i32 noundef %5, i32 noundef 0, i16 noundef zeroext 4416) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  tail call void @usleep_range_state(i32 noundef 300, i32 noundef 400, i32 noundef 2) #12
  %9 = tail call i32 @phy_write_paged(ptr noundef %0, i32 noundef 248, i32 noundef 8, i16 noundef zeroext 54) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = tail call i32 @genphy_soft_reset(ptr noundef %0) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i32 @m88e1510_config_aneg(ptr noundef %0)
  br label %16

16:                                               ; preds = %14, %11, %8, %1
  %17 = phi i32 [ %15, %14 ], [ %12, %11 ], [ %9, %8 ], [ %6, %1 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @marvell_of_reg_init(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %74, label %6

6:                                                ; preds = %1
  %7 = call ptr @of_get_property(ptr noundef nonnull %4, ptr noundef nonnull @.str.21, ptr noundef nonnull %2) #12
  %8 = icmp eq ptr %7, null
  %9 = load i32, ptr %2, align 4
  %10 = icmp ult i32 %9, 16
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %74, label %12

12:                                               ; preds = %6
  %13 = call i32 @phy_save_page(ptr noundef %0) #12
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %71, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr %2, align 4
  %17 = lshr i32 %16, 2
  store i32 %17, ptr %2, align 4
  %18 = icmp ugt i32 %16, 15
  br i1 %18, label %19, label %71

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %21 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  br label %27

22:                                               ; preds = %63
  %23 = add i32 %29, 4
  %24 = load i32, ptr %2, align 4
  %25 = add i32 %24, -3
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %71

27:                                               ; preds = %22, %19
  %28 = phi i32 [ %13, %19 ], [ %51, %22 ]
  %29 = phi i32 [ 0, %19 ], [ %23, %22 ]
  %30 = getelementptr i32, ptr %7, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i32, ptr %30, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i32, ptr %30, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35) #12
  %37 = trunc i32 %36 to i16
  %38 = getelementptr i32, ptr %30, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39) #12
  %41 = and i32 %31, -65536
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %43 = icmp eq i32 %42, %28
  br i1 %43, label %50, label %44

44:                                               ; preds = %27
  %45 = trunc i32 %42 to i16
  %46 = load ptr, ptr %20, align 8
  %47 = load i32, ptr %21, align 8
  %48 = call i32 @__mdiobus_write(ptr noundef %46, i32 noundef %47, i32 noundef 22, i16 noundef zeroext %45) #12
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %71, label %50

50:                                               ; preds = %44, %27
  %51 = phi i32 [ %42, %44 ], [ %28, %27 ]
  %52 = icmp eq i16 %37, 0
  %53 = and i32 %33, -65536
  %54 = call i32 @llvm.bswap.i32(i32 %53)
  br i1 %52, label %63, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr %20, align 8
  %57 = load i32, ptr %21, align 8
  %58 = call i32 @__mdiobus_read(ptr noundef %56, i32 noundef %57, i32 noundef %54) #12
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %55
  %61 = and i32 %36, 65535
  %62 = and i32 %61, %58
  br label %63

63:                                               ; preds = %60, %50
  %64 = phi i32 [ %62, %60 ], [ 0, %50 ]
  %65 = or i32 %64, %40
  %66 = trunc i32 %65 to i16
  %67 = load ptr, ptr %20, align 8
  %68 = load i32, ptr %21, align 8
  %69 = call i32 @__mdiobus_write(ptr noundef %67, i32 noundef %68, i32 noundef %54, i16 noundef zeroext %66) #12
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %22

71:                                               ; preds = %63, %55, %44, %22, %15, %12
  %72 = phi i32 [ 0, %12 ], [ 0, %15 ], [ %69, %22 ], [ %48, %44 ], [ %58, %55 ], [ %69, %63 ]
  %73 = call i32 @phy_restore_page(ptr noundef %0, i32 noundef %13, i32 noundef %72) #12
  br label %74

74:                                               ; preds = %71, %6, %1
  %75 = phi i32 [ %73, %71 ], [ 0, %1 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %75
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_paged(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_save_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_restore_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @marvell_hwmon_is_visible(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #9 {
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.phy_driver, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq i32 %1, 1
  br i1 %9, label %10, label %31

10:                                               ; preds = %4
  switch i32 %2, label %31 [
    i32 1, label %11
    i32 16, label %16
    i32 9, label %21
  ]

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.marvell_hwmon_ops, ptr %8, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, i16 0, i16 292
  br label %31

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.marvell_hwmon_ops, ptr %8, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, i16 0, i16 292
  br label %31

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.marvell_hwmon_ops, ptr %8, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, i16 0, i16 292
  %26 = getelementptr inbounds %struct.marvell_hwmon_ops, ptr %8, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, i16 0, i16 128
  %30 = or i16 %29, %25
  br label %31

31:                                               ; preds = %21, %16, %11, %10, %4
  %32 = phi i16 [ %30, %21 ], [ %20, %16 ], [ %15, %11 ], [ 0, %4 ], [ 0, %10 ]
  ret i16 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_hwmon_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #2 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.phy_driver, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  switch i32 %2, label %27 [
    i32 1, label %12
    i32 9, label %16
    i32 16, label %20
  ]

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.marvell_hwmon_ops, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %24

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.marvell_hwmon_ops, ptr %11, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %24

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.marvell_hwmon_ops, ptr %11, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20, %16, %12
  %25 = phi ptr [ %14, %12 ], [ %18, %16 ], [ %22, %20 ]
  %26 = tail call i32 %25(ptr noundef %7, ptr noundef %4) #12
  br label %27

27:                                               ; preds = %24, %20, %16, %12, %5
  %28 = phi i32 [ -95, %5 ], [ -95, %20 ], [ -95, %16 ], [ -95, %12 ], [ %26, %24 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @marvell_hwmon_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq i32 %2, 9
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.phy_driver, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.marvell_hwmon_ops, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %9
  %18 = tail call i32 %15(ptr noundef %7, i32 noundef %4) #12
  br label %19

19:                                               ; preds = %17, %9, %5
  %20 = phi i32 [ %18, %17 ], [ -95, %9 ], [ -95, %5 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_paged(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @m88e1111_config_init(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -9
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %36

6:                                                ; preds = %1
  %7 = add i32 %3, -10
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds [3 x i16], ptr @switch.table.m88e1111_config_init, i32 0, i32 %7
  %11 = load i16, ptr %10, align 2
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i16 [ %11, %9 ], [ 0, %6 ]
  %14 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 20, i16 noundef zeroext 130, i16 noundef zeroext %13) #12
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %89, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 8
  %21 = tail call i32 @mdiobus_read(ptr noundef %18, i32 noundef %20, i32 noundef 27) #12
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %89, label %23

23:                                               ; preds = %16
  %24 = and i32 %21, 65520
  %25 = and i32 %21, 8192
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 11, i32 3
  %28 = or i32 %27, %24
  %29 = trunc i32 %28 to i16
  %30 = load ptr, ptr %17, align 8
  %31 = load i32, ptr %19, align 8
  %32 = tail call i32 @mdiobus_write(ptr noundef %30, i32 noundef %31, i32 noundef 27, i16 noundef zeroext %29) #12
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %89, label %34

34:                                               ; preds = %23
  %35 = load i32, ptr %2, align 4
  br label %36

36:                                               ; preds = %34, %1
  %37 = phi i32 [ %35, %34 ], [ %3, %1 ]
  %38 = icmp eq i32 %37, 4
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 27, i16 noundef zeroext -24561, i16 noundef zeroext -32764) #12
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %89, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %46 = load i32, ptr %45, align 8
  %47 = tail call i32 @mdiobus_write(ptr noundef %44, i32 noundef %46, i32 noundef 22, i16 noundef zeroext 0) #12
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %89, label %49

49:                                               ; preds = %42
  %50 = load i32, ptr %2, align 4
  br label %51

51:                                               ; preds = %49, %36
  %52 = phi i32 [ %50, %49 ], [ %37, %36 ]
  %53 = icmp eq i32 %52, 13
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 20, i16 noundef zeroext 130, i16 noundef zeroext 0) #12
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %89, label %57

57:                                               ; preds = %54
  %58 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 27, i16 noundef zeroext -24561, i16 noundef zeroext -32761) #12
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %89, label %60

60:                                               ; preds = %57
  %61 = tail call i32 @genphy_soft_reset(ptr noundef %0) #12
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %89, label %63

63:                                               ; preds = %60
  %64 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 27, i16 noundef zeroext -24561, i16 noundef zeroext -32761) #12
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %89, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr %2, align 4
  br label %68

68:                                               ; preds = %66, %51
  %69 = phi i32 [ %67, %66 ], [ %52, %51 ]
  %70 = icmp eq i32 %69, 21
  br i1 %70, label %71, label %84

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %75 = load i32, ptr %74, align 8
  %76 = tail call i32 @mdiobus_read(ptr noundef %73, i32 noundef %75, i32 noundef 27) #12
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %71
  %79 = and i32 %76, 15
  %80 = icmp eq i32 %79, 12
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 27, i16 noundef zeroext 4111, i16 noundef zeroext 4104) #12
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %81, %78, %68
  %85 = tail call fastcc i32 @marvell_of_reg_init(ptr noundef %0)
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = tail call i32 @genphy_soft_reset(ptr noundef %0) #12
  br label %89

89:                                               ; preds = %87, %84, %81, %71, %63, %60, %57, %54, %42, %39, %23, %16, %12
  %90 = phi i32 [ %88, %87 ], [ %32, %23 ], [ %47, %42 ], [ %64, %63 ], [ %85, %84 ], [ %21, %16 ], [ %14, %12 ], [ %40, %39 ], [ %61, %60 ], [ %58, %57 ], [ %55, %54 ], [ %82, %81 ], [ %76, %71 ]
  ret i32 %90
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_changed(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_check_and_restart_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @marvell_config_aneg_fiber(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 4096
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 @genphy_setup_forced(ptr noundef %0) #12
  br label %40

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17
  %10 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  %11 = tail call i32 @__bitmap_and(ptr noundef %9, ptr noundef %9, ptr noundef %10, i32 noundef 92) #12
  %12 = load volatile i32, ptr %9, align 4
  %13 = shl i32 %12, 2
  %14 = and i32 %13, 64
  %15 = load volatile i32, ptr %9, align 4
  %16 = and i32 %15, 32
  %17 = or i32 %16, %14
  %18 = load volatile i32, ptr %9, align 4
  %19 = and i32 %18, 16384
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %8
  %22 = load volatile i32, ptr %9, align 4
  %23 = and i32 %22, 8192
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = or i32 %17, 256
  br label %32

27:                                               ; preds = %21, %8
  %28 = load volatile i32, ptr %9, align 4
  %29 = lshr i32 %28, 6
  %30 = and i32 %29, 128
  %31 = or i32 %30, %17
  br label %32

32:                                               ; preds = %27, %25
  %33 = phi i32 [ %26, %25 ], [ %31, %27 ]
  %34 = trunc i32 %33 to i16
  %35 = tail call i32 @phy_modify_changed(ptr noundef %0, i32 noundef 4, i16 noundef zeroext 480, i16 noundef zeroext %34) #12
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = icmp ne i32 %35, 0
  %39 = tail call i32 @genphy_check_and_restart_aneg(ptr noundef %0, i1 noundef zeroext %38) #12
  br label %40

40:                                               ; preds = %37, %32, %6
  %41 = phi i32 [ %7, %6 ], [ %39, %37 ], [ %35, %32 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_setup_forced(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @marvell_read_status_page(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 8
  %7 = tail call i32 @mdiobus_read(ptr noundef %4, i32 noundef %6, i32 noundef 17) #12
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %81, label %9

9:                                                ; preds = %2
  %10 = icmp eq i32 %1, 1
  br i1 %10, label %11, label %19

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %13 = trunc i32 %7 to i16
  %14 = load i16, ptr %12, align 8
  %15 = shl i16 %13, 3
  %16 = and i16 %15, 8192
  %17 = and i16 %14, -8193
  %18 = or i16 %17, %16
  store i16 %18, ptr %12, align 8
  br label %25

19:                                               ; preds = %9
  %20 = tail call i32 @genphy_update_link(ptr noundef %0) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %81

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %24 = load i16, ptr %23, align 8
  br label %25

25:                                               ; preds = %22, %11
  %26 = phi i16 [ %24, %22 ], [ %18, %11 ]
  %27 = phi i32 [ 0, %22 ], [ 3, %11 ]
  %28 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 18
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %28, i8 0, i32 12, i1 false) #12
  %29 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 11
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 12
  store i32 0, ptr %30, align 8
  %31 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  store i32 -1, ptr %31, align 8
  %32 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  store i32 255, ptr %32, align 4
  %33 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 10
  store i32 %27, ptr %33, align 8
  %34 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %35 = and i16 %26, 4096
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %79, label %37

37:                                               ; preds = %25
  %38 = and i32 %7, 2048
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = and i16 %26, -8193
  store i16 %41, ptr %34, align 8
  br label %81

42:                                               ; preds = %37
  %43 = lshr i32 %7, 13
  %44 = and i32 %43, 1
  store i32 %44, ptr %32, align 4
  %45 = trunc i32 %7 to i16
  %46 = and i16 %45, -16384
  %47 = icmp eq i16 %46, 16384
  %48 = select i1 %47, i32 100, i32 10
  %49 = icmp eq i16 %46, -32768
  %50 = select i1 %49, i32 1000, i32 %48
  store i32 %50, ptr %31, align 8
  br i1 %10, label %55, label %51

51:                                               ; preds = %42
  %52 = tail call i32 @genphy_read_lpa(ptr noundef %0) #12
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %81, label %54

54:                                               ; preds = %51
  tail call void @phy_resolve_aneg_pause(ptr noundef %0) #12
  br label %81

55:                                               ; preds = %42
  %56 = load ptr, ptr %3, align 8
  %57 = load i32, ptr %5, align 8
  %58 = tail call i32 @mdiobus_read(ptr noundef %56, i32 noundef %57, i32 noundef 5) #12
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %81, label %60

60:                                               ; preds = %55
  %61 = load i32, ptr %28, align 4
  %62 = and i32 %61, -49
  %63 = lshr i32 %58, 2
  %64 = and i32 %63, 16
  %65 = and i32 %58, 32
  %66 = or i32 %64, %65
  %67 = or i32 %66, %62
  store i32 %67, ptr %28, align 4
  %68 = load i32, ptr %32, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %81

70:                                               ; preds = %60
  %71 = and i32 %58, 384
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, ptr %29, align 4
  store i32 0, ptr %30, align 8
  br label %81

74:                                               ; preds = %70
  %75 = and i32 %58, 256
  %76 = icmp eq i32 %75, 0
  store i32 1, ptr %29, align 4
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  store i32 1, ptr %30, align 8
  br label %81

78:                                               ; preds = %74
  store i32 0, ptr %30, align 8
  br label %81

79:                                               ; preds = %25
  %80 = tail call i32 @genphy_read_status_fixed(ptr noundef %0) #12
  br label %81

81:                                               ; preds = %79, %78, %77, %73, %60, %55, %54, %51, %40, %19, %2
  %82 = phi i32 [ %7, %2 ], [ %20, %19 ], [ %80, %79 ], [ 0, %40 ], [ %52, %51 ], [ %58, %55 ], [ 0, %60 ], [ 0, %77 ], [ 0, %78 ], [ 0, %73 ], [ 0, %54 ]
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_update_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status_fixed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_lpa(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_resolve_aneg_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_paged_changed(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1121_get_temp(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  store i32 0, ptr %1, align 4
  %3 = tail call i32 @phy_select_page(ptr noundef %0, i32 noundef 6) #12
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 @__mdiobus_read(ptr noundef %7, i32 noundef %9, i32 noundef 26) #12
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %5
  %13 = trunc i32 %10 to i16
  %14 = or i16 %13, 32
  %15 = load ptr, ptr %6, align 8
  %16 = load i32, ptr %8, align 8
  %17 = tail call i32 @__mdiobus_write(ptr noundef %15, i32 noundef %16, i32 noundef 26, i16 noundef zeroext %14) #12
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %12
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #12
  %20 = load ptr, ptr %6, align 8
  %21 = load i32, ptr %8, align 8
  %22 = tail call i32 @__mdiobus_read(ptr noundef %20, i32 noundef %21, i32 noundef 26) #12
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %19
  %25 = trunc i32 %17 to i16
  %26 = and i16 %25, -33
  %27 = load ptr, ptr %6, align 8
  %28 = load i32, ptr %8, align 8
  %29 = tail call i32 @__mdiobus_write(ptr noundef %27, i32 noundef %28, i32 noundef 26, i16 noundef zeroext %26) #12
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = and i32 %22, 31
  %33 = mul nuw nsw i32 %32, 5000
  %34 = add nsw i32 %33, -25000
  store i32 %34, ptr %1, align 4
  br label %35

35:                                               ; preds = %31, %24, %19, %12, %5, %2
  %36 = phi i32 [ 0, %2 ], [ %10, %5 ], [ %17, %12 ], [ %29, %24 ], [ %29, %31 ], [ %22, %19 ]
  %37 = tail call i32 @phy_restore_page(ptr noundef %0, i32 noundef %3, i32 noundef %36) #12
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_select_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_paged(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1510_get_temp(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  store i32 0, ptr %1, align 4
  %3 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 6, i32 noundef 27) #12
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = and i32 %3, 255
  %7 = mul nuw nsw i32 %6, 1000
  %8 = add nsw i32 %7, -25000
  store i32 %8, ptr %1, align 4
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 0, %5 ], [ %3, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1510_get_temp_critical(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  store i32 0, ptr %1, align 4
  %3 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 6, i32 noundef 26) #12
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = lshr i32 %3, 8
  %7 = and i32 %6, 31
  %8 = mul nuw nsw i32 %7, 5000
  %9 = add nsw i32 %8, -25000
  store i32 %9, ptr %1, align 4
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i32 [ 0, %5 ], [ %3, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1510_set_temp_critical(ptr noundef %0, i32 noundef %1) #2 {
  %3 = sdiv i32 %1, 1000
  %4 = icmp sgt i32 %1, 999
  %5 = select i1 %4, i32 2, i32 -2
  %6 = add nsw i32 %5, %3
  %7 = sdiv i32 %6, 5
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 -5)
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 26)
  %10 = trunc i32 %9 to i16
  %11 = shl nsw i16 %10, 8
  %12 = add i16 %11, 1280
  %13 = tail call i32 @phy_modify_paged(ptr noundef %0, i32 noundef 6, i32 noundef 26, i16 noundef zeroext 7936, i16 noundef zeroext %12) #12
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1510_get_temp_alarm(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  store i32 0, ptr %1, align 4
  %3 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 6, i32 noundef 26) #12
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = lshr i32 %3, 6
  %7 = and i32 %6, 1
  store i32 %7, ptr %1, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ 0, %5 ], [ %3, %2 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_sfp_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_sfp_attach(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_sfp_detach(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e1510_sfp_insert(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.27) #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.26) #13
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @m88e1510_sfp_remove(ptr noundef %0) #2 {
  %2 = tail call i32 @phy_select_page(ptr noundef %0, i32 noundef 18) #12
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @__phy_modify(ptr noundef %0, i32 noundef 20, i16 noundef zeroext 7, i16 noundef zeroext 0) #12
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @__phy_modify(ptr noundef %0, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext -32768) #12
  br label %9

9:                                                ; preds = %7, %4, %1
  %10 = phi i32 [ 0, %1 ], [ %5, %4 ], [ %8, %7 ]
  %11 = tail call i32 @phy_restore_page(ptr noundef %0, i32 noundef %2, i32 noundef %10) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @marvell_cable_test_start_common(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 0) #12
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8
  %10 = load i32, ptr %4, align 8
  %11 = tail call i32 @mdiobus_read(ptr noundef %9, i32 noundef %10, i32 noundef 1) #12
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %8
  %14 = and i32 %6, 4096
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 4096, i16 noundef zeroext 0) #12
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @genphy_soft_reset(ptr noundef %0) #12
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19, %13
  %23 = and i32 %11, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @msleep(i32 noundef 1500) #12
  br label %26

26:                                               ; preds = %25, %22, %19, %16, %8, %1
  %27 = phi i32 [ %6, %1 ], [ %11, %8 ], [ %17, %16 ], [ %20, %19 ], [ 0, %25 ], [ 0, %22 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_cable_test_pulse(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_cable_test_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_cable_test_amplitude(ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_cable_test_result(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_cable_test_fault_length(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_config_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_eee(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e6390_get_temp(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  store i32 0, ptr %1, align 4
  %3 = tail call i32 @phy_select_page(ptr noundef %0, i32 noundef 6) #12
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %104, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 @__mdiobus_read(ptr noundef %7, i32 noundef %9, i32 noundef 27) #12
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %104, label %12

12:                                               ; preds = %5
  %13 = trunc i32 %10 to i16
  %14 = and i16 %13, 16383
  %15 = load ptr, ptr %6, align 8
  %16 = load i32, ptr %8, align 8
  %17 = tail call i32 @__mdiobus_write(ptr noundef %15, i32 noundef %16, i32 noundef 27, i16 noundef zeroext %14) #12
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %104, label %19

19:                                               ; preds = %12
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #12
  %20 = load ptr, ptr %6, align 8
  %21 = load i32, ptr %8, align 8
  %22 = tail call i32 @__mdiobus_read(ptr noundef %20, i32 noundef %21, i32 noundef 28) #12
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %104, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %6, align 8
  %26 = load i32, ptr %8, align 8
  %27 = tail call i32 @__mdiobus_read(ptr noundef %25, i32 noundef %26, i32 noundef 28) #12
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %104, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %6, align 8
  %31 = load i32, ptr %8, align 8
  %32 = tail call i32 @__mdiobus_read(ptr noundef %30, i32 noundef %31, i32 noundef 28) #12
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %104, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %6, align 8
  %36 = load i32, ptr %8, align 8
  %37 = tail call i32 @__mdiobus_read(ptr noundef %35, i32 noundef %36, i32 noundef 28) #12
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %104, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %6, align 8
  %41 = load i32, ptr %8, align 8
  %42 = tail call i32 @__mdiobus_read(ptr noundef %40, i32 noundef %41, i32 noundef 28) #12
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %104, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %6, align 8
  %46 = load i32, ptr %8, align 8
  %47 = tail call i32 @__mdiobus_read(ptr noundef %45, i32 noundef %46, i32 noundef 28) #12
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %104, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %6, align 8
  %51 = load i32, ptr %8, align 8
  %52 = tail call i32 @__mdiobus_read(ptr noundef %50, i32 noundef %51, i32 noundef 28) #12
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %104, label %54

54:                                               ; preds = %49
  %55 = load ptr, ptr %6, align 8
  %56 = load i32, ptr %8, align 8
  %57 = tail call i32 @__mdiobus_read(ptr noundef %55, i32 noundef %56, i32 noundef 28) #12
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %104, label %59

59:                                               ; preds = %54
  %60 = load ptr, ptr %6, align 8
  %61 = load i32, ptr %8, align 8
  %62 = tail call i32 @__mdiobus_read(ptr noundef %60, i32 noundef %61, i32 noundef 28) #12
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %104, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr %6, align 8
  %66 = load i32, ptr %8, align 8
  %67 = tail call i32 @__mdiobus_read(ptr noundef %65, i32 noundef %66, i32 noundef 28) #12
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %104, label %69

69:                                               ; preds = %64
  %70 = and i32 %62, 255
  %71 = and i32 %57, 255
  %72 = and i32 %52, 255
  %73 = and i32 %47, 255
  %74 = and i32 %42, 255
  %75 = and i32 %37, 255
  %76 = and i32 %32, 255
  %77 = and i32 %27, 255
  %78 = and i32 %22, 255
  %79 = add nuw nsw i32 %77, %78
  %80 = add nuw nsw i32 %76, %79
  %81 = add nuw nsw i32 %75, %80
  %82 = add nuw nsw i32 %74, %81
  %83 = add nuw nsw i32 %73, %82
  %84 = add nuw nsw i32 %72, %83
  %85 = add nuw nsw i32 %71, %84
  %86 = add nuw nsw i32 %70, %85
  %87 = and i32 %67, 255
  %88 = add nuw nsw i32 %87, %86
  %89 = trunc i32 %88 to i16
  %90 = udiv i16 %89, 10
  %91 = zext i16 %90 to i32
  %92 = mul nuw nsw i32 %91, 1000
  %93 = add nsw i32 %92, -75000
  store i32 %93, ptr %1, align 4
  %94 = load ptr, ptr %6, align 8
  %95 = load i32, ptr %8, align 8
  %96 = tail call i32 @__mdiobus_read(ptr noundef %94, i32 noundef %95, i32 noundef 27) #12
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %69
  %99 = trunc i32 %96 to i16
  %100 = or i16 %99, -16384
  %101 = load ptr, ptr %6, align 8
  %102 = load i32, ptr %8, align 8
  %103 = tail call i32 @__mdiobus_write(ptr noundef %101, i32 noundef %102, i32 noundef 27, i16 noundef zeroext %100) #12
  br label %104

104:                                              ; preds = %98, %69, %64, %59, %54, %49, %44, %39, %34, %29, %24, %19, %12, %5, %2
  %105 = phi i32 [ 0, %2 ], [ %10, %5 ], [ %17, %12 ], [ %96, %69 ], [ %103, %98 ], [ %22, %19 ], [ %27, %24 ], [ %32, %29 ], [ %37, %34 ], [ %42, %39 ], [ %47, %44 ], [ %52, %49 ], [ %57, %54 ], [ %62, %59 ], [ %67, %64 ]
  %106 = tail call i32 @phy_restore_page(ptr noundef %0, i32 noundef %3, i32 noundef %105) #12
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e6393_hwmon_config(ptr noundef %0) #2 {
  %2 = tail call i32 @phy_modify_paged(ptr noundef %0, i32 noundef 6, i32 noundef 28, i16 noundef zeroext -256, i16 noundef zeroext -20736) #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @phy_modify_paged(ptr noundef %0, i32 noundef 6, i32 noundef 27, i16 noundef zeroext -8448, i16 noundef zeroext 17664) #12
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %2, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e6393_get_temp(ptr noundef %0, ptr nocapture noundef %1) #2 {
  store i32 0, ptr %1, align 4
  %3 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 6, i32 noundef 27) #12
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 4
  br label %11

7:                                                ; preds = %2
  %8 = and i32 %3, 255
  %9 = mul nuw nsw i32 %8, 1000
  %10 = add nsw i32 %9, -25000
  br label %11

11:                                               ; preds = %7, %5
  %12 = phi i32 [ %10, %7 ], [ %6, %5 ]
  %13 = phi i32 [ 0, %7 ], [ %3, %5 ]
  %14 = add i32 %12, -50000
  store i32 %14, ptr %1, align 4
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e6393_get_temp_critical(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  store i32 0, ptr %1, align 4
  %3 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 6, i32 noundef 28) #12
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = lshr i32 %3, 8
  %7 = and i32 %6, 255
  %8 = mul nuw nsw i32 %7, 1000
  %9 = add nsw i32 %8, -75000
  store i32 %9, ptr %1, align 4
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i32 [ 0, %5 ], [ %3, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88e6393_set_temp_critical(ptr noundef %0, i32 noundef %1) #2 {
  %3 = sdiv i32 %1, 1000
  %4 = trunc i32 %3 to i16
  %5 = shl i16 %4, 8
  %6 = add i16 %5, 19200
  %7 = tail call i32 @phy_modify_paged(ptr noundef %0, i32 noundef 6, i32 noundef 28, i16 noundef zeroext -256, i16 noundef zeroext %6) #12
  ret i32 %7
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }

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
