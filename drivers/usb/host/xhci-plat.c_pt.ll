; ModuleID = '/llk/IR/drivers/usb/host/xhci-plat.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-plat.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xhci_driver_overrides = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xhci_plat_priv = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.usb_devmap = type { [4 x i32] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.xhci_hcd = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, i32, %struct.delayed_work, %struct.completion, ptr, ptr, %struct.xhci_erst, ptr, %struct.list_head, %struct.mutex, ptr, [256 x ptr], ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.s3_save, i64, i32, i32, ptr, %struct.xhci_hub, %struct.xhci_hub, i8, ptr, i32, ptr, i32, %struct.timer_list, i32, i16, ptr, ptr, %struct.list_head, ptr, [0 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xhci_erst = type { ptr, i32, i32, i32 }
%struct.s3_save = type { i32, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.xhci_hub = type { ptr, i32, ptr, %struct.xhci_bus_state, i8, i8 }
%struct.xhci_bus_state = type { i32, i32, i32, i32, i32, [31 x i32], i32, i32, [31 x %struct.completion], [31 x %struct.completion] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }

@__UNIQUE_ID_alias256 = internal constant [38 x i8] c"xhci_plat_hcd.alias=platform:xhci-hcd\00", section ".modinfo", align 1
@__initcall__kmod_xhci_plat_hcd__257_530_xhci_plat_init6 = internal global ptr @xhci_plat_init, section ".initcall6.init", align 4
@usb_xhci_driver = internal global %struct.platform_driver { ptr @xhci_plat_probe, ptr @xhci_plat_remove, ptr @usb_hcd_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @usb_xhci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xhci_plat_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_xhci_plat_exit = internal global ptr @xhci_plat_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description258 = internal constant [63 x i8] c"xhci_plat_hcd.description=xHCI Platform Host Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file259 = internal constant [50 x i8] c"xhci_plat_hcd.file=drivers/usb/host/xhci-plat-hcd\00", section ".modinfo", align 1
@__UNIQUE_ID_license260 = internal constant [26 x i8] c"xhci_plat_hcd.license=GPL\00", section ".modinfo", align 1
@xhci_plat_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@xhci_plat_overrides = internal constant %struct.xhci_driver_overrides { i32 40, ptr @xhci_plat_setup, ptr @xhci_plat_start, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@.str = private unnamed_addr constant [9 x i8] c"xhci-hcd\00", align 1
@usb_xhci_of_match = internal constant [15 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"generic-xhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xhci-platform\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-375-xhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xhci_plat_marvell_armada }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-380-xhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xhci_plat_marvell_armada }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada3700-xhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xhci_plat_marvell_armada3700 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,xhci-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xhci_plat_renesas_rcar_gen2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,xhci-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xhci_plat_renesas_rcar_gen2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,xhci-r8a7793\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xhci_plat_renesas_rcar_gen2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,xhci-r8a7795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xhci_plat_renesas_rcar_gen3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,xhci-r8a7796\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xhci_plat_renesas_rcar_gen3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-xhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xhci_plat_renesas_rcar_gen2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-xhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xhci_plat_renesas_rcar_gen3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,xhci-brcm-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xhci_plat_brcm }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7445-xhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xhci_plat_brcm }, %struct.of_device_id zeroinitializer], align 4
@xhci_plat_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @xhci_plat_suspend, ptr @xhci_plat_resume, ptr @xhci_plat_suspend, ptr @xhci_plat_resume, ptr @xhci_plat_suspend, ptr @xhci_plat_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xhci_plat_runtime_suspend, ptr @xhci_plat_runtime_resume, ptr null }, align 4
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"drivers/usb/host/xhci-plat.c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"usb2-lpm-disable\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"usb3-lpm-capable\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"quirk-broken-port-ped\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"imod-interval-ns\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"usb-phy\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@xhci_plat_marvell_armada = internal constant %struct.xhci_plat_priv { ptr null, i64 0, ptr null, ptr null, ptr @xhci_mvebu_mbus_init_quirk, ptr null, ptr null }, align 8
@xhci_plat_marvell_armada3700 = internal constant %struct.xhci_plat_priv { ptr null, i64 0, ptr @xhci_mvebu_a3700_plat_setup, ptr null, ptr @xhci_mvebu_a3700_init_quirk, ptr null, ptr null }, align 8
@xhci_plat_renesas_rcar_gen2 = internal constant %struct.xhci_plat_priv { ptr @.str.8, i64 8520704, ptr null, ptr @xhci_rcar_start, ptr @xhci_rcar_init_quirk, ptr null, ptr @xhci_rcar_resume_quirk }, align 8
@xhci_plat_renesas_rcar_gen3 = internal constant %struct.xhci_plat_priv { ptr @.str.9, i64 8520704, ptr null, ptr @xhci_rcar_start, ptr @xhci_rcar_init_quirk, ptr null, ptr @xhci_rcar_resume_quirk }, align 8
@xhci_plat_brcm = internal constant %struct.xhci_plat_priv { ptr null, i64 128, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.8 = private unnamed_addr constant [22 x i8] c"r8a779x_usb3_v1.dlmem\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"r8a779x_usb3_v3.dlmem\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias256, ptr @__UNIQUE_ID_description258, ptr @__UNIQUE_ID_file259, ptr @__UNIQUE_ID_license260, ptr @__exitcall_xhci_plat_exit, ptr @__initcall__kmod_xhci_plat_hcd__257_530_xhci_plat_init6, ptr @xhci_plat_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @xhci_plat_init() #0 section ".init.text" {
  tail call void @xhci_init_driver(ptr noundef nonnull @xhci_plat_hc_driver, ptr noundef nonnull @xhci_plat_overrides) #7
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @usb_xhci_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @xhci_plat_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @usb_xhci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_plat_setup(ptr noundef %0) #2 {
  %2 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ %0, %1 ]
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 11, i32 20, i32 3, i32 4
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = tail call i32 %10(ptr noundef %0) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %7
  %16 = tail call i32 @xhci_gen_setup(ptr noundef %0, ptr noundef nonnull @xhci_plat_quirks) #7
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i32 [ %16, %15 ], [ %13, %12 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_plat_start(ptr noundef %0) #2 {
  %2 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ %0, %1 ]
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 11, i32 20, i32 3, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void %10(ptr noundef %0) #7
  br label %13

13:                                               ; preds = %12, %7
  %14 = tail call i32 @xhci_run(ptr noundef %0) #7
  ret i32 %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_gen_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @xhci_plat_quirks(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #4 {
  %3 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 1, i32 2
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 51
  %6 = load i64, ptr %5, align 8
  %7 = or i64 %4, %6
  %8 = or i64 %7, 65536
  store i64 %8, ptr %5, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_run(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_plat_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = tail call i32 @usb_disabled() #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %296

5:                                                ; preds = %1
  %6 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %296, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %26, %8
  %12 = phi ptr [ %28, %26 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 26
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  %17 = or i1 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.fwnode_handle, ptr %14, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, @of_fwnode_ops
  br i1 %21, label %30, label %22

22:                                               ; preds = %18, %11
  %23 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, @pci_bus_type
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %11

30:                                               ; preds = %26, %22, %18, %8
  %31 = phi ptr [ null, %8 ], [ %12, %22 ], [ %12, %18 ], [ %9, %26 ]
  %32 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 16
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35, !prof !9

35:                                               ; preds = %30
  %36 = tail call i32 @dma_set_mask(ptr noundef %31, i64 noundef -1) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %41

38:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  %39 = tail call fastcc i32 @dma_coerce_mask_and_coherent(ptr noundef %31)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38, %35
  %42 = tail call i32 @dma_set_mask(ptr noundef %31, i64 noundef 4294967295) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %296

44:                                               ; preds = %41, %35
  %45 = phi i64 [ -1, %35 ], [ 4294967295, %41 ]
  %46 = tail call i32 @dma_set_coherent_mask(ptr noundef %31, i64 noundef %45) #7
  br label %47

47:                                               ; preds = %44, %38
  %48 = tail call i32 @__pm_runtime_set_status(ptr noundef %9, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %9) #7
  %49 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #7, !srcloc !10
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #7, !srcloc !11
  %51 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load ptr, ptr %9, align 4
  br label %56

56:                                               ; preds = %54, %47
  %57 = phi ptr [ %55, %54 ], [ %52, %47 ]
  %58 = tail call ptr @__usb_create_hcd(ptr noundef nonnull @xhci_plat_hc_driver, ptr noundef %31, ptr noundef %9, ptr noundef %57, ptr noundef null) #7
  %59 = icmp eq ptr %58, null
  br i1 %59, label %289, label %60

60:                                               ; preds = %56
  %61 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #7
  %62 = getelementptr inbounds %struct.usb_hcd, ptr %58, i32 0, i32 16
  store ptr %61, ptr %62, align 8
  %63 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = ptrtoint ptr %61 to i32
  br label %287

66:                                               ; preds = %60
  %67 = load ptr, ptr %2, align 4
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.usb_hcd, ptr %58, i32 0, i32 17
  store i32 %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.resource, ptr %67, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = load i32, ptr %67, align 4
  %73 = add i32 %71, 1
  %74 = sub i32 %73, %72
  %75 = getelementptr inbounds %struct.usb_hcd, ptr %58, i32 0, i32 18
  store i32 %74, ptr %75, align 8
  %76 = call i32 @usb_hcd_is_primary_hcd(ptr noundef nonnull %58) #7
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = getelementptr inbounds %struct.usb_hcd, ptr %58, i32 0, i32 25
  %80 = load ptr, ptr %79, align 4
  br label %81

81:                                               ; preds = %78, %66
  %82 = phi ptr [ %80, %78 ], [ %58, %66 ]
  %83 = getelementptr inbounds %struct.usb_hcd, ptr %82, i32 0, i32 29
  %84 = call ptr @devm_clk_get_optional(ptr noundef %9, ptr noundef nonnull @.str.2) #7
  %85 = getelementptr inbounds %struct.usb_hcd, ptr %82, i32 1, i32 1
  store ptr %84, ptr %85, align 8
  %86 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = ptrtoint ptr %84 to i32
  br label %287

89:                                               ; preds = %81
  %90 = call i32 @clk_prepare(ptr noundef %84) #7
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %287

92:                                               ; preds = %89
  %93 = call i32 @clk_enable(ptr noundef %84) #7
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  call void @clk_unprepare(ptr noundef %84) #7
  br label %287

96:                                               ; preds = %92
  %97 = call ptr @devm_clk_get_optional(ptr noundef %9, ptr noundef null) #7
  %98 = getelementptr inbounds %struct.usb_hcd, ptr %82, i32 1, i32 0, i32 16
  store ptr %97, ptr %98, align 4
  %99 = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = ptrtoint ptr %97 to i32
  br label %284

102:                                              ; preds = %96
  %103 = call fastcc i32 @clk_prepare_enable(ptr noundef %97)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %284

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %107 = load ptr, ptr %106, align 8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = call ptr @of_device_get_match_data(ptr noundef %9) #7
  br label %114

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %113 = load ptr, ptr %112, align 4
  br label %114

114:                                              ; preds = %111, %109
  %115 = phi ptr [ %110, %109 ], [ %113, %111 ]
  %116 = icmp eq ptr %115, null
  br i1 %116, label %126, label %117

117:                                              ; preds = %114
  %118 = call i32 @usb_hcd_is_primary_hcd(ptr noundef nonnull %58) #7
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.usb_hcd, ptr %58, i32 0, i32 25
  %122 = load ptr, ptr %121, align 4
  br label %123

123:                                              ; preds = %120, %117
  %124 = phi ptr [ %122, %120 ], [ %58, %117 ]
  %125 = getelementptr inbounds %struct.usb_hcd, ptr %124, i32 11, i32 20, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(40) %125, ptr noundef nonnull align 8 dereferenceable(40) %115, i32 40, i1 false)
  br label %126

126:                                              ; preds = %123, %114
  %127 = phi ptr [ %125, %123 ], [ null, %114 ]
  call void @device_set_wakeup_capable(ptr noundef %9, i1 noundef zeroext true) #7
  store ptr %58, ptr %83, align 8
  %128 = load ptr, ptr %51, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load ptr, ptr %9, align 4
  br label %132

132:                                              ; preds = %130, %126
  %133 = phi ptr [ %131, %130 ], [ %128, %126 ]
  %134 = call ptr @__usb_create_hcd(ptr noundef nonnull @xhci_plat_hc_driver, ptr noundef %31, ptr noundef %9, ptr noundef %133, ptr noundef nonnull %58) #7
  %135 = getelementptr inbounds %struct.usb_hcd, ptr %82, i32 1, i32 0, i32 1
  store ptr %134, ptr %135, align 4
  %136 = icmp eq ptr %134, null
  br i1 %136, label %281, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.usb_hcd, ptr %82, i32 1, i32 0, i32 10, i32 0, i32 3
  store i32 40000, ptr %138, align 4
  br i1 %10, label %162, label %139

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.usb_hcd, ptr %82, i32 4, i32 21, i32 3, i32 1
  br label %141

141:                                              ; preds = %157, %139
  %142 = phi ptr [ %9, %139 ], [ %160, %157 ]
  %143 = call zeroext i1 @device_property_present(ptr noundef nonnull %142, ptr noundef nonnull @.str.3) #7
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i64, ptr %140, align 8
  %146 = or i64 %145, 536870912
  store i64 %146, ptr %140, align 8
  br label %147

147:                                              ; preds = %144, %141
  %148 = call zeroext i1 @device_property_present(ptr noundef nonnull %142, ptr noundef nonnull @.str.4) #7
  br i1 %148, label %149, label %152

149:                                              ; preds = %147
  %150 = load i64, ptr %140, align 8
  %151 = or i64 %150, 2048
  store i64 %151, ptr %140, align 8
  br label %152

152:                                              ; preds = %149, %147
  %153 = call zeroext i1 @device_property_present(ptr noundef nonnull %142, ptr noundef nonnull @.str.5) #7
  br i1 %153, label %154, label %157

154:                                              ; preds = %152
  %155 = load i64, ptr %140, align 8
  %156 = or i64 %155, 33554432
  store i64 %156, ptr %140, align 8
  br label %157

157:                                              ; preds = %154, %152
  %158 = call i32 @device_property_read_u32_array(ptr noundef nonnull %142, ptr noundef nonnull @.str.6, ptr noundef %138, i32 noundef 1) #7
  %159 = getelementptr inbounds %struct.device, ptr %142, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %141

162:                                              ; preds = %157, %137
  %163 = call ptr @devm_usb_get_phy_by_phandle(ptr noundef %31, ptr noundef nonnull @.str.7, i8 noundef zeroext 0) #7
  %164 = getelementptr inbounds %struct.usb_hcd, ptr %58, i32 0, i32 10
  store ptr %163, ptr %164, align 8
  %165 = icmp ugt ptr %163, inttoptr (i32 -4096 to ptr)
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = icmp eq ptr %163, inttoptr (i32 -517 to ptr)
  br i1 %167, label %278, label %168

168:                                              ; preds = %166
  store ptr null, ptr %164, align 8
  br label %178

169:                                              ; preds = %162
  %170 = icmp eq ptr %163, null
  br i1 %170, label %178, label %171

171:                                              ; preds = %169
  %172 = getelementptr inbounds %struct.usb_phy, ptr %163, i32 0, i32 22
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %178, label %175

175:                                              ; preds = %171
  %176 = call i32 %173(ptr noundef nonnull %163) #7
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %278

178:                                              ; preds = %175, %171, %169, %168
  %179 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 25
  %180 = load ptr, ptr %179, align 8
  %181 = call zeroext i1 @of_usb_host_tpl_support(ptr noundef %180) #7
  %182 = getelementptr inbounds %struct.usb_hcd, ptr %58, i32 0, i32 14
  %183 = load i16, ptr %182, align 8
  %184 = select i1 %181, i16 1024, i16 0
  %185 = and i16 %183, -1025
  %186 = or i16 %185, %184
  store i16 %186, ptr %182, align 8
  %187 = load ptr, ptr %135, align 4
  %188 = getelementptr inbounds %struct.usb_hcd, ptr %187, i32 0, i32 14
  %189 = load i16, ptr %188, align 8
  %190 = and i16 %189, -1025
  %191 = or i16 %190, %184
  store i16 %191, ptr %188, align 8
  %192 = icmp eq ptr %127, null
  br i1 %192, label %212, label %193

193:                                              ; preds = %178
  %194 = call i32 @usb_hcd_is_primary_hcd(ptr noundef %58) #7
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.usb_hcd, ptr %58, i32 0, i32 25
  %198 = load ptr, ptr %197, align 4
  br label %199

199:                                              ; preds = %196, %193
  %200 = phi ptr [ %198, %196 ], [ %58, %193 ]
  %201 = getelementptr inbounds %struct.usb_hcd, ptr %200, i32 11, i32 20, i32 3, i32 2
  %202 = load ptr, ptr %201, align 8
  %203 = icmp eq ptr %202, null
  br i1 %203, label %207, label %204

204:                                              ; preds = %199
  %205 = call i32 %202(ptr noundef %58) #7
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %269

207:                                              ; preds = %204, %199
  %208 = getelementptr inbounds %struct.usb_hcd, ptr %82, i32 4, i32 21, i32 3, i32 1
  %209 = load i64, ptr %208, align 8
  %210 = and i64 %209, 137438953472
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %220, label %225

212:                                              ; preds = %178
  %213 = getelementptr inbounds %struct.usb_hcd, ptr %82, i32 4, i32 21, i32 3, i32 1
  %214 = load i64, ptr %213, align 8
  %215 = and i64 %214, 137438953472
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %236, label %217

217:                                              ; preds = %212
  %218 = load i16, ptr %182, align 8
  %219 = or i16 %218, 16
  store i16 %219, ptr %182, align 8
  br label %236

220:                                              ; preds = %207
  %221 = getelementptr inbounds %struct.xhci_plat_priv, ptr %127, i32 0, i32 1
  %222 = load i64, ptr %221, align 8
  %223 = and i64 %222, 137438953472
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %220, %207
  %226 = load i16, ptr %182, align 8
  %227 = or i16 %226, 16
  store i16 %227, ptr %182, align 8
  br label %228

228:                                              ; preds = %225, %220
  %229 = getelementptr inbounds %struct.xhci_plat_priv, ptr %127, i32 0, i32 1
  %230 = load i64, ptr %229, align 8
  %231 = and i64 %230, 549755813888
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %228
  %234 = load i64, ptr %208, align 8
  %235 = or i64 %234, 549755813888
  store i64 %235, ptr %208, align 8
  br label %236

236:                                              ; preds = %233, %228, %217, %212
  %237 = call i32 @usb_add_hcd(ptr noundef nonnull %58, i32 noundef %6, i32 noundef 128) #7
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %269

239:                                              ; preds = %236
  %240 = getelementptr inbounds %struct.usb_hcd, ptr %82, i32 1, i32 0, i32 9, i32 3
  %241 = load i32, ptr %240, align 8
  %242 = lshr i32 %241, 12
  %243 = and i32 %242, 15
  %244 = shl nuw nsw i32 2, %243
  %245 = icmp ugt i32 %244, 3
  br i1 %245, label %246, label %251

246:                                              ; preds = %239
  %247 = load ptr, ptr %135, align 4
  %248 = getelementptr inbounds %struct.usb_hcd, ptr %247, i32 0, i32 14
  %249 = load i16, ptr %248, align 8
  %250 = or i16 %249, 512
  store i16 %250, ptr %248, align 8
  br label %251

251:                                              ; preds = %246, %239
  %252 = load ptr, ptr %135, align 4
  %253 = call i32 @usb_add_hcd(ptr noundef %252, i32 noundef %6, i32 noundef 128) #7
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %268

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 1
  %257 = load i16, ptr %256, align 4
  %258 = and i16 %257, 8
  %259 = icmp eq i16 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %255
  %261 = or i16 %257, 2
  store i16 %261, ptr %256, align 4
  br label %262

262:                                              ; preds = %260, %255
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #7, !srcloc !10
  %263 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 0, i32 -1, ptr elementtype(i32) %49) #7, !srcloc !13
  %264 = extractvalue { i32, i32, i32 } %263, 0
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %267, label %266

266:                                              ; preds = %262
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  br label %267

267:                                              ; preds = %266, %262
  call void @pm_runtime_forbid(ptr noundef %9) #7
  br label %296

268:                                              ; preds = %251
  call void @usb_remove_hcd(ptr noundef nonnull %58) #7
  br label %269

269:                                              ; preds = %268, %236, %204
  %270 = phi i32 [ %205, %204 ], [ %237, %236 ], [ %253, %268 ]
  %271 = load ptr, ptr %164, align 8
  %272 = icmp eq ptr %271, null
  br i1 %272, label %278, label %273

273:                                              ; preds = %269
  %274 = getelementptr inbounds %struct.usb_phy, ptr %271, i32 0, i32 23
  %275 = load ptr, ptr %274, align 4
  %276 = icmp eq ptr %275, null
  br i1 %276, label %278, label %277

277:                                              ; preds = %273
  call void %275(ptr noundef nonnull %271) #7
  br label %278

278:                                              ; preds = %277, %273, %269, %175, %166
  %279 = phi i32 [ -517, %166 ], [ %176, %175 ], [ %270, %269 ], [ %270, %273 ], [ %270, %277 ]
  %280 = load ptr, ptr %135, align 4
  call void @usb_put_hcd(ptr noundef %280) #7
  br label %281

281:                                              ; preds = %278, %132
  %282 = phi i32 [ %279, %278 ], [ -12, %132 ]
  %283 = load ptr, ptr %98, align 4
  call void @clk_disable(ptr noundef %283) #7
  call void @clk_unprepare(ptr noundef %283) #7
  br label %284

284:                                              ; preds = %281, %102, %100
  %285 = phi i32 [ %101, %100 ], [ %103, %102 ], [ %282, %281 ]
  %286 = load ptr, ptr %85, align 8
  call void @clk_disable(ptr noundef %286) #7
  call void @clk_unprepare(ptr noundef %286) #7
  br label %287

287:                                              ; preds = %284, %95, %89, %87, %64
  %288 = phi i32 [ %65, %64 ], [ %88, %87 ], [ %285, %284 ], [ %93, %95 ], [ %90, %89 ]
  call void @usb_put_hcd(ptr noundef nonnull %58) #7
  br label %289

289:                                              ; preds = %287, %56
  %290 = phi i32 [ %288, %287 ], [ -12, %56 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #7, !srcloc !10
  %291 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 0, i32 -1, ptr elementtype(i32) %49) #7, !srcloc !13
  %292 = extractvalue { i32, i32, i32 } %291, 0
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %295, label %294

294:                                              ; preds = %289
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  br label %295

295:                                              ; preds = %294, %289
  call void @__pm_runtime_disable(ptr noundef %9, i1 noundef zeroext true) #7
  br label %296

296:                                              ; preds = %295, %267, %41, %5, %1
  %297 = phi i32 [ %290, %295 ], [ 0, %267 ], [ -19, %1 ], [ %6, %5 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %297
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_plat_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %3) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 25
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 1, i32 0, i32 16
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 1, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %18 = tail call i32 @__pm_runtime_resume(ptr noundef %17, i32 noundef 4) #7
  %19 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 4, i32 20, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, 4
  store i32 %21, ptr %19, align 4
  tail call void @usb_remove_hcd(ptr noundef %16) #7
  store ptr null, ptr %15, align 4
  %22 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 10
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.usb_phy, ptr %23, i32 0, i32 23
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void %27(ptr noundef nonnull %23) #7
  br label %30

30:                                               ; preds = %29, %25, %9
  tail call void @usb_remove_hcd(ptr noundef %3) #7
  tail call void @usb_put_hcd(ptr noundef %16) #7
  tail call void @clk_disable(ptr noundef %12) #7
  tail call void @clk_unprepare(ptr noundef %12) #7
  tail call void @clk_disable(ptr noundef %14) #7
  tail call void @clk_unprepare(ptr noundef %14) #7
  tail call void @usb_put_hcd(ptr noundef %3) #7
  tail call void @__pm_runtime_disable(ptr noundef %17, i1 noundef zeroext true) #7
  %31 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #7, !srcloc !10
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 0, i32 -1, ptr elementtype(i32) %31) #7, !srcloc !13
  %33 = extractvalue { i32, i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  br label %36

36:                                               ; preds = %35, %30
  %37 = tail call i32 @__pm_runtime_set_status(ptr noundef %17, i32 noundef 2) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_platform_shutdown(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dma_coerce_mask_and_coherent(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 17
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 16
  store ptr %2, ptr %3, align 4
  %4 = tail call i32 @dma_set_mask(ptr noundef %0, i64 noundef -1) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 @dma_set_coherent_mask(ptr noundef %0, i64 noundef -1) #7
  br label %8

8:                                                ; preds = %6, %1
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__usb_create_hcd(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #7
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy_by_phandle(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_usb_host_tpl_support(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_mvebu_mbus_init_quirk(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_mvebu_a3700_plat_setup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_mvebu_a3700_init_quirk(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_rcar_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_rcar_init_quirk(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_rcar_resume_quirk(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_plat_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %3) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 25
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 0, i32 29
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %17 = load i16, ptr %16, align 8
  %18 = and i16 %17, 7
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 0) #7
  br label %22

22:                                               ; preds = %20, %15, %9
  %23 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %3) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 25
  %27 = load ptr, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi ptr [ %27, %25 ], [ %3, %22 ]
  %30 = getelementptr inbounds %struct.usb_hcd, ptr %29, i32 11, i32 20, i32 3, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = tail call i32 %31(ptr noundef %3) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %33, %28
  %37 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %38 = load i16, ptr %37, align 4
  %39 = and i16 %38, 1
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %43 = load ptr, ptr %42, align 8
  %44 = icmp ne ptr %43, null
  br label %45

45:                                               ; preds = %41, %36
  %46 = phi i1 [ false, %36 ], [ %44, %41 ]
  %47 = tail call i32 @xhci_suspend(ptr noundef %11, i1 noundef zeroext %46) #7
  br label %48

48:                                               ; preds = %45, %33
  %49 = phi i32 [ %47, %45 ], [ %34, %33 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_plat_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %3) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 25
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 0, i32 29
  %12 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %3) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 25
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi ptr [ %16, %14 ], [ %3, %9 ]
  %19 = getelementptr inbounds %struct.usb_hcd, ptr %18, i32 11, i32 20, i32 4
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = tail call i32 %20(ptr noundef %3) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22, %17
  %26 = tail call i32 @xhci_resume(ptr noundef %11, i1 noundef zeroext false) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #7
  %29 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %0) #7
  br label %30

30:                                               ; preds = %28, %25, %22
  %31 = phi i32 [ 0, %28 ], [ %23, %22 ], [ %26, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_plat_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %3) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 25
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 0, i32 29
  %12 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %3) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 25
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi ptr [ %16, %14 ], [ %3, %9 ]
  %19 = getelementptr inbounds %struct.usb_hcd, ptr %18, i32 11, i32 20, i32 3, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = tail call i32 %20(ptr noundef %3) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %17
  %26 = tail call i32 @xhci_suspend(ptr noundef %11, i1 noundef zeroext true) #7
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi i32 [ %26, %25 ], [ %23, %22 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_plat_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %3) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 25
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 0, i32 29
  %12 = tail call i32 @xhci_resume(ptr noundef %11, i1 noundef zeroext false) #7
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 451423, i64 2147941394, i64 2147941420, i64 2147941467, i64 2147941489, i64 2147941517, i64 2147941537}
!11 = !{i64 2147953606, i64 2147953632, i64 2147953661, i64 2147953695, i64 2147953726, i64 2147953749}
!12 = !{i64 2147953113}
!13 = !{i64 437992, i64 438017, i64 438039, i64 438055, i64 438067, i64 438087, i64 438111, i64 438127, i64 438139}
!14 = !{i64 2147953239}
