; ModuleID = '/llk/IR/drivers/regulator/cpcap-regulator.c_pt.bc'
source_filename = "../drivers/regulator/cpcap-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpcap_regulator = type { %struct.regulator_desc, i16, i16 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cpcap_ddata = type { ptr, ptr, ptr }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__initcall__kmod_cpcap_regulator__247_568_cpcap_regulator_driver_init6 = internal global ptr @cpcap_regulator_driver_init, section ".initcall6.init", align 4
@cpcap_regulator_driver = internal global %struct.platform_driver { ptr @cpcap_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cpcap_regulator_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_cpcap_regulator_driver_exit = internal global ptr @cpcap_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias248 = internal constant [47 x i8] c"cpcap_regulator.alias=platform:cpcap-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [56 x i8] c"cpcap_regulator.author=Tony Lindgren <tony@atomide.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [51 x i8] c"cpcap_regulator.description=CPCAP regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [55 x i8] c"cpcap_regulator.file=drivers/regulator/cpcap-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [31 x i8] c"cpcap_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"cpcap-regulator\00", align 1
@cpcap_regulator_id_table = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,cpcap-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,mapphone-cpcap-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,xoom-cpcap-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xoom_regulators }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"no configuration data found\0A\00", align 1
@unknown_val_tbl = internal constant [1 x i32] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to register regulator %s\0A\00", align 1
@omap4_regulators = internal constant [25 x %struct.cpcap_regulator] [%struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.3, ptr null, ptr @.str.3, i8 0, ptr @.str.4, ptr null, i32 0, i8 0, i32 1, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @unknown_val_tbl, ptr null, i32 0, i32 0, i32 1548, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1548, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 128 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.5, ptr null, ptr @.str.5, i8 0, ptr @.str.4, ptr null, i32 1, i8 0, i32 1, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @unknown_val_tbl, ptr null, i32 0, i32 0, i32 1556, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1556, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 256 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.6, ptr null, ptr @.str.6, i8 0, ptr @.str.4, ptr null, i32 2, i8 0, i32 1, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @unknown_val_tbl, ptr null, i32 0, i32 0, i32 1564, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1564, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 512 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.7, ptr null, ptr @.str.7, i8 0, ptr @.str.4, ptr null, i32 3, i8 0, i32 1, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @unknown_val_tbl, ptr null, i32 0, i32 0, i32 1568, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1568, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 1024 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.8, ptr null, ptr @.str.8, i8 0, ptr @.str.4, ptr null, i32 4, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @sw5_val_tbl, ptr null, i32 0, i32 0, i32 1576, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1576, i32 40, i32 32800, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 2048 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.9, ptr null, ptr @.str.9, i8 0, ptr @.str.4, ptr null, i32 5, i8 0, i32 1, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @unknown_val_tbl, ptr null, i32 0, i32 0, i32 1580, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1580, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 4096 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.10, ptr null, ptr @.str.10, i8 0, ptr @.str.4, ptr null, i32 6, i8 0, i32 4, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vcam_val_tbl, ptr null, i32 0, i32 0, i32 1584, i32 48, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1584, i32 135, i32 3, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 8192 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.11, ptr null, ptr @.str.11, i8 0, ptr @.str.4, ptr null, i32 7, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 350, i32 0, ptr null, ptr null, i32 0, ptr @vcsi_val_tbl, ptr null, i32 0, i32 0, i32 1588, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1588, i32 71, i32 67, i32 65, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 8 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr @.str.4, ptr null, i32 8, i8 0, i32 4, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vdac_val_tbl, ptr null, i32 0, i32 0, i32 1592, i32 48, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1592, i32 135, i32 3, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 512 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr @.str.4, ptr null, i32 9, i8 0, i32 4, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vdig_val_tbl, ptr null, i32 0, i32 0, i32 1596, i32 48, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1596, i32 135, i32 130, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 16384 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr @.str.4, ptr null, i32 10, i8 0, i32 14, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vfuse_val_tbl, ptr null, i32 0, i32 0, i32 1600, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1600, i32 128, i32 128, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 16 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr @.str.4, ptr null, i32 11, i8 0, i32 1, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vhvio_val_tbl, ptr null, i32 0, i32 0, i32 1604, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1604, i32 23, i32 0, i32 18, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 1024 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.16, i8 0, ptr @.str.4, ptr null, i32 12, i8 0, i32 8, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vsdio_val_tbl, ptr null, i32 0, i32 0, i32 1608, i32 56, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1608, i32 135, i32 130, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 -32768 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.17, i8 0, ptr @.str.4, ptr null, i32 13, i8 0, i32 4, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vpll_val_tbl, ptr null, i32 0, i32 0, i32 1612, i32 24, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1612, i32 67, i32 2, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 32 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.18, i8 0, ptr @.str.4, ptr null, i32 14, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 10, i32 0, ptr null, ptr null, i32 0, ptr @vrf1_val_tbl, ptr null, i32 0, i32 0, i32 1616, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1616, i32 172, i32 4, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 2048 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.19, i8 0, ptr @.str.4, ptr null, i32 15, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 10, i32 0, ptr null, ptr null, i32 0, ptr @vrf2_val_tbl, ptr null, i32 0, i32 0, i32 1620, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1620, i32 35, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 1 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.20, i8 0, ptr @.str.4, ptr null, i32 16, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vrfref_val_tbl, ptr null, i32 0, i32 0, i32 1624, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1624, i32 35, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 64 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.21, ptr null, ptr @.str.21, i8 0, ptr @.str.4, ptr null, i32 17, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vwlan1_val_tbl, ptr null, i32 0, i32 0, i32 1628, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1628, i32 71, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 4096 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.22, ptr null, ptr @.str.22, i8 0, ptr @.str.4, ptr null, i32 18, i8 0, i32 4, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vwlan2_val_tbl, ptr null, i32 0, i32 0, i32 1632, i32 192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1632, i32 524, i32 524, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 2 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.23, ptr null, ptr @.str.23, i8 0, ptr @.str.4, ptr null, i32 19, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vsim_val_tbl, ptr null, i32 0, i32 0, i32 1636, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1636, i32 35, i32 3, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 -1 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.24, ptr null, ptr @.str.24, i8 0, ptr @.str.4, ptr null, i32 20, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vsimcard_val_tbl, ptr null, i32 0, i32 0, i32 1636, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1636, i32 7808, i32 7680, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 -1 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.25, ptr null, ptr @.str.25, i8 0, ptr @.str.4, ptr null, i32 21, i8 0, i32 4, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 500, i32 0, ptr null, ptr null, i32 0, ptr @vvib_val_tbl, ptr null, i32 0, i32 0, i32 1640, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1640, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 8192 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.26, ptr null, ptr @.str.26, i8 0, ptr @.str.4, ptr null, i32 22, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vusb_val_tbl, ptr null, i32 0, i32 0, i32 1644, i32 64, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1644, i32 284, i32 12, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 256 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.27, ptr null, ptr @.str.27, i8 0, ptr @.str.4, ptr null, i32 23, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vaudio_val_tbl, ptr null, i32 0, i32 0, i32 2048, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2048, i32 22, i32 4, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 60, i16 1 }, %struct.cpcap_regulator zeroinitializer], align 4
@xoom_regulators = internal constant [25 x %struct.cpcap_regulator] [%struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.3, ptr null, ptr @.str.3, i8 0, ptr @.str.4, ptr null, i32 0, i8 0, i32 1, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @unknown_val_tbl, ptr null, i32 0, i32 0, i32 1548, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1548, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 128 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.5, ptr null, ptr @.str.5, i8 0, ptr @.str.4, ptr null, i32 1, i8 0, i32 69, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 120, i32 0, ptr null, ptr null, i32 0, ptr @sw2_sw4_val_tbl, ptr null, i32 0, i32 0, i32 1556, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1556, i32 3840, i32 2048, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 256 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.6, ptr null, ptr @.str.6, i8 0, ptr @.str.4, ptr null, i32 2, i8 0, i32 1, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @unknown_val_tbl, ptr null, i32 0, i32 0, i32 1564, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1564, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 512 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.7, ptr null, ptr @.str.7, i8 0, ptr @.str.4, ptr null, i32 3, i8 0, i32 69, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 100, i32 0, ptr null, ptr null, i32 0, ptr @sw2_sw4_val_tbl, ptr null, i32 0, i32 0, i32 1568, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1568, i32 3840, i32 2304, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 1024 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.8, ptr null, ptr @.str.8, i8 0, ptr @.str.4, ptr null, i32 4, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @sw5_val_tbl, ptr null, i32 0, i32 0, i32 1576, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1576, i32 42, i32 34, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 2048 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.9, ptr null, ptr @.str.9, i8 0, ptr @.str.4, ptr null, i32 5, i8 0, i32 1, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @unknown_val_tbl, ptr null, i32 0, i32 0, i32 1580, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1580, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 4096 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.10, ptr null, ptr @.str.10, i8 0, ptr @.str.4, ptr null, i32 6, i8 0, i32 4, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vcam_val_tbl, ptr null, i32 0, i32 0, i32 1584, i32 48, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1584, i32 135, i32 7, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 8192 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.11, ptr null, ptr @.str.11, i8 0, ptr @.str.4, ptr null, i32 7, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 350, i32 0, ptr null, ptr null, i32 0, ptr @vcsi_val_tbl, ptr null, i32 0, i32 0, i32 1588, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1588, i32 71, i32 7, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 8 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr @.str.4, ptr null, i32 8, i8 0, i32 4, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vdac_val_tbl, ptr null, i32 0, i32 0, i32 1592, i32 48, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1592, i32 135, i32 3, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 512 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr @.str.4, ptr null, i32 9, i8 0, i32 4, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vdig_val_tbl, ptr null, i32 0, i32 0, i32 1596, i32 48, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1596, i32 135, i32 5, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 16384 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr @.str.4, ptr null, i32 10, i8 0, i32 14, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vfuse_val_tbl, ptr null, i32 0, i32 0, i32 1600, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1600, i32 128, i32 128, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 16 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr @.str.4, ptr null, i32 11, i8 0, i32 1, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vhvio_val_tbl, ptr null, i32 0, i32 0, i32 1604, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1604, i32 23, i32 2, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 1024 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.16, i8 0, ptr @.str.4, ptr null, i32 12, i8 0, i32 8, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vsdio_val_tbl, ptr null, i32 0, i32 0, i32 1608, i32 56, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1608, i32 135, i32 2, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 -32768 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.17, i8 0, ptr @.str.4, ptr null, i32 13, i8 0, i32 4, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vpll_val_tbl, ptr null, i32 0, i32 0, i32 1612, i32 24, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1612, i32 67, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 32 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.18, i8 0, ptr @.str.4, ptr null, i32 14, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 10, i32 0, ptr null, ptr null, i32 0, ptr @vrf1_val_tbl, ptr null, i32 0, i32 0, i32 1616, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1616, i32 172, i32 12, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 2048 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.19, i8 0, ptr @.str.4, ptr null, i32 15, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 10, i32 0, ptr null, ptr null, i32 0, ptr @vrf2_val_tbl, ptr null, i32 0, i32 0, i32 1620, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1620, i32 35, i32 3, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 1 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.20, i8 0, ptr @.str.4, ptr null, i32 16, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vrfref_val_tbl, ptr null, i32 0, i32 0, i32 1624, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1624, i32 35, i32 3, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 64 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.21, ptr null, ptr @.str.21, i8 0, ptr @.str.4, ptr null, i32 17, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vwlan1_val_tbl, ptr null, i32 0, i32 0, i32 1628, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1628, i32 71, i32 5, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 4096 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.22, ptr null, ptr @.str.22, i8 0, ptr @.str.4, ptr null, i32 18, i8 0, i32 4, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vwlan2_val_tbl, ptr null, i32 0, i32 0, i32 1632, i32 192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1632, i32 524, i32 8, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 2 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.23, ptr null, ptr @.str.23, i8 0, ptr @.str.4, ptr null, i32 19, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vsim_val_tbl, ptr null, i32 0, i32 0, i32 1636, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1636, i32 35, i32 3, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 -1 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.24, ptr null, ptr @.str.24, i8 0, ptr @.str.4, ptr null, i32 20, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vsimcard_val_tbl, ptr null, i32 0, i32 0, i32 1636, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1636, i32 7808, i32 7680, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 -1 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.25, ptr null, ptr @.str.25, i8 0, ptr @.str.4, ptr null, i32 21, i8 0, i32 4, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 500, i32 0, ptr null, ptr null, i32 0, ptr @vvib_val_tbl, ptr null, i32 0, i32 0, i32 1640, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1640, i32 1, i32 0, i32 1, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 8192 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.26, ptr null, ptr @.str.26, i8 0, ptr @.str.4, ptr null, i32 22, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vusb_val_tbl, ptr null, i32 0, i32 0, i32 1644, i32 64, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1644, i32 284, i32 12, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 256 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.27, ptr null, ptr @.str.27, i8 0, ptr @.str.4, ptr null, i32 23, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vaudio_val_tbl, ptr null, i32 0, i32 0, i32 2048, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2048, i32 22, i32 4, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 60, i16 1 }, %struct.cpcap_regulator zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"SW1\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@cpcap_regulator_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_iterate, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpcap_regulator_enable, ptr @cpcap_regulator_disable, ptr @regulator_is_enabled_regmap, ptr @cpcap_regulator_set_mode, ptr @cpcap_regulator_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"SW2\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"SW3\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"SW4\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"SW5\00", align 1
@sw5_val_tbl = internal constant [2 x i32] [i32 0, i32 5050000], align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"SW6\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"VCAM\00", align 1
@vcam_val_tbl = internal constant [4 x i32] [i32 2600000, i32 2700000, i32 2800000, i32 2900000], align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"VCSI\00", align 1
@vcsi_val_tbl = internal constant [2 x i32] [i32 1200000, i32 1800000], align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"VDAC\00", align 1
@vdac_val_tbl = internal constant [4 x i32] [i32 1200000, i32 1500000, i32 1800000, i32 2500000], align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"VDIG\00", align 1
@vdig_val_tbl = internal constant [4 x i32] [i32 1200000, i32 1350000, i32 1500000, i32 1875000], align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"VFUSE\00", align 1
@vfuse_val_tbl = internal constant [14 x i32] [i32 1500000, i32 1600000, i32 1700000, i32 1800000, i32 1900000, i32 2000000, i32 2100000, i32 2200000, i32 2300000, i32 2400000, i32 2500000, i32 2600000, i32 2700000, i32 3150000], align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"VHVIO\00", align 1
@vhvio_val_tbl = internal constant [1 x i32] [i32 2775000], align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"VSDIO\00", align 1
@vsdio_val_tbl = internal constant [8 x i32] [i32 1500000, i32 1600000, i32 1800000, i32 2600000, i32 2700000, i32 2800000, i32 2900000, i32 3000000], align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"VPLL\00", align 1
@vpll_val_tbl = internal constant [4 x i32] [i32 1200000, i32 1300000, i32 1400000, i32 1800000], align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"VRF1\00", align 1
@vrf1_val_tbl = internal constant [2 x i32] [i32 2775000, i32 2500000], align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"VRF2\00", align 1
@vrf2_val_tbl = internal constant [2 x i32] [i32 0, i32 2775000], align 4
@.str.20 = private unnamed_addr constant [7 x i8] c"VRFREF\00", align 1
@vrfref_val_tbl = internal constant [2 x i32] [i32 2500000, i32 2775000], align 4
@.str.21 = private unnamed_addr constant [7 x i8] c"VWLAN1\00", align 1
@vwlan1_val_tbl = internal constant [2 x i32] [i32 1800000, i32 1900000], align 4
@.str.22 = private unnamed_addr constant [7 x i8] c"VWLAN2\00", align 1
@vwlan2_val_tbl = internal constant [4 x i32] [i32 2775000, i32 3000000, i32 3300000, i32 3300000], align 4
@.str.23 = private unnamed_addr constant [5 x i8] c"VSIM\00", align 1
@vsim_val_tbl = internal constant [2 x i32] [i32 1800000, i32 2900000], align 4
@.str.24 = private unnamed_addr constant [9 x i8] c"VSIMCARD\00", align 1
@vsimcard_val_tbl = internal constant [2 x i32] [i32 1800000, i32 2900000], align 4
@.str.25 = private unnamed_addr constant [5 x i8] c"VVIB\00", align 1
@vvib_val_tbl = internal constant [4 x i32] [i32 1300000, i32 1800000, i32 2000000, i32 3000000], align 4
@.str.26 = private unnamed_addr constant [5 x i8] c"VUSB\00", align 1
@vusb_val_tbl = internal constant [2 x i32] [i32 0, i32 3300000], align 4
@.str.27 = private unnamed_addr constant [7 x i8] c"VAUDIO\00", align 1
@vaudio_val_tbl = internal constant [2 x i32] [i32 0, i32 2775000], align 4
@sw2_sw4_val_tbl = internal constant [69 x i32] [i32 612500, i32 625000, i32 637500, i32 650000, i32 662500, i32 675000, i32 687500, i32 700000, i32 712500, i32 725000, i32 737500, i32 750000, i32 762500, i32 775000, i32 787500, i32 800000, i32 812500, i32 825000, i32 837500, i32 850000, i32 862500, i32 875000, i32 887500, i32 900000, i32 912500, i32 925000, i32 937500, i32 950000, i32 962500, i32 975000, i32 987500, i32 1000000, i32 1012500, i32 1025000, i32 1037500, i32 1050000, i32 1062500, i32 1075000, i32 1087500, i32 1100000, i32 1112500, i32 1125000, i32 1137500, i32 1150000, i32 1162500, i32 1175000, i32 1187500, i32 1200000, i32 1212500, i32 1225000, i32 1237500, i32 1250000, i32 1262500, i32 1275000, i32 1287500, i32 1300000, i32 1312500, i32 1325000, i32 1337500, i32 1350000, i32 1362500, i32 1375000, i32 1387500, i32 1400000, i32 1412500, i32 1425000, i32 1437500, i32 1450000, i32 1462500], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias248, ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_cpcap_regulator_driver_exit, ptr @__initcall__kmod_cpcap_regulator__247_568_cpcap_regulator_driver_init6, ptr @cpcap_regulator_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cpcap_regulator_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cpcap_regulator_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @cpcap_regulator_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @cpcap_regulator_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_regulator_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @of_device_get_match_data(ptr noundef %3) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #8
  br label %44

7:                                                ; preds = %1
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 12, i32 noundef 3520) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %44, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr @dev_get_regmap(ptr noundef %12, ptr noundef null) #7
  store ptr %13, ptr %8, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.cpcap_ddata, ptr %8, i32 0, i32 1
  store ptr %3, ptr %16, align 4
  %17 = getelementptr inbounds %struct.cpcap_ddata, ptr %8, i32 0, i32 2
  store ptr %4, ptr %17, align 4
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %18, align 8
  %19 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %19, i8 0, i32 20, i1 false)
  store ptr %3, ptr %2, align 4
  %20 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 4
  store ptr %13, ptr %20, align 4
  %21 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  %22 = load ptr, ptr %4, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %39, %15
  %25 = phi ptr [ %41, %39 ], [ %4, %15 ]
  %26 = phi i32 [ %37, %39 ], [ 0, %15 ]
  %27 = getelementptr inbounds %struct.regulator_desc, ptr %25, i32 0, i32 23
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, @unknown_val_tbl
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  store ptr %25, ptr %21, align 4
  %31 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef %25, ptr noundef nonnull %2) #7
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load ptr, ptr %25, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef %34) #8
  %35 = ptrtoint ptr %31 to i32
  br label %44

36:                                               ; preds = %30, %24
  %37 = add nuw nsw i32 %26, 1
  %38 = icmp eq i32 %37, 24
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %17, align 4
  %41 = getelementptr %struct.cpcap_regulator, ptr %40, i32 %37
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %24

44:                                               ; preds = %39, %36, %33, %15, %10, %7, %6
  %45 = phi i32 [ -19, %6 ], [ -12, %7 ], [ -19, %10 ], [ %35, %33 ], [ 0, %15 ], [ 0, %36 ], [ 0, %39 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  ret i32 %45
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @cpcap_map_mode(i32 noundef %0) #6 {
  %2 = icmp eq i32 %0, 64
  %3 = select i1 %2, i32 8, i32 0
  %4 = icmp eq i32 %0, 0
  %5 = select i1 %4, i32 2, i32 %3
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_iterate(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_regulator_enable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = tail call i32 @regulator_enable_regmap(ptr noundef %0) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 36
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 32768
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.cpcap_regulator, ptr %2, i32 0, i32 1
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.cpcap_regulator, ptr %2, i32 0, i32 2
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %16, i32 noundef %19, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  %23 = tail call i32 @regulator_disable_regmap(ptr noundef %0) #7
  br label %24

24:                                               ; preds = %22, %11, %5, %1
  %25 = phi i32 [ %3, %1 ], [ %20, %22 ], [ 0, %11 ], [ 0, %5 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_regulator_disable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 36
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 32768
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.cpcap_regulator, ptr %2, i32 0, i32 1
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = getelementptr inbounds %struct.cpcap_regulator, ptr %2, i32 0, i32 2
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %13, i32 noundef %16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %8, %1
  %20 = tail call i32 @regulator_disable_regmap(ptr noundef %0) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr inbounds %struct.regulator_desc, ptr %23, i32 0, i32 36
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 32768
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.cpcap_regulator, ptr %2, i32 0, i32 1
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds %struct.cpcap_regulator, ptr %2, i32 0, i32 2
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %33, i32 noundef %36, i32 noundef %36, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %38

38:                                               ; preds = %28, %22, %19, %8
  %39 = phi i32 [ %17, %8 ], [ %20, %28 ], [ %20, %22 ], [ 0, %19 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_regulator_set_mode(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  switch i32 %1, label %12 [
    i32 2, label %4
    i32 8, label %3
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2
  %5 = phi i32 [ 64, %3 ], [ 0, %2 ]
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.regulator_desc, ptr %8, i32 0, i32 34
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %10, i32 noundef 64, i32 noundef %5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %12

12:                                               ; preds = %4, %2
  %13 = phi i32 [ %11, %4 ], [ -22, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpcap_regulator_get_mode(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 34
  %7 = load i32, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %4, i32 noundef %7, ptr noundef nonnull %2) #7
  %9 = load i32, ptr %2, align 4
  %10 = and i32 %9, 64
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 2, i32 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
