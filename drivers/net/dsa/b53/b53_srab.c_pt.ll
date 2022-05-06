; ModuleID = '/llk/IR/drivers/net/dsa/b53/b53_srab.c_pt.bc'
source_filename = "../drivers/net/dsa/b53/b53_srab.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.b53_io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.b53_platform_data = type { %struct.dsa_chip_data, i32, i16, i8, ptr }
%struct.dsa_chip_data = type { ptr, i32, [12 x ptr], i32, ptr, [12 x ptr], [12 x ptr], [4 x i8] }
%struct.b53_device = type { ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, ptr, i32, i8, [3 x i8], i8, i8, i8, i32, i8, i16, i32, i16, i32, i8, ptr, i8, ptr, ptr, i8, i32, ptr, i8, i32, ptr }
%struct.b53_srab_priv = type { ptr, ptr, [9 x %struct.b53_srab_port_priv] }
%struct.b53_srab_port_priv = type { i32, i8, ptr, i32, i32 }

@b53_srab_of_match = internal constant [18 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm53010-srab\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm53011-srab\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm53012-srab\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm53018-srab\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm53019-srab\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm5301x-srab\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm11360-srab\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 361216 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm58522-srab\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 22528 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm58525-srab\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 22528 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm58535-srab\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 22528 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm58622-srab\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 22528 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm58623-srab\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 22528 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm58625-srab\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 22528 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm88312-srab\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 22528 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,cygnus-srab\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 361216 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,nsp-srab\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 22528 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,omega-srab\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 361216 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author453 = internal constant [41 x i8] c"author=Hauke Mehrtens <hauke@hauke-m.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description454 = internal constant [77 x i8] c"description=B53 Switch Register Access Bridge Registers (SRAB) access driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license455 = internal constant [21 x i8] c"license=Dual BSD/GPL\00", section ".modinfo", align 1
@b53_srab_driver = internal global %struct.platform_driver { ptr @b53_srab_probe, ptr @b53_srab_remove, ptr @b53_srab_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @b53_srab_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [16 x i8] c"b53-srab-switch\00", align 1
@b53_srab_ops = internal constant %struct.b53_io_ops { ptr @b53_srab_read8, ptr @b53_srab_read16, ptr @b53_srab_read32, ptr @b53_srab_read48, ptr @b53_srab_read64, ptr @b53_srab_write8, ptr @b53_srab_write16, ptr @b53_srab_write32, ptr @b53_srab_write48, ptr @b53_srab_write64, ptr null, ptr null, ptr @b53_srab_irq_enable, ptr @b53_srab_irq_disable, ptr @b53_srab_serdes_map_lane, ptr @b53_serdes_link_state, ptr @b53_serdes_config, ptr @b53_serdes_an_restart, ptr @b53_serdes_link_set, ptr @b53_serdes_phylink_validate }, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"drivers/net/dsa/b53/b53_srab.c\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"link_state_p%d\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Port %d mode: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"mii\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"gmii\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"sgmii\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"tbi\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"rev-mii\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"rmii\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"rev-rmii\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"rgmii\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"rgmii-id\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"rgmii-rxid\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"rgmii-txid\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"rtbi\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"smii\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"xgmii\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"xlgmii\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"moca\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"qsgmii\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"trgmii\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"1000base-x\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"2500base-x\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"5gbase-r\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"rxaui\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"xaui\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"10gbase-r\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"25gbase-r\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"usxgmii\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"10gbase-kr\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"100base-x\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author453, ptr @__UNIQUE_ID_description454, ptr @__UNIQUE_ID_license455], section "llvm.metadata"

@__mod_of__b53_srab_of_match_device_table = dso_local alias [18 x %struct.of_device_id], ptr @b53_srab_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @b53_srab_driver, ptr noundef nonnull @__this_module) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @b53_srab_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_srab_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @of_match_node(ptr noundef nonnull @b53_srab_of_match, ptr noundef nonnull %6) #5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 176, i32 noundef 3520) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %181, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.of_device_id, ptr %9, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = getelementptr inbounds %struct.b53_platform_data, ptr %12, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  br label %19

19:                                               ; preds = %14, %8, %1
  %20 = phi ptr [ %12, %14 ], [ %4, %8 ], [ %4, %1 ]
  %21 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 188, i32 noundef 3520) #5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %181, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  store ptr %24, ptr %21, align 4
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = ptrtoint ptr %24 to i32
  br label %181

28:                                               ; preds = %23
  %29 = tail call ptr @b53_switch_alloc(ptr noundef %2, ptr noundef nonnull @b53_srab_ops, ptr noundef nonnull %21) #5
  %30 = icmp eq ptr %29, null
  br i1 %30, label %181, label %31

31:                                               ; preds = %28
  %32 = icmp eq ptr %20, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.b53_device, ptr %29, i32 0, i32 1
  store ptr %20, ptr %34, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %29, ptr %36, align 8
  %37 = getelementptr inbounds %struct.b53_device, ptr %29, i32 0, i32 23
  %38 = load ptr, ptr %37, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 -1) #5, !srcloc !9
  br label %41

41:                                               ; preds = %52, %35
  %42 = phi i32 [ 0, %35 ], [ %53, %52 ]
  %43 = getelementptr %struct.b53_srab_priv, ptr %38, i32 0, i32 2, i32 %42
  %44 = icmp eq i32 %42, 6
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.2, i32 noundef %42) #5
  %47 = icmp eq ptr %46, null
  br i1 %47, label %62, label %48

48:                                               ; preds = %45
  %49 = getelementptr %struct.b53_srab_priv, ptr %38, i32 0, i32 2, i32 %42, i32 3
  store i32 %42, ptr %49, align 4
  %50 = getelementptr %struct.b53_srab_priv, ptr %38, i32 0, i32 2, i32 %42, i32 2
  store ptr %29, ptr %50, align 4
  %51 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %0, ptr noundef nonnull %46) #5
  store i32 %51, ptr %43, align 4
  tail call void @kfree(ptr noundef nonnull %46) #5
  br label %52

52:                                               ; preds = %48, %41
  %53 = add nuw nsw i32 %42, 1
  %54 = icmp eq i32 %53, 9
  br i1 %54, label %55, label %41

55:                                               ; preds = %52
  %56 = load ptr, ptr %38, align 4
  %57 = getelementptr i8, ptr %56, i32 64
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %59 = or i32 %58, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %60 = load ptr, ptr %38, align 4
  %61 = getelementptr i8, ptr %60, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #5, !srcloc !9
  br label %62

62:                                               ; preds = %55, %45
  %63 = load ptr, ptr %36, align 8
  %64 = getelementptr inbounds %struct.b53_device, ptr %63, i32 0, i32 23
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.b53_device, ptr %63, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.b53_platform_data, ptr %67, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 22528
  br i1 %72, label %73, label %179

73:                                               ; preds = %69, %62
  %74 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 1) #5
  %75 = getelementptr inbounds %struct.b53_srab_priv, ptr %65, i32 0, i32 1
  store ptr %74, ptr %75, align 4
  %76 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %179, label %77

77:                                               ; preds = %73
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %79 = and i32 %78, 7
  switch i32 %79, label %92 [
    i32 0, label %80
    i32 1, label %84
    i32 3, label %86
    i32 2, label %88
    i32 5, label %90
  ]

80:                                               ; preds = %77
  %81 = getelementptr %struct.b53_srab_priv, ptr %65, i32 0, i32 2, i32 5, i32 4
  store i32 4, ptr %81, align 4
  %82 = tail call i32 @b53_serdes_init(ptr noundef %63, i32 noundef 5) #5
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %94, label %127

84:                                               ; preds = %77
  %85 = getelementptr %struct.b53_srab_priv, ptr %65, i32 0, i32 2, i32 5, i32 4
  store i32 2, ptr %85, align 4
  br label %96

86:                                               ; preds = %77
  %87 = getelementptr %struct.b53_srab_priv, ptr %65, i32 0, i32 2, i32 5, i32 4
  store i32 3, ptr %87, align 4
  br label %97

88:                                               ; preds = %77
  %89 = getelementptr %struct.b53_srab_priv, ptr %65, i32 0, i32 2, i32 5, i32 4
  store i32 9, ptr %89, align 4
  br label %103

90:                                               ; preds = %77
  %91 = getelementptr %struct.b53_srab_priv, ptr %65, i32 0, i32 2, i32 5, i32 4
  store i32 1, ptr %91, align 4
  br label %125

92:                                               ; preds = %77
  %93 = getelementptr %struct.b53_srab_priv, ptr %65, i32 0, i32 2, i32 5, i32 4
  store i32 0, ptr %93, align 4
  br label %127

94:                                               ; preds = %80
  %95 = load i32, ptr %81, align 4
  switch i32 %95, label %124 [
    i32 0, label %127
    i32 20, label %123
    i32 1, label %125
    i32 2, label %96
    i32 3, label %97
    i32 4, label %98
    i32 5, label %99
    i32 6, label %100
    i32 7, label %101
    i32 8, label %102
    i32 9, label %103
    i32 10, label %104
    i32 11, label %105
    i32 12, label %106
    i32 13, label %107
    i32 14, label %108
    i32 15, label %109
    i32 16, label %110
    i32 17, label %111
    i32 18, label %112
    i32 19, label %113
    i32 21, label %114
    i32 22, label %115
    i32 23, label %116
    i32 24, label %117
    i32 25, label %118
    i32 26, label %119
    i32 27, label %120
    i32 28, label %121
    i32 29, label %122
  ]

96:                                               ; preds = %94, %84
  br label %125

97:                                               ; preds = %94, %86
  br label %125

98:                                               ; preds = %94
  br label %125

99:                                               ; preds = %94
  br label %125

100:                                              ; preds = %94
  br label %125

101:                                              ; preds = %94
  br label %125

102:                                              ; preds = %94
  br label %125

103:                                              ; preds = %94, %88
  br label %125

104:                                              ; preds = %94
  br label %125

105:                                              ; preds = %94
  br label %125

106:                                              ; preds = %94
  br label %125

107:                                              ; preds = %94
  br label %125

108:                                              ; preds = %94
  br label %125

109:                                              ; preds = %94
  br label %125

110:                                              ; preds = %94
  br label %125

111:                                              ; preds = %94
  br label %125

112:                                              ; preds = %94
  br label %125

113:                                              ; preds = %94
  br label %125

114:                                              ; preds = %94
  br label %125

115:                                              ; preds = %94
  br label %125

116:                                              ; preds = %94
  br label %125

117:                                              ; preds = %94
  br label %125

118:                                              ; preds = %94
  br label %125

119:                                              ; preds = %94
  br label %125

120:                                              ; preds = %94
  br label %125

121:                                              ; preds = %94
  br label %125

122:                                              ; preds = %94
  br label %125

123:                                              ; preds = %94
  br label %125

124:                                              ; preds = %94
  br label %125

125:                                              ; preds = %124, %123, %122, %121, %120, %119, %118, %117, %116, %115, %114, %113, %112, %111, %110, %109, %108, %107, %106, %105, %104, %103, %102, %101, %100, %99, %98, %97, %96, %94, %90
  %126 = phi ptr [ @.str.34, %124 ], [ @.str.33, %123 ], [ @.str.32, %122 ], [ @.str.31, %121 ], [ @.str.30, %120 ], [ @.str.29, %119 ], [ @.str.28, %118 ], [ @.str.27, %117 ], [ @.str.26, %116 ], [ @.str.25, %115 ], [ @.str.24, %114 ], [ @.str.23, %113 ], [ @.str.22, %112 ], [ @.str.21, %111 ], [ @.str.20, %110 ], [ @.str.19, %109 ], [ @.str.18, %108 ], [ @.str.17, %107 ], [ @.str.16, %106 ], [ @.str.15, %105 ], [ @.str.14, %104 ], [ @.str.13, %103 ], [ @.str.12, %102 ], [ @.str.11, %101 ], [ @.str.10, %100 ], [ @.str.9, %99 ], [ @.str.8, %98 ], [ @.str.7, %97 ], [ @.str.6, %96 ], [ @.str.5, %94 ], [ @.str.5, %90 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 5, ptr noundef nonnull %126) #6
  br label %127

127:                                              ; preds = %125, %94, %92, %80
  %128 = load ptr, ptr %75, align 4
  %129 = getelementptr i8, ptr %128, i32 4
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %129) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %131 = and i32 %130, 7
  switch i32 %131, label %144 [
    i32 0, label %140
    i32 1, label %138
    i32 3, label %136
    i32 2, label %134
    i32 5, label %132
  ]

132:                                              ; preds = %127
  %133 = getelementptr %struct.b53_srab_priv, ptr %65, i32 0, i32 2, i32 4, i32 4
  store i32 1, ptr %133, align 4
  br label %177

134:                                              ; preds = %127
  %135 = getelementptr %struct.b53_srab_priv, ptr %65, i32 0, i32 2, i32 4, i32 4
  store i32 9, ptr %135, align 4
  br label %167

136:                                              ; preds = %127
  %137 = getelementptr %struct.b53_srab_priv, ptr %65, i32 0, i32 2, i32 4, i32 4
  store i32 3, ptr %137, align 4
  br label %173

138:                                              ; preds = %127
  %139 = getelementptr %struct.b53_srab_priv, ptr %65, i32 0, i32 2, i32 4, i32 4
  store i32 2, ptr %139, align 4
  br label %174

140:                                              ; preds = %127
  %141 = getelementptr %struct.b53_srab_priv, ptr %65, i32 0, i32 2, i32 4, i32 4
  store i32 4, ptr %141, align 4
  %142 = tail call i32 @b53_serdes_init(ptr noundef %63, i32 noundef 4) #5
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %146, label %179

144:                                              ; preds = %127
  %145 = getelementptr %struct.b53_srab_priv, ptr %65, i32 0, i32 2, i32 4, i32 4
  store i32 0, ptr %145, align 4
  br label %179

146:                                              ; preds = %140
  %147 = load i32, ptr %141, align 4
  switch i32 %147, label %176 [
    i32 0, label %179
    i32 20, label %175
    i32 1, label %177
    i32 2, label %174
    i32 3, label %173
    i32 4, label %172
    i32 5, label %171
    i32 6, label %170
    i32 7, label %169
    i32 8, label %168
    i32 9, label %167
    i32 10, label %166
    i32 11, label %165
    i32 12, label %164
    i32 13, label %163
    i32 14, label %162
    i32 15, label %161
    i32 16, label %160
    i32 17, label %159
    i32 18, label %158
    i32 19, label %157
    i32 21, label %156
    i32 22, label %155
    i32 23, label %154
    i32 24, label %153
    i32 25, label %152
    i32 26, label %151
    i32 27, label %150
    i32 28, label %149
    i32 29, label %148
  ]

148:                                              ; preds = %146
  br label %177

149:                                              ; preds = %146
  br label %177

150:                                              ; preds = %146
  br label %177

151:                                              ; preds = %146
  br label %177

152:                                              ; preds = %146
  br label %177

153:                                              ; preds = %146
  br label %177

154:                                              ; preds = %146
  br label %177

155:                                              ; preds = %146
  br label %177

156:                                              ; preds = %146
  br label %177

157:                                              ; preds = %146
  br label %177

158:                                              ; preds = %146
  br label %177

159:                                              ; preds = %146
  br label %177

160:                                              ; preds = %146
  br label %177

161:                                              ; preds = %146
  br label %177

162:                                              ; preds = %146
  br label %177

163:                                              ; preds = %146
  br label %177

164:                                              ; preds = %146
  br label %177

165:                                              ; preds = %146
  br label %177

166:                                              ; preds = %146
  br label %177

167:                                              ; preds = %146, %134
  br label %177

168:                                              ; preds = %146
  br label %177

169:                                              ; preds = %146
  br label %177

170:                                              ; preds = %146
  br label %177

171:                                              ; preds = %146
  br label %177

172:                                              ; preds = %146
  br label %177

173:                                              ; preds = %146, %136
  br label %177

174:                                              ; preds = %146, %138
  br label %177

175:                                              ; preds = %146
  br label %177

176:                                              ; preds = %146
  br label %177

177:                                              ; preds = %176, %175, %174, %173, %172, %171, %170, %169, %168, %167, %166, %165, %164, %163, %162, %161, %160, %159, %158, %157, %156, %155, %154, %153, %152, %151, %150, %149, %148, %146, %132
  %178 = phi ptr [ @.str.34, %176 ], [ @.str.33, %175 ], [ @.str.32, %148 ], [ @.str.31, %149 ], [ @.str.30, %150 ], [ @.str.29, %151 ], [ @.str.28, %152 ], [ @.str.27, %153 ], [ @.str.26, %154 ], [ @.str.25, %155 ], [ @.str.24, %156 ], [ @.str.23, %157 ], [ @.str.22, %158 ], [ @.str.21, %159 ], [ @.str.20, %160 ], [ @.str.19, %161 ], [ @.str.18, %162 ], [ @.str.17, %163 ], [ @.str.16, %164 ], [ @.str.15, %165 ], [ @.str.14, %166 ], [ @.str.13, %167 ], [ @.str.12, %168 ], [ @.str.11, %169 ], [ @.str.10, %170 ], [ @.str.9, %171 ], [ @.str.8, %172 ], [ @.str.7, %173 ], [ @.str.6, %174 ], [ @.str.5, %146 ], [ @.str.5, %132 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 4, ptr noundef nonnull %178) #6
  br label %179

179:                                              ; preds = %177, %146, %144, %140, %73, %69
  %180 = tail call i32 @b53_switch_register(ptr noundef nonnull %29) #5
  br label %181

181:                                              ; preds = %179, %28, %26, %19, %11
  %182 = phi i32 [ %27, %26 ], [ %180, %179 ], [ -12, %11 ], [ -12, %19 ], [ -12, %28 ]
  ret i32 %182
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_srab_remove(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.b53_device, ptr %3, i32 0, i32 23
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 64
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %11 = and i32 %10, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #5, !srcloc !9
  %14 = load ptr, ptr %3, align 4
  tail call void @dsa_unregister_switch(ptr noundef %14) #5
  store ptr null, ptr %2, align 8
  br label %15

15:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @b53_srab_shutdown(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  tail call void @dsa_switch_shutdown(ptr noundef %6) #5
  store ptr null, ptr %2, align 8
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @b53_switch_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_switch_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_srab_read8(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 64
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %10 = or i32 %9, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %10) #5, !srcloc !9
  br label %11

11:                                               ; preds = %16, %4
  %12 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %17 = add nuw nsw i32 %12, 1
  %18 = icmp eq i32 %17, 20
  br i1 %18, label %22, label %11

19:                                               ; preds = %11
  %20 = icmp eq i32 %12, 5
  br i1 %20, label %21, label %22, !prof !17

21:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %29

22:                                               ; preds = %19, %16
  %23 = tail call fastcc i32 @b53_srab_op(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef 0)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = getelementptr i8, ptr %7, i32 60
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  %28 = trunc i32 %27 to i8
  store i8 %28, ptr %3, align 1
  br label %29

29:                                               ; preds = %25, %22, %21
  %30 = phi i32 [ -5, %21 ], [ %23, %22 ], [ 0, %25 ]
  %31 = load ptr, ptr %5, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 64
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %35 = and i32 %34, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %35) #5, !srcloc !9
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_srab_read16(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 64
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %10 = or i32 %9, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %10) #5, !srcloc !9
  br label %11

11:                                               ; preds = %16, %4
  %12 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %17 = add nuw nsw i32 %12, 1
  %18 = icmp eq i32 %17, 20
  br i1 %18, label %22, label %11

19:                                               ; preds = %11
  %20 = icmp eq i32 %12, 5
  br i1 %20, label %21, label %22, !prof !17

21:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %29

22:                                               ; preds = %19, %16
  %23 = tail call fastcc i32 @b53_srab_op(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef 0)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = getelementptr i8, ptr %7, i32 60
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !21
  %28 = trunc i32 %27 to i16
  store i16 %28, ptr %3, align 2
  br label %29

29:                                               ; preds = %25, %22, %21
  %30 = phi i32 [ -5, %21 ], [ %23, %22 ], [ 0, %25 ]
  %31 = load ptr, ptr %5, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 64
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %35 = and i32 %34, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %35) #5, !srcloc !9
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_srab_read32(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 64
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %10 = or i32 %9, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %10) #5, !srcloc !9
  br label %11

11:                                               ; preds = %16, %4
  %12 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %17 = add nuw nsw i32 %12, 1
  %18 = icmp eq i32 %17, 20
  br i1 %18, label %22, label %11

19:                                               ; preds = %11
  %20 = icmp eq i32 %12, 5
  br i1 %20, label %21, label %22, !prof !17

21:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %28

22:                                               ; preds = %19, %16
  %23 = tail call fastcc i32 @b53_srab_op(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef 0)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = getelementptr i8, ptr %7, i32 60
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !22
  store i32 %27, ptr %3, align 4
  br label %28

28:                                               ; preds = %25, %22, %21
  %29 = phi i32 [ -5, %21 ], [ %23, %22 ], [ 0, %25 ]
  %30 = load ptr, ptr %5, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 64
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %34 = and i32 %33, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %34) #5, !srcloc !9
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_srab_read48(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 64
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %10 = or i32 %9, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %10) #5, !srcloc !9
  br label %11

11:                                               ; preds = %16, %4
  %12 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %17 = add nuw nsw i32 %12, 1
  %18 = icmp eq i32 %17, 20
  br i1 %18, label %22, label %11

19:                                               ; preds = %11
  %20 = icmp eq i32 %12, 5
  br i1 %20, label %21, label %22, !prof !17

21:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %36

22:                                               ; preds = %19, %16
  %23 = tail call fastcc i32 @b53_srab_op(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef 0)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = getelementptr i8, ptr %7, i32 60
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !23
  %28 = zext i32 %27 to i64
  store i64 %28, ptr %3, align 8
  %29 = getelementptr i8, ptr %7, i32 56
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !24
  %31 = and i32 %30, 65535
  %32 = zext i32 %31 to i64
  %33 = shl nuw nsw i64 %32, 32
  %34 = load i64, ptr %3, align 8
  %35 = add i64 %33, %34
  store i64 %35, ptr %3, align 8
  br label %36

36:                                               ; preds = %25, %22, %21
  %37 = phi i32 [ -5, %21 ], [ %23, %22 ], [ 0, %25 ]
  %38 = load ptr, ptr %5, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 64
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %42 = and i32 %41, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %42) #5, !srcloc !9
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_srab_read64(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 64
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %10 = or i32 %9, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %10) #5, !srcloc !9
  br label %11

11:                                               ; preds = %16, %4
  %12 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %17 = add nuw nsw i32 %12, 1
  %18 = icmp eq i32 %17, 20
  br i1 %18, label %22, label %11

19:                                               ; preds = %11
  %20 = icmp eq i32 %12, 5
  br i1 %20, label %21, label %22, !prof !17

21:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %35

22:                                               ; preds = %19, %16
  %23 = tail call fastcc i32 @b53_srab_op(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef 0)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = getelementptr i8, ptr %7, i32 60
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !25
  %28 = zext i32 %27 to i64
  store i64 %28, ptr %3, align 8
  %29 = getelementptr i8, ptr %7, i32 56
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %31 = zext i32 %30 to i64
  %32 = shl nuw i64 %31, 32
  %33 = load i64, ptr %3, align 8
  %34 = add i64 %33, %32
  store i64 %34, ptr %3, align 8
  br label %35

35:                                               ; preds = %25, %22, %21
  %36 = phi i32 [ -5, %21 ], [ %23, %22 ], [ 0, %25 ]
  %37 = load ptr, ptr %5, align 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 64
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %41 = and i32 %40, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %41) #5, !srcloc !9
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_srab_write8(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 64
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %10 = or i32 %9, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %10) #5, !srcloc !9
  br label %11

11:                                               ; preds = %16, %4
  %12 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %17 = add nuw nsw i32 %12, 1
  %18 = icmp eq i32 %17, 20
  br i1 %18, label %22, label %11

19:                                               ; preds = %11
  %20 = icmp eq i32 %12, 5
  br i1 %20, label %21, label %22, !prof !17

21:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %26

22:                                               ; preds = %19, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %23 = zext i8 %3 to i32
  %24 = getelementptr i8, ptr %7, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %23) #5, !srcloc !9
  %25 = tail call fastcc i32 @b53_srab_op(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef 2)
  br label %26

26:                                               ; preds = %22, %21
  %27 = phi i32 [ -5, %21 ], [ %25, %22 ]
  %28 = load ptr, ptr %5, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 64
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %32 = and i32 %31, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %32) #5, !srcloc !9
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_srab_write16(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 64
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %10 = or i32 %9, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %10) #5, !srcloc !9
  br label %11

11:                                               ; preds = %16, %4
  %12 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %17 = add nuw nsw i32 %12, 1
  %18 = icmp eq i32 %17, 20
  br i1 %18, label %22, label %11

19:                                               ; preds = %11
  %20 = icmp eq i32 %12, 5
  br i1 %20, label %21, label %22, !prof !17

21:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %26

22:                                               ; preds = %19, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %23 = zext i16 %3 to i32
  %24 = getelementptr i8, ptr %7, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %23) #5, !srcloc !9
  %25 = tail call fastcc i32 @b53_srab_op(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef 2)
  br label %26

26:                                               ; preds = %22, %21
  %27 = phi i32 [ -5, %21 ], [ %25, %22 ]
  %28 = load ptr, ptr %5, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 64
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %32 = and i32 %31, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %32) #5, !srcloc !9
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_srab_write32(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 64
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %10 = or i32 %9, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %10) #5, !srcloc !9
  br label %11

11:                                               ; preds = %16, %4
  %12 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %17 = add nuw nsw i32 %12, 1
  %18 = icmp eq i32 %17, 20
  br i1 %18, label %22, label %11

19:                                               ; preds = %11
  %20 = icmp eq i32 %12, 5
  br i1 %20, label %21, label %22, !prof !17

21:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %25

22:                                               ; preds = %19, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  %23 = getelementptr i8, ptr %7, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %3) #5, !srcloc !9
  %24 = tail call fastcc i32 @b53_srab_op(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef 2)
  br label %25

25:                                               ; preds = %22, %21
  %26 = phi i32 [ -5, %21 ], [ %24, %22 ]
  %27 = load ptr, ptr %5, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 64
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %31 = and i32 %30, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %31) #5, !srcloc !9
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_srab_write48(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i64 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 64
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %10 = or i32 %9, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %10) #5, !srcloc !9
  br label %11

11:                                               ; preds = %16, %4
  %12 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %17 = add nuw nsw i32 %12, 1
  %18 = icmp eq i32 %17, 20
  br i1 %18, label %22, label %11

19:                                               ; preds = %11
  %20 = icmp eq i32 %12, 5
  br i1 %20, label %21, label %22, !prof !17

21:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %30

22:                                               ; preds = %19, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %23 = trunc i64 %3 to i32
  %24 = getelementptr i8, ptr %7, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %23) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %25 = lshr i64 %3, 32
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 65535
  %28 = getelementptr i8, ptr %7, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %27) #5, !srcloc !9
  %29 = tail call fastcc i32 @b53_srab_op(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef 2)
  br label %30

30:                                               ; preds = %22, %21
  %31 = phi i32 [ -5, %21 ], [ %29, %22 ]
  %32 = load ptr, ptr %5, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 64
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %36 = and i32 %35, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %36) #5, !srcloc !9
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_srab_write64(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i64 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 64
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %10 = or i32 %9, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %10) #5, !srcloc !9
  br label %11

11:                                               ; preds = %16, %4
  %12 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %17 = add nuw nsw i32 %12, 1
  %18 = icmp eq i32 %17, 20
  br i1 %18, label %22, label %11

19:                                               ; preds = %11
  %20 = icmp eq i32 %12, 5
  br i1 %20, label %21, label %22, !prof !17

21:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %29

22:                                               ; preds = %19, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %23 = trunc i64 %3 to i32
  %24 = getelementptr i8, ptr %7, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %23) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %25 = lshr i64 %3, 32
  %26 = trunc i64 %25 to i32
  %27 = getelementptr i8, ptr %7, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %26) #5, !srcloc !9
  %28 = tail call fastcc i32 @b53_srab_op(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef 2)
  br label %29

29:                                               ; preds = %22, %21
  %30 = phi i32 [ -5, %21 ], [ %28, %22 ]
  %31 = load ptr, ptr %5, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 64
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %35 = and i32 %34, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %35) #5, !srcloc !9
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_srab_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.b53_srab_priv, ptr %4, i32 0, i32 2, i32 %1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, -6
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load ptr, ptr %10, align 4
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi ptr [ %15, %14 ], [ %12, %8 ]
  %18 = tail call i32 @request_threaded_irq(i32 noundef %6, ptr noundef nonnull @b53_srab_port_isr, ptr noundef nonnull @b53_srab_port_thread, i32 noundef 0, ptr noundef %17, ptr noundef %5) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr %struct.b53_srab_priv, ptr %4, i32 0, i32 2, i32 %1, i32 1
  store i8 1, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %16, %2
  %23 = phi i32 [ 0, %2 ], [ 0, %20 ], [ %18, %16 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @b53_srab_irq_disable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.b53_srab_priv, ptr %4, i32 0, i32 2, i32 %1, i32 1
  %6 = load i8, ptr %5, align 4, !range !34
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr %struct.b53_srab_priv, ptr %4, i32 0, i32 2, i32 %1
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @free_irq(i32 noundef %10, ptr noundef %9) #5
  store i8 0, ptr %5, align 4
  br label %12

12:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i8 @b53_srab_serdes_map_lane(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.b53_srab_priv, ptr %4, i32 0, i32 2, i32 %1, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 4
  %8 = icmp eq i32 %1, 4
  %9 = select i1 %8, i8 1, i8 -1
  %10 = icmp eq i32 %1, 5
  %11 = select i1 %10, i8 0, i8 %9
  %12 = select i1 %7, i8 %11, i8 -1
  ret i8 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_serdes_link_state(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b53_serdes_config(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b53_serdes_an_restart(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b53_serdes_link_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b53_serdes_phylink_validate(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @b53_srab_op(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = zext i8 %1 to i32
  %9 = shl nuw i32 %8, 24
  %10 = zext i8 %2 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = or i32 %11, %9
  %13 = or i32 %12, %3
  %14 = or i32 %13, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %15 = getelementptr i8, ptr %7, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #5, !srcloc !9
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !36
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %4
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !36
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %19
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !36
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !36
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !36
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 147, i32 noundef 9, ptr noundef null) #5
  br label %36

36:                                               ; preds = %35, %31, %27, %23, %19, %4
  %37 = phi i32 [ -5, %35 ], [ 0, %31 ], [ 0, %27 ], [ 0, %23 ], [ 0, %19 ], [ 0, %4 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_srab_port_isr(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.b53_srab_port_priv, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.b53_device, ptr %4, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %7 = getelementptr inbounds %struct.b53_srab_port_priv, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = shl nuw i32 1, %8
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr i8, ptr %10, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #5, !srcloc !9
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b53_srab_port_thread(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.b53_srab_port_priv, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.b53_srab_port_priv, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.b53_srab_port_priv, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  tail call void @b53_port_event(ptr noundef %9, i32 noundef %11) #5
  br label %12

12:                                               ; preds = %6, %2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b53_port_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_serdes_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_unregister_switch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_switch_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 2156550982}
!9 = !{i64 3479760}
!10 = !{i64 3480178}
!11 = !{i64 2156550302}
!12 = !{i64 2156550656}
!13 = !{i64 2156551683}
!14 = !{i64 2156539557}
!15 = !{i64 2156539825}
!16 = !{i64 2156540273}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2156543206}
!19 = !{i64 2156541178}
!20 = !{i64 2156541446}
!21 = !{i64 2156543527}
!22 = !{i64 2156543848}
!23 = !{i64 2156544169}
!24 = !{i64 2156544490}
!25 = !{i64 2156544811}
!26 = !{i64 2156545132}
!27 = !{i64 2156545318}
!28 = !{i64 2156545713}
!29 = !{i64 2156546108}
!30 = !{i64 2156546508}
!31 = !{i64 2156546844}
!32 = !{i64 2156547270}
!33 = !{i64 2156547606}
!34 = !{i8 0, i8 2}
!35 = !{i64 2156541849}
!36 = !{i64 2156542301}
!37 = !{i64 2156548146}
