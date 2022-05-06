; ModuleID = '/llk/IR/drivers/net/phy/bcm7xxx.c_pt.bc'
source_filename = "../drivers/net/phy/bcm7xxx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mdio_device_id = type { i32, i32 }
%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
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
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.bcm7xxx_phy_priv = type { ptr, ptr }
%struct.ethtool_tunable = type { i32, i32, i32, i32, [0 x ptr] }

@__mod_mdio__bcm7xxx_tbl_device_table = dso_local local_unnamed_addr global [21 x %struct.mdio_device_id] [%struct.mdio_device_id { i32 898650896, i32 -16 }, %struct.mdio_device_id { i32 898650960, i32 -16 }, %struct.mdio_device_id { i32 898650944, i32 -16 }, %struct.mdio_device_id { i32 -1375579520, i32 -16 }, %struct.mdio_device_id { i32 -1375579872, i32 -16 }, %struct.mdio_device_id { i32 -1375579760, i32 -16 }, %struct.mdio_device_id { i32 -1375580016, i32 -16 }, %struct.mdio_device_id { i32 -1375579216, i32 -16 }, %struct.mdio_device_id { i32 -1375579744, i32 -16 }, %struct.mdio_device_id { i32 -1375579552, i32 -16 }, %struct.mdio_device_id { i32 1611498640, i32 -16 }, %struct.mdio_device_id { i32 1611499088, i32 -16 }, %struct.mdio_device_id { i32 1611498672, i32 -16 }, %struct.mdio_device_id { i32 1611499184, i32 -16 }, %struct.mdio_device_id { i32 1611499312, i32 -16 }, %struct.mdio_device_id { i32 -1375579424, i32 -16 }, %struct.mdio_device_id { i32 1611498624, i32 -16 }, %struct.mdio_device_id { i32 1611499344, i32 -16 }, %struct.mdio_device_id { i32 1611498768, i32 -16 }, %struct.mdio_device_id { i32 898650928, i32 -16 }, %struct.mdio_device_id zeroinitializer], align 4
@__UNIQUE_ID_description273 = internal constant [49 x i8] c"description=Broadcom BCM7xxx internal PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license274 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author275 = internal constant [28 x i8] c"author=Broadcom Corporation\00", section ".modinfo", align 1
@bcm7xxx_driver = internal global [21 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 898650896, ptr @.str, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_read_mmd, ptr @bcm7xxx_28nm_ephy_write_mmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 898650960, ptr @.str.1, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_read_mmd, ptr @bcm7xxx_28nm_ephy_write_mmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 898650944, ptr @.str.2, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_16nm_ephy_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_16nm_ephy_resume, ptr @genphy_config_aneg, ptr null, ptr @genphy_read_status, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -1375579520, ptr @.str.3, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr @bcm7xxx_28nm_get_tunable, ptr @bcm7xxx_28nm_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -1375579872, ptr @.str.4, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_read_mmd, ptr @bcm7xxx_28nm_ephy_write_mmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -1375579760, ptr @.str.5, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_read_mmd, ptr @bcm7xxx_28nm_ephy_write_mmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -1375580016, ptr @.str.6, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_read_mmd, ptr @bcm7xxx_28nm_ephy_write_mmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -1375579216, ptr @.str.7, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_ephy_read_mmd, ptr @bcm7xxx_28nm_ephy_write_mmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -1375579744, ptr @.str.8, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr @bcm7xxx_28nm_get_tunable, ptr @bcm7xxx_28nm_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -1375579552, ptr @.str.9, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr @bcm7xxx_28nm_get_tunable, ptr @bcm7xxx_28nm_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1611498640, ptr @.str.10, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr @bcm7xxx_28nm_get_tunable, ptr @bcm7xxx_28nm_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -1375579424, ptr @.str.11, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr @bcm7xxx_28nm_get_tunable, ptr @bcm7xxx_28nm_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1611498624, ptr @.str.12, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr @bcm7xxx_28nm_get_tunable, ptr @bcm7xxx_28nm_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -1375580032, ptr @.str.13, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr @bcm7xxx_28nm_get_tunable, ptr @bcm7xxx_28nm_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1611498768, ptr @.str.14, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_28nm_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_28nm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm7xxx_28nm_get_phy_stats, ptr @bcm7xxx_28nm_get_tunable, ptr @bcm7xxx_28nm_set_tunable, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1611499088, ptr @.str.15, i32 -16, ptr null, i32 1, ptr null, ptr @genphy_soft_reset, ptr @bcm7xxx_config_init, ptr null, ptr null, ptr @bcm7xxx_suspend, ptr @bcm7xxx_config_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1611498672, ptr @.str.16, i32 -16, ptr null, i32 1, ptr null, ptr @genphy_soft_reset, ptr @bcm7xxx_config_init, ptr null, ptr null, ptr @bcm7xxx_suspend, ptr @bcm7xxx_config_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1611499184, ptr @.str.17, i32 -16, ptr null, i32 1, ptr null, ptr @genphy_soft_reset, ptr @bcm7xxx_config_init, ptr null, ptr null, ptr @bcm7xxx_suspend, ptr @bcm7xxx_config_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1611499312, ptr @.str.18, i32 -16, ptr null, i32 1, ptr null, ptr @genphy_soft_reset, ptr @bcm7xxx_config_init, ptr null, ptr null, ptr @bcm7xxx_suspend, ptr @bcm7xxx_config_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1611499344, ptr @.str.19, i32 -16, ptr null, i32 1, ptr null, ptr @genphy_soft_reset, ptr @bcm7xxx_config_init, ptr null, ptr null, ptr @bcm7xxx_suspend, ptr @bcm7xxx_config_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 898650928, ptr @.str.20, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm7xxx_16nm_ephy_config_init, ptr @bcm7xxx_28nm_probe, ptr null, ptr null, ptr @bcm7xxx_16nm_ephy_resume, ptr @genphy_config_aneg, ptr null, ptr @genphy_read_status, ptr null, ptr null, ptr @bcm7xxx_28nm_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [18 x i8] c"Broadcom BCM72113\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Broadcom BCM72116\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Broadcom BCM72165\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Broadcom BCM7250\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Broadcom BCM7255\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Broadcom BCM7260\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Broadcom BCM7268\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Broadcom BCM7271\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Broadcom BCM7278\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Broadcom BCM7364\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Broadcom BCM7366\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Broadcom BCM74371\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Broadcom BCM7439\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Broadcom BCM7439 (2)\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Broadcom BCM7445\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Broadcom BCM7346\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"Broadcom BCM7362\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"Broadcom BCM7425\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Broadcom BCM7429\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"Broadcom BCM7435\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"Broadcom BCM7712\00", align 1
@bcm7xxx_28nm_ephy_config_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"\016%s: %s PHY revision: 0x%02x\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bcm7xxx_28nm_config_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"\016%s: %s PHY revision: 0x%02x, patch: %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author275, ptr @__UNIQUE_ID_description273, ptr @__UNIQUE_ID_license274], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @phy_drivers_register(ptr noundef nonnull @bcm7xxx_driver, i32 noundef 21, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @phy_drivers_unregister(ptr noundef nonnull @bcm7xxx_driver, i32 noundef 21) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm7xxx_28nm_ephy_config_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.phy_driver, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %3, %8
  %10 = load i1, ptr @bcm7xxx_28nm_ephy_config_init.__already_done, align 1
  br i1 %10, label %11, label %13, !prof !8

11:                                               ; preds = %1
  %12 = and i32 %9, 255
  br label %25

13:                                               ; preds = %1
  store i1 true, ptr @bcm7xxx_28nm_ephy_config_init.__already_done, align 1
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 4
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi ptr [ %18, %17 ], [ %15, %13 ]
  %21 = getelementptr inbounds %struct.phy_driver, ptr %5, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = and i32 %9, 255
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %20, ptr noundef %22, i32 noundef %23) #8
  br label %25

25:                                               ; preds = %19, %11
  %26 = phi i32 [ %12, %11 ], [ %23, %19 ]
  %27 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %30 = load i32, ptr %29, align 8
  %31 = tail call i32 @mdiobus_read(ptr noundef %28, i32 noundef %30, i32 noundef 1) #7
  %32 = icmp eq i32 %26, 1
  br i1 %32, label %33, label %125

33:                                               ; preds = %25
  %34 = load ptr, ptr %27, align 8
  %35 = getelementptr inbounds %struct.mii_bus, ptr %34, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %35) #7
  %36 = load ptr, ptr %27, align 8
  %37 = load i32, ptr %29, align 8
  %38 = tail call i32 @__mdiobus_read(ptr noundef %36, i32 noundef %37, i32 noundef 31) #7
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %33
  %41 = or i32 %38, 4
  %42 = trunc i32 %41 to i16
  %43 = load ptr, ptr %27, align 8
  %44 = load i32, ptr %29, align 8
  %45 = tail call i32 @__mdiobus_write(ptr noundef %43, i32 noundef %44, i32 noundef 31, i16 noundef zeroext %42) #7
  %46 = icmp slt i32 %45, 0
  %47 = select i1 %46, i32 %45, i32 %41
  br label %48

48:                                               ; preds = %40, %33
  %49 = phi i32 [ %38, %33 ], [ %47, %40 ]
  %50 = load ptr, ptr %27, align 8
  %51 = getelementptr inbounds %struct.mii_bus, ptr %50, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %51) #7
  %52 = icmp slt i32 %49, 0
  br i1 %52, label %267, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr %27, align 8
  %55 = load i32, ptr %29, align 8
  %56 = tail call i32 @mdiobus_write(ptr noundef %54, i32 noundef %55, i32 noundef 26, i16 noundef zeroext 15328) #7
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %104, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr %27, align 8
  %60 = load i32, ptr %29, align 8
  %61 = tail call i32 @mdiobus_write(ptr noundef %59, i32 noundef %60, i32 noundef 14, i16 noundef zeroext 35) #7
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %104, label %63

63:                                               ; preds = %58
  %64 = load ptr, ptr %27, align 8
  %65 = getelementptr inbounds %struct.mii_bus, ptr %64, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %65) #7
  %66 = load ptr, ptr %27, align 8
  %67 = load i32, ptr %29, align 8
  %68 = tail call i32 @__mdiobus_read(ptr noundef %66, i32 noundef %67, i32 noundef 15) #7
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %63
  %71 = or i32 %68, 6
  %72 = trunc i32 %71 to i16
  %73 = load ptr, ptr %27, align 8
  %74 = load i32, ptr %29, align 8
  %75 = tail call i32 @__mdiobus_write(ptr noundef %73, i32 noundef %74, i32 noundef 15, i16 noundef zeroext %72) #7
  %76 = icmp slt i32 %75, 0
  %77 = select i1 %76, i32 %75, i32 %71
  br label %78

78:                                               ; preds = %70, %63
  %79 = phi i32 [ %68, %63 ], [ %77, %70 ]
  %80 = load ptr, ptr %27, align 8
  %81 = getelementptr inbounds %struct.mii_bus, ptr %80, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %81) #7
  %82 = icmp slt i32 %79, 0
  br i1 %82, label %104, label %83

83:                                               ; preds = %78
  %84 = load ptr, ptr %27, align 8
  %85 = load i32, ptr %29, align 8
  %86 = tail call i32 @mdiobus_write(ptr noundef %84, i32 noundef %85, i32 noundef 14, i16 noundef zeroext 35) #7
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %104, label %88

88:                                               ; preds = %83
  %89 = load ptr, ptr %27, align 8
  %90 = getelementptr inbounds %struct.mii_bus, ptr %89, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %90) #7
  %91 = load ptr, ptr %27, align 8
  %92 = load i32, ptr %29, align 8
  %93 = tail call i32 @__mdiobus_read(ptr noundef %91, i32 noundef %92, i32 noundef 15) #7
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %88
  %96 = trunc i32 %93 to i16
  %97 = and i16 %96, -7
  %98 = load ptr, ptr %27, align 8
  %99 = load i32, ptr %29, align 8
  %100 = tail call i32 @__mdiobus_write(ptr noundef %98, i32 noundef %99, i32 noundef 15, i16 noundef zeroext %97) #7
  br label %101

101:                                              ; preds = %95, %88
  %102 = load ptr, ptr %27, align 8
  %103 = getelementptr inbounds %struct.mii_bus, ptr %102, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %103) #7
  br label %104

104:                                              ; preds = %101, %83, %78, %58, %53
  %105 = load ptr, ptr %27, align 8
  %106 = getelementptr inbounds %struct.mii_bus, ptr %105, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %106) #7
  %107 = load ptr, ptr %27, align 8
  %108 = load i32, ptr %29, align 8
  %109 = tail call i32 @__mdiobus_read(ptr noundef %107, i32 noundef %108, i32 noundef 31) #7
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %104
  %112 = and i32 %109, -5
  %113 = trunc i32 %112 to i16
  %114 = load ptr, ptr %27, align 8
  %115 = load i32, ptr %29, align 8
  %116 = tail call i32 @__mdiobus_write(ptr noundef %114, i32 noundef %115, i32 noundef 31, i16 noundef zeroext %113) #7
  %117 = icmp slt i32 %116, 0
  %118 = select i1 %117, i32 %116, i32 %112
  br label %119

119:                                              ; preds = %111, %104
  %120 = phi i32 [ %109, %104 ], [ %118, %111 ]
  %121 = load ptr, ptr %27, align 8
  %122 = getelementptr inbounds %struct.mii_bus, ptr %121, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %122) #7
  %123 = tail call i32 @llvm.smin.i32(i32 %120, i32 0) #7
  %124 = icmp sgt i32 %120, -1
  br i1 %124, label %125, label %267

125:                                              ; preds = %119, %25
  %126 = load ptr, ptr %27, align 8
  %127 = getelementptr inbounds %struct.mii_bus, ptr %126, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %127) #7
  %128 = load ptr, ptr %27, align 8
  %129 = load i32, ptr %29, align 8
  %130 = tail call i32 @__mdiobus_read(ptr noundef %128, i32 noundef %129, i32 noundef 31) #7
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %125
  %133 = or i32 %130, 4
  %134 = trunc i32 %133 to i16
  %135 = load ptr, ptr %27, align 8
  %136 = load i32, ptr %29, align 8
  %137 = tail call i32 @__mdiobus_write(ptr noundef %135, i32 noundef %136, i32 noundef 31, i16 noundef zeroext %134) #7
  %138 = icmp slt i32 %137, 0
  %139 = select i1 %138, i32 %137, i32 %133
  br label %140

140:                                              ; preds = %132, %125
  %141 = phi i32 [ %130, %125 ], [ %139, %132 ]
  %142 = load ptr, ptr %27, align 8
  %143 = getelementptr inbounds %struct.mii_bus, ptr %142, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %143) #7
  %144 = icmp slt i32 %141, 0
  br i1 %144, label %267, label %145

145:                                              ; preds = %140
  %146 = load ptr, ptr %27, align 8
  %147 = load i32, ptr %29, align 8
  %148 = tail call i32 @mdiobus_write(ptr noundef %146, i32 noundef %147, i32 noundef 14, i16 noundef zeroext 3) #7
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %184, label %150

150:                                              ; preds = %145
  %151 = load ptr, ptr %27, align 8
  %152 = load i32, ptr %29, align 8
  %153 = tail call i32 @mdiobus_write(ptr noundef %151, i32 noundef %152, i32 noundef 15, i16 noundef zeroext 2) #7
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %184, label %155

155:                                              ; preds = %150
  %156 = load ptr, ptr %27, align 8
  %157 = load i32, ptr %29, align 8
  %158 = tail call i32 @mdiobus_write(ptr noundef %156, i32 noundef %157, i32 noundef 14, i16 noundef zeroext 6) #7
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %184, label %160

160:                                              ; preds = %155
  %161 = load ptr, ptr %27, align 8
  %162 = load i32, ptr %29, align 8
  %163 = tail call i32 @mdiobus_write(ptr noundef %161, i32 noundef %162, i32 noundef 15, i16 noundef zeroext 17408) #7
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %184, label %165

165:                                              ; preds = %160
  %166 = load ptr, ptr %27, align 8
  %167 = load i32, ptr %29, align 8
  %168 = tail call i32 @mdiobus_write(ptr noundef %166, i32 noundef %167, i32 noundef 14, i16 noundef zeroext 14) #7
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %184, label %170

170:                                              ; preds = %165
  %171 = load ptr, ptr %27, align 8
  %172 = load i32, ptr %29, align 8
  %173 = tail call i32 @mdiobus_write(ptr noundef %171, i32 noundef %172, i32 noundef 15, i16 noundef zeroext 80) #7
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %184, label %175

175:                                              ; preds = %170
  %176 = load ptr, ptr %27, align 8
  %177 = load i32, ptr %29, align 8
  %178 = tail call i32 @mdiobus_write(ptr noundef %176, i32 noundef %177, i32 noundef 14, i16 noundef zeroext 11) #7
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %175
  %181 = load ptr, ptr %27, align 8
  %182 = load i32, ptr %29, align 8
  %183 = tail call i32 @mdiobus_write(ptr noundef %181, i32 noundef %182, i32 noundef 15, i16 noundef zeroext 3) #7
  br label %184

184:                                              ; preds = %180, %175, %170, %165, %160, %155, %150, %145
  %185 = load ptr, ptr %27, align 8
  %186 = getelementptr inbounds %struct.mii_bus, ptr %185, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %186) #7
  %187 = load ptr, ptr %27, align 8
  %188 = load i32, ptr %29, align 8
  %189 = tail call i32 @__mdiobus_read(ptr noundef %187, i32 noundef %188, i32 noundef 31) #7
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %184
  %192 = and i32 %189, -5
  %193 = trunc i32 %192 to i16
  %194 = load ptr, ptr %27, align 8
  %195 = load i32, ptr %29, align 8
  %196 = tail call i32 @__mdiobus_write(ptr noundef %194, i32 noundef %195, i32 noundef 31, i16 noundef zeroext %193) #7
  %197 = icmp slt i32 %196, 0
  %198 = select i1 %197, i32 %196, i32 %192
  br label %199

199:                                              ; preds = %191, %184
  %200 = phi i32 [ %189, %184 ], [ %198, %191 ]
  %201 = load ptr, ptr %27, align 8
  %202 = getelementptr inbounds %struct.mii_bus, ptr %201, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %202) #7
  %203 = icmp slt i32 %200, 0
  br i1 %203, label %267, label %204

204:                                              ; preds = %199
  %205 = load ptr, ptr %27, align 8
  %206 = load i32, ptr %29, align 8
  %207 = tail call i32 @mdiobus_write(ptr noundef %205, i32 noundef %206, i32 noundef 0, i16 noundef zeroext 12800) #7
  %208 = load ptr, ptr %27, align 8
  %209 = getelementptr inbounds %struct.mii_bus, ptr %208, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %209) #7
  %210 = load ptr, ptr %27, align 8
  %211 = load i32, ptr %29, align 8
  %212 = tail call i32 @__mdiobus_read(ptr noundef %210, i32 noundef %211, i32 noundef 31) #7
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %222, label %214

214:                                              ; preds = %204
  %215 = or i32 %212, 128
  %216 = trunc i32 %215 to i16
  %217 = load ptr, ptr %27, align 8
  %218 = load i32, ptr %29, align 8
  %219 = tail call i32 @__mdiobus_write(ptr noundef %217, i32 noundef %218, i32 noundef 31, i16 noundef zeroext %216) #7
  %220 = icmp slt i32 %219, 0
  %221 = select i1 %220, i32 %219, i32 %215
  br label %222

222:                                              ; preds = %214, %204
  %223 = phi i32 [ %212, %204 ], [ %221, %214 ]
  %224 = load ptr, ptr %27, align 8
  %225 = getelementptr inbounds %struct.mii_bus, ptr %224, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %225) #7
  %226 = icmp slt i32 %223, 0
  br i1 %226, label %267, label %227

227:                                              ; preds = %222
  %228 = load ptr, ptr %27, align 8
  %229 = getelementptr inbounds %struct.mii_bus, ptr %228, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %229) #7
  %230 = load ptr, ptr %27, align 8
  %231 = load i32, ptr %29, align 8
  %232 = tail call i32 @__mdiobus_read(ptr noundef %230, i32 noundef %231, i32 noundef 27) #7
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %242, label %234

234:                                              ; preds = %227
  %235 = or i32 %232, 32
  %236 = trunc i32 %235 to i16
  %237 = load ptr, ptr %27, align 8
  %238 = load i32, ptr %29, align 8
  %239 = tail call i32 @__mdiobus_write(ptr noundef %237, i32 noundef %238, i32 noundef 27, i16 noundef zeroext %236) #7
  %240 = icmp slt i32 %239, 0
  %241 = select i1 %240, i32 %239, i32 %235
  br label %242

242:                                              ; preds = %234, %227
  %243 = phi i32 [ %232, %227 ], [ %241, %234 ]
  %244 = load ptr, ptr %27, align 8
  %245 = getelementptr inbounds %struct.mii_bus, ptr %244, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %245) #7
  %246 = icmp slt i32 %243, 0
  br i1 %246, label %267, label %247

247:                                              ; preds = %242
  %248 = load ptr, ptr %27, align 8
  %249 = getelementptr inbounds %struct.mii_bus, ptr %248, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %249) #7
  %250 = load ptr, ptr %27, align 8
  %251 = load i32, ptr %29, align 8
  %252 = tail call i32 @__mdiobus_read(ptr noundef %250, i32 noundef %251, i32 noundef 31) #7
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %262, label %254

254:                                              ; preds = %247
  %255 = and i32 %252, -129
  %256 = trunc i32 %255 to i16
  %257 = load ptr, ptr %27, align 8
  %258 = load i32, ptr %29, align 8
  %259 = tail call i32 @__mdiobus_write(ptr noundef %257, i32 noundef %258, i32 noundef 31, i16 noundef zeroext %256) #7
  %260 = icmp slt i32 %259, 0
  %261 = select i1 %260, i32 %259, i32 %255
  br label %262

262:                                              ; preds = %254, %247
  %263 = phi i32 [ %252, %247 ], [ %261, %254 ]
  %264 = load ptr, ptr %27, align 8
  %265 = getelementptr inbounds %struct.mii_bus, ptr %264, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %265) #7
  %266 = tail call i32 @llvm.smin.i32(i32 %263, i32 0) #7
  br label %267

267:                                              ; preds = %262, %242, %222, %199, %140, %119, %48
  %268 = phi i32 [ %123, %119 ], [ %223, %222 ], [ %243, %242 ], [ %266, %262 ], [ %49, %48 ], [ %200, %199 ], [ %141, %140 ]
  ret i32 %268
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm7xxx_28nm_probe(ptr noundef %0) #2 {
  %2 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 8, i32 noundef 3520) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %33, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  store ptr %2, ptr %5, align 8
  %6 = tail call i32 @bcm_phy_get_sset_count(ptr noundef %0) #7
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 8) #7
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %4
  store ptr null, ptr %2, align 4
  br label %33

10:                                               ; preds = %4
  %11 = extractvalue { i32, i1 } %7, 0
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %11, i32 noundef 3520) #7
  store ptr %12, ptr %2, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @devm_clk_get_optional(ptr noundef %0, ptr noundef null) #7
  %16 = getelementptr inbounds %struct.bcm7xxx_phy_priv, ptr %2, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = ptrtoint ptr %15 to i32
  br label %33

20:                                               ; preds = %14
  %21 = tail call i32 @clk_prepare(ptr noundef %15) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = tail call i32 @clk_enable(ptr noundef %15) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @clk_unprepare(ptr noundef %15) #7
  br label %33

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %31 = load i32, ptr %30, align 8
  %32 = tail call i32 @mdiobus_read(ptr noundef %29, i32 noundef %31, i32 noundef 1) #7
  br label %33

33:                                               ; preds = %27, %26, %20, %18, %10, %9, %1
  %34 = phi i32 [ %19, %18 ], [ 0, %27 ], [ -12, %1 ], [ -12, %10 ], [ -12, %9 ], [ %24, %26 ], [ %21, %20 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm7xxx_28nm_ephy_resume(ptr noundef %0) #2 {
  %2 = tail call i32 @bcm7xxx_28nm_ephy_config_init(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext false) #7
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %2, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm7xxx_28nm_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcm7xxx_phy_priv, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm7xxx_28nm_ephy_read_mmd(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2) #2 {
  switch i16 %2, label %51 [
    i16 0, label %9
    i16 1, label %4
    i16 20, label %5
    i16 60, label %6
    i16 61, label %7
    i16 22, label %8
  ]

4:                                                ; preds = %3
  br label %9

5:                                                ; preds = %3
  br label %9

6:                                                ; preds = %3
  br label %9

7:                                                ; preds = %3
  br label %9

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %8, %7, %6, %5, %4, %3
  %10 = phi i8 [ 5, %8 ], [ 4, %7 ], [ 3, %6 ], [ 2, %5 ], [ 1, %4 ], [ 0, %3 ]
  %11 = and i32 %1, -5
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %51

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 8
  %18 = tail call i32 @__mdiobus_read(ptr noundef %15, i32 noundef %17, i32 noundef 31) #7
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %51, label %20

20:                                               ; preds = %13
  %21 = or i32 %18, 4
  %22 = trunc i32 %21 to i16
  %23 = load ptr, ptr %14, align 8
  %24 = load i32, ptr %16, align 8
  %25 = tail call i32 @__mdiobus_write(ptr noundef %23, i32 noundef %24, i32 noundef 31, i16 noundef zeroext %22) #7
  %26 = icmp slt i32 %25, 0
  %27 = select i1 %26, i32 %25, i32 %21
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %20
  %30 = zext i8 %10 to i16
  %31 = load ptr, ptr %14, align 8
  %32 = load i32, ptr %16, align 8
  %33 = tail call i32 @__mdiobus_write(ptr noundef %31, i32 noundef %32, i32 noundef 14, i16 noundef zeroext %30) #7
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %14, align 8
  %37 = load i32, ptr %16, align 8
  %38 = tail call i32 @__mdiobus_read(ptr noundef %36, i32 noundef %37, i32 noundef 15) #7
  br label %39

39:                                               ; preds = %35, %29
  %40 = phi i32 [ %33, %29 ], [ %38, %35 ]
  %41 = load ptr, ptr %14, align 8
  %42 = load i32, ptr %16, align 8
  %43 = tail call i32 @__mdiobus_read(ptr noundef %41, i32 noundef %42, i32 noundef 31) #7
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = trunc i32 %43 to i16
  %47 = and i16 %46, -5
  %48 = load ptr, ptr %14, align 8
  %49 = load i32, ptr %16, align 8
  %50 = tail call i32 @__mdiobus_write(ptr noundef %48, i32 noundef %49, i32 noundef 31, i16 noundef zeroext %47) #7
  br label %51

51:                                               ; preds = %45, %39, %20, %13, %9, %3
  %52 = phi i32 [ -95, %9 ], [ %27, %20 ], [ %40, %39 ], [ %40, %45 ], [ -95, %3 ], [ %18, %13 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm7xxx_28nm_ephy_write_mmd(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #2 {
  switch i16 %2, label %53 [
    i16 0, label %10
    i16 1, label %5
    i16 20, label %6
    i16 60, label %7
    i16 61, label %8
    i16 22, label %9
  ]

5:                                                ; preds = %4
  br label %10

6:                                                ; preds = %4
  br label %10

7:                                                ; preds = %4
  br label %10

8:                                                ; preds = %4
  br label %10

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9, %8, %7, %6, %5, %4
  %11 = phi i8 [ 5, %9 ], [ 4, %8 ], [ 3, %7 ], [ 2, %6 ], [ 1, %5 ], [ 0, %4 ]
  %12 = and i32 %1, -5
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %53

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 8
  %19 = tail call i32 @__mdiobus_read(ptr noundef %16, i32 noundef %18, i32 noundef 31) #7
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %53, label %21

21:                                               ; preds = %14
  %22 = or i32 %19, 4
  %23 = trunc i32 %22 to i16
  %24 = load ptr, ptr %15, align 8
  %25 = load i32, ptr %17, align 8
  %26 = tail call i32 @__mdiobus_write(ptr noundef %24, i32 noundef %25, i32 noundef 31, i16 noundef zeroext %23) #7
  %27 = icmp slt i32 %26, 0
  %28 = select i1 %27, i32 %26, i32 %22
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %53, label %30

30:                                               ; preds = %21
  %31 = zext i8 %11 to i16
  %32 = load ptr, ptr %15, align 8
  %33 = load i32, ptr %17, align 8
  %34 = tail call i32 @__mdiobus_write(ptr noundef %32, i32 noundef %33, i32 noundef 14, i16 noundef zeroext %31) #7
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load ptr, ptr %15, align 8
  %38 = load i32, ptr %17, align 8
  %39 = tail call i32 @__mdiobus_write(ptr noundef %37, i32 noundef %38, i32 noundef 15, i16 noundef zeroext %3) #7
  br label %40

40:                                               ; preds = %36, %30
  %41 = load ptr, ptr %15, align 8
  %42 = load i32, ptr %17, align 8
  %43 = tail call i32 @__mdiobus_read(ptr noundef %41, i32 noundef %42, i32 noundef 31) #7
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %40
  %46 = and i32 %43, -5
  %47 = trunc i32 %46 to i16
  %48 = load ptr, ptr %15, align 8
  %49 = load i32, ptr %17, align 8
  %50 = tail call i32 @__mdiobus_write(ptr noundef %48, i32 noundef %49, i32 noundef 31, i16 noundef zeroext %47) #7
  %51 = icmp slt i32 %50, 0
  %52 = select i1 %51, i32 %50, i32 %46
  br label %53

53:                                               ; preds = %45, %40, %21, %14, %10, %4
  %54 = phi i32 [ -95, %10 ], [ %28, %21 ], [ %43, %40 ], [ %52, %45 ], [ -95, %4 ], [ %19, %14 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_get_sset_count(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_phy_get_strings(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm7xxx_28nm_get_phy_stats(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  tail call void @bcm_phy_get_stats(ptr noundef %0, ptr noundef %6, ptr noundef %1, ptr noundef %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm7xxx_16nm_ephy_config_init(ptr noundef %0) #2 {
  %2 = tail call i32 @genphy_soft_reset(ptr noundef %0) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %85

4:                                                ; preds = %1
  %5 = tail call i32 @bcm_phy_write_exp(ptr noundef %0, i16 noundef zeroext 3843, i16 noundef zeroext 6) #7
  %6 = tail call i32 @bcm_phy_write_exp(ptr noundef %0, i16 noundef zeroext 3843, i16 noundef zeroext 0) #7
  %7 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 48, i16 noundef zeroext 1, i16 noundef zeroext 0) #7
  %8 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 49, i16 noundef zeroext 0, i16 noundef zeroext 1098) #7
  %9 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 51, i16 noundef zeroext 2, i16 noundef zeroext 29089) #7
  %10 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 51, i16 noundef zeroext 1, i16 noundef zeroext -32768) #7
  %11 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 49, i16 noundef zeroext 1, i16 noundef zeroext 12136) #7
  %12 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 49, i16 noundef zeroext 2, i16 noundef zeroext 0) #7
  %13 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 48, i16 noundef zeroext 3, i16 noundef zeroext -16330) #7
  %14 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 50, i16 noundef zeroext 3, i16 noundef zeroext 0) #7
  %15 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 51, i16 noundef zeroext 0, i16 noundef zeroext 2) #7
  %16 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 48, i16 noundef zeroext 2, i16 noundef zeroext 448) #7
  %17 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 48, i16 noundef zeroext 1, i16 noundef zeroext 1) #7
  %18 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 56, i16 noundef zeroext 0, i16 noundef zeroext 16) #7
  %19 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 57, i16 noundef zeroext 3, i16 noundef zeroext 56) #7
  %20 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 57, i16 noundef zeroext 3, i16 noundef zeroext 59) #7
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 429496) #7
  %22 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 57, i16 noundef zeroext 3, i16 noundef zeroext 63) #7
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #7
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #7
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #7
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #7
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #7
  %28 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 57, i16 noundef zeroext 1, i16 noundef zeroext 7298) #7
  %29 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 57, i16 noundef zeroext 1, i16 noundef zeroext -24958) #7
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 429496) #7
  %31 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 57, i16 noundef zeroext 1, i16 noundef zeroext -24702) #7
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 21474800) #7
  %33 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 57, i16 noundef zeroext 1, i16 noundef zeroext -24954) #7
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 429496) #7
  %35 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 57, i16 noundef zeroext 1, i16 noundef zeroext -24698) #7
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 21474800) #7
  %37 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 56, i16 noundef zeroext 1, i16 noundef zeroext -6166) #7
  %38 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 56, i16 noundef zeroext 2, i16 noundef zeroext -4640) #7
  %39 = tail call i32 @bcm_phy_read_exp(ptr noundef %0, i16 noundef zeroext 169) #7
  %40 = lshr i32 %39, 1
  %41 = and i32 %40, 63
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 47) #7
  %43 = tail call i32 @llvm.umin.i32(i32 %41, i32 53) #7
  %44 = trunc i32 %42 to i16
  %45 = shl nuw nsw i16 %44, 8
  %46 = add nuw nsw i16 %45, 4344
  %47 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 57, i16 noundef zeroext 3, i16 noundef zeroext %46) #7
  %48 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 56, i16 noundef zeroext 1, i16 noundef zeroext -6172) #7
  %49 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 59, i16 noundef zeroext 0, i16 noundef zeroext -32766) #7
  %50 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 60, i16 noundef zeroext 3, i16 noundef zeroext -1918) #7
  %51 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 61, i16 noundef zeroext 0, i16 noundef zeroext 12801) #7
  %52 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 58, i16 noundef zeroext 2, i16 noundef zeroext 3072) #7
  %53 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 58, i16 noundef zeroext 1, i16 noundef zeroext 32) #7
  %54 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 59, i16 noundef zeroext 2, i16 noundef zeroext 0) #7
  %55 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 59, i16 noundef zeroext 3, i16 noundef zeroext 0) #7
  %56 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 58, i16 noundef zeroext 3, i16 noundef zeroext 2048) #7
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 429496) #7
  %58 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 58, i16 noundef zeroext 1, i16 noundef zeroext 0) #7
  %59 = tail call i32 @bcm_phy_read_misc(ptr noundef %0, i16 noundef zeroext 61, i16 noundef zeroext 1) #7
  %60 = and i32 %59, 61471
  %61 = shl nuw nsw i32 %43, 5
  %62 = add nuw nsw i32 %61, 320
  %63 = or i32 %60, %62
  %64 = trunc i32 %63 to i16
  %65 = or i16 %64, 32
  %66 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 61, i16 noundef zeroext 1, i16 noundef zeroext %65) #7
  %67 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 61, i16 noundef zeroext 2, i16 noundef zeroext %65) #7
  %68 = tail call i32 @bcm_phy_read_misc(ptr noundef %0, i16 noundef zeroext 61, i16 noundef zeroext 0) #7
  %69 = trunc i32 %68 to i16
  %70 = or i16 %69, 12288
  %71 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 61, i16 noundef zeroext 0, i16 noundef zeroext %70) #7
  %72 = tail call i32 @bcm_phy_set_eee(ptr noundef %0, i1 noundef zeroext true) #7
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %4
  %75 = tail call i32 @bcm_phy_read_shadow(ptr noundef %0, i16 noundef zeroext 5) #7
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %74
  %78 = trunc i32 %75 to i16
  %79 = and i16 %78, -259
  %80 = or i16 %79, 256
  %81 = tail call i32 @bcm_phy_write_shadow(ptr noundef %0, i16 noundef zeroext 5, i16 noundef zeroext %80) #7
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %77
  %84 = tail call i32 @bcm_phy_enable_apd(ptr noundef %0, i1 noundef zeroext true) #7
  br label %85

85:                                               ; preds = %83, %77, %74, %4, %1
  %86 = phi i32 [ %84, %83 ], [ %72, %4 ], [ %75, %74 ], [ %81, %77 ], [ %2, %1 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm7xxx_16nm_ephy_resume(ptr noundef %0) #2 {
  %2 = tail call i32 @bcm7xxx_16nm_ephy_config_init(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext false) #7
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %2, %1 ]
  ret i32 %7
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @genphy_config_aneg(ptr noundef %0) #3 {
  %2 = tail call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext false) #7
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm7xxx_28nm_config_init(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 8
  %5 = lshr i32 %4, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #7
  store i8 0, ptr %2, align 1, !annotation !10
  %6 = and i32 %4, 65280
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.phy_driver, ptr %12, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %10, %15
  br label %17

17:                                               ; preds = %8, %1
  %18 = phi i32 [ %16, %8 ], [ %5, %1 ]
  %19 = load i1, ptr @bcm7xxx_28nm_config_init.__already_done, align 1
  br i1 %19, label %35, label %20, !prof !8

20:                                               ; preds = %17
  store i1 true, ptr @bcm7xxx_28nm_config_init.__already_done, align 1
  %21 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load ptr, ptr %0, align 4
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi ptr [ %25, %24 ], [ %22, %20 ]
  %28 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.phy_driver, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = and i32 %18, 255
  %33 = and i32 %4, 255
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %27, ptr noundef %31, i32 noundef %32, i32 noundef %33) #8
  br label %35

35:                                               ; preds = %26, %17
  %36 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %39 = load i32, ptr %38, align 8
  %40 = tail call i32 @mdiobus_read(ptr noundef %37, i32 noundef %39, i32 noundef 1) #7
  %41 = trunc i32 %18 to i8
  switch i8 %41, label %75 [
    i8 -96, label %71
    i8 -80, label %71
    i8 -48, label %42
    i8 -32, label %55
    i8 -16, label %55
    i8 16, label %55
    i8 1, label %64
  ]

42:                                               ; preds = %35
  %43 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 56, i16 noundef zeroext 0, i16 noundef zeroext -5355) #7
  %44 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 56, i16 noundef zeroext 1, i16 noundef zeroext -25809) #7
  %45 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 56, i16 noundef zeroext 2, i16 noundef zeroext 8195) #7
  %46 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 56, i16 noundef zeroext 3, i16 noundef zeroext 32704) #7
  %47 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 57, i16 noundef zeroext 0, i16 noundef zeroext 1073) #7
  %48 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 57, i16 noundef zeroext 1, i16 noundef zeroext -22566) #7
  %49 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 57, i16 noundef zeroext 3, i16 noundef zeroext -24544) #7
  %50 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 58, i16 noundef zeroext 0, i16 noundef zeroext 227) #7
  %51 = load ptr, ptr %36, align 8
  %52 = load i32, ptr %38, align 8
  %53 = tail call i32 @mdiobus_write(ptr noundef %51, i32 noundef %52, i32 noundef 30, i16 noundef zeroext 16) #7
  %54 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 10, i16 noundef zeroext 0, i16 noundef zeroext 283) #7
  br label %74

55:                                               ; preds = %35, %35, %35
  %56 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 56, i16 noundef zeroext 1, i16 noundef zeroext -25809) #7
  %57 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 57, i16 noundef zeroext 0, i16 noundef zeroext 1073) #7
  %58 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 57, i16 noundef zeroext 1, i16 noundef zeroext -22566) #7
  %59 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 58, i16 noundef zeroext 0, i16 noundef zeroext 227) #7
  %60 = load ptr, ptr %36, align 8
  %61 = load i32, ptr %38, align 8
  %62 = tail call i32 @mdiobus_write(ptr noundef %60, i32 noundef %61, i32 noundef 30, i16 noundef zeroext 16) #7
  %63 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 10, i16 noundef zeroext 0, i16 noundef zeroext 283) #7
  br label %74

64:                                               ; preds = %35
  %65 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 56, i16 noundef zeroext 2, i16 noundef zeroext -12285) #7
  %66 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 10, i16 noundef zeroext 0, i16 noundef zeroext 31003) #7
  %67 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 58, i16 noundef zeroext 0, i16 noundef zeroext 4323) #7
  %68 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 33, i16 noundef zeroext 2, i16 noundef zeroext -30730) #7
  %69 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 34, i16 noundef zeroext 2, i16 noundef zeroext 381) #7
  %70 = tail call i32 @bcm_phy_write_misc(ptr noundef %0, i16 noundef zeroext 38, i16 noundef zeroext 2, i16 noundef zeroext 21) #7
  br label %74

71:                                               ; preds = %35, %35
  %72 = tail call i32 @bcm_phy_28nm_a0b0_afe_config_init(ptr noundef %0) #7
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %88

74:                                               ; preds = %64, %55, %42
  tail call void @bcm_phy_r_rc_cal_reset(ptr noundef %0) #7
  br label %75

75:                                               ; preds = %74, %71, %35
  %76 = tail call i32 @bcm_phy_enable_jumbo(ptr noundef %0) #7
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = call i32 @bcm_phy_downshift_get(ptr noundef %0, ptr noundef nonnull %2) #7
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i8, ptr %2, align 1
  %83 = icmp eq i8 %82, 0
  %84 = call i32 @bcm_phy_set_eee(ptr noundef %0, i1 noundef zeroext %83) #7
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 @bcm_phy_enable_apd(ptr noundef %0, i1 noundef zeroext true) #7
  br label %88

88:                                               ; preds = %86, %81, %78, %75, %71
  %89 = phi i32 [ %87, %86 ], [ %72, %71 ], [ %76, %75 ], [ %79, %78 ], [ %84, %81 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #7
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm7xxx_28nm_resume(ptr noundef %0) #2 {
  %2 = tail call i32 @bcm7xxx_28nm_config_init(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext false) #7
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %2, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm7xxx_28nm_get_tunable(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.ethtool_tunable, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 @bcm_phy_downshift_get(ptr noundef %0, ptr noundef %2) #7
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ -95, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm7xxx_28nm_set_tunable(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = load i8, ptr %2, align 1
  %5 = getelementptr inbounds %struct.ethtool_tunable, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = tail call i32 @bcm_phy_downshift_set(ptr noundef %0, i8 noundef zeroext %4) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = icmp eq i8 %4, 0
  %13 = tail call i32 @bcm_phy_set_eee(ptr noundef %0, i1 noundef zeroext %12) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call i32 @genphy_restart_aneg(ptr noundef %0) #7
  br label %17

17:                                               ; preds = %15, %11, %8, %3
  %18 = phi i32 [ %16, %15 ], [ -95, %3 ], [ %9, %8 ], [ %13, %11 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm7xxx_config_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_write(ptr noundef %3, i32 noundef %5, i32 noundef 29, i16 noundef zeroext 4096) #7
  %7 = load ptr, ptr %2, align 8
  %8 = load i32, ptr %4, align 8
  %9 = tail call i32 @mdiobus_read(ptr noundef %7, i32 noundef %8, i32 noundef 29) #7
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.mii_bus, ptr %10, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %11) #7
  %12 = load ptr, ptr %2, align 8
  %13 = load i32, ptr %4, align 8
  %14 = tail call i32 @__mdiobus_read(ptr noundef %12, i32 noundef %13, i32 noundef 31) #7
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = or i32 %14, 4
  %18 = trunc i32 %17 to i16
  %19 = load ptr, ptr %2, align 8
  %20 = load i32, ptr %4, align 8
  %21 = tail call i32 @__mdiobus_write(ptr noundef %19, i32 noundef %20, i32 noundef 31, i16 noundef zeroext %18) #7
  %22 = icmp slt i32 %21, 0
  %23 = select i1 %22, i32 %21, i32 %17
  br label %24

24:                                               ; preds = %16, %1
  %25 = phi i32 [ %14, %1 ], [ %23, %16 ]
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds %struct.mii_bus, ptr %26, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %27) #7
  %28 = icmp slt i32 %25, 0
  br i1 %28, label %59, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %2, align 8
  %31 = load i32, ptr %4, align 8
  %32 = tail call i32 @mdiobus_write(ptr noundef %30, i32 noundef %31, i32 noundef 20, i16 noundef zeroext 3840) #7
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #7
  %34 = load ptr, ptr %2, align 8
  %35 = load i32, ptr %4, align 8
  %36 = tail call i32 @mdiobus_write(ptr noundef %34, i32 noundef %35, i32 noundef 20, i16 noundef zeroext 3072) #7
  %37 = load ptr, ptr %2, align 8
  %38 = load i32, ptr %4, align 8
  %39 = tail call i32 @mdiobus_write(ptr noundef %37, i32 noundef %38, i32 noundef 19, i16 noundef zeroext 30037) #7
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %struct.mii_bus, ptr %40, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %41) #7
  %42 = load ptr, ptr %2, align 8
  %43 = load i32, ptr %4, align 8
  %44 = tail call i32 @__mdiobus_read(ptr noundef %42, i32 noundef %43, i32 noundef 31) #7
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %29
  %47 = and i32 %44, -5
  %48 = trunc i32 %47 to i16
  %49 = load ptr, ptr %2, align 8
  %50 = load i32, ptr %4, align 8
  %51 = tail call i32 @__mdiobus_write(ptr noundef %49, i32 noundef %50, i32 noundef 31, i16 noundef zeroext %48) #7
  %52 = icmp slt i32 %51, 0
  %53 = select i1 %52, i32 %51, i32 %47
  br label %54

54:                                               ; preds = %46, %29
  %55 = phi i32 [ %44, %29 ], [ %53, %46 ]
  %56 = load ptr, ptr %2, align 8
  %57 = getelementptr inbounds %struct.mii_bus, ptr %56, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %57) #7
  %58 = tail call i32 @llvm.smin.i32(i32 %55, i32 0)
  br label %59

59:                                               ; preds = %54, %24
  %60 = phi i32 [ %25, %24 ], [ %58, %54 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm7xxx_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %2, align 8
  %5 = load i32, ptr %3, align 8
  %6 = tail call i32 @mdiobus_write(ptr noundef %4, i32 noundef %5, i32 noundef 31, i16 noundef zeroext 139) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8
  %10 = load i32, ptr %3, align 8
  %11 = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %10, i32 noundef 16, i16 noundef zeroext 448) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %8
  %14 = load ptr, ptr %2, align 8
  %15 = load i32, ptr %3, align 8
  %16 = tail call i32 @mdiobus_write(ptr noundef %14, i32 noundef %15, i32 noundef 20, i16 noundef zeroext 28672) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load ptr, ptr %2, align 8
  %20 = load i32, ptr %3, align 8
  %21 = tail call i32 @mdiobus_write(ptr noundef %19, i32 noundef %20, i32 noundef 31, i16 noundef zeroext 15) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load ptr, ptr %2, align 8
  %25 = load i32, ptr %3, align 8
  %26 = tail call i32 @mdiobus_write(ptr noundef %24, i32 noundef %25, i32 noundef 16, i16 noundef zeroext 8400) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load ptr, ptr %2, align 8
  %30 = load i32, ptr %3, align 8
  %31 = tail call i32 @mdiobus_write(ptr noundef %29, i32 noundef %30, i32 noundef 31, i16 noundef zeroext 11) #7
  br label %32

32:                                               ; preds = %28, %23, %18, %13, %8, %1
  %33 = phi i32 [ %6, %1 ], [ %11, %8 ], [ %16, %13 ], [ %21, %18 ], [ %26, %23 ], [ %31, %28 ]
  ret i32 %33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_phy_get_stats(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_set_eee(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_read_shadow(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_write_shadow(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_enable_apd(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_write_misc(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_read_exp(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_read_misc(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_write_exp(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_28nm_a0b0_afe_config_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_enable_jumbo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_downshift_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_phy_r_rc_cal_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_downshift_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_restart_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"auto-init"}
