; ModuleID = '/llk/IR/drivers/net/phy/micrel.c_pt.bc'
source_filename = "../drivers/net/phy/micrel.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kszphy_type = type { i32, i16, i8, i8, i8 }
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
%struct.kszphy_priv = type { ptr, i32, i8, i8, [2 x i64] }

@__initcall__kmod_micrel__408_1973_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@ksphy_driver = internal global [18 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2234144, ptr @.str, i32 16777200, ptr null, i32 0, ptr @ks8737_type, ptr null, ptr @kszphy_config_init, ptr null, ptr null, ptr @kszphy_suspend, ptr @kszphy_resume, ptr null, ptr null, ptr null, ptr @kszphy_config_intr, ptr @kszphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233685, ptr @.str.1, i32 16777215, ptr null, i32 0, ptr @ksz8021_type, ptr null, ptr @kszphy_config_init, ptr @kszphy_probe, ptr null, ptr @kszphy_suspend, ptr @kszphy_resume, ptr null, ptr null, ptr null, ptr @kszphy_config_intr, ptr @kszphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kszphy_get_sset_count, ptr @kszphy_get_strings, ptr @kszphy_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233686, ptr @.str.2, i32 16777215, ptr null, i32 0, ptr @ksz8021_type, ptr null, ptr @kszphy_config_init, ptr @kszphy_probe, ptr null, ptr @kszphy_suspend, ptr @kszphy_resume, ptr null, ptr null, ptr null, ptr @kszphy_config_intr, ptr @kszphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kszphy_get_sset_count, ptr @kszphy_get_strings, ptr @kszphy_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233616, ptr @.str.3, i32 16777200, ptr null, i32 0, ptr @ksz8041_type, ptr null, ptr @ksz8041_config_init, ptr @kszphy_probe, ptr null, ptr null, ptr null, ptr @ksz8041_config_aneg, ptr null, ptr null, ptr @kszphy_config_intr, ptr @kszphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kszphy_get_sset_count, ptr @kszphy_get_strings, ptr @kszphy_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233655, ptr @.str.4, i32 16777200, ptr null, i32 0, ptr @ksz8041_type, ptr null, ptr @kszphy_config_init, ptr @kszphy_probe, ptr null, ptr @kszphy_suspend, ptr @kszphy_resume, ptr null, ptr null, ptr null, ptr @kszphy_config_intr, ptr @kszphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kszphy_get_sset_count, ptr @kszphy_get_strings, ptr @kszphy_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 0, ptr @.str.5, i32 0, ptr null, i32 0, ptr @ksz8051_type, ptr null, ptr @kszphy_config_init, ptr @kszphy_probe, ptr null, ptr @kszphy_suspend, ptr @kszphy_resume, ptr null, ptr null, ptr null, ptr @kszphy_config_intr, ptr @kszphy_handle_interrupt, ptr null, ptr @ksz8051_match_phy_device, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kszphy_get_sset_count, ptr @kszphy_get_strings, ptr @kszphy_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233882, ptr @.str.6, i32 16777212, ptr null, i32 0, ptr @ksz8041_type, ptr null, ptr @kszphy_config_init, ptr @kszphy_probe, ptr null, ptr @kszphy_suspend, ptr @kszphy_resume, ptr null, ptr null, ptr null, ptr @kszphy_config_intr, ptr @kszphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kszphy_get_sset_count, ptr @kszphy_get_strings, ptr @kszphy_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233696, ptr @.str.7, i32 16777200, ptr null, i32 4, ptr @ksz8081_type, ptr @genphy_soft_reset, ptr @ksz8081_config_init, ptr @kszphy_probe, ptr null, ptr @kszphy_suspend, ptr @kszphy_resume, ptr @ksz8081_config_aneg, ptr null, ptr @ksz8081_read_status, ptr @kszphy_config_intr, ptr @kszphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ksz886x_cable_test_start, ptr null, ptr @ksz886x_cable_test_get_status, ptr @kszphy_get_sset_count, ptr @kszphy_get_strings, ptr @kszphy_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233712, ptr @.str.8, i32 16777200, ptr null, i32 0, ptr null, ptr null, ptr @ksz8061_config_init, ptr null, ptr null, ptr @kszphy_suspend, ptr @kszphy_resume, ptr null, ptr null, ptr null, ptr @kszphy_config_intr, ptr @kszphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233872, ptr @.str.9, i32 1048574, ptr null, i32 0, ptr @ksz9021_type, ptr null, ptr @ksz9021_config_init, ptr @kszphy_probe, ptr @ksz9031_get_features, ptr @kszphy_suspend, ptr @kszphy_resume, ptr null, ptr null, ptr null, ptr @kszphy_config_intr, ptr @kszphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_read_mmd_unsupported, ptr @genphy_write_mmd_unsupported, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kszphy_get_sset_count, ptr @kszphy_get_strings, ptr @kszphy_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233888, ptr @.str.10, i32 16777200, ptr null, i32 0, ptr @ksz9021_type, ptr @genphy_soft_reset, ptr @ksz9031_config_init, ptr @kszphy_probe, ptr @ksz9031_get_features, ptr @kszphy_suspend, ptr @kszphy_resume, ptr null, ptr null, ptr @ksz9031_read_status, ptr @kszphy_config_intr, ptr @kszphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kszphy_get_sset_count, ptr @kszphy_get_strings, ptr @kszphy_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233952, ptr @.str.11, i32 16777200, ptr null, i32 0, ptr @ksz9021_type, ptr @genphy_soft_reset, ptr @lan8814_config_init, ptr @kszphy_probe, ptr null, ptr @genphy_suspend, ptr @kszphy_resume, ptr null, ptr null, ptr @ksz9031_read_status, ptr @lan8814_config_intr, ptr @lan8814_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kszphy_get_sset_count, ptr @kszphy_get_strings, ptr @kszphy_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233968, ptr @.str.12, i32 16777200, ptr null, i32 0, ptr @ksz9021_type, ptr @genphy_soft_reset, ptr @lan8804_config_init, ptr @kszphy_probe, ptr null, ptr @genphy_suspend, ptr @kszphy_resume, ptr null, ptr null, ptr @ksz9031_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kszphy_get_sset_count, ptr @kszphy_get_strings, ptr @kszphy_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233920, ptr @.str.13, i32 16777200, ptr null, i32 0, ptr @ksz9021_type, ptr null, ptr @ksz9131_config_init, ptr @kszphy_probe, ptr null, ptr @kszphy_suspend, ptr @kszphy_resume, ptr null, ptr null, ptr null, ptr @kszphy_config_intr, ptr @kszphy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kszphy_get_sset_count, ptr @kszphy_get_strings, ptr @kszphy_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 946743, ptr @.str.14, i32 16777200, ptr null, i32 0, ptr null, ptr null, ptr @kszphy_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @ksz8873mll_config_aneg, ptr null, ptr @ksz8873mll_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233392, ptr @.str.15, i32 16777200, ptr null, i32 4, ptr null, ptr null, ptr @kszphy_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @ksz886x_config_aneg, ptr null, ptr @ksz886x_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ksz886x_cable_test_start, ptr null, ptr @ksz886x_cable_test_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 0, ptr @.str.16, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @kszphy_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ksz8795_match_phy_device, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2233905, ptr @.str.17, i32 16777200, ptr null, i32 0, ptr null, ptr null, ptr @kszphy_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], align 4
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description409 = internal constant [37 x i8] c"micrel.description=Micrel PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author410 = internal constant [28 x i8] c"micrel.author=David J. Choi\00", section ".modinfo", align 1
@__UNIQUE_ID_file411 = internal constant [35 x i8] c"micrel.file=drivers/net/phy/micrel\00", section ".modinfo", align 1
@__UNIQUE_ID_license412 = internal constant [19 x i8] c"micrel.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"Micrel KS8737\00", align 1
@ks8737_type = internal constant %struct.kszphy_type { i32 0, i16 16384, i8 0, i8 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Micrel KSZ8021 or KSZ8031\00", align 1
@ksz8021_type = internal constant %struct.kszphy_type { i32 31, i16 0, i8 1, i8 1, i8 1 }, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Micrel KSZ8031\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Micrel KSZ8041\00", align 1
@ksz8041_type = internal constant %struct.kszphy_type { i32 30, i16 0, i8 0, i8 0, i8 0 }, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Micrel KSZ8041RNLI\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Micrel KSZ8051\00", align 1
@ksz8051_type = internal constant %struct.kszphy_type { i32 31, i16 0, i8 0, i8 1, i8 0 }, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Micrel KSZ8001 or KS8721\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Micrel KSZ8081 or KSZ8091\00", align 1
@ksz8081_type = internal constant %struct.kszphy_type { i32 31, i16 0, i8 1, i8 1, i8 1 }, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"Micrel KSZ8061\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Micrel KSZ9021 Gigabit PHY\00", align 1
@ksz9021_type = internal constant %struct.kszphy_type { i32 0, i16 16384, i8 0, i8 0, i8 0 }, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"Micrel KSZ9031 Gigabit PHY\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Microchip INDY Gigabit Quad PHY\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Microchip LAN966X Gigabit PHY\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Microchip KSZ9131 Gigabit PHY\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Micrel KSZ8873MLL Switch\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"Micrel KSZ8851 Ethernet MAC or KSZ886X Switch\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Micrel KSZ87XX Switch\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Microchip KSZ9477\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"failed to disable broadcast address\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"failed to disable NAND tree mode\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"failed to set rmii reference clock\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"failed to set led mode\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"micrel,led-mode\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"invalid led mode: 0x%02x\0A\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"rmii-ref\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"micrel,rmii-reference-clock-select-25-mhz\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"Clock rate out of range: %ld\0A\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"micrel,fiber-mode\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"phy_receive_errors\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"phy_idle_errors\00", align 1
@ksz886x_cable_test_one_pair.ethtool_pair = internal unnamed_addr constant [2 x i32] [i32 0, i32 1], align 4
@.str.30 = private unnamed_addr constant [15 x i8] c"%s failed: %d\0A\00", align 1
@__func__.ksz886x_cable_test_wait_for_completion = private unnamed_addr constant [39 x i8] c"ksz886x_cable_test_wait_for_completion\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"txen-skew-ps\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"txc-skew-ps\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"rxdv-skew-ps\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"rxc-skew-ps\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"rxd0-skew-ps\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"rxd1-skew-ps\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"rxd2-skew-ps\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"rxd3-skew-ps\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"txd0-skew-ps\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"txd1-skew-ps\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"txd2-skew-ps\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"txd3-skew-ps\00", align 1
@ksz9031_config_init.clk_skews = internal global [2 x ptr] [ptr @.str.34, ptr @.str.32], align 4
@ksz9031_config_init.rx_data_skews = internal global [4 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], align 4
@ksz9031_config_init.tx_data_skews = internal global [4 x ptr] [ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], align 4
@ksz9031_config_init.control_skews = internal global [2 x ptr] [ptr @.str.31, ptr @.str.33], align 4
@.str.43 = private unnamed_addr constant [59 x i8] c"*-skew-ps values should be used only with RGMII PHY modes\0A\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"micrel,force-master\00", align 1
@.str.45 = private unnamed_addr constant [40 x i8] c"failed to force the phy to master mode\0A\00", align 1
@__const.ksz9031_of_load_skew_values.val = private unnamed_addr constant [4 x i32] [i32 -1, i32 -2, i32 -3, i32 -4], align 4
@.str.46 = private unnamed_addr constant [40 x i8] c"Error: phy_write has returned error %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"rxc-skew-psec\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"txc-skew-psec\00", align 1
@__const.ksz9131_config_init.clk_skews = private unnamed_addr constant [2 x ptr] [ptr @.str.47, ptr @.str.48], align 8
@.str.49 = private unnamed_addr constant [15 x i8] c"rxd0-skew-psec\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"rxd1-skew-psec\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"rxd2-skew-psec\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"rxd3-skew-psec\00", align 1
@__const.ksz9131_config_init.rx_data_skews = private unnamed_addr constant [4 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], align 4
@.str.53 = private unnamed_addr constant [15 x i8] c"txd0-skew-psec\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"txd1-skew-psec\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"txd2-skew-psec\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"txd3-skew-psec\00", align 1
@__const.ksz9131_config_init.tx_data_skews = private unnamed_addr constant [4 x ptr] [ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], align 4
@.str.57 = private unnamed_addr constant [15 x i8] c"txen-skew-psec\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"rxdv-skew-psec\00", align 1
@__const.ksz9131_config_init.control_skews = private unnamed_addr constant [2 x ptr] [ptr @.str.57, ptr @.str.58], align 8
@__const.ksz9131_of_load_skew_values.val = private unnamed_addr constant [4 x i32] [i32 -701, i32 -702, i32 -703, i32 -704], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author410, ptr @__UNIQUE_ID_description409, ptr @__UNIQUE_ID_file411, ptr @__UNIQUE_ID_license412, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_micrel__408_1973_phy_module_init6, ptr @phy_module_exit], section "llvm.metadata"
@switch.table.ksz8081_config_aneg = private unnamed_addr constant [3 x i16] [i16 -24576, i16 -8192, i16 -32768], align 2
@switch.table.ksz9031_config_init = private unnamed_addr constant [4 x i16] [i16 480, i16 992, i16 480, i16 992], align 2
@switch.table.ksz9031_config_init.59 = private unnamed_addr constant [4 x i16] [i16 0, i16 25, i16 25, i16 0], align 2
@switch.table.ksz9031_config_init.60 = private unnamed_addr constant [4 x i16] [i16 7, i16 0, i16 7, i16 0], align 2
@switch.table.ksz9031_config_init.61 = private unnamed_addr constant [4 x i16] [i16 12, i16 7, i16 7, i16 12], align 2
@switch.table.ksz9131_config_init = private unnamed_addr constant [4 x i16] [i16 4096, i16 0, i16 0, i16 4096], align 2
@switch.table.ksz9131_config_init.62 = private unnamed_addr constant [4 x i16] [i16 4096, i16 0, i16 4096, i16 0], align 2
@switch.table.ksz886x_config_aneg = private unnamed_addr constant [3 x i16] [i16 40, i16 56, i16 32], align 2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" {
  %1 = tail call i32 @phy_drivers_register(ptr noundef nonnull @ksphy_driver, i32 noundef 18, ptr noundef null) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" {
  tail call void @phy_drivers_unregister(ptr noundef nonnull @ksphy_driver, i32 noundef 18) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kszphy_config_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.kszphy_type, ptr %6, i32 0, i32 2
  %8 = load i8, ptr %7, align 2, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 8
  %15 = tail call i32 @mdiobus_read(ptr noundef %12, i32 noundef %14, i32 noundef 22) #11
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = trunc i32 %15 to i16
  %19 = or i16 %18, 512
  %20 = load ptr, ptr %11, align 8
  %21 = load i32, ptr %13, align 8
  %22 = tail call i32 @mdiobus_write(ptr noundef %20, i32 noundef %21, i32 noundef 22, i16 noundef zeroext %19) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17, %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.18) #12
  br label %25

25:                                               ; preds = %24, %17, %5
  %26 = getelementptr inbounds %struct.kszphy_type, ptr %6, i32 0, i32 3
  %27 = load i8, ptr %26, align 1, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %33 = load i32, ptr %32, align 8
  %34 = tail call i32 @mdiobus_read(ptr noundef %31, i32 noundef %33, i32 noundef 22) #11
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %29
  %37 = and i32 %34, 32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %36
  %40 = trunc i32 %34 to i16
  %41 = and i16 %40, -33
  %42 = load ptr, ptr %30, align 8
  %43 = load i32, ptr %32, align 8
  %44 = tail call i32 @mdiobus_write(ptr noundef %42, i32 noundef %43, i32 noundef 22, i16 noundef zeroext %41) #11
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39, %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.19) #12
  br label %47

47:                                               ; preds = %46, %39, %36, %25
  %48 = tail call fastcc i32 @kszphy_config_reset(ptr noundef %0)
  br label %49

49:                                               ; preds = %47, %1
  %50 = phi i32 [ %48, %47 ], [ 0, %1 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kszphy_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 21
  %3 = load i32, ptr %2, align 4
  %4 = icmp ult i32 %3, -2
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 32767
  store i16 %8, ptr %6, align 8
  %9 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.phy_driver, ptr %10, i32 0, i32 16
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = tail call i32 %12(ptr noundef %0) #11
  br label %16

16:                                               ; preds = %14, %5, %1
  %17 = tail call i32 @genphy_suspend(ptr noundef %0) #11
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kszphy_resume(ptr noundef %0) #2 {
  %2 = tail call i32 @genphy_resume(ptr noundef %0) #11
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %3 = tail call fastcc i32 @kszphy_config_reset(ptr noundef %0)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 21
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, -2
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %11 = load i16, ptr %10, align 8
  %12 = or i16 %11, -32768
  store i16 %12, ptr %10, align 8
  %13 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.phy_driver, ptr %14, i32 0, i32 16
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %9
  %19 = tail call i32 %16(ptr noundef %0) #11
  br label %20

20:                                               ; preds = %18, %9, %5, %1
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kszphy_config_intr(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.kszphy_type, ptr %5, i32 0, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = zext i16 %9 to i32
  %13 = xor i32 %12, -1
  br label %14

14:                                               ; preds = %11, %7, %1
  %15 = phi i32 [ %13, %11 ], [ -513, %7 ], [ -513, %1 ]
  %16 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %19 = load i32, ptr %18, align 8
  %20 = tail call i32 @mdiobus_read(ptr noundef %17, i32 noundef %19, i32 noundef 31) #11
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %49, label %22

22:                                               ; preds = %14
  %23 = and i32 %20, %15
  %24 = trunc i32 %23 to i16
  %25 = load ptr, ptr %16, align 8
  %26 = load i32, ptr %18, align 8
  %27 = tail call i32 @mdiobus_write(ptr noundef %25, i32 noundef %26, i32 noundef 31, i16 noundef zeroext %24) #11
  %28 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %29 = load i16, ptr %28, align 8
  %30 = icmp slt i16 %29, 0
  %31 = load ptr, ptr %16, align 8
  %32 = load i32, ptr %18, align 8
  br i1 %30, label %33, label %41

33:                                               ; preds = %22
  %34 = tail call i32 @mdiobus_read(ptr noundef %31, i32 noundef %32, i32 noundef 27) #11
  %35 = tail call i32 @llvm.smin.i32(i32 %34, i32 0) #11
  %36 = icmp sgt i32 %34, -1
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load ptr, ptr %16, align 8
  %39 = load i32, ptr %18, align 8
  %40 = tail call i32 @mdiobus_write(ptr noundef %38, i32 noundef %39, i32 noundef 27, i16 noundef zeroext 1280) #11
  br label %49

41:                                               ; preds = %22
  %42 = tail call i32 @mdiobus_write(ptr noundef %31, i32 noundef %32, i32 noundef 27, i16 noundef zeroext 0) #11
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load ptr, ptr %16, align 8
  %46 = load i32, ptr %18, align 8
  %47 = tail call i32 @mdiobus_read(ptr noundef %45, i32 noundef %46, i32 noundef 27) #11
  %48 = tail call i32 @llvm.smin.i32(i32 %47, i32 0) #11
  br label %49

49:                                               ; preds = %44, %41, %37, %33, %14
  %50 = phi i32 [ %20, %14 ], [ %35, %33 ], [ %42, %41 ], [ %40, %37 ], [ %48, %44 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kszphy_handle_interrupt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 27) #11
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @phy_error(ptr noundef %0) #11
  br label %13

9:                                                ; preds = %1
  %10 = and i32 %6, 5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @phy_trigger_machine(ptr noundef %0) #11
  br label %13

13:                                               ; preds = %12, %9, %8
  %14 = phi i32 [ 0, %8 ], [ 1, %12 ], [ 0, %9 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kszphy_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 32, i32 noundef 3520) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %62, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  store ptr %8, ptr %11, align 8
  store ptr %5, ptr %8, align 8
  %12 = load i32, ptr %5, align 4
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.kszphy_priv, ptr %8, i32 0, i32 1
  br i1 %13, label %22, label %15

15:                                               ; preds = %10
  %16 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.22, ptr noundef %14, i32 noundef 1, i32 noundef 0) #11
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, ptr %14, align 4
  %20 = icmp sgt i32 %19, 3
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %19) #12
  br label %22

22:                                               ; preds = %21, %15, %10
  store i32 -1, ptr %14, align 4
  br label %23

23:                                               ; preds = %22, %18
  %24 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.24) #11
  %25 = icmp eq ptr %24, null
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  %27 = or i1 %25, %26
  br i1 %27, label %48, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @clk_get_rate(ptr noundef nonnull %24) #11
  %30 = getelementptr inbounds %struct.kszphy_type, ptr %5, i32 0, i32 4
  %31 = load i8, ptr %30, align 4, !range !8
  %32 = getelementptr inbounds %struct.kszphy_priv, ptr %8, i32 0, i32 2
  store i8 %31, ptr %32, align 8
  %33 = tail call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.25, ptr noundef null) #11
  %34 = icmp ne ptr %33, null
  %35 = add i32 %29, -24500001
  %36 = icmp ult i32 %35, 999999
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = zext i1 %34 to i8
  %39 = getelementptr inbounds %struct.kszphy_priv, ptr %8, i32 0, i32 3
  store i8 %38, ptr %39, align 1
  br label %48

40:                                               ; preds = %28
  %41 = add i32 %29, -49500001
  %42 = icmp ult i32 %41, 999999
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = xor i1 %34, true
  %45 = getelementptr inbounds %struct.kszphy_priv, ptr %8, i32 0, i32 3
  %46 = zext i1 %44 to i8
  store i8 %46, ptr %45, align 1
  br label %48

47:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %29) #12
  br label %62

48:                                               ; preds = %43, %37, %23
  %49 = load ptr, ptr %6, align 8
  %50 = tail call ptr @of_find_property(ptr noundef %49, ptr noundef nonnull @.str.27, ptr noundef null) #11
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 10
  store i32 3, ptr %53, align 8
  br label %54

54:                                               ; preds = %52, %48
  %55 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 6
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.kszphy_priv, ptr %8, i32 0, i32 2
  store i8 1, ptr %60, align 8
  %61 = getelementptr inbounds %struct.kszphy_priv, ptr %8, i32 0, i32 3
  store i8 1, ptr %61, align 1
  br label %62

62:                                               ; preds = %59, %54, %47, %1
  %63 = phi i32 [ -12, %1 ], [ -22, %47 ], [ 0, %59 ], [ 0, %54 ]
  ret i32 %63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @kszphy_get_sset_count(ptr nocapture noundef readnone %0) #3 {
  ret i32 2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kszphy_get_strings(ptr nocapture noundef readnone %0, ptr noundef %1) #4 {
  %3 = tail call i32 @strlcpy(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef 32) #11
  %4 = getelementptr i8, ptr %1, i32 32
  %5 = tail call i32 @strlcpy(ptr noundef %4, ptr noundef nonnull @.str.29, i32 noundef 32) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kszphy_get_stats(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %5 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i32, ptr %6, align 8
  %10 = tail call i32 @mdiobus_read(ptr noundef %8, i32 noundef %9, i32 noundef 21) #11
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = and i32 %10, 65535
  %14 = zext i32 %13 to i64
  %15 = getelementptr %struct.kszphy_priv, ptr %7, i32 0, i32 4, i32 0
  %16 = load i64, ptr %15, align 8
  %17 = add i64 %16, %14
  store i64 %17, ptr %15, align 8
  br label %18

18:                                               ; preds = %12, %3
  %19 = phi i64 [ %17, %12 ], [ -1, %3 ]
  store i64 %19, ptr %2, align 8
  %20 = load ptr, ptr %4, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = load i32, ptr %6, align 8
  %23 = tail call i32 @mdiobus_read(ptr noundef %21, i32 noundef %22, i32 noundef 10) #11
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = and i32 %23, 255
  %27 = zext i32 %26 to i64
  %28 = getelementptr %struct.kszphy_priv, ptr %20, i32 0, i32 4, i32 1
  %29 = load i64, ptr %28, align 8
  %30 = add i64 %29, %27
  store i64 %30, ptr %28, align 8
  br label %31

31:                                               ; preds = %25, %18
  %32 = phi i64 [ %30, %25 ], [ -1, %18 ]
  %33 = getelementptr i64, ptr %2, i32 1
  store i64 %32, ptr %33, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ksz8041_config_init(ptr noundef %0) #2 {
  %2 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false)
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.27, ptr noundef null) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = or i32 %9, 2
  store i32 %10, ptr %8, align 8
  store i32 12, ptr %2, align 4
  %11 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  %12 = call i32 @__bitmap_and(ptr noundef %11, ptr noundef %11, ptr noundef nonnull %2, i32 noundef 92) #11
  %13 = load i32, ptr %11, align 4
  %14 = or i32 %13, 1024
  store i32 %14, ptr %11, align 4
  %15 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17
  %16 = call i32 @__bitmap_and(ptr noundef %15, ptr noundef %15, ptr noundef nonnull %2, i32 noundef 92) #11
  %17 = load i32, ptr %15, align 4
  %18 = or i32 %17, 1024
  store i32 %18, ptr %15, align 4
  %19 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, -4097
  store i16 %21, ptr %19, align 8
  br label %22

22:                                               ; preds = %7, %1
  %23 = call i32 @kszphy_config_init(ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #11
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ksz8041_config_aneg(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  store i32 100, ptr %7, align 8
  br label %10

8:                                                ; preds = %1
  %9 = tail call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext false) #11
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ 0, %6 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ksz8051_match_phy_device(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 16777200
  %5 = icmp eq i32 %4, 2233680
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 @mdiobus_read(ptr noundef %8, i32 noundef %10, i32 noundef 1) #11
  %12 = icmp slt i32 %11, 0
  %13 = and i32 %11, 1
  %14 = select i1 %12, i32 %11, i32 %13
  br label %15

15:                                               ; preds = %6, %1
  %16 = phi i32 [ 0, %1 ], [ %14, %6 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ksz8081_config_init(ptr noundef %0) #2 {
  %2 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 22, i16 noundef zeroext -32768, i16 noundef zeroext 0) #11
  %3 = tail call i32 @kszphy_config_init(ptr noundef %0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ksz8081_config_aneg(ptr noundef %0) #2 {
  %2 = tail call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext false) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 35
  %6 = load i8, ptr %5, align 1
  %7 = add i8 %6, -1
  %8 = icmp ult i8 %7, 3
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = sext i8 %7 to i32
  %11 = getelementptr inbounds [3 x i16], ptr @switch.table.ksz8081_config_aneg, i32 0, i32 %10
  %12 = load i16, ptr %11, align 2
  %13 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 31, i16 noundef zeroext -8192, i16 noundef zeroext %12) #11
  br label %14

14:                                               ; preds = %9, %4, %1
  %15 = phi i32 [ %2, %1 ], [ %13, %9 ], [ 0, %4 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ksz8081_read_status(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 31) #11
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %1
  %9 = and i32 %6, 8192
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = and i32 %6, 16384
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 35
  br i1 %13, label %16, label %15

15:                                               ; preds = %11
  store i8 2, ptr %14, align 1
  br label %19

16:                                               ; preds = %11
  store i8 1, ptr %14, align 1
  br label %19

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 35
  store i8 3, ptr %18, align 1
  br label %19

19:                                               ; preds = %17, %16, %15
  %20 = load ptr, ptr %2, align 8
  %21 = load i32, ptr %4, align 8
  %22 = tail call i32 @mdiobus_read(ptr noundef %20, i32 noundef %21, i32 noundef 30) #11
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = and i32 %22, 16
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 34
  %28 = select i1 %26, i8 2, i8 1
  store i8 %28, ptr %27, align 8
  %29 = tail call i32 @genphy_read_status(ptr noundef %0) #11
  br label %30

30:                                               ; preds = %24, %19, %1
  %31 = phi i32 [ %29, %24 ], [ %22, %19 ], [ %6, %1 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ksz886x_cable_test_start(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 12288, i16 noundef zeroext 0) #11
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ -95, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ksz886x_cable_test_get_status(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 3, ptr %3, align 4
  store i8 0, ptr %1, align 1
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  br label %7

7:                                                ; preds = %108, %2
  %8 = phi i32 [ 0, %2 ], [ %105, %108 ]
  %9 = phi i32 [ 20, %2 ], [ %10, %108 ]
  %10 = add nsw i32 %9, -1
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %111, label %12

12:                                               ; preds = %7
  %13 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 4, i32 noundef 0) #11
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %104

15:                                               ; preds = %99, %12
  %16 = phi i32 [ %102, %99 ], [ %13, %12 ]
  %17 = icmp eq i32 %16, 0
  %18 = load i32, ptr %4, align 4
  %19 = and i32 %18, 16777200
  switch i32 %19, label %113 [
    i32 2233696, label %20
    i32 2233392, label %23
  ]

20:                                               ; preds = %15
  %21 = select i1 %17, i16 -24576, i16 -8192
  %22 = call i32 @phy_modify(ptr noundef %0, i32 noundef 31, i16 noundef zeroext -8192, i16 noundef zeroext %21) #11
  br label %26

23:                                               ; preds = %15
  %24 = select i1 %17, i16 40, i16 56
  %25 = call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 56, i16 noundef zeroext %24) #11
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i32 [ %22, %20 ], [ %25, %23 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %92

29:                                               ; preds = %26
  %30 = load ptr, ptr %5, align 8
  %31 = load i32, ptr %6, align 8
  %32 = call i32 @mdiobus_write(ptr noundef %30, i32 noundef %31, i32 noundef 29, i16 noundef zeroext -32768) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %92

34:                                               ; preds = %29
  %35 = call i64 @ktime_get() #11
  %36 = add i64 %35, 100000000
  call void @usleep_range_state(i32 noundef 7501, i32 noundef 30000, i32 noundef 2) #11
  %37 = load ptr, ptr %5, align 8
  %38 = load i32, ptr %6, align 8
  %39 = call i32 @mdiobus_read(ptr noundef %37, i32 noundef %38, i32 noundef 29) #11
  %40 = and i32 %39, -2147450880
  %41 = icmp eq i32 %40, 32768
  br i1 %41, label %42, label %56

42:                                               ; preds = %50, %34
  %43 = call i64 @ktime_get() #11
  %44 = icmp sgt i64 %43, %36
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load ptr, ptr %5, align 8
  %47 = load i32, ptr %6, align 8
  %48 = call i32 @mdiobus_read(ptr noundef %46, i32 noundef %47, i32 noundef 29) #11
  %49 = and i32 %48, -2147450880
  br label %56

50:                                               ; preds = %42
  call void @usleep_range_state(i32 noundef 7501, i32 noundef 30000, i32 noundef 2) #11
  %51 = load ptr, ptr %5, align 8
  %52 = load i32, ptr %6, align 8
  %53 = call i32 @mdiobus_read(ptr noundef %51, i32 noundef %52, i32 noundef 29) #11
  %54 = and i32 %53, -2147450880
  %55 = icmp eq i32 %54, 32768
  br i1 %55, label %42, label %56

56:                                               ; preds = %50, %45, %34
  %57 = phi i32 [ %40, %34 ], [ %49, %45 ], [ %54, %50 ]
  %58 = phi i32 [ %39, %34 ], [ %48, %45 ], [ %53, %50 ]
  %59 = icmp slt i32 %58, 0
  %60 = icmp eq i32 %57, 32768
  %61 = select i1 %60, i32 -110, i32 0
  %62 = select i1 %59, i32 %58, i32 %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.ksz886x_cable_test_wait_for_completion, i32 noundef %62) #12
  br label %92

65:                                               ; preds = %56
  %66 = load ptr, ptr %5, align 8
  %67 = load i32, ptr %6, align 8
  %68 = call i32 @mdiobus_read(ptr noundef %66, i32 noundef %67, i32 noundef 29) #11
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %92, label %70

70:                                               ; preds = %65
  %71 = and i32 %68, 24576
  %72 = icmp eq i32 %71, 24576
  br i1 %72, label %99, label %73

73:                                               ; preds = %70
  %74 = getelementptr [2 x i32], ptr @ksz886x_cable_test_one_pair.ethtool_pair, i32 0, i32 %16
  %75 = load i32, ptr %74, align 4
  %76 = trunc i32 %75 to i8
  %77 = lshr i32 %68, 13
  %78 = and i32 %77, 3
  %79 = icmp eq i32 %78, 3
  %80 = trunc i32 %78 to i8
  %81 = add nuw nsw i8 %80, 1
  %82 = select i1 %79, i8 0, i8 %81
  %83 = call i32 @ethnl_cable_test_result(ptr noundef %0, i8 noundef zeroext %76, i8 noundef zeroext %82) #11
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %73
  %86 = add nsw i32 %78, -1
  %87 = icmp ult i32 %86, 2
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = and i32 %68, 511
  %90 = mul nuw nsw i32 %89, 40
  %91 = call i32 @ethnl_cable_test_fault_length(ptr noundef %0, i8 noundef zeroext %76, i32 noundef %90) #11
  br label %92

92:                                               ; preds = %88, %73, %65, %64, %29, %26
  %93 = phi i32 [ %91, %88 ], [ %27, %26 ], [ %32, %29 ], [ %62, %64 ], [ %68, %65 ], [ %83, %73 ]
  %94 = icmp eq i32 %93, -11
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = icmp slt i32 %93, 0
  br i1 %96, label %113, label %97

97:                                               ; preds = %95, %85
  %98 = phi i32 [ %93, %95 ], [ 0, %85 ]
  call void @_clear_bit(i32 noundef %16, ptr noundef nonnull %3) #11
  br label %99

99:                                               ; preds = %97, %92, %70
  %100 = phi i32 [ -11, %92 ], [ %98, %97 ], [ -11, %70 ]
  %101 = add i32 %16, 1
  %102 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 4, i32 noundef %101) #11
  %103 = icmp slt i32 %102, 4
  br i1 %103, label %15, label %104

104:                                              ; preds = %99, %12
  %105 = phi i32 [ %8, %12 ], [ %100, %99 ]
  %106 = load i32, ptr %3, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  call void @msleep(i32 noundef 2) #11
  %109 = load i32, ptr %3, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %7

111:                                              ; preds = %108, %104, %7
  %112 = phi i32 [ %105, %108 ], [ %8, %7 ], [ %105, %104 ]
  store i8 1, ptr %1, align 1
  br label %113

113:                                              ; preds = %111, %95, %15
  %114 = phi i32 [ %112, %111 ], [ -19, %15 ], [ %93, %95 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ksz8061_config_init(ptr noundef %0) #2 {
  %2 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 1, i32 noundef 2, i16 noundef zeroext -18918) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @kszphy_config_init(ptr noundef %0)
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %2, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ksz9021_config_init(ptr nocapture noundef readonly %0) #2 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %7, %2 ]
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %5, null
  %9 = icmp ne ptr %7, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %2, label %11

11:                                               ; preds = %2
  br i1 %8, label %13, label %12

12:                                               ; preds = %11
  tail call fastcc void @ksz9021_load_values_from_of(ptr noundef %0, ptr noundef nonnull %5, i16 noundef zeroext 260, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34)
  tail call fastcc void @ksz9021_load_values_from_of(ptr noundef %0, ptr noundef nonnull %5, i16 noundef zeroext 261, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38)
  tail call fastcc void @ksz9021_load_values_from_of(ptr noundef %0, ptr noundef nonnull %5, i16 noundef zeroext 262, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42)
  br label %13

13:                                               ; preds = %12, %11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ksz9031_get_features(ptr noundef %0) #2 {
  %2 = tail call i32 @genphy_read_abilities(ptr noundef %0) #11
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, -24577
  %8 = or i32 %7, 8192
  store i32 %8, ptr %5, align 4
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i32 [ 0, %4 ], [ %2, %1 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_mmd_unsupported(ptr noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_write_mmd_unsupported(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ksz9031_config_init(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 28, i32 noundef 35) #11
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %91, label %5

5:                                                ; preds = %1
  %6 = trunc i32 %3 to i16
  %7 = or i16 %6, 1
  %8 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 28, i32 noundef 35, i16 noundef zeroext %7) #11
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %91, label %10

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %15, %10 ], [ %0, %5 ]
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %13, null
  %17 = icmp ne ptr %15, null
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %10, label %19

19:                                               ; preds = %10
  br i1 %16, label %81, label %20

20:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  store i8 0, ptr %2, align 1
  %21 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, -9
  %24 = icmp ult i32 %23, 4
  br i1 %24, label %25, label %53

25:                                               ; preds = %20
  %26 = add i32 %22, -9
  %27 = icmp ult i32 %26, 4
  br i1 %27, label %28, label %53

28:                                               ; preds = %25
  %29 = getelementptr inbounds [4 x i16], ptr @switch.table.ksz9031_config_init, i32 0, i32 %26
  %30 = load i16, ptr %29, align 2
  %31 = getelementptr inbounds [4 x i16], ptr @switch.table.ksz9031_config_init.59, i32 0, i32 %26
  %32 = load i16, ptr %31, align 2
  %33 = getelementptr inbounds [4 x i16], ptr @switch.table.ksz9031_config_init.60, i32 0, i32 %26
  %34 = load i16, ptr %33, align 2
  %35 = getelementptr inbounds [4 x i16], ptr @switch.table.ksz9031_config_init.61, i32 0, i32 %26
  %36 = load i16, ptr %35, align 2
  %37 = shl nuw nsw i16 %36, 4
  %38 = or i16 %37, %34
  %39 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 2, i32 noundef 4, i16 noundef zeroext %38) #11
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %78, label %41

41:                                               ; preds = %28
  %42 = mul nuw i16 %36, 4369
  %43 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 2, i32 noundef 5, i16 noundef zeroext %42) #11
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %78, label %45

45:                                               ; preds = %41
  %46 = mul nuw nsw i16 %34, 4369
  %47 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 2, i32 noundef 6, i16 noundef zeroext %46) #11
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %78, label %49

49:                                               ; preds = %45
  %50 = or i16 %32, %30
  %51 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 2, i32 noundef 8, i16 noundef zeroext %50) #11
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %78, label %53

53:                                               ; preds = %49, %25, %20
  call fastcc void @ksz9031_of_load_skew_values(ptr noundef %0, ptr noundef nonnull %13, i16 noundef zeroext 8, i32 noundef 5, ptr noundef nonnull @ksz9031_config_init.clk_skews, i8 noundef zeroext 2, ptr noundef nonnull %2)
  call fastcc void @ksz9031_of_load_skew_values(ptr noundef %0, ptr noundef nonnull %13, i16 noundef zeroext 4, i32 noundef 4, ptr noundef nonnull @ksz9031_config_init.control_skews, i8 noundef zeroext 2, ptr noundef nonnull %2)
  call fastcc void @ksz9031_of_load_skew_values(ptr noundef %0, ptr noundef nonnull %13, i16 noundef zeroext 5, i32 noundef 4, ptr noundef nonnull @ksz9031_config_init.rx_data_skews, i8 noundef zeroext 4, ptr noundef nonnull %2)
  call fastcc void @ksz9031_of_load_skew_values(ptr noundef %0, ptr noundef nonnull %13, i16 noundef zeroext 6, i32 noundef 4, ptr noundef nonnull @ksz9031_config_init.tx_data_skews, i8 noundef zeroext 4, ptr noundef nonnull %2)
  %54 = load i8, ptr %2, align 1, !range !8
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr %21, align 4
  %58 = add i32 %57, -9
  %59 = icmp ult i32 %58, 4
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.43) #12
  br label %61

61:                                               ; preds = %60, %56, %53
  %62 = tail call ptr @of_find_property(ptr noundef nonnull %13, ptr noundef nonnull @.str.44, ptr noundef null) #11
  %63 = icmp eq ptr %62, null
  br i1 %63, label %80, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %68 = load i32, ptr %67, align 8
  %69 = tail call i32 @mdiobus_read(ptr noundef %66, i32 noundef %68, i32 noundef 9) #11
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %89, label %71

71:                                               ; preds = %64
  %72 = trunc i32 %69 to i16
  %73 = or i16 %72, 6144
  %74 = load ptr, ptr %65, align 8
  %75 = load i32, ptr %67, align 8
  %76 = tail call i32 @mdiobus_write(ptr noundef %74, i32 noundef %75, i32 noundef 9, i16 noundef zeroext %73) #11
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %89, label %80

78:                                               ; preds = %49, %45, %41, %28
  %79 = phi i32 [ %51, %49 ], [ %47, %45 ], [ %43, %41 ], [ %39, %28 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  br label %91

80:                                               ; preds = %71, %61
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  br label %81

81:                                               ; preds = %80, %19
  %82 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 0, i32 noundef 4, i16 noundef zeroext 6) #11
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 0, i32 noundef 3, i16 noundef zeroext 6784) #11
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = tail call i32 @genphy_restart_aneg(ptr noundef %0) #11
  br label %91

89:                                               ; preds = %71, %64
  %90 = phi i32 [ %76, %71 ], [ %69, %64 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.45) #12
  br label %91

91:                                               ; preds = %89, %87, %84, %81, %78, %5, %1
  %92 = phi i32 [ %90, %89 ], [ %8, %5 ], [ %79, %78 ], [ %88, %87 ], [ %82, %81 ], [ %85, %84 ], [ %3, %1 ]
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ksz9031_read_status(ptr noundef %0) #2 {
  %2 = tail call i32 @genphy_read_status(ptr noundef %0) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %30

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = tail call i32 @mdiobus_read(ptr noundef %6, i32 noundef %8, i32 noundef 10) #11
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 255
  br i1 %11, label %12, label %30

12:                                               ; preds = %4
  %13 = tail call i32 @phy_init_hw(ptr noundef %0) #11
  %14 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, -8193
  store i16 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.phy_driver, ptr %18, i32 0, i32 16
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 21
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %24, -2
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = tail call i32 %20(ptr noundef %0) #11
  br label %28

28:                                               ; preds = %26, %22, %12
  %29 = tail call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext false) #11
  br label %30

30:                                               ; preds = %28, %4, %1
  %31 = phi i32 [ %29, %28 ], [ %2, %1 ], [ 0, %4 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan8814_config_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_write(ptr noundef %3, i32 noundef %5, i32 noundef 22, i16 noundef zeroext 4) #11
  %7 = load ptr, ptr %2, align 8
  %8 = load i32, ptr %4, align 8
  %9 = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %8, i32 noundef 23, i16 noundef zeroext 67) #11
  %10 = load ptr, ptr %2, align 8
  %11 = load i32, ptr %4, align 8
  %12 = tail call i32 @mdiobus_write(ptr noundef %10, i32 noundef %11, i32 noundef 22, i16 noundef zeroext 16388) #11
  %13 = load ptr, ptr %2, align 8
  %14 = load i32, ptr %4, align 8
  %15 = tail call i32 @mdiobus_read(ptr noundef %13, i32 noundef %14, i32 noundef 23) #11
  %16 = trunc i32 %15 to i16
  %17 = or i16 %16, 1
  tail call fastcc void @lanphy_write_page_reg(ptr noundef %0, i32 noundef 4, i16 noundef zeroext 67, i16 noundef zeroext %17)
  %18 = load ptr, ptr %2, align 8
  %19 = load i32, ptr %4, align 8
  %20 = tail call i32 @mdiobus_write(ptr noundef %18, i32 noundef %19, i32 noundef 22, i16 noundef zeroext 5) #11
  %21 = load ptr, ptr %2, align 8
  %22 = load i32, ptr %4, align 8
  %23 = tail call i32 @mdiobus_write(ptr noundef %21, i32 noundef %22, i32 noundef 23, i16 noundef zeroext 19) #11
  %24 = load ptr, ptr %2, align 8
  %25 = load i32, ptr %4, align 8
  %26 = tail call i32 @mdiobus_write(ptr noundef %24, i32 noundef %25, i32 noundef 22, i16 noundef zeroext 16389) #11
  %27 = load ptr, ptr %2, align 8
  %28 = load i32, ptr %4, align 8
  %29 = tail call i32 @mdiobus_read(ptr noundef %27, i32 noundef %28, i32 noundef 23) #11
  %30 = trunc i32 %29 to i16
  %31 = and i16 %30, -9
  tail call fastcc void @lanphy_write_page_reg(ptr noundef %0, i32 noundef 5, i16 noundef zeroext 19, i16 noundef zeroext %31)
  %32 = load ptr, ptr %2, align 8
  %33 = load i32, ptr %4, align 8
  %34 = tail call i32 @mdiobus_write(ptr noundef %32, i32 noundef %33, i32 noundef 22, i16 noundef zeroext 2) #11
  %35 = load ptr, ptr %2, align 8
  %36 = load i32, ptr %4, align 8
  %37 = tail call i32 @mdiobus_write(ptr noundef %35, i32 noundef %36, i32 noundef 23, i16 noundef zeroext 74) #11
  %38 = load ptr, ptr %2, align 8
  %39 = load i32, ptr %4, align 8
  %40 = tail call i32 @mdiobus_write(ptr noundef %38, i32 noundef %39, i32 noundef 22, i16 noundef zeroext 16386) #11
  %41 = load ptr, ptr %2, align 8
  %42 = load i32, ptr %4, align 8
  %43 = tail call i32 @mdiobus_read(ptr noundef %41, i32 noundef %42, i32 noundef 23) #11
  %44 = trunc i32 %43 to i16
  %45 = and i16 %44, -8
  %46 = or i16 %45, 1
  tail call fastcc void @lanphy_write_page_reg(ptr noundef %0, i32 noundef 2, i16 noundef zeroext 74, i16 noundef zeroext %46)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan8814_config_intr(ptr noundef %0) #2 {
  tail call fastcc void @lanphy_write_page_reg(ptr noundef %0, i32 noundef 4, i16 noundef zeroext 52, i16 noundef zeroext 3)
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = icmp slt i16 %3, 0
  %5 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  br i1 %4, label %9, label %17

9:                                                ; preds = %1
  %10 = tail call i32 @mdiobus_read(ptr noundef %6, i32 noundef %8, i32 noundef 27) #11
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 0) #11
  %12 = icmp sgt i32 %10, -1
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8
  %15 = load i32, ptr %7, align 8
  %16 = tail call i32 @mdiobus_write(ptr noundef %14, i32 noundef %15, i32 noundef 24, i16 noundef zeroext 5) #11
  br label %25

17:                                               ; preds = %1
  %18 = tail call i32 @mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 24, i16 noundef zeroext 0) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load ptr, ptr %5, align 8
  %22 = load i32, ptr %7, align 8
  %23 = tail call i32 @mdiobus_read(ptr noundef %21, i32 noundef %22, i32 noundef 27) #11
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 0) #11
  br label %25

25:                                               ; preds = %20, %17, %13, %9
  %26 = phi i32 [ %11, %9 ], [ %18, %17 ], [ %16, %13 ], [ %24, %20 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan8814_handle_interrupt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 27) #11
  %7 = icmp slt i32 %6, 0
  %8 = and i32 %6, 5
  %9 = icmp eq i32 %8, 0
  %10 = or i1 %7, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void @phy_trigger_machine(ptr noundef %0) #11
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ 1, %11 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan8804_config_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_write(ptr noundef %3, i32 noundef %5, i32 noundef 22, i16 noundef zeroext 2) #11
  %7 = load ptr, ptr %2, align 8
  %8 = load i32, ptr %4, align 8
  %9 = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %8, i32 noundef 23, i16 noundef zeroext 74) #11
  %10 = load ptr, ptr %2, align 8
  %11 = load i32, ptr %4, align 8
  %12 = tail call i32 @mdiobus_write(ptr noundef %10, i32 noundef %11, i32 noundef 22, i16 noundef zeroext 16386) #11
  %13 = load ptr, ptr %2, align 8
  %14 = load i32, ptr %4, align 8
  %15 = tail call i32 @mdiobus_read(ptr noundef %13, i32 noundef %14, i32 noundef 23) #11
  %16 = trunc i32 %15 to i16
  %17 = and i16 %16, -8
  %18 = or i16 %17, 1
  tail call fastcc void @lanphy_write_page_reg(ptr noundef %0, i32 noundef 2, i16 noundef zeroext 74, i16 noundef zeroext %18)
  tail call fastcc void @lanphy_write_page_reg(ptr noundef %0, i32 noundef 31, i16 noundef zeroext 13, i16 noundef zeroext 638)
  %19 = load ptr, ptr %2, align 8
  %20 = load i32, ptr %4, align 8
  %21 = tail call i32 @mdiobus_write(ptr noundef %19, i32 noundef %20, i32 noundef 22, i16 noundef zeroext 1) #11
  %22 = load ptr, ptr %2, align 8
  %23 = load i32, ptr %4, align 8
  %24 = tail call i32 @mdiobus_write(ptr noundef %22, i32 noundef %23, i32 noundef 23, i16 noundef zeroext 142) #11
  %25 = load ptr, ptr %2, align 8
  %26 = load i32, ptr %4, align 8
  %27 = tail call i32 @mdiobus_write(ptr noundef %25, i32 noundef %26, i32 noundef 22, i16 noundef zeroext 16385) #11
  %28 = load ptr, ptr %2, align 8
  %29 = load i32, ptr %4, align 8
  %30 = tail call i32 @mdiobus_read(ptr noundef %28, i32 noundef %29, i32 noundef 23) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ksz9131_config_init(ptr noundef %0) #2 {
  %2 = alloca [2 x ptr], align 8
  %3 = alloca [4 x ptr], align 4
  %4 = alloca [4 x ptr], align 4
  %5 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %6 = load i64, ptr @__const.ksz9131_config_init.clk_skews, align 8
  store i64 %6, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) @__const.ksz9131_config_init.rx_data_skews, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) @__const.ksz9131_config_init.tx_data_skews, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %7 = load i64, ptr @__const.ksz9131_config_init.control_skews, align 8
  store i64 %7, ptr %5, align 8
  br label %8

8:                                                ; preds = %8, %1
  %9 = phi ptr [ %0, %1 ], [ %13, %8 ]
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %11, null
  %15 = icmp ne ptr %13, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %8, label %17

17:                                               ; preds = %8
  br i1 %14, label %59, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -9
  %22 = icmp ult i32 %21, 4
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = add i32 %20, -9
  %25 = icmp ult i32 %24, 4
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = getelementptr inbounds [4 x i16], ptr @switch.table.ksz9131_config_init, i32 0, i32 %24
  %28 = load i16, ptr %27, align 2
  %29 = getelementptr inbounds [4 x i16], ptr @switch.table.ksz9131_config_init.62, i32 0, i32 %24
  %30 = load i16, ptr %29, align 2
  %31 = tail call i32 @phy_modify_mmd(ptr noundef %0, i32 noundef 2, i32 noundef 76, i16 noundef zeroext 4096, i16 noundef zeroext %28) #11
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %59, label %33

33:                                               ; preds = %26
  %34 = tail call i32 @phy_modify_mmd(ptr noundef %0, i32 noundef 2, i32 noundef 77, i16 noundef zeroext 4096, i16 noundef zeroext %30) #11
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %59, label %36

36:                                               ; preds = %33, %23, %18
  %37 = call fastcc i32 @ksz9131_of_load_skew_values(ptr noundef %0, ptr noundef nonnull %11, i16 noundef zeroext 8, i32 noundef 5, ptr noundef nonnull %2, i8 noundef zeroext 2)
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %36
  %40 = call fastcc i32 @ksz9131_of_load_skew_values(ptr noundef %0, ptr noundef nonnull %11, i16 noundef zeroext 4, i32 noundef 4, ptr noundef nonnull %5, i8 noundef zeroext 2)
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %39
  %43 = call fastcc i32 @ksz9131_of_load_skew_values(ptr noundef %0, ptr noundef nonnull %11, i16 noundef zeroext 5, i32 noundef 4, ptr noundef nonnull %3, i8 noundef zeroext 4)
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %42
  %46 = call fastcc i32 @ksz9131_of_load_skew_values(ptr noundef %0, ptr noundef nonnull %11, i16 noundef zeroext 6, i32 noundef 4, ptr noundef nonnull %4, i8 noundef zeroext 4)
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %45
  %49 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 2, i32 noundef 0) #11
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = and i32 %49, 16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 30, i16 noundef zeroext 0, i16 noundef zeroext 512) #11
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54, %48
  %58 = phi i32 [ %55, %54 ], [ %49, %48 ]
  br label %59

59:                                               ; preds = %57, %54, %51, %45, %42, %39, %36, %33, %26, %17
  %60 = phi i32 [ 0, %17 ], [ %34, %33 ], [ %37, %36 ], [ %40, %39 ], [ %43, %42 ], [ %46, %45 ], [ %58, %57 ], [ 0, %54 ], [ %31, %26 ], [ 0, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ksz8873mll_config_aneg(ptr nocapture noundef readnone %0) #3 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ksz8873mll_read_status(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 6) #11
  %7 = load ptr, ptr %2, align 8
  %8 = load i32, ptr %4, align 8
  %9 = tail call i32 @mdiobus_read(ptr noundef %7, i32 noundef %8, i32 noundef 6) #11
  %10 = lshr i32 %9, 6
  %11 = and i32 %10, 1
  %12 = xor i32 %11, 1
  %13 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  store i32 %12, ptr %13, align 4
  %14 = and i32 %9, 16
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 100, i32 10
  %17 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  store i32 %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %19 = load i16, ptr %18, align 8
  %20 = or i16 %19, 8192
  store i16 %20, ptr %18, align 8
  %21 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 12
  store i32 0, ptr %21, align 8
  %22 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 11
  store i32 0, ptr %22, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ksz886x_config_aneg(ptr noundef %0) #2 {
  %2 = tail call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext false) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 35
  %6 = load i8, ptr %5, align 1
  %7 = add i8 %6, -1
  %8 = icmp ult i8 %7, 3
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = sext i8 %7 to i32
  %11 = getelementptr inbounds [3 x i16], ptr @switch.table.ksz886x_config_aneg, i32 0, i32 %10
  %12 = load i16, ptr %11, align 2
  %13 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 56, i16 noundef zeroext %12) #11
  br label %14

14:                                               ; preds = %9, %4, %1
  %15 = phi i32 [ %2, %1 ], [ %13, %9 ], [ 0, %4 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ksz886x_read_status(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 0) #11
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %1
  %9 = and i32 %6, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = and i32 %6, 16
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 35
  br i1 %13, label %16, label %15

15:                                               ; preds = %11
  store i8 2, ptr %14, align 1
  br label %19

16:                                               ; preds = %11
  store i8 1, ptr %14, align 1
  br label %19

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 35
  store i8 3, ptr %18, align 1
  br label %19

19:                                               ; preds = %17, %16, %15
  %20 = load ptr, ptr %2, align 8
  %21 = load i32, ptr %4, align 8
  %22 = tail call i32 @mdiobus_read(ptr noundef %20, i32 noundef %21, i32 noundef 31) #11
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = and i32 %22, 16
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 34
  %28 = select i1 %26, i8 1, i8 2
  store i8 %28, ptr %27, align 8
  %29 = tail call i32 @genphy_read_status(ptr noundef %0) #11
  br label %30

30:                                               ; preds = %24, %19, %1
  %31 = phi i32 [ %29, %24 ], [ %22, %19 ], [ %6, %1 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ksz8795_match_phy_device(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 16777200
  %5 = icmp eq i32 %4, 2233680
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 @mdiobus_read(ptr noundef %8, i32 noundef %10, i32 noundef 1) #11
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = and i32 %11, 1
  %15 = xor i32 %14, 1
  br label %16

16:                                               ; preds = %13, %6, %1
  %17 = phi i32 [ 0, %1 ], [ %11, %6 ], [ %15, %13 ]
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @kszphy_config_reset(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.kszphy_priv, ptr %3, i32 0, i32 2
  %5 = load i8, ptr %4, align 8, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.kszphy_priv, ptr %3, i32 0, i32 3
  %9 = load i8, ptr %8, align 1, !range !8
  %10 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 8
  %14 = tail call i32 @mdiobus_read(ptr noundef %11, i32 noundef %13, i32 noundef 31) #11
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %53, label %16

16:                                               ; preds = %7
  %17 = icmp eq i8 %9, 0
  %18 = and i32 %14, 65407
  %19 = select i1 %17, i32 0, i32 128
  %20 = or i32 %18, %19
  %21 = trunc i32 %20 to i16
  %22 = load ptr, ptr %10, align 8
  %23 = load i32, ptr %12, align 8
  %24 = tail call i32 @mdiobus_write(ptr noundef %22, i32 noundef %23, i32 noundef 31, i16 noundef zeroext %21) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %16, %1
  %27 = getelementptr inbounds %struct.kszphy_priv, ptr %3, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = load ptr, ptr %3, align 8
  %32 = load i32, ptr %31, align 4
  switch i32 %32, label %56 [
    i32 30, label %34
    i32 31, label %33
  ]

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ 4, %33 ], [ 14, %30 ]
  %36 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %39 = load i32, ptr %38, align 8
  %40 = tail call i32 @mdiobus_read(ptr noundef %37, i32 noundef %39, i32 noundef %32) #11
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %34
  %43 = shl nuw nsw i32 3, %35
  %44 = xor i32 %43, -1
  %45 = and i32 %40, %44
  %46 = shl i32 %28, %35
  %47 = or i32 %45, %46
  %48 = trunc i32 %47 to i16
  %49 = load ptr, ptr %36, align 8
  %50 = load i32, ptr %38, align 8
  %51 = tail call i32 @mdiobus_write(ptr noundef %49, i32 noundef %50, i32 noundef %32, i16 noundef zeroext %48) #11
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %42, %34, %16, %7
  %54 = phi ptr [ @.str.20, %7 ], [ @.str.20, %16 ], [ @.str.21, %42 ], [ @.str.21, %34 ]
  %55 = phi i32 [ %14, %7 ], [ %24, %16 ], [ 0, %42 ], [ 0, %34 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull %54) #12
  br label %56

56:                                               ; preds = %53, %42, %30, %26
  %57 = phi i32 [ 0, %26 ], [ 0, %30 ], [ 0, %42 ], [ %55, %53 ]
  ret i32 %57
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_cable_test_result(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_cable_test_fault_length(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ksz9021_load_values_from_of(ptr nocapture noundef readonly %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #2 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 -1, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  store i32 -2, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  store i32 -3, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  store i32 -4, ptr %11, align 4
  %12 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #11
  %13 = xor i32 %12, -1
  %14 = lshr i32 %13, 31
  %15 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef %4, ptr noundef nonnull %9, i32 noundef 1, i32 noundef 0) #11
  %16 = xor i32 %15, -1
  %17 = lshr i32 %16, 31
  %18 = add nuw nsw i32 %17, %14
  %19 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef %5, ptr noundef nonnull %10, i32 noundef 1, i32 noundef 0) #11
  %20 = xor i32 %19, -1
  %21 = lshr i32 %20, 31
  %22 = add nuw nsw i32 %18, %21
  %23 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef %6, ptr noundef nonnull %11, i32 noundef 1, i32 noundef 0) #11
  %24 = xor i32 %23, -1
  %25 = lshr i32 %24, 31
  %26 = add nuw nsw i32 %22, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %81, label %28

28:                                               ; preds = %7
  %29 = icmp ult i32 %26, 4
  br i1 %29, label %30, label %39

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %34 = load i32, ptr %33, align 8
  %35 = call i32 @mdiobus_write(ptr noundef %32, i32 noundef %34, i32 noundef 11, i16 noundef zeroext %2) #11
  %36 = load ptr, ptr %31, align 8
  %37 = load i32, ptr %33, align 8
  %38 = call i32 @mdiobus_read(ptr noundef %36, i32 noundef %37, i32 noundef 13) #11
  br label %39

39:                                               ; preds = %30, %28
  %40 = phi i32 [ %38, %30 ], [ 0, %28 ]
  %41 = load i32, ptr %8, align 4
  %42 = icmp eq i32 %41, -1
  %43 = and i32 %40, 65520
  %44 = sdiv i32 %41, 200
  %45 = and i32 %44, 15
  %46 = or i32 %45, %43
  %47 = select i1 %42, i32 %40, i32 %46
  %48 = load i32, ptr %9, align 4
  %49 = icmp eq i32 %48, -2
  %50 = and i32 %47, 65295
  %51 = sdiv i32 %48, 200
  %52 = shl nsw i32 %51, 4
  %53 = and i32 %52, 240
  %54 = or i32 %50, %53
  %55 = select i1 %49, i32 %47, i32 %54
  %56 = load i32, ptr %10, align 4
  %57 = icmp eq i32 %56, -3
  %58 = and i32 %55, 61695
  %59 = sdiv i32 %56, 200
  %60 = shl i32 %59, 8
  %61 = and i32 %60, 3840
  %62 = or i32 %58, %61
  %63 = select i1 %57, i32 %55, i32 %62
  %64 = load i32, ptr %11, align 4
  %65 = icmp eq i32 %64, -4
  %66 = and i32 %63, 4095
  %67 = sdiv i32 %64, 200
  %68 = shl i32 %67, 12
  %69 = or i32 %66, %68
  %70 = select i1 %65, i32 %63, i32 %69
  %71 = trunc i32 %70 to i16
  %72 = or i16 %2, -32768
  %73 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %76 = load i32, ptr %75, align 8
  %77 = call i32 @mdiobus_write(ptr noundef %74, i32 noundef %76, i32 noundef 11, i16 noundef zeroext %72) #11
  %78 = load ptr, ptr %73, align 8
  %79 = load i32, ptr %75, align 8
  %80 = call i32 @mdiobus_write(ptr noundef %78, i32 noundef %79, i32 noundef 12, i16 noundef zeroext %71) #11
  br label %81

81:                                               ; preds = %39, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_abilities(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ksz9031_of_load_skew_values(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3, ptr nocapture noundef readonly %4, i8 noundef zeroext %5, ptr nocapture noundef writeonly %6) unnamed_addr #2 {
  %8 = alloca [4 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) @__const.ksz9031_of_load_skew_values.val, i32 16, i1 false)
  %9 = zext i8 %5 to i32
  %10 = icmp eq i8 %5, 0
  br i1 %10, label %62, label %11

11:                                               ; preds = %11, %7
  %12 = phi i32 [ %21, %11 ], [ 0, %7 ]
  %13 = phi i32 [ %20, %11 ], [ 0, %7 ]
  %14 = getelementptr ptr, ptr %4, i32 %12
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i32, ptr %8, i32 %12
  %17 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef %15, ptr noundef %16, i32 noundef 1, i32 noundef 0) #11
  %18 = xor i32 %17, -1
  %19 = lshr i32 %18, 31
  %20 = add i32 %19, %13
  %21 = add nuw nsw i32 %12, 1
  %22 = icmp eq i32 %21, %9
  br i1 %22, label %23, label %11

23:                                               ; preds = %11
  %24 = icmp eq i32 %20, 0
  br i1 %24, label %62, label %25

25:                                               ; preds = %23
  store i8 1, ptr %6, align 1
  %26 = icmp slt i32 %20, %9
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = zext i16 %2 to i32
  %29 = call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 2, i32 noundef %28) #11
  %30 = trunc i32 %29 to i16
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi i16 [ %30, %27 ], [ 0, %25 ]
  br i1 %10, label %58, label %33

33:                                               ; preds = %31
  %34 = icmp eq i32 %3, 4
  %35 = select i1 %34, i32 15, i32 31
  br label %36

36:                                               ; preds = %55, %33
  %37 = phi i32 [ 0, %33 ], [ %41, %55 ]
  %38 = phi i16 [ %32, %33 ], [ %56, %55 ]
  %39 = getelementptr [4 x i32], ptr %8, i32 0, i32 %37
  %40 = load i32, ptr %39, align 4
  %41 = add nuw nsw i32 %37, 1
  %42 = xor i32 %37, -1
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %55, label %44

44:                                               ; preds = %36
  %45 = mul i32 %37, %3
  %46 = shl i32 %35, %45
  %47 = zext i16 %38 to i32
  %48 = xor i32 %46, -1
  %49 = and i32 %48, %47
  %50 = sdiv i32 %40, 60
  %51 = and i32 %50, %35
  %52 = shl i32 %51, %45
  %53 = or i32 %52, %49
  %54 = trunc i32 %53 to i16
  br label %55

55:                                               ; preds = %44, %36
  %56 = phi i16 [ %54, %44 ], [ %38, %36 ]
  %57 = icmp eq i32 %41, %9
  br i1 %57, label %58, label %36

58:                                               ; preds = %55, %31
  %59 = phi i16 [ %32, %31 ], [ %56, %55 ]
  %60 = zext i16 %2 to i32
  %61 = call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 2, i32 noundef %60, i16 noundef zeroext %59) #11
  br label %62

62:                                               ; preds = %58, %23, %7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_mmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_restart_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lanphy_write_page_reg(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) unnamed_addr #2 {
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 22, i16 noundef zeroext %5) #11
  %11 = load ptr, ptr %6, align 8
  %12 = load i32, ptr %8, align 8
  %13 = tail call i32 @mdiobus_write(ptr noundef %11, i32 noundef %12, i32 noundef 23, i16 noundef zeroext %2) #11
  %14 = or i16 %5, 16384
  %15 = load ptr, ptr %6, align 8
  %16 = load i32, ptr %8, align 8
  %17 = tail call i32 @mdiobus_write(ptr noundef %15, i32 noundef %16, i32 noundef 22, i16 noundef zeroext %14) #11
  %18 = load ptr, ptr %6, align 8
  %19 = load i32, ptr %8, align 8
  %20 = tail call i32 @mdiobus_write(ptr noundef %18, i32 noundef %19, i32 noundef 23, i16 noundef zeroext %3) #11
  %21 = trunc i32 %20 to i16
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = and i32 %20, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.46, i32 noundef %24) #12
  br label %25

25:                                               ; preds = %23, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ksz9131_of_load_skew_values(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3, ptr nocapture noundef readonly %4, i8 noundef zeroext %5) unnamed_addr #2 {
  %7 = alloca [4 x i32], align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) @__const.ksz9131_of_load_skew_values.val, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = icmp eq i32 %3, 5
  %10 = select i1 %9, i32 2400, i32 800
  %11 = zext i8 %5 to i32
  %12 = icmp eq i8 %5, 0
  br i1 %12, label %75, label %13

13:                                               ; preds = %32, %6
  %14 = phi i32 [ %34, %32 ], [ 0, %6 ]
  %15 = phi i32 [ %33, %32 ], [ 0, %6 ]
  %16 = getelementptr ptr, ptr %4, i32 %14
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef %17, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #11
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %32

20:                                               ; preds = %13
  %21 = load i32, ptr %8, align 4
  %22 = icmp slt i32 %21, -700
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 -700, ptr %8, align 4
  br label %27

24:                                               ; preds = %20
  %25 = icmp sgt i32 %21, %10
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  store i32 %10, ptr %8, align 4
  br label %27

27:                                               ; preds = %26, %24, %23
  %28 = phi i32 [ %21, %24 ], [ %10, %26 ], [ -700, %23 ]
  %29 = add i32 %28, 700
  %30 = getelementptr [4 x i32], ptr %7, i32 0, i32 %14
  store i32 %29, ptr %30, align 4
  %31 = add i32 %15, 1
  br label %32

32:                                               ; preds = %27, %13
  %33 = phi i32 [ %15, %13 ], [ %31, %27 ]
  %34 = add nuw nsw i32 %14, 1
  %35 = icmp eq i32 %34, %11
  br i1 %35, label %36, label %13

36:                                               ; preds = %32
  %37 = icmp eq i32 %33, 0
  br i1 %37, label %75, label %38

38:                                               ; preds = %36
  %39 = icmp slt i32 %33, %11
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = zext i16 %2 to i32
  %42 = call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 2, i32 noundef %41) #11
  %43 = trunc i32 %42 to i16
  br label %44

44:                                               ; preds = %40, %38
  %45 = phi i16 [ %43, %40 ], [ 0, %38 ]
  br i1 %12, label %71, label %46

46:                                               ; preds = %44
  %47 = icmp eq i32 %3, 4
  %48 = select i1 %47, i32 15, i32 31
  br label %49

49:                                               ; preds = %68, %46
  %50 = phi i32 [ 0, %46 ], [ %54, %68 ]
  %51 = phi i16 [ %45, %46 ], [ %69, %68 ]
  %52 = getelementptr [4 x i32], ptr %7, i32 0, i32 %50
  %53 = load i32, ptr %52, align 4
  %54 = add nuw nsw i32 %50, 1
  %55 = sub nuw nsw i32 -701, %50
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %68, label %57

57:                                               ; preds = %49
  %58 = mul i32 %50, %3
  %59 = shl i32 %48, %58
  %60 = zext i16 %51 to i32
  %61 = xor i32 %59, -1
  %62 = and i32 %61, %60
  %63 = sdiv i32 %53, 100
  %64 = and i32 %63, %48
  %65 = shl i32 %64, %58
  %66 = or i32 %65, %62
  %67 = trunc i32 %66 to i16
  br label %68

68:                                               ; preds = %57, %49
  %69 = phi i16 [ %67, %57 ], [ %51, %49 ]
  %70 = icmp eq i32 %54, %11
  br i1 %70, label %71, label %49

71:                                               ; preds = %68, %44
  %72 = phi i16 [ %45, %44 ], [ %69, %68 ]
  %73 = zext i16 %2 to i32
  %74 = call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 2, i32 noundef %73, i16 noundef zeroext %72) #11
  br label %75

75:                                               ; preds = %71, %36, %6
  %76 = phi i32 [ %74, %71 ], [ 0, %36 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly nofree nounwind willreturn }
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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
