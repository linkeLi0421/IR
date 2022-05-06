; ModuleID = '/llk/IR/drivers/phy/tegra/xusb.c_pt.bc'
source_filename = "../drivers/phy/tegra/xusb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_xusb_padctl_get:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_xusb_padctl_get\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_xusb_padctl_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_xusb_padctl_put:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_xusb_padctl_put\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_xusb_padctl_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_xusb_padctl_usb3_save_context:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_xusb_padctl_usb3_save_context\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_xusb_padctl_usb3_save_context:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_xusb_padctl_hsic_set_idle:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_xusb_padctl_hsic_set_idle\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_xusb_padctl_hsic_set_idle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_xusb_padctl_enable_phy_sleepwalk:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_xusb_padctl_enable_phy_sleepwalk\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_xusb_padctl_enable_phy_sleepwalk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_xusb_padctl_disable_phy_sleepwalk:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_xusb_padctl_disable_phy_sleepwalk\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_xusb_padctl_disable_phy_sleepwalk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_xusb_padctl_enable_phy_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_xusb_padctl_enable_phy_wake\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_xusb_padctl_enable_phy_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_xusb_padctl_disable_phy_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_xusb_padctl_disable_phy_wake\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_xusb_padctl_disable_phy_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_xusb_padctl_remote_wake_detected:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_xusb_padctl_remote_wake_detected\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_xusb_padctl_remote_wake_detected:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_xusb_padctl_usb3_set_lfps_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_xusb_padctl_usb3_set_lfps_detect\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_xusb_padctl_usb3_set_lfps_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_xusb_padctl_set_vbus_override:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_xusb_padctl_set_vbus_override\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_xusb_padctl_set_vbus_override:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_phy_xusb_utmi_port_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_phy_xusb_utmi_port_reset\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_phy_xusb_utmi_port_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_xusb_padctl_get_usb3_companion:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_xusb_padctl_get_usb3_companion\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_xusb_padctl_get_usb3_companion:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.tegra_xusb_padctl_soc = type { ptr, i32, %struct.anon.66, ptr, ptr, i32, i8, i8 }
%struct.anon.66 = type { %struct.anon.67, %struct.anon.67, %struct.anon.67, %struct.anon.67 }
%struct.anon.67 = type { ptr, i32 }
%struct.tegra_xusb_lane = type { ptr, ptr, ptr, %struct.list_head, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.tegra_xusb_pad = type { ptr, ptr, ptr, ptr, %struct.device, ptr, %struct.list_head }
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
%struct.tegra_xusb_lane_soc = type { ptr, i32, i32, i32, ptr, i32, %struct.anon }
%struct.anon = type { i32 }
%struct.tegra_xusb_pad_soc = type { ptr, ptr, i32, ptr }
%struct.tegra_xusb_padctl = type { ptr, ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, ptr }
%struct.tegra_xusb_lane_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.tegra_xusb_lane_map = type { i32, ptr, i32, ptr }
%struct.tegra_xusb_port = type { ptr, ptr, i32, %struct.list_head, %struct.device, ptr, %struct.work_struct, %struct.usb_phy, ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.tegra_xusb_usb2_port = type { %struct.tegra_xusb_port, ptr, i32, i8, i32 }
%struct.tegra_xusb_usb3_port = type { %struct.tegra_xusb_port, ptr, i8, i32, i8, i8, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_xusb_padctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_xusb_pad_ops = type { ptr, ptr }
%struct.usb_role_switch_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.tegra_xusb_port_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_xusb_ulpi_port = type { %struct.tegra_xusb_port, ptr, i8 }

@.str = private unnamed_addr constant [16 x i8] c"nvidia,function\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"invalid function \22%s\22 for lane \22%pOFn\22\0A\00", align 1
@tegra_xusb_pad_type = internal constant %struct.device_type { ptr null, ptr null, ptr null, ptr null, ptr @tegra_xusb_pad_release, ptr null }, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"lanes\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s-%u\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"conflicting match: %s-%u / %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"usb2\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"usb3\00", align 1
@__initcall__kmod_phy_tegra_xusb__252_1310_tegra_xusb_padctl_driver_init6 = internal global ptr @tegra_xusb_padctl_driver_init, section ".initcall6.init", align 4
@tegra_xusb_padctl_driver = internal global %struct.platform_driver { ptr @tegra_xusb_padctl_probe, ptr @tegra_xusb_padctl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.10, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_xusb_padctl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_xusb_padctl_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tegra_xusb_padctl_driver_exit = internal global ptr @tegra_xusb_padctl_driver_exit, section ".exitcall.exit", align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"nvidia,xusb-padctl\00", align 1
@__kstrtab_tegra_xusb_padctl_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_xusb_padctl_get = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_xusb_padctl_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_xusb_padctl_get to i32), ptr @__kstrtab_tegra_xusb_padctl_get, ptr @__kstrtabns_tegra_xusb_padctl_get }, section "___ksymtab_gpl+tegra_xusb_padctl_get", align 4
@__kstrtab_tegra_xusb_padctl_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_xusb_padctl_put = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_xusb_padctl_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_xusb_padctl_put to i32), ptr @__kstrtab_tegra_xusb_padctl_put, ptr @__kstrtabns_tegra_xusb_padctl_put }, section "___ksymtab_gpl+tegra_xusb_padctl_put", align 4
@__kstrtab_tegra_xusb_padctl_usb3_save_context = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_xusb_padctl_usb3_save_context = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_xusb_padctl_usb3_save_context = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_xusb_padctl_usb3_save_context to i32), ptr @__kstrtab_tegra_xusb_padctl_usb3_save_context, ptr @__kstrtabns_tegra_xusb_padctl_usb3_save_context }, section "___ksymtab_gpl+tegra_xusb_padctl_usb3_save_context", align 4
@__kstrtab_tegra_xusb_padctl_hsic_set_idle = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_xusb_padctl_hsic_set_idle = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_xusb_padctl_hsic_set_idle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_xusb_padctl_hsic_set_idle to i32), ptr @__kstrtab_tegra_xusb_padctl_hsic_set_idle, ptr @__kstrtabns_tegra_xusb_padctl_hsic_set_idle }, section "___ksymtab_gpl+tegra_xusb_padctl_hsic_set_idle", align 4
@__kstrtab_tegra_xusb_padctl_enable_phy_sleepwalk = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_xusb_padctl_enable_phy_sleepwalk = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_xusb_padctl_enable_phy_sleepwalk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_xusb_padctl_enable_phy_sleepwalk to i32), ptr @__kstrtab_tegra_xusb_padctl_enable_phy_sleepwalk, ptr @__kstrtabns_tegra_xusb_padctl_enable_phy_sleepwalk }, section "___ksymtab_gpl+tegra_xusb_padctl_enable_phy_sleepwalk", align 4
@__kstrtab_tegra_xusb_padctl_disable_phy_sleepwalk = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_xusb_padctl_disable_phy_sleepwalk = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_xusb_padctl_disable_phy_sleepwalk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_xusb_padctl_disable_phy_sleepwalk to i32), ptr @__kstrtab_tegra_xusb_padctl_disable_phy_sleepwalk, ptr @__kstrtabns_tegra_xusb_padctl_disable_phy_sleepwalk }, section "___ksymtab_gpl+tegra_xusb_padctl_disable_phy_sleepwalk", align 4
@__kstrtab_tegra_xusb_padctl_enable_phy_wake = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_xusb_padctl_enable_phy_wake = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_xusb_padctl_enable_phy_wake = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_xusb_padctl_enable_phy_wake to i32), ptr @__kstrtab_tegra_xusb_padctl_enable_phy_wake, ptr @__kstrtabns_tegra_xusb_padctl_enable_phy_wake }, section "___ksymtab_gpl+tegra_xusb_padctl_enable_phy_wake", align 4
@__kstrtab_tegra_xusb_padctl_disable_phy_wake = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_xusb_padctl_disable_phy_wake = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_xusb_padctl_disable_phy_wake = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_xusb_padctl_disable_phy_wake to i32), ptr @__kstrtab_tegra_xusb_padctl_disable_phy_wake, ptr @__kstrtabns_tegra_xusb_padctl_disable_phy_wake }, section "___ksymtab_gpl+tegra_xusb_padctl_disable_phy_wake", align 4
@__kstrtab_tegra_xusb_padctl_remote_wake_detected = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_xusb_padctl_remote_wake_detected = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_xusb_padctl_remote_wake_detected = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_xusb_padctl_remote_wake_detected to i32), ptr @__kstrtab_tegra_xusb_padctl_remote_wake_detected, ptr @__kstrtabns_tegra_xusb_padctl_remote_wake_detected }, section "___ksymtab_gpl+tegra_xusb_padctl_remote_wake_detected", align 4
@__kstrtab_tegra_xusb_padctl_usb3_set_lfps_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_xusb_padctl_usb3_set_lfps_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_xusb_padctl_usb3_set_lfps_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_xusb_padctl_usb3_set_lfps_detect to i32), ptr @__kstrtab_tegra_xusb_padctl_usb3_set_lfps_detect, ptr @__kstrtabns_tegra_xusb_padctl_usb3_set_lfps_detect }, section "___ksymtab_gpl+tegra_xusb_padctl_usb3_set_lfps_detect", align 4
@__kstrtab_tegra_xusb_padctl_set_vbus_override = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_xusb_padctl_set_vbus_override = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_xusb_padctl_set_vbus_override = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_xusb_padctl_set_vbus_override to i32), ptr @__kstrtab_tegra_xusb_padctl_set_vbus_override, ptr @__kstrtabns_tegra_xusb_padctl_set_vbus_override }, section "___ksymtab_gpl+tegra_xusb_padctl_set_vbus_override", align 4
@__kstrtab_tegra_phy_xusb_utmi_port_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_phy_xusb_utmi_port_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_phy_xusb_utmi_port_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_phy_xusb_utmi_port_reset to i32), ptr @__kstrtab_tegra_phy_xusb_utmi_port_reset, ptr @__kstrtabns_tegra_phy_xusb_utmi_port_reset }, section "___ksymtab_gpl+tegra_phy_xusb_utmi_port_reset", align 4
@__kstrtab_tegra_xusb_padctl_get_usb3_companion = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_xusb_padctl_get_usb3_companion = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_xusb_padctl_get_usb3_companion = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_xusb_padctl_get_usb3_companion to i32), ptr @__kstrtab_tegra_xusb_padctl_get_usb3_companion, ptr @__kstrtabns_tegra_xusb_padctl_get_usb3_companion }, section "___ksymtab_gpl+tegra_xusb_padctl_get_usb3_companion", align 4
@__UNIQUE_ID_author253 = internal constant [58 x i8] c"phy_tegra_xusb.author=Thierry Reding <treding@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [60 x i8] c"phy_tegra_xusb.description=Tegra XUSB Pad Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [53 x i8] c"phy_tegra_xusb.file=drivers/phy/tegra/phy-tegra-xusb\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [30 x i8] c"phy_tegra_xusb.license=GPL v2\00", section ".modinfo", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"tegra-xusb-padctl\00", align 1
@tegra_xusb_padctl_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-xusb-padctl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_xusb_padctl_soc }, %struct.of_device_id zeroinitializer], align 4
@tegra_xusb_padctl_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_xusb_padctl_suspend_noirq, ptr @tegra_xusb_padctl_resume_noirq, ptr @tegra_xusb_padctl_suspend_noirq, ptr @tegra_xusb_padctl_resume_noirq, ptr @tegra_xusb_padctl_suspend_noirq, ptr @tegra_xusb_padctl_resume_noirq, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"pads\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"deprecated DT, using legacy driver\0A\00", align 1
@tegra_xusb_padctl_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"&padctl->lock\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"failed to get regulators\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"failed to enable supplies: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"failed to setup pads: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"failed to setup XUSB ports: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"failed to create pad %s: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"ulpi\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"hsic\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"failed to enable port %s: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@tegra_xusb_port_type = internal constant %struct.device_type { ptr null, ptr null, ptr null, ptr null, ptr @tegra_xusb_port_release, ptr null }, align 4
@.str.26 = private unnamed_addr constant [16 x i8] c"nvidia,internal\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@modes = internal constant [4 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], align 4
@.str.28 = private unnamed_addr constant [29 x i8] c"invalid value %s for \22mode\22\0A\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"usb-role-switch\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"usb-role-switch not found for %s mode\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"peripheral\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"otg\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"failed to register USB role switch: %d\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"Failed to add USB PHY: %d\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.38 = private unnamed_addr constant [22 x i8] c"nvidia,usb2-companion\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"failed to read port: %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"maximum-speed\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"no unused USB3 ports available\0A\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"failed to disable supplies: %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"failed to assert reset: %d\0A\00", align 1
@tegra124_xusb_padctl_soc = external dso_local constant %struct.tegra_xusb_padctl_soc, align 4
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__exitcall_tegra_xusb_padctl_driver_exit, ptr @__initcall__kmod_phy_tegra_xusb__252_1310_tegra_xusb_padctl_driver_init6, ptr @__ksymtab_tegra_phy_xusb_utmi_port_reset, ptr @__ksymtab_tegra_xusb_padctl_disable_phy_sleepwalk, ptr @__ksymtab_tegra_xusb_padctl_disable_phy_wake, ptr @__ksymtab_tegra_xusb_padctl_enable_phy_sleepwalk, ptr @__ksymtab_tegra_xusb_padctl_enable_phy_wake, ptr @__ksymtab_tegra_xusb_padctl_get, ptr @__ksymtab_tegra_xusb_padctl_get_usb3_companion, ptr @__ksymtab_tegra_xusb_padctl_hsic_set_idle, ptr @__ksymtab_tegra_xusb_padctl_put, ptr @__ksymtab_tegra_xusb_padctl_remote_wake_detected, ptr @__ksymtab_tegra_xusb_padctl_set_vbus_override, ptr @__ksymtab_tegra_xusb_padctl_usb3_save_context, ptr @__ksymtab_tegra_xusb_padctl_usb3_set_lfps_detect, ptr @tegra_xusb_padctl_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_xusb_lane_parse_dt(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store ptr null, ptr %3, align 4, !annotation !8
  %7 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %3) #11
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.tegra_xusb_lane_soc, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tegra_xusb_lane_soc, ptr %10, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr %3, align 4
  %16 = call i32 @match_string(ptr noundef %12, i32 noundef %14, ptr noundef %15) #11
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef %19, ptr noundef %1) #12
  br label %22

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %0, i32 0, i32 4
  store i32 %16, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %18, %2
  %23 = phi i32 [ %16, %18 ], [ 0, %20 ], [ %7, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %23
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_xusb_pad_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %0, i32 0, i32 4
  tail call void @device_initialize(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %0, i32 0, i32 6
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %0, i32 0, i32 6, i32 1
  store ptr %5, ptr %6, align 4
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %0, i32 0, i32 4, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %0, i32 0, i32 4, i32 4
  store ptr @tegra_xusb_pad_type, ptr %9, align 8
  %10 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %0, i32 0, i32 4, i32 25
  store ptr %2, ptr %10, align 8
  %11 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %0, i32 0, i32 1
  store ptr %1, ptr %11, align 4
  %12 = load ptr, ptr %0, align 8
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef %13) #11
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = tail call i32 @device_add(ptr noundef %4) #11
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %3
  %20 = phi i32 [ %14, %3 ], [ %17, %16 ]
  tail call void @device_unregister(ptr noundef %4) #11
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i32 [ %20, %19 ], [ 0, %16 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_xusb_pad_register(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %0, i32 0, i32 4, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_get_child_by_name(ptr noundef %5, ptr noundef nonnull @.str.3) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %111, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.tegra_xusb_pad_soc, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 4) #11
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %14, label %16, !prof !9

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %0, i32 0, i32 3
  store ptr null, ptr %15, align 4
  br label %109

16:                                               ; preds = %8
  %17 = extractvalue { i32, i1 } %12, 0
  %18 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %17, i32 noundef 3520) #11
  %19 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %0, i32 0, i32 3
  store ptr %18, ptr %19, align 4
  %20 = icmp eq ptr %18, null
  br i1 %20, label %109, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr inbounds %struct.tegra_xusb_pad_soc, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %81, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %0, i32 0, i32 5
  %28 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %0, i32 0, i32 1
  br label %29

29:                                               ; preds = %75, %26
  %30 = phi i32 [ 0, %26 ], [ %76, %75 ]
  %31 = load ptr, ptr %4, align 8
  %32 = tail call ptr @of_get_child_by_name(ptr noundef %31, ptr noundef nonnull @.str.3) #11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %0, align 8
  %36 = getelementptr inbounds %struct.tegra_xusb_pad_soc, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr %struct.tegra_xusb_lane_soc, ptr %37, i32 %30
  %39 = load ptr, ptr %38, align 4
  %40 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %32, ptr noundef %39) #11
  tail call void @of_node_put(ptr noundef nonnull %32) #11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %34
  %43 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %40) #11
  br i1 %43, label %46, label %44

44:                                               ; preds = %42, %34, %29
  %45 = phi ptr [ %40, %42 ], [ null, %34 ], [ null, %29 ]
  tail call void @of_node_put(ptr noundef %45) #11
  br label %75

46:                                               ; preds = %42
  %47 = tail call ptr @phy_create(ptr noundef %3, ptr noundef nonnull %40, ptr noundef %1) #11
  %48 = load ptr, ptr %19, align 4
  %49 = getelementptr ptr, ptr %48, i32 %30
  store ptr %47, ptr %49, align 4
  %50 = load ptr, ptr %19, align 4
  %51 = getelementptr ptr, ptr %50, i32 %30
  %52 = load ptr, ptr %51, align 4
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  tail call void @of_node_put(ptr noundef nonnull %40) #11
  br label %86

55:                                               ; preds = %46
  %56 = load ptr, ptr %27, align 8
  %57 = load ptr, ptr %56, align 4
  %58 = tail call ptr %57(ptr noundef %0, ptr noundef nonnull %40, i32 noundef %30) #11
  %59 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load ptr, ptr %19, align 4
  %62 = getelementptr ptr, ptr %61, i32 %30
  %63 = load ptr, ptr %62, align 4
  tail call void @phy_destroy(ptr noundef %63) #11
  br label %86

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %58, i32 0, i32 3
  %66 = load ptr, ptr %28, align 4
  %67 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %66, i32 0, i32 11
  %68 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %66, i32 0, i32 11, i32 1
  %69 = load ptr, ptr %68, align 4
  store ptr %65, ptr %68, align 4
  store ptr %67, ptr %65, align 4
  %70 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %58, i32 0, i32 3, i32 1
  store ptr %69, ptr %70, align 4
  store volatile ptr %65, ptr %69, align 4
  %71 = load ptr, ptr %19, align 4
  %72 = getelementptr ptr, ptr %71, i32 %30
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.device, ptr %73, i32 0, i32 8
  store ptr %58, ptr %74, align 8
  br label %75

75:                                               ; preds = %64, %44
  %76 = add nuw i32 %30, 1
  %77 = load ptr, ptr %0, align 8
  %78 = getelementptr inbounds %struct.tegra_xusb_pad_soc, ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = icmp ult i32 %76, %79
  br i1 %80, label %29, label %81

81:                                               ; preds = %75, %21
  %82 = phi i32 [ 0, %21 ], [ %76, %75 ]
  %83 = tail call ptr @__of_phy_provider_register(ptr noundef %3, ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull @tegra_xusb_pad_of_xlate) #11
  %84 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %0, i32 0, i32 2
  store ptr %83, ptr %84, align 8
  %85 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %85, label %86, label %111

86:                                               ; preds = %81, %60, %54
  %87 = phi i32 [ %30, %54 ], [ %30, %60 ], [ %82, %81 ]
  %88 = phi ptr [ %52, %54 ], [ %58, %60 ], [ %83, %81 ]
  %89 = ptrtoint ptr %88 to i32
  %90 = icmp eq i32 %87, 0
  br i1 %90, label %109, label %91

91:                                               ; preds = %107, %86
  %92 = phi i32 [ %93, %107 ], [ %87, %86 ]
  %93 = add i32 %92, -1
  %94 = load ptr, ptr %19, align 4
  %95 = getelementptr ptr, ptr %94, i32 %93
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %107, label %98

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.device, ptr %96, i32 0, i32 8
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %100, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %102, i32 0, i32 5
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr inbounds %struct.tegra_xusb_lane_ops, ptr %104, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  tail call void %106(ptr noundef %100) #11
  tail call void @phy_destroy(ptr noundef nonnull %96) #11
  br label %107

107:                                              ; preds = %98, %91
  %108 = icmp eq i32 %93, 0
  br i1 %108, label %109, label %91

109:                                              ; preds = %107, %86, %16, %14
  %110 = phi i32 [ -12, %14 ], [ -12, %16 ], [ %89, %86 ], [ %89, %107 ]
  tail call void @of_node_put(ptr noundef nonnull %6) #11
  br label %111

111:                                              ; preds = %109, %81, %2
  %112 = phi i32 [ -19, %2 ], [ 0, %81 ], [ %110, %109 ]
  ret i32 %112
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal ptr @tegra_xusb_pad_of_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.tegra_xusb_pad_soc, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %4, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %26, %13
  %17 = phi i32 [ 0, %13 ], [ %27, %26 ]
  %18 = getelementptr ptr, ptr %15, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 25
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %1, align 4
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %21, %16
  %27 = add nuw i32 %17, 1
  %28 = icmp eq i32 %27, %11
  br i1 %28, label %29, label %16

29:                                               ; preds = %26, %21, %8, %2
  %30 = phi ptr [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -19 to ptr), %8 ], [ %19, %21 ], [ inttoptr (i32 -19 to ptr), %26 ]
  ret ptr %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_xusb_pad_unregister(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.tegra_xusb_pad_soc, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  tail call void @of_phy_provider_unregister(ptr noundef %6) #11
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %0, i32 0, i32 3
  br label %10

10:                                               ; preds = %26, %8
  %11 = phi i32 [ %4, %8 ], [ %12, %26 ]
  %12 = add i32 %11, -1
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr ptr, ptr %13, i32 %12
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.tegra_xusb_lane_ops, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %19) #11
  tail call void @phy_destroy(ptr noundef nonnull %15) #11
  br label %26

26:                                               ; preds = %17, %10
  %27 = icmp eq i32 %12, 0
  br i1 %27, label %28, label %10

28:                                               ; preds = %26, %1
  %29 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %0, i32 0, i32 4
  tail call void @device_unregister(ptr noundef %29) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_phy_provider_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tegra_xusb_lane_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.tegra_xusb_lane_soc, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr ptr, ptr %5, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @strcmp(ptr noundef %1, ptr noundef %9)
  %11 = icmp eq i32 %10, 0
  ret i1 %11
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_xusb_find_lane(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, ptr noundef %1, i32 noundef %2) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %0, i32 0, i32 11
  br label %8

8:                                                ; preds = %12, %6
  %9 = phi ptr [ %7, %6 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %10, i32 -12
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull %4)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %8

18:                                               ; preds = %12
  %19 = getelementptr i8, ptr %10, i32 -12
  br label %20

20:                                               ; preds = %18, %8
  %21 = phi ptr [ %19, %18 ], [ inttoptr (i32 -19 to ptr), %8 ]
  tail call void @kfree(ptr noundef nonnull %4) #11
  br label %22

22:                                               ; preds = %20, %3
  %23 = phi ptr [ %21, %20 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_xusb_port_find_lane(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tegra_xusb_lane_map, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %63, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tegra_xusb_port, ptr %0, i32 0, i32 2
  %9 = getelementptr inbounds %struct.tegra_xusb_port, ptr %0, i32 0, i32 4
  br label %10

10:                                               ; preds = %57, %7
  %11 = phi ptr [ %5, %7 ], [ %61, %57 ]
  %12 = phi ptr [ %4, %7 ], [ %60, %57 ]
  %13 = phi ptr [ inttoptr (i32 -19 to ptr), %7 ], [ %58, %57 ]
  %14 = phi ptr [ %1, %7 ], [ %59, %57 ]
  %15 = load i32, ptr %8, align 8
  %16 = load i32, ptr %14, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %57

18:                                               ; preds = %10
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr inbounds %struct.tegra_xusb_lane_map, ptr %14, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, ptr noundef nonnull %11, i32 noundef %21) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %57, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %19, i32 0, i32 11
  br label %26

26:                                               ; preds = %31, %24
  %27 = phi ptr [ %25, %24 ], [ %28, %31 ]
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %25
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void @kfree(ptr noundef nonnull %22) #11
  br label %57

31:                                               ; preds = %26
  %32 = getelementptr i8, ptr %28, i32 -12
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @strcmp(ptr noundef %34, ptr noundef nonnull %22) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %26

37:                                               ; preds = %31
  %38 = getelementptr i8, ptr %28, i32 -12
  tail call void @kfree(ptr noundef nonnull %22) #11
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %57, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %38, align 4
  %42 = getelementptr inbounds %struct.tegra_xusb_lane_soc, ptr %41, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %28, i32 8
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr ptr, ptr %43, i32 %45
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @strcmp(ptr noundef %2, ptr noundef %47) #11
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %40
  %51 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %57, label %52

52:                                               ; preds = %50
  %53 = load ptr, ptr %12, align 4
  %54 = load i32, ptr %20, align 4
  %55 = load ptr, ptr %13, align 4
  %56 = load ptr, ptr %55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.5, ptr noundef %53, i32 noundef %54, ptr noundef %56) #12
  br label %57

57:                                               ; preds = %52, %50, %40, %37, %30, %18, %10
  %58 = phi ptr [ %13, %10 ], [ %13, %37 ], [ %13, %52 ], [ %13, %40 ], [ %38, %50 ], [ %13, %30 ], [ %13, %18 ]
  %59 = getelementptr %struct.tegra_xusb_lane_map, ptr %14, i32 1
  %60 = getelementptr %struct.tegra_xusb_lane_map, ptr %14, i32 1, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %10

63:                                               ; preds = %57, %3
  %64 = phi ptr [ inttoptr (i32 -19 to ptr), %3 ], [ %58, %57 ]
  ret ptr %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_xusb_find_port(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @of_get_child_by_name(ptr noundef %6, ptr noundef nonnull @.str.9) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %3
  %10 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, ptr noundef %1, i32 noundef %2) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %7, ptr noundef nonnull %10) #11
  tail call void @kfree(ptr noundef nonnull %10) #11
  tail call void @of_node_put(ptr noundef nonnull %7) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %0, i32 0, i32 10
  br label %17

17:                                               ; preds = %21, %15
  %18 = phi ptr [ %16, %15 ], [ %19, %21 ]
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %16
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %19, i32 428
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %13, %23
  br i1 %24, label %25, label %17

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %19, i32 -12
  br label %27

27:                                               ; preds = %25, %17, %9
  %28 = phi ptr [ %13, %25 ], [ %7, %9 ], [ %13, %17 ]
  %29 = phi ptr [ %26, %25 ], [ null, %9 ], [ null, %17 ]
  tail call void @of_node_put(ptr noundef nonnull %28) #11
  br label %30

30:                                               ; preds = %27, %12, %3
  %31 = phi ptr [ null, %12 ], [ null, %3 ], [ %29, %27 ]
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_xusb_find_usb2_port(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @tegra_xusb_find_port(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %1)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_xusb_find_usb3_port(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @tegra_xusb_find_port(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %1)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_xusb_usb2_port_release(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_xusb_usb2_port_remove(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_xusb_usb2_port, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  tail call void @regulator_put(ptr noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_xusb_ulpi_port_release(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_xusb_hsic_port_release(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_xusb_usb3_port_release(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_xusb_usb3_port_remove(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  tail call void @regulator_put(ptr noundef %3) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_xusb_padctl_driver_init() #7 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_xusb_padctl_driver, ptr noundef null) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra_xusb_padctl_driver_exit() #7 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_xusb_padctl_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_xusb_padctl_get(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #11, !annotation !8
  %5 = call i32 @__of_parse_phandle_with_args(ptr noundef %4, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #11
  %6 = icmp ne i32 %5, 0
  %7 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #11
  %8 = icmp eq ptr %7, null
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = call ptr @of_find_device_by_node(ptr noundef nonnull %7) #11
  %12 = icmp eq ptr %11, null
  call void @of_node_put(ptr noundef nonnull %7) #11
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 8
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  call void @put_device(ptr noundef %18) #11
  br label %19

19:                                               ; preds = %17, %13, %10, %1
  %20 = phi ptr [ inttoptr (i32 -517 to ptr), %17 ], [ %15, %13 ], [ inttoptr (i32 -22 to ptr), %1 ], [ inttoptr (i32 -19 to ptr), %10 ]
  ret ptr %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_xusb_padctl_put(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  tail call void @put_device(ptr noundef %4) #11
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_xusb_padctl_usb3_save_context(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_xusb_padctl_ops, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 %8(ptr noundef %0, i32 noundef %1) #11
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ %11, %10 ], [ -38, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_xusb_padctl_hsic_set_idle(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_xusb_padctl_ops, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call i32 %9(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #11
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi i32 [ %12, %11 ], [ -38, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_xusb_padctl_enable_phy_sleepwalk(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.tegra_xusb_lane_ops, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = tail call i32 %11(ptr noundef %5, i32 noundef %2) #11
  br label %15

15:                                               ; preds = %13, %3
  %16 = phi i32 [ %14, %13 ], [ -95, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_xusb_padctl_disable_phy_sleepwalk(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.tegra_xusb_lane_ops, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call i32 %10(ptr noundef %4) #11
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi i32 [ %13, %12 ], [ -95, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_xusb_padctl_enable_phy_wake(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.tegra_xusb_lane_ops, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call i32 %10(ptr noundef %4) #11
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi i32 [ %13, %12 ], [ -95, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_xusb_padctl_disable_phy_wake(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.tegra_xusb_lane_ops, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call i32 %10(ptr noundef %4) #11
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi i32 [ %13, %12 ], [ -95, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @tegra_xusb_padctl_remote_wake_detected(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.tegra_xusb_lane_ops, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call zeroext i1 %10(ptr noundef %4) #11
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi i1 [ %13, %12 ], [ false, %2 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_xusb_padctl_usb3_set_lfps_detect(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_xusb_padctl_ops, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call i32 %9(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #11
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi i32 [ %12, %11 ], [ -38, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_xusb_padctl_set_vbus_override(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_xusb_padctl_ops, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 %8(ptr noundef %0, i1 noundef zeroext %1) #11
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ %11, %10 ], [ -524, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_phy_xusb_utmi_port_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tegra_xusb_padctl_ops, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = tail call i32 %13(ptr noundef %0) #11
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi i32 [ %16, %15 ], [ -524, %1 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_xusb_padctl_get_usb3_companion(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @tegra_xusb_find_port(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %1) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %7, i32 0, i32 2, i32 3, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tegra_xusb_port, ptr %3, i32 0, i32 2
  br label %13

13:                                               ; preds = %25, %11
  %14 = phi i32 [ 0, %11 ], [ %26, %25 ]
  %15 = tail call ptr @tegra_xusb_find_port(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %14) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %15, i32 0, i32 3
  %19 = load i32, ptr %18, align 8
  %20 = load i32, ptr %12, align 8
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.tegra_xusb_port, ptr %15, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  br label %31

25:                                               ; preds = %17, %13
  %26 = add nuw i32 %14, 1
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %27, i32 0, i32 2, i32 3, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %13, label %31

31:                                               ; preds = %25, %22, %5, %2
  %32 = phi i32 [ %24, %22 ], [ -22, %2 ], [ -19, %5 ], [ -19, %25 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_xusb_pad_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_pad_soc, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_xusb_pad_ops, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %2) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xusb_padctl_probe(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_role_switch_desc, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @of_get_child_by_name(ptr noundef %7, ptr noundef nonnull @.str.11) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.12) #12
  %11 = tail call i32 @tegra_xusb_padctl_legacy_probe(ptr noundef %0) #11
  br label %883

12:                                               ; preds = %1
  tail call void @of_node_put(ptr noundef nonnull %8) #11
  %13 = load ptr, ptr %6, align 8
  %14 = tail call ptr @of_match_node(ptr noundef nonnull @tegra_xusb_padctl_of_match, ptr noundef %13) #11
  %15 = getelementptr inbounds %struct.of_device_id, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = tail call ptr %19(ptr noundef %5, ptr noundef %16) #11
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = ptrtoint ptr %20 to i32
  br label %883

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %20, ptr %25, align 8
  %26 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %20, i32 0, i32 10
  store volatile ptr %26, ptr %26, align 4
  %27 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %20, i32 0, i32 10, i32 1
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %20, i32 0, i32 11
  store volatile ptr %28, ptr %28, align 4
  %29 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %20, i32 0, i32 11, i32 1
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %20, i32 0, i32 12
  store volatile ptr %30, ptr %30, align 4
  %31 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %20, i32 0, i32 12, i32 1
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %20, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %32, ptr noundef nonnull @.str.13, ptr noundef nonnull @tegra_xusb_padctl_probe.__key) #11
  %33 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #11
  %34 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %20, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = ptrtoint ptr %33 to i32
  br label %878

38:                                               ; preds = %24
  %39 = tail call ptr @__devm_reset_control_get(ptr noundef %5, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %40 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %20, i32 0, i32 3
  store ptr %39, ptr %40, align 4
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = ptrtoint ptr %39 to i32
  br label %878

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %20, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %46, i32 0, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %48, i32 12) #11
  %50 = extractvalue { i32, i1 } %49, 1
  br i1 %50, label %51, label %53, !prof !9

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %20, i32 0, i32 15
  store ptr null, ptr %52, align 4
  br label %878

53:                                               ; preds = %44
  %54 = extractvalue { i32, i1 } %49, 0
  %55 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %54, i32 noundef 3520) #11
  %56 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %20, i32 0, i32 15
  store ptr %55, ptr %56, align 4
  %57 = icmp eq ptr %55, null
  br i1 %57, label %878, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr %45, align 4
  %60 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %59, i32 0, i32 4
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %59, i32 0, i32 5
  %63 = load i32, ptr %62, align 4
  tail call void @regulator_bulk_set_supply_names(ptr noundef nonnull %55, ptr noundef %61, i32 noundef %63) #11
  %64 = load ptr, ptr %45, align 4
  %65 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %64, i32 0, i32 5
  %66 = load i32, ptr %65, align 4
  %67 = load ptr, ptr %56, align 4
  %68 = tail call i32 @devm_regulator_bulk_get(ptr noundef %5, i32 noundef %66, ptr noundef %67) #11
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %5, i32 noundef %68, ptr noundef nonnull @.str.14) #11
  br label %878

72:                                               ; preds = %58
  %73 = load ptr, ptr %40, align 4
  %74 = tail call i32 @reset_control_deassert(ptr noundef %73) #11
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %878, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %45, align 4
  %78 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %77, i32 0, i32 5
  %79 = load i32, ptr %78, align 4
  %80 = load ptr, ptr %56, align 4
  %81 = tail call i32 @regulator_bulk_enable(i32 noundef %79, ptr noundef %80) #11
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.15, i32 noundef %81) #12
  br label %874

84:                                               ; preds = %76
  tail call void @mutex_lock(ptr noundef %32) #11
  %85 = load ptr, ptr %45, align 4
  %86 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %85, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %203, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %20, i32 0, i32 5
  %91 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %20, i32 0, i32 6
  %92 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %20, i32 0, i32 8
  %93 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %20, i32 0, i32 7
  %94 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %20, i32 0, i32 9
  br label %95

95:                                               ; preds = %197, %89
  %96 = phi ptr [ %85, %89 ], [ %199, %197 ]
  %97 = phi i32 [ 0, %89 ], [ %198, %197 ]
  %98 = load ptr, ptr %96, align 4
  %99 = getelementptr ptr, ptr %98, i32 %97
  %100 = load ptr, ptr %99, align 4
  %101 = load ptr, ptr %100, align 4
  %102 = load ptr, ptr %20, align 4
  %103 = getelementptr inbounds %struct.device, ptr %102, i32 0, i32 25
  %104 = load ptr, ptr %103, align 8
  %105 = tail call ptr @of_get_child_by_name(ptr noundef %104, ptr noundef nonnull @.str.11) #11
  %106 = icmp eq ptr %105, null
  br i1 %106, label %197, label %107

107:                                              ; preds = %95
  %108 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %105, ptr noundef %101) #11
  tail call void @of_node_put(ptr noundef nonnull %105) #11
  %109 = icmp eq ptr %108, null
  br i1 %109, label %197, label %110

110:                                              ; preds = %107
  %111 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %108) #11
  br i1 %111, label %112, label %197

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.tegra_xusb_pad_soc, ptr %100, i32 0, i32 3
  %114 = load ptr, ptr %113, align 4
  %115 = load ptr, ptr %114, align 4
  %116 = tail call ptr %115(ptr noundef %20, ptr noundef %100, ptr noundef nonnull %108) #11
  %117 = icmp ugt ptr %116, inttoptr (i32 -4096 to ptr)
  br i1 %117, label %147, label %118

118:                                              ; preds = %112
  %119 = load ptr, ptr %100, align 4
  %120 = tail call i32 @strcmp(ptr noundef %119, ptr noundef nonnull dereferenceable(5) @.str.21) #11
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  store ptr %116, ptr %90, align 4
  %123 = load ptr, ptr %100, align 4
  br label %124

124:                                              ; preds = %122, %118
  %125 = phi ptr [ %123, %122 ], [ %119, %118 ]
  %126 = tail call i32 @strcmp(ptr noundef %125, ptr noundef nonnull dereferenceable(5) @.str.22) #11
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  store ptr %116, ptr %91, align 4
  %129 = load ptr, ptr %100, align 4
  br label %130

130:                                              ; preds = %128, %124
  %131 = phi ptr [ %129, %128 ], [ %125, %124 ]
  %132 = tail call i32 @strcmp(ptr noundef %131, ptr noundef nonnull dereferenceable(5) @.str.6) #11
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  store ptr %116, ptr %92, align 4
  %135 = load ptr, ptr %100, align 4
  br label %136

136:                                              ; preds = %134, %130
  %137 = phi ptr [ %135, %134 ], [ %131, %130 ]
  %138 = tail call i32 @strcmp(ptr noundef %137, ptr noundef nonnull dereferenceable(5) @.str.23) #11
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  store ptr %116, ptr %93, align 4
  %141 = load ptr, ptr %100, align 4
  br label %142

142:                                              ; preds = %140, %136
  %143 = phi ptr [ %141, %140 ], [ %137, %136 ]
  %144 = tail call i32 @strcmp(ptr noundef %143, ptr noundef nonnull dereferenceable(5) @.str.24) #11
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %191

146:                                              ; preds = %142
  store ptr %116, ptr %94, align 4
  br label %191

147:                                              ; preds = %112
  %148 = ptrtoint ptr %116 to i32
  %149 = load ptr, ptr %20, align 4
  %150 = load ptr, ptr %100, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.20, ptr noundef %150, i32 noundef %148) #12
  %151 = load ptr, ptr %20, align 4
  %152 = load ptr, ptr %100, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.20, ptr noundef %152, i32 noundef %148) #12
  %153 = load ptr, ptr %31, align 4
  %154 = icmp eq ptr %153, %30
  br i1 %154, label %277, label %155

155:                                              ; preds = %188, %147
  %156 = phi ptr [ %159, %188 ], [ %153, %147 ]
  %157 = getelementptr i8, ptr %156, i32 -492
  %158 = getelementptr inbounds %struct.list_head, ptr %156, i32 0, i32 1
  %159 = load ptr, ptr %158, align 4
  %160 = load ptr, ptr %156, align 4
  %161 = getelementptr inbounds %struct.list_head, ptr %160, i32 0, i32 1
  store ptr %159, ptr %161, align 4
  store volatile ptr %160, ptr %159, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %156, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %158, align 4
  %162 = load ptr, ptr %157, align 8
  %163 = getelementptr inbounds %struct.tegra_xusb_pad_soc, ptr %162, i32 0, i32 2
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr i8, ptr %156, i32 -484
  %166 = load ptr, ptr %165, align 8
  tail call void @of_phy_provider_unregister(ptr noundef %166) #11
  %167 = icmp eq i32 %164, 0
  br i1 %167, label %188, label %168

168:                                              ; preds = %155
  %169 = getelementptr i8, ptr %156, i32 -480
  br label %170

170:                                              ; preds = %186, %168
  %171 = phi i32 [ %164, %168 ], [ %172, %186 ]
  %172 = add i32 %171, -1
  %173 = load ptr, ptr %169, align 4
  %174 = getelementptr ptr, ptr %173, i32 %172
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %186, label %177

177:                                              ; preds = %170
  %178 = getelementptr inbounds %struct.device, ptr %175, i32 0, i32 8
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %179, i32 0, i32 1
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %181, i32 0, i32 5
  %183 = load ptr, ptr %182, align 8
  %184 = getelementptr inbounds %struct.tegra_xusb_lane_ops, ptr %183, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  tail call void %185(ptr noundef %179) #11
  tail call void @phy_destroy(ptr noundef nonnull %175) #11
  br label %186

186:                                              ; preds = %177, %170
  %187 = icmp eq i32 %172, 0
  br i1 %187, label %188, label %170

188:                                              ; preds = %186, %155
  %189 = getelementptr i8, ptr %156, i32 -476
  tail call void @device_unregister(ptr noundef %189) #11
  %190 = icmp eq ptr %159, %30
  br i1 %190, label %277, label %155

191:                                              ; preds = %146, %142
  %192 = icmp eq ptr %116, null
  br i1 %192, label %197, label %193

193:                                              ; preds = %191
  %194 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %116, i32 0, i32 6
  %195 = load ptr, ptr %31, align 4
  store ptr %194, ptr %31, align 4
  store ptr %30, ptr %194, align 4
  %196 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %116, i32 0, i32 6, i32 1
  store ptr %195, ptr %196, align 4
  store volatile ptr %194, ptr %195, align 4
  br label %197

197:                                              ; preds = %193, %191, %110, %107, %95
  %198 = add nuw i32 %97, 1
  %199 = load ptr, ptr %45, align 4
  %200 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %199, i32 0, i32 1
  %201 = load i32, ptr %200, align 4
  %202 = icmp ult i32 %198, %201
  br i1 %202, label %95, label %203

203:                                              ; preds = %197, %84
  %204 = load ptr, ptr %30, align 4
  %205 = icmp eq ptr %204, %30
  br i1 %205, label %276, label %206

206:                                              ; preds = %273, %203
  %207 = phi ptr [ %274, %273 ], [ %204, %203 ]
  %208 = getelementptr i8, ptr %207, i32 -492
  %209 = load ptr, ptr %208, align 8
  %210 = getelementptr inbounds %struct.tegra_xusb_pad_soc, ptr %209, i32 0, i32 2
  %211 = load i32, ptr %210, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %273, label %213

213:                                              ; preds = %206
  %214 = getelementptr i8, ptr %207, i32 -480
  br label %215

215:                                              ; preds = %267, %213
  %216 = phi i32 [ 0, %213 ], [ %268, %267 ]
  %217 = load ptr, ptr %214, align 4
  %218 = getelementptr ptr, ptr %217, i32 %216
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %267, label %221

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.device, ptr %219, i32 0, i32 8
  %223 = load ptr, ptr %222, align 8
  %224 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %223, i32 0, i32 1
  %225 = load ptr, ptr %224, align 4
  %226 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %225, i32 0, i32 1
  %227 = load ptr, ptr %226, align 4
  %228 = load ptr, ptr %223, align 4
  %229 = getelementptr inbounds %struct.tegra_xusb_lane_soc, ptr %228, i32 0, i32 5
  %230 = load i32, ptr %229, align 4
  %231 = icmp ult i32 %230, 2
  br i1 %231, label %267, label %232

232:                                              ; preds = %221
  %233 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %225, i32 0, i32 5
  %234 = load ptr, ptr %233, align 8
  %235 = getelementptr inbounds %struct.tegra_xusb_lane_ops, ptr %234, i32 0, i32 2
  %236 = load ptr, ptr %235, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %239, label %238

238:                                              ; preds = %232
  tail call void %236(ptr noundef %223) #11
  br label %239

239:                                              ; preds = %238, %232
  %240 = getelementptr inbounds %struct.tegra_xusb_lane_soc, ptr %228, i32 0, i32 1
  %241 = load i32, ptr %240, align 4
  %242 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %227, i32 0, i32 1
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr i8, ptr %243, i32 %241
  %245 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %244) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %246 = getelementptr inbounds %struct.tegra_xusb_lane_soc, ptr %228, i32 0, i32 3
  %247 = load i32, ptr %246, align 4
  %248 = getelementptr inbounds %struct.tegra_xusb_lane_soc, ptr %228, i32 0, i32 2
  %249 = load i32, ptr %248, align 4
  %250 = shl i32 %247, %249
  %251 = xor i32 %250, -1
  %252 = and i32 %245, %251
  %253 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %223, i32 0, i32 4
  %254 = load i32, ptr %253, align 4
  %255 = shl i32 %254, %249
  %256 = or i32 %252, %255
  %257 = load i32, ptr %240, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  %258 = load ptr, ptr %242, align 4
  %259 = getelementptr i8, ptr %258, i32 %257
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %259, i32 %256) #11, !srcloc !13
  %260 = load ptr, ptr %224, align 4
  %261 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %260, i32 0, i32 5
  %262 = load ptr, ptr %261, align 8
  %263 = getelementptr inbounds %struct.tegra_xusb_lane_ops, ptr %262, i32 0, i32 3
  %264 = load ptr, ptr %263, align 4
  %265 = icmp eq ptr %264, null
  br i1 %265, label %267, label %266

266:                                              ; preds = %239
  tail call void %264(ptr noundef %223) #11
  br label %267

267:                                              ; preds = %266, %239, %221, %215
  %268 = add nuw i32 %216, 1
  %269 = load ptr, ptr %208, align 8
  %270 = getelementptr inbounds %struct.tegra_xusb_pad_soc, ptr %269, i32 0, i32 2
  %271 = load i32, ptr %270, align 4
  %272 = icmp ult i32 %268, %271
  br i1 %272, label %215, label %273

273:                                              ; preds = %267, %206
  %274 = load ptr, ptr %207, align 4
  %275 = icmp eq ptr %274, %30
  br i1 %275, label %276, label %206

276:                                              ; preds = %273, %203
  tail call void @mutex_unlock(ptr noundef %32) #11
  br label %280

277:                                              ; preds = %188, %147
  tail call void @mutex_unlock(ptr noundef %32) #11
  %278 = icmp slt ptr %116, null
  br i1 %278, label %279, label %280

279:                                              ; preds = %277
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.16, i32 noundef %148) #12
  br label %867

280:                                              ; preds = %277, %276
  tail call void @mutex_lock(ptr noundef %32) #11
  %281 = load ptr, ptr %45, align 4
  %282 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %281, i32 0, i32 2, i32 0, i32 1
  %283 = load i32, ptr %282, align 4
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %288, label %285

285:                                              ; preds = %280
  %286 = getelementptr inbounds i8, ptr %3, i32 4
  %287 = getelementptr inbounds %struct.usb_role_switch_desc, ptr %3, i32 0, i32 4
  br label %294

288:                                              ; preds = %477, %280
  %289 = phi ptr [ %281, %280 ], [ %480, %477 ]
  %290 = phi i32 [ 0, %280 ], [ %478, %477 ]
  %291 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %289, i32 0, i32 2, i32 1, i32 1
  %292 = load i32, ptr %291, align 4
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %484, label %490

294:                                              ; preds = %477, %285
  %295 = phi i32 [ 0, %285 ], [ %479, %477 ]
  %296 = load ptr, ptr %20, align 4
  %297 = getelementptr inbounds %struct.device, ptr %296, i32 0, i32 25
  %298 = load ptr, ptr %297, align 8
  %299 = call ptr @of_get_child_by_name(ptr noundef %298, ptr noundef nonnull @.str.9) #11
  %300 = icmp eq ptr %299, null
  br i1 %300, label %467, label %301

301:                                              ; preds = %294
  %302 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, i32 noundef %295) #11
  %303 = icmp eq ptr %302, null
  br i1 %303, label %304, label %305

304:                                              ; preds = %301
  call void @of_node_put(ptr noundef nonnull %299) #11
  br label %467

305:                                              ; preds = %301
  %306 = call ptr @of_get_child_by_name(ptr noundef nonnull %299, ptr noundef nonnull %302) #11
  call void @kfree(ptr noundef nonnull %302) #11
  call void @of_node_put(ptr noundef nonnull %299) #11
  %307 = icmp eq ptr %306, null
  br i1 %307, label %467, label %308

308:                                              ; preds = %305
  %309 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %306) #11
  br i1 %309, label %310, label %467

310:                                              ; preds = %308
  %311 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %312 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %311, i32 noundef 3520, i32 noundef 728) #13
  %313 = icmp eq ptr %312, null
  br i1 %313, label %472, label %314

314:                                              ; preds = %310
  %315 = getelementptr inbounds %struct.tegra_xusb_port, ptr %312, i32 0, i32 3
  store volatile ptr %315, ptr %315, align 4
  %316 = getelementptr inbounds %struct.tegra_xusb_port, ptr %312, i32 0, i32 3, i32 1
  store ptr %315, ptr %316, align 8
  store ptr %20, ptr %312, align 8
  %317 = getelementptr inbounds %struct.tegra_xusb_port, ptr %312, i32 0, i32 2
  store i32 %295, ptr %317, align 8
  %318 = getelementptr inbounds %struct.tegra_xusb_port, ptr %312, i32 0, i32 4
  call void @device_initialize(ptr noundef %318) #11
  %319 = getelementptr inbounds %struct.tegra_xusb_port, ptr %312, i32 0, i32 4, i32 4
  store ptr @tegra_xusb_port_type, ptr %319, align 8
  %320 = call ptr @of_node_get(ptr noundef nonnull %306) #11
  %321 = getelementptr inbounds %struct.tegra_xusb_port, ptr %312, i32 0, i32 4, i32 25
  store ptr %320, ptr %321, align 8
  %322 = load ptr, ptr %20, align 4
  %323 = getelementptr inbounds %struct.tegra_xusb_port, ptr %312, i32 0, i32 4, i32 1
  store ptr %322, ptr %323, align 4
  %324 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %318, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, i32 noundef %295) #11
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %470, label %326

326:                                              ; preds = %314
  %327 = call i32 @device_add(ptr noundef %318) #11
  %328 = icmp slt i32 %327, 0
  br i1 %328, label %470, label %329

329:                                              ; preds = %326
  %330 = load ptr, ptr %45, align 4
  %331 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %330, i32 0, i32 2
  %332 = load ptr, ptr %331, align 4
  %333 = getelementptr inbounds %struct.tegra_xusb_port, ptr %312, i32 0, i32 8
  store ptr %332, ptr %333, align 4
  %334 = getelementptr inbounds %struct.tegra_xusb_port_ops, ptr %332, i32 0, i32 4
  %335 = load ptr, ptr %334, align 4
  %336 = call ptr %335(ptr noundef nonnull %312) #11
  %337 = getelementptr inbounds %struct.tegra_xusb_port, ptr %312, i32 0, i32 1
  store ptr %336, ptr %337, align 4
  %338 = icmp ugt ptr %336, inttoptr (i32 -4096 to ptr)
  br i1 %338, label %474, label %339

339:                                              ; preds = %329
  %340 = load ptr, ptr %321, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store ptr null, ptr %4, align 4, !annotation !8
  %341 = call ptr @of_find_property(ptr noundef %340, ptr noundef nonnull @.str.26, ptr noundef null) #11
  %342 = icmp ne ptr %341, null
  %343 = getelementptr inbounds %struct.tegra_xusb_usb2_port, ptr %312, i32 0, i32 3
  %344 = zext i1 %342 to i8
  store i8 %344, ptr %343, align 8
  %345 = call i32 @of_property_read_string(ptr noundef %340, ptr noundef nonnull @.str.27, ptr noundef nonnull %4) #11
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %354

347:                                              ; preds = %339
  %348 = load ptr, ptr %4, align 4
  %349 = call i32 @match_string(ptr noundef nonnull @modes, i32 noundef 4, ptr noundef %348) #11
  %350 = icmp slt i32 %349, 0
  br i1 %350, label %351, label %356

351:                                              ; preds = %347
  %352 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %318, ptr noundef nonnull @.str.28, ptr noundef %352) #12
  %353 = getelementptr inbounds %struct.tegra_xusb_usb2_port, ptr %312, i32 0, i32 2
  store i32 0, ptr %353, align 4
  br label %434

354:                                              ; preds = %339
  %355 = getelementptr inbounds %struct.tegra_xusb_usb2_port, ptr %312, i32 0, i32 2
  store i32 1, ptr %355, align 4
  br label %434

356:                                              ; preds = %347
  %357 = getelementptr inbounds %struct.tegra_xusb_usb2_port, ptr %312, i32 0, i32 2
  store i32 %349, ptr %357, align 4
  %358 = and i32 %349, -2
  %359 = icmp eq i32 %358, 2
  br i1 %359, label %360, label %434

360:                                              ; preds = %356
  %361 = call ptr @of_find_property(ptr noundef %340, ptr noundef nonnull @.str.29, ptr noundef null) #11
  %362 = icmp eq ptr %361, null
  br i1 %362, label %429, label %363

363:                                              ; preds = %360
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %286, i8 0, i64 32, i1 false) #11
  %364 = call ptr @dev_fwnode(ptr noundef %318) #11
  store ptr %364, ptr %3, align 4
  store ptr @tegra_xusb_role_sw_set, ptr %287, align 4
  %365 = call noalias ptr @devm_kmalloc(ptr noundef %318, i32 noundef 76, i32 noundef 3520) #11
  %366 = getelementptr inbounds %struct.tegra_xusb_port, ptr %312, i32 0, i32 4, i32 6
  store ptr %365, ptr %366, align 8
  %367 = getelementptr inbounds %struct.device_driver, ptr %365, i32 0, i32 2
  store ptr null, ptr %367, align 4
  %368 = call ptr @usb_role_switch_register(ptr noundef %318, ptr noundef nonnull %3) #11
  %369 = getelementptr inbounds %struct.tegra_xusb_port, ptr %312, i32 0, i32 5
  store ptr %368, ptr %369, align 8
  %370 = icmp ugt ptr %368, inttoptr (i32 -4096 to ptr)
  br i1 %370, label %426, label %371

371:                                              ; preds = %363
  %372 = getelementptr inbounds %struct.tegra_xusb_port, ptr %312, i32 0, i32 6
  store i32 -32, ptr %372, align 4
  %373 = getelementptr inbounds %struct.tegra_xusb_port, ptr %312, i32 0, i32 6, i32 1
  store volatile ptr %373, ptr %373, align 8
  %374 = getelementptr inbounds %struct.tegra_xusb_port, ptr %312, i32 0, i32 6, i32 1, i32 1
  store ptr %373, ptr %374, align 4
  %375 = getelementptr inbounds %struct.tegra_xusb_port, ptr %312, i32 0, i32 6, i32 2
  store ptr @tegra_xusb_usb_phy_work, ptr %375, align 8
  call void @usb_role_switch_set_drvdata(ptr noundef %368, ptr noundef nonnull %312) #11
  %376 = call noalias ptr @devm_kmalloc(ptr noundef %318, i32 noundef 44, i32 noundef 3520) #11
  %377 = getelementptr inbounds %struct.tegra_xusb_port, ptr %312, i32 0, i32 7, i32 5
  store ptr %376, ptr %377, align 8
  %378 = icmp eq ptr %376, null
  br i1 %378, label %424, label %379

379:                                              ; preds = %371
  %380 = getelementptr inbounds %struct.tegra_xusb_port, ptr %312, i32 0, i32 7
  %381 = load ptr, ptr %312, align 8
  %382 = load i32, ptr %317, align 8
  %383 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, i32 noundef %382) #11
  %384 = icmp eq ptr %383, null
  br i1 %384, label %401, label %385

385:                                              ; preds = %379
  %386 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %381, i32 0, i32 11
  br label %387

387:                                              ; preds = %391, %385
  %388 = phi ptr [ %386, %385 ], [ %389, %391 ]
  %389 = load ptr, ptr %388, align 4
  %390 = icmp eq ptr %389, %386
  br i1 %390, label %399, label %391

391:                                              ; preds = %387
  %392 = getelementptr i8, ptr %389, i32 -12
  %393 = load ptr, ptr %392, align 4
  %394 = load ptr, ptr %393, align 4
  %395 = call i32 @strcmp(ptr noundef %394, ptr noundef nonnull %383) #11
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %387

397:                                              ; preds = %391
  %398 = getelementptr i8, ptr %389, i32 -12
  br label %399

399:                                              ; preds = %397, %387
  %400 = phi ptr [ %398, %397 ], [ inttoptr (i32 -19 to ptr), %387 ]
  call void @kfree(ptr noundef nonnull %383) #11
  br label %401

401:                                              ; preds = %399, %379
  %402 = phi ptr [ %400, %399 ], [ inttoptr (i32 -12 to ptr), %379 ]
  %403 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %402, i32 0, i32 1
  %404 = load ptr, ptr %403, align 4
  %405 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %404, i32 0, i32 3
  %406 = load ptr, ptr %405, align 4
  %407 = load i32, ptr %317, align 8
  %408 = getelementptr ptr, ptr %406, i32 %407
  %409 = load ptr, ptr %408, align 4
  store ptr %409, ptr %380, align 4
  %410 = load ptr, ptr %366, align 8
  %411 = getelementptr inbounds %struct.device, ptr %409, i32 0, i32 6
  store ptr %410, ptr %411, align 8
  %412 = load ptr, ptr %377, align 8
  %413 = getelementptr inbounds %struct.usb_otg, ptr %412, i32 0, i32 2
  store ptr %380, ptr %413, align 4
  %414 = load ptr, ptr %377, align 8
  %415 = getelementptr inbounds %struct.usb_otg, ptr %414, i32 0, i32 7
  store ptr @tegra_xusb_set_peripheral, ptr %415, align 4
  %416 = load ptr, ptr %377, align 8
  %417 = getelementptr inbounds %struct.usb_otg, ptr %416, i32 0, i32 6
  store ptr @tegra_xusb_set_host, ptr %417, align 4
  %418 = call i32 @usb_add_phy_dev(ptr noundef %380) #11
  %419 = icmp slt i32 %418, 0
  br i1 %419, label %420, label %421

420:                                              ; preds = %401
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %318, ptr noundef nonnull @.str.37, i32 noundef %418) #12
  br label %424

421:                                              ; preds = %401
  %422 = load ptr, ptr %321, align 8
  %423 = call i32 @of_platform_populate(ptr noundef %422, ptr noundef null, ptr noundef null, ptr noundef %318) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #11
  br label %434

424:                                              ; preds = %420, %371
  %425 = phi i32 [ %418, %420 ], [ -12, %371 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #11
  br label %440

426:                                              ; preds = %363
  %427 = ptrtoint ptr %368 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %318, ptr noundef nonnull @.str.36, i32 noundef %427) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #11
  %428 = icmp slt ptr %368, null
  br i1 %428, label %442, label %434

429:                                              ; preds = %360
  %430 = getelementptr inbounds %struct.tegra_xusb_usb2_port, ptr %312, i32 0, i32 2
  %431 = load i32, ptr %430, align 4
  %432 = getelementptr [4 x ptr], ptr @modes, i32 0, i32 %431
  %433 = load ptr, ptr %432, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %318, ptr noundef nonnull @.str.30, ptr noundef %433) #12
  br label %440

434:                                              ; preds = %426, %421, %356, %354, %351
  %435 = call ptr @regulator_get(ptr noundef %318, ptr noundef nonnull @.str.31) #11
  %436 = getelementptr inbounds %struct.tegra_xusb_usb2_port, ptr %312, i32 0, i32 1
  store ptr %435, ptr %436, align 8
  %437 = icmp ugt ptr %435, inttoptr (i32 -4096 to ptr)
  %438 = ptrtoint ptr %435 to i32
  br i1 %437, label %442, label %439

439:                                              ; preds = %434
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %464

440:                                              ; preds = %429, %424
  %441 = phi i32 [ %425, %424 ], [ -22, %429 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %445

442:                                              ; preds = %434, %426
  %443 = phi i32 [ %427, %426 ], [ %438, %434 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %444 = icmp slt i32 %443, 0
  br i1 %444, label %445, label %464

445:                                              ; preds = %442, %440
  %446 = phi i32 [ %441, %440 ], [ %443, %442 ]
  %447 = getelementptr inbounds %struct.tegra_xusb_port, ptr %312, i32 0, i32 8
  %448 = getelementptr inbounds %struct.tegra_xusb_port, ptr %312, i32 0, i32 5
  %449 = load ptr, ptr %448, align 8
  %450 = icmp eq ptr %449, null
  %451 = icmp ugt ptr %449, inttoptr (i32 -4096 to ptr)
  %452 = or i1 %450, %451
  br i1 %452, label %458, label %453

453:                                              ; preds = %445
  call void @of_platform_depopulate(ptr noundef %318) #11
  %454 = load ptr, ptr %448, align 8
  call void @usb_role_switch_unregister(ptr noundef %454) #11
  %455 = getelementptr inbounds %struct.tegra_xusb_port, ptr %312, i32 0, i32 6
  %456 = call zeroext i1 @cancel_work_sync(ptr noundef %455) #11
  %457 = getelementptr inbounds %struct.tegra_xusb_port, ptr %312, i32 0, i32 7
  call void @usb_remove_phy(ptr noundef %457) #11
  br label %458

458:                                              ; preds = %453, %445
  %459 = load ptr, ptr %447, align 4
  %460 = getelementptr inbounds %struct.tegra_xusb_port_ops, ptr %459, i32 0, i32 1
  %461 = load ptr, ptr %460, align 4
  %462 = icmp eq ptr %461, null
  br i1 %462, label %470, label %463

463:                                              ; preds = %458
  call void %461(ptr noundef %312) #11
  br label %470

464:                                              ; preds = %442, %439
  %465 = phi i32 [ 0, %439 ], [ %443, %442 ]
  %466 = load ptr, ptr %27, align 4
  store ptr %315, ptr %27, align 4
  store ptr %26, ptr %315, align 4
  store ptr %466, ptr %316, align 8
  store volatile ptr %315, ptr %466, align 4
  br label %467

467:                                              ; preds = %464, %308, %305, %304, %294
  %468 = phi ptr [ null, %294 ], [ null, %304 ], [ null, %305 ], [ %306, %308 ], [ %306, %464 ]
  %469 = phi i32 [ 0, %294 ], [ 0, %304 ], [ 0, %305 ], [ 0, %308 ], [ %465, %464 ]
  call void @of_node_put(ptr noundef %468) #11
  br label %477

470:                                              ; preds = %463, %458, %326, %314
  %471 = phi i32 [ %446, %463 ], [ %446, %458 ], [ %327, %326 ], [ %324, %314 ]
  call void @device_unregister(ptr noundef %318) #11
  br label %472

472:                                              ; preds = %470, %310
  %473 = phi i32 [ %471, %470 ], [ -12, %310 ]
  call void @of_node_put(ptr noundef nonnull %306) #11
  br label %859

474:                                              ; preds = %329
  %475 = ptrtoint ptr %336 to i32
  call void @of_node_put(ptr noundef nonnull %306) #11
  %476 = icmp slt ptr %336, null
  br i1 %476, label %857, label %477

477:                                              ; preds = %474, %467
  %478 = phi i32 [ %469, %467 ], [ %475, %474 ]
  %479 = add nuw i32 %295, 1
  %480 = load ptr, ptr %45, align 4
  %481 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %480, i32 0, i32 2, i32 0, i32 1
  %482 = load i32, ptr %481, align 4
  %483 = icmp ult i32 %479, %482
  br i1 %483, label %294, label %288

484:                                              ; preds = %551, %288
  %485 = phi ptr [ %289, %288 ], [ %554, %551 ]
  %486 = phi i32 [ %290, %288 ], [ %552, %551 ]
  %487 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %485, i32 0, i32 2, i32 2, i32 1
  %488 = load i32, ptr %487, align 4
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %558, label %564

490:                                              ; preds = %551, %288
  %491 = phi i32 [ %553, %551 ], [ 0, %288 ]
  %492 = load ptr, ptr %20, align 4
  %493 = getelementptr inbounds %struct.device, ptr %492, i32 0, i32 25
  %494 = load ptr, ptr %493, align 8
  %495 = call ptr @of_get_child_by_name(ptr noundef %494, ptr noundef nonnull @.str.9) #11
  %496 = icmp eq ptr %495, null
  br i1 %496, label %544, label %497

497:                                              ; preds = %490
  %498 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.23, i32 noundef %491) #11
  %499 = icmp eq ptr %498, null
  br i1 %499, label %500, label %501

500:                                              ; preds = %497
  call void @of_node_put(ptr noundef nonnull %495) #11
  br label %544

501:                                              ; preds = %497
  %502 = call ptr @of_get_child_by_name(ptr noundef nonnull %495, ptr noundef nonnull %498) #11
  call void @kfree(ptr noundef nonnull %498) #11
  call void @of_node_put(ptr noundef nonnull %495) #11
  %503 = icmp eq ptr %502, null
  br i1 %503, label %544, label %504

504:                                              ; preds = %501
  %505 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %502) #11
  br i1 %505, label %506, label %544

506:                                              ; preds = %504
  %507 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %508 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %507, i32 noundef 3520, i32 noundef 720) #13
  %509 = icmp eq ptr %508, null
  br i1 %509, label %546, label %510

510:                                              ; preds = %506
  %511 = getelementptr inbounds %struct.tegra_xusb_port, ptr %508, i32 0, i32 3
  store volatile ptr %511, ptr %511, align 4
  %512 = getelementptr inbounds %struct.tegra_xusb_port, ptr %508, i32 0, i32 3, i32 1
  store ptr %511, ptr %512, align 8
  store ptr %20, ptr %508, align 8
  %513 = getelementptr inbounds %struct.tegra_xusb_port, ptr %508, i32 0, i32 2
  store i32 %491, ptr %513, align 8
  %514 = getelementptr inbounds %struct.tegra_xusb_port, ptr %508, i32 0, i32 4
  call void @device_initialize(ptr noundef %514) #11
  %515 = getelementptr inbounds %struct.tegra_xusb_port, ptr %508, i32 0, i32 4, i32 4
  store ptr @tegra_xusb_port_type, ptr %515, align 8
  %516 = call ptr @of_node_get(ptr noundef nonnull %502) #11
  %517 = getelementptr inbounds %struct.tegra_xusb_port, ptr %508, i32 0, i32 4, i32 25
  store ptr %516, ptr %517, align 8
  %518 = load ptr, ptr %20, align 4
  %519 = getelementptr inbounds %struct.tegra_xusb_port, ptr %508, i32 0, i32 4, i32 1
  store ptr %518, ptr %519, align 4
  %520 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %514, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.23, i32 noundef %491) #11
  %521 = icmp slt i32 %520, 0
  br i1 %521, label %525, label %522

522:                                              ; preds = %510
  %523 = call i32 @device_add(ptr noundef %514) #11
  %524 = icmp slt i32 %523, 0
  br i1 %524, label %525, label %527

525:                                              ; preds = %522, %510
  %526 = phi i32 [ %520, %510 ], [ %523, %522 ]
  call void @device_unregister(ptr noundef %514) #11
  br label %546

527:                                              ; preds = %522
  %528 = load ptr, ptr %45, align 4
  %529 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %528, i32 0, i32 2, i32 1
  %530 = load ptr, ptr %529, align 4
  %531 = getelementptr inbounds %struct.tegra_xusb_port, ptr %508, i32 0, i32 8
  store ptr %530, ptr %531, align 4
  %532 = getelementptr inbounds %struct.tegra_xusb_port_ops, ptr %530, i32 0, i32 4
  %533 = load ptr, ptr %532, align 4
  %534 = call ptr %533(ptr noundef nonnull %508) #11
  %535 = getelementptr inbounds %struct.tegra_xusb_port, ptr %508, i32 0, i32 1
  store ptr %534, ptr %535, align 4
  %536 = icmp ugt ptr %534, inttoptr (i32 -4096 to ptr)
  br i1 %536, label %548, label %537

537:                                              ; preds = %527
  %538 = load ptr, ptr %517, align 8
  %539 = call ptr @of_find_property(ptr noundef %538, ptr noundef nonnull @.str.26, ptr noundef null) #11
  %540 = icmp ne ptr %539, null
  %541 = getelementptr inbounds %struct.tegra_xusb_ulpi_port, ptr %508, i32 0, i32 2
  %542 = zext i1 %540 to i8
  store i8 %542, ptr %541, align 4
  %543 = load ptr, ptr %27, align 4
  store ptr %511, ptr %27, align 4
  store ptr %26, ptr %511, align 4
  store ptr %543, ptr %512, align 8
  store volatile ptr %511, ptr %543, align 4
  br label %544

544:                                              ; preds = %537, %504, %501, %500, %490
  %545 = phi ptr [ null, %490 ], [ null, %500 ], [ null, %501 ], [ %502, %504 ], [ %502, %537 ]
  call void @of_node_put(ptr noundef %545) #11
  br label %551

546:                                              ; preds = %525, %506
  %547 = phi i32 [ %526, %525 ], [ -12, %506 ]
  call void @of_node_put(ptr noundef nonnull %502) #11
  br label %859

548:                                              ; preds = %527
  %549 = ptrtoint ptr %534 to i32
  call void @of_node_put(ptr noundef nonnull %502) #11
  %550 = icmp slt ptr %534, null
  br i1 %550, label %855, label %551

551:                                              ; preds = %548, %544
  %552 = phi i32 [ 0, %544 ], [ %549, %548 ]
  %553 = add nuw i32 %491, 1
  %554 = load ptr, ptr %45, align 4
  %555 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %554, i32 0, i32 2, i32 1, i32 1
  %556 = load i32, ptr %555, align 4
  %557 = icmp ult i32 %553, %556
  br i1 %557, label %490, label %484

558:                                              ; preds = %620, %484
  %559 = phi ptr [ %485, %484 ], [ %623, %620 ]
  %560 = phi i32 [ %486, %484 ], [ %621, %620 ]
  %561 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %559, i32 0, i32 2, i32 3, i32 1
  %562 = load i32, ptr %561, align 4
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %741, label %627

564:                                              ; preds = %620, %484
  %565 = phi i32 [ %622, %620 ], [ 0, %484 ]
  %566 = load ptr, ptr %20, align 4
  %567 = getelementptr inbounds %struct.device, ptr %566, i32 0, i32 25
  %568 = load ptr, ptr %567, align 8
  %569 = call ptr @of_get_child_by_name(ptr noundef %568, ptr noundef nonnull @.str.9) #11
  %570 = icmp eq ptr %569, null
  br i1 %570, label %613, label %571

571:                                              ; preds = %564
  %572 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.24, i32 noundef %565) #11
  %573 = icmp eq ptr %572, null
  br i1 %573, label %574, label %575

574:                                              ; preds = %571
  call void @of_node_put(ptr noundef nonnull %569) #11
  br label %613

575:                                              ; preds = %571
  %576 = call ptr @of_get_child_by_name(ptr noundef nonnull %569, ptr noundef nonnull %572) #11
  call void @kfree(ptr noundef nonnull %572) #11
  call void @of_node_put(ptr noundef nonnull %569) #11
  %577 = icmp eq ptr %576, null
  br i1 %577, label %613, label %578

578:                                              ; preds = %575
  %579 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %576) #11
  br i1 %579, label %580, label %613

580:                                              ; preds = %578
  %581 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %582 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %581, i32 noundef 3520, i32 noundef 712) #13
  %583 = icmp eq ptr %582, null
  br i1 %583, label %615, label %584

584:                                              ; preds = %580
  %585 = getelementptr inbounds %struct.tegra_xusb_port, ptr %582, i32 0, i32 3
  store volatile ptr %585, ptr %585, align 4
  %586 = getelementptr inbounds %struct.tegra_xusb_port, ptr %582, i32 0, i32 3, i32 1
  store ptr %585, ptr %586, align 8
  store ptr %20, ptr %582, align 8
  %587 = getelementptr inbounds %struct.tegra_xusb_port, ptr %582, i32 0, i32 2
  store i32 %565, ptr %587, align 8
  %588 = getelementptr inbounds %struct.tegra_xusb_port, ptr %582, i32 0, i32 4
  call void @device_initialize(ptr noundef %588) #11
  %589 = getelementptr inbounds %struct.tegra_xusb_port, ptr %582, i32 0, i32 4, i32 4
  store ptr @tegra_xusb_port_type, ptr %589, align 8
  %590 = call ptr @of_node_get(ptr noundef nonnull %576) #11
  %591 = getelementptr inbounds %struct.tegra_xusb_port, ptr %582, i32 0, i32 4, i32 25
  store ptr %590, ptr %591, align 8
  %592 = load ptr, ptr %20, align 4
  %593 = getelementptr inbounds %struct.tegra_xusb_port, ptr %582, i32 0, i32 4, i32 1
  store ptr %592, ptr %593, align 4
  %594 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %588, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.24, i32 noundef %565) #11
  %595 = icmp slt i32 %594, 0
  br i1 %595, label %599, label %596

596:                                              ; preds = %584
  %597 = call i32 @device_add(ptr noundef %588) #11
  %598 = icmp slt i32 %597, 0
  br i1 %598, label %599, label %601

599:                                              ; preds = %596, %584
  %600 = phi i32 [ %594, %584 ], [ %597, %596 ]
  call void @device_unregister(ptr noundef %588) #11
  br label %615

601:                                              ; preds = %596
  %602 = load ptr, ptr %45, align 4
  %603 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %602, i32 0, i32 2, i32 2
  %604 = load ptr, ptr %603, align 4
  %605 = getelementptr inbounds %struct.tegra_xusb_port, ptr %582, i32 0, i32 8
  store ptr %604, ptr %605, align 4
  %606 = getelementptr inbounds %struct.tegra_xusb_port_ops, ptr %604, i32 0, i32 4
  %607 = load ptr, ptr %606, align 4
  %608 = call ptr %607(ptr noundef nonnull %582) #11
  %609 = getelementptr inbounds %struct.tegra_xusb_port, ptr %582, i32 0, i32 1
  store ptr %608, ptr %609, align 4
  %610 = icmp ugt ptr %608, inttoptr (i32 -4096 to ptr)
  br i1 %610, label %617, label %611

611:                                              ; preds = %601
  %612 = load ptr, ptr %27, align 4
  store ptr %585, ptr %27, align 4
  store ptr %26, ptr %585, align 4
  store ptr %612, ptr %586, align 8
  store volatile ptr %585, ptr %612, align 4
  br label %613

613:                                              ; preds = %611, %578, %575, %574, %564
  %614 = phi ptr [ null, %564 ], [ null, %574 ], [ null, %575 ], [ %576, %578 ], [ %576, %611 ]
  call void @of_node_put(ptr noundef %614) #11
  br label %620

615:                                              ; preds = %599, %580
  %616 = phi i32 [ %600, %599 ], [ -12, %580 ]
  call void @of_node_put(ptr noundef nonnull %576) #11
  br label %859

617:                                              ; preds = %601
  %618 = ptrtoint ptr %608 to i32
  call void @of_node_put(ptr noundef nonnull %576) #11
  %619 = icmp slt ptr %608, null
  br i1 %619, label %853, label %620

620:                                              ; preds = %617, %613
  %621 = phi i32 [ 0, %613 ], [ %618, %617 ]
  %622 = add nuw i32 %565, 1
  %623 = load ptr, ptr %45, align 4
  %624 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %623, i32 0, i32 2, i32 2, i32 1
  %625 = load i32, ptr %624, align 4
  %626 = icmp ult i32 %622, %625
  br i1 %626, label %564, label %558

627:                                              ; preds = %734, %558
  %628 = phi i32 [ %736, %734 ], [ 0, %558 ]
  %629 = load ptr, ptr %20, align 4
  %630 = getelementptr inbounds %struct.device, ptr %629, i32 0, i32 25
  %631 = load ptr, ptr %630, align 8
  %632 = call ptr @of_get_child_by_name(ptr noundef %631, ptr noundef nonnull @.str.9) #11
  %633 = icmp eq ptr %632, null
  br i1 %633, label %727, label %634

634:                                              ; preds = %627
  %635 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, i32 noundef %628) #11
  %636 = icmp eq ptr %635, null
  br i1 %636, label %637, label %638

637:                                              ; preds = %634
  call void @of_node_put(ptr noundef nonnull %632) #11
  br label %727

638:                                              ; preds = %634
  %639 = call ptr @of_get_child_by_name(ptr noundef nonnull %632, ptr noundef nonnull %635) #11
  call void @kfree(ptr noundef nonnull %635) #11
  call void @of_node_put(ptr noundef nonnull %632) #11
  %640 = icmp eq ptr %639, null
  br i1 %640, label %727, label %641

641:                                              ; preds = %638
  %642 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %639) #11
  br i1 %642, label %643, label %727

643:                                              ; preds = %641
  %644 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %645 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %644, i32 noundef 3520, i32 noundef 744) #13
  %646 = icmp eq ptr %645, null
  br i1 %646, label %729, label %647

647:                                              ; preds = %643
  %648 = getelementptr inbounds %struct.tegra_xusb_port, ptr %645, i32 0, i32 3
  store volatile ptr %648, ptr %648, align 4
  %649 = getelementptr inbounds %struct.tegra_xusb_port, ptr %645, i32 0, i32 3, i32 1
  store ptr %648, ptr %649, align 8
  store ptr %20, ptr %645, align 8
  %650 = getelementptr inbounds %struct.tegra_xusb_port, ptr %645, i32 0, i32 2
  store i32 %628, ptr %650, align 8
  %651 = getelementptr inbounds %struct.tegra_xusb_port, ptr %645, i32 0, i32 4
  call void @device_initialize(ptr noundef %651) #11
  %652 = getelementptr inbounds %struct.tegra_xusb_port, ptr %645, i32 0, i32 4, i32 4
  store ptr @tegra_xusb_port_type, ptr %652, align 8
  %653 = call ptr @of_node_get(ptr noundef nonnull %639) #11
  %654 = getelementptr inbounds %struct.tegra_xusb_port, ptr %645, i32 0, i32 4, i32 25
  store ptr %653, ptr %654, align 8
  %655 = load ptr, ptr %20, align 4
  %656 = getelementptr inbounds %struct.tegra_xusb_port, ptr %645, i32 0, i32 4, i32 1
  store ptr %655, ptr %656, align 4
  %657 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %651, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, i32 noundef %628) #11
  %658 = icmp slt i32 %657, 0
  br i1 %658, label %662, label %659

659:                                              ; preds = %647
  %660 = call i32 @device_add(ptr noundef %651) #11
  %661 = icmp slt i32 %660, 0
  br i1 %661, label %662, label %664

662:                                              ; preds = %659, %647
  %663 = phi i32 [ %657, %647 ], [ %660, %659 ]
  call void @device_unregister(ptr noundef %651) #11
  br label %729

664:                                              ; preds = %659
  %665 = load ptr, ptr %45, align 4
  %666 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %665, i32 0, i32 2, i32 3
  %667 = load ptr, ptr %666, align 4
  %668 = getelementptr inbounds %struct.tegra_xusb_port, ptr %645, i32 0, i32 8
  store ptr %667, ptr %668, align 4
  %669 = getelementptr inbounds %struct.tegra_xusb_port_ops, ptr %667, i32 0, i32 4
  %670 = load ptr, ptr %669, align 4
  %671 = call ptr %670(ptr noundef nonnull %645) #11
  %672 = getelementptr inbounds %struct.tegra_xusb_port, ptr %645, i32 0, i32 1
  store ptr %671, ptr %672, align 4
  %673 = icmp ugt ptr %671, inttoptr (i32 -4096 to ptr)
  br i1 %673, label %674, label %676

674:                                              ; preds = %664
  %675 = ptrtoint ptr %671 to i32
  br label %731

676:                                              ; preds = %664
  %677 = load ptr, ptr %654, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %678 = call i32 @of_property_read_variable_u32_array(ptr noundef %677, ptr noundef nonnull @.str.38, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #11
  %679 = icmp slt i32 %678, 0
  br i1 %679, label %680, label %681

680:                                              ; preds = %676
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %651, ptr noundef nonnull @.str.39, i32 noundef %678) #12
  br label %700

681:                                              ; preds = %676
  %682 = load i32, ptr %2, align 4
  %683 = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %645, i32 0, i32 3
  store i32 %682, ptr %683, align 8
  %684 = call ptr @of_find_property(ptr noundef %677, ptr noundef nonnull @.str.26, ptr noundef null) #11
  %685 = icmp ne ptr %684, null
  %686 = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %645, i32 0, i32 4
  %687 = zext i1 %685 to i8
  store i8 %687, ptr %686, align 4
  %688 = call zeroext i1 @device_property_present(ptr noundef %651, ptr noundef nonnull @.str.40) #11
  br i1 %688, label %689, label %695

689:                                              ; preds = %681
  %690 = call i32 @usb_get_maximum_speed(ptr noundef %651) #11
  switch i32 %690, label %700 [
    i32 5, label %692
    i32 6, label %691
  ]

691:                                              ; preds = %689
  br label %692

692:                                              ; preds = %691, %689
  %693 = phi i8 [ 0, %691 ], [ 1, %689 ]
  %694 = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %645, i32 0, i32 5
  store i8 %693, ptr %694, align 1
  br label %695

695:                                              ; preds = %692, %681
  %696 = call ptr @regulator_get(ptr noundef %651, ptr noundef nonnull @.str.31) #11
  %697 = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %645, i32 0, i32 1
  store ptr %696, ptr %697, align 8
  %698 = icmp ugt ptr %696, inttoptr (i32 -4096 to ptr)
  br i1 %698, label %702, label %699

699:                                              ; preds = %695
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %724

700:                                              ; preds = %689, %680
  %701 = phi i32 [ -22, %689 ], [ %678, %680 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %705

702:                                              ; preds = %695
  %703 = ptrtoint ptr %696 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %704 = icmp slt ptr %696, null
  br i1 %704, label %705, label %724

705:                                              ; preds = %702, %700
  %706 = phi i32 [ %701, %700 ], [ %703, %702 ]
  %707 = getelementptr inbounds %struct.tegra_xusb_port, ptr %645, i32 0, i32 5
  %708 = load ptr, ptr %707, align 8
  %709 = icmp eq ptr %708, null
  %710 = icmp ugt ptr %708, inttoptr (i32 -4096 to ptr)
  %711 = or i1 %709, %710
  br i1 %711, label %717, label %712

712:                                              ; preds = %705
  call void @of_platform_depopulate(ptr noundef %651) #11
  %713 = load ptr, ptr %707, align 8
  call void @usb_role_switch_unregister(ptr noundef %713) #11
  %714 = getelementptr inbounds %struct.tegra_xusb_port, ptr %645, i32 0, i32 6
  %715 = call zeroext i1 @cancel_work_sync(ptr noundef %714) #11
  %716 = getelementptr inbounds %struct.tegra_xusb_port, ptr %645, i32 0, i32 7
  call void @usb_remove_phy(ptr noundef %716) #11
  br label %717

717:                                              ; preds = %712, %705
  %718 = load ptr, ptr %668, align 4
  %719 = getelementptr inbounds %struct.tegra_xusb_port_ops, ptr %718, i32 0, i32 1
  %720 = load ptr, ptr %719, align 4
  %721 = icmp eq ptr %720, null
  br i1 %721, label %723, label %722

722:                                              ; preds = %717
  call void %720(ptr noundef nonnull %645) #11
  br label %723

723:                                              ; preds = %722, %717
  call void @device_unregister(ptr noundef %651) #11
  br label %731

724:                                              ; preds = %702, %699
  %725 = phi i32 [ 0, %699 ], [ %703, %702 ]
  %726 = load ptr, ptr %27, align 4
  store ptr %648, ptr %27, align 4
  store ptr %26, ptr %648, align 4
  store ptr %726, ptr %649, align 8
  store volatile ptr %648, ptr %726, align 4
  br label %731

727:                                              ; preds = %641, %638, %637, %627
  %728 = phi ptr [ null, %627 ], [ null, %637 ], [ null, %638 ], [ %639, %641 ]
  call void @of_node_put(ptr noundef %728) #11
  br label %734

729:                                              ; preds = %662, %643
  %730 = phi i32 [ %663, %662 ], [ -12, %643 ]
  call void @of_node_put(ptr noundef nonnull %639) #11
  br label %859

731:                                              ; preds = %724, %723, %674
  %732 = phi i32 [ %675, %674 ], [ %706, %723 ], [ %725, %724 ]
  call void @of_node_put(ptr noundef nonnull %639) #11
  %733 = icmp slt i32 %732, 0
  br i1 %733, label %859, label %734

734:                                              ; preds = %731, %727
  %735 = phi i32 [ 0, %727 ], [ %732, %731 ]
  %736 = add nuw i32 %628, 1
  %737 = load ptr, ptr %45, align 4
  %738 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %737, i32 0, i32 2, i32 3, i32 1
  %739 = load i32, ptr %738, align 4
  %740 = icmp ult i32 %736, %739
  br i1 %740, label %627, label %741

741:                                              ; preds = %734, %558
  %742 = phi i32 [ %560, %558 ], [ %735, %734 ]
  %743 = phi ptr [ %559, %558 ], [ %737, %734 ]
  %744 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %743, i32 0, i32 7
  %745 = load i8, ptr %744, align 1, !range !14
  %746 = icmp eq i8 %745, 0
  br i1 %746, label %827, label %747

747:                                              ; preds = %741
  %748 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %743, i32 0, i32 2, i32 0, i32 1
  %749 = load i32, ptr %748, align 4
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %827, label %751

751:                                              ; preds = %820, %747
  %752 = phi i32 [ %822, %820 ], [ 0, %747 ]
  %753 = phi i32 [ %821, %820 ], [ %742, %747 ]
  %754 = call ptr @tegra_xusb_find_port(ptr noundef %20, ptr noundef nonnull @.str.6, i32 noundef %752) #11
  %755 = icmp eq ptr %754, null
  br i1 %755, label %820, label %756

756:                                              ; preds = %751
  %757 = getelementptr inbounds %struct.tegra_xusb_usb2_port, ptr %754, i32 0, i32 4
  store i32 -1, ptr %757, align 4
  %758 = getelementptr inbounds %struct.tegra_xusb_usb2_port, ptr %754, i32 0, i32 2
  %759 = load i32, ptr %758, align 4
  %760 = and i32 %759, -2
  %761 = icmp eq i32 %760, 2
  br i1 %761, label %762, label %820

762:                                              ; preds = %756
  %763 = load ptr, ptr %754, align 8
  %764 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %763, i32 0, i32 4
  %765 = load ptr, ptr %764, align 4
  %766 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %765, i32 0, i32 2, i32 3, i32 1
  %767 = load i32, ptr %766, align 4
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %818, label %769

769:                                              ; preds = %762
  %770 = getelementptr inbounds %struct.tegra_xusb_port, ptr %754, i32 0, i32 2
  br label %771

771:                                              ; preds = %780, %769
  %772 = phi i32 [ 0, %769 ], [ %781, %780 ]
  %773 = call ptr @tegra_xusb_find_port(ptr noundef %763, ptr noundef nonnull @.str.7, i32 noundef %772) #11
  %774 = icmp eq ptr %773, null
  br i1 %774, label %780, label %775

775:                                              ; preds = %771
  %776 = getelementptr inbounds %struct.tegra_xusb_usb3_port, ptr %773, i32 0, i32 3
  %777 = load i32, ptr %776, align 8
  %778 = load i32, ptr %770, align 8
  %779 = icmp eq i32 %777, %778
  br i1 %779, label %820, label %780

780:                                              ; preds = %775, %771
  %781 = add nuw i32 %772, 1
  %782 = load ptr, ptr %764, align 4
  %783 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %782, i32 0, i32 2, i32 3, i32 1
  %784 = load i32, ptr %783, align 4
  %785 = icmp ult i32 %781, %784
  br i1 %785, label %771, label %786

786:                                              ; preds = %780
  %787 = load ptr, ptr %754, align 8
  %788 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %787, i32 0, i32 4
  %789 = load ptr, ptr %788, align 4
  %790 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %789, i32 0, i32 2, i32 3, i32 1
  %791 = load i32, ptr %790, align 4
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %818, label %793

793:                                              ; preds = %809, %786
  %794 = phi i32 [ %810, %809 ], [ 0, %786 ]
  %795 = load ptr, ptr %787, align 4
  %796 = getelementptr inbounds %struct.device, ptr %795, i32 0, i32 25
  %797 = load ptr, ptr %796, align 8
  %798 = call ptr @of_get_child_by_name(ptr noundef %797, ptr noundef nonnull @.str.9) #11
  %799 = icmp eq ptr %798, null
  br i1 %799, label %815, label %800

800:                                              ; preds = %793
  %801 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, i32 noundef %794) #11
  %802 = icmp eq ptr %801, null
  br i1 %802, label %803, label %804

803:                                              ; preds = %800
  call void @of_node_put(ptr noundef nonnull %798) #11
  br label %815

804:                                              ; preds = %800
  %805 = call ptr @of_get_child_by_name(ptr noundef nonnull %798, ptr noundef nonnull %801) #11
  call void @kfree(ptr noundef nonnull %801) #11
  call void @of_node_put(ptr noundef nonnull %798) #11
  %806 = icmp eq ptr %805, null
  br i1 %806, label %815, label %807

807:                                              ; preds = %804
  %808 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %805) #11
  br i1 %808, label %809, label %815

809:                                              ; preds = %807
  %810 = add nuw i32 %794, 1
  %811 = load ptr, ptr %788, align 4
  %812 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %811, i32 0, i32 2, i32 3, i32 1
  %813 = load i32, ptr %812, align 4
  %814 = icmp ult i32 %810, %813
  br i1 %814, label %793, label %818

815:                                              ; preds = %807, %804, %803, %793
  %816 = icmp slt i32 %794, 0
  br i1 %816, label %818, label %817

817:                                              ; preds = %815
  store i32 %794, ptr %757, align 4
  br label %820

818:                                              ; preds = %815, %809, %786, %762
  %819 = getelementptr inbounds %struct.tegra_xusb_port, ptr %754, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %819, ptr noundef nonnull @.str.41) #12
  br label %859

820:                                              ; preds = %817, %775, %756, %751
  %821 = phi i32 [ %753, %751 ], [ 0, %756 ], [ 0, %817 ], [ 0, %775 ]
  %822 = add nuw i32 %752, 1
  %823 = load ptr, ptr %45, align 4
  %824 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %823, i32 0, i32 2, i32 0, i32 1
  %825 = load i32, ptr %824, align 4
  %826 = icmp ult i32 %822, %825
  br i1 %826, label %751, label %827

827:                                              ; preds = %820, %747, %741
  %828 = phi i32 [ %742, %741 ], [ %742, %747 ], [ %821, %820 ]
  %829 = load ptr, ptr %26, align 4
  %830 = icmp eq ptr %829, %26
  br i1 %830, label %861, label %831

831:                                              ; preds = %850, %827
  %832 = phi ptr [ %851, %850 ], [ %829, %827 ]
  %833 = getelementptr i8, ptr %832, i32 -12
  %834 = getelementptr i8, ptr %832, i32 696
  %835 = load ptr, ptr %834, align 4
  %836 = getelementptr inbounds %struct.tegra_xusb_port_ops, ptr %835, i32 0, i32 2
  %837 = load ptr, ptr %836, align 4
  %838 = call i32 %837(ptr noundef %833) #11
  %839 = icmp slt i32 %838, 0
  br i1 %839, label %840, label %850

840:                                              ; preds = %831
  %841 = load ptr, ptr %20, align 4
  %842 = getelementptr i8, ptr %832, i32 56
  %843 = load ptr, ptr %842, align 4
  %844 = icmp eq ptr %843, null
  br i1 %844, label %845, label %848

845:                                              ; preds = %840
  %846 = getelementptr i8, ptr %832, i32 12
  %847 = load ptr, ptr %846, align 4
  br label %848

848:                                              ; preds = %845, %840
  %849 = phi ptr [ %847, %845 ], [ %843, %840 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %841, ptr noundef nonnull @.str.25, ptr noundef %849, i32 noundef %838) #12
  br label %850

850:                                              ; preds = %848, %831
  %851 = load ptr, ptr %832, align 4
  %852 = icmp eq ptr %851, %26
  br i1 %852, label %861, label %831

853:                                              ; preds = %617
  %854 = ptrtoint ptr %608 to i32
  br label %859

855:                                              ; preds = %548
  %856 = ptrtoint ptr %534 to i32
  br label %859

857:                                              ; preds = %474
  %858 = ptrtoint ptr %336 to i32
  br label %859

859:                                              ; preds = %857, %855, %853, %818, %731, %729, %615, %546, %472
  %860 = phi i32 [ -19, %818 ], [ %473, %472 ], [ %547, %546 ], [ %616, %615 ], [ %730, %729 ], [ %854, %853 ], [ %856, %855 ], [ %858, %857 ], [ %732, %731 ]
  call fastcc void @__tegra_xusb_remove_ports(ptr noundef %20) #11
  br label %861

861:                                              ; preds = %859, %850, %827
  %862 = phi i32 [ %860, %859 ], [ %828, %827 ], [ %838, %850 ]
  call void @mutex_unlock(ptr noundef %32) #11
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %883, label %864

864:                                              ; preds = %861
  %865 = icmp eq i32 %862, -517
  %866 = select i1 %865, ptr @.str.18, ptr @.str.17
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull %866, ptr noundef %5, ptr noundef nonnull @.str.19, i32 noundef %862) #12
  call fastcc void @tegra_xusb_remove_pads(ptr noundef %20)
  br label %867

867:                                              ; preds = %864, %279
  %868 = phi i32 [ %148, %279 ], [ %862, %864 ]
  %869 = load ptr, ptr %45, align 4
  %870 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %869, i32 0, i32 5
  %871 = load i32, ptr %870, align 4
  %872 = load ptr, ptr %56, align 4
  %873 = call i32 @regulator_bulk_disable(i32 noundef %871, ptr noundef %872) #11
  br label %874

874:                                              ; preds = %867, %83
  %875 = phi i32 [ %81, %83 ], [ %868, %867 ]
  %876 = load ptr, ptr %40, align 4
  %877 = call i32 @reset_control_assert(ptr noundef %876) #11
  br label %878

878:                                              ; preds = %874, %72, %70, %53, %51, %42, %36
  %879 = phi i32 [ %37, %36 ], [ %43, %42 ], [ %68, %70 ], [ %74, %72 ], [ %875, %874 ], [ -12, %53 ], [ -12, %51 ]
  store ptr null, ptr %25, align 8
  %880 = load ptr, ptr %17, align 4
  %881 = getelementptr inbounds %struct.tegra_xusb_padctl_ops, ptr %880, i32 0, i32 1
  %882 = load ptr, ptr %881, align 4
  call void %882(ptr noundef %20) #11
  br label %883

883:                                              ; preds = %878, %861, %22, %10
  %884 = phi i32 [ %23, %22 ], [ %879, %878 ], [ %11, %10 ], [ 0, %861 ]
  ret i32 %884
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xusb_padctl_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %4) #11
  tail call fastcc void @__tegra_xusb_remove_ports(ptr noundef %3) #11
  tail call void @mutex_unlock(ptr noundef %4) #11
  tail call fastcc void @tegra_xusb_remove_pads(ptr noundef %3)
  %5 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regulator_bulk_disable(i32 noundef %8, ptr noundef %10) #11
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.42, i32 noundef %11) #12
  br label %15

15:                                               ; preds = %13, %1
  %16 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @reset_control_assert(ptr noundef %17) #11
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.43, i32 noundef %18) #12
  br label %22

22:                                               ; preds = %20, %15
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tegra_xusb_padctl_ops, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef %3) #11
  ret i32 %18
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_xusb_padctl_legacy_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_bulk_set_supply_names(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_xusb_remove_pads(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %2) #11
  %3 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %0, i32 0, i32 12
  %4 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %0, i32 0, i32 12, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %3
  br i1 %6, label %43, label %7

7:                                                ; preds = %40, %1
  %8 = phi ptr [ %11, %40 ], [ %5, %1 ]
  %9 = getelementptr i8, ptr %8, i32 -492
  %10 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  %14 = load ptr, ptr %9, align 8
  %15 = getelementptr inbounds %struct.tegra_xusb_pad_soc, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %8, i32 -484
  %18 = load ptr, ptr %17, align 8
  tail call void @of_phy_provider_unregister(ptr noundef %18) #11
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %7
  %21 = getelementptr i8, ptr %8, i32 -480
  br label %22

22:                                               ; preds = %38, %20
  %23 = phi i32 [ %16, %20 ], [ %24, %38 ]
  %24 = add i32 %23, -1
  %25 = load ptr, ptr %21, align 4
  %26 = getelementptr ptr, ptr %25, i32 %24
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 8
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.tegra_xusb_lane, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.tegra_xusb_pad, ptr %33, i32 0, i32 5
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.tegra_xusb_lane_ops, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void %37(ptr noundef %31) #11
  tail call void @phy_destroy(ptr noundef nonnull %27) #11
  br label %38

38:                                               ; preds = %29, %22
  %39 = icmp eq i32 %24, 0
  br i1 %39, label %40, label %22

40:                                               ; preds = %38, %7
  %41 = getelementptr i8, ptr %8, i32 -476
  tail call void @device_unregister(ptr noundef %41) #11
  %42 = icmp eq ptr %11, %3
  br i1 %42, label %43, label %7

43:                                               ; preds = %40, %1
  tail call void @mutex_unlock(ptr noundef %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__tegra_xusb_remove_ports(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %0, i32 0, i32 10
  %3 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %0, i32 0, i32 10, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %2
  br i1 %5, label %34, label %6

6:                                                ; preds = %31, %1
  %7 = phi ptr [ %10, %31 ], [ %4, %1 ]
  %8 = getelementptr i8, ptr %7, i32 -12
  %9 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  %13 = getelementptr i8, ptr %7, i32 484
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  %17 = or i1 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %6
  %19 = getelementptr i8, ptr %7, i32 12
  tail call void @of_platform_depopulate(ptr noundef %19) #11
  %20 = load ptr, ptr %13, align 8
  tail call void @usb_role_switch_unregister(ptr noundef %20) #11
  %21 = getelementptr i8, ptr %7, i32 488
  %22 = tail call zeroext i1 @cancel_work_sync(ptr noundef %21) #11
  %23 = getelementptr i8, ptr %7, i32 504
  tail call void @usb_remove_phy(ptr noundef %23) #11
  br label %24

24:                                               ; preds = %18, %6
  %25 = getelementptr i8, ptr %7, i32 696
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.tegra_xusb_port_ops, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  tail call void %28(ptr noundef %8) #11
  br label %31

31:                                               ; preds = %30, %24
  %32 = getelementptr i8, ptr %7, i32 12
  tail call void @device_unregister(ptr noundef %32) #11
  %33 = icmp eq ptr %10, %2
  br i1 %33, label %34, label %6

34:                                               ; preds = %31, %1
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_xusb_port_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 684
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -24
  tail call void %4(ptr noundef %7) #11
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xusb_role_sw_set(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @usb_role_switch_get_drvdata(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.tegra_xusb_port, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr @system_wq, align 4
  %6 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %5, ptr noundef %4) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_xusb_usb_phy_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @usb_role_switch_get_role(ptr noundef %3) #11
  %5 = getelementptr i8, ptr %0, i32 16
  %6 = icmp eq i32 %4, 1
  %7 = select i1 %6, i32 2, i32 0
  %8 = icmp eq i32 %4, 2
  %9 = select i1 %8, i32 1, i32 %7
  tail call void @usb_phy_set_event(ptr noundef %5, i32 noundef %9) #11
  %10 = getelementptr i8, ptr %0, i32 152
  %11 = tail call i32 @atomic_notifier_call_chain(ptr noundef %10, i32 noundef 0, ptr noundef %5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_role_switch_set_drvdata(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xusb_set_peripheral(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -16
  %8 = load ptr, ptr @system_wq, align 4
  %9 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %8, ptr noundef %7) #11
  br label %10

10:                                               ; preds = %4, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xusb_set_host(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -16
  %8 = load ptr, ptr @system_wq, align 4
  %9 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %8, ptr noundef %7) #11
  br label %10

10:                                               ; preds = %4, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_phy_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_role_switch_get_role(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_set_event(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_role_switch_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_phy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_maximum_speed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xusb_padctl_suspend_noirq(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tegra_xusb_padctl_ops, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 %13(ptr noundef %3) #11
  br label %17

17:                                               ; preds = %15, %11, %7, %1
  %18 = phi i32 [ %16, %15 ], [ 0, %11 ], [ 0, %7 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_xusb_padctl_resume_noirq(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_xusb_padctl, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tegra_xusb_padctl_soc, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tegra_xusb_padctl_ops, ptr %9, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 %13(ptr noundef %3) #11
  br label %17

17:                                               ; preds = %15, %11, %7, %1
  %18 = phi i32 [ %16, %15 ], [ 0, %11 ], [ 0, %7 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

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
!10 = !{i64 2416568}
!11 = !{i64 2153876049}
!12 = !{i64 2153875397}
!13 = !{i64 2416150}
!14 = !{i8 0, i8 2}
