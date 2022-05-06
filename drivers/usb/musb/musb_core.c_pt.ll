; ModuleID = '/llk/IR/drivers/usb/musb/musb_core.c_pt.bc'
source_filename = "../drivers/usb/musb/musb_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_musb_get_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22musb_get_mode\22\09\09\09\09\09"
module asm "__kstrtabns_musb_get_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_musb_readb:\09\09\09\09\09"
module asm "\09.asciz \09\22musb_readb\22\09\09\09\09\09"
module asm "__kstrtabns_musb_readb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_musb_writeb:\09\09\09\09\09"
module asm "\09.asciz \09\22musb_writeb\22\09\09\09\09\09"
module asm "__kstrtabns_musb_writeb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_musb_clearb:\09\09\09\09\09"
module asm "\09.asciz \09\22musb_clearb\22\09\09\09\09\09"
module asm "__kstrtabns_musb_clearb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_musb_readw:\09\09\09\09\09"
module asm "\09.asciz \09\22musb_readw\22\09\09\09\09\09"
module asm "__kstrtabns_musb_readw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_musb_writew:\09\09\09\09\09"
module asm "\09.asciz \09\22musb_writew\22\09\09\09\09\09"
module asm "__kstrtabns_musb_writew:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_musb_clearw:\09\09\09\09\09"
module asm "\09.asciz \09\22musb_clearw\22\09\09\09\09\09"
module asm "__kstrtabns_musb_clearw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_musb_readl:\09\09\09\09\09"
module asm "\09.asciz \09\22musb_readl\22\09\09\09\09\09"
module asm "__kstrtabns_musb_readl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_musb_writel:\09\09\09\09\09"
module asm "\09.asciz \09\22musb_writel\22\09\09\09\09\09"
module asm "__kstrtabns_musb_writel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_musb_dma_controller_create:\09\09\09\09\09"
module asm "\09.asciz \09\22musb_dma_controller_create\22\09\09\09\09\09"
module asm "__kstrtabns_musb_dma_controller_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_musb_dma_controller_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22musb_dma_controller_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_musb_dma_controller_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_musb_set_host:\09\09\09\09\09"
module asm "\09.asciz \09\22musb_set_host\22\09\09\09\09\09"
module asm "__kstrtabns_musb_set_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_musb_set_peripheral:\09\09\09\09\09"
module asm "\09.asciz \09\22musb_set_peripheral\22\09\09\09\09\09"
module asm "__kstrtabns_musb_set_peripheral:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_musb_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22musb_interrupt\22\09\09\09\09\09"
module asm "__kstrtabns_musb_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_musb_dma_completion:\09\09\09\09\09"
module asm "\09.asciz \09\22musb_dma_completion\22\09\09\09\09\09"
module asm "__kstrtabns_musb_dma_completion:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_musb_mailbox:\09\09\09\09\09"
module asm "\09.asciz \09\22musb_mailbox\22\09\09\09\09\09"
module asm "__kstrtabns_musb_mailbox:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_musb_queue_resume_work:\09\09\09\09\09"
module asm "\09.asciz \09\22musb_queue_resume_work\22\09\09\09\09\09"
module asm "__kstrtabns_musb_queue_resume_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.67 }
%union.anon.67 = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.musb_fifo_cfg = type { i8, i8, i8, i16 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_phy_io_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.musb = type { %struct.spinlock, %struct.spinlock, %struct.musb_io, ptr, %struct.musb_context_registers, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i16, i16, i32, i32, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, %struct.notifier_block, ptr, ptr, ptr, ptr, i8, i16, i16, ptr, ptr, i32, i8, [16 x %struct.musb_hw_ep], i16, i16, i8, ptr, i8, i32, i8, i32, i8, i32, i32, [3 x i8], i8, i8, i16, i8, %struct.usb_gadget, ptr, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.musb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_context_registers = type { i8, i8, i16, i8, i8, i8, i8, i8, i32, [16 x %struct.musb_csr_regs] }
%struct.musb_csr_regs = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.musb_hw_ep = type { ptr, ptr, ptr, i8, i8, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i8, i8, %struct.musb_ep, %struct.musb_ep }
%struct.musb_ep = type { %struct.usb_ep, [12 x i8], ptr, ptr, i8, i8, i8, i16, ptr, ptr, %struct.list_head, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.musb_hdrc_config = type { ptr, i32, i8, i8, i8, i32 }
%struct.musb_platform_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_pending_work = type { ptr, ptr, %struct.list_head }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.musb_hdrc_platform_data = type { i8, ptr, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.musb_qh = type { ptr, ptr, ptr, %struct.list_head, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, %struct.sg_mapping_iter, i8 }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@musb_driver_name = dso_local constant [10 x i8] c"musb-hdrc\00", align 1
@__UNIQUE_ID_description317 = internal constant [59 x i8] c"description=Inventra Dual-Role USB Controller Driver, v6.0\00", section ".modinfo", align 1
@__UNIQUE_ID_author318 = internal constant [49 x i8] c"author=Mentor Graphics, Texas Instruments, Nokia\00", section ".modinfo", align 1
@__UNIQUE_ID_license319 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias320 = internal constant [25 x i8] c"alias=platform:musb-hdrc\00", section ".modinfo", align 1
@__kstrtab_musb_get_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_musb_get_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_musb_get_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @musb_get_mode to i32), ptr @__kstrtab_musb_get_mode, ptr @__kstrtabns_musb_get_mode }, section "___ksymtab_gpl+musb_get_mode", align 4
@musb_readb = dso_local global ptr null, align 4
@__kstrtab_musb_readb = external dso_local constant [0 x i8], align 1
@__kstrtabns_musb_readb = external dso_local constant [0 x i8], align 1
@__ksymtab_musb_readb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @musb_readb to i32), ptr @__kstrtab_musb_readb, ptr @__kstrtabns_musb_readb }, section "___ksymtab_gpl+musb_readb", align 4
@musb_writeb = dso_local global ptr null, align 4
@__kstrtab_musb_writeb = external dso_local constant [0 x i8], align 1
@__kstrtabns_musb_writeb = external dso_local constant [0 x i8], align 1
@__ksymtab_musb_writeb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @musb_writeb to i32), ptr @__kstrtab_musb_writeb, ptr @__kstrtabns_musb_writeb }, section "___ksymtab_gpl+musb_writeb", align 4
@musb_clearb = dso_local global ptr null, align 4
@__kstrtab_musb_clearb = external dso_local constant [0 x i8], align 1
@__kstrtabns_musb_clearb = external dso_local constant [0 x i8], align 1
@__ksymtab_musb_clearb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @musb_clearb to i32), ptr @__kstrtab_musb_clearb, ptr @__kstrtabns_musb_clearb }, section "___ksymtab_gpl+musb_clearb", align 4
@musb_readw = dso_local global ptr null, align 4
@__kstrtab_musb_readw = external dso_local constant [0 x i8], align 1
@__kstrtabns_musb_readw = external dso_local constant [0 x i8], align 1
@__ksymtab_musb_readw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @musb_readw to i32), ptr @__kstrtab_musb_readw, ptr @__kstrtabns_musb_readw }, section "___ksymtab_gpl+musb_readw", align 4
@musb_writew = dso_local global ptr null, align 4
@__kstrtab_musb_writew = external dso_local constant [0 x i8], align 1
@__kstrtabns_musb_writew = external dso_local constant [0 x i8], align 1
@__ksymtab_musb_writew = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @musb_writew to i32), ptr @__kstrtab_musb_writew, ptr @__kstrtabns_musb_writew }, section "___ksymtab_gpl+musb_writew", align 4
@musb_clearw = dso_local global ptr null, align 4
@__kstrtab_musb_clearw = external dso_local constant [0 x i8], align 1
@__kstrtabns_musb_clearw = external dso_local constant [0 x i8], align 1
@__ksymtab_musb_clearw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @musb_clearw to i32), ptr @__kstrtab_musb_clearw, ptr @__kstrtabns_musb_clearw }, section "___ksymtab_gpl+musb_clearw", align 4
@__kstrtab_musb_readl = external dso_local constant [0 x i8], align 1
@__kstrtabns_musb_readl = external dso_local constant [0 x i8], align 1
@__ksymtab_musb_readl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @musb_readl to i32), ptr @__kstrtab_musb_readl, ptr @__kstrtabns_musb_readl }, section "___ksymtab_gpl+musb_readl", align 4
@__kstrtab_musb_writel = external dso_local constant [0 x i8], align 1
@__kstrtabns_musb_writel = external dso_local constant [0 x i8], align 1
@__ksymtab_musb_writel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @musb_writel to i32), ptr @__kstrtab_musb_writel, ptr @__kstrtabns_musb_writel }, section "___ksymtab_gpl+musb_writel", align 4
@musb_dma_controller_create = dso_local global ptr null, align 4
@__kstrtab_musb_dma_controller_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_musb_dma_controller_create = external dso_local constant [0 x i8], align 1
@__ksymtab_musb_dma_controller_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @musb_dma_controller_create to i32), ptr @__kstrtab_musb_dma_controller_create, ptr @__kstrtabns_musb_dma_controller_create }, section "___ksymtab+musb_dma_controller_create", align 4
@musb_dma_controller_destroy = dso_local global ptr null, align 4
@__kstrtab_musb_dma_controller_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_musb_dma_controller_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_musb_dma_controller_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @musb_dma_controller_destroy to i32), ptr @__kstrtab_musb_dma_controller_destroy, ptr @__kstrtabns_musb_dma_controller_destroy }, section "___ksymtab+musb_dma_controller_destroy", align 4
@.str = private unnamed_addr constant [21 x i8] c"Already in host mode\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: could not set host: %02x\0A\00", align 1
@__func__.musb_set_host = private unnamed_addr constant [14 x i8] c"musb_set_host\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Host mode set\00", align 1
@__kstrtab_musb_set_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_musb_set_host = external dso_local constant [0 x i8], align 1
@__ksymtab_musb_set_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @musb_set_host to i32), ptr @__kstrtab_musb_set_host, ptr @__kstrtabns_musb_set_host }, section "___ksymtab_gpl+musb_set_host", align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Already in peripheral mode\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"%s: could not set peripheral: %02x\0A\00", align 1
@__func__.musb_set_peripheral = private unnamed_addr constant [20 x i8] c"musb_set_peripheral\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Peripheral mode set\00", align 1
@__kstrtab_musb_set_peripheral = external dso_local constant [0 x i8], align 1
@__kstrtabns_musb_set_peripheral = external dso_local constant [0 x i8], align 1
@__ksymtab_musb_set_peripheral = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @musb_set_peripheral to i32), ptr @__kstrtab_musb_set_peripheral, ptr @__kstrtabns_musb_set_peripheral }, section "___ksymtab_gpl+musb_set_peripheral", align 4
@musb_test_packet = internal constant [53 x i8] c"\00\00\00\00\00\00\00\00\00\AA\AA\AA\AA\AA\AA\AA\AA\EE\EE\EE\EE\EE\EE\EE\EE\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\7F\BF\DF\EF\F7\FB\FD\FC~\BF\DF\EF\F7\FB\FD~", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"HNP: stop from %s\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"HNP: back to %s\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"HNP: Disabling HR\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"HNP: Stopping in unknown state %s\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"<== devctl %02x\00", align 1
@__param_str_fifo_mode = internal constant [10 x i8] c"fifo_mode\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@fifo_mode = internal global i16 0, align 2
@__param_fifo_mode = internal constant %struct.kernel_param { ptr @__param_str_fifo_mode, ptr @__this_module, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.67 { ptr @fifo_mode } }, section "__param", align 4
@__UNIQUE_ID_fifo_modetype325 = internal constant [26 x i8] c"parmtype=fifo_mode:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_fifo_mode326 = internal constant [46 x i8] c"parm=fifo_mode:initial endpoint configuration\00", section ".modinfo", align 1
@__kstrtab_musb_interrupt = external dso_local constant [0 x i8], align 1
@__kstrtabns_musb_interrupt = external dso_local constant [0 x i8], align 1
@__ksymtab_musb_interrupt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @musb_interrupt to i32), ptr @__kstrtab_musb_interrupt, ptr @__kstrtabns_musb_interrupt }, section "___ksymtab_gpl+musb_interrupt", align 4
@__param_str_use_dma = internal constant [8 x i8] c"use_dma\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@use_dma = internal global i8 1, align 1
@__param_use_dma = internal constant %struct.kernel_param { ptr @__param_str_use_dma, ptr @__this_module, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.67 { ptr @use_dma } }, section "__param", align 4
@__UNIQUE_ID_use_dmatype331 = internal constant [22 x i8] c"parmtype=use_dma:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_dma332 = internal constant [39 x i8] c"parm=use_dma:enable/disable use of DMA\00", section ".modinfo", align 1
@__kstrtab_musb_dma_completion = external dso_local constant [0 x i8], align 1
@__kstrtabns_musb_dma_completion = external dso_local constant [0 x i8], align 1
@__ksymtab_musb_dma_completion = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @musb_dma_completion to i32), ptr @__kstrtab_musb_dma_completion, ptr @__kstrtabns_musb_dma_completion }, section "___ksymtab_gpl+musb_dma_completion", align 4
@musb_phy_callback = internal unnamed_addr global ptr null, align 4
@__kstrtab_musb_mailbox = external dso_local constant [0 x i8], align 1
@__kstrtabns_musb_mailbox = external dso_local constant [0 x i8], align 1
@__ksymtab_musb_mailbox = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @musb_mailbox to i32), ptr @__kstrtab_musb_mailbox, ptr @__kstrtabns_musb_mailbox }, section "___ksymtab_gpl+musb_mailbox", align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"drivers/usb/musb/musb_core.c\00", align 1
@__kstrtab_musb_queue_resume_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_musb_queue_resume_work = external dso_local constant [0 x i8], align 1
@__ksymtab_musb_queue_resume_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @musb_queue_resume_work to i32), ptr @__kstrtab_musb_queue_resume_work, ptr @__kstrtabns_musb_queue_resume_work }, section "___ksymtab_gpl+musb_queue_resume_work", align 4
@__tracepoint_musb_readl = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_musb_writel = external dso_local global %struct.tracepoint, align 4
@__tracepoint_musb_state = external dso_local global %struct.tracepoint, align 4
@__tracepoint_musb_isr = external dso_local global %struct.tracepoint, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"<== DevCtl=%02x, int_usb=0x%x\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"RESUME (%s)\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.15 = private unnamed_addr constant [31 x i8] c"\014%s %d: bogus %s RESUME (%s)\0A\00", align 1
@__func__.musb_handle_intr_resume = private unnamed_addr constant [24 x i8] c"musb_handle_intr_resume\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"peripheral\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"SessReq while on B state\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"SESSION_REQUEST (%s)\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.22 = private unnamed_addr constant [52 x i8] c"VBUS_ERROR in %s (%02x, %s), retry #%d, port1 %08x\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"<SessEnd\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"<AValid\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"<VBusValid\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"VALID\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"SUSPEND (%s) devctl %02x\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"HNP: Setting timer for b_ase0_brst\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"REVISIT: SUSPEND as B_HOST\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"HNP: SUSPEND+CONNECT, now b_host\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"CONNECT as b_peripheral???\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"HNP: CONNECT, now b_host\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"CONNECT (%s) devctl %02x\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"DISCONNECT (%s) as %s, devctl %02x\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"Peripheral\00", align 1
@.str.37 = private unnamed_addr constant [47 x i8] c"\014%s %d: unhandled DISCONNECT transition (%s)\0A\00", align 1
@__func__.musb_handle_intr_disconnect = private unnamed_addr constant [28 x i8] c"musb_handle_intr_disconnect\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"Babble\0A\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"BUS RESET as %s\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"HNP: in %s, %d msec timeout\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"HNP: RESET (%s), to b_peripheral\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"Unhandled BUS RESET as %s\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mode_0_cfg = internal global [5 x %struct.musb_fifo_cfg] [%struct.musb_fifo_cfg { i8 1, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 1, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 2, i8 0, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 3, i8 0, i8 0, i16 256 }, %struct.musb_fifo_cfg { i8 4, i8 0, i8 0, i16 256 }], align 2
@mode_1_cfg = internal global [5 x %struct.musb_fifo_cfg] [%struct.musb_fifo_cfg { i8 1, i8 1, i8 1, i16 512 }, %struct.musb_fifo_cfg { i8 1, i8 2, i8 1, i16 512 }, %struct.musb_fifo_cfg { i8 2, i8 0, i8 1, i16 512 }, %struct.musb_fifo_cfg { i8 3, i8 0, i8 0, i16 256 }, %struct.musb_fifo_cfg { i8 4, i8 0, i8 0, i16 256 }], align 2
@mode_2_cfg = internal global [6 x %struct.musb_fifo_cfg] [%struct.musb_fifo_cfg { i8 1, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 1, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 2, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 2, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 3, i8 0, i8 0, i16 960 }, %struct.musb_fifo_cfg { i8 4, i8 0, i8 0, i16 1024 }], align 2
@mode_3_cfg = internal global [6 x %struct.musb_fifo_cfg] [%struct.musb_fifo_cfg { i8 1, i8 1, i8 1, i16 512 }, %struct.musb_fifo_cfg { i8 1, i8 2, i8 1, i16 512 }, %struct.musb_fifo_cfg { i8 2, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 2, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 3, i8 0, i8 0, i16 256 }, %struct.musb_fifo_cfg { i8 4, i8 0, i8 0, i16 256 }], align 2
@mode_4_cfg = internal global [27 x %struct.musb_fifo_cfg] [%struct.musb_fifo_cfg { i8 1, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 1, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 2, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 2, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 3, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 3, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 4, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 4, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 5, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 5, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 6, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 6, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 7, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 7, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 8, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 8, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 9, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 9, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 10, i8 1, i8 0, i16 256 }, %struct.musb_fifo_cfg { i8 10, i8 2, i8 0, i16 64 }, %struct.musb_fifo_cfg { i8 11, i8 1, i8 0, i16 256 }, %struct.musb_fifo_cfg { i8 11, i8 2, i8 0, i16 64 }, %struct.musb_fifo_cfg { i8 12, i8 1, i8 0, i16 256 }, %struct.musb_fifo_cfg { i8 12, i8 2, i8 0, i16 64 }, %struct.musb_fifo_cfg { i8 13, i8 0, i8 0, i16 4096 }, %struct.musb_fifo_cfg { i8 14, i8 0, i8 0, i16 1024 }, %struct.musb_fifo_cfg { i8 15, i8 0, i8 0, i16 1024 }], align 2
@mode_5_cfg = internal global [27 x %struct.musb_fifo_cfg] [%struct.musb_fifo_cfg { i8 1, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 1, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 2, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 2, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 3, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 3, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 4, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 4, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 5, i8 1, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 5, i8 2, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 6, i8 1, i8 0, i16 32 }, %struct.musb_fifo_cfg { i8 6, i8 2, i8 0, i16 32 }, %struct.musb_fifo_cfg { i8 7, i8 1, i8 0, i16 32 }, %struct.musb_fifo_cfg { i8 7, i8 2, i8 0, i16 32 }, %struct.musb_fifo_cfg { i8 8, i8 1, i8 0, i16 32 }, %struct.musb_fifo_cfg { i8 8, i8 2, i8 0, i16 32 }, %struct.musb_fifo_cfg { i8 9, i8 1, i8 0, i16 32 }, %struct.musb_fifo_cfg { i8 9, i8 2, i8 0, i16 32 }, %struct.musb_fifo_cfg { i8 10, i8 1, i8 0, i16 32 }, %struct.musb_fifo_cfg { i8 10, i8 2, i8 0, i16 32 }, %struct.musb_fifo_cfg { i8 11, i8 1, i8 0, i16 32 }, %struct.musb_fifo_cfg { i8 11, i8 2, i8 0, i16 32 }, %struct.musb_fifo_cfg { i8 12, i8 1, i8 0, i16 32 }, %struct.musb_fifo_cfg { i8 12, i8 2, i8 0, i16 32 }, %struct.musb_fifo_cfg { i8 13, i8 0, i8 0, i16 512 }, %struct.musb_fifo_cfg { i8 14, i8 0, i8 0, i16 1024 }, %struct.musb_fifo_cfg { i8 15, i8 0, i8 0, i16 1024 }], align 2
@ep0_cfg = internal global %struct.musb_fifo_cfg { i8 0, i8 0, i8 0, i16 64 }, align 2
@.str.43 = private unnamed_addr constant [29 x i8] c"<== static silicon ep config\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@musb_driver = internal global %struct.platform_driver { ptr @musb_probe, ptr @musb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @musb_driver_name, ptr @platform_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @musb_groups, ptr @musb_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@musb_groups = internal global [2 x ptr] [ptr @musb_group, ptr null], align 4
@musb_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @musb_suspend, ptr @musb_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @musb_runtime_suspend, ptr @musb_runtime_resume, ptr null }, align 4
@.str.44 = private unnamed_addr constant [3 x i8] c"mc\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"no platform_data?\0A\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"DMA controller not set\0A\00", align 1
@musb_ulpi_access = internal global %struct.usb_phy_io_ops { ptr @musb_ulpi_read, ptr @musb_ulpi_write }, align 4
@.str.47 = private unnamed_addr constant [24 x i8] c"request_irq %d failed!\0A\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"unsupported port mode %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"%s failed with status %d\0A\00", align 1
@__func__.musb_init_controller = private unnamed_addr constant [21 x i8] c"musb_init_controller\00", align 1
@__tracepoint_musb_readb = external dso_local global %struct.tracepoint, align 4
@__tracepoint_musb_writeb = external dso_local global %struct.tracepoint, align 4
@__tracepoint_musb_readw = external dso_local global %struct.tracepoint, align 4
@__tracepoint_musb_writew = external dso_local global %struct.tracepoint, align 4
@.str.50 = private unnamed_addr constant [22 x i8] c"Could not enable: %i\0A\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.52 = private unnamed_addr constant [48 x i8] c"Poll devctl in case of suspend after disconnect\00", align 1
@.str.53 = private unnamed_addr constant [47 x i8] c"Poll devctl on invalid vbus, assume no session\00", align 1
@.str.54 = private unnamed_addr constant [45 x i8] c"Poll devctl on possible host mode disconnect\00", align 1
@.str.55 = private unnamed_addr constant [42 x i8] c"Allow PM on possible host mode disconnect\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"Block PM on active session\00", align 1
@.str.57 = private unnamed_addr constant [25 x i8] c"Allow PM with no session\00", align 1
@.str.67 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.68 = private unnamed_addr constant [71 x i8] c"\013%s: kernel must disable external hubs, please fix the configuration\0A\00", align 1
@.str.69 = private unnamed_addr constant [25 x i8] c"%s: hw_ep %d%s, %smax %d\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"doublebuffer, \00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.74 = private unnamed_addr constant [24 x i8] c"hw_ep %d not configured\00", align 1
@.str.75 = private unnamed_addr constant [47 x i8] c"HNP: b_wait_acon timeout; back to b_peripheral\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"HNP: %s timeout\00", align 1
@.str.77 = private unnamed_addr constant [23 x i8] c"HNP: Unhandled mode %s\00", align 1
@musb_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @musb_attrs, ptr null }, align 4
@musb_attrs = internal global [4 x ptr] [ptr @dev_attr_mode, ptr @dev_attr_vbus, ptr @dev_attr_srp, ptr null], align 4
@dev_attr_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420 }, ptr @mode_show, ptr @mode_store }, align 4
@dev_attr_vbus = internal global %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 420 }, ptr @vbus_show, ptr @vbus_store }, align 4
@dev_attr_srp = internal global %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 128 }, ptr null, ptr @srp_store }, align 4
@.str.78 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"otg\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@.str.81 = private unnamed_addr constant [27 x i8] c"Vbus %s, timeout %lu msec\0A\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.85 = private unnamed_addr constant [31 x i8] c"Invalid VBUS timeout ms value\0A\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"srp\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"%hu\00", align 1
@.str.88 = private unnamed_addr constant [22 x i8] c"SRP: Value must be 1\0A\00", align 1
@.str.89 = private unnamed_addr constant [28 x i8] c"resume work failed with %i\0A\00", align 1
@.str.90 = private unnamed_addr constant [31 x i8] c"resume callback %p failed: %i\0A\00", align 1
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_alias320, ptr @__UNIQUE_ID_author318, ptr @__UNIQUE_ID_description317, ptr @__UNIQUE_ID_fifo_mode326, ptr @__UNIQUE_ID_fifo_modetype325, ptr @__UNIQUE_ID_license319, ptr @__UNIQUE_ID_use_dma332, ptr @__UNIQUE_ID_use_dmatype331, ptr @__ksymtab_musb_clearb, ptr @__ksymtab_musb_clearw, ptr @__ksymtab_musb_dma_completion, ptr @__ksymtab_musb_dma_controller_create, ptr @__ksymtab_musb_dma_controller_destroy, ptr @__ksymtab_musb_get_mode, ptr @__ksymtab_musb_interrupt, ptr @__ksymtab_musb_mailbox, ptr @__ksymtab_musb_queue_resume_work, ptr @__ksymtab_musb_readb, ptr @__ksymtab_musb_readl, ptr @__ksymtab_musb_readw, ptr @__ksymtab_musb_set_host, ptr @__ksymtab_musb_set_peripheral, ptr @__ksymtab_musb_writeb, ptr @__ksymtab_musb_writel, ptr @__ksymtab_musb_writew, ptr @__param_fifo_mode, ptr @__param_use_dma], section "llvm.metadata"
@switch.table.ep_config_from_table = private unnamed_addr constant [6 x i32] [i32 5, i32 5, i32 6, i32 6, i32 27, i32 27], align 4
@switch.table.ep_config_from_table.91 = private unnamed_addr constant [6 x ptr] [ptr @mode_0_cfg, ptr @mode_1_cfg, ptr @mode_2_cfg, ptr @mode_3_cfg, ptr @mode_4_cfg, ptr @mode_5_cfg], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @musb_get_mode(ptr noundef %0) #0 {
  %2 = tail call i32 @usb_get_dr_mode(ptr noundef %0) #10
  %3 = icmp eq i32 %2, 2
  %4 = select i1 %3, i32 2, i32 3
  %5 = icmp eq i32 %2, 1
  %6 = select i1 %5, i32 1, i32 %4
  ret i32 %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_dr_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @musb_readl(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 %1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !8
  %5 = tail call ptr @llvm.returnaddress(i32 0)
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_readl, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #10
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %20 = tail call i32 @__traceiter_musb_readl(ptr noundef null, ptr noundef %5, ptr noundef %0, i32 noundef %1, i32 noundef %4) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  br label %21

21:                                               ; preds = %19, %8, %2
  ret i32 %4
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_writel(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @llvm.returnaddress(i32 0)
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_writel, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = tail call ptr @llvm.thread.pointer() #10
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %19 = tail call i32 @__traceiter_musb_writel(ptr noundef null, ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef %2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %20

20:                                               ; preds = %18, %7, %3
  %21 = getelementptr i8, ptr %0, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %2) #10, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_read_fifo(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.musb, ptr %4, i32 0, i32 2, i32 3
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_write_fifo(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.musb, ptr %4, i32 0, i32 2, i32 4
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @musb_set_host(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %84, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @musb_readb, align 4
  %5 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %6 = load ptr, ptr %5, align 8
  %7 = tail call zeroext i8 %4(ptr noundef %6, i32 noundef 96) #10
  %8 = icmp sgt i8 %7, -1
  br i1 %8, label %9, label %25

9:                                                ; preds = %3
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_state, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %74

12:                                               ; preds = %9
  %13 = tail call ptr @llvm.thread.pointer() #10
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %74, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %24 = tail call i32 @__traceiter_musb_state(ptr noundef null, ptr noundef nonnull %0, i8 noundef zeroext %7, ptr noundef nonnull @.str) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %74

25:                                               ; preds = %3
  %26 = or i8 %7, 1
  %27 = load ptr, ptr @musb_writeb, align 4
  %28 = load ptr, ptr %5, align 8
  tail call void %27(ptr noundef %28, i32 noundef 96, i8 noundef zeroext %26) #10
  %29 = tail call i64 @ktime_get() #10
  %30 = add i64 %29, 1000000000
  %31 = load ptr, ptr @musb_readb, align 4
  %32 = load ptr, ptr %5, align 8
  %33 = tail call zeroext i8 %31(ptr noundef %32, i32 noundef 96) #10
  %34 = icmp sgt i8 %33, -1
  br i1 %34, label %47, label %35

35:                                               ; preds = %42, %25
  %36 = tail call i64 @ktime_get() #10
  %37 = icmp sgt i64 %36, %30
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load ptr, ptr @musb_readb, align 4
  %40 = load ptr, ptr %5, align 8
  %41 = tail call zeroext i8 %39(ptr noundef %40, i32 noundef 96) #10
  br label %47

42:                                               ; preds = %35
  tail call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #10
  %43 = load ptr, ptr @musb_readb, align 4
  %44 = load ptr, ptr %5, align 8
  %45 = tail call zeroext i8 %43(ptr noundef %44, i32 noundef 96) #10
  %46 = icmp sgt i8 %45, -1
  br i1 %46, label %47, label %35

47:                                               ; preds = %42, %38, %25
  %48 = phi i8 [ %41, %38 ], [ %33, %25 ], [ %45, %42 ]
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 128
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %54 = load ptr, ptr %53, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.musb_set_host, i32 noundef %49) #11
  br label %84

55:                                               ; preds = %47
  %56 = load ptr, ptr @musb_readb, align 4
  %57 = load ptr, ptr %5, align 8
  %58 = tail call zeroext i8 %56(ptr noundef %57, i32 noundef 96) #10
  %59 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_state, i32 0, i32 1), align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %55
  %62 = tail call ptr @llvm.thread.pointer() #10
  %63 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 8
  %65 = lshr i32 %64, 5
  %66 = getelementptr i32, ptr @__cpu_online_mask, i32 %65
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %64, 31
  %69 = shl nuw i32 1, %68
  %70 = and i32 %69, %67
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %61
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %73 = tail call i32 @__traceiter_musb_state(ptr noundef null, ptr noundef nonnull %0, i8 noundef zeroext %58, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %74

74:                                               ; preds = %72, %61, %55, %23, %12, %9
  %75 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %76 = load i24, ptr %75, align 4
  %77 = or i24 %76, 4
  store i24 %77, ptr %75, align 4
  %78 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.usb_phy, ptr %79, i32 0, i32 5
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.usb_otg, ptr %81, i32 0, i32 5
  store i32 6, ptr %82, align 4
  %83 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 44
  store i8 1, ptr %83, align 8
  br label %84

84:                                               ; preds = %74, %52, %1
  %85 = phi i32 [ -110, %52 ], [ 0, %74 ], [ -22, %1 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @musb_set_peripheral(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %84, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @musb_readb, align 4
  %5 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %6 = load ptr, ptr %5, align 8
  %7 = tail call zeroext i8 %4(ptr noundef %6, i32 noundef 96) #10
  %8 = icmp sgt i8 %7, -1
  br i1 %8, label %25, label %9

9:                                                ; preds = %3
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_state, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %74

12:                                               ; preds = %9
  %13 = tail call ptr @llvm.thread.pointer() #10
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %74, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %24 = tail call i32 @__traceiter_musb_state(ptr noundef null, ptr noundef nonnull %0, i8 noundef zeroext %7, ptr noundef nonnull @.str.3) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %74

25:                                               ; preds = %3
  %26 = and i8 %7, -2
  %27 = load ptr, ptr @musb_writeb, align 4
  %28 = load ptr, ptr %5, align 8
  tail call void %27(ptr noundef %28, i32 noundef 96, i8 noundef zeroext %26) #10
  %29 = tail call i64 @ktime_get() #10
  %30 = add i64 %29, 1000000000
  %31 = load ptr, ptr @musb_readb, align 4
  %32 = load ptr, ptr %5, align 8
  %33 = tail call zeroext i8 %31(ptr noundef %32, i32 noundef 96) #10
  %34 = icmp sgt i8 %33, -1
  br i1 %34, label %35, label %47

35:                                               ; preds = %42, %25
  %36 = tail call i64 @ktime_get() #10
  %37 = icmp sgt i64 %36, %30
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load ptr, ptr @musb_readb, align 4
  %40 = load ptr, ptr %5, align 8
  %41 = tail call zeroext i8 %39(ptr noundef %40, i32 noundef 96) #10
  br label %47

42:                                               ; preds = %35
  tail call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #10
  %43 = load ptr, ptr @musb_readb, align 4
  %44 = load ptr, ptr %5, align 8
  %45 = tail call zeroext i8 %43(ptr noundef %44, i32 noundef 96) #10
  %46 = icmp sgt i8 %45, -1
  br i1 %46, label %35, label %47

47:                                               ; preds = %42, %38, %25
  %48 = phi i8 [ %41, %38 ], [ %33, %25 ], [ %45, %42 ]
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 128
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %54 = load ptr, ptr %53, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.musb_set_peripheral, i32 noundef %49) #11
  br label %84

55:                                               ; preds = %47
  %56 = load ptr, ptr @musb_readb, align 4
  %57 = load ptr, ptr %5, align 8
  %58 = tail call zeroext i8 %56(ptr noundef %57, i32 noundef 96) #10
  %59 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_state, i32 0, i32 1), align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %55
  %62 = tail call ptr @llvm.thread.pointer() #10
  %63 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 8
  %65 = lshr i32 %64, 5
  %66 = getelementptr i32, ptr @__cpu_online_mask, i32 %65
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %64, 31
  %69 = shl nuw i32 1, %68
  %70 = and i32 %69, %67
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %61
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %73 = tail call i32 @__traceiter_musb_state(ptr noundef null, ptr noundef nonnull %0, i8 noundef zeroext %58, ptr noundef nonnull @.str.5) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %74

74:                                               ; preds = %72, %61, %55, %23, %12, %9
  %75 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %76 = load i24, ptr %75, align 4
  %77 = and i24 %76, -5
  store i24 %77, ptr %75, align 4
  %78 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.usb_phy, ptr %79, i32 0, i32 5
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.usb_otg, ptr %81, i32 0, i32 5
  store i32 1, ptr %82, align 4
  %83 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 44
  store i8 0, ptr %83, align 8
  br label %84

84:                                               ; preds = %74, %52, %1
  %85 = phi i32 [ 0, %74 ], [ -110, %52 ], [ -22, %1 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_load_testpacket(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35
  %3 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %8 = load ptr, ptr %7, align 8
  tail call void %6(ptr noundef %8, i8 noundef zeroext 0) #10
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.musb, ptr %9, i32 0, i32 2, i32 4
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef %2, i16 noundef zeroext 53, ptr noundef nonnull @musb_test_packet) #10
  %12 = load ptr, ptr @musb_writew, align 4
  tail call void %12(ptr noundef %4, i32 noundef 2, i16 noundef zeroext 2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_hnp_stop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 54
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_phy, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_otg, ptr %9, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = tail call ptr @usb_otg_state_string(i32 noundef %11) #10
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %12) #10
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.usb_phy, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usb_otg, ptr %15, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  switch i32 %17, label %41 [
    i32 11, label %18
    i32 5, label %25
  ]

18:                                               ; preds = %1
  tail call void @musb_g_disconnect(ptr noundef %0) #10
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr inbounds %struct.usb_phy, ptr %19, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.usb_otg, ptr %21, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = tail call ptr @usb_otg_state_string(i32 noundef %23) #10
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %24) #10
  br label %43

25:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.8) #10
  %26 = icmp eq ptr %3, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.usb_bus, ptr %3, i32 0, i32 6
  %29 = load i8, ptr %28, align 2
  %30 = and i8 %29, -2
  store i8 %30, ptr %28, align 2
  br label %31

31:                                               ; preds = %27, %25
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr inbounds %struct.usb_phy, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.usb_otg, ptr %34, i32 0, i32 5
  store i32 3, ptr %35, align 4
  %36 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 44
  store i8 0, ptr %36, align 8
  %37 = load ptr, ptr @musb_readb, align 4
  %38 = tail call zeroext i8 %37(ptr noundef %5, i32 noundef 1) #10
  %39 = or i8 %38, 2
  %40 = load ptr, ptr @musb_writeb, align 4
  tail call void %40(ptr noundef %5, i32 noundef 1, i8 noundef zeroext %39) #10
  br label %43

41:                                               ; preds = %1
  %42 = tail call ptr @usb_otg_state_string(i32 noundef %17) #10
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %42) #10
  br label %43

43:                                               ; preds = %41, %31, %18
  %44 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 13
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, -65537
  store i32 %46, ptr %44, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_otg_state_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_g_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_start(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr @musb_readb, align 4
  %5 = tail call zeroext i8 %4(ptr noundef %3, i32 noundef 96) #10
  %6 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %6) #10
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 37
  %9 = load i16, ptr %8, align 2
  %10 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 12
  store i16 %9, ptr %10, align 4
  %11 = load ptr, ptr @musb_writew, align 4
  tail call void %11(ptr noundef %7, i32 noundef 6, i16 noundef zeroext %9) #10
  %12 = load i16, ptr %8, align 2
  %13 = and i16 %12, -2
  %14 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 11
  store i16 %13, ptr %14, align 2
  %15 = load ptr, ptr @musb_writew, align 4
  tail call void %15(ptr noundef %7, i32 noundef 8, i16 noundef zeroext %13) #10
  %16 = load ptr, ptr @musb_writeb, align 4
  tail call void %16(ptr noundef %7, i32 noundef 11, i8 noundef zeroext -9) #10
  %17 = load ptr, ptr @musb_writeb, align 4
  tail call void %17(ptr noundef %3, i32 noundef 15, i8 noundef zeroext 0) #10
  %18 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 55
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.musb_hdrc_config, ptr %19, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 3
  %23 = icmp eq i32 %21, 0
  %24 = or i1 %22, %23
  %25 = select i1 %24, i8 -96, i8 -128
  %26 = load ptr, ptr @musb_writeb, align 4
  tail call void %26(ptr noundef %3, i32 noundef 1, i8 noundef zeroext %25) #10
  %27 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %28 = load i24, ptr %27, align 4
  %29 = and i24 %28, -5
  store i24 %29, ptr %27, align 4
  %30 = load ptr, ptr @musb_readb, align 4
  %31 = tail call zeroext i8 %30(ptr noundef %3, i32 noundef 96) #10
  %32 = and i8 %31, -2
  %33 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 41
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %50, label %36

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.usb_phy, ptr %38, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.usb_otg, ptr %40, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = icmp ne i32 %42, 8
  %44 = and i8 %31, 24
  %45 = icmp eq i8 %44, 24
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i24, ptr %27, align 4
  %49 = or i24 %48, 4
  store i24 %49, ptr %27, align 4
  br label %52

50:                                               ; preds = %36, %1
  %51 = or i8 %31, 1
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi i8 [ %32, %47 ], [ %51, %50 ]
  %54 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 3
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.musb_platform_ops, ptr %55, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  tail call void %57(ptr noundef %0) #10
  br label %60

60:                                               ; preds = %59, %52
  %61 = load ptr, ptr @musb_writeb, align 4
  tail call void %61(ptr noundef %3, i32 noundef 96, i8 noundef zeroext %53) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_stop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.musb_platform_ops, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0) #10
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr @musb_writeb, align 4
  tail call void %11(ptr noundef %10, i32 noundef 11, i8 noundef zeroext 0) #10
  %12 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 12
  store i16 0, ptr %12, align 4
  %13 = load ptr, ptr @musb_writew, align 4
  tail call void %13(ptr noundef %10, i32 noundef 6, i16 noundef zeroext 0) #10
  %14 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 11
  store i16 0, ptr %14, align 2
  %15 = load ptr, ptr @musb_writew, align 4
  tail call void %15(ptr noundef %10, i32 noundef 8, i16 noundef zeroext 0) #10
  %16 = load ptr, ptr @musb_clearb, align 4
  %17 = tail call zeroext i8 %16(ptr noundef %10, i32 noundef 10) #10
  %18 = load ptr, ptr @musb_clearw, align 4
  %19 = tail call zeroext i16 %18(ptr noundef %10, i32 noundef 2) #10
  %20 = load ptr, ptr @musb_clearw, align 4
  %21 = tail call zeroext i16 %20(ptr noundef %10, i32 noundef 4) #10
  %22 = load ptr, ptr @musb_writeb, align 4
  %23 = load ptr, ptr %9, align 8
  tail call void %22(ptr noundef %23, i32 noundef 96, i8 noundef zeroext 0) #10
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds %struct.musb_platform_ops, ptr %24, i32 0, i32 23
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %8
  tail call void %26(ptr noundef %0, i32 noundef 0) #10
  br label %29

29:                                               ; preds = %28, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @musb_interrupt(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !16
  %3 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 28
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 30
  %8 = load i16, ptr %7, align 8
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 29
  %12 = load i16, ptr %11, align 2
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %565, label %14

14:                                               ; preds = %10, %6, %1
  %15 = load ptr, ptr @musb_readb, align 4
  %16 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %17 = load ptr, ptr %16, align 8
  %18 = tail call zeroext i8 %15(ptr noundef %17, i32 noundef 96) #10
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_isr, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %14
  %22 = tail call ptr @llvm.thread.pointer() #10
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = lshr i32 %24, 5
  %26 = getelementptr i32, ptr @__cpu_online_mask, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %24, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %33 = tail call i32 @__traceiter_musb_isr(ptr noundef null, ptr noundef %0) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  br label %34

34:                                               ; preds = %32, %21, %14
  %35 = load i8, ptr %3, align 4
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %507, label %37

37:                                               ; preds = %34
  %38 = zext i8 %18 to i32
  %39 = zext i8 %35 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %38, i32 noundef %39) #10
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %97, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.usb_phy, ptr %44, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.usb_otg, ptr %46, i32 0, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = tail call ptr @usb_otg_state_string(i32 noundef %48) #10
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %49) #10
  %50 = and i32 %38, 4
  %51 = icmp eq i32 %50, 0
  %52 = load ptr, ptr %43, align 4
  %53 = getelementptr inbounds %struct.usb_phy, ptr %52, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.usb_otg, ptr %54, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  br i1 %51, label %81, label %57

57:                                               ; preds = %42
  switch i32 %56, label %78 [
    i32 10, label %58
    i32 4, label %73
  ]

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 13
  %60 = load i32, ptr %59, align 8
  %61 = or i32 %60, -2147221504
  store i32 %61, ptr %59, align 8
  %62 = load volatile i32, ptr @jiffies, align 64
  %63 = add i32 %62, 4
  %64 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 14
  store i32 %63, ptr %64, align 4
  %65 = load ptr, ptr %53, align 4
  %66 = getelementptr inbounds %struct.usb_otg, ptr %65, i32 0, i32 5
  store i32 9, ptr %66, align 4
  %67 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %68 = load i24, ptr %67, align 4
  %69 = or i24 %68, 4
  store i24 %69, ptr %67, align 4
  tail call void @musb_host_resume_root_hub(ptr noundef %0) #10
  %70 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 8
  %71 = load ptr, ptr @system_wq, align 4
  %72 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %71, ptr noundef %70, i32 noundef 4) #10
  br label %97

73:                                               ; preds = %57
  store i32 3, ptr %55, align 4
  %74 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %75 = load i24, ptr %74, align 4
  %76 = or i24 %75, 4
  store i24 %76, ptr %74, align 4
  %77 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 44
  store i8 0, ptr %77, align 8
  br label %97

78:                                               ; preds = %57
  %79 = tail call ptr @usb_otg_state_string(i32 noundef %56) #10
  %80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.musb_handle_intr_resume, i32 noundef 696, ptr noundef nonnull @.str.16, ptr noundef %79) #11
  br label %97

81:                                               ; preds = %42
  switch i32 %56, label %94 [
    i32 10, label %82
    i32 4, label %83
    i32 3, label %83
    i32 1, label %91
  ]

82:                                               ; preds = %81
  store i32 9, ptr %55, align 4
  tail call void @musb_host_resume_root_hub(ptr noundef %0) #10
  br label %97

83:                                               ; preds = %81, %81
  %84 = and i32 %38, 24
  %85 = icmp eq i32 %84, 24
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = load i8, ptr %3, align 4
  %88 = and i8 %87, -34
  %89 = or i8 %88, 32
  store i8 %89, ptr %3, align 4
  br label %97

90:                                               ; preds = %83
  tail call void @musb_g_resume(ptr noundef %0) #10
  br label %97

91:                                               ; preds = %81
  %92 = load i8, ptr %3, align 4
  %93 = and i8 %92, -2
  store i8 %93, ptr %3, align 4
  br label %97

94:                                               ; preds = %81
  %95 = tail call ptr @usb_otg_state_string(i32 noundef %56) #10
  %96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.musb_handle_intr_resume, i32 noundef 725, ptr noundef nonnull @.str.17, ptr noundef %95) #11
  br label %97

97:                                               ; preds = %94, %91, %90, %86, %82, %78, %73, %58, %37
  %98 = phi i32 [ 0, %37 ], [ 1, %58 ], [ 1, %73 ], [ 1, %78 ], [ 1, %82 ], [ 1, %86 ], [ 1, %90 ], [ 1, %91 ], [ 1, %94 ]
  %99 = and i32 %39, 64
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %127, label %101

101:                                              ; preds = %97
  %102 = and i8 %18, -104
  %103 = icmp eq i8 %102, -104
  br i1 %103, label %126, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr %16, align 8
  %106 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.usb_phy, ptr %107, i32 0, i32 5
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.usb_otg, ptr %109, i32 0, i32 5
  %111 = load i32, ptr %110, align 4
  %112 = tail call ptr @usb_otg_state_string(i32 noundef %111) #10
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %112) #10
  %113 = load ptr, ptr @musb_writeb, align 4
  tail call void %113(ptr noundef %105, i32 noundef 96, i8 noundef zeroext 1) #10
  %114 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 15
  store i8 1, ptr %114, align 8
  %115 = load ptr, ptr %106, align 4
  %116 = getelementptr inbounds %struct.usb_phy, ptr %115, i32 0, i32 5
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.usb_otg, ptr %117, i32 0, i32 5
  store i32 6, ptr %118, align 4
  %119 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 44
  store i8 1, ptr %119, align 8
  %120 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 3
  %121 = load ptr, ptr %120, align 8
  %122 = getelementptr inbounds %struct.musb_platform_ops, ptr %121, i32 0, i32 26
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %104
  tail call void %123(ptr noundef %0, i32 noundef 1) #10
  br label %127

126:                                              ; preds = %101
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.18) #10
  br label %507

127:                                              ; preds = %125, %104, %97
  %128 = phi i32 [ %98, %97 ], [ 1, %104 ], [ 1, %125 ]
  %129 = and i32 %39, 128
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %186, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.usb_phy, ptr %133, i32 0, i32 5
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.usb_otg, ptr %135, i32 0, i32 5
  %137 = load i32, ptr %136, align 4
  %138 = add i32 %137, -7
  %139 = icmp ult i32 %138, 3
  br i1 %139, label %140, label %155

140:                                              ; preds = %131
  %141 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 36
  %142 = load i16, ptr %141, align 4
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 13
  %146 = load i32, ptr %145, align 8
  %147 = or i32 %146, 524296
  store i32 %147, ptr %145, align 8
  br label %155

148:                                              ; preds = %140
  %149 = load ptr, ptr %16, align 8
  %150 = add i16 %142, -1
  store i16 %150, ptr %141, align 4
  %151 = or i8 %18, 1
  %152 = load ptr, ptr @musb_writeb, align 4
  tail call void %152(ptr noundef %149, i32 noundef 96, i8 noundef zeroext %151) #10
  %153 = load ptr, ptr %132, align 4
  %154 = zext i8 %151 to i32
  br label %155

155:                                              ; preds = %148, %144, %131
  %156 = phi i32 [ %154, %148 ], [ %38, %144 ], [ %38, %131 ]
  %157 = phi ptr [ %153, %148 ], [ %133, %144 ], [ %133, %131 ]
  %158 = phi i1 [ false, %148 ], [ true, %144 ], [ true, %131 ]
  %159 = phi ptr [ @.str.20, %148 ], [ @.str.21, %144 ], [ @.str.21, %131 ]
  %160 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %161 = load ptr, ptr %160, align 8
  %162 = getelementptr inbounds %struct.usb_phy, ptr %157, i32 0, i32 5
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.usb_otg, ptr %163, i32 0, i32 5
  %165 = load i32, ptr %164, align 4
  %166 = tail call ptr @usb_otg_state_string(i32 noundef %165) #10
  %167 = and i32 %156, 24
  switch i32 %167, label %170 [
    i32 0, label %171
    i32 8, label %168
    i32 16, label %169
  ]

168:                                              ; preds = %155
  br label %171

169:                                              ; preds = %155
  br label %171

170:                                              ; preds = %155
  br label %171

171:                                              ; preds = %170, %169, %168, %155
  %172 = phi ptr [ @.str.26, %170 ], [ @.str.25, %169 ], [ @.str.24, %168 ], [ @.str.23, %155 ]
  %173 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 36
  %174 = load i16, ptr %173, align 4
  %175 = zext i16 %174 to i32
  %176 = sub nsw i32 3, %175
  %177 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 13
  %178 = load i32, ptr %177, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull %159, ptr noundef %161, ptr noundef nonnull @.str.22, ptr noundef %166, i32 noundef %156, ptr noundef nonnull %172, i32 noundef %176, i32 noundef %178) #11
  br i1 %158, label %179, label %186

179:                                              ; preds = %171
  %180 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 3
  %181 = load ptr, ptr %180, align 8
  %182 = getelementptr inbounds %struct.musb_platform_ops, ptr %181, i32 0, i32 26
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %186, label %185

185:                                              ; preds = %179
  tail call void %183(ptr noundef %0, i32 noundef 0) #10
  br label %186

186:                                              ; preds = %185, %179, %171, %127
  %187 = phi i32 [ %128, %127 ], [ 1, %171 ], [ 1, %179 ], [ 1, %185 ]
  %188 = and i32 %39, 1
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %273, label %190

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr inbounds %struct.usb_phy, ptr %192, i32 0, i32 5
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr inbounds %struct.usb_otg, ptr %194, i32 0, i32 5
  %196 = load i32, ptr %195, align 4
  %197 = tail call ptr @usb_otg_state_string(i32 noundef %196) #10
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef %197, i32 noundef %38) #10
  %198 = load ptr, ptr %191, align 4
  %199 = getelementptr inbounds %struct.usb_phy, ptr %198, i32 0, i32 5
  %200 = load ptr, ptr %199, align 4
  %201 = getelementptr inbounds %struct.usb_otg, ptr %200, i32 0, i32 5
  %202 = load i32, ptr %201, align 4
  switch i32 %202, label %269 [
    i32 11, label %203
    i32 1, label %217
    i32 3, label %222
    i32 8, label %242
    i32 9, label %256
    i32 5, label %268
  ]

203:                                              ; preds = %190
  tail call void @musb_hnp_stop(ptr noundef %0) #10
  tail call void @musb_host_resume_root_hub(ptr noundef %0) #10
  tail call void @musb_root_disconnect(ptr noundef %0) #10
  %204 = load volatile i32, ptr @jiffies, align 64
  %205 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 45
  %206 = load i32, ptr %205, align 4
  %207 = icmp eq i32 %206, 0
  %208 = select i1 %207, i32 1100, i32 %206
  %209 = tail call i32 @__msecs_to_jiffies(i32 noundef %208) #10
  %210 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 3
  %211 = load ptr, ptr %210, align 8
  %212 = getelementptr inbounds %struct.musb_platform_ops, ptr %211, i32 0, i32 23
  %213 = load ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %273, label %215

215:                                              ; preds = %203
  %216 = add i32 %209, %204
  tail call void %213(ptr noundef %0, i32 noundef %216) #10
  br label %273

217:                                              ; preds = %190
  %218 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %219 = load i24, ptr %218, align 4
  %220 = and i24 %219, 4
  %221 = icmp eq i24 %220, 0
  br i1 %221, label %273, label %222

222:                                              ; preds = %217, %190
  tail call void @musb_g_suspend(ptr noundef %0) #10
  %223 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 52, i32 17
  %224 = load i32, ptr %223, align 4
  %225 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %226 = trunc i32 %224 to i24
  %227 = load i24, ptr %225, align 4
  %228 = lshr i24 %226, 1
  %229 = and i24 %228, 4
  %230 = and i24 %227, -5
  %231 = or i24 %229, %230
  store i24 %231, ptr %225, align 4
  %232 = icmp eq i24 %229, 0
  br i1 %232, label %273, label %233

233:                                              ; preds = %222
  %234 = load ptr, ptr %191, align 4
  %235 = getelementptr inbounds %struct.usb_phy, ptr %234, i32 0, i32 5
  %236 = load ptr, ptr %235, align 4
  %237 = getelementptr inbounds %struct.usb_otg, ptr %236, i32 0, i32 5
  store i32 4, ptr %237, align 4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.28) #10
  %238 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 21
  %239 = load volatile i32, ptr @jiffies, align 64
  %240 = add i32 %239, 10
  %241 = tail call i32 @mod_timer(ptr noundef %238, i32 noundef %240) #10
  br label %273

242:                                              ; preds = %190
  %243 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 45
  %244 = load i32, ptr %243, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %273, label %246

246:                                              ; preds = %242
  %247 = load volatile i32, ptr @jiffies, align 64
  %248 = tail call i32 @__msecs_to_jiffies(i32 noundef %244) #10
  %249 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 3
  %250 = load ptr, ptr %249, align 8
  %251 = getelementptr inbounds %struct.musb_platform_ops, ptr %250, i32 0, i32 23
  %252 = load ptr, ptr %251, align 4
  %253 = icmp eq ptr %252, null
  br i1 %253, label %273, label %254

254:                                              ; preds = %246
  %255 = add i32 %248, %247
  tail call void %252(ptr noundef %0, i32 noundef %255) #10
  br label %273

256:                                              ; preds = %190
  store i32 10, ptr %201, align 4
  %257 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 54
  %258 = load ptr, ptr %257, align 4
  %259 = getelementptr inbounds %struct.usb_bus, ptr %258, i32 0, i32 6
  %260 = load i8, ptr %259, align 2
  %261 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %262 = load i24, ptr %261, align 4
  %263 = shl i8 %260, 1
  %264 = and i8 %263, 4
  %265 = zext i8 %264 to i24
  %266 = and i24 %262, -5
  %267 = or i24 %266, %265
  store i24 %267, ptr %261, align 4
  br label %273

268:                                              ; preds = %190
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.29) #10
  br label %273

269:                                              ; preds = %190
  %270 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %271 = load i24, ptr %270, align 4
  %272 = and i24 %271, -5
  store i24 %272, ptr %270, align 4
  br label %273

273:                                              ; preds = %269, %268, %256, %254, %246, %242, %233, %222, %217, %215, %203, %186
  %274 = phi i32 [ %187, %186 ], [ 1, %203 ], [ 1, %215 ], [ 1, %217 ], [ 1, %222 ], [ 1, %233 ], [ 1, %242 ], [ 1, %246 ], [ 1, %254 ], [ 1, %256 ], [ 1, %268 ], [ 1, %269 ]
  %275 = and i32 %39, 16
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %344, label %277

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 54
  %279 = load ptr, ptr %278, align 4
  %280 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %281 = load i24, ptr %280, align 4
  %282 = or i24 %281, 4
  store i24 %282, ptr %280, align 4
  %283 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 15
  store i8 1, ptr %283, align 8
  %284 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 37
  %285 = load i16, ptr %284, align 2
  %286 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 12
  store i16 %285, ptr %286, align 4
  %287 = load ptr, ptr @musb_writew, align 4
  %288 = load ptr, ptr %16, align 8
  tail call void %287(ptr noundef %288, i32 noundef 6, i16 noundef zeroext %285) #10
  %289 = load i16, ptr %284, align 2
  %290 = and i16 %289, -2
  %291 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 11
  store i16 %290, ptr %291, align 2
  %292 = load ptr, ptr @musb_writew, align 4
  %293 = load ptr, ptr %16, align 8
  tail call void %292(ptr noundef %293, i32 noundef 8, i16 noundef zeroext %290) #10
  %294 = load ptr, ptr @musb_writeb, align 4
  %295 = load ptr, ptr %16, align 8
  tail call void %294(ptr noundef %295, i32 noundef 11, i8 noundef zeroext -9) #10
  %296 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 13
  %297 = load i32, ptr %296, align 8
  %298 = and i32 %297, -67076
  %299 = and i32 %38, 32
  %300 = icmp eq i32 %299, 0
  %301 = select i1 %300, i32 65537, i32 66049
  %302 = or i32 %298, %301
  store i32 %302, ptr %296, align 8
  %303 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %304 = load ptr, ptr %303, align 4
  %305 = getelementptr inbounds %struct.usb_phy, ptr %304, i32 0, i32 5
  %306 = load ptr, ptr %305, align 4
  %307 = getelementptr inbounds %struct.usb_otg, ptr %306, i32 0, i32 5
  %308 = load i32, ptr %307, align 4
  switch i32 %308, label %328 [
    i32 3, label %309
    i32 4, label %313
  ]

309:                                              ; preds = %277
  %310 = and i8 %35, 1
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %309
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.31) #10
  br label %337

313:                                              ; preds = %309, %277
  %314 = phi ptr [ @.str.30, %309 ], [ @.str.32, %277 ]
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull %314) #10
  %315 = load ptr, ptr %303, align 4
  %316 = getelementptr inbounds %struct.usb_phy, ptr %315, i32 0, i32 5
  %317 = load ptr, ptr %316, align 4
  %318 = getelementptr inbounds %struct.usb_otg, ptr %317, i32 0, i32 5
  store i32 5, ptr %318, align 4
  %319 = load ptr, ptr %278, align 4
  %320 = icmp eq ptr %319, null
  br i1 %320, label %325, label %321

321:                                              ; preds = %313
  %322 = getelementptr inbounds %struct.usb_bus, ptr %319, i32 0, i32 6
  %323 = load i8, ptr %322, align 2
  %324 = or i8 %323, 1
  store i8 %324, ptr %322, align 2
  br label %325

325:                                              ; preds = %321, %313
  %326 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 21
  %327 = tail call i32 @del_timer(ptr noundef %326) #10
  br label %337

328:                                              ; preds = %277
  %329 = and i32 %38, 24
  %330 = icmp eq i32 %329, 24
  br i1 %330, label %331, label %337

331:                                              ; preds = %328
  store i32 9, ptr %307, align 4
  %332 = icmp eq ptr %279, null
  br i1 %332, label %337, label %333

333:                                              ; preds = %331
  %334 = getelementptr inbounds %struct.usb_bus, ptr %279, i32 0, i32 6
  %335 = load i8, ptr %334, align 2
  %336 = and i8 %335, -2
  store i8 %336, ptr %334, align 2
  br label %337

337:                                              ; preds = %333, %331, %328, %325, %312
  tail call void @musb_host_poke_root_hub(ptr noundef %0) #10
  %338 = load ptr, ptr %303, align 4
  %339 = getelementptr inbounds %struct.usb_phy, ptr %338, i32 0, i32 5
  %340 = load ptr, ptr %339, align 4
  %341 = getelementptr inbounds %struct.usb_otg, ptr %340, i32 0, i32 5
  %342 = load i32, ptr %341, align 4
  %343 = tail call ptr @usb_otg_state_string(i32 noundef %342) #10
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef %343, i32 noundef %38) #10
  br label %344

344:                                              ; preds = %337, %273
  %345 = phi i32 [ 1, %337 ], [ %274, %273 ]
  %346 = and i32 %39, 32
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %397, label %348

348:                                              ; preds = %344
  %349 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %350 = load ptr, ptr %349, align 4
  %351 = getelementptr inbounds %struct.usb_phy, ptr %350, i32 0, i32 5
  %352 = load ptr, ptr %351, align 4
  %353 = getelementptr inbounds %struct.usb_otg, ptr %352, i32 0, i32 5
  %354 = load i32, ptr %353, align 4
  %355 = tail call ptr @usb_otg_state_string(i32 noundef %354) #10
  %356 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 44
  %357 = load i8, ptr %356, align 8, !range !19
  %358 = icmp eq i8 %357, 0
  %359 = select i1 %358, ptr @.str.36, ptr @.str.35
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef %355, ptr noundef nonnull %359, i32 noundef %38) #10
  %360 = load ptr, ptr %349, align 4
  %361 = getelementptr inbounds %struct.usb_phy, ptr %360, i32 0, i32 5
  %362 = load ptr, ptr %361, align 4
  %363 = getelementptr inbounds %struct.usb_otg, ptr %362, i32 0, i32 5
  %364 = load i32, ptr %363, align 4
  switch i32 %364, label %394 [
    i32 9, label %365
    i32 10, label %365
    i32 5, label %379
    i32 11, label %392
    i32 4, label %393
    i32 3, label %393
    i32 1, label %393
  ]

365:                                              ; preds = %348, %348
  tail call void @musb_host_resume_root_hub(ptr noundef %0) #10
  tail call void @musb_root_disconnect(ptr noundef %0) #10
  %366 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 45
  %367 = load i32, ptr %366, align 4
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %397, label %369

369:                                              ; preds = %365
  %370 = load volatile i32, ptr @jiffies, align 64
  %371 = tail call i32 @__msecs_to_jiffies(i32 noundef %367) #10
  %372 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 3
  %373 = load ptr, ptr %372, align 8
  %374 = getelementptr inbounds %struct.musb_platform_ops, ptr %373, i32 0, i32 23
  %375 = load ptr, ptr %374, align 4
  %376 = icmp eq ptr %375, null
  br i1 %376, label %397, label %377

377:                                              ; preds = %369
  %378 = add i32 %371, %370
  tail call void %375(ptr noundef %0, i32 noundef %378) #10
  br label %397

379:                                              ; preds = %348
  tail call void @musb_root_disconnect(ptr noundef %0) #10
  %380 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 54
  %381 = load ptr, ptr %380, align 4
  %382 = icmp eq ptr %381, null
  br i1 %382, label %387, label %383

383:                                              ; preds = %379
  %384 = getelementptr inbounds %struct.usb_bus, ptr %381, i32 0, i32 6
  %385 = load i8, ptr %384, align 2
  %386 = and i8 %385, -2
  store i8 %386, ptr %384, align 2
  br label %387

387:                                              ; preds = %383, %379
  %388 = load ptr, ptr %349, align 4
  %389 = getelementptr inbounds %struct.usb_phy, ptr %388, i32 0, i32 5
  %390 = load ptr, ptr %389, align 4
  %391 = getelementptr inbounds %struct.usb_otg, ptr %390, i32 0, i32 5
  store i32 3, ptr %391, align 4
  store i8 0, ptr %356, align 8
  tail call void @musb_g_disconnect(ptr noundef %0) #10
  br label %397

392:                                              ; preds = %348
  tail call void @musb_hnp_stop(ptr noundef %0) #10
  tail call void @musb_root_disconnect(ptr noundef %0) #10
  br label %393

393:                                              ; preds = %392, %348, %348, %348
  tail call void @musb_g_disconnect(ptr noundef %0) #10
  br label %397

394:                                              ; preds = %348
  %395 = tail call ptr @usb_otg_state_string(i32 noundef %364) #10
  %396 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.musb_handle_intr_disconnect, i32 noundef 984, ptr noundef %395) #11
  br label %397

397:                                              ; preds = %394, %393, %387, %377, %369, %365, %344
  %398 = phi i32 [ %345, %344 ], [ 1, %365 ], [ 1, %369 ], [ 1, %377 ], [ 1, %387 ], [ 1, %393 ], [ 1, %394 ]
  %399 = and i32 %39, 4
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %502, label %401

401:                                              ; preds = %397
  %402 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 44
  %403 = load i8, ptr %402, align 8, !range !19
  %404 = icmp eq i8 %403, 0
  br i1 %404, label %457, label %405

405:                                              ; preds = %401
  %406 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %407 = load ptr, ptr %406, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %407, ptr noundef nonnull @.str.38) #11
  %408 = load ptr, ptr %16, align 8
  %409 = load ptr, ptr @musb_writeb, align 4
  tail call void %409(ptr noundef %408, i32 noundef 11, i8 noundef zeroext 0) #10
  %410 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 12
  store i16 0, ptr %410, align 4
  %411 = load ptr, ptr @musb_writew, align 4
  tail call void %411(ptr noundef %408, i32 noundef 6, i16 noundef zeroext 0) #10
  %412 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 11
  store i16 0, ptr %412, align 2
  %413 = load ptr, ptr @musb_writew, align 4
  tail call void %413(ptr noundef %408, i32 noundef 8, i16 noundef zeroext 0) #10
  %414 = load ptr, ptr @musb_clearb, align 4
  %415 = tail call zeroext i8 %414(ptr noundef %408, i32 noundef 10) #10
  %416 = load ptr, ptr @musb_clearw, align 4
  %417 = tail call zeroext i16 %416(ptr noundef %408, i32 noundef 2) #10
  %418 = load ptr, ptr @musb_clearw, align 4
  %419 = tail call zeroext i16 %418(ptr noundef %408, i32 noundef 4) #10
  %420 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %420(i32 noundef 2147480) #10
  %421 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 3
  %422 = load ptr, ptr %421, align 8
  %423 = getelementptr inbounds %struct.musb_platform_ops, ptr %422, i32 0, i32 24
  %424 = load ptr, ptr %423, align 4
  %425 = icmp eq ptr %424, null
  br i1 %425, label %438, label %426

426:                                              ; preds = %405
  %427 = tail call i32 %424(ptr noundef %0) #10
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %438, label %429

429:                                              ; preds = %426
  %430 = load ptr, ptr %16, align 8
  %431 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 37
  %432 = load i16, ptr %431, align 2
  store i16 %432, ptr %410, align 4
  %433 = load ptr, ptr @musb_writew, align 4
  tail call void %433(ptr noundef %430, i32 noundef 6, i16 noundef zeroext %432) #10
  %434 = load i16, ptr %431, align 2
  %435 = and i16 %434, -2
  store i16 %435, ptr %412, align 2
  %436 = load ptr, ptr @musb_writew, align 4
  tail call void %436(ptr noundef %430, i32 noundef 8, i16 noundef zeroext %435) #10
  %437 = load ptr, ptr @musb_writeb, align 4
  tail call void %437(ptr noundef %430, i32 noundef 11, i8 noundef zeroext -9) #10
  br label %502

438:                                              ; preds = %426, %405
  %439 = load ptr, ptr @musb_readb, align 4
  %440 = load ptr, ptr %16, align 8
  %441 = tail call zeroext i8 %439(ptr noundef %440, i32 noundef 96) #10
  %442 = and i8 %441, -2
  %443 = load ptr, ptr @musb_writeb, align 4
  %444 = load ptr, ptr %16, align 8
  tail call void %443(ptr noundef %444, i32 noundef 96, i8 noundef zeroext %442) #10
  tail call void @musb_root_disconnect(ptr noundef %0) #10
  %445 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %446 = load i24, ptr %445, align 4
  %447 = and i24 %446, 64
  %448 = icmp eq i24 %447, 0
  br i1 %448, label %451, label %449

449:                                              ; preds = %438
  %450 = tail call fastcc i32 @ep_config_from_table(ptr noundef %0) #10
  br label %453

451:                                              ; preds = %438
  %452 = tail call fastcc i32 @ep_config_from_hw(ptr noundef %0) #10
  br label %453

453:                                              ; preds = %451, %449
  %454 = phi i32 [ %450, %449 ], [ %452, %451 ]
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %502

456:                                              ; preds = %453
  tail call void @musb_start(ptr noundef %0) #10
  br label %502

457:                                              ; preds = %401
  %458 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %459 = load ptr, ptr %458, align 4
  %460 = getelementptr inbounds %struct.usb_phy, ptr %459, i32 0, i32 5
  %461 = load ptr, ptr %460, align 4
  %462 = getelementptr inbounds %struct.usb_otg, ptr %461, i32 0, i32 5
  %463 = load i32, ptr %462, align 4
  %464 = tail call ptr @usb_otg_state_string(i32 noundef %463) #10
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef %464) #10
  %465 = load ptr, ptr %458, align 4
  %466 = getelementptr inbounds %struct.usb_phy, ptr %465, i32 0, i32 5
  %467 = load ptr, ptr %466, align 4
  %468 = getelementptr inbounds %struct.usb_otg, ptr %467, i32 0, i32 5
  %469 = load i32, ptr %468, align 4
  switch i32 %469, label %500 [
    i32 10, label %470
    i32 8, label %476
    i32 11, label %489
    i32 4, label %492
    i32 1, label %498
    i32 3, label %499
  ]

470:                                              ; preds = %457
  tail call void @musb_g_reset(ptr noundef %0) #10
  %471 = load ptr, ptr %458, align 4
  %472 = getelementptr inbounds %struct.usb_phy, ptr %471, i32 0, i32 5
  %473 = load ptr, ptr %472, align 4
  %474 = getelementptr inbounds %struct.usb_otg, ptr %473, i32 0, i32 5
  %475 = load i32, ptr %474, align 4
  br label %476

476:                                              ; preds = %470, %457
  %477 = phi i32 [ %469, %457 ], [ %475, %470 ]
  %478 = tail call ptr @usb_otg_state_string(i32 noundef %477) #10
  %479 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 45
  %480 = load i32, ptr %479, align 4
  %481 = tail call i32 @llvm.smax.i32(i32 %480, i32 1100) #10
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef %478, i32 noundef %481) #10
  %482 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 21
  %483 = load volatile i32, ptr @jiffies, align 64
  %484 = load i32, ptr %479, align 4
  %485 = tail call i32 @llvm.smax.i32(i32 %484, i32 1100) #10
  %486 = tail call i32 @__msecs_to_jiffies(i32 noundef %485) #10
  %487 = add i32 %486, %483
  %488 = tail call i32 @mod_timer(ptr noundef %482, i32 noundef %487) #10
  br label %502

489:                                              ; preds = %457
  %490 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 21
  %491 = tail call i32 @del_timer(ptr noundef %490) #10
  tail call void @musb_g_reset(ptr noundef %0) #10
  br label %502

492:                                              ; preds = %457
  %493 = tail call ptr @usb_otg_state_string(i32 noundef 4) #10
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef %493) #10
  %494 = load ptr, ptr %458, align 4
  %495 = getelementptr inbounds %struct.usb_phy, ptr %494, i32 0, i32 5
  %496 = load ptr, ptr %495, align 4
  %497 = getelementptr inbounds %struct.usb_otg, ptr %496, i32 0, i32 5
  store i32 3, ptr %497, align 4
  tail call void @musb_g_reset(ptr noundef %0) #10
  br label %502

498:                                              ; preds = %457
  store i32 3, ptr %468, align 4
  br label %499

499:                                              ; preds = %498, %457
  tail call void @musb_g_reset(ptr noundef %0) #10
  br label %502

500:                                              ; preds = %457
  %501 = tail call ptr @usb_otg_state_string(i32 noundef %469) #10
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef %501) #10
  br label %502

502:                                              ; preds = %500, %499, %492, %489, %476, %456, %453, %429, %397
  %503 = phi i32 [ %398, %397 ], [ 1, %429 ], [ 1, %453 ], [ 1, %456 ], [ 1, %476 ], [ 1, %489 ], [ 1, %492 ], [ 1, %499 ], [ 1, %500 ]
  %504 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 6
  %505 = load ptr, ptr @system_wq, align 4
  %506 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %505, ptr noundef %504, i32 noundef 0) #10
  br label %507

507:                                              ; preds = %502, %126, %34
  %508 = phi i32 [ 0, %34 ], [ %503, %502 ], [ 1, %126 ]
  %509 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 30
  %510 = load i16, ptr %509, align 8
  %511 = and i16 %510, 1
  %512 = icmp eq i16 %511, 0
  br i1 %512, label %526, label %513

513:                                              ; preds = %507
  %514 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 44
  %515 = load i8, ptr %514, align 8, !range !19
  %516 = icmp eq i8 %515, 0
  br i1 %516, label %519, label %517

517:                                              ; preds = %513
  %518 = tail call i32 @musb_h_ep0_irq(ptr noundef %0) #10
  br label %521

519:                                              ; preds = %513
  %520 = tail call i32 @musb_g_ep0_irq(ptr noundef %0) #10
  br label %521

521:                                              ; preds = %519, %517
  %522 = phi i32 [ %518, %517 ], [ %520, %519 ]
  %523 = or i32 %522, %508
  %524 = load i16, ptr %509, align 8
  %525 = and i16 %524, -2
  store i16 %525, ptr %509, align 8
  br label %526

526:                                              ; preds = %521, %507
  %527 = phi i16 [ %525, %521 ], [ %510, %507 ]
  %528 = phi i32 [ %523, %521 ], [ %508, %507 ]
  %529 = zext i16 %527 to i32
  store i32 %529, ptr %2, align 4
  %530 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 16, i32 noundef 0) #10
  %531 = icmp ult i32 %530, 16
  br i1 %531, label %532, label %545

532:                                              ; preds = %526
  %533 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 44
  br label %534

534:                                              ; preds = %541, %532
  %535 = phi i32 [ %530, %532 ], [ %543, %541 ]
  %536 = load i8, ptr %533, align 8, !range !19
  %537 = icmp eq i8 %536, 0
  %538 = trunc i32 %535 to i8
  br i1 %537, label %540, label %539

539:                                              ; preds = %534
  call void @musb_host_tx(ptr noundef %0, i8 noundef zeroext %538) #10
  br label %541

540:                                              ; preds = %534
  call void @musb_g_tx(ptr noundef %0, i8 noundef zeroext %538) #10
  br label %541

541:                                              ; preds = %540, %539
  %542 = add nuw nsw i32 %535, 1
  %543 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 16, i32 noundef %542) #10
  %544 = icmp ult i32 %543, 16
  br i1 %544, label %534, label %545

545:                                              ; preds = %541, %526
  %546 = phi i32 [ %528, %526 ], [ 1, %541 ]
  %547 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 29
  %548 = load i16, ptr %547, align 2
  %549 = zext i16 %548 to i32
  store i32 %549, ptr %2, align 4
  %550 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 16, i32 noundef 0) #10
  %551 = icmp ult i32 %550, 16
  br i1 %551, label %552, label %565

552:                                              ; preds = %545
  %553 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 44
  br label %554

554:                                              ; preds = %561, %552
  %555 = phi i32 [ %550, %552 ], [ %563, %561 ]
  %556 = load i8, ptr %553, align 8, !range !19
  %557 = icmp eq i8 %556, 0
  %558 = trunc i32 %555 to i8
  br i1 %557, label %560, label %559

559:                                              ; preds = %554
  call void @musb_host_rx(ptr noundef %0, i8 noundef zeroext %558) #10
  br label %561

560:                                              ; preds = %554
  call void @musb_g_rx(ptr noundef %0, i8 noundef zeroext %558) #10
  br label %561

561:                                              ; preds = %560, %559
  %562 = add nuw nsw i32 %555, 1
  %563 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 16, i32 noundef %562) #10
  %564 = icmp ult i32 %563, 16
  br i1 %564, label %554, label %565

565:                                              ; preds = %561, %545, %10
  %566 = phi i32 [ 0, %10 ], [ %546, %545 ], [ 1, %561 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %566
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_h_ep0_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_g_ep0_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_host_tx(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_g_tx(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_host_rx(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_g_rx(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_dma_completion(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 44
  %13 = load i8, ptr %12, align 8, !range !19
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @musb_h_ep0_irq(ptr noundef %0) #10
  br label %30

17:                                               ; preds = %11
  %18 = tail call i32 @musb_g_ep0_irq(ptr noundef %0) #10
  br label %30

19:                                               ; preds = %3
  %20 = icmp eq i8 %2, 0
  %21 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 44
  %22 = load i8, ptr %21, align 8, !range !19
  %23 = icmp eq i8 %22, 0
  br i1 %20, label %27, label %24

24:                                               ; preds = %19
  br i1 %23, label %26, label %25

25:                                               ; preds = %24
  tail call void @musb_host_tx(ptr noundef %0, i8 noundef zeroext %1) #10
  br label %30

26:                                               ; preds = %24
  tail call void @musb_g_tx(ptr noundef %0, i8 noundef zeroext %1) #10
  br label %30

27:                                               ; preds = %19
  br i1 %23, label %29, label %28

28:                                               ; preds = %27
  tail call void @musb_host_rx(ptr noundef %0, i8 noundef zeroext %1) #10
  br label %30

29:                                               ; preds = %27
  tail call void @musb_g_rx(ptr noundef %0, i8 noundef zeroext %1) #10
  br label %30

30:                                               ; preds = %29, %28, %26, %25, %17, %15, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @musb_mailbox(i32 noundef %0) #0 {
  %2 = load ptr, ptr @musb_phy_callback, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 %2(i32 noundef %0) #10
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ -19, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @musb_queue_resume_work(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6, !prof !20

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 2260, i32 noundef 9, ptr noundef null) #10
  br label %29

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 1
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #10
  %9 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %10 = load i24, ptr %9, align 4
  %11 = and i24 %10, 2
  %12 = icmp eq i24 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noalias ptr @devm_kmalloc(ptr noundef %15, i32 noundef 16, i32 noundef 2848) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  store ptr %1, ptr %16, align 4
  %19 = getelementptr inbounds %struct.musb_pending_work, ptr %16, i32 0, i32 1
  store ptr %2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.musb_pending_work, ptr %16, i32 0, i32 2
  %21 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 20
  %22 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 20, i32 1
  %23 = load ptr, ptr %22, align 4
  store ptr %20, ptr %22, align 4
  store ptr %21, ptr %20, align 4
  %24 = getelementptr inbounds %struct.musb_pending_work, ptr %16, i32 0, i32 2, i32 1
  store ptr %23, ptr %24, align 4
  store volatile ptr %20, ptr %23, align 4
  br label %25

25:                                               ; preds = %18, %13
  %26 = phi i32 [ -12, %13 ], [ 0, %18 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #10
  br label %29

27:                                               ; preds = %6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #10
  %28 = tail call i32 %1(ptr noundef %0, ptr noundef %2) #10
  br label %29

29:                                               ; preds = %27, %25, %5
  %30 = phi i32 [ -22, %5 ], [ %28, %27 ], [ %26, %25 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @musb_driver, ptr noundef nonnull @__this_module) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #5 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @musb_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_readl(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_writel(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_state(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_isr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_host_resume_root_hub(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_g_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_root_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_g_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_host_poke_root_hub(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_g_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ep_config_from_table(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35
  %3 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 55
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load i16, ptr @fifo_mode, align 2
  %9 = icmp ult i16 %8, 6
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  store i16 0, ptr @fifo_mode, align 2
  br label %18

11:                                               ; preds = %7
  %12 = sext i16 %8 to i32
  %13 = getelementptr inbounds [6 x i32], ptr @switch.table.ep_config_from_table, i32 0, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = sext i16 %8 to i32
  %16 = getelementptr inbounds [6 x ptr], ptr @switch.table.ep_config_from_table.91, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %11, %10
  %19 = phi i32 [ 5, %10 ], [ %14, %11 ]
  %20 = phi ptr [ @mode_0_cfg, %10 ], [ %17, %11 ]
  %21 = tail call fastcc i32 @fifo_setup(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @ep0_cfg, i16 noundef zeroext 0)
  br label %27

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.musb_hdrc_config, ptr %4, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = tail call fastcc i32 @fifo_setup(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @ep0_cfg, i16 noundef zeroext 0)
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %54, label %27

27:                                               ; preds = %22, %18
  %28 = phi i32 [ %21, %18 ], [ %25, %22 ]
  %29 = phi ptr [ %20, %18 ], [ %5, %22 ]
  %30 = phi i32 [ %19, %18 ], [ %24, %22 ]
  %31 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 38
  br label %32

32:                                               ; preds = %47, %27
  %33 = phi ptr [ %29, %27 ], [ %48, %47 ]
  %34 = phi i32 [ 0, %27 ], [ %52, %47 ]
  %35 = phi i32 [ %28, %27 ], [ %45, %47 ]
  %36 = load i8, ptr %33, align 2
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr inbounds %struct.musb_hdrc_config, ptr %37, i32 0, i32 3
  %39 = load i8, ptr %38, align 1
  %40 = icmp ult i8 %36, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %32
  %42 = zext i8 %36 to i32
  %43 = getelementptr %struct.musb_hw_ep, ptr %2, i32 %42
  %44 = trunc i32 %35 to i16
  %45 = tail call fastcc i32 @fifo_setup(ptr noundef %0, ptr noundef %43, ptr noundef %33, i16 noundef zeroext %44)
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %41
  %48 = getelementptr %struct.musb_fifo_cfg, ptr %33, i32 1
  %49 = add nuw i8 %36, 1
  %50 = load i8, ptr %31, align 8
  %51 = tail call i8 @llvm.umax.i8(i8 %49, i8 %50)
  store i8 %51, ptr %31, align 8
  %52 = add nuw i32 %34, 1
  %53 = icmp eq i32 %52, %30
  br i1 %53, label %54, label %32

54:                                               ; preds = %47, %22
  %55 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 16
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  %58 = select i1 %57, i32 -22, i32 0
  br label %59

59:                                               ; preds = %54, %41, %32
  %60 = phi i32 [ %58, %54 ], [ -22, %32 ], [ %45, %41 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ep_config_from_hw(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %0, ptr noundef nonnull @.str.43) #10
  %4 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 55
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.musb_hdrc_config, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = icmp ugt i8 %7, 1
  br i1 %8, label %9, label %62

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 2, i32 1
  %11 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 35
  %12 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 2
  %13 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 38
  %14 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 37
  %15 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 16
  br label %16

16:                                               ; preds = %55, %9
  %17 = phi i32 [ 1, %9 ], [ %56, %55 ]
  %18 = load ptr, ptr %10, align 4
  %19 = trunc i32 %17 to i8
  tail call void %18(ptr noundef %3, i8 noundef zeroext %19) #10
  %20 = getelementptr %struct.musb_hw_ep, ptr %11, i32 %17
  %21 = load ptr, ptr %2, align 8
  %22 = load ptr, ptr @musb_readb, align 4
  %23 = load ptr, ptr %12, align 8
  %24 = tail call i32 %23(i8 noundef zeroext %19, i16 noundef zeroext 15) #10
  %25 = tail call zeroext i8 %22(ptr noundef %21, i32 noundef %24) #10
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %62, label %27

27:                                               ; preds = %16
  %28 = load i8, ptr %13, align 8
  %29 = add i8 %28, 1
  store i8 %29, ptr %13, align 8
  %30 = shl nuw i32 1, %17
  %31 = load i16, ptr %14, align 2
  %32 = trunc i32 %30 to i16
  %33 = or i16 %31, %32
  store i16 %33, ptr %14, align 2
  %34 = zext i8 %25 to i32
  %35 = and i32 %34, 15
  %36 = shl nuw nsw i32 1, %35
  %37 = trunc i32 %36 to i16
  %38 = getelementptr %struct.musb_hw_ep, ptr %11, i32 %17, i32 7
  store i16 %37, ptr %38, align 4
  %39 = and i32 %34, 240
  %40 = icmp eq i32 %39, 240
  %41 = lshr i32 %34, 4
  %42 = shl nuw nsw i32 1, %41
  %43 = trunc i32 %42 to i16
  %44 = select i1 %40, i16 %37, i16 %43
  %45 = zext i1 %40 to i8
  %46 = getelementptr %struct.musb_hw_ep, ptr %11, i32 %17, i32 8
  store i16 %44, ptr %46, align 2
  %47 = getelementptr %struct.musb_hw_ep, ptr %11, i32 %17, i32 4
  store i8 %45, ptr %47, align 1
  %48 = icmp ult i16 %37, 512
  %49 = icmp ult i16 %44, 512
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %27
  %52 = load ptr, ptr %15, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store ptr %20, ptr %15, align 4
  br label %55

55:                                               ; preds = %54, %51, %27
  %56 = add nuw nsw i32 %17, 1
  %57 = load ptr, ptr %4, align 8
  %58 = getelementptr inbounds %struct.musb_hdrc_config, ptr %57, i32 0, i32 3
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp ult i32 %56, %60
  br i1 %61, label %16, label %62

62:                                               ; preds = %55, %16, %1
  %63 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 16
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  %66 = select i1 %65, i32 -22, i32 0
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fifo_setup(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.musb_fifo_cfg, ptr %2, i32 0, i32 3
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %3 to i32
  %10 = lshr i16 %3, 3
  %11 = tail call i16 @llvm.umax.i16(i16 %8, i16 8)
  %12 = tail call i16 @llvm.cttz.i16(i16 %11, i1 true), !range !21
  %13 = trunc i16 %12 to i8
  %14 = shl nuw i16 1, %12
  %15 = add nsw i8 %13, -3
  %16 = getelementptr inbounds %struct.musb_fifo_cfg, ptr %2, i32 0, i32 2
  %17 = load i8, ptr %16, align 2
  %18 = icmp eq i8 %17, 1
  %19 = zext i16 %14 to i32
  br i1 %18, label %20, label %32

20:                                               ; preds = %4
  %21 = shl nuw nsw i32 %19, 1
  %22 = add nuw nsw i32 %21, %9
  %23 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 55
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.musb_hdrc_config, ptr %24, i32 0, i32 4
  %26 = load i8, ptr %25, align 2
  %27 = zext i8 %26 to i32
  %28 = shl i32 4, %27
  %29 = icmp sgt i32 %22, %28
  br i1 %29, label %96, label %30

30:                                               ; preds = %20
  %31 = or i8 %15, 16
  br label %41

32:                                               ; preds = %4
  %33 = add nuw nsw i32 %19, %9
  %34 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 55
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.musb_hdrc_config, ptr %35, i32 0, i32 4
  %37 = load i8, ptr %36, align 2
  %38 = zext i8 %37 to i32
  %39 = shl i32 4, %38
  %40 = icmp sgt i32 %33, %39
  br i1 %40, label %96, label %41

41:                                               ; preds = %32, %30
  %42 = phi i8 [ %31, %30 ], [ %15, %32 ]
  %43 = load ptr, ptr @musb_writeb, align 4
  %44 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 3
  %45 = load i8, ptr %44, align 4
  tail call void %43(ptr noundef %6, i32 noundef 14, i8 noundef zeroext %45) #10
  %46 = load i8, ptr %44, align 4
  %47 = icmp eq i8 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 16
  store ptr %1, ptr %49, align 4
  br label %50

50:                                               ; preds = %48, %41
  %51 = getelementptr inbounds %struct.musb_fifo_cfg, ptr %2, i32 0, i32 1
  %52 = load i8, ptr %51, align 1
  switch i8 %52, label %53 [
    i8 1, label %56
    i8 2, label %63
    i8 0, label %70
  ]

53:                                               ; preds = %50
  %54 = lshr i8 %42, 4
  %55 = and i8 %54, 1
  br label %83

56:                                               ; preds = %50
  %57 = load ptr, ptr @musb_writeb, align 4
  tail call void %57(ptr noundef %6, i32 noundef 98, i8 noundef zeroext %42) #10
  %58 = load ptr, ptr @musb_writew, align 4
  tail call void %58(ptr noundef %6, i32 noundef 100, i16 noundef zeroext %10) #10
  %59 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 5
  %60 = lshr i8 %42, 4
  %61 = and i8 %60, 1
  store i8 %61, ptr %59, align 2
  %62 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 7
  store i16 %14, ptr %62, align 4
  br label %83

63:                                               ; preds = %50
  %64 = load ptr, ptr @musb_writeb, align 4
  tail call void %64(ptr noundef %6, i32 noundef 99, i8 noundef zeroext %42) #10
  %65 = load ptr, ptr @musb_writew, align 4
  tail call void %65(ptr noundef %6, i32 noundef 102, i16 noundef zeroext %10) #10
  %66 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 6
  %67 = lshr i8 %42, 4
  %68 = and i8 %67, 1
  store i8 %68, ptr %66, align 1
  %69 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 8
  store i16 %14, ptr %69, align 2
  br label %83

70:                                               ; preds = %50
  %71 = load ptr, ptr @musb_writeb, align 4
  tail call void %71(ptr noundef %6, i32 noundef 98, i8 noundef zeroext %42) #10
  %72 = load ptr, ptr @musb_writew, align 4
  tail call void %72(ptr noundef %6, i32 noundef 100, i16 noundef zeroext %10) #10
  %73 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 6
  %74 = lshr i8 %42, 4
  %75 = and i8 %74, 1
  store i8 %75, ptr %73, align 1
  %76 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 8
  store i16 %14, ptr %76, align 2
  %77 = load ptr, ptr @musb_writeb, align 4
  tail call void %77(ptr noundef %6, i32 noundef 99, i8 noundef zeroext %42) #10
  %78 = load ptr, ptr @musb_writew, align 4
  tail call void %78(ptr noundef %6, i32 noundef 102, i16 noundef zeroext %10) #10
  %79 = load i8, ptr %73, align 1, !range !19
  %80 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 5
  store i8 %79, ptr %80, align 2
  %81 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 7
  store i16 %14, ptr %81, align 4
  %82 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 4
  store i8 1, ptr %82, align 1
  br label %83

83:                                               ; preds = %70, %63, %56, %53
  %84 = phi i8 [ %55, %53 ], [ %75, %70 ], [ %68, %63 ], [ %61, %56 ]
  %85 = load i8, ptr %44, align 4
  %86 = zext i8 %85 to i32
  %87 = shl nuw i32 1, %86
  %88 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 37
  %89 = load i16, ptr %88, align 2
  %90 = trunc i32 %87 to i16
  %91 = or i16 %89, %90
  store i16 %91, ptr %88, align 2
  %92 = zext i16 %14 to i32
  %93 = zext i8 %84 to i32
  %94 = shl nuw nsw i32 %92, %93
  %95 = add nuw nsw i32 %94, %9
  br label %96

96:                                               ; preds = %83, %32, %20
  %97 = phi i32 [ %95, %83 ], [ -90, %20 ], [ -90, %32 ]
  ret i32 %97
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.44) #10
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %555, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #10
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  br label %555

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.45) #11
  br label %555

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %12, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 5000, i32 noundef 3520) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %555, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 17
  store volatile ptr %21, ptr %21, align 4
  %22 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 17, i32 1
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 18
  store volatile ptr %23, ptr %23, align 4
  %24 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 18, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 19
  store volatile ptr %25, ptr %25, align 4
  %26 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 19, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 20
  store volatile ptr %27, ptr %27, align 4
  %28 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 20, i32 1
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 36
  store i16 3, ptr %29, align 4
  %30 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 45
  store i32 1100, ptr %30, align 4
  %31 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 27
  store ptr %6, ptr %31, align 8
  %32 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 26
  store ptr %6, ptr %32, align 4
  %33 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 33
  store i32 -19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 55
  store ptr %17, ptr %34, align 8
  %35 = getelementptr inbounds %struct.musb_hdrc_config, ptr %17, i32 0, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = icmp ugt i8 %36, 16
  br i1 %37, label %38, label %39, !prof !20

38:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/musb/musb_core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2169, 0\0A.popsection", ""() #10, !srcloc !22
  unreachable

39:                                               ; preds = %20
  %40 = icmp eq i8 %36, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 35
  br label %43

43:                                               ; preds = %43, %41
  %44 = phi i32 [ %48, %43 ], [ 0, %41 ]
  %45 = phi ptr [ %49, %43 ], [ %42, %41 ]
  store ptr %18, ptr %45, align 4
  %46 = trunc i32 %44 to i8
  %47 = getelementptr inbounds %struct.musb_hw_ep, ptr %45, i32 0, i32 3
  store i8 %46, ptr %47, align 4
  %48 = add nuw nsw i32 %44, 1
  %49 = getelementptr %struct.musb_hw_ep, ptr %45, i32 1
  %50 = load ptr, ptr %34, align 8
  %51 = getelementptr inbounds %struct.musb_hdrc_config, ptr %50, i32 0, i32 3
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp ult i32 %48, %53
  br i1 %54, label %43, label %55

55:                                               ; preds = %43, %39
  %56 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 25
  store ptr %2, ptr %56, align 8
  %57 = tail call i32 @musb_host_alloc(ptr noundef nonnull %18) #10
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %555, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %18, ptr %60, align 8
  store i32 0, ptr %18, align 8
  %61 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 1
  store i32 0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %12, i32 0, i32 7
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 39
  store ptr %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %12, i32 0, i32 4
  %66 = load i8, ptr %65, align 1
  %67 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 40
  store i8 %66, ptr %67, align 8
  %68 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %12, i32 0, i32 10
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 3
  store ptr %69, ptr %70, align 8
  %71 = load i8, ptr %12, align 4
  %72 = zext i8 %71 to i32
  %73 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 41
  store i32 %72, ptr %73, align 4
  store ptr @musb_default_readb, ptr @musb_readb, align 4
  store ptr @musb_default_writeb, ptr @musb_writeb, align 4
  store ptr @musb_default_readw, ptr @musb_readw, align 4
  store ptr @musb_default_writew, ptr @musb_writew, align 4
  %74 = getelementptr inbounds %struct.musb_platform_ops, ptr %69, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %536, label %77

77:                                               ; preds = %59
  %78 = tail call i32 %75(ptr noundef nonnull %18) #10
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %533, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 5
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %518, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %70, align 8
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, ptr @musb_flat_ep_offset, ptr @musb_indexed_ep_offset
  %90 = select i1 %88, ptr @musb_flat_ep_select, ptr @musb_indexed_ep_select
  %91 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 2
  store ptr %89, ptr %91, align 8
  %92 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 2, i32 1
  store ptr %90, ptr %92, align 4
  %93 = load i32, ptr %85, align 4
  %94 = and i32 %93, 512
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %84
  %97 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 52, i32 17
  %98 = load i32, ptr %97, align 4
  %99 = or i32 %98, 4096
  store i32 %99, ptr %97, align 4
  br label %100

100:                                              ; preds = %96, %84
  %101 = getelementptr inbounds %struct.musb_platform_ops, ptr %85, i32 0, i32 5
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  store ptr %102, ptr %91, align 8
  br label %105

105:                                              ; preds = %104, %100
  %106 = getelementptr inbounds %struct.musb_platform_ops, ptr %85, i32 0, i32 6
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  store ptr %107, ptr %92, align 4
  br label %110

110:                                              ; preds = %109, %105
  %111 = getelementptr inbounds %struct.musb_platform_ops, ptr %85, i32 0, i32 7
  %112 = load i16, ptr %111, align 4
  %113 = icmp eq i16 %112, 0
  %114 = select i1 %113, i16 4, i16 %112
  store i16 %114, ptr @fifo_mode, align 2
  %115 = getelementptr inbounds %struct.musb_platform_ops, ptr %85, i32 0, i32 8
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  %118 = select i1 %117, ptr @musb_default_fifo_offset, ptr %116
  %119 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 2, i32 2
  store ptr %118, ptr %119, align 8
  %120 = getelementptr inbounds %struct.musb_platform_ops, ptr %85, i32 0, i32 9
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  %123 = select i1 %122, ptr @musb_default_busctl_offset, ptr %121
  %124 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 2, i32 5
  store ptr %123, ptr %124, align 4
  %125 = getelementptr inbounds %struct.musb_platform_ops, ptr %85, i32 0, i32 10
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %110
  store ptr %126, ptr @musb_readb, align 4
  br label %129

129:                                              ; preds = %128, %110
  %130 = getelementptr inbounds %struct.musb_platform_ops, ptr %85, i32 0, i32 11
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %129
  store ptr %131, ptr @musb_writeb, align 4
  br label %134

134:                                              ; preds = %133, %129
  %135 = getelementptr inbounds %struct.musb_platform_ops, ptr %85, i32 0, i32 12
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  %138 = load ptr, ptr @musb_readb, align 4
  %139 = select i1 %137, ptr %138, ptr %136
  store ptr %139, ptr @musb_clearb, align 4
  %140 = getelementptr inbounds %struct.musb_platform_ops, ptr %85, i32 0, i32 13
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %134
  store ptr %141, ptr @musb_readw, align 4
  br label %144

144:                                              ; preds = %143, %134
  %145 = getelementptr inbounds %struct.musb_platform_ops, ptr %85, i32 0, i32 14
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %144
  store ptr %146, ptr @musb_writew, align 4
  br label %149

149:                                              ; preds = %148, %144
  %150 = getelementptr inbounds %struct.musb_platform_ops, ptr %85, i32 0, i32 15
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  %153 = load ptr, ptr @musb_readw, align 4
  %154 = select i1 %152, ptr %153, ptr %151
  store ptr %154, ptr @musb_clearw, align 4
  %155 = getelementptr inbounds %struct.musb_platform_ops, ptr %85, i32 0, i32 20
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %162, label %158

158:                                              ; preds = %149
  %159 = getelementptr inbounds %struct.musb_platform_ops, ptr %85, i32 0, i32 21
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %163

162:                                              ; preds = %158, %149
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.46) #11
  br label %518

163:                                              ; preds = %158
  store ptr %156, ptr @musb_dma_controller_create, align 4
  store ptr %160, ptr @musb_dma_controller_destroy, align 4
  %164 = getelementptr inbounds %struct.musb_platform_ops, ptr %85, i32 0, i32 16
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  %167 = select i1 %166, ptr @musb_default_read_fifo, ptr %165
  %168 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 2, i32 3
  store ptr %167, ptr %168, align 4
  %169 = getelementptr inbounds %struct.musb_platform_ops, ptr %85, i32 0, i32 17
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  %172 = select i1 %171, ptr @musb_default_write_fifo, ptr %170
  %173 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 2, i32 4
  store ptr %172, ptr %173, align 8
  %174 = getelementptr inbounds %struct.musb_platform_ops, ptr %85, i32 0, i32 18
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  %177 = select i1 %176, ptr @musb_default_get_toggle, ptr %175
  %178 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 2, i32 6
  store ptr %177, ptr %178, align 8
  %179 = getelementptr inbounds %struct.musb_platform_ops, ptr %85, i32 0, i32 19
  %180 = load ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, null
  %182 = select i1 %181, ptr @musb_default_set_toggle, ptr %180
  %183 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 2, i32 7
  store ptr %182, ptr %183, align 4
  %184 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 31
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.usb_phy, ptr %185, i32 0, i32 7
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %198

189:                                              ; preds = %163
  %190 = load ptr, ptr %56, align 8
  %191 = getelementptr inbounds %struct.usb_phy, ptr %185, i32 0, i32 6
  store ptr %190, ptr %191, align 4
  %192 = load ptr, ptr %31, align 8
  %193 = load ptr, ptr %184, align 4
  %194 = getelementptr inbounds %struct.usb_phy, ptr %193, i32 0, i32 8
  store ptr %192, ptr %194, align 4
  %195 = load ptr, ptr %184, align 4
  %196 = getelementptr inbounds %struct.usb_phy, ptr %195, i32 0, i32 7
  store ptr @musb_ulpi_access, ptr %196, align 4
  %197 = load ptr, ptr %70, align 8
  br label %198

198:                                              ; preds = %189, %163
  %199 = phi ptr [ %197, %189 ], [ %85, %163 ]
  %200 = getelementptr inbounds %struct.musb_platform_ops, ptr %199, i32 0, i32 29
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %204, label %203

203:                                              ; preds = %198
  store ptr %201, ptr @musb_phy_callback, align 4
  br label %204

204:                                              ; preds = %203, %198
  %205 = load ptr, ptr %56, align 8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %205, i1 noundef zeroext true) #10
  %206 = load ptr, ptr %56, align 8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %206, i32 noundef 500) #10
  %207 = load ptr, ptr %56, align 8
  tail call void @pm_runtime_enable(ptr noundef %207) #10
  %208 = load ptr, ptr %56, align 8
  %209 = tail call i32 @__pm_runtime_resume(ptr noundef %208, i32 noundef 4) #10
  %210 = load ptr, ptr %184, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %219, label %212

212:                                              ; preds = %204
  %213 = getelementptr inbounds %struct.usb_phy, ptr %210, i32 0, i32 22
  %214 = load ptr, ptr %213, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %219, label %216

216:                                              ; preds = %212
  %217 = tail call i32 %214(ptr noundef nonnull %210) #10
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %512, label %219

219:                                              ; preds = %216, %212, %204
  %220 = load i8, ptr @use_dma, align 1, !range !19
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %234, label %222

222:                                              ; preds = %219
  %223 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  %224 = load ptr, ptr %223, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %234, label %226

226:                                              ; preds = %222
  %227 = load ptr, ptr @musb_dma_controller_create, align 4
  %228 = load ptr, ptr %31, align 8
  %229 = tail call ptr %227(ptr noundef nonnull %18, ptr noundef %228) #10
  %230 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 24
  store ptr %229, ptr %230, align 4
  %231 = icmp ugt ptr %229, inttoptr (i32 -4096 to ptr)
  br i1 %231, label %232, label %234

232:                                              ; preds = %226
  %233 = ptrtoint ptr %229 to i32
  br label %503

234:                                              ; preds = %226, %222, %219
  %235 = load ptr, ptr %70, align 8
  %236 = getelementptr inbounds %struct.musb_platform_ops, ptr %235, i32 0, i32 4
  %237 = load ptr, ptr %236, align 4
  %238 = icmp eq ptr %237, null
  br i1 %238, label %240, label %239

239:                                              ; preds = %234
  tail call void %237(ptr noundef nonnull %18) #10
  br label %240

240:                                              ; preds = %239, %234
  %241 = load ptr, ptr %31, align 8
  %242 = load ptr, ptr @musb_writeb, align 4
  tail call void %242(ptr noundef %241, i32 noundef 11, i8 noundef zeroext 0) #10
  %243 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 12
  store i16 0, ptr %243, align 4
  %244 = load ptr, ptr @musb_writew, align 4
  tail call void %244(ptr noundef %241, i32 noundef 6, i16 noundef zeroext 0) #10
  %245 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 11
  store i16 0, ptr %245, align 2
  %246 = load ptr, ptr @musb_writew, align 4
  tail call void %246(ptr noundef %241, i32 noundef 8, i16 noundef zeroext 0) #10
  %247 = load ptr, ptr @musb_clearb, align 4
  %248 = tail call zeroext i8 %247(ptr noundef %241, i32 noundef 10) #10
  %249 = load ptr, ptr @musb_clearw, align 4
  %250 = tail call zeroext i16 %249(ptr noundef %241, i32 noundef 2) #10
  %251 = load ptr, ptr @musb_clearw, align 4
  %252 = tail call zeroext i16 %251(ptr noundef %241, i32 noundef 4) #10
  %253 = load ptr, ptr @musb_writeb, align 4
  %254 = load ptr, ptr %31, align 8
  tail call void %253(ptr noundef %254, i32 noundef 96, i8 noundef zeroext 0) #10
  %255 = load ptr, ptr @musb_writeb, align 4
  %256 = load ptr, ptr %31, align 8
  tail call void %255(ptr noundef %256, i32 noundef 1, i8 noundef zeroext 0) #10
  %257 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 6
  store i32 -32, ptr %257, align 8
  %258 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 6, i32 0, i32 1
  store volatile ptr %258, ptr %258, align 4
  %259 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 6, i32 0, i32 1, i32 1
  store ptr %258, ptr %259, align 4
  %260 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 6, i32 0, i32 2
  store ptr @musb_irq_work, ptr %260, align 4
  %261 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 6, i32 1
  tail call void @init_timer_key(ptr noundef %261, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #10
  %262 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 7
  store i32 -32, ptr %262, align 4
  %263 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 7, i32 0, i32 1
  store volatile ptr %263, ptr %263, align 4
  %264 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 7, i32 0, i32 1, i32 1
  store ptr %263, ptr %264, align 4
  %265 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 7, i32 0, i32 2
  store ptr @musb_deassert_reset, ptr %265, align 4
  %266 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %266, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #10
  %267 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 8
  store i32 -32, ptr %267, align 8
  %268 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 8, i32 0, i32 1
  store volatile ptr %268, ptr %268, align 4
  %269 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 8, i32 0, i32 1, i32 1
  store ptr %268, ptr %269, align 4
  %270 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 8, i32 0, i32 2
  store ptr @musb_host_finish_resume, ptr %270, align 4
  %271 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 8, i32 1
  tail call void @init_timer_key(ptr noundef %271, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #10
  %272 = load ptr, ptr %16, align 4
  %273 = getelementptr inbounds %struct.musb_hdrc_config, ptr %272, i32 0, i32 2
  %274 = load i8, ptr %273, align 4
  %275 = and i8 %274, 1
  %276 = load ptr, ptr %31, align 8
  %277 = load ptr, ptr @musb_writeb, align 4
  tail call void %277(ptr noundef %276, i32 noundef 14, i8 noundef zeroext 0) #10
  %278 = load ptr, ptr @musb_readb, align 4
  %279 = tail call zeroext i8 %278(ptr noundef %276, i32 noundef 31) #10
  %280 = zext i8 %279 to i32
  %281 = and i32 %280, 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %287, label %283

283:                                              ; preds = %240
  %284 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 47
  %285 = load i24, ptr %284, align 4
  %286 = or i24 %285, 64
  store i24 %286, ptr %284, align 4
  br label %287

287:                                              ; preds = %283, %240
  %288 = and i32 %280, 128
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %294, label %290

290:                                              ; preds = %287
  %291 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 47
  %292 = load i24, ptr %291, align 4
  %293 = or i24 %292, 256
  store i24 %293, ptr %291, align 4
  br label %294

294:                                              ; preds = %290, %287
  %295 = and i32 %280, 64
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %301, label %297

297:                                              ; preds = %294
  %298 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 47
  %299 = load i24, ptr %298, align 4
  %300 = or i24 %299, 128
  store i24 %300, ptr %298, align 4
  br label %301

301:                                              ; preds = %297, %294
  %302 = and i32 %280, 16
  %303 = icmp eq i32 %302, 0
  %304 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 47
  %305 = load i24, ptr %304, align 4
  br i1 %303, label %308, label %306

306:                                              ; preds = %301
  %307 = or i24 %305, 16
  store i24 %307, ptr %304, align 4
  br label %308

308:                                              ; preds = %306, %301
  %309 = phi i24 [ %307, %306 ], [ %305, %301 ]
  %310 = and i32 %280, 8
  %311 = icmp eq i32 %310, 0
  %312 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 47
  br i1 %311, label %315, label %313

313:                                              ; preds = %308
  %314 = or i24 %309, 32
  store i24 %314, ptr %312, align 4
  br label %315

315:                                              ; preds = %313, %308
  %316 = phi i24 [ %314, %313 ], [ %309, %308 ]
  %317 = icmp eq i8 %275, 0
  br i1 %317, label %320, label %318

318:                                              ; preds = %315
  %319 = or i24 %316, 8
  store i24 %319, ptr %312, align 4
  br label %323

320:                                              ; preds = %315
  %321 = and i24 %316, -9
  store i24 %321, ptr %312, align 4
  %322 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @musb_driver_name) #11
  br label %323

323:                                              ; preds = %320, %318
  %324 = load ptr, ptr @musb_readw, align 4
  %325 = tail call zeroext i16 %324(ptr noundef %276, i32 noundef 108) #10
  %326 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 10
  store i16 %325, ptr %326, align 8
  %327 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 35, i32 0, i32 7
  store i16 64, ptr %327, align 4
  %328 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 35, i32 0, i32 8
  store i16 64, ptr %328, align 2
  %329 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 35, i32 0, i32 4
  store i8 1, ptr %329, align 1
  %330 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 38
  store i8 1, ptr %330, align 8
  %331 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 37
  store i16 1, ptr %331, align 2
  %332 = load i24, ptr %312, align 4
  %333 = and i24 %332, 64
  %334 = icmp eq i24 %333, 0
  br i1 %334, label %337, label %335

335:                                              ; preds = %323
  %336 = tail call fastcc i32 @ep_config_from_table(ptr noundef nonnull %18) #10
  br label %339

337:                                              ; preds = %323
  %338 = tail call fastcc i32 @ep_config_from_hw(ptr noundef nonnull %18) #10
  br label %339

339:                                              ; preds = %337, %335
  %340 = phi i32 [ %336, %335 ], [ %338, %337 ]
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %493, label %342

342:                                              ; preds = %339
  %343 = load i8, ptr %330, align 8
  %344 = icmp eq i8 %343, 0
  br i1 %344, label %399, label %345

345:                                              ; preds = %342
  %346 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 35
  br label %347

347:                                              ; preds = %394, %345
  %348 = phi i32 [ 0, %345 ], [ %395, %394 ]
  %349 = load ptr, ptr %119, align 8
  %350 = trunc i32 %348 to i8
  %351 = tail call i32 %349(i8 noundef zeroext %350) #10
  %352 = getelementptr i8, ptr %276, i32 %351
  %353 = getelementptr %struct.musb_hw_ep, ptr %346, i32 %348, i32 1
  store ptr %352, ptr %353, align 4
  %354 = load ptr, ptr %91, align 8
  %355 = tail call i32 %354(i8 noundef zeroext %350, i16 noundef zeroext 0) #10
  %356 = getelementptr i8, ptr %276, i32 %355
  %357 = getelementptr %struct.musb_hw_ep, ptr %346, i32 %348, i32 2
  store ptr %356, ptr %357, align 4
  %358 = getelementptr %struct.musb_hw_ep, ptr %346, i32 %348, i32 13
  store i8 1, ptr %358, align 4
  %359 = getelementptr %struct.musb_hw_ep, ptr %346, i32 %348, i32 14
  store i8 1, ptr %359, align 1
  %360 = getelementptr %struct.musb_hw_ep, ptr %346, i32 %348, i32 7
  %361 = load i16, ptr %360, align 4
  %362 = icmp eq i16 %361, 0
  br i1 %362, label %373, label %363

363:                                              ; preds = %347
  %364 = getelementptr %struct.musb_hw_ep, ptr %346, i32 %348, i32 4
  %365 = load i8, ptr %364, align 1, !range !19
  %366 = icmp eq i8 %365, 0
  %367 = select i1 %366, ptr @.str.71, ptr @.str.70
  %368 = getelementptr %struct.musb_hw_ep, ptr %346, i32 %348, i32 5
  %369 = load i8, ptr %368, align 2, !range !19
  %370 = icmp eq i8 %369, 0
  %371 = select i1 %370, ptr @.str.67, ptr @.str.72
  %372 = zext i16 %361 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %18, ptr noundef nonnull @.str.69, ptr noundef nonnull @musb_driver_name, i32 noundef %348, ptr noundef nonnull %367, ptr noundef nonnull %371, i32 noundef %372) #10
  br label %373

373:                                              ; preds = %363, %347
  %374 = getelementptr %struct.musb_hw_ep, ptr %346, i32 %348, i32 8
  %375 = load i16, ptr %374, align 2
  %376 = zext i16 %375 to i32
  %377 = icmp eq i16 %375, 0
  br i1 %377, label %387, label %378

378:                                              ; preds = %373
  %379 = getelementptr %struct.musb_hw_ep, ptr %346, i32 %348, i32 4
  %380 = load i8, ptr %379, align 1, !range !19
  %381 = icmp eq i8 %380, 0
  br i1 %381, label %382, label %387

382:                                              ; preds = %378
  %383 = getelementptr %struct.musb_hw_ep, ptr %346, i32 %348, i32 6
  %384 = load i8, ptr %383, align 1, !range !19
  %385 = icmp eq i8 %384, 0
  %386 = select i1 %385, ptr @.str.67, ptr @.str.72
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %18, ptr noundef nonnull @.str.69, ptr noundef nonnull @musb_driver_name, i32 noundef %348, ptr noundef nonnull @.str.73, ptr noundef nonnull %386, i32 noundef %376) #10
  br label %387

387:                                              ; preds = %382, %378, %373
  %388 = load i16, ptr %360, align 4
  %389 = icmp eq i16 %388, 0
  br i1 %389, label %390, label %394

390:                                              ; preds = %387
  %391 = load i16, ptr %374, align 2
  %392 = icmp eq i16 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %390
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %18, ptr noundef nonnull @.str.74, i32 noundef %348) #10
  br label %394

394:                                              ; preds = %393, %390, %387
  %395 = add nuw nsw i32 %348, 1
  %396 = load i8, ptr %330, align 8
  %397 = zext i8 %396 to i32
  %398 = icmp ult i32 %395, %397
  br i1 %398, label %347, label %399

399:                                              ; preds = %394, %342
  %400 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 21
  tail call void @init_timer_key(ptr noundef %400, ptr noundef nonnull @musb_otg_timer_func, i32 noundef 0, ptr noundef null, ptr noundef null) #10
  %401 = load ptr, ptr %81, align 4
  %402 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %403 = load ptr, ptr %402, align 4
  %404 = icmp eq ptr %403, null
  br i1 %404, label %405, label %407

405:                                              ; preds = %399
  %406 = load ptr, ptr %2, align 4
  br label %407

407:                                              ; preds = %405, %399
  %408 = phi ptr [ %406, %405 ], [ %403, %399 ]
  %409 = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef %401, ptr noundef null, i32 noundef 128, ptr noundef %408, ptr noundef %18) #10
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %412, label %411

411:                                              ; preds = %407
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.47, i32 noundef %3) #11
  br label %493

412:                                              ; preds = %407
  store i32 %3, ptr %33, align 4
  %413 = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef 1) #10
  %414 = icmp eq i32 %413, 0
  %415 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 34
  %416 = load i8, ptr %415, align 8
  br i1 %414, label %417, label %420

417:                                              ; preds = %412
  %418 = or i8 %416, 1
  store i8 %418, ptr %415, align 8
  %419 = tail call i32 @device_init_wakeup(ptr noundef %2, i1 noundef zeroext true) #10
  br label %422

420:                                              ; preds = %412
  %421 = and i8 %416, -2
  store i8 %421, ptr %415, align 8
  br label %422

422:                                              ; preds = %420, %417
  %423 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %12, i32 0, i32 6
  %424 = load i8, ptr %423, align 1
  %425 = and i8 %424, 1
  %426 = icmp eq i8 %425, 0
  br i1 %426, label %434, label %427

427:                                              ; preds = %422
  %428 = load ptr, ptr @musb_readb, align 4
  %429 = load ptr, ptr %31, align 8
  %430 = tail call zeroext i8 %428(ptr noundef %429, i32 noundef 112) #10
  %431 = or i8 %430, 1
  %432 = load ptr, ptr @musb_writeb, align 4
  %433 = load ptr, ptr %31, align 8
  tail call void %432(ptr noundef %433, i32 noundef 112, i8 noundef zeroext %431) #10
  br label %434

434:                                              ; preds = %427, %422
  %435 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 44
  store i8 0, ptr %435, align 8
  %436 = load ptr, ptr %184, align 4
  %437 = getelementptr inbounds %struct.usb_phy, ptr %436, i32 0, i32 5
  %438 = load ptr, ptr %437, align 4
  %439 = getelementptr inbounds %struct.usb_otg, ptr %438, i32 0, i32 5
  store i32 1, ptr %439, align 4
  %440 = load i32, ptr %73, align 4
  switch i32 %440, label %481 [
    i32 1, label %441
    i32 2, label %454
    i32 3, label %464
  ]

441:                                              ; preds = %434
  %442 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %12, i32 0, i32 3
  %443 = load i8, ptr %442, align 4
  %444 = zext i8 %443 to i32
  %445 = tail call i32 @musb_host_setup(ptr noundef %18, i32 noundef %444) #10
  %446 = icmp slt i32 %445, 0
  br i1 %446, label %493, label %447

447:                                              ; preds = %441
  %448 = load ptr, ptr %70, align 8
  %449 = getelementptr inbounds %struct.musb_platform_ops, ptr %448, i32 0, i32 22
  %450 = load ptr, ptr %449, align 4
  %451 = icmp eq ptr %450, null
  br i1 %451, label %485, label %452

452:                                              ; preds = %447
  %453 = tail call i32 %450(ptr noundef %18, i8 noundef zeroext 1) #10
  br label %482

454:                                              ; preds = %434
  %455 = tail call i32 @musb_gadget_setup(ptr noundef %18) #10
  %456 = icmp slt i32 %455, 0
  br i1 %456, label %493, label %457

457:                                              ; preds = %454
  %458 = load ptr, ptr %70, align 8
  %459 = getelementptr inbounds %struct.musb_platform_ops, ptr %458, i32 0, i32 22
  %460 = load ptr, ptr %459, align 4
  %461 = icmp eq ptr %460, null
  br i1 %461, label %485, label %462

462:                                              ; preds = %457
  %463 = tail call i32 %460(ptr noundef %18, i8 noundef zeroext 2) #10
  br label %482

464:                                              ; preds = %434
  %465 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %12, i32 0, i32 3
  %466 = load i8, ptr %465, align 4
  %467 = zext i8 %466 to i32
  %468 = tail call i32 @musb_host_setup(ptr noundef %18, i32 noundef %467) #10
  %469 = icmp slt i32 %468, 0
  br i1 %469, label %493, label %470

470:                                              ; preds = %464
  %471 = tail call i32 @musb_gadget_setup(ptr noundef %18) #10
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %474, label %473

473:                                              ; preds = %470
  tail call void @musb_host_cleanup(ptr noundef %18) #10
  br label %493

474:                                              ; preds = %470
  %475 = load ptr, ptr %70, align 8
  %476 = getelementptr inbounds %struct.musb_platform_ops, ptr %475, i32 0, i32 22
  %477 = load ptr, ptr %476, align 4
  %478 = icmp eq ptr %477, null
  br i1 %478, label %485, label %479

479:                                              ; preds = %474
  %480 = tail call i32 %477(ptr noundef %18, i8 noundef zeroext 3) #10
  br label %482

481:                                              ; preds = %434
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.48, i32 noundef %440) #11
  br label %485

482:                                              ; preds = %479, %462, %452
  %483 = phi i32 [ %453, %452 ], [ %463, %462 ], [ %480, %479 ]
  %484 = icmp slt i32 %483, 0
  br i1 %484, label %493, label %485

485:                                              ; preds = %482, %481, %474, %457, %447
  tail call void @musb_init_debugfs(ptr noundef %18) #10
  %486 = load i24, ptr %312, align 4
  %487 = or i24 %486, 1
  store i24 %487, ptr %312, align 4
  %488 = load ptr, ptr %56, align 8
  %489 = tail call i64 @ktime_get_mono_fast_ns() #10
  %490 = getelementptr inbounds %struct.device, ptr %488, i32 0, i32 11, i32 22
  store volatile i64 %489, ptr %490, align 8
  %491 = load ptr, ptr %56, align 8
  %492 = tail call i32 @__pm_runtime_suspend(ptr noundef %491, i32 noundef 13) #10
  br label %555

493:                                              ; preds = %482, %473, %464, %454, %441, %411, %339
  %494 = phi i32 [ -19, %411 ], [ %483, %482 ], [ %468, %464 ], [ %471, %473 ], [ %455, %454 ], [ %445, %441 ], [ %340, %339 ]
  %495 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %257) #10
  %496 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %267) #10
  %497 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %262) #10
  %498 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 24
  %499 = load ptr, ptr %498, align 4
  %500 = icmp eq ptr %499, null
  br i1 %500, label %503, label %501

501:                                              ; preds = %493
  %502 = load ptr, ptr @musb_dma_controller_destroy, align 4
  tail call void %502(ptr noundef nonnull %499) #10
  br label %503

503:                                              ; preds = %501, %493, %232
  %504 = phi i32 [ %233, %232 ], [ %494, %501 ], [ %494, %493 ]
  %505 = load ptr, ptr %184, align 4
  %506 = icmp eq ptr %505, null
  br i1 %506, label %512, label %507

507:                                              ; preds = %503
  %508 = getelementptr inbounds %struct.usb_phy, ptr %505, i32 0, i32 23
  %509 = load ptr, ptr %508, align 4
  %510 = icmp eq ptr %509, null
  br i1 %510, label %512, label %511

511:                                              ; preds = %507
  tail call void %509(ptr noundef nonnull %505) #10
  br label %512

512:                                              ; preds = %511, %507, %503, %216
  %513 = phi i32 [ %217, %216 ], [ %504, %503 ], [ %504, %507 ], [ %504, %511 ]
  %514 = load ptr, ptr %56, align 8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %514, i1 noundef zeroext false) #10
  %515 = load ptr, ptr %56, align 8
  %516 = tail call i32 @__pm_runtime_idle(ptr noundef %515, i32 noundef 4) #10
  %517 = load ptr, ptr %56, align 8
  tail call void @__pm_runtime_disable(ptr noundef %517, i1 noundef zeroext true) #10
  br label %518

518:                                              ; preds = %512, %162, %80
  %519 = phi i32 [ %513, %512 ], [ -19, %162 ], [ -19, %80 ]
  %520 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 34
  %521 = load i8, ptr %520, align 8
  %522 = and i8 %521, 1
  %523 = icmp eq i8 %522, 0
  br i1 %523, label %526, label %524

524:                                              ; preds = %518
  %525 = tail call i32 @device_init_wakeup(ptr noundef %2, i1 noundef zeroext false) #10
  br label %526

526:                                              ; preds = %524, %518
  %527 = load ptr, ptr %70, align 8
  %528 = getelementptr inbounds %struct.musb_platform_ops, ptr %527, i32 0, i32 2
  %529 = load ptr, ptr %528, align 4
  %530 = icmp eq ptr %529, null
  br i1 %530, label %533, label %531

531:                                              ; preds = %526
  %532 = tail call i32 %529(ptr noundef %18) #10
  br label %533

533:                                              ; preds = %531, %526, %77
  %534 = phi i32 [ %78, %77 ], [ %519, %526 ], [ %519, %531 ]
  %535 = icmp eq i32 %534, -517
  br i1 %535, label %539, label %536

536:                                              ; preds = %533, %59
  %537 = phi i32 [ %534, %533 ], [ -22, %59 ]
  %538 = load ptr, ptr %56, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %538, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.musb_init_controller, i32 noundef %537) #11
  br label %539

539:                                              ; preds = %536, %533
  %540 = phi i32 [ %537, %536 ], [ -517, %533 ]
  %541 = load i32, ptr %33, align 4
  %542 = icmp sgt i32 %541, -1
  br i1 %542, label %543, label %554

543:                                              ; preds = %539
  %544 = getelementptr inbounds %struct.musb, ptr %18, i32 0, i32 34
  %545 = load i8, ptr %544, align 8
  %546 = and i8 %545, 1
  %547 = icmp eq i8 %546, 0
  br i1 %547, label %551, label %548

548:                                              ; preds = %543
  %549 = tail call i32 @irq_set_irq_wake(i32 noundef %541, i32 noundef 0) #10
  %550 = load i32, ptr %33, align 4
  br label %551

551:                                              ; preds = %548, %543
  %552 = phi i32 [ %550, %548 ], [ %541, %543 ]
  %553 = tail call ptr @free_irq(i32 noundef %552, ptr noundef %18) #10
  br label %554

554:                                              ; preds = %551, %539
  tail call void @musb_host_free(ptr noundef %18) #10
  br label %555

555:                                              ; preds = %554, %485, %55, %15, %14, %8, %1
  %556 = phi i32 [ %9, %8 ], [ -19, %1 ], [ 0, %485 ], [ %540, %554 ], [ -19, %14 ], [ -12, %15 ], [ -12, %55 ]
  ret i32 %556
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @musb_exit_debugfs(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 6
  %5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 8
  %7 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %6) #10
  %8 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 7
  %9 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %8) #10
  %10 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #10
  tail call void @musb_host_cleanup(ptr noundef %3) #10
  tail call void @musb_gadget_cleanup(ptr noundef %3) #10
  %13 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.musb_platform_ops, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  tail call void %16(ptr noundef %3) #10
  br label %19

19:                                               ; preds = %18, %1
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %21 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 27
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr @musb_writeb, align 4
  tail call void %23(ptr noundef %22, i32 noundef 11, i8 noundef zeroext 0) #10
  %24 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 12
  store i16 0, ptr %24, align 4
  %25 = load ptr, ptr @musb_writew, align 4
  tail call void %25(ptr noundef %22, i32 noundef 6, i16 noundef zeroext 0) #10
  %26 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 11
  store i16 0, ptr %26, align 2
  %27 = load ptr, ptr @musb_writew, align 4
  tail call void %27(ptr noundef %22, i32 noundef 8, i16 noundef zeroext 0) #10
  %28 = load ptr, ptr @musb_clearb, align 4
  %29 = tail call zeroext i8 %28(ptr noundef %22, i32 noundef 10) #10
  %30 = load ptr, ptr @musb_clearw, align 4
  %31 = tail call zeroext i16 %30(ptr noundef %22, i32 noundef 2) #10
  %32 = load ptr, ptr @musb_clearw, align 4
  %33 = tail call zeroext i16 %32(ptr noundef %22, i32 noundef 4) #10
  %34 = load ptr, ptr @musb_writeb, align 4
  %35 = load ptr, ptr %21, align 8
  tail call void %34(ptr noundef %35, i32 noundef 96, i8 noundef zeroext 0) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %20) #10
  %36 = load ptr, ptr %13, align 8
  %37 = getelementptr inbounds %struct.musb_platform_ops, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %19
  %41 = tail call i32 %38(ptr noundef %3) #10
  br label %42

42:                                               ; preds = %40, %19
  %43 = load ptr, ptr %10, align 8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %43, i1 noundef zeroext false) #10
  %44 = load ptr, ptr %10, align 8
  %45 = tail call i32 @__pm_runtime_idle(ptr noundef %44, i32 noundef 4) #10
  %46 = load ptr, ptr %10, align 8
  tail call void @__pm_runtime_disable(ptr noundef %46, i1 noundef zeroext true) #10
  store ptr null, ptr @musb_phy_callback, align 4
  %47 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 24
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %42
  %51 = load ptr, ptr @musb_dma_controller_destroy, align 4
  tail call void %51(ptr noundef nonnull %48) #10
  br label %52

52:                                               ; preds = %50, %42
  %53 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 31
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.usb_phy, ptr %54, i32 0, i32 23
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void %58(ptr noundef nonnull %54) #10
  br label %61

61:                                               ; preds = %60, %56, %52
  %62 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 33
  %63 = load i32, ptr %62, align 4
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 34
  %67 = load i8, ptr %66, align 8
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = tail call i32 @irq_set_irq_wake(i32 noundef %63, i32 noundef 0) #10
  %72 = load i32, ptr %62, align 4
  br label %73

73:                                               ; preds = %70, %65
  %74 = phi i32 [ %72, %70 ], [ %63, %65 ]
  %75 = tail call ptr @free_irq(i32 noundef %74, ptr noundef %3) #10
  br label %76

76:                                               ; preds = %73, %61
  %77 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @musb_host_free(ptr noundef %3) #10
  %78 = tail call i32 @device_init_wakeup(ptr noundef %77, i1 noundef zeroext false) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @musb_default_readb(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 %1
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #10, !srcloc !23
  %5 = tail call ptr @llvm.returnaddress(i32 0)
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_readb, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #10
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  %20 = tail call i32 @__traceiter_musb_readb(ptr noundef null, ptr noundef %5, ptr noundef %0, i32 noundef %1, i8 noundef zeroext %4) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !25
  br label %21

21:                                               ; preds = %19, %8, %2
  ret i8 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @musb_default_writeb(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) #0 {
  %4 = tail call ptr @llvm.returnaddress(i32 0)
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_writeb, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = tail call ptr @llvm.thread.pointer() #10
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !26
  %19 = tail call i32 @__traceiter_musb_writeb(ptr noundef null, ptr noundef %4, ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !27
  br label %20

20:                                               ; preds = %18, %7, %3
  %21 = getelementptr i8, ptr %0, i32 %1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %21, i8 %2) #10, !srcloc !28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @musb_default_readw(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 %1
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #10, !srcloc !29
  %5 = tail call ptr @llvm.returnaddress(i32 0)
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_readw, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #10
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !30
  %20 = tail call i32 @__traceiter_musb_readw(ptr noundef null, ptr noundef %5, ptr noundef %0, i32 noundef %1, i16 noundef zeroext %4) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !31
  br label %21

21:                                               ; preds = %19, %8, %2
  ret i16 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @musb_default_writew(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) #0 {
  %4 = tail call ptr @llvm.returnaddress(i32 0)
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_writew, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = tail call ptr @llvm.thread.pointer() #10
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !32
  %19 = tail call i32 @__traceiter_musb_writew(ptr noundef null, ptr noundef %4, ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  br label %20

20:                                               ; preds = %18, %7, %3
  %21 = getelementptr i8, ptr %0, i32 %1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 %2) #10, !srcloc !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @musb_indexed_ep_offset(i8 noundef zeroext %0, i16 noundef zeroext %1) #6 {
  %3 = zext i16 %1 to i32
  %4 = add nuw nsw i32 %3, 16
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @musb_indexed_ep_select(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = load ptr, ptr @musb_writeb, align 4
  tail call void %3(ptr noundef %0, i32 noundef 14, i8 noundef zeroext %1) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @musb_flat_ep_offset(i8 noundef zeroext %0, i16 noundef zeroext %1) #6 {
  %3 = zext i8 %0 to i32
  %4 = shl nuw nsw i32 %3, 4
  %5 = add nuw nsw i32 %4, 256
  %6 = zext i16 %1 to i32
  %7 = add nuw nsw i32 %5, %6
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @musb_flat_ep_select(ptr nocapture noundef %0, i8 noundef zeroext %1) #6 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @musb_default_fifo_offset(i8 noundef zeroext %0) #6 {
  %2 = zext i8 %0 to i32
  %3 = shl nuw nsw i32 %2, 2
  %4 = add nuw nsw i32 %3, 32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @musb_default_busctl_offset(i8 noundef zeroext %0, i16 noundef zeroext %1) #6 {
  %3 = zext i8 %0 to i32
  %4 = shl nuw nsw i32 %3, 3
  %5 = add nuw nsw i32 %4, 128
  %6 = zext i16 %1 to i32
  %7 = add nuw nsw i32 %5, %6
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @musb_default_read_fifo(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.musb_hw_ep, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = zext i16 %1 to i32
  %7 = icmp eq i16 %1, 0
  br i1 %7, label %43, label %8, !prof !20

8:                                                ; preds = %3
  %9 = ptrtoint ptr %2 to i32
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %42, !prof !35

12:                                               ; preds = %8
  %13 = and i32 %9, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = icmp ugt i16 %1, 3
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = lshr i32 %6, 2
  tail call void @__raw_readsl(ptr noundef %5, ptr noundef %2, i32 noundef %18) #10
  %19 = and i16 %1, -4
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i16 [ %19, %17 ], [ 0, %15 ]
  %22 = and i32 %6, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %5) #10, !srcloc !29
  %26 = zext i16 %21 to i32
  %27 = getelementptr i8, ptr %2, i32 %26
  store i16 %25, ptr %27, align 2
  %28 = or i16 %21, 2
  br label %34

29:                                               ; preds = %12
  %30 = icmp ugt i16 %1, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = lshr i32 %6, 1
  tail call void @__raw_readsw(ptr noundef %5, ptr noundef %2, i32 noundef %32) #10
  %33 = and i16 %1, -2
  br label %34

34:                                               ; preds = %31, %29, %24, %20
  %35 = phi i16 [ %28, %24 ], [ %21, %20 ], [ %33, %31 ], [ 0, %29 ]
  %36 = and i32 %6, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #10, !srcloc !23
  %40 = zext i16 %35 to i32
  %41 = getelementptr i8, ptr %2, i32 %40
  store i8 %39, ptr %41, align 1
  br label %43

42:                                               ; preds = %8
  tail call void @__raw_readsb(ptr noundef %5, ptr noundef %2, i32 noundef %6) #10
  br label %43

43:                                               ; preds = %42, %38, %34, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @musb_default_write_fifo(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.musb_hw_ep, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = zext i16 %1 to i32
  %7 = icmp eq i16 %1, 0
  br i1 %7, label %43, label %8, !prof !20

8:                                                ; preds = %3
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %2) #10, !srcloc !36
  %9 = ptrtoint ptr %2 to i32
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %42, !prof !35

12:                                               ; preds = %8
  %13 = and i32 %9, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = icmp ugt i16 %1, 3
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = lshr i32 %6, 2
  tail call void @__raw_writesl(ptr noundef %5, ptr noundef %2, i32 noundef %18) #10
  %19 = and i16 %1, -4
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i16 [ %19, %17 ], [ 0, %15 ]
  %22 = and i32 %6, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  %25 = zext i16 %21 to i32
  %26 = getelementptr i8, ptr %2, i32 %25
  %27 = load i16, ptr %26, align 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 %27) #10, !srcloc !34
  %28 = or i16 %21, 2
  br label %34

29:                                               ; preds = %12
  %30 = icmp ugt i16 %1, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = lshr i32 %6, 1
  tail call void @__raw_writesw(ptr noundef %5, ptr noundef %2, i32 noundef %32) #10
  %33 = and i16 %1, -2
  br label %34

34:                                               ; preds = %31, %29, %24, %20
  %35 = phi i16 [ %28, %24 ], [ %21, %20 ], [ %33, %31 ], [ 0, %29 ]
  %36 = and i32 %6, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = zext i16 %35 to i32
  %40 = getelementptr i8, ptr %2, i32 %39
  %41 = load i8, ptr %40, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 %41) #10, !srcloc !28
  br label %43

42:                                               ; preds = %8
  tail call void @__raw_writesb(ptr noundef %5, ptr noundef %2, i32 noundef %6) #10
  br label %43

43:                                               ; preds = %42, %38, %34, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @musb_default_get_toggle(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.musb_qh, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.musb_hw_ep, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq i32 %1, 0
  %8 = load ptr, ptr @musb_readw, align 4
  %9 = select i1 %7, i32 6, i32 2
  %10 = select i1 %7, i16 512, i16 256
  %11 = tail call zeroext i16 %8(ptr noundef %6, i32 noundef %9) #10
  %12 = and i16 %11, %10
  ret i16 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @musb_default_set_toggle(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #7 {
  %4 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.usb_device, ptr %5, i32 0, i32 10, i32 %1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.musb_qh, ptr %0, i32 0, i32 14
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %1, 0
  %12 = shl nuw i32 1, %10
  %13 = and i32 %12, %7
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i16 64, i16 768
  %16 = select i1 %14, i16 0, i16 1536
  %17 = select i1 %11, i16 %16, i16 %15
  ret i16 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @musb_irq_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 288
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #10
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !37
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #10, !srcloc !38
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 0, i32 -1, ptr elementtype(i32) %7) #10, !srcloc !39
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !40
  br label %12

12:                                               ; preds = %11, %6
  %13 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.50, i32 noundef %4) #11
  br label %214

14:                                               ; preds = %1
  %15 = getelementptr i8, ptr %0, i32 -448
  %16 = load ptr, ptr @musb_readb, align 4
  %17 = getelementptr i8, ptr %0, i32 296
  %18 = load ptr, ptr %17, align 8
  %19 = tail call zeroext i8 %16(ptr noundef %18, i32 noundef 96) #10
  %20 = and i8 %19, -99
  switch i8 %20, label %140 [
    i8 -103, label %21
    i8 -111, label %51
    i8 25, label %81
  ]

21:                                               ; preds = %14
  %22 = getelementptr i8, ptr %0, i32 3932
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %140, label %25

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %0, i32 3948
  %27 = load i24, ptr %26, align 4
  %28 = and i24 %27, 65536
  %29 = icmp eq i24 %28, 0
  br i1 %29, label %30, label %140

30:                                               ; preds = %25
  %31 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_state, i32 0, i32 1), align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = tail call ptr @llvm.thread.pointer() #10
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 5
  %38 = getelementptr i32, ptr @__cpu_online_mask, i32 %37
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %36, 31
  %41 = shl nuw i32 1, %40
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %33
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %45 = tail call i32 @__traceiter_musb_state(ptr noundef null, ptr noundef %15, i8 noundef zeroext %19, ptr noundef nonnull @.str.52) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %46

46:                                               ; preds = %44, %33, %30
  %47 = load ptr, ptr @system_wq, align 4
  %48 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %47, ptr noundef %0, i32 noundef 100) #10
  %49 = load i32, ptr %22, align 4
  %50 = add i32 %49, -1
  store i32 %50, ptr %22, align 4
  br label %140

51:                                               ; preds = %14
  %52 = getelementptr i8, ptr %0, i32 3932
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %114, label %55

55:                                               ; preds = %51
  %56 = getelementptr i8, ptr %0, i32 3948
  %57 = load i24, ptr %56, align 4
  %58 = and i24 %57, 65536
  %59 = icmp eq i24 %58, 0
  br i1 %59, label %60, label %88

60:                                               ; preds = %55
  %61 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_state, i32 0, i32 1), align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = tail call ptr @llvm.thread.pointer() #10
  %65 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %66 = load i32, ptr %65, align 8
  %67 = lshr i32 %66, 5
  %68 = getelementptr i32, ptr @__cpu_online_mask, i32 %67
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %66, 31
  %71 = shl nuw i32 1, %70
  %72 = and i32 %71, %69
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %63
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %75 = tail call i32 @__traceiter_musb_state(ptr noundef null, ptr noundef %15, i8 noundef zeroext %19, ptr noundef nonnull @.str.53) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %76

76:                                               ; preds = %74, %63, %60
  %77 = load ptr, ptr @system_wq, align 4
  %78 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %77, ptr noundef %0, i32 noundef 100) #10
  %79 = load i32, ptr %52, align 4
  %80 = add i32 %79, -1
  store i32 %80, ptr %52, align 4
  br label %196

81:                                               ; preds = %14
  %82 = getelementptr i8, ptr %0, i32 3932
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %114, label %85

85:                                               ; preds = %81
  %86 = getelementptr i8, ptr %0, i32 3948
  %87 = load i24, ptr %86, align 4
  br label %88

88:                                               ; preds = %85, %55
  %89 = phi i24 [ %87, %85 ], [ %57, %55 ]
  %90 = getelementptr i8, ptr %0, i32 3932
  %91 = and i24 %89, 65536
  %92 = icmp eq i24 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %88
  %94 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_state, i32 0, i32 1), align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %93
  %97 = tail call ptr @llvm.thread.pointer() #10
  %98 = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 2
  %99 = load i32, ptr %98, align 8
  %100 = lshr i32 %99, 5
  %101 = getelementptr i32, ptr @__cpu_online_mask, i32 %100
  %102 = load volatile i32, ptr %101, align 4
  %103 = and i32 %99, 31
  %104 = shl nuw i32 1, %103
  %105 = and i32 %104, %102
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %96
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %108 = tail call i32 @__traceiter_musb_state(ptr noundef null, ptr noundef %15, i8 noundef zeroext %19, ptr noundef nonnull @.str.54) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %109

109:                                              ; preds = %107, %96, %93
  %110 = load ptr, ptr @system_wq, align 4
  %111 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %110, ptr noundef %0, i32 noundef 100) #10
  %112 = load i32, ptr %90, align 4
  %113 = add i32 %112, -1
  store i32 %113, ptr %90, align 4
  br label %196

114:                                              ; preds = %88, %81, %51
  %115 = getelementptr i8, ptr %0, i32 3928
  %116 = load i8, ptr %115, align 8, !range !19
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %140, label %118

118:                                              ; preds = %114
  %119 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_state, i32 0, i32 1), align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %118
  %122 = tail call ptr @llvm.thread.pointer() #10
  %123 = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 2
  %124 = load i32, ptr %123, align 8
  %125 = lshr i32 %124, 5
  %126 = getelementptr i32, ptr @__cpu_online_mask, i32 %125
  %127 = load volatile i32, ptr %126, align 4
  %128 = and i32 %124, 31
  %129 = shl nuw i32 1, %128
  %130 = and i32 %129, %127
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %121
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %133 = tail call i32 @__traceiter_musb_state(ptr noundef null, ptr noundef %15, i8 noundef zeroext %19, ptr noundef nonnull @.str.55) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %134

134:                                              ; preds = %132, %121, %118
  %135 = load ptr, ptr %2, align 8
  %136 = tail call i64 @ktime_get_mono_fast_ns() #10
  %137 = getelementptr inbounds %struct.device, ptr %135, i32 0, i32 11, i32 22
  store volatile i64 %136, ptr %137, align 8
  %138 = load ptr, ptr %2, align 8
  %139 = tail call i32 @__pm_runtime_suspend(ptr noundef %138, i32 noundef 13) #10
  store i8 0, ptr %115, align 8
  br label %196

140:                                              ; preds = %114, %46, %25, %21, %14
  %141 = and i8 %19, 1
  %142 = getelementptr i8, ptr %0, i32 3928
  %143 = load i8, ptr %142, align 8, !range !19
  %144 = icmp eq i8 %141, %143
  br i1 %144, label %196, label %145

145:                                              ; preds = %140
  %146 = icmp eq i8 %141, 0
  %147 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_state, i32 0, i32 1), align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %146, label %175, label %149

149:                                              ; preds = %145
  br i1 %148, label %150, label %163

150:                                              ; preds = %149
  %151 = tail call ptr @llvm.thread.pointer() #10
  %152 = getelementptr inbounds %struct.thread_info, ptr %151, i32 0, i32 2
  %153 = load i32, ptr %152, align 8
  %154 = lshr i32 %153, 5
  %155 = getelementptr i32, ptr @__cpu_online_mask, i32 %154
  %156 = load volatile i32, ptr %155, align 4
  %157 = and i32 %153, 31
  %158 = shl nuw i32 1, %157
  %159 = and i32 %158, %156
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %150
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %162 = tail call i32 @__traceiter_musb_state(ptr noundef null, ptr noundef %15, i8 noundef zeroext %19, ptr noundef nonnull @.str.56) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %163

163:                                              ; preds = %161, %150, %149
  %164 = load ptr, ptr %2, align 8
  %165 = tail call i32 @__pm_runtime_resume(ptr noundef %164, i32 noundef 4) #10
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %168, ptr noundef nonnull @.str.50, i32 noundef %165) #11
  br label %169

169:                                              ; preds = %167, %163
  %170 = getelementptr i8, ptr %0, i32 3932
  store i32 3, ptr %170, align 4
  %171 = icmp sgt i8 %19, -1
  br i1 %171, label %195, label %172

172:                                              ; preds = %169
  %173 = load ptr, ptr @system_wq, align 4
  %174 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %173, ptr noundef %0, i32 noundef 300) #10
  br label %195

175:                                              ; preds = %145
  br i1 %148, label %176, label %189

176:                                              ; preds = %175
  %177 = tail call ptr @llvm.thread.pointer() #10
  %178 = getelementptr inbounds %struct.thread_info, ptr %177, i32 0, i32 2
  %179 = load i32, ptr %178, align 8
  %180 = lshr i32 %179, 5
  %181 = getelementptr i32, ptr @__cpu_online_mask, i32 %180
  %182 = load volatile i32, ptr %181, align 4
  %183 = and i32 %179, 31
  %184 = shl nuw i32 1, %183
  %185 = and i32 %184, %182
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %176
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %188 = tail call i32 @__traceiter_musb_state(ptr noundef null, ptr noundef %15, i8 noundef zeroext %19, ptr noundef nonnull @.str.57) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %189

189:                                              ; preds = %187, %176, %175
  %190 = load ptr, ptr %2, align 8
  %191 = tail call i64 @ktime_get_mono_fast_ns() #10
  %192 = getelementptr inbounds %struct.device, ptr %190, i32 0, i32 11, i32 22
  store volatile i64 %191, ptr %192, align 8
  %193 = load ptr, ptr %2, align 8
  %194 = tail call i32 @__pm_runtime_suspend(ptr noundef %193, i32 noundef 13) #10
  br label %195

195:                                              ; preds = %189, %172, %169
  store i8 %141, ptr %142, align 8
  br label %196

196:                                              ; preds = %195, %140, %134, %109, %76
  %197 = getelementptr i8, ptr %0, i32 308
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr inbounds %struct.usb_phy, ptr %198, i32 0, i32 5
  %200 = load ptr, ptr %199, align 4
  %201 = getelementptr inbounds %struct.usb_otg, ptr %200, i32 0, i32 5
  %202 = load i32, ptr %201, align 4
  %203 = getelementptr i8, ptr %0, i32 4540
  %204 = load i32, ptr %203, align 4
  %205 = icmp eq i32 %202, %204
  br i1 %205, label %208, label %206

206:                                              ; preds = %196
  store i32 %202, ptr %203, align 4
  %207 = load ptr, ptr %2, align 8
  tail call void @sysfs_notify(ptr noundef %207, ptr noundef null, ptr noundef nonnull @.str.51) #10
  br label %208

208:                                              ; preds = %206, %196
  %209 = load ptr, ptr %2, align 8
  %210 = tail call i64 @ktime_get_mono_fast_ns() #10
  %211 = getelementptr inbounds %struct.device, ptr %209, i32 0, i32 11, i32 22
  store volatile i64 %210, ptr %211, align 8
  %212 = load ptr, ptr %2, align 8
  %213 = tail call i32 @__pm_runtime_suspend(ptr noundef %212, i32 noundef 13) #10
  br label %214

214:                                              ; preds = %208, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @musb_deassert_reset(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -492
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %4 = getelementptr i8, ptr %0, i32 140
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @musb_port_reset(ptr noundef %2, i1 noundef zeroext false) #10
  br label %9

9:                                                ; preds = %8, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_host_finish_resume(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @musb_otg_timer_func(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -680
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %4 = getelementptr i8, ptr %0, i32 76
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_phy, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_otg, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %31 [
    i32 4, label %10
    i32 10, label %18
    i32 8, label %18
  ]

10:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %2, ptr noundef nonnull @.str.75) #10
  tail call void @musb_g_disconnect(ptr noundef %2) #10
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.usb_phy, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.usb_otg, ptr %13, i32 0, i32 5
  store i32 3, ptr %14, align 4
  %15 = getelementptr i8, ptr %0, i32 3716
  %16 = load i24, ptr %15, align 4
  %17 = and i24 %16, -5
  store i24 %17, ptr %15, align 4
  br label %33

18:                                               ; preds = %1, %1
  %19 = tail call ptr @usb_otg_state_string(i32 noundef %9) #10
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %2, ptr noundef nonnull @.str.76, ptr noundef %19) #10
  %20 = getelementptr i8, ptr %0, i32 -640
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.musb_platform_ops, ptr %21, i32 0, i32 26
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call void %23(ptr noundef %2, i32 noundef 0) #10
  br label %26

26:                                               ; preds = %25, %18
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.usb_phy, ptr %27, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.usb_otg, ptr %29, i32 0, i32 5
  store i32 12, ptr %30, align 4
  br label %33

31:                                               ; preds = %1
  %32 = tail call ptr @usb_otg_state_string(i32 noundef %9) #10
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %2, ptr noundef nonnull @.str.77, ptr noundef %32) #10
  br label %33

33:                                               ; preds = %31, %26, %10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_host_setup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_gadget_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_host_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_init_debugfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_host_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_readb(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_writeb(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_readw(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_writew(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_ulpi_read(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #10
  %8 = load ptr, ptr @musb_readb, align 4
  %9 = tail call zeroext i8 %8(ptr noundef %4, i32 noundef 1) #10
  %10 = and i8 %9, -3
  %11 = load ptr, ptr @musb_writeb, align 4
  tail call void %11(ptr noundef %4, i32 noundef 1, i8 noundef zeroext %10) #10
  %12 = load ptr, ptr @musb_writeb, align 4
  %13 = trunc i32 %1 to i8
  tail call void %12(ptr noundef %4, i32 noundef 117, i8 noundef zeroext %13) #10
  %14 = load ptr, ptr @musb_writeb, align 4
  tail call void %14(ptr noundef %4, i32 noundef 118, i8 noundef zeroext 5) #10
  br label %15

15:                                               ; preds = %21, %2
  %16 = phi i32 [ 0, %2 ], [ %22, %21 ]
  %17 = load ptr, ptr @musb_readb, align 4
  %18 = tail call zeroext i8 %17(ptr noundef %4, i32 noundef 118) #10
  %19 = and i8 %18, 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = add nuw nsw i32 %16, 1
  %23 = icmp eq i32 %22, 10000
  br i1 %23, label %32, label %15

24:                                               ; preds = %15
  %25 = load ptr, ptr @musb_readb, align 4
  %26 = tail call zeroext i8 %25(ptr noundef %4, i32 noundef 118) #10
  %27 = and i8 %26, -3
  %28 = load ptr, ptr @musb_writeb, align 4
  tail call void %28(ptr noundef %4, i32 noundef 118, i8 noundef zeroext %27) #10
  %29 = load ptr, ptr @musb_readb, align 4
  %30 = tail call zeroext i8 %29(ptr noundef %4, i32 noundef 116) #10
  %31 = zext i8 %30 to i32
  br label %32

32:                                               ; preds = %24, %21
  %33 = phi i32 [ %31, %24 ], [ -110, %21 ]
  %34 = load ptr, ptr %5, align 4
  %35 = tail call i32 @__pm_runtime_idle(ptr noundef %34, i32 noundef 5) #10
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_ulpi_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_phy, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #10
  %9 = load ptr, ptr @musb_readb, align 4
  %10 = tail call zeroext i8 %9(ptr noundef %5, i32 noundef 1) #10
  %11 = and i8 %10, -3
  %12 = load ptr, ptr @musb_writeb, align 4
  tail call void %12(ptr noundef %5, i32 noundef 1, i8 noundef zeroext %11) #10
  %13 = load ptr, ptr @musb_writeb, align 4
  %14 = trunc i32 %2 to i8
  tail call void %13(ptr noundef %5, i32 noundef 117, i8 noundef zeroext %14) #10
  %15 = load ptr, ptr @musb_writeb, align 4
  %16 = trunc i32 %1 to i8
  tail call void %15(ptr noundef %5, i32 noundef 116, i8 noundef zeroext %16) #10
  %17 = load ptr, ptr @musb_writeb, align 4
  tail call void %17(ptr noundef %5, i32 noundef 118, i8 noundef zeroext 1) #10
  br label %18

18:                                               ; preds = %24, %3
  %19 = phi i32 [ 0, %3 ], [ %25, %24 ]
  %20 = load ptr, ptr @musb_readb, align 4
  %21 = tail call zeroext i8 %20(ptr noundef %5, i32 noundef 118) #10
  %22 = and i8 %21, 2
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = add nuw nsw i32 %19, 1
  %26 = icmp eq i32 %25, 10000
  br i1 %26, label %32, label %18

27:                                               ; preds = %18
  %28 = load ptr, ptr @musb_readb, align 4
  %29 = tail call zeroext i8 %28(ptr noundef %5, i32 noundef 118) #10
  %30 = and i8 %29, -3
  %31 = load ptr, ptr @musb_writeb, align 4
  tail call void %31(ptr noundef %5, i32 noundef 118, i8 noundef zeroext %30) #10
  br label %32

32:                                               ; preds = %27, %24
  %33 = phi i32 [ 0, %27 ], [ -110, %24 ]
  %34 = load ptr, ptr %6, align 4
  %35 = tail call i32 @__pm_runtime_idle(ptr noundef %34, i32 noundef 5) #10
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_port_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_host_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_exit_debugfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_gadget_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mode_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  %7 = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 31
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_phy, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usb_otg, ptr %10, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = tail call ptr @usb_otg_state_string(i32 noundef %12) #10
  %14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.78, ptr noundef %13)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #10
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mode_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #10
  %8 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.16) #10
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.musb, ptr %6, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.musb_platform_ops, ptr %11, i32 0, i32 22
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %38, label %15

15:                                               ; preds = %9
  %16 = tail call i32 %13(ptr noundef %6, i8 noundef zeroext 1) #10
  br label %39

17:                                               ; preds = %4
  %18 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.17) #10
  br i1 %18, label %19, label %27

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.musb, ptr %6, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.musb_platform_ops, ptr %21, i32 0, i32 22
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %19
  %26 = tail call i32 %23(ptr noundef %6, i8 noundef zeroext 2) #10
  br label %39

27:                                               ; preds = %17
  %28 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.79) #10
  br i1 %28, label %30, label %29

29:                                               ; preds = %27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #10
  br label %43

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.musb, ptr %6, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.musb_platform_ops, ptr %32, i32 0, i32 22
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = tail call i32 %34(ptr noundef %6, i8 noundef zeroext 3) #10
  br label %39

38:                                               ; preds = %30, %19, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #10
  br label %42

39:                                               ; preds = %36, %25, %15
  %40 = phi i32 [ %16, %15 ], [ %26, %25 ], [ %37, %36 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %38
  br label %43

43:                                               ; preds = %42, %39, %29
  %44 = phi i32 [ %3, %42 ], [ %40, %39 ], [ -22, %29 ]
  ret i32 %44
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vbus_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #10
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  %8 = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 45
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.musb_platform_ops, ptr %11, i32 0, i32 25
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = tail call i32 %13(ptr noundef %5) #10
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15, %3
  %19 = load ptr, ptr @musb_readb, align 4
  %20 = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 27
  %21 = load ptr, ptr %20, align 8
  %22 = tail call zeroext i8 %19(ptr noundef %21, i32 noundef 96) #10
  %23 = and i8 %22, 24
  %24 = icmp eq i8 %23, 24
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %18, %15
  %27 = phi i32 [ %16, %15 ], [ %25, %18 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %7) #10
  %28 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #10
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %29, ptr @.str.83, ptr @.str.82
  %31 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.81, ptr noundef nonnull %30, i32 noundef %9)
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vbus_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !16
  %8 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.84, ptr noundef nonnull %5)
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.85) #11
  br label %40

11:                                               ; preds = %4
  %12 = call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #10
  %13 = load i32, ptr %5, align 4
  %14 = icmp eq i32 %13, 0
  %15 = call i32 @llvm.smax.i32(i32 %13, i32 1100)
  %16 = select i1 %14, i32 0, i32 %15
  %17 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 45
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 31
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.usb_phy, ptr %19, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.usb_otg, ptr %21, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 8
  br i1 %24, label %25, label %29

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 47
  %27 = load i24, ptr %26, align 4
  %28 = and i24 %27, -5
  store i24 %28, ptr %26, align 4
  br label %29

29:                                               ; preds = %25, %11
  %30 = load volatile i32, ptr @jiffies, align 64
  %31 = call i32 @__msecs_to_jiffies(i32 noundef %13) #10
  %32 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.musb_platform_ops, ptr %33, i32 0, i32 23
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %29
  %38 = add i32 %31, %30
  call void %35(ptr noundef %7, i32 noundef %38) #10
  br label %39

39:                                               ; preds = %37, %29
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %12) #10
  br label %40

40:                                               ; preds = %39, %10
  %41 = phi i32 [ -22, %10 ], [ %3, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %41
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @srp_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca i16, align 2
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 0, ptr %5, align 2, !annotation !16
  %8 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.87, ptr noundef nonnull %5)
  %9 = icmp ne i32 %8, 1
  %10 = load i16, ptr %5, align 2
  %11 = icmp ne i16 %10, 1
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.88) #11
  br label %15

14:                                               ; preds = %4
  call void @musb_g_wakeup(ptr noundef %7) #10
  br label %15

15:                                               ; preds = %14, %13
  %16 = phi i32 [ -22, %13 ], [ %3, %14 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_g_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #10
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !37
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #10, !srcloc !38
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 0, i32 -1, ptr elementtype(i32) %7) #10, !srcloc !39
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %56, label %11

11:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !40
  br label %56

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.musb_platform_ops, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void %16(ptr noundef %3) #10
  br label %19

19:                                               ; preds = %18, %12
  %20 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 27
  %21 = load ptr, ptr %20, align 8
  %22 = load ptr, ptr @musb_writeb, align 4
  tail call void %22(ptr noundef %21, i32 noundef 11, i8 noundef zeroext 0) #10
  %23 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 12
  store i16 0, ptr %23, align 4
  %24 = load ptr, ptr @musb_writew, align 4
  tail call void %24(ptr noundef %21, i32 noundef 6, i16 noundef zeroext 0) #10
  %25 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 11
  store i16 0, ptr %25, align 2
  %26 = load ptr, ptr @musb_writew, align 4
  tail call void %26(ptr noundef %21, i32 noundef 8, i16 noundef zeroext 0) #10
  %27 = load ptr, ptr @musb_clearb, align 4
  %28 = tail call zeroext i8 %27(ptr noundef %21, i32 noundef 10) #10
  %29 = load ptr, ptr @musb_clearw, align 4
  %30 = tail call zeroext i16 %29(ptr noundef %21, i32 noundef 2) #10
  %31 = load ptr, ptr @musb_clearw, align 4
  %32 = tail call zeroext i16 %31(ptr noundef %21, i32 noundef 4) #10
  %33 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 47
  %34 = load i24, ptr %33, align 4
  %35 = or i24 %34, 65536
  store i24 %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 6
  br label %37

37:                                               ; preds = %37, %19
  %38 = tail call zeroext i1 @flush_delayed_work(ptr noundef %36) #10
  br i1 %38, label %37, label %39

39:                                               ; preds = %37
  %40 = load i24, ptr %33, align 4
  %41 = and i24 %40, -65537
  store i24 %41, ptr %33, align 4
  %42 = load ptr, ptr %13, align 8
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 128
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load ptr, ptr @musb_writeb, align 4
  %48 = load ptr, ptr %20, align 8
  tail call void %47(ptr noundef %48, i32 noundef 96, i8 noundef zeroext 0) #10
  br label %49

49:                                               ; preds = %46, %39
  %50 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 20
  %51 = load volatile ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %50
  br i1 %52, label %54, label %53, !prof !35

53:                                               ; preds = %49
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 2848, i32 noundef 9, ptr noundef null) #10
  br label %54

54:                                               ; preds = %53, %49
  %55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  tail call fastcc void @musb_save_context(ptr noundef %3)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %55) #10
  br label %56

56:                                               ; preds = %54, %11, %6
  %57 = phi i32 [ 0, %54 ], [ %4, %6 ], [ %4, %11 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @musb_restore_context(ptr noundef %3)
  %4 = load ptr, ptr @musb_readb, align 4
  %5 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 27
  %6 = load ptr, ptr %5, align 8
  %7 = tail call zeroext i8 %4(ptr noundef %6, i32 noundef 96) #10
  %8 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 4, i32 5
  %9 = load i8, ptr %8, align 2
  %10 = xor i8 %9, %7
  %11 = icmp ult i8 %10, 32
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 13
  store i32 0, ptr %13, align 8
  br label %14

14:                                               ; preds = %12, %1
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 37
  %17 = load i16, ptr %16, align 2
  %18 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 12
  store i16 %17, ptr %18, align 4
  %19 = load ptr, ptr @musb_writew, align 4
  tail call void %19(ptr noundef %15, i32 noundef 6, i16 noundef zeroext %17) #10
  %20 = load i16, ptr %16, align 2
  %21 = and i16 %20, -2
  %22 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 11
  store i16 %21, ptr %22, align 2
  %23 = load ptr, ptr @musb_writew, align 4
  tail call void %23(ptr noundef %15, i32 noundef 8, i16 noundef zeroext %21) #10
  %24 = load ptr, ptr @musb_writeb, align 4
  tail call void %24(ptr noundef %15, i32 noundef 11, i8 noundef zeroext -9) #10
  %25 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 3
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.musb_platform_ops, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %14
  tail call void %28(ptr noundef %3) #10
  br label %31

31:                                               ; preds = %30, %14
  %32 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 41
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load ptr, ptr %25, align 8
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 128
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = or i8 %7, 1
  %42 = load ptr, ptr @musb_writeb, align 4
  %43 = load ptr, ptr %5, align 8
  tail call void %42(ptr noundef %43, i32 noundef 96, i8 noundef zeroext %41) #10
  br label %44

44:                                               ; preds = %40, %35, %31
  %45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %46 = tail call fastcc i32 @musb_run_resume_work(ptr noundef %3)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 25
  %50 = load ptr, ptr %49, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.89, i32 noundef %46) #11
  br label %51

51:                                               ; preds = %48, %44
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %45) #10
  %52 = tail call i64 @ktime_get_mono_fast_ns() #10
  %53 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 22
  store volatile i64 %52, ptr %53, align 8
  %54 = tail call i32 @__pm_runtime_suspend(ptr noundef %0, i32 noundef 13) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @musb_save_context(ptr noundef %3)
  %4 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 47
  %5 = load i24, ptr %4, align 4
  %6 = or i24 %5, 2
  store i24 %6, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @musb_runtime_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 47
  %5 = load i24, ptr %4, align 4
  %6 = and i24 %5, 1
  %7 = icmp eq i24 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  tail call fastcc void @musb_restore_context(ptr noundef %3)
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %10 = tail call fastcc i32 @musb_run_resume_work(ptr noundef %3)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.musb, ptr %3, i32 0, i32 25
  %14 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.89, i32 noundef %10) #11
  br label %15

15:                                               ; preds = %12, %8
  %16 = load i24, ptr %4, align 4
  %17 = and i24 %16, -3
  store i24 %17, ptr %4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %9) #10
  br label %18

18:                                               ; preds = %15, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @musb_save_context(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr @musb_readw, align 4
  %5 = tail call zeroext i16 %4(ptr noundef %3, i32 noundef 12) #10
  %6 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 4, i32 2
  store i16 %5, ptr %7, align 2
  %8 = load ptr, ptr @musb_readb, align 4
  %9 = tail call zeroext i8 %8(ptr noundef %3, i32 noundef 15) #10
  %10 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 4, i32 4
  store i8 %9, ptr %10, align 1
  %11 = load ptr, ptr @musb_readb, align 4
  %12 = tail call zeroext i8 %11(ptr noundef %3, i32 noundef 112) #10
  %13 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 4, i32 6
  store i8 %12, ptr %13, align 1
  %14 = load ptr, ptr @musb_readb, align 4
  %15 = tail call zeroext i8 %14(ptr noundef %3, i32 noundef 1) #10
  store i8 %15, ptr %6, align 4
  %16 = load ptr, ptr @musb_readb, align 4
  %17 = tail call zeroext i8 %16(ptr noundef %3, i32 noundef 11) #10
  %18 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 4, i32 1
  store i8 %17, ptr %18, align 1
  %19 = load ptr, ptr @musb_readb, align 4
  %20 = tail call zeroext i8 %19(ptr noundef %3, i32 noundef 14) #10
  %21 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 4, i32 3
  store i8 %20, ptr %21, align 4
  %22 = load ptr, ptr @musb_readb, align 4
  %23 = tail call zeroext i8 %22(ptr noundef %3, i32 noundef 96) #10
  %24 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 4, i32 5
  store i8 %23, ptr %24, align 2
  %25 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 55
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.musb_hdrc_config, ptr %26, i32 0, i32 3
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %130, label %30

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %32 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 2, i32 5
  br label %33

33:                                               ; preds = %123, %30
  %34 = phi ptr [ %26, %30 ], [ %124, %123 ]
  %35 = phi i32 [ 0, %30 ], [ %125, %123 ]
  %36 = getelementptr %struct.musb, ptr %0, i32 0, i32 35, i32 %35
  %37 = icmp eq ptr %36, null
  br i1 %37, label %123, label %38

38:                                               ; preds = %33
  %39 = getelementptr %struct.musb, ptr %0, i32 0, i32 35, i32 %35, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %123, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr @musb_writeb, align 4
  %44 = trunc i32 %35 to i8
  tail call void %43(ptr noundef %3, i32 noundef 14, i8 noundef zeroext %44) #10
  %45 = load ptr, ptr @musb_readw, align 4
  %46 = tail call zeroext i16 %45(ptr noundef nonnull %40, i32 noundef 0) #10
  %47 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %35
  store i16 %46, ptr %47, align 4
  %48 = load ptr, ptr @musb_readw, align 4
  %49 = tail call zeroext i16 %48(ptr noundef nonnull %40, i32 noundef 2) #10
  %50 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %35, i32 1
  store i16 %49, ptr %50, align 2
  %51 = load ptr, ptr @musb_readw, align 4
  %52 = tail call zeroext i16 %51(ptr noundef nonnull %40, i32 noundef 4) #10
  %53 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %35, i32 2
  store i16 %52, ptr %53, align 4
  %54 = load ptr, ptr @musb_readw, align 4
  %55 = tail call zeroext i16 %54(ptr noundef nonnull %40, i32 noundef 6) #10
  %56 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %35, i32 3
  store i16 %55, ptr %56, align 2
  %57 = load i24, ptr %31, align 4
  %58 = and i24 %57, 64
  %59 = icmp eq i24 %58, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %42
  %61 = load ptr, ptr @musb_readw, align 4
  %62 = tail call zeroext i16 %61(ptr noundef %3, i32 noundef 100) #10
  %63 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %35, i32 5
  store i16 %62, ptr %63, align 2
  %64 = load ptr, ptr @musb_readw, align 4
  %65 = tail call zeroext i16 %64(ptr noundef %3, i32 noundef 102) #10
  %66 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %35, i32 4
  store i16 %65, ptr %66, align 4
  %67 = load ptr, ptr @musb_readb, align 4
  %68 = tail call zeroext i8 %67(ptr noundef %3, i32 noundef 98) #10
  %69 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %35, i32 11
  store i8 %68, ptr %69, align 1
  %70 = load ptr, ptr @musb_readb, align 4
  %71 = tail call zeroext i8 %70(ptr noundef %3, i32 noundef 99) #10
  %72 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %35, i32 10
  store i8 %71, ptr %72, align 4
  br label %73

73:                                               ; preds = %60, %42
  %74 = load ptr, ptr @musb_readb, align 4
  %75 = tail call zeroext i8 %74(ptr noundef nonnull %40, i32 noundef 10) #10
  %76 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %35, i32 6
  store i8 %75, ptr %76, align 4
  %77 = load ptr, ptr @musb_readb, align 4
  %78 = tail call zeroext i8 %77(ptr noundef nonnull %40, i32 noundef 11) #10
  %79 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %35, i32 7
  store i8 %78, ptr %79, align 1
  %80 = load ptr, ptr @musb_readb, align 4
  %81 = tail call zeroext i8 %80(ptr noundef nonnull %40, i32 noundef 12) #10
  %82 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %35, i32 8
  store i8 %81, ptr %82, align 2
  %83 = load ptr, ptr @musb_readb, align 4
  %84 = tail call zeroext i8 %83(ptr noundef nonnull %40, i32 noundef 13) #10
  %85 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %35, i32 9
  store i8 %84, ptr %85, align 1
  %86 = load ptr, ptr @musb_readb, align 4
  %87 = load ptr, ptr %2, align 8
  %88 = load ptr, ptr %32, align 4
  %89 = tail call i32 %88(i8 noundef zeroext %44, i16 noundef zeroext 0) #10
  %90 = tail call zeroext i8 %86(ptr noundef %87, i32 noundef %89) #10
  %91 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %35, i32 12
  store i8 %90, ptr %91, align 2
  %92 = load ptr, ptr @musb_readb, align 4
  %93 = load ptr, ptr %2, align 8
  %94 = load ptr, ptr %32, align 4
  %95 = tail call i32 %94(i8 noundef zeroext %44, i16 noundef zeroext 2) #10
  %96 = tail call zeroext i8 %92(ptr noundef %93, i32 noundef %95) #10
  %97 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %35, i32 13
  store i8 %96, ptr %97, align 1
  %98 = load ptr, ptr @musb_readb, align 4
  %99 = load ptr, ptr %2, align 8
  %100 = load ptr, ptr %32, align 4
  %101 = tail call i32 %100(i8 noundef zeroext %44, i16 noundef zeroext 3) #10
  %102 = tail call zeroext i8 %98(ptr noundef %99, i32 noundef %101) #10
  %103 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %35, i32 14
  store i8 %102, ptr %103, align 4
  %104 = load ptr, ptr @musb_readb, align 4
  %105 = load ptr, ptr %2, align 8
  %106 = load ptr, ptr %32, align 4
  %107 = tail call i32 %106(i8 noundef zeroext %44, i16 noundef zeroext 4) #10
  %108 = tail call zeroext i8 %104(ptr noundef %105, i32 noundef %107) #10
  %109 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %35, i32 15
  store i8 %108, ptr %109, align 1
  %110 = load ptr, ptr @musb_readb, align 4
  %111 = load ptr, ptr %2, align 8
  %112 = load ptr, ptr %32, align 4
  %113 = tail call i32 %112(i8 noundef zeroext %44, i16 noundef zeroext 6) #10
  %114 = tail call zeroext i8 %110(ptr noundef %111, i32 noundef %113) #10
  %115 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %35, i32 16
  store i8 %114, ptr %115, align 2
  %116 = load ptr, ptr @musb_readb, align 4
  %117 = load ptr, ptr %2, align 8
  %118 = load ptr, ptr %32, align 4
  %119 = tail call i32 %118(i8 noundef zeroext %44, i16 noundef zeroext 7) #10
  %120 = tail call zeroext i8 %116(ptr noundef %117, i32 noundef %119) #10
  %121 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %35, i32 17
  store i8 %120, ptr %121, align 1
  %122 = load ptr, ptr %25, align 8
  br label %123

123:                                              ; preds = %73, %38, %33
  %124 = phi ptr [ %34, %38 ], [ %34, %33 ], [ %122, %73 ]
  %125 = add nuw nsw i32 %35, 1
  %126 = getelementptr inbounds %struct.musb_hdrc_config, ptr %124, i32 0, i32 3
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp ult i32 %125, %128
  br i1 %129, label %33, label %130

130:                                              ; preds = %123, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @musb_restore_context(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr @musb_writew, align 4
  %5 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 4, i32 2
  %7 = load i16, ptr %6, align 2
  tail call void %4(ptr noundef %3, i32 noundef 12, i16 noundef zeroext %7) #10
  %8 = load ptr, ptr @musb_writeb, align 4
  %9 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 4, i32 4
  %10 = load i8, ptr %9, align 1
  tail call void %8(ptr noundef %3, i32 noundef 15, i8 noundef zeroext %10) #10
  %11 = load ptr, ptr @musb_writeb, align 4
  %12 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 4, i32 6
  %13 = load i8, ptr %12, align 1
  tail call void %11(ptr noundef %3, i32 noundef 112, i8 noundef zeroext %13) #10
  %14 = load ptr, ptr @musb_readb, align 4
  %15 = tail call zeroext i8 %14(ptr noundef %3, i32 noundef 1) #10
  %16 = and i8 %15, 6
  %17 = load i8, ptr %5, align 4
  %18 = and i8 %17, -7
  store i8 %18, ptr %5, align 4
  %19 = or i8 %18, %16
  %20 = load ptr, ptr @musb_writeb, align 4
  tail call void %20(ptr noundef %3, i32 noundef 1, i8 noundef zeroext %19) #10
  %21 = load ptr, ptr @musb_writew, align 4
  %22 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 12
  %23 = load i16, ptr %22, align 4
  tail call void %21(ptr noundef %3, i32 noundef 6, i16 noundef zeroext %23) #10
  %24 = load ptr, ptr @musb_writew, align 4
  %25 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 11
  %26 = load i16, ptr %25, align 2
  tail call void %24(ptr noundef %3, i32 noundef 8, i16 noundef zeroext %26) #10
  %27 = load ptr, ptr @musb_writeb, align 4
  %28 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 4, i32 1
  %29 = load i8, ptr %28, align 1
  tail call void %27(ptr noundef %3, i32 noundef 11, i8 noundef zeroext %29) #10
  %30 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 4, i32 5
  %31 = load i8, ptr %30, align 2
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %1
  %35 = load ptr, ptr @musb_writeb, align 4
  tail call void %35(ptr noundef %3, i32 noundef 96, i8 noundef zeroext %31) #10
  br label %36

36:                                               ; preds = %34, %1
  %37 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 55
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.musb_hdrc_config, ptr %38, i32 0, i32 3
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %142, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 47
  %44 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 2, i32 5
  br label %45

45:                                               ; preds = %135, %42
  %46 = phi ptr [ %38, %42 ], [ %136, %135 ]
  %47 = phi i32 [ 0, %42 ], [ %137, %135 ]
  %48 = getelementptr %struct.musb, ptr %0, i32 0, i32 35, i32 %47
  %49 = icmp eq ptr %48, null
  br i1 %49, label %135, label %50

50:                                               ; preds = %45
  %51 = getelementptr %struct.musb, ptr %0, i32 0, i32 35, i32 %47, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %135, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr @musb_writeb, align 4
  %56 = trunc i32 %47 to i8
  tail call void %55(ptr noundef %3, i32 noundef 14, i8 noundef zeroext %56) #10
  %57 = load ptr, ptr @musb_writew, align 4
  %58 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %47
  %59 = load i16, ptr %58, align 4
  tail call void %57(ptr noundef nonnull %52, i32 noundef 0, i16 noundef zeroext %59) #10
  %60 = load ptr, ptr @musb_writew, align 4
  %61 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %47, i32 1
  %62 = load i16, ptr %61, align 2
  tail call void %60(ptr noundef nonnull %52, i32 noundef 2, i16 noundef zeroext %62) #10
  %63 = load ptr, ptr @musb_writew, align 4
  %64 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %47, i32 2
  %65 = load i16, ptr %64, align 4
  tail call void %63(ptr noundef nonnull %52, i32 noundef 4, i16 noundef zeroext %65) #10
  %66 = load ptr, ptr @musb_writew, align 4
  %67 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %47, i32 3
  %68 = load i16, ptr %67, align 2
  tail call void %66(ptr noundef nonnull %52, i32 noundef 6, i16 noundef zeroext %68) #10
  %69 = load i24, ptr %43, align 4
  %70 = and i24 %69, 64
  %71 = icmp eq i24 %70, 0
  br i1 %71, label %85, label %72

72:                                               ; preds = %54
  %73 = load ptr, ptr @musb_writeb, align 4
  %74 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %47, i32 11
  %75 = load i8, ptr %74, align 1
  tail call void %73(ptr noundef %3, i32 noundef 98, i8 noundef zeroext %75) #10
  %76 = load ptr, ptr @musb_writeb, align 4
  %77 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %47, i32 10
  %78 = load i8, ptr %77, align 4
  tail call void %76(ptr noundef %3, i32 noundef 99, i8 noundef zeroext %78) #10
  %79 = load ptr, ptr @musb_writew, align 4
  %80 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %47, i32 5
  %81 = load i16, ptr %80, align 2
  tail call void %79(ptr noundef %3, i32 noundef 100, i16 noundef zeroext %81) #10
  %82 = load ptr, ptr @musb_writew, align 4
  %83 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %47, i32 4
  %84 = load i16, ptr %83, align 4
  tail call void %82(ptr noundef %3, i32 noundef 102, i16 noundef zeroext %84) #10
  br label %85

85:                                               ; preds = %72, %54
  %86 = load ptr, ptr @musb_writeb, align 4
  %87 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %47, i32 6
  %88 = load i8, ptr %87, align 4
  tail call void %86(ptr noundef nonnull %52, i32 noundef 10, i8 noundef zeroext %88) #10
  %89 = load ptr, ptr @musb_writeb, align 4
  %90 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %47, i32 7
  %91 = load i8, ptr %90, align 1
  tail call void %89(ptr noundef nonnull %52, i32 noundef 11, i8 noundef zeroext %91) #10
  %92 = load ptr, ptr @musb_writeb, align 4
  %93 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %47, i32 8
  %94 = load i8, ptr %93, align 2
  tail call void %92(ptr noundef nonnull %52, i32 noundef 12, i8 noundef zeroext %94) #10
  %95 = load ptr, ptr @musb_writeb, align 4
  %96 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %47, i32 9
  %97 = load i8, ptr %96, align 1
  tail call void %95(ptr noundef nonnull %52, i32 noundef 13, i8 noundef zeroext %97) #10
  %98 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %47, i32 12
  %99 = load i8, ptr %98, align 2
  %100 = load ptr, ptr @musb_writeb, align 4
  %101 = load ptr, ptr %2, align 8
  %102 = load ptr, ptr %44, align 4
  %103 = tail call i32 %102(i8 noundef zeroext %56, i16 noundef zeroext 0) #10
  tail call void %100(ptr noundef %101, i32 noundef %103, i8 noundef zeroext %99) #10
  %104 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %47, i32 13
  %105 = load i8, ptr %104, align 1
  %106 = load ptr, ptr @musb_writeb, align 4
  %107 = load ptr, ptr %2, align 8
  %108 = load ptr, ptr %44, align 4
  %109 = tail call i32 %108(i8 noundef zeroext %56, i16 noundef zeroext 2) #10
  tail call void %106(ptr noundef %107, i32 noundef %109, i8 noundef zeroext %105) #10
  %110 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %47, i32 14
  %111 = load i8, ptr %110, align 4
  %112 = load ptr, ptr @musb_writeb, align 4
  %113 = load ptr, ptr %2, align 8
  %114 = load ptr, ptr %44, align 4
  %115 = tail call i32 %114(i8 noundef zeroext %56, i16 noundef zeroext 3) #10
  tail call void %112(ptr noundef %113, i32 noundef %115, i8 noundef zeroext %111) #10
  %116 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %47, i32 15
  %117 = load i8, ptr %116, align 1
  %118 = load ptr, ptr @musb_writeb, align 4
  %119 = load ptr, ptr %2, align 8
  %120 = load ptr, ptr %44, align 4
  %121 = tail call i32 %120(i8 noundef zeroext %56, i16 noundef zeroext 4) #10
  tail call void %118(ptr noundef %119, i32 noundef %121, i8 noundef zeroext %117) #10
  %122 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %47, i32 16
  %123 = load i8, ptr %122, align 2
  %124 = load ptr, ptr @musb_writeb, align 4
  %125 = load ptr, ptr %2, align 8
  %126 = load ptr, ptr %44, align 4
  %127 = tail call i32 %126(i8 noundef zeroext %56, i16 noundef zeroext 6) #10
  tail call void %124(ptr noundef %125, i32 noundef %127, i8 noundef zeroext %123) #10
  %128 = getelementptr %struct.musb, ptr %0, i32 0, i32 4, i32 9, i32 %47, i32 17
  %129 = load i8, ptr %128, align 1
  %130 = load ptr, ptr @musb_writeb, align 4
  %131 = load ptr, ptr %2, align 8
  %132 = load ptr, ptr %44, align 4
  %133 = tail call i32 %132(i8 noundef zeroext %56, i16 noundef zeroext 7) #10
  tail call void %130(ptr noundef %131, i32 noundef %133, i8 noundef zeroext %129) #10
  %134 = load ptr, ptr %37, align 8
  br label %135

135:                                              ; preds = %85, %50, %45
  %136 = phi ptr [ %46, %50 ], [ %46, %45 ], [ %134, %85 ]
  %137 = add nuw nsw i32 %47, 1
  %138 = getelementptr inbounds %struct.musb_hdrc_config, ptr %136, i32 0, i32 3
  %139 = load i8, ptr %138, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp ult i32 %137, %140
  br i1 %141, label %45, label %142

142:                                              ; preds = %135, %36
  %143 = load ptr, ptr @musb_writeb, align 4
  %144 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 4, i32 3
  %145 = load i8, ptr %144, align 4
  tail call void %143(ptr noundef %3, i32 noundef 14, i8 noundef zeroext %145) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @musb_run_resume_work(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 1
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %4 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 20
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %32, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  br label %9

9:                                                ; preds = %24, %7
  %10 = phi ptr [ %5, %7 ], [ %13, %24 ]
  %11 = phi i32 [ 0, %7 ], [ %25, %24 ]
  %12 = getelementptr i8, ptr %10, i32 -8
  %13 = load ptr, ptr %10, align 4
  %14 = load ptr, ptr %12, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %9
  %17 = getelementptr i8, ptr %10, i32 -4
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %14(ptr noundef %0, ptr noundef %18) #10
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load ptr, ptr %8, align 8
  %23 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.90, ptr noundef %23, i32 noundef %19) #11
  br label %24

24:                                               ; preds = %21, %16, %9
  %25 = phi i32 [ %19, %21 ], [ %19, %16 ], [ %11, %9 ]
  %26 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %10, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %26, align 4
  %30 = load ptr, ptr %8, align 8
  tail call void @devm_kfree(ptr noundef %30, ptr noundef %12) #10
  %31 = icmp eq ptr %13, %4
  br i1 %31, label %32, label %9

32:                                               ; preds = %24, %1
  %33 = phi i32 [ 0, %1 ], [ %25, %24 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #10
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.cttz.i16(i16, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!8 = !{i64 3811971}
!9 = !{i64 2154265527}
!10 = !{i64 2154265711}
!11 = !{i64 2154278724}
!12 = !{i64 2154278910}
!13 = !{i64 3811553}
!14 = !{i64 2154195549}
!15 = !{i64 2154195717}
!16 = !{!"auto-init"}
!17 = !{i64 2154290885}
!18 = !{i64 2154291021}
!19 = !{i8 0, i8 2}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i16 0, i16 17}
!22 = !{i64 2154662374, i64 2154662868, i64 2154662411, i64 2154662467, i64 2154662501, i64 2154662525, i64 2154662566, i64 2154662587, i64 2154662615, i64 2154662649}
!23 = !{i64 3811751}
!24 = !{i64 2154208677}
!25 = !{i64 2154208861}
!26 = !{i64 2154221859}
!27 = !{i64 2154222045}
!28 = !{i64 3811356}
!29 = !{i64 3811133}
!30 = !{i64 2154239125}
!31 = !{i64 2154239309}
!32 = !{i64 2154252322}
!33 = !{i64 2154252508}
!34 = !{i64 3810933}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{i64 620606}
!37 = !{i64 2148121681}
!38 = !{i64 620788, i64 2148110759, i64 2148110785, i64 2148110832, i64 2148110854, i64 2148110882, i64 2148110902}
!39 = !{i64 607357, i64 607382, i64 607404, i64 607420, i64 607432, i64 607452, i64 607476, i64 607492, i64 607504}
!40 = !{i64 2148121807}
