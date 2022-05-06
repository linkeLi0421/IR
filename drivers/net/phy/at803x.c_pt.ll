; ModuleID = '/llk/IR/drivers/net/phy/at803x.c_pt.bc'
source_filename = "../drivers/net/phy/at803x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.at803x_priv = type { i32, i16, i16, i8, i8, ptr, ptr, ptr, [3 x i64] }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
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
%struct.ethtool_tunable = type { i32, i32, i32, i32, [0 x ptr] }

@__UNIQUE_ID_description333 = internal constant [66 x i8] c"at803x.description=Qualcomm Atheros AR803x and QCA808X PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author334 = internal constant [28 x i8] c"at803x.author=Matus Ujhelyi\00", section ".modinfo", align 1
@__UNIQUE_ID_file335 = internal constant [35 x i8] c"at803x.file=drivers/net/phy/at803x\00", section ".modinfo", align 1
@__UNIQUE_ID_license336 = internal constant [19 x i8] c"at803x.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_at803x__427_2054_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@at803x_driver = internal global [10 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 5099634, ptr @.str, i32 -1, ptr null, i32 4, ptr null, ptr @genphy_soft_reset, ptr @at803x_config_init, ptr @at803x_probe, ptr null, ptr @at803x_suspend, ptr @at803x_resume, ptr @at803x_config_aneg, ptr null, ptr @at803x_read_status, ptr @at803x_config_intr, ptr @at803x_handle_interrupt, ptr @at803x_remove, ptr null, ptr @at803x_set_wol, ptr @at803x_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at803x_cable_test_start, ptr null, ptr @at803x_cable_test_get_status, ptr null, ptr null, ptr null, ptr @at803x_get_tunable, ptr @at803x_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 5099638, ptr @.str.1, i32 -17, ptr null, i32 0, ptr null, ptr null, ptr @at803x_config_init, ptr @at803x_probe, ptr null, ptr @at803x_suspend, ptr @at803x_resume, ptr null, ptr null, ptr null, ptr @at803x_config_intr, ptr @at803x_handle_interrupt, ptr @at803x_remove, ptr null, ptr @at803x_set_wol, ptr @at803x_get_wol, ptr @at803x_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 5099636, ptr @.str.2, i32 -1, ptr null, i32 4, ptr null, ptr @genphy_soft_reset, ptr @at803x_config_init, ptr @at803x_probe, ptr @at803x_get_features, ptr @at803x_suspend, ptr @at803x_resume, ptr @at803x_config_aneg, ptr null, ptr @at803x_read_status, ptr @at803x_config_intr, ptr @at803x_handle_interrupt, ptr @at803x_remove, ptr null, ptr @at803x_set_wol, ptr @at803x_get_wol, ptr null, ptr null, ptr null, ptr @at803x_read_page, ptr @at803x_write_page, ptr null, ptr null, ptr @at803x_cable_test_start, ptr null, ptr @at803x_cable_test_get_status, ptr null, ptr null, ptr null, ptr @at803x_get_tunable, ptr @at803x_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 5099555, ptr @.str.3, i32 -1, ptr null, i32 4, ptr null, ptr null, ptr @at803x_config_init, ptr @at803x_probe, ptr null, ptr @at803x_suspend, ptr @at803x_resume, ptr null, ptr null, ptr null, ptr @at803x_config_intr, ptr @at803x_handle_interrupt, ptr @at803x_remove, ptr null, ptr @at803x_set_wol, ptr @at803x_get_wol, ptr @at803x_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at803x_cable_test_start, ptr null, ptr @at803x_cable_test_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 5099585, ptr @.str.4, i32 -1, ptr null, i32 4, ptr null, ptr @genphy_soft_reset, ptr null, ptr null, ptr null, ptr @at803x_suspend, ptr @at803x_resume, ptr @at803x_config_aneg, ptr null, ptr @at803x_read_status, ptr @at803x_config_intr, ptr @at803x_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at803x_cable_test_start, ptr null, ptr @at803x_cable_test_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 5099586, ptr @.str.5, i32 -1, ptr null, i32 4, ptr null, ptr @genphy_soft_reset, ptr null, ptr null, ptr null, ptr @at803x_suspend, ptr @at803x_resume, ptr @at803x_config_aneg, ptr null, ptr @at803x_read_status, ptr @at803x_config_intr, ptr @at803x_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at803x_cable_test_start, ptr null, ptr @at803x_cable_test_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 5099574, ptr @.str.6, i32 -1, ptr null, i32 1, ptr null, ptr @genphy_soft_reset, ptr @qca83xx_config_init, ptr @at803x_probe, ptr null, ptr @qca83xx_suspend, ptr @qca83xx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qca83xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at803x_get_sset_count, ptr @at803x_get_strings, ptr @at803x_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 5099571, ptr @.str.7, i32 -1, ptr null, i32 1, ptr null, ptr @genphy_soft_reset, ptr @qca83xx_config_init, ptr @at803x_probe, ptr null, ptr @qca83xx_suspend, ptr @qca83xx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qca83xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at803x_get_sset_count, ptr @at803x_get_strings, ptr @at803x_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 5099572, ptr @.str.8, i32 -1, ptr null, i32 1, ptr null, ptr @genphy_soft_reset, ptr @qca83xx_config_init, ptr @at803x_probe, ptr null, ptr @qca83xx_suspend, ptr @qca83xx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qca83xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at803x_get_sset_count, ptr @at803x_get_strings, ptr @at803x_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 5099777, ptr @.str.9, i32 -1, ptr null, i32 4, ptr null, ptr @qca808x_soft_reset, ptr @qca808x_config_init, ptr null, ptr @at803x_get_features, ptr @genphy_suspend, ptr @genphy_resume, ptr @at803x_config_aneg, ptr null, ptr @qca808x_read_status, ptr @at803x_config_intr, ptr @at803x_handle_interrupt, ptr null, ptr null, ptr @at803x_set_wol, ptr @at803x_get_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qca808x_cable_test_start, ptr null, ptr @qca808x_cable_test_get_status, ptr null, ptr null, ptr null, ptr @at803x_get_tunable, ptr @at803x_set_tunable, ptr null, ptr null, ptr null }], align 4
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@.str = private unnamed_addr constant [24 x i8] c"Qualcomm Atheros AR8035\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Qualcomm Atheros AR8030\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Qualcomm Atheros AR8031/AR8033\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Qualcomm Atheros AR8032\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Qualcomm Atheros AR9331 built-in PHY\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Qualcomm Atheros QCA9561 built-in PHY\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Qualcomm Atheros 8337 internal PHY\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Qualcomm Atheros 8327-A internal PHY\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Qualcomm Atheros 8327-B internal PHY\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Qualcomm QCA8081\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"qca,disable-smarteee\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"qca,smarteee-tw-us-1g\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"invalid qca,smarteee-tw-us-1g\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"qca,smarteee-tw-us-100m\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"invalid qca,smarteee-tw-us-100m\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"qca,clk-out-frequency\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"invalid qca,clk-out-frequency\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"qca,clk-out-strength\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"invalid qca,clk-out-strength\0A\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"qca,keep-pll-enabled\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"vddio\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"failed to get VDDIO regulator\0A\00", align 1
@vddio_desc = internal constant %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.24, i8 0, ptr null, ptr null, i32 0, i8 0, i32 2, i32 0, ptr @vddio_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vddio_voltage_table, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.22 = private unnamed_addr constant [36 x i8] c"failed to register VDDIO regulator\0A\00", align 1
@vddh_desc = internal constant %struct.regulator_desc { ptr @.str.25, ptr null, ptr @.str.26, i8 0, ptr null, ptr null, i32 0, i8 0, i32 1, i32 0, ptr @vddh_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 2500000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.23 = private unnamed_addr constant [35 x i8] c"failed to register VDDH regulator\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"vddio-regulator\00", align 1
@vddio_regulator_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr @at803x_rgmii_reg_set_voltage_sel, ptr null, ptr @at803x_rgmii_reg_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@vddio_voltage_table = internal constant [2 x i32] [i32 1500000, i32 1800000], align 4
@.str.25 = private unnamed_addr constant [5 x i8] c"vddh\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"vddh-regulator\00", align 1
@vddh_regulator_ops = internal constant %struct.regulator_ops zeroinitializer, align 4
@at803x_cable_test_one_pair.ethtool_pair = internal unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 4
@.str.27 = private unnamed_addr constant [15 x i8] c"%s failed: %d\0A\00", align 1
@__func__.at803x_cdt_wait_for_completion = private unnamed_addr constant [31 x i8] c"at803x_cdt_wait_for_completion\00", align 1
@__func__.qca83xx_resume = private unnamed_addr constant [15 x i8] c"qca83xx_resume\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"phy_idle_errors\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"phy_receive_errors\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"eee_wake_errors\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author334, ptr @__UNIQUE_ID_description333, ptr @__UNIQUE_ID_file335, ptr @__UNIQUE_ID_license336, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_at803x__427_2054_phy_module_init6, ptr @phy_module_exit], section "llvm.metadata"
@switch.table.at803x_config_aneg = private unnamed_addr constant [3 x i16] [i16 0, i16 32, i16 96], align 2
@switch.table.at803x_read_specific_status = private unnamed_addr constant [5 x i32] [i32 10, i32 100, i32 1000, i32 10, i32 2500], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" {
  %1 = tail call i32 @phy_drivers_register(ptr noundef nonnull @at803x_driver, i32 noundef 10, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" {
  tail call void @phy_drivers_unregister(ptr noundef nonnull @at803x_driver, i32 noundef 10) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at803x_config_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -2
  %5 = icmp eq i32 %4, 10
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 29, i16 noundef zeroext 0) #8
  %11 = icmp slt i32 %10, 0
  br i1 %5, label %12, label %21

12:                                               ; preds = %1
  br i1 %11, label %162, label %13

13:                                               ; preds = %12
  %14 = load ptr, ptr %6, align 8
  %15 = load i32, ptr %8, align 8
  %16 = tail call i32 @mdiobus_read(ptr noundef %14, i32 noundef %15, i32 noundef 30) #8
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %162, label %18

18:                                               ; preds = %13
  %19 = trunc i32 %16 to i16
  %20 = or i16 %19, -32768
  br label %30

21:                                               ; preds = %1
  br i1 %11, label %162, label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr %6, align 8
  %24 = load i32, ptr %8, align 8
  %25 = tail call i32 @mdiobus_read(ptr noundef %23, i32 noundef %24, i32 noundef 30) #8
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %162, label %27

27:                                               ; preds = %22
  %28 = trunc i32 %25 to i16
  %29 = and i16 %28, 32767
  br label %30

30:                                               ; preds = %27, %18
  %31 = phi i16 [ %29, %27 ], [ %20, %18 ]
  %32 = load ptr, ptr %6, align 8
  %33 = load i32, ptr %8, align 8
  %34 = tail call i32 @mdiobus_write(ptr noundef %32, i32 noundef %33, i32 noundef 30, i16 noundef zeroext %31) #8
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %162, label %36

36:                                               ; preds = %30
  %37 = load i32, ptr %2, align 4
  switch i32 %37, label %53 [
    i32 10, label %38
    i32 12, label %38
  ]

38:                                               ; preds = %36, %36
  %39 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %42 = load i32, ptr %41, align 8
  %43 = tail call i32 @mdiobus_write(ptr noundef %40, i32 noundef %42, i32 noundef 29, i16 noundef zeroext 5) #8
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %162, label %45

45:                                               ; preds = %38
  %46 = load ptr, ptr %39, align 8
  %47 = load i32, ptr %41, align 8
  %48 = tail call i32 @mdiobus_read(ptr noundef %46, i32 noundef %47, i32 noundef 30) #8
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %162, label %50

50:                                               ; preds = %45
  %51 = trunc i32 %48 to i16
  %52 = or i16 %51, 256
  br label %68

53:                                               ; preds = %36
  %54 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %57 = load i32, ptr %56, align 8
  %58 = tail call i32 @mdiobus_write(ptr noundef %55, i32 noundef %57, i32 noundef 29, i16 noundef zeroext 5) #8
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %162, label %60

60:                                               ; preds = %53
  %61 = load ptr, ptr %54, align 8
  %62 = load i32, ptr %56, align 8
  %63 = tail call i32 @mdiobus_read(ptr noundef %61, i32 noundef %62, i32 noundef 30) #8
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %162, label %65

65:                                               ; preds = %60
  %66 = trunc i32 %63 to i16
  %67 = and i16 %66, -257
  br label %68

68:                                               ; preds = %65, %50
  %69 = phi ptr [ %54, %65 ], [ %39, %50 ]
  %70 = phi ptr [ %56, %65 ], [ %41, %50 ]
  %71 = phi i16 [ %67, %65 ], [ %52, %50 ]
  %72 = load ptr, ptr %69, align 8
  %73 = load i32, ptr %70, align 8
  %74 = tail call i32 @mdiobus_write(ptr noundef %72, i32 noundef %73, i32 noundef 30, i16 noundef zeroext %71) #8
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %162, label %76

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %78 = load ptr, ptr %77, align 8
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.at803x_priv, ptr %78, i32 0, i32 3
  %84 = load i8, ptr %83, align 8
  %85 = icmp eq i8 %84, 0
  %86 = getelementptr inbounds %struct.at803x_priv, ptr %78, i32 0, i32 4
  %87 = load i8, ptr %86, align 1
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %88, i1 %85, i1 false
  br i1 %89, label %109, label %90

90:                                               ; preds = %82
  %91 = select i1 %85, i16 0, i16 -256
  %92 = or i16 %91, 255
  %93 = select i1 %88, i16 %91, i16 %92
  %94 = zext i8 %84 to i16
  %95 = shl nuw i16 %94, 8
  %96 = select i1 %85, i16 0, i16 %95
  %97 = zext i8 %87 to i16
  %98 = or i16 %96, %97
  %99 = tail call i32 @phy_modify_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32859, i16 noundef zeroext %93, i16 noundef zeroext %98) #8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %90, %76
  %102 = phi i16 [ 0, %76 ], [ 256, %90 ]
  %103 = tail call i32 @phy_modify_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32861, i16 noundef zeroext 256, i16 noundef zeroext %102) #8
  br label %104

104:                                              ; preds = %101, %90
  %105 = phi i32 [ %99, %90 ], [ %103, %101 ]
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %162, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %77, align 8
  br label %109

109:                                              ; preds = %107, %82
  %110 = phi ptr [ %108, %107 ], [ %78, %82 ]
  %111 = getelementptr inbounds %struct.at803x_priv, ptr %110, i32 0, i32 2
  %112 = load i16, ptr %111, align 2
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.at803x_priv, ptr %110, i32 0, i32 1
  %116 = load i16, ptr %115, align 4
  %117 = tail call i32 @phy_modify_mmd(ptr noundef %0, i32 noundef 7, i32 noundef 32790, i16 noundef zeroext %112, i16 noundef zeroext %116) #8
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %162, label %119

119:                                              ; preds = %114, %109
  %120 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %121 = load ptr, ptr %120, align 8
  %122 = getelementptr inbounds %struct.phy_driver, ptr %121, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 5099636
  br i1 %124, label %125, label %160

125:                                              ; preds = %119
  %126 = load ptr, ptr %77, align 8
  %127 = load i32, ptr %126, align 8
  %128 = and i32 %127, 1
  %129 = icmp eq i32 %128, 0
  %130 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %131 = load ptr, ptr %130, align 8
  %132 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %133 = load i32, ptr %132, align 8
  %134 = tail call i32 @mdiobus_write(ptr noundef %131, i32 noundef %133, i32 noundef 29, i16 noundef zeroext 31) #8
  %135 = icmp slt i32 %134, 0
  br i1 %129, label %145, label %136

136:                                              ; preds = %125
  br i1 %135, label %162, label %137

137:                                              ; preds = %136
  %138 = load ptr, ptr %130, align 8
  %139 = load i32, ptr %132, align 8
  %140 = tail call i32 @mdiobus_read(ptr noundef %138, i32 noundef %139, i32 noundef 30) #8
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %162, label %142

142:                                              ; preds = %137
  %143 = trunc i32 %140 to i16
  %144 = or i16 %143, 4
  br label %154

145:                                              ; preds = %125
  br i1 %135, label %162, label %146

146:                                              ; preds = %145
  %147 = load ptr, ptr %130, align 8
  %148 = load i32, ptr %132, align 8
  %149 = tail call i32 @mdiobus_read(ptr noundef %147, i32 noundef %148, i32 noundef 30) #8
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %162, label %151

151:                                              ; preds = %146
  %152 = trunc i32 %149 to i16
  %153 = and i16 %152, -5
  br label %154

154:                                              ; preds = %151, %142
  %155 = phi i16 [ %153, %151 ], [ %144, %142 ]
  %156 = load ptr, ptr %130, align 8
  %157 = load i32, ptr %132, align 8
  %158 = tail call i32 @mdiobus_write(ptr noundef %156, i32 noundef %157, i32 noundef 30, i16 noundef zeroext %155) #8
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %154, %119
  %161 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 4, i16 noundef zeroext 8192, i16 noundef zeroext 0) #8
  br label %162

162:                                              ; preds = %160, %154, %146, %145, %137, %136, %114, %104, %68, %60, %53, %45, %38, %30, %22, %21, %13, %12
  %163 = phi i32 [ %161, %160 ], [ %34, %30 ], [ %74, %68 ], [ %105, %104 ], [ %117, %114 ], [ %158, %154 ], [ %10, %21 ], [ %25, %22 ], [ %10, %12 ], [ %16, %13 ], [ %58, %53 ], [ %63, %60 ], [ %43, %38 ], [ %48, %45 ], [ %134, %145 ], [ %149, %146 ], [ %134, %136 ], [ %140, %137 ]
  ret i32 %163
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at803x_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 48, i32 noundef 3520) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %140, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  store ptr %6, ptr %9, align 8
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %12 = tail call ptr @of_find_property(ptr noundef %11, ptr noundef nonnull @.str.10, ptr noundef null) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = load i32, ptr %6, align 8
  %16 = or i32 %15, 2
  store i32 %16, ptr %6, align 8
  br label %17

17:                                               ; preds = %14, %8
  %18 = call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.11, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #8
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32, ptr %5, align 4
  %22 = add i32 %21, -256
  %23 = icmp ult i32 %22, -255
  br i1 %23, label %108, label %24

24:                                               ; preds = %20
  %25 = trunc i32 %21 to i8
  %26 = getelementptr inbounds %struct.at803x_priv, ptr %6, i32 0, i32 3
  store i8 %25, ptr %26, align 8
  br label %27

27:                                               ; preds = %24, %17
  %28 = call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.13, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #8
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, ptr %5, align 4
  %32 = add i32 %31, -256
  %33 = icmp ult i32 %32, -255
  br i1 %33, label %108, label %34

34:                                               ; preds = %30
  %35 = trunc i32 %31 to i8
  %36 = getelementptr inbounds %struct.at803x_priv, ptr %6, i32 0, i32 4
  store i8 %35, ptr %36, align 1
  br label %37

37:                                               ; preds = %34, %27
  %38 = call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.15, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %59

40:                                               ; preds = %37
  %41 = load i32, ptr %3, align 4
  switch i32 %41, label %108 [
    i32 25000000, label %45
    i32 50000000, label %42
    i32 62500000, label %43
    i32 125000000, label %44
  ]

42:                                               ; preds = %40
  br label %45

43:                                               ; preds = %40
  br label %45

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %43, %42, %40
  %46 = phi i16 [ 24, %44 ], [ 16, %43 ], [ 8, %42 ], [ 0, %40 ]
  %47 = getelementptr inbounds %struct.at803x_priv, ptr %6, i32 0, i32 1
  %48 = load i16, ptr %47, align 4
  %49 = or i16 %48, %46
  store i16 %49, ptr %47, align 4
  %50 = getelementptr inbounds %struct.at803x_priv, ptr %6, i32 0, i32 2
  %51 = load i16, ptr %50, align 2
  %52 = or i16 %51, 28
  store i16 %52, ptr %50, align 2
  %53 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.phy_driver, ptr %54, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  switch i32 %56, label %59 [
    i32 5099638, label %57
    i32 5099634, label %57
  ]

57:                                               ; preds = %45, %45
  %58 = and i16 %49, 24
  store i16 %58, ptr %47, align 4
  store i16 24, ptr %50, align 2
  br label %59

59:                                               ; preds = %57, %45, %37
  %60 = call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.17, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #8
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.at803x_priv, ptr %6, i32 0, i32 2
  %64 = load i16, ptr %63, align 2
  %65 = or i16 %64, 384
  store i16 %65, ptr %63, align 2
  %66 = load i32, ptr %4, align 4
  switch i32 %66, label %108 [
    i32 0, label %73
    i32 1, label %68
    i32 2, label %67
  ]

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %62
  %69 = phi i16 [ 2, %67 ], [ 1, %62 ]
  %70 = getelementptr inbounds %struct.at803x_priv, ptr %6, i32 0, i32 1
  %71 = load i16, ptr %70, align 4
  %72 = or i16 %71, %69
  store i16 %72, ptr %70, align 4
  br label %73

73:                                               ; preds = %68, %62, %59
  %74 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.phy_driver, ptr %75, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 5099636
  br i1 %78, label %79, label %110

79:                                               ; preds = %73
  %80 = call ptr @of_find_property(ptr noundef %11, ptr noundef nonnull @.str.19, ptr noundef null) #8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, ptr %6, align 8
  %84 = or i32 %83, 1
  store i32 %84, ptr %6, align 8
  br label %85

85:                                               ; preds = %82, %79
  %86 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  %87 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %87, i8 0, i32 20, i1 false) #8
  store ptr %0, ptr %2, align 4
  %88 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  store ptr %0, ptr %88, align 4
  %89 = call ptr @devm_regulator_register(ptr noundef %0, ptr noundef nonnull @vddio_desc, ptr noundef nonnull %2) #8
  %90 = getelementptr inbounds %struct.at803x_priv, ptr %86, i32 0, i32 5
  store ptr %89, ptr %90, align 4
  %91 = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %91, label %97, label %92

92:                                               ; preds = %85
  %93 = call ptr @devm_regulator_register(ptr noundef %0, ptr noundef nonnull @vddh_desc, ptr noundef nonnull %2) #8
  %94 = getelementptr inbounds %struct.at803x_priv, ptr %86, i32 0, i32 6
  store ptr %93, ptr %94, align 8
  %95 = icmp ugt ptr %93, inttoptr (i32 -4096 to ptr)
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  br label %102

97:                                               ; preds = %92, %85
  %98 = phi ptr [ @.str.22, %85 ], [ @.str.23, %92 ]
  %99 = phi ptr [ %90, %85 ], [ %94, %92 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull %98) #9
  %100 = load ptr, ptr %99, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  %101 = icmp slt ptr %100, null
  br i1 %101, label %111, label %102

102:                                              ; preds = %97, %96
  %103 = call ptr @devm_regulator_get_optional(ptr noundef %0, ptr noundef nonnull @.str.20) #8
  %104 = getelementptr inbounds %struct.at803x_priv, ptr %6, i32 0, i32 7
  store ptr %103, ptr %104, align 4
  %105 = icmp ugt ptr %103, inttoptr (i32 -4096 to ptr)
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.21) #9
  %107 = load ptr, ptr %104, align 4
  br label %111

108:                                              ; preds = %62, %40, %30, %20
  %109 = phi ptr [ @.str.12, %20 ], [ @.str.14, %30 ], [ @.str.16, %40 ], [ @.str.18, %62 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull %109) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %140

110:                                              ; preds = %102, %73
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %115

111:                                              ; preds = %106, %97
  %112 = phi ptr [ %107, %106 ], [ %100, %97 ]
  %113 = ptrtoint ptr %112 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %114 = icmp eq ptr %112, null
  br i1 %114, label %115, label %140

115:                                              ; preds = %111, %110
  %116 = getelementptr inbounds %struct.at803x_priv, ptr %6, i32 0, i32 7
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = call i32 @regulator_enable(ptr noundef nonnull %117) #8
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %140, label %122

122:                                              ; preds = %119, %115
  %123 = load ptr, ptr %74, align 8
  %124 = getelementptr inbounds %struct.phy_driver, ptr %123, i32 0, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 5099636
  br i1 %126, label %127, label %140

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr inbounds %struct.mii_bus, ptr %129, i32 0, i32 8
  call void @mutex_lock(ptr noundef %130) #8
  %131 = call i32 @__phy_modify(ptr noundef %0, i32 noundef 31, i16 noundef zeroext 0, i16 noundef zeroext -32768) #8
  %132 = load ptr, ptr %128, align 8
  %133 = getelementptr inbounds %struct.mii_bus, ptr %132, i32 0, i32 8
  call void @mutex_unlock(ptr noundef %133) #8
  %134 = icmp eq i32 %131, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %127
  %136 = load ptr, ptr %116, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = call i32 @regulator_disable(ptr noundef nonnull %136) #8
  br label %140

140:                                              ; preds = %138, %135, %127, %122, %119, %111, %108, %1
  %141 = phi i32 [ -12, %1 ], [ %113, %111 ], [ %120, %119 ], [ 0, %127 ], [ 0, %122 ], [ %131, %138 ], [ %131, %135 ], [ -22, %108 ]
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at803x_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 18) #8
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i16 2048, i16 1024
  %10 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 0, i16 noundef zeroext %9) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at803x_resume(ptr noundef %0) #2 {
  %2 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 3072, i16 noundef zeroext 0) #8
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at803x_config_aneg(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 35
  %3 = load i8, ptr %2, align 1
  %4 = add i8 %3, -1
  %5 = icmp ult i8 %4, 3
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = sext i8 %4 to i32
  %8 = getelementptr inbounds [3 x i16], ptr @switch.table.at803x_config_aneg, i32 0, i32 %7
  %9 = load i16, ptr %8, align 2
  %10 = tail call i32 @phy_modify_changed(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 96, i16 noundef zeroext %9) #8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %42, label %12

12:                                               ; preds = %6
  %13 = icmp eq i32 %10, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = tail call i32 @genphy_soft_reset(ptr noundef %0) #8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %14, %12, %1
  %18 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.phy_driver, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 5099777
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %25 = load i16, ptr %24, align 8
  %26 = and i16 %25, 4096
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = tail call i32 @genphy_c45_pma_setup_forced(ptr noundef %0) #8
  br label %30

30:                                               ; preds = %28, %23
  %31 = getelementptr %struct.phy_device, ptr %0, i32 0, i32 17, i32 1
  %32 = load volatile i32, ptr %31, align 4
  %33 = trunc i32 %32 to i16
  %34 = lshr i16 %33, 8
  %35 = and i16 %34, 128
  %36 = tail call i32 @phy_modify_mmd_changed(ptr noundef %0, i32 noundef 7, i32 noundef 32, i16 noundef zeroext 128, i16 noundef zeroext %35) #8
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %30, %17
  %39 = phi i32 [ %36, %30 ], [ 0, %17 ]
  %40 = icmp ne i32 %39, 0
  %41 = tail call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext %40) #8
  br label %42

42:                                               ; preds = %38, %30, %14, %6
  %43 = phi i32 [ %41, %38 ], [ %36, %30 ], [ %10, %6 ], [ %15, %14 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at803x_read_status(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = tail call i32 @genphy_update_link(ptr noundef %0) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %1
  %7 = load i16, ptr %2, align 8
  %8 = and i16 %7, 4096
  %9 = icmp eq i16 %8, 0
  %10 = and i16 %3, 8192
  %11 = icmp eq i16 %10, 0
  %12 = select i1 %9, i1 true, i1 %11
  %13 = and i16 %7, 8192
  %14 = icmp eq i16 %13, 0
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  store i32 -1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  store i32 255, ptr %18, align 4
  %19 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 11
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 12
  store i32 0, ptr %20, align 8
  %21 = tail call i32 @genphy_read_lpa(ptr noundef %0) #8
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %16
  %24 = tail call fastcc i32 @at803x_read_specific_status(ptr noundef %0)
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = load i16, ptr %2, align 8
  %28 = and i16 %27, 20480
  %29 = icmp eq i16 %28, 20480
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void @phy_resolve_aneg_pause(ptr noundef %0) #8
  br label %31

31:                                               ; preds = %30, %26, %23, %16, %6, %1
  %32 = phi i32 [ %4, %1 ], [ 0, %6 ], [ %21, %16 ], [ %24, %23 ], [ 0, %30 ], [ 0, %26 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at803x_config_intr(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 18) #8
  %7 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %8 = load i16, ptr %7, align 8
  %9 = icmp slt i16 %8, 0
  %10 = load ptr, ptr %2, align 8
  %11 = load i32, ptr %4, align 8
  br i1 %9, label %12, label %22

12:                                               ; preds = %1
  %13 = tail call i32 @mdiobus_read(ptr noundef %10, i32 noundef %11, i32 noundef 19) #8
  %14 = tail call i32 @llvm.smin.i32(i32 %13, i32 0) #8
  %15 = icmp sgt i32 %13, -1
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = trunc i32 %6 to i16
  %18 = or i16 %17, -5120
  %19 = load ptr, ptr %2, align 8
  %20 = load i32, ptr %4, align 8
  %21 = tail call i32 @mdiobus_write(ptr noundef %19, i32 noundef %20, i32 noundef 18, i16 noundef zeroext %18) #8
  br label %30

22:                                               ; preds = %1
  %23 = tail call i32 @mdiobus_write(ptr noundef %10, i32 noundef %11, i32 noundef 18, i16 noundef zeroext 0) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load ptr, ptr %2, align 8
  %27 = load i32, ptr %4, align 8
  %28 = tail call i32 @mdiobus_read(ptr noundef %26, i32 noundef %27, i32 noundef 19) #8
  %29 = tail call i32 @llvm.smin.i32(i32 %28, i32 0) #8
  br label %30

30:                                               ; preds = %25, %22, %16, %12
  %31 = phi i32 [ %14, %12 ], [ %23, %22 ], [ %21, %16 ], [ %29, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at803x_handle_interrupt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 19) #8
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @phy_error(ptr noundef %0) #8
  br label %19

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8
  %11 = load i32, ptr %4, align 8
  %12 = tail call i32 @mdiobus_read(ptr noundef %10, i32 noundef %11, i32 noundef 18) #8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void @phy_error(ptr noundef %0) #8
  br label %19

15:                                               ; preds = %9
  %16 = and i32 %12, %6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @phy_trigger_machine(ptr noundef %0) #8
  br label %19

19:                                               ; preds = %18, %15, %14, %8
  %20 = phi i32 [ 0, %8 ], [ 0, %14 ], [ 1, %18 ], [ 0, %15 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at803x_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.at803x_priv, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @regulator_disable(ptr noundef nonnull %5) #8
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at803x_set_wol(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 32
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %87, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %49, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 72
  %13 = load ptr, ptr %12, align 32
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %87

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %13, i32 4
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = or i32 %14, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %87, label %23

23:                                               ; preds = %17
  %24 = trunc i32 %14 to i16
  %25 = call i16 @llvm.bswap.i16(i16 %24)
  %26 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32842, i16 noundef zeroext %25) #8
  %27 = getelementptr i8, ptr %13, i32 3
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i16
  %30 = getelementptr i8, ptr %13, i32 2
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i16
  %33 = shl nuw i16 %32, 8
  %34 = or i16 %33, %29
  %35 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32843, i16 noundef zeroext %34) #8
  %36 = getelementptr i8, ptr %13, i32 5
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i16
  %39 = load i8, ptr %18, align 1
  %40 = zext i8 %39 to i16
  %41 = shl nuw i16 %40, 8
  %42 = or i16 %41, %38
  %43 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32844, i16 noundef zeroext %42) #8
  %44 = tail call i32 @phy_modify_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32786, i16 noundef zeroext 0, i16 noundef zeroext 32) #8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %87

46:                                               ; preds = %23
  %47 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 18, i16 noundef zeroext 0, i16 noundef zeroext 1) #8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %55, label %87

49:                                               ; preds = %6
  %50 = tail call i32 @phy_modify_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32786, i16 noundef zeroext 32, i16 noundef zeroext 0) #8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %87

52:                                               ; preds = %49
  %53 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 18, i16 noundef zeroext 1, i16 noundef zeroext 0) #8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %87

55:                                               ; preds = %52, %46
  %56 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %59 = load i32, ptr %58, align 8
  %60 = tail call i32 @mdiobus_read(ptr noundef %57, i32 noundef %59, i32 noundef 19) #8
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %87, label %62

62:                                               ; preds = %55
  %63 = load ptr, ptr %56, align 8
  %64 = load i32, ptr %58, align 8
  %65 = tail call i32 @mdiobus_read(ptr noundef %63, i32 noundef %64, i32 noundef 18) #8
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %87, label %67

67:                                               ; preds = %62
  %68 = and i32 %60, -2
  %69 = and i32 %68, %65
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 6
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.phy_driver, ptr %77, i32 0, i32 5
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75, %71
  %83 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 21
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  tail call void @phy_trigger_machine(ptr noundef %0) #8
  br label %87

87:                                               ; preds = %86, %82, %75, %67, %62, %55, %52, %49, %46, %23, %17, %11, %2
  %88 = phi i32 [ -19, %2 ], [ -22, %17 ], [ %44, %23 ], [ %47, %46 ], [ %50, %49 ], [ %53, %52 ], [ %60, %55 ], [ %65, %62 ], [ 0, %86 ], [ 0, %82 ], [ 0, %67 ], [ -22, %11 ], [ 0, %75 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at803x_get_wol(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 1
  store i32 32, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  %5 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32786) #8
  %6 = and i32 %5, -2147483616
  %7 = icmp eq i32 %6, 32
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, ptr %4, align 4
  %10 = or i32 %9, 32
  store i32 %10, ptr %4, align 4
  br label %11

11:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at803x_cable_test_start(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_write(ptr noundef %3, i32 noundef %5, i32 noundef 0, i16 noundef zeroext 4096) #8
  %7 = load ptr, ptr %2, align 8
  %8 = load i32, ptr %4, align 8
  %9 = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %8, i32 noundef 4, i16 noundef zeroext 1) #8
  %10 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %12 [
    i32 5099585, label %16
    i32 5099555, label %16
    i32 5099586, label %16
  ]

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 8
  %14 = load i32, ptr %4, align 8
  %15 = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %14, i32 noundef 9, i16 noundef zeroext 0) #8
  br label %16

16:                                               ; preds = %12, %1, %1, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at803x_cable_test_get_status(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %6 [
    i32 5099585, label %7
    i32 5099555, label %7
    i32 5099586, label %7
  ]

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %6, %2, %2, %2
  %8 = phi i32 [ 15, %6 ], [ 3, %2 ], [ 3, %2 ], [ 3, %2 ]
  store i32 %8, ptr %3, align 4
  store i8 0, ptr %1, align 1
  %9 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  br label %12

12:                                               ; preds = %74, %7
  %13 = phi i32 [ 20, %7 ], [ %14, %74 ]
  %14 = add nsw i32 %13, -1
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %77, label %16

16:                                               ; preds = %12
  %17 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 4, i32 noundef 0) #8
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %71

19:                                               ; preds = %67, %16
  %20 = phi i32 [ %69, %67 ], [ %17, %16 ]
  %21 = load ptr, ptr %9, align 8
  %22 = getelementptr inbounds %struct.phy_driver, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 5099777
  %25 = trunc i32 %20 to i16
  %26 = shl i16 %25, 8
  %27 = and i16 %26, 768
  %28 = or i16 %27, 1
  %29 = select i1 %24, i16 -23552, i16 %28
  %30 = load ptr, ptr %10, align 8
  %31 = load i32, ptr %11, align 8
  %32 = call i32 @mdiobus_write(ptr noundef %30, i32 noundef %31, i32 noundef 22, i16 noundef zeroext %29) #8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %63

34:                                               ; preds = %19
  %35 = call fastcc i32 @at803x_cdt_wait_for_completion(ptr noundef %0) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %63

37:                                               ; preds = %34
  %38 = load ptr, ptr %10, align 8
  %39 = load i32, ptr %11, align 8
  %40 = call i32 @mdiobus_read(ptr noundef %38, i32 noundef %39, i32 noundef 28) #8
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %78, label %42

42:                                               ; preds = %37
  %43 = and i32 %40, 768
  %44 = icmp eq i32 %43, 768
  br i1 %44, label %67, label %45

45:                                               ; preds = %42
  %46 = getelementptr [4 x i32], ptr @at803x_cable_test_one_pair.ethtool_pair, i32 0, i32 %20
  %47 = load i32, ptr %46, align 4
  %48 = trunc i32 %47 to i8
  %49 = lshr i32 %40, 8
  %50 = and i32 %49, 3
  switch i32 %50, label %52 [
    i32 0, label %53
    i32 1, label %56
    i32 2, label %51
  ]

51:                                               ; preds = %45
  br label %56

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %45
  %54 = phi i8 [ 0, %52 ], [ 1, %45 ]
  %55 = call i32 @ethnl_cable_test_result(ptr noundef %0, i8 noundef zeroext %48, i8 noundef zeroext %54) #8
  br label %66

56:                                               ; preds = %51, %45
  %57 = phi i8 [ 2, %51 ], [ 3, %45 ]
  %58 = call i32 @ethnl_cable_test_result(ptr noundef %0, i8 noundef zeroext %48, i8 noundef zeroext %57) #8
  %59 = and i32 %40, 255
  %60 = mul nuw nsw i32 %59, 824
  %61 = udiv i32 %60, 10
  %62 = call i32 @ethnl_cable_test_fault_length(ptr noundef %0, i8 noundef zeroext %48, i32 noundef %61) #8
  br label %66

63:                                               ; preds = %34, %19
  %64 = phi i32 [ %32, %19 ], [ %35, %34 ]
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %63, %56, %53
  call void @_clear_bit(i32 noundef %20, ptr noundef nonnull %3) #8
  br label %67

67:                                               ; preds = %66, %42
  %68 = add nsw i32 %20, 1
  %69 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 4, i32 noundef %68) #8
  %70 = icmp slt i32 %69, 4
  br i1 %70, label %19, label %71

71:                                               ; preds = %67, %16
  %72 = load i32, ptr %3, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  call void @msleep(i32 noundef 250) #8
  %75 = load i32, ptr %3, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %12

77:                                               ; preds = %74, %71, %12
  store i8 1, ptr %1, align 1
  br label %78

78:                                               ; preds = %77, %63, %37
  %79 = phi i32 [ 0, %77 ], [ %40, %37 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at803x_get_tunable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.ethtool_tunable, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = tail call i32 @mdiobus_read(ptr noundef %9, i32 noundef %11, i32 noundef 20) #8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %7
  %15 = and i32 %12, 32
  %16 = icmp eq i32 %15, 0
  %17 = trunc i32 %12 to i8
  %18 = lshr i8 %17, 2
  %19 = and i8 %18, 7
  %20 = add nuw nsw i8 %19, 2
  %21 = select i1 %16, i8 0, i8 %20
  store i8 %21, ptr %2, align 1
  br label %22

22:                                               ; preds = %14, %7, %3
  %23 = phi i32 [ -95, %3 ], [ 0, %14 ], [ %12, %7 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at803x_set_tunable(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.ethtool_tunable, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = load i8, ptr %2, align 1
  switch i8 %8, label %24 [
    i8 -1, label %9
    i8 2, label %10
    i8 3, label %10
    i8 4, label %10
    i8 5, label %10
    i8 6, label %10
    i8 7, label %10
    i8 8, label %10
    i8 9, label %10
    i8 0, label %17
  ]

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9, %7, %7, %7, %7, %7, %7, %7, %7
  %11 = phi i8 [ %8, %7 ], [ %8, %7 ], [ %8, %7 ], [ %8, %7 ], [ %8, %7 ], [ %8, %7 ], [ %8, %7 ], [ %8, %7 ], [ 5, %9 ]
  %12 = zext i8 %11 to i16
  %13 = shl nuw nsw i16 %12, 2
  %14 = add nuw nsw i16 %13, 24
  %15 = and i16 %14, 28
  %16 = or i16 %15, 34
  br label %17

17:                                               ; preds = %10, %7
  %18 = phi i16 [ 28, %10 ], [ 34, %7 ]
  %19 = phi i16 [ %16, %10 ], [ 0, %7 ]
  %20 = tail call i32 @phy_modify_changed(ptr noundef %0, i32 noundef 20, i16 noundef zeroext %18, i16 noundef zeroext %19) #8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = tail call i32 @phy_init_hw(ptr noundef %0) #8
  br label %24

24:                                               ; preds = %22, %17, %7, %3
  %25 = phi i32 [ -95, %3 ], [ -22, %7 ], [ %23, %22 ], [ %20, %17 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at803x_link_change_notify(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 5
  br i1 %4, label %5, label %54

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %54, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 8
  %14 = tail call i32 @mdiobus_read(ptr noundef %11, i32 noundef %13, i32 noundef 0) #8
  %15 = trunc i32 %14 to i16
  %16 = load ptr, ptr %10, align 8
  %17 = load i32, ptr %12, align 8
  %18 = tail call i32 @mdiobus_read(ptr noundef %16, i32 noundef %17, i32 noundef 4) #8
  %19 = trunc i32 %18 to i16
  %20 = load ptr, ptr %10, align 8
  %21 = load i32, ptr %12, align 8
  %22 = tail call i32 @mdiobus_read(ptr noundef %20, i32 noundef %21, i32 noundef 9) #8
  %23 = trunc i32 %22 to i16
  %24 = load ptr, ptr %10, align 8
  %25 = load i32, ptr %12, align 8
  %26 = tail call i32 @mdiobus_read(ptr noundef %24, i32 noundef %25, i32 noundef 18) #8
  %27 = trunc i32 %26 to i16
  %28 = load ptr, ptr %10, align 8
  %29 = load i32, ptr %12, align 8
  %30 = tail call i32 @mdiobus_read(ptr noundef %28, i32 noundef %29, i32 noundef 20) #8
  %31 = trunc i32 %30 to i16
  %32 = load ptr, ptr %10, align 8
  %33 = load i32, ptr %12, align 8
  %34 = tail call i32 @mdiobus_read(ptr noundef %32, i32 noundef %33, i32 noundef 24) #8
  %35 = trunc i32 %34 to i16
  tail call void @mdio_device_reset(ptr noundef %0, i32 noundef 1) #8
  tail call void @msleep(i32 noundef 1) #8
  tail call void @mdio_device_reset(ptr noundef %0, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 1) #8
  %36 = load ptr, ptr %10, align 8
  %37 = load i32, ptr %12, align 8
  %38 = tail call i32 @mdiobus_write(ptr noundef %36, i32 noundef %37, i32 noundef 0, i16 noundef zeroext %15) #8
  %39 = load ptr, ptr %10, align 8
  %40 = load i32, ptr %12, align 8
  %41 = tail call i32 @mdiobus_write(ptr noundef %39, i32 noundef %40, i32 noundef 4, i16 noundef zeroext %19) #8
  %42 = load ptr, ptr %10, align 8
  %43 = load i32, ptr %12, align 8
  %44 = tail call i32 @mdiobus_write(ptr noundef %42, i32 noundef %43, i32 noundef 9, i16 noundef zeroext %23) #8
  %45 = load ptr, ptr %10, align 8
  %46 = load i32, ptr %12, align 8
  %47 = tail call i32 @mdiobus_write(ptr noundef %45, i32 noundef %46, i32 noundef 18, i16 noundef zeroext %27) #8
  %48 = load ptr, ptr %10, align 8
  %49 = load i32, ptr %12, align 8
  %50 = tail call i32 @mdiobus_write(ptr noundef %48, i32 noundef %49, i32 noundef 20, i16 noundef zeroext %31) #8
  %51 = load ptr, ptr %10, align 8
  %52 = load i32, ptr %12, align 8
  %53 = tail call i32 @mdiobus_write(ptr noundef %51, i32 noundef %52, i32 noundef 24, i16 noundef zeroext %35) #8
  br label %54

54:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at803x_get_features(ptr noundef %0) #2 {
  %2 = tail call i32 @genphy_read_abilities(ptr noundef %0) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %30

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.phy_driver, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 5099777
  br i1 %9, label %10, label %23

10:                                               ; preds = %4
  %11 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 1, i32 noundef 21) #8
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %10
  %14 = getelementptr %struct.phy_device, ptr %0, i32 0, i32 16, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, -32769
  %17 = shl i32 %11, 15
  %18 = and i32 %17, 32768
  %19 = or i32 %16, %18
  store i32 %19, ptr %14, align 4
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds %struct.phy_driver, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %13, %4
  %24 = phi i32 [ %22, %13 ], [ %8, %4 ]
  %25 = icmp eq i32 %24, 5099636
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = getelementptr %struct.phy_device, ptr %0, i32 0, i32 16, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, -513
  store i32 %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %26, %23, %10, %1
  %31 = phi i32 [ 0, %26 ], [ %2, %1 ], [ %11, %10 ], [ 0, %23 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at803x_read_page(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @__mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 31) #8
  %7 = icmp slt i32 %6, 0
  %8 = lshr i32 %6, 15
  %9 = and i32 %8, 1
  %10 = select i1 %7, i32 %6, i32 %9
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at803x_write_page(ptr noundef %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i16 0, i16 -32768
  %5 = select i1 %3, i16 -32768, i16 0
  %6 = tail call i32 @__phy_modify(ptr noundef %0, i32 noundef 31, i16 noundef zeroext %4, i16 noundef zeroext %5) #8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qca83xx_config_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 7
  switch i32 %4, label %56 [
    i32 1, label %5
    i32 2, label %21
    i32 4, label %23
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 29, i16 noundef zeroext 0) #8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5
  %13 = load ptr, ptr %6, align 8
  %14 = load i32, ptr %8, align 8
  %15 = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %14, i32 noundef 30, i16 noundef zeroext 746) #8
  br label %16

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %6, align 8
  %18 = load i32, ptr %8, align 8
  %19 = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %18, i32 noundef 29, i16 noundef zeroext 61) #8
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %56, label %49

21:                                               ; preds = %1
  %22 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 7, i32 noundef 60, i16 noundef zeroext 0) #8
  br label %23

23:                                               ; preds = %21, %1
  %24 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32781, i16 noundef zeroext -32705) #8
  %25 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %28 = load i32, ptr %27, align 8
  %29 = tail call i32 @mdiobus_write(ptr noundef %26, i32 noundef %28, i32 noundef 29, i16 noundef zeroext 61) #8
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load ptr, ptr %25, align 8
  %33 = load i32, ptr %27, align 8
  %34 = tail call i32 @mdiobus_write(ptr noundef %32, i32 noundef %33, i32 noundef 30, i16 noundef zeroext 26720) #8
  br label %35

35:                                               ; preds = %31, %23
  %36 = load ptr, ptr %25, align 8
  %37 = load i32, ptr %27, align 8
  %38 = tail call i32 @mdiobus_write(ptr noundef %36, i32 noundef %37, i32 noundef 29, i16 noundef zeroext 5) #8
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %25, align 8
  %42 = load i32, ptr %27, align 8
  %43 = tail call i32 @mdiobus_write(ptr noundef %41, i32 noundef %42, i32 noundef 30, i16 noundef zeroext 11334) #8
  br label %44

44:                                               ; preds = %40, %35
  %45 = load ptr, ptr %25, align 8
  %46 = load i32, ptr %27, align 8
  %47 = tail call i32 @mdiobus_write(ptr noundef %45, i32 noundef %46, i32 noundef 29, i16 noundef zeroext 60) #8
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %44, %16
  %50 = phi ptr [ %6, %16 ], [ %25, %44 ]
  %51 = phi ptr [ %8, %16 ], [ %27, %44 ]
  %52 = phi i16 [ 26784, %16 ], [ 24576, %44 ]
  %53 = load ptr, ptr %50, align 8
  %54 = load i32, ptr %51, align 8
  %55 = tail call i32 @mdiobus_write(ptr noundef %53, i32 noundef %54, i32 noundef 30, i16 noundef zeroext %52) #8
  br label %56

56:                                               ; preds = %49, %44, %16, %1
  %57 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.phy_driver, ptr %58, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, -5099571
  %62 = icmp ult i32 %61, 2
  br i1 %62, label %63, label %81

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %67 = load i32, ptr %66, align 8
  %68 = tail call i32 @mdiobus_write(ptr noundef %65, i32 noundef %67, i32 noundef 29, i16 noundef zeroext 0) #8
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %63
  %71 = load ptr, ptr %64, align 8
  %72 = load i32, ptr %66, align 8
  %73 = tail call i32 @mdiobus_read(ptr noundef %71, i32 noundef %72, i32 noundef 30) #8
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %70
  %76 = trunc i32 %73 to i16
  %77 = and i16 %76, -5
  %78 = load ptr, ptr %64, align 8
  %79 = load i32, ptr %66, align 8
  %80 = tail call i32 @mdiobus_write(ptr noundef %78, i32 noundef %79, i32 noundef 30, i16 noundef zeroext %77) #8
  br label %81

81:                                               ; preds = %75, %70, %63, %56
  %82 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 9, i16 noundef zeroext 0, i16 noundef zeroext 1024) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qca83xx_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 5099574
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 @genphy_suspend(ptr noundef %0) #8
  br label %11

9:                                                ; preds = %1
  %10 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext -321, i16 noundef zeroext 0) #8
  br label %11

11:                                               ; preds = %9, %7
  %12 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 8
  %16 = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 29, i16 noundef zeroext 61) #8
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %12, align 8
  %20 = load i32, ptr %14, align 8
  %21 = tail call i32 @mdiobus_read(ptr noundef %19, i32 noundef %20, i32 noundef 30) #8
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = trunc i32 %21 to i16
  %25 = and i16 %24, -65
  %26 = load ptr, ptr %12, align 8
  %27 = load i32, ptr %14, align 8
  %28 = tail call i32 @mdiobus_write(ptr noundef %26, i32 noundef %27, i32 noundef 30, i16 noundef zeroext %25) #8
  br label %29

29:                                               ; preds = %23, %18, %11
  %30 = load ptr, ptr %12, align 8
  %31 = load i32, ptr %14, align 8
  %32 = tail call i32 @mdiobus_write(ptr noundef %30, i32 noundef %31, i32 noundef 29, i16 noundef zeroext 11) #8
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %12, align 8
  %36 = load i32, ptr %14, align 8
  %37 = tail call i32 @mdiobus_read(ptr noundef %35, i32 noundef %36, i32 noundef 30) #8
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = trunc i32 %37 to i16
  %41 = and i16 %40, -9217
  %42 = load ptr, ptr %12, align 8
  %43 = load i32, ptr %14, align 8
  %44 = tail call i32 @mdiobus_write(ptr noundef %42, i32 noundef %43, i32 noundef 30, i16 noundef zeroext %41) #8
  br label %45

45:                                               ; preds = %39, %34, %29
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qca83xx_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 32
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @qca83xx_config_init(ptr noundef %0)
  %8 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 0, i16 noundef zeroext -28672) #8
  %9 = tail call i64 @ktime_get() #8
  %10 = add i64 %9, 600000000
  tail call void @usleep_range_state(i32 noundef 12501, i32 noundef 50000, i32 noundef 2) #8
  %11 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %12 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %11, align 8
  %14 = load i32, ptr %12, align 8
  %15 = tail call i32 @mdiobus_read(ptr noundef %13, i32 noundef %14, i32 noundef 0) #8
  %16 = and i32 %15, -2147450880
  %17 = icmp eq i32 %16, 32768
  br i1 %17, label %18, label %32

18:                                               ; preds = %26, %6
  %19 = tail call i64 @ktime_get() #8
  %20 = icmp sgt i64 %19, %10
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load ptr, ptr %11, align 8
  %23 = load i32, ptr %12, align 8
  %24 = tail call i32 @mdiobus_read(ptr noundef %22, i32 noundef %23, i32 noundef 0) #8
  %25 = and i32 %24, -2147450880
  br label %32

26:                                               ; preds = %18
  tail call void @usleep_range_state(i32 noundef 12501, i32 noundef 50000, i32 noundef 2) #8
  %27 = load ptr, ptr %11, align 8
  %28 = load i32, ptr %12, align 8
  %29 = tail call i32 @mdiobus_read(ptr noundef %27, i32 noundef %28, i32 noundef 0) #8
  %30 = and i32 %29, -2147450880
  %31 = icmp eq i32 %30, 32768
  br i1 %31, label %18, label %32

32:                                               ; preds = %26, %21, %6
  %33 = phi i32 [ %16, %6 ], [ %25, %21 ], [ %30, %26 ]
  %34 = phi i32 [ %15, %6 ], [ %24, %21 ], [ %29, %26 ]
  %35 = icmp slt i32 %34, 0
  %36 = icmp eq i32 %33, 32768
  %37 = select i1 %36, i32 -110, i32 0
  %38 = select i1 %35, i32 %34, i32 %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.qca83xx_resume, i32 noundef %38) #9
  br label %42

41:                                               ; preds = %32
  tail call void @msleep(i32 noundef 1) #8
  br label %42

42:                                               ; preds = %41, %40, %1
  %43 = phi i32 [ %38, %40 ], [ 0, %41 ], [ 0, %1 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @qca83xx_link_change_notify(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 5099574
  br i1 %6, label %52, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %30

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 100
  br i1 %14, label %15, label %52

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %19 = load i32, ptr %18, align 8
  %20 = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 29, i16 noundef zeroext 0) #8
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %52, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %16, align 8
  %24 = load i32, ptr %18, align 8
  %25 = tail call i32 @mdiobus_read(ptr noundef %23, i32 noundef %24, i32 noundef 30) #8
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %52, label %27

27:                                               ; preds = %22
  %28 = trunc i32 %25 to i16
  %29 = or i16 %28, 4
  br label %45

30:                                               ; preds = %7
  %31 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %34 = load i32, ptr %33, align 8
  %35 = tail call i32 @mdiobus_write(ptr noundef %32, i32 noundef %34, i32 noundef 29, i16 noundef zeroext 0) #8
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %30
  %38 = load ptr, ptr %31, align 8
  %39 = load i32, ptr %33, align 8
  %40 = tail call i32 @mdiobus_read(ptr noundef %38, i32 noundef %39, i32 noundef 30) #8
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = trunc i32 %40 to i16
  %44 = and i16 %43, -5
  br label %45

45:                                               ; preds = %42, %27
  %46 = phi ptr [ %31, %42 ], [ %16, %27 ]
  %47 = phi ptr [ %33, %42 ], [ %18, %27 ]
  %48 = phi i16 [ %44, %42 ], [ %29, %27 ]
  %49 = load ptr, ptr %46, align 8
  %50 = load i32, ptr %47, align 8
  %51 = tail call i32 @mdiobus_write(ptr noundef %49, i32 noundef %50, i32 noundef 30, i16 noundef zeroext %48) #8
  br label %52

52:                                               ; preds = %45, %37, %30, %22, %15, %11, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @at803x_get_sset_count(ptr nocapture noundef readnone %0) #3 {
  ret i32 3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at803x_get_strings(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = tail call i32 @strscpy(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef 32) #8
  %4 = getelementptr i8, ptr %1, i32 32
  %5 = tail call i32 @strscpy(ptr noundef %4, ptr noundef nonnull @.str.29, i32 noundef 32) #8
  %6 = getelementptr i8, ptr %1, i32 64
  %7 = tail call i32 @strscpy(ptr noundef %6, ptr noundef nonnull @.str.30, i32 noundef 32) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at803x_get_stats(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %5 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i32, ptr %6, align 8
  %10 = tail call i32 @mdiobus_read(ptr noundef %8, i32 noundef %9, i32 noundef 10) #8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = and i32 %10, 255
  %14 = zext i32 %13 to i64
  %15 = getelementptr %struct.at803x_priv, ptr %7, i32 0, i32 8, i32 0
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
  %23 = tail call i32 @mdiobus_read(ptr noundef %21, i32 noundef %22, i32 noundef 21) #8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = and i32 %23, 65535
  %27 = zext i32 %26 to i64
  %28 = getelementptr %struct.at803x_priv, ptr %20, i32 0, i32 8, i32 1
  %29 = load i64, ptr %28, align 8
  %30 = add i64 %29, %27
  store i64 %30, ptr %28, align 8
  br label %31

31:                                               ; preds = %25, %18
  %32 = phi i64 [ %30, %25 ], [ -1, %18 ]
  %33 = getelementptr i64, ptr %2, i32 1
  store i64 %32, ptr %33, align 8
  %34 = load ptr, ptr %4, align 8
  %35 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 22) #8
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = and i32 %35, 65535
  %39 = zext i32 %38 to i64
  %40 = getelementptr %struct.at803x_priv, ptr %34, i32 0, i32 8, i32 2
  %41 = load i64, ptr %40, align 8
  %42 = add i64 %41, %39
  store i64 %42, ptr %40, align 8
  br label %43

43:                                               ; preds = %37, %31
  %44 = phi i64 [ %42, %37 ], [ -1, %31 ]
  %45 = getelementptr i64, ptr %2, i32 2
  store i64 %44, ptr %45, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qca808x_soft_reset(ptr noundef %0) #2 {
  %2 = tail call i32 @genphy_soft_reset(ptr noundef %0) #8
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = tail call i32 @mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 29, i16 noundef zeroext 9) #8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 8
  %13 = load i32, ptr %7, align 8
  %14 = tail call i32 @mdiobus_read(ptr noundef %12, i32 noundef %13, i32 noundef 30) #8
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = trunc i32 %14 to i16
  %18 = or i16 %17, 2
  %19 = load ptr, ptr %5, align 8
  %20 = load i32, ptr %7, align 8
  %21 = tail call i32 @mdiobus_write(ptr noundef %19, i32 noundef %20, i32 noundef 30, i16 noundef zeroext %18) #8
  br label %22

22:                                               ; preds = %16, %11, %4, %1
  %23 = phi i32 [ %2, %1 ], [ %21, %16 ], [ %14, %11 ], [ %9, %4 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qca808x_config_init(ptr noundef %0) #2 {
  %2 = tail call i32 @phy_modify_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32775, i16 noundef zeroext 496, i16 noundef zeroext 144) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %64

4:                                                ; preds = %1
  %5 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32776, i16 noundef zeroext 7218) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %64

7:                                                ; preds = %4
  %8 = tail call i32 @genphy_c45_fast_retrain(ptr noundef %0, i1 noundef zeroext true) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %64

10:                                               ; preds = %7
  %11 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 7, i32 noundef 36892, i16 noundef zeroext 0) #8
  %12 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 1, i32 noundef 32788, i16 noundef zeroext 1321) #8
  %13 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 1, i32 noundef 32782, i16 noundef zeroext 833) #8
  %14 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 1, i32 noundef 32798, i16 noundef zeroext 1049) #8
  %15 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 1, i32 noundef 32800, i16 noundef zeroext 833) #8
  %16 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 41216, i16 noundef zeroext -28157) #8
  %17 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 41221, i16 noundef zeroext -32767) #8
  %18 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 41222, i16 noundef zeroext 4369) #8
  %19 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 41219, i16 noundef zeroext 5784) #8
  %20 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 40977, i16 noundef zeroext 24453) #8
  %21 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 41217, i16 noundef zeroext 18605) #8
  %22 = tail call i32 @prandom_u32() #8
  %23 = urem i32 %22, 50
  %24 = trunc i32 %23 to i16
  %25 = shl nuw nsw i16 %24, 2
  %26 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %29 = load i32, ptr %28, align 8
  %30 = tail call i32 @mdiobus_write(ptr noundef %27, i32 noundef %29, i32 noundef 29, i16 noundef zeroext 9) #8
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %64, label %32

32:                                               ; preds = %10
  %33 = load ptr, ptr %26, align 8
  %34 = load i32, ptr %28, align 8
  %35 = tail call i32 @mdiobus_read(ptr noundef %33, i32 noundef %34, i32 noundef 30) #8
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %64, label %37

37:                                               ; preds = %32
  %38 = trunc i32 %35 to i16
  %39 = and i16 %38, -8189
  %40 = or i16 %39, %25
  %41 = load ptr, ptr %26, align 8
  %42 = load i32, ptr %28, align 8
  %43 = tail call i32 @mdiobus_write(ptr noundef %41, i32 noundef %42, i32 noundef 30, i16 noundef zeroext %40) #8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %37
  %46 = load ptr, ptr %26, align 8
  %47 = load i32, ptr %28, align 8
  %48 = tail call i32 @mdiobus_write(ptr noundef %46, i32 noundef %47, i32 noundef 29, i16 noundef zeroext 9) #8
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr %26, align 8
  %52 = load i32, ptr %28, align 8
  %53 = tail call i32 @mdiobus_read(ptr noundef %51, i32 noundef %52, i32 noundef 30) #8
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %50
  %56 = trunc i32 %53 to i16
  %57 = or i16 %56, 2
  %58 = load ptr, ptr %26, align 8
  %59 = load i32, ptr %28, align 8
  %60 = tail call i32 @mdiobus_write(ptr noundef %58, i32 noundef %59, i32 noundef 30, i16 noundef zeroext %57) #8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = tail call fastcc i32 @at803x_debug_reg_mask(ptr noundef %0, i16 noundef zeroext 11392, i16 noundef zeroext 255, i16 noundef zeroext 240)
  br label %64

64:                                               ; preds = %62, %55, %50, %45, %37, %32, %10, %7, %4, %1
  %65 = phi i32 [ %63, %62 ], [ %2, %1 ], [ %5, %4 ], [ %43, %37 ], [ %60, %55 ], [ %8, %7 ], [ %30, %10 ], [ %35, %32 ], [ %48, %45 ], [ %53, %50 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qca808x_read_status(ptr noundef %0) #2 {
  %2 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 7, i32 noundef 33) #8
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %89, label %4

4:                                                ; preds = %1
  %5 = getelementptr %struct.phy_device, ptr %0, i32 0, i32 18, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, -32769
  %8 = shl i32 %2, 10
  %9 = and i32 %8, 32768
  %10 = or i32 %7, %9
  store i32 %10, ptr %5, align 4
  %11 = tail call i32 @genphy_read_status(ptr noundef %0) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %89

13:                                               ; preds = %4
  %14 = tail call fastcc i32 @at803x_read_specific_status(ptr noundef %0)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %89, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %18 = load i16, ptr %17, align 8
  %19 = and i16 %18, 8192
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 2500
  %25 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 7
  br i1 %24, label %26, label %27

26:                                               ; preds = %21
  store i32 22, ptr %25, align 4
  br label %89

27:                                               ; preds = %21
  store i32 4, ptr %25, align 4
  br label %89

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 15
  %30 = load i8, ptr %29, align 2
  %31 = icmp eq i8 %30, 4
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %36 = load i32, ptr %35, align 8
  %37 = tail call i32 @mdiobus_write(ptr noundef %34, i32 noundef %36, i32 noundef 29, i16 noundef zeroext 9) #8
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %89, label %39

39:                                               ; preds = %32
  %40 = load ptr, ptr %33, align 8
  %41 = load i32, ptr %35, align 8
  %42 = tail call i32 @mdiobus_read(ptr noundef %40, i32 noundef %41, i32 noundef 30) #8
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %89, label %44

44:                                               ; preds = %39
  %45 = trunc i32 %42 to i16
  %46 = and i16 %45, -3
  %47 = load ptr, ptr %33, align 8
  %48 = load i32, ptr %35, align 8
  %49 = tail call i32 @mdiobus_write(ptr noundef %47, i32 noundef %48, i32 noundef 30, i16 noundef zeroext %46) #8
  br label %89

50:                                               ; preds = %28
  %51 = tail call i32 @prandom_u32() #8
  %52 = urem i32 %51, 50
  %53 = trunc i32 %52 to i16
  %54 = shl nuw nsw i16 %53, 2
  %55 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %58 = load i32, ptr %57, align 8
  %59 = tail call i32 @mdiobus_write(ptr noundef %56, i32 noundef %58, i32 noundef 29, i16 noundef zeroext 9) #8
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %50
  %62 = load ptr, ptr %55, align 8
  %63 = load i32, ptr %57, align 8
  %64 = tail call i32 @mdiobus_read(ptr noundef %62, i32 noundef %63, i32 noundef 30) #8
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %61
  %67 = trunc i32 %64 to i16
  %68 = and i16 %67, -8189
  %69 = or i16 %68, %54
  %70 = load ptr, ptr %55, align 8
  %71 = load i32, ptr %57, align 8
  %72 = tail call i32 @mdiobus_write(ptr noundef %70, i32 noundef %71, i32 noundef 30, i16 noundef zeroext %69) #8
  br label %73

73:                                               ; preds = %66, %61, %50
  %74 = load ptr, ptr %55, align 8
  %75 = load i32, ptr %57, align 8
  %76 = tail call i32 @mdiobus_write(ptr noundef %74, i32 noundef %75, i32 noundef 29, i16 noundef zeroext 9) #8
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %73
  %79 = load ptr, ptr %55, align 8
  %80 = load i32, ptr %57, align 8
  %81 = tail call i32 @mdiobus_read(ptr noundef %79, i32 noundef %80, i32 noundef 30) #8
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %78
  %84 = trunc i32 %81 to i16
  %85 = or i16 %84, 2
  %86 = load ptr, ptr %55, align 8
  %87 = load i32, ptr %57, align 8
  %88 = tail call i32 @mdiobus_write(ptr noundef %86, i32 noundef %87, i32 noundef 30, i16 noundef zeroext %85) #8
  br label %89

89:                                               ; preds = %83, %78, %73, %44, %39, %32, %27, %26, %13, %4, %1
  %90 = phi i32 [ %2, %1 ], [ %11, %4 ], [ %14, %13 ], [ 0, %26 ], [ 0, %27 ], [ 0, %32 ], [ 0, %39 ], [ 0, %44 ], [ 0, %73 ], [ 0, %78 ], [ 0, %83 ]
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qca808x_cable_test_start(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_write(ptr noundef %3, i32 noundef %5, i32 noundef 29, i16 noundef zeroext 11) #8
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %38, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8
  %10 = load i32, ptr %4, align 8
  %11 = tail call i32 @mdiobus_read(ptr noundef %9, i32 noundef %10, i32 noundef 30) #8
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %8
  %14 = trunc i32 %11 to i16
  %15 = and i16 %14, 32767
  %16 = load ptr, ptr %2, align 8
  %17 = load i32, ptr %4, align 8
  %18 = tail call i32 @mdiobus_write(ptr noundef %16, i32 noundef %17, i32 noundef 30, i16 noundef zeroext %15) #8
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %13
  %21 = tail call i32 @phy_modify_changed(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 96, i16 noundef zeroext 0) #8
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  store i32 1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  store i32 1000, ptr %25, align 8
  %26 = tail call i32 @genphy_c45_pma_setup_forced(ptr noundef %0) #8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @genphy_setup_forced(ptr noundef %0) #8
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32884, i16 noundef zeroext -16320) #8
  %33 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32886, i16 noundef zeroext -16320) #8
  %34 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32887, i16 noundef zeroext -24480) #8
  %35 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32888, i16 noundef zeroext -16304) #8
  %36 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32890, i16 noundef zeroext -16288) #8
  %37 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32894, i16 noundef zeroext -20384) #8
  br label %38

38:                                               ; preds = %31, %28, %23, %20, %13, %8, %1
  %39 = phi i32 [ 0, %31 ], [ %18, %13 ], [ %21, %20 ], [ %26, %23 ], [ %29, %28 ], [ %6, %1 ], [ %11, %8 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qca808x_cable_test_get_status(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  store i8 0, ptr %1, align 1
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.phy_driver, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 5099777
  %8 = select i1 %7, i16 -23552, i16 1
  %9 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 @mdiobus_write(ptr noundef %10, i32 noundef %12, i32 noundef 22, i16 noundef zeroext %8) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %97

15:                                               ; preds = %2
  %16 = tail call fastcc i32 @at803x_cdt_wait_for_completion(ptr noundef %0)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %97

18:                                               ; preds = %15
  %19 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32868) #8
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %97, label %21

21:                                               ; preds = %18
  %22 = lshr i32 %19, 12
  %23 = and i32 %22, 15
  %24 = lshr i32 %19, 8
  %25 = and i32 %24, 15
  %26 = lshr i32 %19, 4
  %27 = and i32 %26, 15
  %28 = and i32 %19, 15
  %29 = add nsw i32 %23, -1
  %30 = icmp ult i32 %29, 3
  %31 = trunc i32 %29 to i8
  %32 = add i8 %31, 1
  %33 = select i1 %30, i8 %32, i8 0
  %34 = tail call i32 @ethnl_cable_test_result(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext %33) #8
  %35 = add nsw i32 %25, -1
  %36 = icmp ult i32 %35, 3
  %37 = trunc i32 %35 to i8
  %38 = add i8 %37, 1
  %39 = select i1 %36, i8 %38, i8 0
  %40 = tail call i32 @ethnl_cable_test_result(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext %39) #8
  %41 = add nsw i32 %27, -1
  %42 = icmp ult i32 %41, 3
  %43 = trunc i32 %41 to i8
  %44 = add i8 %43, 1
  %45 = select i1 %42, i8 %44, i8 0
  %46 = tail call i32 @ethnl_cable_test_result(ptr noundef %0, i8 noundef zeroext 2, i8 noundef zeroext %45) #8
  %47 = add nsw i32 %28, -1
  %48 = icmp ult i32 %47, 3
  %49 = trunc i32 %47 to i8
  %50 = add i8 %49, 1
  %51 = select i1 %48, i8 %50, i8 0
  %52 = tail call i32 @ethnl_cable_test_result(ptr noundef %0, i8 noundef zeroext 3, i8 noundef zeroext %51) #8
  %53 = and i32 %19, 57344
  %54 = icmp eq i32 %53, 8192
  br i1 %54, label %55, label %63

55:                                               ; preds = %21
  %56 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32869) #8
  %57 = icmp slt i32 %56, 0
  %58 = and i32 %56, 255
  %59 = mul nuw nsw i32 %58, 824
  %60 = udiv i32 %59, 10
  %61 = select i1 %57, i32 %56, i32 %60
  %62 = tail call i32 @ethnl_cable_test_fault_length(ptr noundef %0, i8 noundef zeroext 0, i32 noundef %61) #8
  br label %63

63:                                               ; preds = %55, %21
  %64 = and i32 %19, 3584
  %65 = icmp eq i32 %64, 512
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32870) #8
  %68 = icmp slt i32 %67, 0
  %69 = and i32 %67, 255
  %70 = mul nuw nsw i32 %69, 824
  %71 = udiv i32 %70, 10
  %72 = select i1 %68, i32 %67, i32 %71
  %73 = tail call i32 @ethnl_cable_test_fault_length(ptr noundef %0, i8 noundef zeroext 1, i32 noundef %72) #8
  br label %74

74:                                               ; preds = %66, %63
  %75 = and i32 %19, 224
  %76 = icmp eq i32 %75, 32
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32871) #8
  %79 = icmp slt i32 %78, 0
  %80 = and i32 %78, 255
  %81 = mul nuw nsw i32 %80, 824
  %82 = udiv i32 %81, 10
  %83 = select i1 %79, i32 %78, i32 %82
  %84 = tail call i32 @ethnl_cable_test_fault_length(ptr noundef %0, i8 noundef zeroext 2, i32 noundef %83) #8
  br label %85

85:                                               ; preds = %77, %74
  %86 = and i32 %19, 14
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32872) #8
  %90 = icmp slt i32 %89, 0
  %91 = and i32 %89, 255
  %92 = mul nuw nsw i32 %91, 824
  %93 = udiv i32 %92, 10
  %94 = select i1 %90, i32 %89, i32 %93
  %95 = tail call i32 @ethnl_cable_test_fault_length(ptr noundef %0, i8 noundef zeroext 3, i32 noundef %94) #8
  br label %96

96:                                               ; preds = %88, %85
  store i8 1, ptr %1, align 1
  br label %97

97:                                               ; preds = %96, %18, %15, %2
  %98 = phi i32 [ 0, %96 ], [ %13, %2 ], [ %16, %15 ], [ %19, %18 ]
  ret i32 %98
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @at803x_debug_reg_mask(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = tail call i32 @mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 29, i16 noundef zeroext %1) #8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 8
  %13 = load i32, ptr %7, align 8
  %14 = tail call i32 @mdiobus_read(ptr noundef %12, i32 noundef %13, i32 noundef 30) #8
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = zext i16 %2 to i32
  %18 = xor i32 %17, -1
  %19 = and i32 %14, %18
  %20 = trunc i32 %19 to i16
  %21 = or i16 %20, %3
  %22 = load ptr, ptr %5, align 8
  %23 = load i32, ptr %7, align 8
  %24 = tail call i32 @mdiobus_write(ptr noundef %22, i32 noundef %23, i32 noundef 30, i16 noundef zeroext %21) #8
  br label %25

25:                                               ; preds = %16, %11, %4
  %26 = phi i32 [ %24, %16 ], [ %14, %11 ], [ %9, %4 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at803x_rgmii_reg_set_voltage_sel(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %4 = icmp eq i32 %1, 0
  %5 = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = tail call i32 @mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 29, i16 noundef zeroext 31) #8
  %10 = icmp slt i32 %9, 0
  br i1 %4, label %20, label %11

11:                                               ; preds = %2
  br i1 %10, label %34, label %12

12:                                               ; preds = %11
  %13 = load ptr, ptr %5, align 8
  %14 = load i32, ptr %7, align 8
  %15 = tail call i32 @mdiobus_read(ptr noundef %13, i32 noundef %14, i32 noundef 30) #8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %12
  %18 = trunc i32 %15 to i16
  %19 = or i16 %18, 8
  br label %29

20:                                               ; preds = %2
  br i1 %10, label %34, label %21

21:                                               ; preds = %20
  %22 = load ptr, ptr %5, align 8
  %23 = load i32, ptr %7, align 8
  %24 = tail call i32 @mdiobus_read(ptr noundef %22, i32 noundef %23, i32 noundef 30) #8
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = trunc i32 %24 to i16
  %28 = and i16 %27, -9
  br label %29

29:                                               ; preds = %26, %17
  %30 = phi i16 [ %28, %26 ], [ %19, %17 ]
  %31 = load ptr, ptr %5, align 8
  %32 = load i32, ptr %7, align 8
  %33 = tail call i32 @mdiobus_write(ptr noundef %31, i32 noundef %32, i32 noundef 30, i16 noundef zeroext %30) #8
  br label %34

34:                                               ; preds = %29, %21, %20, %12, %11
  %35 = phi i32 [ %15, %12 ], [ %9, %11 ], [ %24, %21 ], [ %9, %20 ], [ %33, %29 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at803x_rgmii_reg_get_voltage_sel(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.mdio_device, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mdio_device, ptr %2, i32 0, i32 6
  %6 = load i32, ptr %5, align 8
  %7 = tail call i32 @mdiobus_write(ptr noundef %4, i32 noundef %6, i32 noundef 29, i16 noundef zeroext 31) #8
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  %11 = load i32, ptr %5, align 8
  %12 = tail call i32 @mdiobus_read(ptr noundef %10, i32 noundef %11, i32 noundef 30) #8
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i32 [ %12, %9 ], [ %7, %1 ]
  %15 = icmp slt i32 %14, 0
  %16 = lshr i32 %14, 3
  %17 = and i32 %16, 1
  %18 = select i1 %15, i32 %14, i32 %17
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_pma_setup_forced(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_mmd_changed(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_changed(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_update_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_lpa(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @at803x_read_specific_status(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 17) #8
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %52, label %8

8:                                                ; preds = %1
  %9 = and i32 %6, 2048
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %52, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %2, align 8
  %13 = load i32, ptr %4, align 8
  %14 = tail call i32 @mdiobus_read(ptr noundef %12, i32 noundef %13, i32 noundef 16) #8
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %52, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.phy_driver, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 5099777
  %22 = lshr i32 %6, 7
  %23 = and i32 %22, 7
  %24 = lshr i32 %6, 14
  %25 = and i32 %24, 3
  %26 = select i1 %21, i32 %23, i32 %25
  %27 = icmp ult i32 %26, 5
  br i1 %27, label %28, label %37

28:                                               ; preds = %16
  %29 = trunc i32 %26 to i8
  %30 = lshr i8 23, %29
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds [5 x i32], ptr @switch.table.at803x_read_specific_status, i32 0, i32 %26
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  store i32 %35, ptr %36, align 8
  br label %37

37:                                               ; preds = %33, %28, %16
  %38 = lshr i32 %6, 13
  %39 = and i32 %38, 1
  %40 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  store i32 %39, ptr %40, align 4
  %41 = and i32 %6, 64
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i8 1, i8 2
  %44 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 34
  store i8 %43, ptr %44, align 8
  %45 = lshr i32 %14, 5
  %46 = and i32 %45, 3
  switch i32 %46, label %52 [
    i32 0, label %49
    i32 1, label %47
    i32 3, label %48
  ]

47:                                               ; preds = %37
  br label %49

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %47, %37
  %50 = phi i8 [ 2, %47 ], [ 3, %48 ], [ 1, %37 ]
  %51 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 35
  store i8 %50, ptr %51, align 1
  br label %52

52:                                               ; preds = %49, %37, %11, %8, %1
  %53 = phi i32 [ %6, %1 ], [ %14, %11 ], [ 0, %37 ], [ 0, %8 ], [ 0, %49 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_resolve_aneg_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_mmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @at803x_cdt_wait_for_completion(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 5099777
  %7 = select i1 %6, i32 32768, i32 1
  %8 = tail call i64 @ktime_get() #8
  %9 = add i64 %8, 100000000
  tail call void @usleep_range_state(i32 noundef 7501, i32 noundef 30000, i32 noundef 2) #8
  %10 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %10, align 8
  %13 = load i32, ptr %11, align 8
  %14 = tail call i32 @mdiobus_read(ptr noundef %12, i32 noundef %13, i32 noundef 22) #8
  %15 = and i32 %14, %7
  %16 = icmp eq i32 %15, 0
  %17 = icmp slt i32 %14, 0
  %18 = or i1 %17, %16
  br i1 %18, label %35, label %19

19:                                               ; preds = %27, %1
  %20 = tail call i64 @ktime_get() #8
  %21 = icmp sgt i64 %20, %9
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load ptr, ptr %10, align 8
  %24 = load i32, ptr %11, align 8
  %25 = tail call i32 @mdiobus_read(ptr noundef %23, i32 noundef %24, i32 noundef 22) #8
  %26 = and i32 %25, %7
  br label %35

27:                                               ; preds = %19
  tail call void @usleep_range_state(i32 noundef 7501, i32 noundef 30000, i32 noundef 2) #8
  %28 = load ptr, ptr %10, align 8
  %29 = load i32, ptr %11, align 8
  %30 = tail call i32 @mdiobus_read(ptr noundef %28, i32 noundef %29, i32 noundef 22) #8
  %31 = and i32 %30, %7
  %32 = icmp eq i32 %31, 0
  %33 = icmp slt i32 %30, 0
  %34 = or i1 %33, %32
  br i1 %34, label %35, label %19

35:                                               ; preds = %27, %22, %1
  %36 = phi i32 [ %15, %1 ], [ %26, %22 ], [ %31, %27 ]
  %37 = phi i32 [ %14, %1 ], [ %25, %22 ], [ %30, %27 ]
  %38 = icmp eq i32 %36, 0
  %39 = icmp slt i32 %37, 0
  %40 = or i1 %39, %38
  %41 = select i1 %40, i32 0, i32 -110
  %42 = select i1 %39, i32 %37, i32 %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.at803x_cdt_wait_for_completion, i32 noundef %42) #9
  br label %45

45:                                               ; preds = %44, %35
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_cable_test_result(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_cable_test_fault_length(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_device_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_abilities(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_fast_retrain(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_setup_forced(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
