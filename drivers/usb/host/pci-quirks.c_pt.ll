; ModuleID = '/llk/IR/drivers/usb/host/pci-quirks.c_pt.bc'
source_filename = "../drivers/usb/host/pci-quirks.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sb800_prefetch:\09\09\09\09\09"
module asm "\09.asciz \09\22sb800_prefetch\22\09\09\09\09\09"
module asm "__kstrtabns_sb800_prefetch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hcd_amd_remote_wakeup_quirk:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hcd_amd_remote_wakeup_quirk\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hcd_amd_remote_wakeup_quirk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_amd_hang_symptom_quirk:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_amd_hang_symptom_quirk\22\09\09\09\09\09"
module asm "__kstrtabns_usb_amd_hang_symptom_quirk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_amd_prefetch_quirk:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_amd_prefetch_quirk\22\09\09\09\09\09"
module asm "__kstrtabns_usb_amd_prefetch_quirk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_amd_quirk_pll_check:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_amd_quirk_pll_check\22\09\09\09\09\09"
module asm "__kstrtabns_usb_amd_quirk_pll_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_amd_quirk_pll_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_amd_quirk_pll_disable\22\09\09\09\09\09"
module asm "__kstrtabns_usb_amd_quirk_pll_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_asmedia_modifyflowcontrol:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_asmedia_modifyflowcontrol\22\09\09\09\09\09"
module asm "__kstrtabns_usb_asmedia_modifyflowcontrol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_amd_quirk_pll_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_amd_quirk_pll_enable\22\09\09\09\09\09"
module asm "__kstrtabns_usb_amd_quirk_pll_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_amd_dev_put:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_amd_dev_put\22\09\09\09\09\09"
module asm "__kstrtabns_usb_amd_dev_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_amd_pt_check_port:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_amd_pt_check_port\22\09\09\09\09\09"
module asm "__kstrtabns_usb_amd_pt_check_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uhci_reset_hc:\09\09\09\09\09"
module asm "\09.asciz \09\22uhci_reset_hc\22\09\09\09\09\09"
module asm "__kstrtabns_uhci_reset_hc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uhci_check_and_reset_hc:\09\09\09\09\09"
module asm "\09.asciz \09\22uhci_check_and_reset_hc\22\09\09\09\09\09"
module asm "__kstrtabns_uhci_check_and_reset_hc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_enable_intel_xhci_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_enable_intel_xhci_ports\22\09\09\09\09\09"
module asm "__kstrtabns_usb_enable_intel_xhci_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_disable_xhci_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_disable_xhci_ports\22\09\09\09\09\09"
module asm "__kstrtabns_usb_disable_xhci_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.amd_chipset_info = type { ptr, ptr, i32, %struct.amd_chipset_type, i32, i32, i8 }
%struct.amd_chipset_type = type { i32, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_fixup = type { i16, i16, i32, i32, ptr }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@__kstrtab_sb800_prefetch = external dso_local constant [0 x i8], align 1
@__kstrtabns_sb800_prefetch = external dso_local constant [0 x i8], align 1
@__ksymtab_sb800_prefetch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sb800_prefetch to i32), ptr @__kstrtab_sb800_prefetch, ptr @__kstrtabns_sb800_prefetch }, section "___ksymtab_gpl+sb800_prefetch", align 4
@amd_chipset = internal unnamed_addr global %struct.amd_chipset_info zeroinitializer, align 4
@__kstrtab_usb_hcd_amd_remote_wakeup_quirk = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hcd_amd_remote_wakeup_quirk = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hcd_amd_remote_wakeup_quirk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hcd_amd_remote_wakeup_quirk to i32), ptr @__kstrtab_usb_hcd_amd_remote_wakeup_quirk, ptr @__kstrtabns_usb_hcd_amd_remote_wakeup_quirk }, section "___ksymtab_gpl+usb_hcd_amd_remote_wakeup_quirk", align 4
@__kstrtab_usb_amd_hang_symptom_quirk = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_amd_hang_symptom_quirk = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_amd_hang_symptom_quirk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_amd_hang_symptom_quirk to i32), ptr @__kstrtab_usb_amd_hang_symptom_quirk, ptr @__kstrtabns_usb_amd_hang_symptom_quirk }, section "___ksymtab_gpl+usb_amd_hang_symptom_quirk", align 4
@__kstrtab_usb_amd_prefetch_quirk = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_amd_prefetch_quirk = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_amd_prefetch_quirk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_amd_prefetch_quirk to i32), ptr @__kstrtab_usb_amd_prefetch_quirk, ptr @__kstrtabns_usb_amd_prefetch_quirk }, section "___ksymtab_gpl+usb_amd_prefetch_quirk", align 4
@__kstrtab_usb_amd_quirk_pll_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_amd_quirk_pll_check = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_amd_quirk_pll_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_amd_quirk_pll_check to i32), ptr @__kstrtab_usb_amd_quirk_pll_check, ptr @__kstrtabns_usb_amd_quirk_pll_check }, section "___ksymtab_gpl+usb_amd_quirk_pll_check", align 4
@__kstrtab_usb_amd_quirk_pll_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_amd_quirk_pll_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_amd_quirk_pll_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_amd_quirk_pll_disable to i32), ptr @__kstrtab_usb_amd_quirk_pll_disable, ptr @__kstrtabns_usb_amd_quirk_pll_disable }, section "___ksymtab_gpl+usb_amd_quirk_pll_disable", align 4
@__kstrtab_usb_asmedia_modifyflowcontrol = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_asmedia_modifyflowcontrol = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_asmedia_modifyflowcontrol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_asmedia_modifyflowcontrol to i32), ptr @__kstrtab_usb_asmedia_modifyflowcontrol, ptr @__kstrtabns_usb_asmedia_modifyflowcontrol }, section "___ksymtab_gpl+usb_asmedia_modifyflowcontrol", align 4
@__kstrtab_usb_amd_quirk_pll_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_amd_quirk_pll_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_amd_quirk_pll_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_amd_quirk_pll_enable to i32), ptr @__kstrtab_usb_amd_quirk_pll_enable, ptr @__kstrtabns_usb_amd_quirk_pll_enable }, section "___ksymtab_gpl+usb_amd_quirk_pll_enable", align 4
@amd_lock = internal global %struct.spinlock zeroinitializer, align 4
@__kstrtab_usb_amd_dev_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_amd_dev_put = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_amd_dev_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_amd_dev_put to i32), ptr @__kstrtab_usb_amd_dev_put, ptr @__kstrtabns_usb_amd_dev_put }, section "___ksymtab_gpl+usb_amd_dev_put", align 4
@__kstrtab_usb_amd_pt_check_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_amd_pt_check_port = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_amd_pt_check_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_amd_pt_check_port to i32), ptr @__kstrtab_usb_amd_pt_check_port, ptr @__kstrtabns_usb_amd_pt_check_port }, section "___ksymtab_gpl+usb_amd_pt_check_port", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [28 x i8] c"HCRESET not completed yet!\0A\00", align 1
@__kstrtab_uhci_reset_hc = external dso_local constant [0 x i8], align 1
@__kstrtabns_uhci_reset_hc = external dso_local constant [0 x i8], align 1
@__ksymtab_uhci_reset_hc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uhci_reset_hc to i32), ptr @__kstrtab_uhci_reset_hc, ptr @__kstrtabns_uhci_reset_hc }, section "___ksymtab_gpl+uhci_reset_hc", align 4
@__kstrtab_uhci_check_and_reset_hc = external dso_local constant [0 x i8], align 1
@__kstrtabns_uhci_check_and_reset_hc = external dso_local constant [0 x i8], align 1
@__ksymtab_uhci_check_and_reset_hc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uhci_check_and_reset_hc to i32), ptr @__kstrtab_uhci_check_and_reset_hc, ptr @__kstrtabns_uhci_check_and_reset_hc }, section "___ksymtab_gpl+uhci_check_and_reset_hc", align 4
@__kstrtab_usb_enable_intel_xhci_ports = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_enable_intel_xhci_ports = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_enable_intel_xhci_ports = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_enable_intel_xhci_ports to i32), ptr @__kstrtab_usb_enable_intel_xhci_ports, ptr @__kstrtabns_usb_enable_intel_xhci_ports }, section "___ksymtab_gpl+usb_enable_intel_xhci_ports", align 4
@__kstrtab_usb_disable_xhci_ports = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_disable_xhci_ports = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_disable_xhci_ports = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_disable_xhci_ports to i32), ptr @__kstrtab_usb_disable_xhci_ports, ptr @__kstrtabns_usb_disable_xhci_ports }, section "___ksymtab_gpl+usb_disable_xhci_ports", align 4
@__pci_fixup_quirk_usb_early_handoff1287 = internal constant %struct.pci_fixup { i16 -1, i16 -1, i32 3075, i32 8, ptr @quirk_usb_early_handoff }, section ".pci_fixup_final", align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"\017QUIRK: Enable AMD PLL fix\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%s: check_ready ERROR\00", align 1
@__func__.usb_asmedia_wait_write = private unnamed_addr constant [23 x i8] c"usb_asmedia_wait_write\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: check_write_ready timeout\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"brcm,bcm2711-pcie\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Can't enable PCI device, BIOS handoff failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"OHCI: BIOS handoff failed (BIOS bug?) %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"EHCI: unrecognized capability %02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"EHCI: capability loop?\0A\00", align 1
@ehci_dmi_nohandoff_table = internal constant [5 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 14, [79 x i8] c"EXOPG06411\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 2, [79 x i8] c"Lucid-CE-133\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 14, [79 x i8] c"M11JB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 2, [79 x i8] c"Lucid-\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 14, [79 x i8] c"Ordissimo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 2, [79 x i8] c"Lucid-\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"HASEE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"E210\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 2, [79 x i8] c"6.00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], align 4
@.str.10 = private unnamed_addr constant [44 x i8] c"EHCI: BIOS handoff failed (BIOS bug?) %08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"xHCI controller failing to respond\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"xHCI BIOS handoff failed (BIOS bug ?) %08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"xHCI HW not ready after 5 sec (HC bug?) status = 0x%x\0A\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"xHCI HW did not halt within %d usec status = 0x%x\0A\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_sb800_prefetch, ptr @__ksymtab_uhci_check_and_reset_hc, ptr @__ksymtab_uhci_reset_hc, ptr @__ksymtab_usb_amd_dev_put, ptr @__ksymtab_usb_amd_hang_symptom_quirk, ptr @__ksymtab_usb_amd_prefetch_quirk, ptr @__ksymtab_usb_amd_pt_check_port, ptr @__ksymtab_usb_amd_quirk_pll_check, ptr @__ksymtab_usb_amd_quirk_pll_disable, ptr @__ksymtab_usb_amd_quirk_pll_enable, ptr @__ksymtab_usb_asmedia_modifyflowcontrol, ptr @__ksymtab_usb_disable_xhci_ports, ptr @__ksymtab_usb_enable_intel_xhci_ports, ptr @__ksymtab_usb_hcd_amd_remote_wakeup_quirk, ptr @__pci_fixup_quirk_usb_early_handoff1287], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sb800_prefetch(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i16 0, ptr %3, align 2, !annotation !8
  %4 = getelementptr i8, ptr %0, i32 -136
  %5 = call i32 @pci_read_config_word(ptr noundef %4, i32 noundef 80, ptr noundef nonnull %3) #6
  %6 = icmp eq i32 %1, 0
  %7 = load i16, ptr %3, align 2
  %8 = and i16 %7, -769
  %9 = select i1 %6, i16 0, i16 768
  %10 = or i16 %8, %9
  %11 = call i32 @pci_write_config_word(ptr noundef %4, i32 noundef 80, i16 noundef zeroext %10) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_hcd_amd_remote_wakeup_quirk(ptr nocapture readnone %0) #0 {
  tail call fastcc void @usb_amd_find_chipset_info()
  %2 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 3), align 4
  %3 = and i32 %2, -2
  %4 = icmp eq i32 %3, 6
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @usb_amd_find_chipset_info() unnamed_addr #0 {
  %1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @amd_lock) #6
  %2 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 5), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = add nuw i32 %2, 1
  store i32 %5, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 5), align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @amd_lock, i32 noundef %1) #6
  br label %73

6:                                                ; preds = %0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @amd_lock, i32 noundef %1) #6
  %7 = tail call ptr @pci_get_device(i32 noundef 4098, i32 noundef 17285, ptr noundef null) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 12
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, -16
  switch i8 %12, label %39 [
    i8 16, label %33
    i8 48, label %37
    i8 64, label %43
  ]

13:                                               ; preds = %6
  %14 = tail call ptr @pci_get_device(i32 noundef 4130, i32 noundef 30731, ptr noundef null) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 12
  %18 = load i8, ptr %17, align 4
  %19 = add i8 %18, -17
  %20 = icmp ult i8 %19, 4
  br i1 %20, label %43, label %21

21:                                               ; preds = %16
  %22 = add i8 %18, -21
  %23 = icmp ult i8 %22, 4
  br i1 %23, label %43, label %24

24:                                               ; preds = %21
  %25 = add i8 %18, -57
  %26 = icmp ult i8 %25, 2
  br i1 %26, label %33, label %39

27:                                               ; preds = %13
  %28 = tail call ptr @pci_get_device(i32 noundef 4130, i32 noundef 5212, ptr noundef null) #6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %60, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 12
  %32 = load i8, ptr %31, align 4
  br label %33

33:                                               ; preds = %30, %24, %9
  %34 = phi ptr [ %7, %9 ], [ %14, %24 ], [ %28, %30 ]
  %35 = phi i32 [ 1, %9 ], [ 6, %24 ], [ 7, %30 ]
  %36 = phi i8 [ %11, %9 ], [ %18, %24 ], [ %32, %30 ]
  br label %39

37:                                               ; preds = %9
  %38 = icmp ugt i8 %11, 59
  br i1 %38, label %39, label %43

39:                                               ; preds = %37, %33, %24, %9
  %40 = phi ptr [ %7, %37 ], [ %34, %33 ], [ %14, %24 ], [ %7, %9 ]
  %41 = phi i32 [ 2, %37 ], [ %35, %33 ], [ 8, %24 ], [ 8, %9 ]
  %42 = phi i8 [ %11, %37 ], [ %36, %33 ], [ %18, %24 ], [ %11, %9 ]
  tail call void @pci_dev_put(ptr noundef nonnull %40) #6
  br label %60

43:                                               ; preds = %37, %21, %16, %9
  %44 = phi ptr [ %7, %37 ], [ %14, %16 ], [ %14, %21 ], [ %7, %9 ]
  %45 = phi i32 [ 2, %37 ], [ 4, %16 ], [ 5, %21 ], [ 3, %9 ]
  %46 = phi i8 [ %11, %37 ], [ %18, %16 ], [ %18, %21 ], [ %11, %9 ]
  %47 = tail call ptr @pci_get_device(i32 noundef 4130, i32 noundef 38401, ptr noundef null) #6
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = tail call ptr @pci_get_device(i32 noundef 4130, i32 noundef 5392, ptr noundef null) #6
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = tail call ptr @pci_get_device(i32 noundef 4130, i32 noundef 38400, ptr noundef null) #6
  %54 = icmp eq ptr %53, null
  %55 = select i1 %54, i32 0, i32 3
  br label %56

56:                                               ; preds = %52, %49, %43
  %57 = phi ptr [ %47, %43 ], [ %50, %49 ], [ %53, %52 ]
  %58 = phi i32 [ 1, %43 ], [ 2, %49 ], [ %55, %52 ]
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  br label %60

60:                                               ; preds = %56, %39, %27
  %61 = phi i8 [ %42, %39 ], [ %46, %56 ], [ 0, %27 ]
  %62 = phi i32 [ %41, %39 ], [ %45, %56 ], [ 0, %27 ]
  %63 = phi ptr [ null, %39 ], [ %57, %56 ], [ null, %27 ]
  %64 = phi ptr [ null, %39 ], [ %44, %56 ], [ null, %27 ]
  %65 = phi i32 [ 0, %39 ], [ %58, %56 ], [ 0, %27 ]
  %66 = phi i8 [ 0, %39 ], [ 1, %56 ], [ 0, %27 ]
  %67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @amd_lock) #6
  %68 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 5), align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = add nuw i32 %68, 1
  store i32 %71, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 5), align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @amd_lock, i32 noundef %67) #6
  tail call void @pci_dev_put(ptr noundef %63) #6
  tail call void @pci_dev_put(ptr noundef %64) #6
  br label %73

72:                                               ; preds = %60
  store ptr %63, ptr @amd_chipset, align 4
  store ptr %64, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 1), align 4
  store i32 %65, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 2), align 4
  store i32 %62, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 3, i32 0), align 4
  store i8 %61, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 3, i32 1), align 4
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(7) getelementptr inbounds (i8, ptr @amd_chipset, i32 17), i8 0, i32 7, i1 false)
  store i32 1, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 5), align 4
  store i8 %66, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 6), align 4
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(3) getelementptr inbounds (i8, ptr @amd_chipset, i32 29), i8 0, i32 3, i1 false)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @amd_lock, i32 noundef %67) #6
  br label %73

73:                                               ; preds = %72, %70, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @usb_amd_hang_symptom_quirk() #0 {
  tail call fastcc void @usb_amd_find_chipset_info()
  %1 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 3), align 4
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = load i8, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 3, i32 1), align 4
  %5 = icmp eq i32 %1, 2
  %6 = icmp ugt i8 %4, 57
  %7 = select i1 %5, i1 %6, i1 false
  %8 = icmp ult i8 %4, 60
  %9 = select i1 %7, i1 %8, i1 false
  br label %10

10:                                               ; preds = %3, %0
  %11 = phi i1 [ true, %0 ], [ %9, %3 ]
  ret i1 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @usb_amd_prefetch_quirk() #0 {
  tail call fastcc void @usb_amd_find_chipset_info()
  %1 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 3), align 4
  %2 = icmp eq i32 %1, 3
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @usb_amd_quirk_pll_check() #0 {
  tail call fastcc void @usb_amd_find_chipset_info()
  %1 = load i8, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 6), align 4, !range !9
  %2 = icmp ne i8 %1, 0
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_amd_quirk_pll_disable() #0 {
  tail call fastcc void @usb_amd_quirk_pll(i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @usb_amd_quirk_pll(i32 noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %4 = icmp eq i32 %0, 0
  %5 = zext i1 %4 to i32
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @amd_lock) #6
  %7 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 4), align 4
  br i1 %4, label %12, label %8

8:                                                ; preds = %1
  %9 = add i32 %7, 1
  store i32 %9, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 4), align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @amd_lock, i32 noundef %6) #6
  br label %130

12:                                               ; preds = %1
  %13 = add i32 %7, -1
  store i32 %13, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 4), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @amd_lock, i32 noundef %6) #6
  br label %130

16:                                               ; preds = %12, %8
  %17 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 3), align 4
  %18 = add i32 %17, -3
  %19 = icmp ult i32 %18, 3
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18871082 to ptr), i8 -32) #6, !srcloc !11
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18871081 to ptr)) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %22 = zext i8 %21 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18871082 to ptr), i8 -31) #6, !srcloc !11
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18871081 to ptr)) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 8
  %26 = or i32 %25, %22
  store i32 %26, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %27 = or i32 %26, -18874368
  %28 = inttoptr i32 %27 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %28, i32 48) #6, !srcloc !15
  %29 = add nuw nsw i32 %26, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %30 = or i32 %29, -18874368
  %31 = inttoptr i32 %30 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %31, i32 64) #6, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %32 = or i32 %26, -18874368
  %33 = inttoptr i32 %32 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %33, i32 52) #6, !srcloc !15
  %34 = or i32 %29, -18874368
  %35 = inttoptr i32 %34 to ptr
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %35) #6, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  br label %70

37:                                               ; preds = %16
  %38 = icmp eq i32 %17, 2
  %39 = load i8, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 3, i32 1), align 4
  %40 = icmp ult i8 %39, 60
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %69

42:                                               ; preds = %37
  %43 = load ptr, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 1), align 4
  %44 = call i32 @pci_read_config_dword(ptr noundef %43, i32 noundef 240, ptr noundef nonnull %2) #6
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  call void @arm_heavy_mb() #6
  %45 = load i32, ptr %2, align 4
  %46 = and i32 %45, 1048575
  %47 = or i32 %46, -18874368
  %48 = inttoptr i32 %47 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %48, i32 48) #6, !srcloc !15
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  call void @arm_heavy_mb() #6
  %49 = load i32, ptr %2, align 4
  %50 = add i32 %49, 4
  %51 = and i32 %50, 1048575
  %52 = or i32 %51, -18874368
  %53 = inttoptr i32 %52 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %53, i32 64) #6, !srcloc !15
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  call void @arm_heavy_mb() #6
  %54 = load i32, ptr %2, align 4
  %55 = and i32 %54, 1048575
  %56 = or i32 %55, -18874368
  %57 = inttoptr i32 %56 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %57, i32 52) #6, !srcloc !15
  %58 = load i32, ptr %2, align 4
  %59 = add i32 %58, 4
  %60 = and i32 %59, 1048575
  %61 = or i32 %60, -18874368
  %62 = inttoptr i32 %61 to ptr
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %62) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !21
  %64 = load i32, ptr %2, align 4
  %65 = add i32 %64, 4
  %66 = and i32 %65, 1048575
  %67 = or i32 %66, -18874368
  %68 = inttoptr i32 %67 to ptr
  br label %70

69:                                               ; preds = %37
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @amd_lock, i32 noundef %6) #6
  br label %130

70:                                               ; preds = %42, %20
  %71 = phi ptr [ %68, %42 ], [ %35, %20 ]
  %72 = phi i32 [ %63, %42 ], [ %36, %20 ]
  %73 = and i32 %72, -537
  %74 = select i1 %4, i32 8, i32 528
  %75 = or i32 %73, %74
  store i32 %75, ptr %3, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %71, i32 %75) #6, !srcloc !15
  %76 = load ptr, ptr @amd_chipset, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @amd_lock, i32 noundef %6) #6
  br label %130

79:                                               ; preds = %70
  %80 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 2), align 4
  %81 = and i32 %80, -3
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %106

83:                                               ; preds = %79
  store i32 65600, ptr %2, align 4
  %84 = call i32 @pci_write_config_dword(ptr noundef nonnull %76, i32 noundef 224, i32 noundef 65600) #6
  %85 = load ptr, ptr @amd_chipset, align 4
  %86 = call i32 @pci_read_config_dword(ptr noundef %85, i32 noundef 228, ptr noundef nonnull %3) #6
  %87 = load i32, ptr %3, align 4
  %88 = and i32 %87, -4634
  %89 = select i1 %4, i32 8, i32 0
  %90 = or i32 %89, %5
  %91 = select i1 %4, i32 4096, i32 0
  %92 = or i32 %90, %91
  %93 = select i1 %4, i32 0, i32 528
  %94 = or i32 %92, %93
  %95 = or i32 %94, %88
  store i32 %95, ptr %3, align 4
  %96 = load ptr, ptr @amd_chipset, align 4
  %97 = call i32 @pci_write_config_dword(ptr noundef %96, i32 noundef 228, i32 noundef %95) #6
  store i32 65538, ptr %2, align 4
  %98 = load ptr, ptr @amd_chipset, align 4
  %99 = call i32 @pci_write_config_dword(ptr noundef %98, i32 noundef 224, i32 noundef 65538) #6
  %100 = load ptr, ptr @amd_chipset, align 4
  %101 = call i32 @pci_read_config_dword(ptr noundef %100, i32 noundef 228, ptr noundef nonnull %3) #6
  %102 = load i32, ptr %3, align 4
  %103 = and i32 %102, -257
  %104 = select i1 %4, i32 256, i32 0
  %105 = or i32 %103, %104
  br label %125

106:                                              ; preds = %79
  %107 = icmp eq i32 %80, 2
  br i1 %107, label %108, label %129

108:                                              ; preds = %106
  store i32 17825810, ptr %2, align 4
  %109 = call i32 @pci_write_config_dword(ptr noundef nonnull %76, i32 noundef 224, i32 noundef 17825810) #6
  %110 = load ptr, ptr @amd_chipset, align 4
  %111 = call i32 @pci_read_config_dword(ptr noundef %110, i32 noundef 228, ptr noundef nonnull %3) #6
  %112 = load i32, ptr %3, align 4
  %113 = and i32 %112, -8065
  %114 = select i1 %4, i32 8064, i32 0
  %115 = or i32 %113, %114
  store i32 %115, ptr %3, align 4
  %116 = load ptr, ptr @amd_chipset, align 4
  %117 = call i32 @pci_write_config_dword(ptr noundef %116, i32 noundef 228, i32 noundef %115) #6
  store i32 17825811, ptr %2, align 4
  %118 = load ptr, ptr @amd_chipset, align 4
  %119 = call i32 @pci_write_config_dword(ptr noundef %118, i32 noundef 224, i32 noundef 17825811) #6
  %120 = load ptr, ptr @amd_chipset, align 4
  %121 = call i32 @pci_read_config_dword(ptr noundef %120, i32 noundef 228, ptr noundef nonnull %3) #6
  %122 = load i32, ptr %3, align 4
  %123 = and i32 %122, -8065
  %124 = or i32 %123, %114
  br label %125

125:                                              ; preds = %108, %83
  %126 = phi i32 [ %124, %108 ], [ %105, %83 ]
  store i32 %126, ptr %3, align 4
  %127 = load ptr, ptr @amd_chipset, align 4
  %128 = call i32 @pci_write_config_dword(ptr noundef %127, i32 noundef 228, i32 noundef %126) #6
  br label %129

129:                                              ; preds = %125, %106
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @amd_lock, i32 noundef %6) #6
  br label %130

130:                                              ; preds = %129, %78, %69, %15, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_asmedia_modifyflowcontrol(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 0, ptr %3, align 1, !annotation !8
  br label %4

4:                                                ; preds = %14, %1
  %5 = phi i32 [ 1000, %1 ], [ %16, %14 ]
  %6 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 224, ptr noundef nonnull %3) #6
  %7 = load i8, ptr %3, align 1
  %8 = icmp eq i8 %7, -1
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.usb_asmedia_wait_write) #7
  br label %20

11:                                               ; preds = %4
  %12 = and i8 %7, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 10737400) #6
  %16 = add nsw i32 %5, -1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %4

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.usb_asmedia_wait_write) #7
  br label %20

20:                                               ; preds = %18, %9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  br label %46

21:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  %22 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 248, i32 noundef 66595) #6
  %23 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 252, i32 noundef 64048) #6
  %24 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 224, i8 noundef zeroext 2) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 0, ptr %2, align 1, !annotation !8
  br label %25

25:                                               ; preds = %35, %21
  %26 = phi i32 [ 1000, %21 ], [ %37, %35 ]
  %27 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 224, ptr noundef nonnull %2) #6
  %28 = load i8, ptr %2, align 1
  %29 = icmp eq i8 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.usb_asmedia_wait_write) #7
  br label %41

32:                                               ; preds = %25
  %33 = and i8 %28, 2
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 10737400) #6
  %37 = add nsw i32 %26, -1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %25

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.usb_asmedia_wait_write) #7
  br label %41

41:                                               ; preds = %39, %30
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  br label %46

42:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  %43 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 248, i32 noundef 186) #6
  %44 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 252, i32 noundef 0) #6
  %45 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 224, i8 noundef zeroext 2) #6
  br label %46

46:                                               ; preds = %42, %41, %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_amd_quirk_pll_enable() #0 {
  tail call fastcc void @usb_amd_quirk_pll(i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_amd_dev_put() #0 {
  %1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @amd_lock) #6
  %2 = load i32, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 5), align 4
  %3 = add i32 %2, -1
  store i32 %3, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 5), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @amd_lock, i32 noundef %1) #6
  br label %9

6:                                                ; preds = %0
  %7 = load ptr, ptr @amd_chipset, align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 1), align 4
  store i8 0, ptr getelementptr inbounds (%struct.amd_chipset_info, ptr @amd_chipset, i32 0, i32 6), align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) @amd_chipset, i8 0, i64 24, i1 false)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @amd_lock, i32 noundef %1) #6
  tail call void @pci_dev_put(ptr noundef %7) #6
  tail call void @pci_dev_put(ptr noundef %8) #6
  br label %9

9:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @usb_amd_pt_check_port(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 0, ptr %3, align 1, !annotation !8
  %4 = getelementptr i8, ptr %0, i32 -136
  %5 = tail call i32 @pci_write_config_word(ptr noundef %4, i32 noundef 232, i16 noundef zeroext -23264) #6
  %6 = call i32 @pci_read_config_byte(ptr noundef %4, i32 noundef 228, ptr noundef nonnull %3) #6
  %7 = load i8, ptr %3, align 1
  %8 = icmp eq i8 %7, 120
  br i1 %8, label %9, label %51

9:                                                ; preds = %2
  %10 = call i32 @pci_write_config_word(ptr noundef %4, i32 noundef 232, i16 noundef zeroext -23263) #6
  %11 = call i32 @pci_read_config_byte(ptr noundef %4, i32 noundef 228, ptr noundef nonnull %3) #6
  %12 = load i8, ptr %3, align 1
  %13 = icmp eq i8 %12, 86
  br i1 %13, label %14, label %51

14:                                               ; preds = %9
  %15 = call i32 @pci_write_config_word(ptr noundef %4, i32 noundef 232, i16 noundef zeroext -23262) #6
  %16 = call i32 @pci_read_config_byte(ptr noundef %4, i32 noundef 228, ptr noundef nonnull %3) #6
  %17 = load i8, ptr %3, align 1
  %18 = icmp eq i8 %17, 52
  br i1 %18, label %19, label %51

19:                                               ; preds = %14
  %20 = call i32 @pci_write_config_word(ptr noundef %4, i32 noundef 232, i16 noundef zeroext -23261) #6
  %21 = call i32 @pci_read_config_byte(ptr noundef %4, i32 noundef 228, ptr noundef nonnull %3) #6
  %22 = load i8, ptr %3, align 1
  %23 = icmp eq i8 %22, 18
  br i1 %23, label %24, label %51

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %0, i32 -102
  %26 = load i16, ptr %25, align 2
  switch i16 %26, label %51 [
    i16 17337, label %27
    i16 17338, label %27
    i16 17339, label %31
    i16 17340, label %35
  ]

27:                                               ; preds = %24, %24
  %28 = icmp sgt i32 %1, 6
  %29 = select i1 %28, i32 -7, i32 1
  %30 = select i1 %28, i16 -19166, i16 -19167
  br label %39

31:                                               ; preds = %24
  %32 = icmp sgt i32 %1, 2
  %33 = select i1 %32, i32 -3, i32 5
  %34 = select i1 %32, i16 -10975, i16 -10976
  br label %39

35:                                               ; preds = %24
  %36 = icmp sgt i32 %1, 3
  %37 = select i1 %36, i32 -4, i32 4
  %38 = select i1 %36, i16 -10973, i16 -10974
  br label %39

39:                                               ; preds = %35, %31, %27
  %40 = phi i32 [ %29, %27 ], [ %33, %31 ], [ %37, %35 ]
  %41 = phi i16 [ %30, %27 ], [ %34, %31 ], [ %38, %35 ]
  %42 = add nsw i32 %40, %1
  %43 = call i32 @pci_write_config_word(ptr noundef %4, i32 noundef 232, i16 noundef zeroext %41) #6
  %44 = call i32 @pci_read_config_byte(ptr noundef %4, i32 noundef 228, ptr noundef nonnull %3) #6
  %45 = load i8, ptr %3, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %42, 255
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br label %51

51:                                               ; preds = %39, %24, %19, %14, %9, %2
  %52 = phi i1 [ %50, %39 ], [ false, %2 ], [ false, %9 ], [ false, %14 ], [ false, %19 ], [ false, %24 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  ret i1 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uhci_reset_hc(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 192, i16 noundef zeroext -28928) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %4 = and i32 %1, 1048575
  %5 = or i32 %4, -18874368
  %6 = inttoptr i32 %5 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %6, i16 2) #6, !srcloc !23
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 1073740) #6
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #6, !srcloc !25
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !26
  %9 = and i16 %8, 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str) #7
  br label %13

13:                                               ; preds = %11, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %14 = add i32 %1, 4
  %15 = and i32 %14, 1048575
  %16 = or i32 %15, -18874368
  %17 = inttoptr i32 %16 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %17, i16 0) #6, !srcloc !23
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %6, i16 0) #6, !srcloc !23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uhci_check_and_reset_hc(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i16 0, ptr %3, align 2, !annotation !8
  %4 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 192, ptr noundef nonnull %3) #6
  %5 = load i16, ptr %3, align 2
  %6 = and i16 %5, 8383
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = and i32 %1, 1048575
  %10 = or i32 %9, -18874368
  %11 = inttoptr i32 %10 to ptr
  %12 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %11) #6, !srcloc !25
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !29
  %13 = and i16 %12, 73
  %14 = icmp eq i16 %13, 72
  br i1 %14, label %15, label %23

15:                                               ; preds = %8
  %16 = add i32 %1, 4
  %17 = and i32 %16, 1048575
  %18 = or i32 %17, -18874368
  %19 = inttoptr i32 %18 to ptr
  %20 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %19) #6, !srcloc !25
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !30
  %21 = and i16 %20, -3
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %15, %8, %2
  call void @uhci_reset_hc(ptr noundef %0, i32 noundef %1)
  br label %24

24:                                               ; preds = %23, %15
  %25 = phi i32 [ 1, %23 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_enable_intel_xhci_ports(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 4173
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, -28504
  br i1 %9, label %34, label %10

10:                                               ; preds = %6, %1
  %11 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef null) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %22, %10
  %14 = phi ptr [ %23, %22 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 11
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 787232
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 7
  %20 = load i16, ptr %19, align 8
  %21 = icmp eq i16 %20, -32634
  br i1 %21, label %25, label %22

22:                                               ; preds = %18, %13
  %23 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef nonnull %14) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %13

25:                                               ; preds = %18
  %26 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 220, ptr noundef nonnull %2) #6
  %27 = load i32, ptr %2, align 4
  %28 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 216, i32 noundef %27) #6
  %29 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 216, ptr noundef nonnull %2) #6
  %30 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 212, ptr noundef nonnull %2) #6
  %31 = load i32, ptr %2, align 4
  %32 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 208, i32 noundef %31) #6
  %33 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 208, ptr noundef nonnull %2) #6
  br label %34

34:                                               ; preds = %25, %22, %10, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_disable_xhci_ports(ptr noundef %0) #0 {
  %2 = tail call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 216, i32 noundef 0) #6
  %3 = tail call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 208, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_usb_early_handoff(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %10 = load i16, ptr %9, align 8
  switch i16 %10, label %23 [
    i16 6222, label %436
    i16 4358, label %11
  ]

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %13 = load i16, ptr %12, align 2
  %14 = icmp eq i16 %13, 13443
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.pci_bus, ptr %17, i32 0, i32 21, i32 25
  %19 = load ptr, ptr %18, align 8
  %20 = tail call ptr @of_get_parent(ptr noundef %19) #6
  %21 = tail call i32 @of_device_is_compatible(ptr noundef %20, ptr noundef nonnull @.str.4) #6
  %22 = icmp eq i32 %21, 0
  tail call void @of_node_put(ptr noundef %20) #6
  br i1 %22, label %23, label %436

23:                                               ; preds = %15, %11, %1
  %24 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %25 = load i32, ptr %24, align 8
  %26 = add i32 %25, -787200
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 28)
  %28 = icmp ult i32 %27, 4
  br i1 %28, label %29, label %436

29:                                               ; preds = %23
  %30 = tail call i32 @pci_enable_device(ptr noundef %0) #6
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.5) #7
  br label %436

34:                                               ; preds = %29
  %35 = load i32, ptr %24, align 8
  %36 = add i32 %35, -787200
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 28)
  switch i32 %37, label %435 [
    i32 0, label %38
    i32 1, label %102
    i32 2, label %166
    i32 3, label %287
  ]

38:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #6
  store i16 0, ptr %8, align 2, !annotation !8
  %39 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %8) #6
  %40 = icmp ne i32 %39, 0
  %41 = load i16, ptr %8, align 2
  %42 = and i16 %41, 1
  %43 = icmp eq i16 %42, 0
  %44 = select i1 %40, i1 true, i1 %43
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #6
  br i1 %44, label %435, label %45

45:                                               ; preds = %38
  %46 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 256
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %45
  %51 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 256
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 256
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 256
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 256
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 256
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %435, label %75

75:                                               ; preds = %70, %65, %60, %55, %50, %45
  %76 = phi i32 [ 0, %45 ], [ 1, %50 ], [ 2, %55 ], [ 3, %60 ], [ 4, %65 ], [ 5, %70 ]
  %77 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %76
  %78 = load i32, ptr %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %435, label %80

80:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #6
  store i16 0, ptr %7, align 2, !annotation !8
  %81 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 192, ptr noundef nonnull %7) #6
  %82 = load i16, ptr %7, align 2
  %83 = and i16 %82, 8383
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %80
  %86 = and i32 %78, 1048575
  %87 = or i32 %86, -18874368
  %88 = inttoptr i32 %87 to ptr
  %89 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %88) #6, !srcloc !25
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !29
  %90 = and i16 %89, 73
  %91 = icmp eq i16 %90, 72
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = add i32 %78, 4
  %94 = and i32 %93, 1048575
  %95 = or i32 %94, -18874368
  %96 = inttoptr i32 %95 to ptr
  %97 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %96) #6, !srcloc !25
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !30
  %98 = and i16 %97, -3
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %92, %85, %80
  call void @uhci_reset_hc(ptr noundef %0, i32 noundef %78) #6
  br label %101

101:                                              ; preds = %100, %92
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #6
  br label %435

102:                                              ; preds = %34
  %103 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %104 = load i32, ptr %103, align 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %435, label %106

106:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #6
  store i16 0, ptr %6, align 2, !annotation !8
  %107 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %6) #6
  %108 = icmp ne i32 %107, 0
  %109 = load i16, ptr %6, align 2
  %110 = and i16 %109, 2
  %111 = icmp eq i16 %110, 0
  %112 = select i1 %108, i1 true, i1 %111
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #6
  br i1 %112, label %435, label %113

113:                                              ; preds = %106
  %114 = call ptr @pci_ioremap_bar(ptr noundef %0, i32 noundef 0) #6
  %115 = icmp eq ptr %114, null
  br i1 %115, label %435, label %116

116:                                              ; preds = %113
  %117 = load i16, ptr %9, align 8
  %118 = icmp eq i16 %117, 4281
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %121 = load i16, ptr %120, align 2
  %122 = icmp eq i16 %121, 21047
  br label %123

123:                                              ; preds = %119, %116
  %124 = phi i1 [ false, %116 ], [ %122, %119 ]
  %125 = getelementptr i8, ptr %114, i32 4
  %126 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !31
  %127 = and i32 %126, 256
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %143, label %129

129:                                              ; preds = %123
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !32
  call void @arm_heavy_mb() #6
  %130 = getelementptr i8, ptr %114, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 1073741824) #6, !srcloc !15
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !33
  call void @arm_heavy_mb() #6
  %131 = getelementptr i8, ptr %114, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 8) #6, !srcloc !15
  br label %132

132:                                              ; preds = %137, %129
  %133 = phi i32 [ 500, %129 ], [ %138, %137 ]
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  %135 = and i32 %134, 256
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %132
  %138 = add nsw i32 %133, -10
  call void @msleep(i32 noundef 10) #6
  %139 = icmp ugt i32 %133, 10
  br i1 %139, label %132, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %142 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !35
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %141, ptr noundef nonnull @.str.6, i32 noundef %142) #7
  br label %143

143:                                              ; preds = %140, %132, %123
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !36
  call void @arm_heavy_mb() #6
  %144 = getelementptr i8, ptr %114, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 -1) #6, !srcloc !15
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !37
  call void @arm_heavy_mb() #6
  %145 = and i32 %126, 512
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %145) #6, !srcloc !15
  %146 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !38
  br i1 %124, label %150, label %147

147:                                              ; preds = %143
  %148 = getelementptr i8, ptr %114, i32 52
  %149 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !39
  br label %150

150:                                              ; preds = %147, %143
  %151 = phi i32 [ 0, %143 ], [ %149, %147 ]
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !40
  call void @arm_heavy_mb() #6
  %152 = getelementptr i8, ptr %114, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 1) #6, !srcloc !15
  br label %153

153:                                              ; preds = %158, %150
  %154 = phi i32 [ 30, %150 ], [ %160, %158 ]
  %155 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !41
  %156 = and i32 %155, 1
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %153
  %159 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %159(i32 noundef 214748) #6
  %160 = add nsw i32 %154, -1
  %161 = icmp ugt i32 %154, 1
  br i1 %161, label %153, label %162

162:                                              ; preds = %158, %153
  br i1 %124, label %165, label %163

163:                                              ; preds = %162
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !42
  call void @arm_heavy_mb() #6
  %164 = getelementptr i8, ptr %114, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 %151) #6, !srcloc !15
  br label %165

165:                                              ; preds = %163, %162
  call void @iounmap(ptr noundef nonnull %114) #6
  br label %435

166:                                              ; preds = %34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %167 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %168 = load i32, ptr %167, align 8
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %286, label %170

170:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #6
  store i16 0, ptr %4, align 2, !annotation !8
  %171 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %4) #6
  %172 = icmp ne i32 %171, 0
  %173 = load i16, ptr %4, align 2
  %174 = and i16 %173, 2
  %175 = icmp eq i16 %174, 0
  %176 = select i1 %172, i1 true, i1 %175
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #6
  br i1 %176, label %286, label %177

177:                                              ; preds = %170
  %178 = call ptr @pci_ioremap_bar(ptr noundef %0, i32 noundef 0) #6
  %179 = icmp eq ptr %178, null
  br i1 %179, label %286, label %180

180:                                              ; preds = %177
  %181 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %178) #6, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !43
  %182 = zext i8 %181 to i32
  %183 = getelementptr i8, ptr %178, i32 %182
  %184 = getelementptr i8, ptr %178, i32 8
  %185 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %184) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !44
  %186 = lshr i32 %185, 8
  %187 = and i32 %186, 255
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %265, label %189

189:                                              ; preds = %180
  %190 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %191 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %192 = getelementptr i8, ptr %183, i32 64
  br label %193

193:                                              ; preds = %259, %189
  %194 = phi i32 [ %187, %189 ], [ %262, %259 ]
  %195 = phi i32 [ %186, %189 ], [ %262, %259 ]
  %196 = phi i32 [ 64, %189 ], [ %197, %259 ]
  %197 = add nsw i32 %196, -1
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %264, label %199

199:                                              ; preds = %193
  %200 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %194, ptr noundef nonnull %5) #6
  %201 = load i32, ptr %5, align 4
  %202 = trunc i32 %201 to i8
  switch i8 %202, label %256 [
    i8 1, label %203
    i8 0, label %255
  ]

203:                                              ; preds = %199
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 %201, ptr %3, align 4
  %204 = load i16, ptr %9, align 8
  %205 = icmp eq i16 %204, -32634
  br i1 %205, label %206, label %211

206:                                              ; preds = %203
  %207 = load i16, ptr %190, align 2
  switch i16 %207, label %211 [
    i16 10298, label %208
    i16 10188, label %208
  ]

208:                                              ; preds = %206, %206
  %209 = call i32 @dmi_check_system(ptr noundef nonnull @ehci_dmi_nohandoff_table) #6
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %231

211:                                              ; preds = %208, %206, %203
  %212 = and i32 %201, 65536
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %227, label %214

214:                                              ; preds = %211
  %215 = and i32 %195, 255
  %216 = add nuw nsw i32 %215, 3
  %217 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef %216, i8 noundef zeroext 1) #6
  br label %218

218:                                              ; preds = %218, %214
  %219 = phi i32 [ 1000, %214 ], [ %220, %218 ]
  call void @msleep(i32 noundef 10) #6
  %220 = add nsw i32 %219, -10
  %221 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %215, ptr noundef nonnull %3) #6
  %222 = load i32, ptr %3, align 4
  %223 = and i32 %222, 65536
  %224 = icmp ne i32 %223, 0
  %225 = icmp ugt i32 %219, 10
  %226 = select i1 %224, i1 %225, i1 false
  br i1 %226, label %218, label %227

227:                                              ; preds = %218, %211
  %228 = phi i32 [ %201, %211 ], [ %222, %218 ]
  %229 = and i32 %228, 65536
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %238, label %242

231:                                              ; preds = %208
  %232 = and i32 %201, 65536
  %233 = icmp eq i32 %232, 0
  %234 = and i32 %195, 255
  br i1 %233, label %235, label %249

235:                                              ; preds = %231
  %236 = add nuw nsw i32 %234, 4
  %237 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %236, i32 noundef 0) #6
  br label %254

238:                                              ; preds = %227
  %239 = and i32 %195, 255
  %240 = add nuw nsw i32 %239, 4
  %241 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %240, i32 noundef 0) #6
  br i1 %213, label %254, label %248

242:                                              ; preds = %227
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %191, ptr noundef nonnull @.str.10, i32 noundef %228) #7
  %243 = and i32 %195, 255
  %244 = add nuw nsw i32 %243, 2
  %245 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef %244, i8 noundef zeroext 0) #6
  %246 = add nuw nsw i32 %243, 4
  %247 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %246, i32 noundef 0) #6
  br i1 %213, label %254, label %248

248:                                              ; preds = %242, %238
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !45
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %192, i32 0) #6, !srcloc !15
  br label %254

249:                                              ; preds = %231
  %250 = add nuw nsw i32 %234, 2
  %251 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef %250, i8 noundef zeroext 0) #6
  %252 = add nuw nsw i32 %234, 4
  %253 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %252, i32 noundef 0) #6
  br label %254

254:                                              ; preds = %249, %248, %242, %238, %235
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %259

255:                                              ; preds = %199
  store i32 0, ptr %5, align 4
  br label %256

256:                                              ; preds = %255, %199
  %257 = phi i32 [ 0, %255 ], [ %201, %199 ]
  %258 = and i32 %257, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %191, ptr noundef nonnull @.str.7, i32 noundef %258) #7
  br label %259

259:                                              ; preds = %256, %254
  %260 = load i32, ptr %5, align 4
  %261 = lshr i32 %260, 8
  %262 = and i32 %261, 255
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %265, label %193

264:                                              ; preds = %193
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %191, ptr noundef nonnull @.str.9) #7
  br label %265

265:                                              ; preds = %264, %259, %180
  %266 = getelementptr i8, ptr %183, i32 4
  %267 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %266) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !46
  %268 = and i32 %267, 4096
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %284

270:                                              ; preds = %265
  %271 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %183) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !47
  %272 = and i32 %271, -2
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !48
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 %272) #6, !srcloc !15
  br label %273

273:                                              ; preds = %278, %270
  %274 = phi i32 [ 2000, %270 ], [ %279, %278 ]
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !49
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %266, i32 63) #6, !srcloc !15
  %275 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %275(i32 noundef 21474800) #6
  %276 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %266) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !50
  %277 = icmp eq i32 %276, -1
  br i1 %277, label %284, label %278

278:                                              ; preds = %273
  %279 = add nsw i32 %274, -100
  %280 = and i32 %276, 4096
  %281 = icmp eq i32 %280, 0
  %282 = icmp ne i32 %279, 0
  %283 = select i1 %281, i1 %282, i1 false
  br i1 %283, label %273, label %284

284:                                              ; preds = %278, %273, %265
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !51
  call void @arm_heavy_mb() #6
  %285 = getelementptr i8, ptr %183, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %285, i32 0) #6, !srcloc !15
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !52
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %266, i32 63) #6, !srcloc !15
  call void @iounmap(ptr noundef nonnull %178) #6
  br label %286

286:                                              ; preds = %284, %177, %170, %166
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  br label %435

287:                                              ; preds = %34
  %288 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %289 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 1
  %290 = load i32, ptr %289, align 4
  %291 = icmp eq i32 %290, 0
  %292 = load i32, ptr %288, align 8
  %293 = add i32 %290, 1
  %294 = sub i32 %293, %292
  %295 = select i1 %291, i32 0, i32 %294
  %296 = icmp eq i32 %292, 0
  br i1 %296, label %435, label %297

297:                                              ; preds = %287
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  store i16 0, ptr %2, align 2, !annotation !8
  %298 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %2) #6
  %299 = icmp ne i32 %298, 0
  %300 = load i16, ptr %2, align 2
  %301 = and i16 %300, 2
  %302 = icmp eq i16 %301, 0
  %303 = select i1 %299, i1 true, i1 %302
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  br i1 %303, label %435, label %304

304:                                              ; preds = %297
  %305 = load i32, ptr %288, align 8
  %306 = call ptr @ioremap(i32 noundef %305, i32 noundef %295) #6
  %307 = icmp eq ptr %306, null
  br i1 %307, label %435, label %308

308:                                              ; preds = %304
  %309 = getelementptr i8, ptr %306, i32 16
  %310 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %309) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !53
  %311 = icmp eq i32 %310, -1
  %312 = lshr i32 %310, 14
  %313 = and i32 %312, 262140
  %314 = icmp eq i32 %313, 0
  %315 = select i1 %311, i1 true, i1 %314
  br i1 %315, label %382, label %316

316:                                              ; preds = %326, %308
  %317 = phi i32 [ %330, %326 ], [ %313, %308 ]
  %318 = getelementptr i8, ptr %306, i32 %317
  %319 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %318) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !54
  %320 = icmp eq i32 %319, -1
  br i1 %320, label %382, label %321

321:                                              ; preds = %316
  %322 = icmp ne i32 %317, 0
  %323 = and i32 %319, 255
  %324 = icmp eq i32 %323, 1
  %325 = select i1 %322, i1 %324, i1 false
  br i1 %325, label %332, label %326

326:                                              ; preds = %321
  %327 = lshr i32 %319, 8
  %328 = and i32 %327, 255
  %329 = shl nuw nsw i32 %328, 2
  %330 = add i32 %329, %317
  %331 = icmp eq i32 %328, 0
  br i1 %331, label %382, label %316

332:                                              ; preds = %321
  %333 = add i32 %317, 4
  %334 = icmp ugt i32 %333, %295
  br i1 %334, label %335, label %337

335:                                              ; preds = %332
  %336 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %336, ptr noundef nonnull @.str.11) #7
  br label %434

337:                                              ; preds = %332
  %338 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %318) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !55
  %339 = load i16, ptr %9, align 8
  switch i16 %339, label %351 [
    i16 4172, label %340
    i16 6418, label %344
  ]

340:                                              ; preds = %337
  %341 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %342 = load i16, ptr %341, align 2
  %343 = icmp eq i16 %342, -32191
  br i1 %343, label %348, label %351

344:                                              ; preds = %337
  %345 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %346 = load i16, ptr %345, align 2
  %347 = icmp eq i16 %346, 20
  br i1 %347, label %348, label %351

348:                                              ; preds = %344, %340
  %349 = and i32 %338, -16842753
  %350 = or i32 %349, 16777216
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !56
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %318, i32 %350) #6, !srcloc !15
  br label %351

351:                                              ; preds = %348, %344, %340, %337
  %352 = phi i32 [ %350, %348 ], [ %338, %344 ], [ %338, %340 ], [ %338, %337 ]
  %353 = and i32 %352, 65536
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %377, label %355

355:                                              ; preds = %351
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !57
  call void @arm_heavy_mb() #6
  %356 = or i32 %352, 16777216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %318, i32 %356) #6, !srcloc !15
  %357 = call i64 @ktime_get() #6
  %358 = add i64 %357, 1000000000
  %359 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %318) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !58
  %360 = and i32 %359, 65536
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %377, label %362

362:                                              ; preds = %365, %355
  %363 = call i64 @ktime_get() #6
  %364 = icmp sgt i64 %363, %358
  br i1 %364, label %370, label %365

365:                                              ; preds = %362
  %366 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %366(i32 noundef 2147480) #6
  %367 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %318) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !58
  %368 = and i32 %367, 65536
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %377, label %362

370:                                              ; preds = %362
  %371 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %318) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !59
  %372 = and i32 %371, 65536
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %377, label %374

374:                                              ; preds = %370
  %375 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %375, ptr noundef nonnull @.str.12, i32 noundef %352) #7
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !60
  call void @arm_heavy_mb() #6
  %376 = and i32 %352, -65537
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %318, i32 %376) #6, !srcloc !15
  br label %377

377:                                              ; preds = %374, %370, %365, %355, %351
  %378 = getelementptr i8, ptr %318, i32 4
  %379 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %378) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !61
  %380 = and i32 %379, 925678
  %381 = or i32 %380, -536870912
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !62
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %378, i32 %381) #6, !srcloc !15
  br label %382

382:                                              ; preds = %377, %326, %316, %308
  %383 = load i16, ptr %9, align 8
  %384 = icmp eq i16 %383, -32634
  br i1 %384, label %385, label %386

385:                                              ; preds = %382
  call void @usb_enable_intel_xhci_ports(ptr noundef %0) #6
  br label %386

386:                                              ; preds = %385, %382
  %387 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %306) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !63
  %388 = and i32 %387, 255
  %389 = getelementptr i8, ptr %306, i32 %388
  %390 = getelementptr i8, ptr %389, i32 4
  %391 = call i64 @ktime_get() #6
  %392 = add i64 %391, 5000000000
  %393 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %390) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !58
  %394 = and i32 %393, 2048
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %411, label %396

396:                                              ; preds = %399, %386
  %397 = call i64 @ktime_get() #6
  %398 = icmp sgt i64 %397, %392
  br i1 %398, label %404, label %399

399:                                              ; preds = %396
  %400 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %400(i32 noundef 2147480) #6
  %401 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %390) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !58
  %402 = and i32 %401, 2048
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %411, label %396

404:                                              ; preds = %396
  %405 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %390) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !59
  %406 = and i32 %405, 2048
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %411, label %408

408:                                              ; preds = %404
  %409 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %390) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !64
  %410 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %410, ptr noundef nonnull @.str.13, i32 noundef %409) #7
  br label %411

411:                                              ; preds = %408, %404, %399, %386
  %412 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %389) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !65
  %413 = and i32 %412, -1038
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !66
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %389, i32 %413) #6, !srcloc !15
  %414 = call i64 @ktime_get() #6
  %415 = add i64 %414, 32000000
  %416 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %390) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !58
  %417 = and i32 %416, 1
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %434

419:                                              ; preds = %422, %411
  %420 = call i64 @ktime_get() #6
  %421 = icmp sgt i64 %420, %415
  br i1 %421, label %427, label %422

422:                                              ; preds = %419
  %423 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %423(i32 noundef 26843500) #6
  %424 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %390) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !58
  %425 = and i32 %424, 1
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %419, label %434

427:                                              ; preds = %419
  %428 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %390) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !59
  %429 = and i32 %428, 1
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %434

431:                                              ; preds = %427
  %432 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %390) #6, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !67
  %433 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %433, ptr noundef nonnull @.str.14, i32 noundef 32000, i32 noundef %432) #7
  br label %434

434:                                              ; preds = %431, %427, %422, %411, %335
  call void @iounmap(ptr noundef nonnull %306) #6
  br label %435

435:                                              ; preds = %434, %304, %297, %287, %286, %165, %113, %106, %102, %101, %75, %70, %38, %34
  call void @pci_disable_device(ptr noundef %0) #6
  br label %436

436:                                              ; preds = %435, %32, %23, %15, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmi_check_system(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 2151384263}
!11 = !{i64 3848644}
!12 = !{i64 3849039}
!13 = !{i64 2151382715}
!14 = !{i64 2151385322}
!15 = !{i64 3848841}
!16 = !{i64 3849259}
!17 = !{i64 2151383909}
!18 = !{i64 2153783914}
!19 = !{i64 2153784337}
!20 = !{i64 2153784765}
!21 = !{i64 2153785423}
!22 = !{i64 2153796328}
!23 = !{i64 3848221}
!24 = !{i64 2153796611}
!25 = !{i64 3848421}
!26 = !{i64 2153797583}
!27 = !{i64 2153798384}
!28 = !{i64 2153798764}
!29 = !{i64 2153801161}
!30 = !{i64 2153802191}
!31 = !{i64 2153805494}
!32 = !{i64 2153805703}
!33 = !{i64 2153806036}
!34 = !{i64 2153806490}
!35 = !{i64 2153807548}
!36 = !{i64 2153807737}
!37 = !{i64 2153808092}
!38 = !{i64 2153808566}
!39 = !{i64 2153808887}
!40 = !{i64 2153809085}
!41 = !{i64 2153809539}
!42 = !{i64 2153810275}
!43 = !{i64 2153812671}
!44 = !{i64 2153812992}
!45 = !{i64 2153812356}
!46 = !{i64 2153814418}
!47 = !{i64 2153814758}
!48 = !{i64 2153814952}
!49 = !{i64 2153815265}
!50 = !{i64 2153816272}
!51 = !{i64 2153816465}
!52 = !{i64 2153816774}
!53 = !{i64 2153768411}
!54 = !{i64 2153768756}
!55 = !{i64 2153829078}
!56 = !{i64 2153829301}
!57 = !{i64 2153829655}
!58 = !{i64 2153818649}
!59 = !{i64 2153818941}
!60 = !{i64 2153830717}
!61 = !{i64 2153831258}
!62 = !{i64 2153831516}
!63 = !{i64 2153832140}
!64 = !{i64 2153832499}
!65 = !{i64 2153833589}
!66 = !{i64 2153833864}
!67 = !{i64 2153834360}
