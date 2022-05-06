; ModuleID = '/llk/IR/drivers/usb/gadget/udc/snps_udc_core.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/snps_udc_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udc_mask_unused_interrupts:\09\09\09\09\09"
module asm "\09.asciz \09\22udc_mask_unused_interrupts\22\09\09\09\09\09"
module asm "__kstrtabns_udc_mask_unused_interrupts:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udc_enable_dev_setup_interrupts:\09\09\09\09\09"
module asm "\09.asciz \09\22udc_enable_dev_setup_interrupts\22\09\09\09\09\09"
module asm "__kstrtabns_udc_enable_dev_setup_interrupts:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_empty_req_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22empty_req_queue\22\09\09\09\09\09"
module asm "__kstrtabns_empty_req_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udc_basic_init:\09\09\09\09\09"
module asm "\09.asciz \09\22udc_basic_init\22\09\09\09\09\09"
module asm "__kstrtabns_udc_basic_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udc_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22udc_irq\22\09\09\09\09\09"
module asm "__kstrtabns_udc_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gadget_release:\09\09\09\09\09"
module asm "\09.asciz \09\22gadget_release\22\09\09\09\09\09"
module asm "__kstrtabns_gadget_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udc_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22udc_remove\22\09\09\09\09\09"
module asm "__kstrtabns_udc_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_dma_pools:\09\09\09\09\09"
module asm "\09.asciz \09\22free_dma_pools\22\09\09\09\09\09"
module asm "__kstrtabns_free_dma_pools:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_dma_pools:\09\09\09\09\09"
module asm "\09.asciz \09\22init_dma_pools\22\09\09\09\09\09"
module asm "__kstrtabns_init_dma_pools:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udc_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22udc_probe\22\09\09\09\09\09"
module asm "__kstrtabns_udc_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.udc_setup_data = type { [2 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.65 = type { ptr, %struct.usb_ep_caps }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.udc = type { %struct.usb_gadget, %struct.spinlock, [32 x %struct.udc_ep], ptr, i8, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i16, i16, i16, ptr, ptr, ptr, %struct.extcon_specific_cable_nb, %struct.notifier_block, %struct.delayed_work, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.udc_ep = type { %struct.usb_ep, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, %struct.list_head, i32, i32, i24 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.extcon_specific_cable_nb = type { ptr, i32, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.udc_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.udc_request = type { %struct.usb_request, i8, i32, ptr, ptr, %struct.list_head, i32 }
%struct.udc_ep_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.udc_stp_dma = type { i32, i32, i32, i32 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.udc_data_dma = type { i32, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.udc_csrs = type { i32, [9 x i32] }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>

@__param_str_use_dma = internal constant [22 x i8] c"snps_udc_core.use_dma\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@use_dma = internal global i8 1, align 1
@__param_use_dma = internal constant %struct.kernel_param { ptr @__param_str_use_dma, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @use_dma } }, section "__param", align 4
@__UNIQUE_ID_use_dmatype228 = internal constant [36 x i8] c"snps_udc_core.parmtype=use_dma:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_dma229 = internal constant [40 x i8] c"snps_udc_core.parm=use_dma:true for DMA\00", section ".modinfo", align 1
@__param_str_use_dma_ppb = internal constant [26 x i8] c"snps_udc_core.use_dma_ppb\00", align 1
@use_dma_ppb = internal global i8 1, align 1
@__param_use_dma_ppb = internal constant %struct.kernel_param { ptr @__param_str_use_dma_ppb, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @use_dma_ppb } }, section "__param", align 4
@__UNIQUE_ID_use_dma_ppbtype230 = internal constant [40 x i8] c"snps_udc_core.parmtype=use_dma_ppb:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_dma_ppb231 = internal constant [70 x i8] c"snps_udc_core.parm=use_dma_ppb:true for DMA in packet per buffer mode\00", section ".modinfo", align 1
@__param_str_use_dma_ppb_du = internal constant [29 x i8] c"snps_udc_core.use_dma_ppb_du\00", align 1
@use_dma_ppb_du = internal global i8 0, align 1
@__param_use_dma_ppb_du = internal constant %struct.kernel_param { ptr @__param_str_use_dma_ppb_du, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @use_dma_ppb_du } }, section "__param", align 4
@__UNIQUE_ID_use_dma_ppb_dutype232 = internal constant [43 x i8] c"snps_udc_core.parmtype=use_dma_ppb_du:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_dma_ppb_du233 = internal constant [96 x i8] c"snps_udc_core.parm=use_dma_ppb_du:true for DMA in packet per buffer mode with descriptor update\00", section ".modinfo", align 1
@__param_str_use_fullspeed = internal constant [28 x i8] c"snps_udc_core.use_fullspeed\00", align 1
@use_fullspeed = internal global i8 0, align 1
@__param_use_fullspeed = internal constant %struct.kernel_param { ptr @__param_str_use_fullspeed, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @use_fullspeed } }, section "__param", align 4
@__UNIQUE_ID_use_fullspeedtype234 = internal constant [42 x i8] c"snps_udc_core.parmtype=use_fullspeed:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_fullspeed235 = internal constant [57 x i8] c"snps_udc_core.parm=use_fullspeed:true for fullspeed only\00", section ".modinfo", align 1
@__kstrtab_udc_mask_unused_interrupts = external dso_local constant [0 x i8], align 1
@__kstrtabns_udc_mask_unused_interrupts = external dso_local constant [0 x i8], align 1
@__ksymtab_udc_mask_unused_interrupts = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udc_mask_unused_interrupts to i32), ptr @__kstrtab_udc_mask_unused_interrupts, ptr @__kstrtabns_udc_mask_unused_interrupts }, section "___ksymtab_gpl+udc_mask_unused_interrupts", align 4
@__kstrtab_udc_enable_dev_setup_interrupts = external dso_local constant [0 x i8], align 1
@__kstrtabns_udc_enable_dev_setup_interrupts = external dso_local constant [0 x i8], align 1
@__ksymtab_udc_enable_dev_setup_interrupts = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udc_enable_dev_setup_interrupts to i32), ptr @__kstrtab_udc_enable_dev_setup_interrupts, ptr @__kstrtabns_udc_enable_dev_setup_interrupts }, section "___ksymtab_gpl+udc_enable_dev_setup_interrupts", align 4
@__kstrtab_empty_req_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_empty_req_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_empty_req_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @empty_req_queue to i32), ptr @__kstrtab_empty_req_queue, ptr @__kstrtabns_empty_req_queue }, section "___ksymtab_gpl+empty_req_queue", align 4
@udc_timer = internal global %struct.timer_list zeroinitializer, align 4
@set_rde = internal unnamed_addr global i32 -1, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@udc_pollstall_timer = internal global %struct.timer_list zeroinitializer, align 4
@__kstrtab_udc_basic_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_udc_basic_init = external dso_local constant [0 x i8], align 1
@__ksymtab_udc_basic_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udc_basic_init to i32), ptr @__kstrtab_udc_basic_init, ptr @__kstrtabns_udc_basic_init }, section "___ksymtab_gpl+udc_basic_init", align 4
@__kstrtab_udc_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_udc_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_udc_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udc_irq to i32), ptr @__kstrtab_udc_irq, ptr @__kstrtabns_udc_irq }, section "___ksymtab_gpl+udc_irq", align 4
@__kstrtab_gadget_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_gadget_release = external dso_local constant [0 x i8], align 1
@__ksymtab_gadget_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gadget_release to i32), ptr @__kstrtab_gadget_release, ptr @__kstrtabns_gadget_release }, section "___ksymtab_gpl+gadget_release", align 4
@stop_timer = internal unnamed_addr global i32 0, align 4
@on_exit = internal global %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @on_exit, i64 8), ptr getelementptr (i8, ptr @on_exit, i64 8) } } }, align 4
@stop_pollstall_timer = internal unnamed_addr global i32 0, align 4
@on_pollstall_exit = internal global %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @on_pollstall_exit, i64 8), ptr getelementptr (i8, ptr @on_pollstall_exit, i64 8) } } }, align 4
@udc = internal unnamed_addr global ptr null, align 4
@__kstrtab_udc_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_udc_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_udc_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udc_remove to i32), ptr @__kstrtab_udc_remove, ptr @__kstrtabns_udc_remove }, section "___ksymtab_gpl+udc_remove", align 4
@__kstrtab_free_dma_pools = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_dma_pools = external dso_local constant [0 x i8], align 1
@__ksymtab_free_dma_pools = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_dma_pools to i32), ptr @__kstrtab_free_dma_pools, ptr @__kstrtabns_free_dma_pools }, section "___ksymtab_gpl+free_dma_pools", align 4
@use_dma_bufferfill_mode = internal unnamed_addr global i1 false, align 4
@.str = private unnamed_addr constant [14 x i8] c"data_requests\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"setup requests\00", align 1
@__kstrtab_init_dma_pools = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_dma_pools = external dso_local constant [0 x i8], align 1
@__ksymtab_init_dma_pools = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_dma_pools to i32), ptr @__kstrtab_init_dma_pools, ptr @__kstrtabns_init_dma_pools }, section "___ksymtab_gpl+init_dma_pools", align 4
@udc_ops = internal constant %struct.usb_gadget_ops { ptr @udc_get_frame, ptr @udc_wakeup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amd5536_udc_start, ptr @amd5536_udc_stop, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"gadget\00", align 1
@name = internal constant [4 x i8] c"udc\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@mod_desc = internal constant [31 x i8] c"Synopsys USB Device Controller\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"irq %s, pci mem %08lx, chip rev %02x(Geode5536 %s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"A0\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"B1\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"01.00.0206\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"chip revision is A0; too old\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"driver version: %s(for Geode5536 B1)\0A\00", align 1
@__kstrtab_udc_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_udc_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_udc_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udc_probe to i32), ptr @__kstrtab_udc_probe, ptr @__kstrtabns_udc_probe }, section "___ksymtab_gpl+udc_probe", align 4
@__UNIQUE_ID_description236 = internal constant [57 x i8] c"snps_udc_core.description=Synopsys USB Device Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author237 = internal constant [37 x i8] c"snps_udc_core.author=Thomas Dahlmann\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [56 x i8] c"snps_udc_core.file=drivers/usb/gadget/udc/snps_udc_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [26 x i8] c"snps_udc_core.license=GPL\00", section ".modinfo", align 1
@setup_data = internal global %union.udc_setup_data zeroinitializer, align 8
@cnak_pending = internal unnamed_addr global i32 0, align 4
@udc_stall_spinlock = internal global %struct.spinlock zeroinitializer, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"HE ep%dout occurred\0A\00", align 1
@udc_rxfifo_pending = internal unnamed_addr global i1 false, align 4
@.str.12 = private unnamed_addr constant [38 x i8] c"BNA ep%din occurred - DESPTR = %08lx\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"HE ep%dn occurred - DESPTR = %08lx\0A\00", align 1
@soft_reset_occured = internal unnamed_addr global i32 0, align 4
@soft_reset_after_usbreset_occured = internal unnamed_addr global i32 0, align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"Connect: %s\0A\00", align 1
@udc_ep_ops = internal constant %struct.usb_ep_ops { ptr @udc_ep_enable, ptr @udc_ep_disable, ptr null, ptr @udc_alloc_request, ptr @udc_free_request, ptr @udc_queue, ptr @udc_dequeue, ptr @udc_set_halt, ptr null, ptr null, ptr null }, align 4
@ep0_string = internal constant [6 x i8] c"ep0in\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@udc_irq_spinlock = internal global %struct.spinlock zeroinitializer, align 4
@ep_info = internal unnamed_addr constant [32 x %struct.anon.65] [%struct.anon.65 { ptr @ep0_string, %struct.usb_ep_caps { i8 17, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.15, %struct.usb_ep_caps { i8 20, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.16, %struct.usb_ep_caps { i8 20, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.17, %struct.usb_ep_caps { i8 20, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.18, %struct.usb_ep_caps { i8 20, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.19, %struct.usb_ep_caps { i8 20, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.20, %struct.usb_ep_caps { i8 20, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.21, %struct.usb_ep_caps { i8 20, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.22, %struct.usb_ep_caps { i8 20, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.23, %struct.usb_ep_caps { i8 20, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.24, %struct.usb_ep_caps { i8 20, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.25, %struct.usb_ep_caps { i8 20, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.26, %struct.usb_ep_caps { i8 20, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.27, %struct.usb_ep_caps { i8 20, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.28, %struct.usb_ep_caps { i8 20, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.29, %struct.usb_ep_caps { i8 20, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.30, %struct.usb_ep_caps { i8 33, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.31, %struct.usb_ep_caps { i8 36, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.32, %struct.usb_ep_caps { i8 36, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.33, %struct.usb_ep_caps { i8 36, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.34, %struct.usb_ep_caps { i8 36, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.35, %struct.usb_ep_caps { i8 36, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.36, %struct.usb_ep_caps { i8 36, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.37, %struct.usb_ep_caps { i8 36, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.38, %struct.usb_ep_caps { i8 36, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.39, %struct.usb_ep_caps { i8 36, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.40, %struct.usb_ep_caps { i8 36, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.41, %struct.usb_ep_caps { i8 36, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.42, %struct.usb_ep_caps { i8 36, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.43, %struct.usb_ep_caps { i8 36, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.44, %struct.usb_ep_caps { i8 36, [3 x i8] undef } }, %struct.anon.65 { ptr @.str.45, %struct.usb_ep_caps { i8 36, [3 x i8] undef } }], align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"ep1in-int\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"ep2in-bulk\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"ep3in-bulk\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"ep4in-bulk\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"ep5in-bulk\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"ep6in-bulk\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"ep7in-bulk\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"ep8in-bulk\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"ep9in-bulk\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"ep10in-bulk\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"ep11in-bulk\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"ep12in-bulk\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"ep13in-bulk\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"ep14in-bulk\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"ep15in-bulk\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"ep0out\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"ep1out-bulk\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"ep2out-bulk\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"ep3out-bulk\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"ep4out-bulk\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"ep5out-bulk\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"ep6out-bulk\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"ep7out-bulk\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"ep8out-bulk\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"ep9out-bulk\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"ep10out-bulk\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"ep11out-bulk\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"ep12out-bulk\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"ep13out-bulk\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"ep14out-bulk\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"ep15out-bulk\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"USB Disconnect\0A\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"USB Connect\0A\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"DMA mode (%s)\0A\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"PPBNDU\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"PPBDU\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"BF\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"FIFO mode\0A\00", align 1
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__UNIQUE_ID_use_dma229, ptr @__UNIQUE_ID_use_dma_ppb231, ptr @__UNIQUE_ID_use_dma_ppb_du233, ptr @__UNIQUE_ID_use_dma_ppb_dutype232, ptr @__UNIQUE_ID_use_dma_ppbtype230, ptr @__UNIQUE_ID_use_dmatype228, ptr @__UNIQUE_ID_use_fullspeed235, ptr @__UNIQUE_ID_use_fullspeedtype234, ptr @__ksymtab_empty_req_queue, ptr @__ksymtab_free_dma_pools, ptr @__ksymtab_gadget_release, ptr @__ksymtab_init_dma_pools, ptr @__ksymtab_udc_basic_init, ptr @__ksymtab_udc_enable_dev_setup_interrupts, ptr @__ksymtab_udc_irq, ptr @__ksymtab_udc_mask_unused_interrupts, ptr @__ksymtab_udc_probe, ptr @__ksymtab_udc_remove, ptr @__param_use_dma, ptr @__param_use_dma_ppb, ptr @__param_use_dma_ppb_du, ptr @__param_use_fullspeed], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udc_mask_unused_interrupts(ptr nocapture noundef readonly %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !8
  tail call void @arm_heavy_mb() #10
  %2 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.udc_regs, ptr %3, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 255) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.udc_regs, ptr %5, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 -1) #10, !srcloc !9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udc_enable_dev_setup_interrupts(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.udc_regs, ptr %3, i32 0, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %6 = and i32 %5, -204
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.udc_regs, ptr %7, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #10, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @empty_req_queue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 16
  %3 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 15
  store i32 1, ptr %2, align 4
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %38, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 14
  %8 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 18
  br label %10

10:                                               ; preds = %28, %6
  %11 = phi i32 [ 1, %6 ], [ %23, %28 ]
  %12 = phi ptr [ %4, %6 ], [ %36, %28 ]
  %13 = getelementptr i8, ptr %12, i32 -72
  %14 = load ptr, ptr %7, align 4
  %15 = load ptr, ptr %8, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %9, align 4
  %19 = lshr i32 %18, 19
  %20 = and i32 %19, 1
  tail call void @usb_gadget_unmap_request(ptr noundef %14, ptr noundef %13, i32 noundef %20) #10
  %21 = load i32, ptr %2, align 4
  br label %22

22:                                               ; preds = %17, %10
  %23 = phi i32 [ %21, %17 ], [ %11, %10 ]
  store i32 1, ptr %2, align 4
  %24 = getelementptr i8, ptr %12, i32 -24
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, -115
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 -108, ptr %24, align 4
  br label %28

28:                                               ; preds = %27, %22
  %29 = getelementptr i8, ptr %12, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %12, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store volatile ptr %31, ptr %30, align 4
  store volatile ptr %12, ptr %12, align 4
  store ptr %12, ptr %29, align 4
  %33 = getelementptr inbounds %struct.udc, ptr %14, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %34 = load i16, ptr %33, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  tail call void @usb_gadget_giveback_request(ptr noundef %0, ptr noundef %13) #10
  tail call void @_raw_spin_lock(ptr noundef %33) #10
  store i32 %23, ptr %2, align 4
  %36 = load volatile ptr, ptr %3, align 4
  %37 = icmp eq ptr %36, %3
  br i1 %37, label %38, label %10

38:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @complete_req(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 18
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 19
  %13 = and i32 %12, 1
  tail call void @usb_gadget_unmap_request(ptr noundef %5, ptr noundef %1, i32 noundef %13) #10
  br label %14

14:                                               ; preds = %9, %3
  %15 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 16
  %16 = load i32, ptr %15, align 4
  store i32 1, ptr %15, align 4
  %17 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, -115
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 %2, ptr %17, align 4
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %struct.udc_request, ptr %1, i32 0, i32 5
  %23 = getelementptr inbounds %struct.udc_request, ptr %1, i32 0, i32 5, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %22, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %24, ptr %26, align 4
  store volatile ptr %25, ptr %24, align 4
  store volatile ptr %22, ptr %22, align 4
  store ptr %22, ptr %23, align 4
  %27 = getelementptr inbounds %struct.udc, ptr %5, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %28 = load i16, ptr %27, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %27, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  tail call void @usb_gadget_giveback_request(ptr noundef %0, ptr noundef %1) #10
  tail call void @_raw_spin_lock(ptr noundef %27) #10
  store i32 %16, ptr %15, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @udc_basic_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  store i32 0, ptr %2, align 4
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.timer_list, ptr @udc_timer, i32 0, i32 0, i32 1), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  store i32 0, ptr @set_rde, align 4
  %6 = load volatile i32, ptr @jiffies, align 64
  %7 = add i32 %6, -1
  %8 = tail call i32 @mod_timer(ptr noundef nonnull @udc_timer, i32 noundef %7) #10
  br label %9

9:                                                ; preds = %5, %1
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.timer_list, ptr @udc_pollstall_timer, i32 0, i32 0, i32 1), align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = add i32 %13, -1
  %15 = tail call i32 @mod_timer(ptr noundef nonnull @udc_pollstall_timer, i32 noundef %14) #10
  br label %16

16:                                               ; preds = %12, %9
  %17 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.udc_regs, ptr %18, i32 0, i32 1
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %21 = and i32 %20, -13
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !19
  tail call void @arm_heavy_mb() #10
  %22 = load ptr, ptr %17, align 4
  %23 = getelementptr inbounds %struct.udc_regs, ptr %22, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #10, !srcloc !9
  %24 = load ptr, ptr %17, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !20
  %26 = or i32 %25, 131084
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !21
  tail call void @arm_heavy_mb() #10
  %27 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %26) #10, !srcloc !9
  %28 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 4
  store volatile ptr %28, ptr %28, align 4
  %29 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 4, i32 1
  %30 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 1, i32 0, i32 3
  %31 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 1, i32 0, i32 3, i32 1
  store ptr %28, ptr %31, align 4
  store volatile ptr %30, ptr %28, align 4
  %32 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 2, i32 0, i32 3
  %33 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 2, i32 0, i32 3, i32 1
  store ptr %30, ptr %33, align 4
  store volatile ptr %32, ptr %30, align 4
  %34 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 18, i32 0, i32 3
  store ptr %34, ptr %29, align 4
  store ptr %28, ptr %34, align 4
  %35 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 18, i32 0, i32 3, i32 1
  store ptr %32, ptr %35, align 4
  store volatile ptr %34, ptr %32, align 4
  %36 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 1, i32 18
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, -524257
  %39 = or i32 %38, 1024
  store i32 %39, ptr %36, align 4
  %40 = load i32, ptr %2, align 4
  switch i32 %40, label %48 [
    i32 2, label %42
    i32 3, label %41
  ]

41:                                               ; preds = %16
  br label %42

42:                                               ; preds = %41, %16
  %43 = phi i32 [ 8192, %41 ], [ 1024, %16 ]
  %44 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 2, i32 18
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, -524257
  %47 = or i32 %46, %43
  store i32 %47, ptr %44, align 4
  br label %48

48:                                               ; preds = %42, %16
  %49 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 18, i32 18
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, -524257
  %52 = or i32 %51, 32768
  store i32 %52, ptr %49, align 4
  %53 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 4
  %54 = load i8, ptr %53, align 8
  %55 = and i8 %54, -25
  store i8 %55, ptr %53, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udc_irq(i32 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.udc_regs, ptr %5, i32 0, i32 5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %595, label %9

9:                                                ; preds = %2
  %10 = and i32 %7, 65536
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %194, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 2
  %14 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !23
  tail call void @arm_heavy_mb() #10
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.udc_regs, ptr %15, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 65536) #10, !srcloc !9
  %17 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 16, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.udc_ep_regs, ptr %18, i32 0, i32 1
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !24
  %21 = and i32 %20, 128
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !25
  tail call void @arm_heavy_mb() #10
  %24 = load ptr, ptr %17, align 4
  %25 = getelementptr inbounds %struct.udc_ep_regs, ptr %24, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 128) #10, !srcloc !9
  %26 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 16, i32 12
  store i32 1, ptr %26, align 4
  br label %194

27:                                               ; preds = %12
  %28 = lshr i32 %20, 4
  %29 = and i32 %28, 3
  switch i32 %29, label %183 [
    i32 2, label %30
    i32 1, label %156
  ]

30:                                               ; preds = %27
  %31 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 16, i32 14
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.udc, ptr %32, i32 0, i32 4
  %34 = load i8, ptr %33, align 8
  %35 = and i8 %34, -2
  store i8 %35, ptr %33, align 8
  %36 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 4
  %37 = load i8, ptr %36, align 8
  %38 = and i8 %37, -3
  store i8 %38, ptr %36, align 8
  %39 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 2, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !26
  %42 = or i32 %41, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !27
  tail call void @arm_heavy_mb() #10
  %43 = load ptr, ptr %39, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %42) #10, !srcloc !9
  %44 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 2, i32 0, i32 13
  store i32 1, ptr %44, align 4
  %45 = load i8, ptr @use_dma, align 1, !range !28
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !29
  tail call void @arm_heavy_mb() #10
  %48 = load ptr, ptr %17, align 4
  %49 = getelementptr inbounds %struct.udc_ep_regs, ptr %48, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 48) #10, !srcloc !9
  %50 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 16, i32 6
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.udc_stp_dma, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  store i32 %53, ptr @setup_data, align 8
  %54 = load ptr, ptr %50, align 4
  %55 = getelementptr inbounds %struct.udc_stp_dma, ptr %54, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  store i32 %56, ptr getelementptr inbounds (%union.udc_setup_data, ptr @setup_data, i32 0, i32 0, i32 1), align 4
  %57 = load ptr, ptr %50, align 4
  store i32 0, ptr %57, align 16
  br label %64

58:                                               ; preds = %30
  %59 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 11
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !30
  store i32 %61, ptr @setup_data, align 8
  %62 = load ptr, ptr %59, align 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !30
  store i32 %63, ptr getelementptr inbounds (%union.udc_setup_data, ptr @setup_data, i32 0, i32 0, i32 1), align 4
  br label %64

64:                                               ; preds = %58, %47
  %65 = load i8, ptr @setup_data, align 8
  %66 = icmp sgt i8 %65, -1
  %67 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 3
  br i1 %66, label %69, label %68

68:                                               ; preds = %64
  store ptr %13, ptr %67, align 8
  tail call fastcc void @udc_ep0_set_rde(ptr noundef %1) #10
  br label %90

69:                                               ; preds = %64
  store ptr %14, ptr %67, align 8
  %70 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 16, i32 11
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %69
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !31
  tail call void @arm_heavy_mb() #10
  %74 = load ptr, ptr %70, align 4
  %75 = getelementptr inbounds %struct.udc_request, ptr %74, i32 0, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = load ptr, ptr %17, align 4
  %78 = getelementptr inbounds %struct.udc_ep_regs, ptr %77, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #10, !srcloc !9
  %79 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 16, i32 12
  store i32 0, ptr %79, align 4
  br label %80

80:                                               ; preds = %73, %69
  %81 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 16, i32 13
  store i32 1, ptr %81, align 4
  store i32 1, ptr @set_rde, align 4
  %82 = load volatile ptr, ptr getelementptr inbounds (%struct.timer_list, ptr @udc_timer, i32 0, i32 0, i32 1), align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load volatile i32, ptr @jiffies, align 64
  %86 = add i32 %85, 10
  store i32 %86, ptr getelementptr inbounds (%struct.timer_list, ptr @udc_timer, i32 0, i32 1), align 4
  %87 = load i32, ptr @stop_timer, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  tail call void @add_timer(ptr noundef nonnull @udc_timer) #10
  br label %90

90:                                               ; preds = %89, %84, %80, %68
  %91 = load i32, ptr @setup_data, align 8
  %92 = icmp eq i32 %91, 65313
  %93 = load i32, ptr getelementptr inbounds (%union.udc_setup_data, ptr @setup_data, i32 0, i32 0, i32 1), align 4
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %92, i1 %94, i1 false
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load ptr, ptr @udc, align 4
  %98 = getelementptr %struct.udc, ptr %97, i32 0, i32 2, i32 2
  %99 = tail call i32 @udc_set_halt(ptr noundef %98, i32 noundef 0) #10
  %100 = load ptr, ptr @udc, align 4
  %101 = getelementptr %struct.udc, ptr %100, i32 0, i32 2, i32 18
  %102 = tail call i32 @udc_set_halt(ptr noundef %101, i32 noundef 0) #10
  br label %103

103:                                              ; preds = %96, %90
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %104 = load i16, ptr %3, align 4
  %105 = add i16 %104, 1
  store i16 %105, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %106 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.usb_gadget_driver, ptr %107, i32 0, i32 4
  %109 = load ptr, ptr %108, align 4
  %110 = tail call i32 %109(ptr noundef %1, ptr noundef nonnull @setup_data) #10
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %111 = load ptr, ptr %39, align 4
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !32
  %113 = icmp ult i32 %110, 1000
  br i1 %113, label %114, label %126

114:                                              ; preds = %103
  %115 = or i32 %112, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !33
  tail call void @arm_heavy_mb() #10
  %116 = load ptr, ptr %39, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %115) #10, !srcloc !9
  store i32 0, ptr %44, align 4
  %117 = load ptr, ptr %39, align 4
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !34
  %119 = and i32 %118, 64
  %120 = icmp eq i32 %119, 0
  %121 = load i32, ptr @cnak_pending, align 4
  br i1 %120, label %124, label %122

122:                                              ; preds = %114
  %123 = or i32 %121, 1
  store i32 %123, ptr @cnak_pending, align 4
  store i32 1, ptr %44, align 4
  br label %134

124:                                              ; preds = %114
  %125 = and i32 %121, -2
  store i32 %125, ptr @cnak_pending, align 4
  br label %134

126:                                              ; preds = %103
  %127 = icmp slt i32 %110, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %126
  %129 = or i32 %112, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !35
  tail call void @arm_heavy_mb() #10
  %130 = load ptr, ptr %39, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %129) #10, !srcloc !9
  br label %134

131:                                              ; preds = %126
  %132 = load i8, ptr %36, align 8
  %133 = or i8 %132, 2
  store i8 %133, ptr %36, align 8
  br label %134

134:                                              ; preds = %131, %128, %124, %122
  br i1 %66, label %150, label %135

135:                                              ; preds = %134
  %136 = load ptr, ptr %17, align 4
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !36
  %138 = or i32 %137, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !37
  tail call void @arm_heavy_mb() #10
  %139 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %138) #10, !srcloc !9
  %140 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 16, i32 13
  store i32 0, ptr %140, align 4
  %141 = load ptr, ptr %17, align 4
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !34
  %143 = and i32 %142, 64
  %144 = icmp eq i32 %143, 0
  %145 = load i32, ptr @cnak_pending, align 4
  br i1 %144, label %148, label %146

146:                                              ; preds = %135
  %147 = or i32 %145, 65536
  store i32 %147, ptr @cnak_pending, align 4
  store i32 1, ptr %140, align 4
  br label %150

148:                                              ; preds = %135
  %149 = and i32 %145, -65537
  store i32 %149, ptr @cnak_pending, align 4
  br label %150

150:                                              ; preds = %148, %146, %134
  %151 = load i8, ptr @use_dma, align 1, !range !28
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %183

153:                                              ; preds = %150
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !38
  tail call void @arm_heavy_mb() #10
  %154 = load ptr, ptr %17, align 4
  %155 = getelementptr inbounds %struct.udc_ep_regs, ptr %154, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 48) #10, !srcloc !9
  br label %183

156:                                              ; preds = %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !39
  tail call void @arm_heavy_mb() #10
  %157 = load ptr, ptr %17, align 4
  %158 = getelementptr inbounds %struct.udc_ep_regs, ptr %157, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 48) #10, !srcloc !9
  %159 = load i8, ptr @use_dma, align 1, !range !28
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %176, label %161

161:                                              ; preds = %156
  %162 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 16, i32 15
  %163 = load volatile ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, %162
  br i1 %164, label %165, label %170

165:                                              ; preds = %161
  %166 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 16, i32 7
  %167 = load ptr, ptr %166, align 4
  %168 = load i32, ptr %167, align 16
  %169 = and i32 %168, 1073741823
  store i32 %169, ptr %167, align 16
  tail call fastcc void @udc_ep0_set_rde(ptr noundef %1) #10
  br label %183

170:                                              ; preds = %161
  %171 = tail call fastcc i32 @udc_data_out_isr(ptr noundef %1, i32 noundef 16) #10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !40
  tail call void @arm_heavy_mb() #10
  %172 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 16, i32 4
  %173 = load i32, ptr %172, align 4
  %174 = load ptr, ptr %17, align 4
  %175 = getelementptr inbounds %struct.udc_ep_regs, ptr %174, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 %173) #10, !srcloc !9
  tail call fastcc void @udc_ep0_set_rde(ptr noundef %1) #10
  br label %183

176:                                              ; preds = %156
  %177 = load ptr, ptr %17, align 4
  %178 = getelementptr inbounds %struct.udc_ep_regs, ptr %177, i32 0, i32 1
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %178) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !41
  %180 = load ptr, ptr %17, align 4
  %181 = getelementptr inbounds %struct.udc_ep_regs, ptr %180, i32 0, i32 7
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %181) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !42
  br label %183

183:                                              ; preds = %176, %170, %165, %153, %150, %27
  %184 = phi i32 [ 1, %150 ], [ 1, %153 ], [ 1, %165 ], [ %171, %170 ], [ 1, %176 ], [ 0, %27 ]
  %185 = load i32, ptr @cnak_pending, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %194, label %187

187:                                              ; preds = %183
  %188 = load ptr, ptr %4, align 4
  %189 = getelementptr inbounds %struct.udc_regs, ptr %188, i32 0, i32 2
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !43
  %191 = and i32 %190, 32768
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %187
  tail call fastcc void @udc_process_cnak_queue(ptr noundef %1) #10
  br label %194

194:                                              ; preds = %193, %187, %183, %23, %9
  %195 = phi i32 [ 0, %9 ], [ 1, %23 ], [ %184, %193 ], [ %184, %187 ], [ %184, %183 ]
  %196 = and i32 %7, 1
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %332, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !44
  tail call void @arm_heavy_mb() #10
  %200 = load ptr, ptr %4, align 4
  %201 = getelementptr inbounds %struct.udc_regs, ptr %200, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 1) #10, !srcloc !9
  %202 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 2, i32 0, i32 1
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr inbounds %struct.udc_ep_regs, ptr %203, i32 0, i32 1
  %205 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %204) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !45
  %206 = and i32 %205, 1024
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %198
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !46
  tail call void @arm_heavy_mb() #10
  %209 = load ptr, ptr %202, align 4
  %210 = getelementptr inbounds %struct.udc_ep_regs, ptr %209, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %210, i32 1024) #10, !srcloc !9
  br label %329

211:                                              ; preds = %198
  %212 = and i32 %205, 64
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %329, label %214

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 2, i32 0, i32 3
  %216 = load ptr, ptr %215, align 4
  %217 = icmp eq ptr %216, null
  br i1 %217, label %221, label %218

218:                                              ; preds = %214
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !47
  tail call void @arm_heavy_mb() #10
  %219 = load ptr, ptr %202, align 4
  %220 = getelementptr inbounds %struct.udc_ep_regs, ptr %219, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 64) #10, !srcloc !9
  br label %221

221:                                              ; preds = %218, %214
  %222 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 4
  %223 = load i8, ptr %222, align 8
  %224 = and i8 %223, 1
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %231, label %226

226:                                              ; preds = %221
  %227 = load ptr, ptr %202, align 4
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %227) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !48
  %229 = or i32 %228, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !49
  tail call void @arm_heavy_mb() #10
  %230 = load ptr, ptr %202, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %230, i32 %229) #10, !srcloc !9
  br label %320

231:                                              ; preds = %221
  %232 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 2, i32 0, i32 15
  %233 = load volatile ptr, ptr %232, align 4
  %234 = icmp eq ptr %233, %232
  br i1 %234, label %320, label %235

235:                                              ; preds = %231
  %236 = getelementptr i8, ptr %233, i32 -72
  %237 = load ptr, ptr %215, align 4
  %238 = icmp eq ptr %237, null
  br i1 %238, label %278, label %239

239:                                              ; preds = %235
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !50
  tail call void @arm_heavy_mb() #10
  %240 = getelementptr i8, ptr %233, i32 -12
  %241 = load i32, ptr %240, align 4
  %242 = load ptr, ptr %202, align 4
  %243 = getelementptr inbounds %struct.udc_ep_regs, ptr %242, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %243, i32 %241) #10, !srcloc !9
  %244 = getelementptr i8, ptr %233, i32 -8
  %245 = load ptr, ptr %244, align 4
  %246 = load i32, ptr %245, align 16
  %247 = and i32 %246, 1073741823
  store i32 %247, ptr %245, align 16
  %248 = load ptr, ptr %202, align 4
  %249 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %248) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !51
  %250 = or i32 %249, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !52
  tail call void @arm_heavy_mb() #10
  %251 = load ptr, ptr %202, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %251, i32 %250) #10, !srcloc !9
  %252 = getelementptr i8, ptr %233, i32 -68
  %253 = load i32, ptr %252, align 4
  %254 = getelementptr i8, ptr %233, i32 -20
  store i32 %253, ptr %254, align 4
  %255 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 2, i32 0, i32 14
  %256 = load ptr, ptr %255, align 4
  %257 = load ptr, ptr %215, align 4
  %258 = icmp eq ptr %257, null
  br i1 %258, label %264, label %259

259:                                              ; preds = %239
  %260 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 2, i32 0, i32 18
  %261 = load i32, ptr %260, align 4
  %262 = lshr i32 %261, 19
  %263 = and i32 %262, 1
  tail call void @usb_gadget_unmap_request(ptr noundef %256, ptr noundef %236, i32 noundef %263) #10
  br label %264

264:                                              ; preds = %259, %239
  %265 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 2, i32 0, i32 16
  store i32 1, ptr %265, align 4
  %266 = getelementptr i8, ptr %233, i32 -24
  %267 = load i32, ptr %266, align 4
  %268 = icmp eq i32 %267, -115
  br i1 %268, label %269, label %270

269:                                              ; preds = %264
  store i32 0, ptr %266, align 4
  br label %270

270:                                              ; preds = %269, %264
  %271 = getelementptr i8, ptr %233, i32 4
  %272 = load ptr, ptr %271, align 4
  %273 = load ptr, ptr %233, align 4
  %274 = getelementptr inbounds %struct.list_head, ptr %273, i32 0, i32 1
  store ptr %272, ptr %274, align 4
  store volatile ptr %273, ptr %272, align 4
  store volatile ptr %233, ptr %233, align 4
  store ptr %233, ptr %271, align 4
  %275 = getelementptr inbounds %struct.udc, ptr %256, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %276 = load i16, ptr %275, align 4
  %277 = add i16 %276, 1
  store i16 %277, ptr %275, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  tail call void @usb_gadget_giveback_request(ptr noundef %199, ptr noundef %236) #10
  tail call void @_raw_spin_lock(ptr noundef %275) #10
  br label %320

278:                                              ; preds = %235
  tail call fastcc void @udc_txfifo_write(ptr noundef %199, ptr noundef %236) #10
  %279 = getelementptr i8, ptr %233, i32 -68
  %280 = load i32, ptr %279, align 4
  %281 = getelementptr i8, ptr %233, i32 -20
  %282 = load i32, ptr %281, align 4
  %283 = sub i32 %280, %282
  %284 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 7
  %285 = load i56, ptr %284, align 2
  %286 = trunc i56 %285 to i32
  %287 = and i32 %286, 65535
  %288 = tail call i32 @llvm.umin.i32(i32 %283, i32 %287) #10
  %289 = add i32 %288, %282
  store i32 %289, ptr %281, align 4
  %290 = icmp eq i32 %289, %280
  br i1 %290, label %296, label %291

291:                                              ; preds = %278
  %292 = load i56, ptr %284, align 2
  %293 = trunc i56 %292 to i32
  %294 = and i32 %293, 65535
  %295 = icmp eq i32 %288, %294
  br i1 %295, label %320, label %296

296:                                              ; preds = %291, %278
  %297 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 2, i32 0, i32 14
  %298 = load ptr, ptr %297, align 4
  %299 = load ptr, ptr %215, align 4
  %300 = icmp eq ptr %299, null
  br i1 %300, label %306, label %301

301:                                              ; preds = %296
  %302 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 2, i32 0, i32 18
  %303 = load i32, ptr %302, align 4
  %304 = lshr i32 %303, 19
  %305 = and i32 %304, 1
  tail call void @usb_gadget_unmap_request(ptr noundef %298, ptr noundef %236, i32 noundef %305) #10
  br label %306

306:                                              ; preds = %301, %296
  %307 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 2, i32 0, i32 16
  store i32 1, ptr %307, align 4
  %308 = getelementptr i8, ptr %233, i32 -24
  %309 = load i32, ptr %308, align 4
  %310 = icmp eq i32 %309, -115
  br i1 %310, label %311, label %312

311:                                              ; preds = %306
  store i32 0, ptr %308, align 4
  br label %312

312:                                              ; preds = %311, %306
  %313 = getelementptr i8, ptr %233, i32 4
  %314 = load ptr, ptr %313, align 4
  %315 = load ptr, ptr %233, align 4
  %316 = getelementptr inbounds %struct.list_head, ptr %315, i32 0, i32 1
  store ptr %314, ptr %316, align 4
  store volatile ptr %315, ptr %314, align 4
  store volatile ptr %233, ptr %233, align 4
  store ptr %233, ptr %313, align 4
  %317 = getelementptr inbounds %struct.udc, ptr %298, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %318 = load i16, ptr %317, align 4
  %319 = add i16 %318, 1
  store i16 %319, ptr %317, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  tail call void @usb_gadget_giveback_request(ptr noundef %199, ptr noundef %236) #10
  tail call void @_raw_spin_lock(ptr noundef %317) #10
  br label %320

320:                                              ; preds = %312, %291, %270, %231, %226
  %321 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 2, i32 0, i32 16
  store i32 0, ptr %321, align 4
  %322 = load i8, ptr %222, align 8
  %323 = and i8 %322, -2
  store i8 %323, ptr %222, align 8
  %324 = load ptr, ptr %215, align 4
  %325 = icmp eq ptr %324, null
  br i1 %325, label %326, label %329

326:                                              ; preds = %320
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !53
  tail call void @arm_heavy_mb() #10
  %327 = load ptr, ptr %202, align 4
  %328 = getelementptr inbounds %struct.udc_ep_regs, ptr %327, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %328, i32 64) #10, !srcloc !9
  br label %329

329:                                              ; preds = %326, %320, %211, %208
  %330 = phi i32 [ 1, %208 ], [ 1, %320 ], [ 1, %326 ], [ 0, %211 ]
  %331 = or i32 %330, %195
  br label %332

332:                                              ; preds = %329, %194
  %333 = phi i32 [ %331, %329 ], [ %195, %194 ]
  %334 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 21
  br label %335

335:                                              ; preds = %591, %332
  %336 = phi i32 [ 1, %332 ], [ %593, %591 ]
  %337 = phi i32 [ %333, %332 ], [ %592, %591 ]
  %338 = shl nuw i32 1, %336
  %339 = and i32 %338, %7
  %340 = icmp eq i32 %339, 0
  %341 = icmp eq i32 %336, 16
  %342 = select i1 %340, i1 true, i1 %341
  br i1 %342, label %591, label %343

343:                                              ; preds = %335
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !54
  tail call void @arm_heavy_mb() #10
  %344 = load ptr, ptr %4, align 4
  %345 = getelementptr inbounds %struct.udc_regs, ptr %344, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %345, i32 %338) #10, !srcloc !9
  %346 = icmp ugt i32 %336, 16
  br i1 %346, label %347, label %350

347:                                              ; preds = %343
  %348 = tail call fastcc i32 @udc_data_out_isr(ptr noundef %1, i32 noundef %336)
  %349 = or i32 %348, %337
  br label %591

350:                                              ; preds = %343
  %351 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 %336
  %352 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 %336, i32 1
  %353 = load ptr, ptr %352, align 4
  %354 = getelementptr inbounds %struct.udc_ep_regs, ptr %353, i32 0, i32 1
  %355 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %354) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !55
  %356 = load i8, ptr @use_dma, align 1, !range !28
  %357 = icmp eq i8 %356, 0
  %358 = and i32 %355, 128
  %359 = icmp eq i32 %358, 0
  %360 = select i1 %357, i1 true, i1 %359
  br i1 %360, label %371, label %361

361:                                              ; preds = %350
  %362 = load ptr, ptr %334, align 8
  %363 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 %336, i32 18
  %364 = load i32, ptr %363, align 4
  %365 = and i32 %364, 31
  %366 = load ptr, ptr %352, align 4
  %367 = getelementptr inbounds %struct.udc_ep_regs, ptr %366, i32 0, i32 5
  %368 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %367) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %362, ptr noundef nonnull @.str.12, i32 noundef %365, i32 noundef %368) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !57
  tail call void @arm_heavy_mb() #10
  %369 = load ptr, ptr %352, align 4
  %370 = getelementptr inbounds %struct.udc_ep_regs, ptr %369, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %370, i32 %355) #10, !srcloc !9
  br label %588

371:                                              ; preds = %350
  %372 = and i32 %355, 512
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %385, label %374

374:                                              ; preds = %371
  %375 = load ptr, ptr %334, align 8
  %376 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 %336, i32 18
  %377 = load i32, ptr %376, align 4
  %378 = and i32 %377, 31
  %379 = load ptr, ptr %352, align 4
  %380 = getelementptr inbounds %struct.udc_ep_regs, ptr %379, i32 0, i32 5
  %381 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %380) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !58
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %375, ptr noundef nonnull @.str.13, i32 noundef %378, i32 noundef %381) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !59
  tail call void @arm_heavy_mb() #10
  %382 = or i32 %355, 512
  %383 = load ptr, ptr %352, align 4
  %384 = getelementptr inbounds %struct.udc_ep_regs, ptr %383, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %384, i32 %382) #10, !srcloc !9
  br label %588

385:                                              ; preds = %371
  %386 = and i32 %355, 1024
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %470, label %388

388:                                              ; preds = %385
  %389 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 %336, i32 17
  %390 = load i32, ptr %389, align 4
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %469

392:                                              ; preds = %388
  %393 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 %336, i32 15
  %394 = load volatile ptr, ptr %393, align 4
  %395 = icmp eq ptr %394, %393
  br i1 %395, label %469, label %396

396:                                              ; preds = %392
  %397 = getelementptr i8, ptr %394, i32 -72
  %398 = load i8, ptr @use_dma_ppb_du, align 1, !range !28
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %417, label %400

400:                                              ; preds = %396
  %401 = getelementptr i8, ptr %394, i32 -8
  %402 = load ptr, ptr %401, align 4
  %403 = icmp eq ptr %402, null
  br i1 %403, label %421, label %404

404:                                              ; preds = %409, %400
  %405 = phi ptr [ %413, %409 ], [ %402, %400 ]
  %406 = load i32, ptr %405, align 16
  %407 = and i32 %406, 134217728
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %415

409:                                              ; preds = %404
  %410 = getelementptr inbounds %struct.udc_data_dma, ptr %405, i32 0, i32 3
  %411 = load i32, ptr %410, align 4
  %412 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %411, i32 -2130706432, i32 8454144) #12, !srcloc !60
  %413 = inttoptr i32 %412 to ptr
  %414 = icmp eq i32 %412, 0
  br i1 %414, label %421, label %404

415:                                              ; preds = %404
  %416 = icmp eq ptr %405, null
  br i1 %416, label %421, label %417

417:                                              ; preds = %415, %396
  %418 = getelementptr i8, ptr %394, i32 -68
  %419 = load i32, ptr %418, align 4
  %420 = getelementptr i8, ptr %394, i32 -20
  store i32 %419, ptr %420, align 4
  br label %421

421:                                              ; preds = %417, %415, %409, %400
  %422 = getelementptr i8, ptr %394, i32 -20
  %423 = load i32, ptr %422, align 4
  %424 = getelementptr i8, ptr %394, i32 -68
  %425 = load i32, ptr %424, align 4
  %426 = icmp eq i32 %423, %425
  br i1 %426, label %427, label %469

427:                                              ; preds = %421
  %428 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 %336, i32 14
  %429 = load ptr, ptr %428, align 4
  %430 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 %336, i32 3
  %431 = load ptr, ptr %430, align 4
  %432 = icmp eq ptr %431, null
  br i1 %432, label %438, label %433

433:                                              ; preds = %427
  %434 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 %336, i32 18
  %435 = load i32, ptr %434, align 4
  %436 = lshr i32 %435, 19
  %437 = and i32 %436, 1
  tail call void @usb_gadget_unmap_request(ptr noundef %429, ptr noundef %397, i32 noundef %437) #10
  br label %438

438:                                              ; preds = %433, %427
  %439 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 %336, i32 16
  %440 = load i32, ptr %439, align 4
  store i32 1, ptr %439, align 4
  %441 = getelementptr i8, ptr %394, i32 -24
  %442 = load i32, ptr %441, align 4
  %443 = icmp eq i32 %442, -115
  br i1 %443, label %444, label %445

444:                                              ; preds = %438
  store i32 0, ptr %441, align 4
  br label %445

445:                                              ; preds = %444, %438
  %446 = getelementptr i8, ptr %394, i32 4
  %447 = load ptr, ptr %446, align 4
  %448 = load ptr, ptr %394, align 4
  %449 = getelementptr inbounds %struct.list_head, ptr %448, i32 0, i32 1
  store ptr %447, ptr %449, align 4
  store volatile ptr %448, ptr %447, align 4
  store volatile ptr %394, ptr %394, align 4
  store ptr %394, ptr %446, align 4
  %450 = getelementptr inbounds %struct.udc, ptr %429, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %451 = load i16, ptr %450, align 4
  %452 = add i16 %451, 1
  store i16 %452, ptr %450, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  tail call void @usb_gadget_giveback_request(ptr noundef %351, ptr noundef %397) #10
  tail call void @_raw_spin_lock(ptr noundef %450) #10
  store i32 %440, ptr %439, align 4
  %453 = getelementptr i8, ptr %394, i32 -16
  %454 = load i8, ptr %453, align 4
  %455 = and i8 %454, -2
  store i8 %455, ptr %453, align 4
  %456 = load volatile ptr, ptr %393, align 4
  %457 = icmp eq ptr %456, %393
  br i1 %457, label %458, label %469

458:                                              ; preds = %445
  %459 = load ptr, ptr %4, align 4
  %460 = getelementptr inbounds %struct.udc_regs, ptr %459, i32 0, i32 6
  %461 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %460) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !61
  %462 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 %336, i32 18
  %463 = load i32, ptr %462, align 4
  %464 = and i32 %463, 31
  %465 = shl nuw i32 1, %464
  %466 = or i32 %465, %461
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !62
  tail call void @arm_heavy_mb() #10
  %467 = load ptr, ptr %4, align 4
  %468 = getelementptr inbounds %struct.udc_regs, ptr %467, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %468, i32 %466) #10, !srcloc !9
  br label %469

469:                                              ; preds = %458, %445, %421, %392, %388
  store i32 0, ptr %389, align 4
  br label %470

470:                                              ; preds = %469, %385
  %471 = phi i32 [ 1, %469 ], [ 0, %385 ]
  %472 = and i32 %355, 64
  %473 = icmp eq i32 %472, 0
  %474 = xor i1 %387, true
  %475 = select i1 %473, i1 true, i1 %474
  br i1 %475, label %584, label %476

476:                                              ; preds = %470
  %477 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 %336, i32 15
  %478 = load volatile ptr, ptr %477, align 4
  %479 = icmp eq ptr %478, %477
  br i1 %479, label %566, label %480

480:                                              ; preds = %476
  %481 = getelementptr i8, ptr %478, i32 -72
  %482 = load i8, ptr @use_dma, align 1, !range !28
  %483 = icmp eq i8 %482, 0
  br i1 %483, label %484, label %528

484:                                              ; preds = %480
  tail call fastcc void @udc_txfifo_write(ptr noundef %351, ptr noundef %481) #10
  %485 = getelementptr i8, ptr %478, i32 -68
  %486 = load i32, ptr %485, align 4
  %487 = getelementptr i8, ptr %478, i32 -20
  %488 = load i32, ptr %487, align 4
  %489 = sub i32 %486, %488
  %490 = getelementptr inbounds %struct.usb_ep, ptr %351, i32 0, i32 7
  %491 = load i56, ptr %490, align 2
  %492 = trunc i56 %491 to i32
  %493 = and i32 %492, 65535
  %494 = tail call i32 @llvm.umin.i32(i32 %489, i32 %493) #10
  %495 = add i32 %494, %488
  store i32 %495, ptr %487, align 4
  %496 = icmp eq i32 %495, %486
  br i1 %496, label %502, label %497

497:                                              ; preds = %484
  %498 = load i56, ptr %490, align 2
  %499 = trunc i56 %498 to i32
  %500 = and i32 %499, 65535
  %501 = icmp eq i32 %494, %500
  br i1 %501, label %584, label %502

502:                                              ; preds = %497, %484
  %503 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 %336, i32 14
  %504 = load ptr, ptr %503, align 4
  %505 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 %336, i32 3
  %506 = load ptr, ptr %505, align 4
  %507 = icmp eq ptr %506, null
  br i1 %507, label %513, label %508

508:                                              ; preds = %502
  %509 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 %336, i32 18
  %510 = load i32, ptr %509, align 4
  %511 = lshr i32 %510, 19
  %512 = and i32 %511, 1
  tail call void @usb_gadget_unmap_request(ptr noundef %504, ptr noundef %481, i32 noundef %512) #10
  br label %513

513:                                              ; preds = %508, %502
  %514 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 %336, i32 16
  %515 = load i32, ptr %514, align 4
  store i32 1, ptr %514, align 4
  %516 = getelementptr i8, ptr %478, i32 -24
  %517 = load i32, ptr %516, align 4
  %518 = icmp eq i32 %517, -115
  br i1 %518, label %519, label %520

519:                                              ; preds = %513
  store i32 0, ptr %516, align 4
  br label %520

520:                                              ; preds = %519, %513
  %521 = getelementptr i8, ptr %478, i32 4
  %522 = load ptr, ptr %521, align 4
  %523 = load ptr, ptr %478, align 4
  %524 = getelementptr inbounds %struct.list_head, ptr %523, i32 0, i32 1
  store ptr %522, ptr %524, align 4
  store volatile ptr %523, ptr %522, align 4
  store volatile ptr %478, ptr %478, align 4
  store ptr %478, ptr %521, align 4
  %525 = getelementptr inbounds %struct.udc, ptr %504, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %526 = load i16, ptr %525, align 4
  %527 = add i16 %526, 1
  store i16 %527, ptr %525, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  tail call void @usb_gadget_giveback_request(ptr noundef %351, ptr noundef %481) #10
  tail call void @_raw_spin_lock(ptr noundef %525) #10
  store i32 %515, ptr %514, align 4
  br label %584

528:                                              ; preds = %480
  %529 = icmp eq ptr %481, null
  br i1 %529, label %584, label %530

530:                                              ; preds = %528
  %531 = getelementptr i8, ptr %478, i32 -16
  %532 = load i8, ptr %531, align 4
  %533 = and i8 %532, 1
  %534 = icmp eq i8 %533, 0
  br i1 %534, label %535, label %584

535:                                              ; preds = %530
  %536 = getelementptr i8, ptr %478, i32 -8
  %537 = load ptr, ptr %536, align 4
  %538 = icmp eq ptr %537, null
  br i1 %538, label %584, label %539

539:                                              ; preds = %535
  %540 = or i8 %532, 1
  store i8 %540, ptr %531, align 4
  %541 = load i8, ptr @use_dma_ppb, align 1, !range !28
  %542 = icmp eq i8 %541, 0
  br i1 %542, label %554, label %543

543:                                              ; preds = %539
  %544 = getelementptr i8, ptr %478, i32 -68
  %545 = load i32, ptr %544, align 4
  %546 = getelementptr inbounds %struct.usb_ep, ptr %351, i32 0, i32 7
  %547 = load i56, ptr %546, align 2
  %548 = trunc i56 %547 to i32
  %549 = and i32 %548, 65535
  %550 = icmp ugt i32 %545, %549
  br i1 %550, label %551, label %554

551:                                              ; preds = %543
  %552 = load i32, ptr %537, align 16
  %553 = and i32 %552, -134217729
  store i32 %553, ptr %537, align 16
  br label %554

554:                                              ; preds = %551, %543, %539
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !63
  tail call void @arm_heavy_mb() #10
  %555 = getelementptr i8, ptr %478, i32 -12
  %556 = load i32, ptr %555, align 4
  %557 = load ptr, ptr %352, align 4
  %558 = getelementptr inbounds %struct.udc_ep_regs, ptr %557, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %558, i32 %556) #10, !srcloc !9
  %559 = load ptr, ptr %536, align 4
  %560 = load i32, ptr %559, align 16
  %561 = and i32 %560, 1073741823
  store i32 %561, ptr %559, align 16
  %562 = load ptr, ptr %352, align 4
  %563 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %562) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !64
  %564 = or i32 %563, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !65
  tail call void @arm_heavy_mb() #10
  %565 = load ptr, ptr %352, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %565, i32 %564) #10, !srcloc !9
  br label %584

566:                                              ; preds = %476
  %567 = load i8, ptr @use_dma, align 1, !range !28
  %568 = icmp eq i8 %567, 0
  br i1 %568, label %569, label %584

569:                                              ; preds = %566
  %570 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 %336, i32 18
  %571 = load i32, ptr %570, align 4
  %572 = and i32 %571, 524288
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %584, label %574

574:                                              ; preds = %569
  %575 = load ptr, ptr %4, align 4
  %576 = getelementptr inbounds %struct.udc_regs, ptr %575, i32 0, i32 6
  %577 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %576) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !66
  %578 = load i32, ptr %570, align 4
  %579 = and i32 %578, 31
  %580 = shl nuw i32 1, %579
  %581 = or i32 %580, %577
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !67
  tail call void @arm_heavy_mb() #10
  %582 = load ptr, ptr %4, align 4
  %583 = getelementptr inbounds %struct.udc_regs, ptr %582, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %583, i32 %581) #10, !srcloc !9
  br label %584

584:                                              ; preds = %574, %569, %566, %554, %535, %530, %528, %520, %497, %470
  %585 = phi i32 [ 1, %566 ], [ 1, %574 ], [ 1, %569 ], [ 1, %530 ], [ 1, %554 ], [ 1, %535 ], [ 1, %528 ], [ 1, %520 ], [ 1, %497 ], [ %471, %470 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !68
  tail call void @arm_heavy_mb() #10
  %586 = load ptr, ptr %352, align 4
  %587 = getelementptr inbounds %struct.udc_ep_regs, ptr %586, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %587, i32 %355) #10, !srcloc !9
  br label %588

588:                                              ; preds = %584, %374, %361
  %589 = phi i32 [ 1, %361 ], [ 1, %374 ], [ %585, %584 ]
  %590 = or i32 %589, %337
  br label %591

591:                                              ; preds = %588, %347, %335
  %592 = phi i32 [ %337, %335 ], [ %349, %347 ], [ %590, %588 ]
  %593 = add nuw nsw i32 %336, 1
  %594 = icmp eq i32 %593, 32
  br i1 %594, label %595, label %335

595:                                              ; preds = %591, %2
  %596 = phi i32 [ 0, %2 ], [ %592, %591 ]
  %597 = load ptr, ptr %4, align 4
  %598 = getelementptr inbounds %struct.udc_regs, ptr %597, i32 0, i32 3
  %599 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %598) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !69
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %916, label %601

601:                                              ; preds = %595
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !70
  tail call void @arm_heavy_mb() #10
  %602 = load ptr, ptr %4, align 4
  %603 = getelementptr inbounds %struct.udc_regs, ptr %602, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %603, i32 %599) #10, !srcloc !9
  %604 = and i32 %599, 1
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %657, label %606

606:                                              ; preds = %601
  %607 = load ptr, ptr %4, align 4
  %608 = getelementptr inbounds %struct.udc_regs, ptr %607, i32 0, i32 2
  %609 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %608) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !71
  %610 = trunc i32 %609 to i16
  %611 = and i16 %610, 15
  %612 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 18
  store i16 %611, ptr %612, align 8
  %613 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 4
  %614 = load i8, ptr %613, align 8
  %615 = or i8 %614, 4
  store i8 %615, ptr %613, align 8
  store i64 2304, ptr @setup_data, align 8
  store i16 %611, ptr getelementptr inbounds (%struct.usb_ctrlrequest, ptr @setup_data, i32 0, i32 2), align 2
  %616 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 8
  br label %617

617:                                              ; preds = %617, %606
  %618 = phi i32 [ 0, %606 ], [ %647, %617 ]
  %619 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 %618, i32 18
  %620 = load i32, ptr %619, align 4
  %621 = and i32 %620, 524288
  %622 = icmp eq i32 %621, 0
  %623 = and i32 %620, 31
  %624 = add nuw nsw i32 %623, 244
  %625 = select i1 %622, i32 %624, i32 %623
  %626 = load ptr, ptr %616, align 8
  %627 = and i32 %625, 255
  %628 = getelementptr %struct.udc_csrs, ptr %626, i32 0, i32 1, i32 %627
  %629 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %628) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !72
  %630 = and i32 %629, -1921
  %631 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 %618, i32 14
  %632 = load ptr, ptr %631, align 4
  %633 = getelementptr inbounds %struct.udc, ptr %632, i32 0, i32 18
  %634 = load i16, ptr %633, align 8
  %635 = zext i16 %634 to i32
  %636 = shl nuw nsw i32 %635, 7
  %637 = and i32 %636, 1920
  %638 = or i32 %637, %630
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !73
  tail call void @arm_heavy_mb() #10
  %639 = load ptr, ptr %616, align 8
  %640 = getelementptr %struct.udc_csrs, ptr %639, i32 0, i32 1, i32 %627
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %640, i32 %638) #10, !srcloc !9
  %641 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 %618, i32 16
  store i32 0, ptr %641, align 4
  %642 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 %618, i32 1
  %643 = load ptr, ptr %642, align 4
  %644 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %643) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !74
  %645 = and i32 %644, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !75
  tail call void @arm_heavy_mb() #10
  %646 = load ptr, ptr %642, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %646, i32 %645) #10, !srcloc !9
  %647 = add nuw nsw i32 %618, 1
  %648 = icmp eq i32 %647, 32
  br i1 %648, label %649, label %617

649:                                              ; preds = %617
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %650 = load i16, ptr %3, align 4
  %651 = add i16 %650, 1
  store i16 %651, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %652 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 3
  %653 = load ptr, ptr %652, align 4
  %654 = getelementptr inbounds %struct.usb_gadget_driver, ptr %653, i32 0, i32 4
  %655 = load ptr, ptr %654, align 4
  %656 = tail call i32 %655(ptr noundef %1, ptr noundef nonnull @setup_data) #10
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  br label %657

657:                                              ; preds = %649, %601
  %658 = phi i32 [ 1, %649 ], [ 0, %601 ]
  %659 = and i32 %599, 2
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %722, label %661

661:                                              ; preds = %657
  %662 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 4
  %663 = load i8, ptr %662, align 8
  %664 = or i8 %663, 4
  store i8 %664, ptr %662, align 8
  %665 = load ptr, ptr %4, align 4
  %666 = getelementptr inbounds %struct.udc_regs, ptr %665, i32 0, i32 2
  %667 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %666) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !76
  %668 = trunc i32 %667 to i16
  %669 = lshr i16 %668, 8
  %670 = and i16 %669, 15
  %671 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 20
  store i16 %670, ptr %671, align 4
  %672 = lshr i16 %668, 4
  %673 = and i16 %672, 15
  %674 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 19
  store i16 %673, ptr %674, align 2
  store i64 2817, ptr @setup_data, align 8
  store i16 %670, ptr getelementptr inbounds (%struct.usb_ctrlrequest, ptr @setup_data, i32 0, i32 2), align 2
  store i16 %673, ptr getelementptr inbounds (%union.udc_setup_data, ptr @setup_data, i32 0, i32 0, i32 1), align 4
  %675 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 8
  br label %676

676:                                              ; preds = %676, %661
  %677 = phi i32 [ 0, %661 ], [ %712, %676 ]
  %678 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 %677, i32 18
  %679 = load i32, ptr %678, align 4
  %680 = and i32 %679, 524288
  %681 = icmp eq i32 %680, 0
  %682 = and i32 %679, 31
  %683 = add nuw nsw i32 %682, 244
  %684 = select i1 %681, i32 %683, i32 %682
  %685 = load ptr, ptr %675, align 8
  %686 = and i32 %684, 255
  %687 = getelementptr %struct.udc_csrs, ptr %685, i32 0, i32 1, i32 %686
  %688 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %687) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !77
  %689 = and i32 %688, -522241
  %690 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 %677, i32 14
  %691 = load ptr, ptr %690, align 4
  %692 = getelementptr inbounds %struct.udc, ptr %691, i32 0, i32 19
  %693 = load i16, ptr %692, align 2
  %694 = zext i16 %693 to i32
  %695 = shl nuw nsw i32 %694, 11
  %696 = and i32 %695, 30720
  %697 = or i32 %696, %689
  %698 = getelementptr inbounds %struct.udc, ptr %691, i32 0, i32 20
  %699 = load i16, ptr %698, align 4
  %700 = zext i16 %699 to i32
  %701 = shl nuw nsw i32 %700, 15
  %702 = and i32 %701, 491520
  %703 = or i32 %697, %702
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !78
  tail call void @arm_heavy_mb() #10
  %704 = load ptr, ptr %675, align 8
  %705 = getelementptr %struct.udc_csrs, ptr %704, i32 0, i32 1, i32 %686
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %705, i32 %703) #10, !srcloc !9
  %706 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 %677, i32 16
  store i32 0, ptr %706, align 4
  %707 = getelementptr %struct.udc, ptr %1, i32 0, i32 2, i32 %677, i32 1
  %708 = load ptr, ptr %707, align 4
  %709 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %708) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !79
  %710 = and i32 %709, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !80
  tail call void @arm_heavy_mb() #10
  %711 = load ptr, ptr %707, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %711, i32 %710) #10, !srcloc !9
  %712 = add nuw nsw i32 %677, 1
  %713 = icmp eq i32 %712, 32
  br i1 %713, label %714, label %676

714:                                              ; preds = %676
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %715 = load i16, ptr %3, align 4
  %716 = add i16 %715, 1
  store i16 %716, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %717 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 3
  %718 = load ptr, ptr %717, align 4
  %719 = getelementptr inbounds %struct.usb_gadget_driver, ptr %718, i32 0, i32 4
  %720 = load ptr, ptr %719, align 4
  %721 = tail call i32 %720(ptr noundef %1, ptr noundef nonnull @setup_data) #10
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  br label %722

722:                                              ; preds = %714, %657
  %723 = phi i32 [ 1, %714 ], [ %658, %657 ]
  %724 = and i32 %599, 8
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %782, label %726

726:                                              ; preds = %722
  store i32 0, ptr @soft_reset_occured, align 4
  %727 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 4
  %728 = load i8, ptr %727, align 8
  %729 = and i8 %728, -7
  store i8 %729, ptr %727, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !8
  tail call void @arm_heavy_mb() #10
  %730 = load ptr, ptr %4, align 4
  %731 = getelementptr inbounds %struct.udc_regs, ptr %730, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %731, i32 255) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  %732 = load ptr, ptr %4, align 4
  %733 = getelementptr inbounds %struct.udc_regs, ptr %732, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %733, i32 -1) #10, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %734 = load i16, ptr %3, align 4
  %735 = add i16 %734, 1
  store i16 %735, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %736 = load i8, ptr %727, align 8
  %737 = and i8 %736, 32
  %738 = icmp eq i8 %737, 0
  br i1 %738, label %748, label %739

739:                                              ; preds = %726
  %740 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 3
  %741 = load ptr, ptr %740, align 4
  %742 = getelementptr inbounds %struct.usb_gadget_driver, ptr %741, i32 0, i32 7
  %743 = load ptr, ptr %742, align 4
  %744 = icmp eq ptr %743, null
  br i1 %744, label %748, label %745

745:                                              ; preds = %739
  tail call void %743(ptr noundef %1) #10
  %746 = load i8, ptr %727, align 8
  %747 = and i8 %746, -33
  store i8 %747, ptr %727, align 8
  br label %748

748:                                              ; preds = %745, %739, %726
  %749 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 3
  %750 = load ptr, ptr %749, align 4
  tail call void @usb_gadget_udc_reset(ptr noundef %1, ptr noundef %750) #10
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %751 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 2
  tail call void @empty_req_queue(ptr noundef %751) #10
  %752 = load ptr, ptr %4, align 4
  tail call fastcc void @ep_init(ptr noundef %752, ptr noundef %751) #10
  %753 = load ptr, ptr %4, align 4
  %754 = getelementptr inbounds %struct.udc_regs, ptr %753, i32 0, i32 2
  %755 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %754) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !81
  %756 = and i32 %755, 32768
  %757 = icmp ne i32 %756, 0
  %758 = load i32, ptr @soft_reset_after_usbreset_occured, align 4
  %759 = icmp ne i32 %758, 0
  %760 = select i1 %757, i1 true, i1 %759
  br i1 %760, label %764, label %761

761:                                              ; preds = %748
  tail call fastcc void @udc_soft_reset(ptr noundef %1) #10
  %762 = load i32, ptr @soft_reset_after_usbreset_occured, align 4
  %763 = add i32 %762, 1
  store i32 %763, ptr @soft_reset_after_usbreset_occured, align 4
  br label %764

764:                                              ; preds = %761, %748
  %765 = load ptr, ptr %4, align 4
  %766 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %765) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !82
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !83
  tail call void @arm_heavy_mb() #10
  %767 = or i32 %766, 536870912
  %768 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %768, i32 %767) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !84
  tail call void @arm_heavy_mb() #10
  %769 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %769, i32 %766) #10, !srcloc !9
  tail call void @udc_basic_init(ptr noundef %1) #10
  %770 = load ptr, ptr %4, align 4
  %771 = getelementptr inbounds %struct.udc_regs, ptr %770, i32 0, i32 4
  %772 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %771) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %773 = and i32 %772, -204
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %774 = load ptr, ptr %4, align 4
  %775 = getelementptr inbounds %struct.udc_regs, ptr %774, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %775, i32 %773) #10, !srcloc !9
  %776 = load ptr, ptr %4, align 4
  %777 = getelementptr inbounds %struct.udc_regs, ptr %776, i32 0, i32 4
  %778 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %777) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !85
  %779 = and i32 %778, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !86
  tail call void @arm_heavy_mb() #10
  %780 = load ptr, ptr %4, align 4
  %781 = getelementptr inbounds %struct.udc_regs, ptr %780, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %781, i32 %779) #10, !srcloc !9
  br label %782

782:                                              ; preds = %764, %722
  %783 = phi i32 [ 1, %764 ], [ %723, %722 ]
  %784 = and i32 %599, 16
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %801, label %786

786:                                              ; preds = %782
  %787 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 3
  %788 = load ptr, ptr %787, align 4
  %789 = getelementptr inbounds %struct.usb_gadget_driver, ptr %788, i32 0, i32 6
  %790 = load ptr, ptr %789, align 4
  %791 = icmp eq ptr %790, null
  br i1 %791, label %801, label %792

792:                                              ; preds = %786
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %793 = load i16, ptr %3, align 4
  %794 = add i16 %793, 1
  store i16 %794, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %795 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 4
  %796 = load i8, ptr %795, align 8
  %797 = or i8 %796, 32
  store i8 %797, ptr %795, align 8
  %798 = load ptr, ptr %787, align 4
  %799 = getelementptr inbounds %struct.usb_gadget_driver, ptr %798, i32 0, i32 6
  %800 = load ptr, ptr %799, align 4
  tail call void %800(ptr noundef %1) #10
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  br label %801

801:                                              ; preds = %792, %786, %782
  %802 = phi i32 [ 1, %792 ], [ 1, %786 ], [ %783, %782 ]
  %803 = and i32 %599, 64
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %819, label %805

805:                                              ; preds = %801
  store i32 0, ptr @soft_reset_after_usbreset_occured, align 4
  %806 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 2
  tail call void @empty_req_queue(ptr noundef %806) #10
  %807 = load ptr, ptr %4, align 4
  tail call fastcc void @ep_init(ptr noundef %807, ptr noundef %806) #10
  tail call fastcc void @udc_setup_endpoints(ptr noundef %1) #10
  %808 = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 21
  %809 = load ptr, ptr %808, align 8
  %810 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 5
  %811 = load i32, ptr %810, align 4
  %812 = tail call ptr @usb_speed_string(i32 noundef %811) #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %809, ptr noundef nonnull @.str.14, ptr noundef %812) #11
  tail call fastcc void @activate_control_endpoints(ptr noundef %1) #10
  %813 = load ptr, ptr %4, align 4
  %814 = getelementptr inbounds %struct.udc_regs, ptr %813, i32 0, i32 6
  %815 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %814) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !87
  %816 = and i32 %815, -65538
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !88
  tail call void @arm_heavy_mb() #10
  %817 = load ptr, ptr %4, align 4
  %818 = getelementptr inbounds %struct.udc_regs, ptr %817, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %818, i32 %816) #10, !srcloc !9
  br label %819

819:                                              ; preds = %805, %801
  %820 = phi i32 [ 1, %805 ], [ %802, %801 ]
  %821 = and i32 %599, 128
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %913, label %823

823:                                              ; preds = %819
  %824 = load ptr, ptr %4, align 4
  %825 = getelementptr inbounds %struct.udc_regs, ptr %824, i32 0, i32 2
  %826 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %825) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !89
  %827 = and i32 %826, 131072
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %829, label %913

829:                                              ; preds = %823
  %830 = load ptr, ptr %4, align 4
  %831 = getelementptr inbounds %struct.udc_regs, ptr %830, i32 0, i32 4
  %832 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %831) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !90
  %833 = or i32 %832, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !91
  tail call void @arm_heavy_mb() #10
  %834 = load ptr, ptr %4, align 4
  %835 = getelementptr inbounds %struct.udc_regs, ptr %834, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %835, i32 %833) #10, !srcloc !9
  %836 = load ptr, ptr @udc, align 4
  %837 = getelementptr inbounds %struct.udc, ptr %836, i32 0, i32 5
  %838 = load i32, ptr %837, align 4
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %913, label %840

840:                                              ; preds = %829
  %841 = getelementptr inbounds %struct.udc, ptr %836, i32 0, i32 21
  %842 = load ptr, ptr %841, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %842, ptr noundef nonnull @.str.46) #11
  store i32 0, ptr %837, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !8
  tail call void @arm_heavy_mb() #10
  %843 = getelementptr inbounds %struct.udc, ptr %836, i32 0, i32 9
  %844 = load ptr, ptr %843, align 4
  %845 = getelementptr inbounds %struct.udc_regs, ptr %844, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %845, i32 255) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  %846 = load ptr, ptr %843, align 4
  %847 = getelementptr inbounds %struct.udc_regs, ptr %846, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %847, i32 -1) #10, !srcloc !9
  %848 = getelementptr inbounds %struct.udc, ptr %836, i32 0, i32 3
  %849 = load ptr, ptr %848, align 4
  %850 = icmp eq ptr %849, null
  br i1 %850, label %890, label %851

851:                                              ; preds = %840
  %852 = getelementptr inbounds %struct.udc, ptr %836, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %853 = load i16, ptr %852, align 4
  %854 = add i16 %853, 1
  store i16 %854, ptr %852, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %855 = load ptr, ptr %848, align 4
  %856 = getelementptr inbounds %struct.usb_gadget_driver, ptr %855, i32 0, i32 5
  %857 = load ptr, ptr %856, align 4
  tail call void %857(ptr noundef %836) #10
  tail call void @_raw_spin_lock(ptr noundef %852) #10
  %858 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 0
  tail call void @empty_req_queue(ptr noundef %858) #10
  %859 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 1
  tail call void @empty_req_queue(ptr noundef %859) #10
  %860 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 2
  tail call void @empty_req_queue(ptr noundef %860) #10
  %861 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 3
  tail call void @empty_req_queue(ptr noundef %861) #10
  %862 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 4
  tail call void @empty_req_queue(ptr noundef %862) #10
  %863 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 5
  tail call void @empty_req_queue(ptr noundef %863) #10
  %864 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 6
  tail call void @empty_req_queue(ptr noundef %864) #10
  %865 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 7
  tail call void @empty_req_queue(ptr noundef %865) #10
  %866 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 8
  tail call void @empty_req_queue(ptr noundef %866) #10
  %867 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 9
  tail call void @empty_req_queue(ptr noundef %867) #10
  %868 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 10
  tail call void @empty_req_queue(ptr noundef %868) #10
  %869 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 11
  tail call void @empty_req_queue(ptr noundef %869) #10
  %870 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 12
  tail call void @empty_req_queue(ptr noundef %870) #10
  %871 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 13
  tail call void @empty_req_queue(ptr noundef %871) #10
  %872 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 14
  tail call void @empty_req_queue(ptr noundef %872) #10
  %873 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 15
  tail call void @empty_req_queue(ptr noundef %873) #10
  %874 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 16
  tail call void @empty_req_queue(ptr noundef %874) #10
  %875 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 17
  tail call void @empty_req_queue(ptr noundef %875) #10
  %876 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 18
  tail call void @empty_req_queue(ptr noundef %876) #10
  %877 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 19
  tail call void @empty_req_queue(ptr noundef %877) #10
  %878 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 20
  tail call void @empty_req_queue(ptr noundef %878) #10
  %879 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 21
  tail call void @empty_req_queue(ptr noundef %879) #10
  %880 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 22
  tail call void @empty_req_queue(ptr noundef %880) #10
  %881 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 23
  tail call void @empty_req_queue(ptr noundef %881) #10
  %882 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 24
  tail call void @empty_req_queue(ptr noundef %882) #10
  %883 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 25
  tail call void @empty_req_queue(ptr noundef %883) #10
  %884 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 26
  tail call void @empty_req_queue(ptr noundef %884) #10
  %885 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 27
  tail call void @empty_req_queue(ptr noundef %885) #10
  %886 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 28
  tail call void @empty_req_queue(ptr noundef %886) #10
  %887 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 29
  tail call void @empty_req_queue(ptr noundef %887) #10
  %888 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 30
  tail call void @empty_req_queue(ptr noundef %888) #10
  %889 = getelementptr %struct.udc, ptr %836, i32 0, i32 2, i32 31
  tail call void @empty_req_queue(ptr noundef %889) #10
  br label %890

890:                                              ; preds = %851, %840
  %891 = load ptr, ptr %843, align 4
  %892 = getelementptr inbounds %struct.udc, ptr %836, i32 0, i32 2
  tail call fastcc void @ep_init(ptr noundef %891, ptr noundef %892) #10
  %893 = load i32, ptr @soft_reset_occured, align 4
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %895, label %898

895:                                              ; preds = %890
  tail call fastcc void @udc_soft_reset(ptr noundef %836) #10
  %896 = load i32, ptr @soft_reset_occured, align 4
  %897 = add i32 %896, 1
  store i32 %897, ptr @soft_reset_occured, align 4
  br label %898

898:                                              ; preds = %895, %890
  %899 = load ptr, ptr %843, align 4
  %900 = getelementptr inbounds %struct.udc_regs, ptr %899, i32 0, i32 4
  %901 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %900) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %902 = and i32 %901, -204
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %903 = load ptr, ptr %843, align 4
  %904 = getelementptr inbounds %struct.udc_regs, ptr %903, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %904, i32 %902) #10, !srcloc !9
  %905 = load i8, ptr @use_fullspeed, align 1, !range !28
  %906 = icmp eq i8 %905, 0
  br i1 %906, label %913, label %907

907:                                              ; preds = %898
  %908 = load ptr, ptr %843, align 4
  %909 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %908) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !92
  %910 = and i32 %909, -4
  %911 = or i32 %910, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  %912 = load ptr, ptr %843, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %912, i32 %911) #10, !srcloc !9
  br label %913

913:                                              ; preds = %907, %898, %829, %823, %819
  %914 = phi i32 [ 1, %823 ], [ %820, %819 ], [ 1, %829 ], [ 1, %898 ], [ 1, %907 ]
  %915 = or i32 %914, %596
  br label %916

916:                                              ; preds = %913, %595
  %917 = phi i32 [ %915, %913 ], [ %596, %595 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %918 = load i16, ptr %3, align 4
  %919 = add i16 %918, 1
  store i16 %919, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  ret i32 %917
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @udc_data_out_isr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %1
  %4 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.udc_ep_regs, ptr %5, i32 0, i32 1
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !94
  %8 = load i8, ptr @use_dma, align 1, !range !28
  %9 = icmp eq i8 %8, 0
  %10 = and i32 %7, 128
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !95
  tail call void @arm_heavy_mb() #10
  %14 = or i32 %7, 128
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.udc_ep_regs, ptr %15, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #10, !srcloc !9
  %17 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %1, i32 17
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %1, i32 12
  store i32 1, ptr %21, align 4
  br label %313

22:                                               ; preds = %13
  store i32 0, ptr %17, align 4
  br label %313

23:                                               ; preds = %2
  %24 = and i32 %7, 512
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 21
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %1, i32 18
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.11, i32 noundef %31) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !96
  tail call void @arm_heavy_mb() #10
  %32 = or i32 %7, 512
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr inbounds %struct.udc_ep_regs, ptr %33, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #10, !srcloc !9
  br label %313

35:                                               ; preds = %23
  %36 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %1, i32 15
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %37, i32 -72
  br i1 %9, label %46, label %78

41:                                               ; preds = %35
  store i1 true, ptr @udc_rxfifo_pending, align 4
  br i1 %9, label %298, label %42

42:                                               ; preds = %41
  %43 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %1, i32 17
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %298, label %296

46:                                               ; preds = %39
  %47 = icmp eq ptr %40, null
  br i1 %47, label %298, label %48

48:                                               ; preds = %46
  %49 = tail call fastcc i32 @udc_rxfifo_read(ptr noundef %3, ptr noundef nonnull %40)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %298, label %51

51:                                               ; preds = %48
  %52 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %1, i32 14
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %1, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %51
  %58 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %1, i32 18
  %59 = load i32, ptr %58, align 4
  %60 = lshr i32 %59, 19
  %61 = and i32 %60, 1
  tail call void @usb_gadget_unmap_request(ptr noundef %53, ptr noundef nonnull %40, i32 noundef %61) #10
  br label %62

62:                                               ; preds = %57, %51
  %63 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %1, i32 16
  %64 = load i32, ptr %63, align 4
  store i32 1, ptr %63, align 4
  %65 = getelementptr i8, ptr %37, i32 -24
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, -115
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 0, ptr %65, align 4
  br label %69

69:                                               ; preds = %68, %62
  %70 = getelementptr i8, ptr %37, i32 4
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %37, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %71, ptr %73, align 4
  store volatile ptr %72, ptr %71, align 4
  store volatile ptr %37, ptr %37, align 4
  store ptr %37, ptr %70, align 4
  %74 = getelementptr inbounds %struct.udc, ptr %53, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %75 = load i16, ptr %74, align 4
  %76 = add i16 %75, 1
  store i16 %76, ptr %74, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  tail call void @usb_gadget_giveback_request(ptr noundef %3, ptr noundef nonnull %40) #10
  tail call void @_raw_spin_lock(ptr noundef %74) #10
  store i32 %64, ptr %63, align 4
  %77 = load volatile ptr, ptr %36, align 4
  br label %298

78:                                               ; preds = %39
  %79 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %1, i32 17
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  %82 = icmp ne ptr %40, null
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %84, label %295

84:                                               ; preds = %78
  %85 = load i8, ptr @use_dma_ppb, align 1, !range !28
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %139, label %87

87:                                               ; preds = %84
  %88 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %1, i32 12
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %114, label %91

91:                                               ; preds = %87
  %92 = getelementptr i8, ptr %37, i32 -8
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %1, i32 11
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.udc_request, ptr %95, i32 0, i32 3
  %97 = load ptr, ptr %96, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 16 dereferenceable(16) %93, ptr noundef align 16 dereferenceable(16) %97, i32 16, i1 false)
  store i32 0, ptr %88, align 4
  %98 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %1, i32 8
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %114, label %101

101:                                              ; preds = %91
  %102 = getelementptr inbounds %struct.udc_request, ptr %99, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  %104 = load i32, ptr %103, align 16
  %105 = or i32 %104, 134217728
  store i32 %105, ptr %103, align 16
  %106 = getelementptr inbounds %struct.udc_request, ptr %99, i32 0, i32 2
  %107 = load i32, ptr %106, align 4
  %108 = load ptr, ptr %102, align 4
  %109 = getelementptr inbounds %struct.udc_data_dma, ptr %108, i32 0, i32 3
  store i32 %107, ptr %109, align 4
  %110 = load ptr, ptr %102, align 4
  %111 = load i32, ptr %110, align 16
  %112 = and i32 %111, 1073741823
  %113 = or i32 %112, -2147483648
  store i32 %113, ptr %110, align 16
  br label %114

114:                                              ; preds = %101, %91, %87
  %115 = getelementptr i8, ptr %37, i32 -8
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %135, label %118

118:                                              ; preds = %123, %114
  %119 = phi ptr [ %127, %123 ], [ %116, %114 ]
  %120 = load i32, ptr %119, align 16
  %121 = and i32 %120, 134217728
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.udc_data_dma, ptr %119, i32 0, i32 3
  %125 = load i32, ptr %124, align 4
  %126 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %125, i32 -2130706432, i32 8454144) #12, !srcloc !60
  %127 = inttoptr i32 %126 to ptr
  %128 = icmp eq i32 %126, 0
  br i1 %128, label %129, label %118

129:                                              ; preds = %123
  %130 = load i32, ptr null, align 2147483648
  br label %131

131:                                              ; preds = %129, %118
  %132 = phi i32 [ %130, %129 ], [ %120, %118 ]
  %133 = and i32 %132, -1073741824
  %134 = icmp eq i32 %133, -2147483648
  br i1 %134, label %147, label %280

135:                                              ; preds = %114
  %136 = load i32, ptr null, align 2147483648
  %137 = and i32 %136, -1073741824
  %138 = icmp eq i32 %137, -2147483648
  br i1 %138, label %147, label %280

139:                                              ; preds = %84
  %140 = getelementptr i8, ptr %37, i32 -8
  %141 = load ptr, ptr %140, align 4
  %142 = load i32, ptr %141, align 16
  %143 = and i32 %142, -1073741824
  %144 = icmp eq i32 %143, -2147483648
  br i1 %144, label %145, label %280

145:                                              ; preds = %139
  %146 = and i32 %142, 65535
  br label %180

147:                                              ; preds = %135, %131
  %148 = phi i32 [ %136, %135 ], [ %132, %131 ]
  %149 = load i8, ptr @use_dma_ppb_du, align 1, !range !28
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %172, label %151

151:                                              ; preds = %147
  %152 = load i32, ptr %116, align 16
  %153 = and i32 %152, 65535
  %154 = icmp ne ptr %116, null
  %155 = and i32 %152, 134217728
  %156 = icmp eq i32 %155, 0
  %157 = select i1 %154, i1 %156, i1 false
  br i1 %157, label %158, label %180

158:                                              ; preds = %165, %151
  %159 = phi ptr [ %166, %165 ], [ %116, %151 ]
  %160 = phi i32 [ %169, %165 ], [ %153, %151 ]
  %161 = getelementptr inbounds %struct.udc_data_dma, ptr %159, i32 0, i32 3
  %162 = load i32, ptr %161, align 4
  %163 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %162, i32 -2130706432, i32 8454144) #12, !srcloc !60
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %180, label %165

165:                                              ; preds = %158
  %166 = inttoptr i32 %163 to ptr
  %167 = load i32, ptr %166, align 16
  %168 = and i32 %167, 65535
  %169 = add i32 %168, %160
  %170 = and i32 %167, 134217728
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %158, label %180

172:                                              ; preds = %147
  %173 = and i32 %148, 65535
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %172
  %176 = getelementptr i8, ptr %37, i32 -68
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %177, 65536
  %179 = select i1 %178, i32 65536, i32 0
  br label %180

180:                                              ; preds = %175, %172, %165, %158, %151, %145
  %181 = phi i32 [ %173, %172 ], [ %146, %145 ], [ %179, %175 ], [ %153, %151 ], [ %169, %165 ], [ %160, %158 ]
  %182 = getelementptr i8, ptr %37, i32 -68
  %183 = load i32, ptr %182, align 4
  %184 = getelementptr i8, ptr %37, i32 -20
  %185 = load i32, ptr %184, align 4
  %186 = sub i32 %183, %185
  %187 = icmp ugt i32 %181, %186
  br i1 %187, label %188, label %197

188:                                              ; preds = %180
  %189 = getelementptr inbounds %struct.usb_ep, ptr %3, i32 0, i32 7
  %190 = load i56, ptr %189, align 2
  %191 = trunc i56 %190 to i32
  %192 = and i32 %191, 65535
  %193 = urem i32 %186, %192
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %188
  %196 = getelementptr i8, ptr %37, i32 -24
  store i32 -75, ptr %196, align 4
  br label %197

197:                                              ; preds = %195, %188, %180
  %198 = phi i32 [ %181, %180 ], [ %186, %195 ], [ %186, %188 ]
  %199 = add i32 %185, %198
  store i32 %199, ptr %184, align 4
  %200 = getelementptr i8, ptr %37, i32 -16
  %201 = load i8, ptr %200, align 4
  %202 = and i8 %201, -2
  store i8 %202, ptr %200, align 4
  %203 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %1, i32 14
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %1, i32 3
  %206 = load ptr, ptr %205, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %213, label %208

208:                                              ; preds = %197
  %209 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %1, i32 18
  %210 = load i32, ptr %209, align 4
  %211 = lshr i32 %210, 19
  %212 = and i32 %211, 1
  tail call void @usb_gadget_unmap_request(ptr noundef %204, ptr noundef nonnull %40, i32 noundef %212) #10
  br label %213

213:                                              ; preds = %208, %197
  %214 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %1, i32 16
  %215 = load i32, ptr %214, align 4
  store i32 1, ptr %214, align 4
  %216 = getelementptr i8, ptr %37, i32 -24
  %217 = load i32, ptr %216, align 4
  %218 = icmp eq i32 %217, -115
  br i1 %218, label %219, label %220

219:                                              ; preds = %213
  store i32 0, ptr %216, align 4
  br label %220

220:                                              ; preds = %219, %213
  %221 = getelementptr i8, ptr %37, i32 4
  %222 = load ptr, ptr %221, align 4
  %223 = load ptr, ptr %37, align 4
  %224 = getelementptr inbounds %struct.list_head, ptr %223, i32 0, i32 1
  store ptr %222, ptr %224, align 4
  store volatile ptr %223, ptr %222, align 4
  store volatile ptr %37, ptr %37, align 4
  store ptr %37, ptr %221, align 4
  %225 = getelementptr inbounds %struct.udc, ptr %204, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %226 = load i16, ptr %225, align 4
  %227 = add i16 %226, 1
  store i16 %227, ptr %225, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  tail call void @usb_gadget_giveback_request(ptr noundef %3, ptr noundef nonnull %40) #10
  tail call void @_raw_spin_lock(ptr noundef %225) #10
  store i32 %215, ptr %214, align 4
  %228 = load volatile ptr, ptr %36, align 4
  %229 = icmp ne ptr %228, %36
  %230 = icmp eq i32 %215, 0
  %231 = select i1 %229, i1 %230, i1 false
  br i1 %231, label %232, label %248

232:                                              ; preds = %220
  %233 = getelementptr i8, ptr %228, i32 -16
  %234 = load i8, ptr %233, align 4
  %235 = and i8 %234, 1
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %237, label %298

237:                                              ; preds = %232
  %238 = getelementptr i8, ptr %228, i32 -72
  %239 = tail call fastcc i32 @prep_dma(ptr noundef %3, ptr noundef %238)
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %313

241:                                              ; preds = %237
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !97
  tail call void @arm_heavy_mb() #10
  %242 = getelementptr i8, ptr %228, i32 -12
  %243 = load i32, ptr %242, align 4
  %244 = load ptr, ptr %4, align 4
  %245 = getelementptr inbounds %struct.udc_ep_regs, ptr %244, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %245, i32 %243) #10, !srcloc !9
  %246 = load i8, ptr %233, align 4
  %247 = or i8 %246, 1
  store i8 %247, ptr %233, align 4
  tail call fastcc void @udc_set_rde(ptr noundef %0)
  br label %298

248:                                              ; preds = %220
  %249 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %1, i32 11
  %250 = load ptr, ptr %249, align 4
  %251 = icmp eq ptr %250, null
  br i1 %251, label %259, label %252

252:                                              ; preds = %248
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !98
  tail call void @arm_heavy_mb() #10
  %253 = load ptr, ptr %249, align 4
  %254 = getelementptr inbounds %struct.udc_request, ptr %253, i32 0, i32 2
  %255 = load i32, ptr %254, align 4
  %256 = load ptr, ptr %4, align 4
  %257 = getelementptr inbounds %struct.udc_ep_regs, ptr %256, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %257, i32 %255) #10, !srcloc !9
  %258 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %1, i32 12
  store i32 0, ptr %258, align 4
  br label %259

259:                                              ; preds = %252, %248
  %260 = load i32, ptr @set_rde, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %271, label %262

262:                                              ; preds = %259
  %263 = load volatile ptr, ptr getelementptr inbounds (%struct.timer_list, ptr @udc_timer, i32 0, i32 0, i32 1), align 4
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %271

265:                                              ; preds = %262
  %266 = load volatile i32, ptr @jiffies, align 64
  %267 = add i32 %266, 100
  store i32 %267, ptr getelementptr inbounds (%struct.timer_list, ptr @udc_timer, i32 0, i32 1), align 4
  store i32 1, ptr @set_rde, align 4
  %268 = load i32, ptr @stop_timer, align 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %265
  tail call void @add_timer(ptr noundef nonnull @udc_timer) #10
  br label %271

271:                                              ; preds = %270, %265, %262, %259
  %272 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %1, i32 18
  %273 = load i32, ptr %272, align 4
  %274 = and i32 %273, 31
  %275 = icmp eq i32 %274, 16
  br i1 %275, label %298, label %276

276:                                              ; preds = %271
  %277 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 4
  %278 = load i8, ptr %277, align 8
  %279 = and i8 %278, -17
  store i8 %279, ptr %277, align 8
  br label %298

280:                                              ; preds = %139, %135, %131
  %281 = load volatile ptr, ptr getelementptr inbounds (%struct.timer_list, ptr @udc_timer, i32 0, i32 0, i32 1), align 4
  %282 = icmp eq ptr %281, null
  br i1 %282, label %287, label %283

283:                                              ; preds = %280
  store i32 0, ptr @set_rde, align 4
  %284 = load volatile i32, ptr @jiffies, align 64
  %285 = add i32 %284, -1
  %286 = tail call i32 @mod_timer(ptr noundef nonnull @udc_timer, i32 noundef %285) #10
  br label %287

287:                                              ; preds = %283, %280
  %288 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 9
  %289 = load ptr, ptr %288, align 4
  %290 = getelementptr inbounds %struct.udc_regs, ptr %289, i32 0, i32 1
  %291 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %290) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !99
  %292 = or i32 %291, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !100
  tail call void @arm_heavy_mb() #10
  %293 = load ptr, ptr %288, align 4
  %294 = getelementptr inbounds %struct.udc_regs, ptr %293, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %294, i32 %292) #10, !srcloc !9
  br label %298

295:                                              ; preds = %78
  br i1 %81, label %298, label %296

296:                                              ; preds = %295, %42
  %297 = phi ptr [ %43, %42 ], [ %79, %295 ]
  store i32 0, ptr %297, align 4
  br label %298

298:                                              ; preds = %296, %295, %287, %276, %271, %241, %232, %69, %48, %46, %42, %41
  %299 = phi i32 [ 1, %276 ], [ 1, %271 ], [ 1, %241 ], [ 1, %232 ], [ 1, %287 ], [ 1, %296 ], [ 0, %295 ], [ 0, %48 ], [ 0, %46 ], [ 1, %69 ], [ 0, %42 ], [ 0, %41 ]
  %300 = load i32, ptr @cnak_pending, align 4
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %310, label %302

302:                                              ; preds = %298
  %303 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 9
  %304 = load ptr, ptr %303, align 4
  %305 = getelementptr inbounds %struct.udc_regs, ptr %304, i32 0, i32 2
  %306 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %305) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !101
  %307 = and i32 %306, 32768
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %310, label %309

309:                                              ; preds = %302
  tail call fastcc void @udc_process_cnak_queue(ptr noundef %0)
  br label %310

310:                                              ; preds = %309, %302, %298
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !102
  tail call void @arm_heavy_mb() #10
  %311 = load ptr, ptr %4, align 4
  %312 = getelementptr inbounds %struct.udc_ep_regs, ptr %311, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %312, i32 48) #10, !srcloc !9
  br label %313

313:                                              ; preds = %310, %237, %26, %22, %20
  %314 = phi i32 [ 1, %26 ], [ %299, %310 ], [ 1, %237 ], [ 1, %22 ], [ 1, %20 ]
  ret i32 %314
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gadget_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @udc_remove(ptr nocapture readnone %0) #0 {
  %2 = load i32, ptr @stop_timer, align 4
  %3 = add i32 %2, 1
  store i32 %3, ptr @stop_timer, align 4
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.timer_list, ptr @udc_timer, i32 0, i32 0, i32 1), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @wait_for_completion(ptr noundef nonnull @on_exit) #10
  br label %7

7:                                                ; preds = %6, %1
  %8 = tail call i32 @del_timer_sync(ptr noundef nonnull @udc_timer) #10
  %9 = load i32, ptr @stop_pollstall_timer, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr @stop_pollstall_timer, align 4
  %11 = load volatile ptr, ptr getelementptr inbounds (%struct.timer_list, ptr @udc_pollstall_timer, i32 0, i32 0, i32 1), align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @wait_for_completion(ptr noundef nonnull @on_pollstall_exit) #10
  br label %14

14:                                               ; preds = %13, %7
  %15 = tail call i32 @del_timer_sync(ptr noundef nonnull @udc_pollstall_timer) #10
  store ptr null, ptr @udc, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_dma_pools(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 16, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 16, i32 4
  %7 = load i32, ptr %6, align 4
  tail call void @dma_pool_free(ptr noundef %3, ptr noundef %5, i32 noundef %7) #10
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 16, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 16, i32 5
  %12 = load i32, ptr %11, align 4
  tail call void @dma_pool_free(ptr noundef %8, ptr noundef %10, i32 noundef %12) #10
  %13 = load ptr, ptr %2, align 8
  tail call void @dma_pool_destroy(ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 13
  %15 = load ptr, ptr %14, align 4
  tail call void @dma_pool_destroy(ptr noundef %15) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @init_dma_pools(ptr noundef %0) #0 {
  %2 = load i8, ptr @use_dma_ppb, align 1, !range !28
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i8 0, ptr @use_dma_ppb_du, align 1
  br label %5

5:                                                ; preds = %4, %1
  store i1 %3, ptr @use_dma_bufferfill_mode, align 4
  %6 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 21
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str, ptr noundef %7, i32 noundef 16, i32 noundef 0, i32 noundef 0) #10
  %9 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 13
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %40, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.udc_regs, ptr %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 2, i32 0, i32 3
  store ptr %14, ptr %15, align 4
  %16 = load ptr, ptr %6, align 8
  %17 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.1, ptr noundef %16, i32 noundef 16, i32 noundef 0, i32 noundef 0) #10
  %18 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 14
  store ptr %17, ptr %18, align 8
  %19 = icmp eq ptr %17, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %11
  %21 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 16, i32 5
  %22 = tail call ptr @dma_pool_alloc(ptr noundef nonnull %17, i32 noundef 3264, ptr noundef %21) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 16, i32 6
  store ptr %22, ptr %25, align 4
  %26 = load ptr, ptr %18, align 8
  %27 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 16, i32 4
  %28 = tail call ptr @dma_pool_alloc(ptr noundef %26, i32 noundef 3264, ptr noundef %27) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load ptr, ptr %18, align 8
  %32 = load ptr, ptr %25, align 4
  %33 = load i32, ptr %21, align 4
  tail call void @dma_pool_free(ptr noundef %31, ptr noundef %32, i32 noundef %33) #10
  br label %36

34:                                               ; preds = %24
  %35 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 16, i32 7
  store ptr %28, ptr %35, align 4
  br label %40

36:                                               ; preds = %30, %20
  %37 = load ptr, ptr %18, align 8
  tail call void @dma_pool_destroy(ptr noundef %37) #10
  store ptr null, ptr %18, align 8
  br label %38

38:                                               ; preds = %36, %11
  %39 = load ptr, ptr %9, align 4
  tail call void @dma_pool_destroy(ptr noundef %39) #10
  store ptr null, ptr %9, align 4
  br label %40

40:                                               ; preds = %38, %34, %5
  %41 = phi i32 [ 0, %34 ], [ -12, %38 ], [ -12, %5 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udc_probe(ptr noundef %0) #0 {
  %2 = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %2, i8 0, i32 128, i1 false), !annotation !103
  %3 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 2
  store ptr @udc_ops, ptr %3, align 4
  %4 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11
  %5 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %4, ptr noundef nonnull @.str.2) #10
  %6 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 10
  store ptr @name, ptr %6, align 8
  %7 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 6
  store i32 3, ptr %7, align 8
  tail call fastcc void @udc_soft_reset(ptr noundef %0) #10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !8
  tail call void @arm_heavy_mb() #10
  %8 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.udc_regs, ptr %9, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 255) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.udc_regs, ptr %11, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 -1) #10, !srcloc !9
  tail call void @udc_basic_init(ptr noundef %0) #10
  tail call fastcc void @udc_setup_endpoints(ptr noundef %0) #10
  %13 = load ptr, ptr %8, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !104
  %15 = load i8, ptr @use_fullspeed, align 1, !range !28
  %16 = and i32 %14, -4
  %17 = zext i8 %15 to i32
  %18 = or i32 %16, %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %19 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %18) #10, !srcloc !9
  %20 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 21
  %21 = load ptr, ptr %20, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.3, ptr noundef nonnull @mod_desc) #11
  %22 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 17
  %23 = load i32, ptr %22, align 4
  %24 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 128, ptr noundef nonnull @.str.4, i32 noundef %23)
  %25 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 6
  %26 = load i16, ptr %25, align 8
  %27 = add i16 %26, -1
  %28 = icmp ult i16 %27, 2
  br i1 %28, label %29, label %41

29:                                               ; preds = %1
  %30 = load ptr, ptr %20, align 8
  %31 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 15
  %32 = load i32, ptr %31, align 4
  %33 = zext i16 %26 to i32
  %34 = icmp eq i16 %26, 1
  %35 = select i1 %34, ptr @.str.6, ptr @.str.7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.5, ptr noundef nonnull %2, i32 noundef %32, i32 noundef %33, ptr noundef nonnull %35) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %2, ptr noundef nonnull align 1 dereferenceable(11) @.str.8, i32 11, i1 false)
  %36 = load i16, ptr %25, align 8
  %37 = icmp eq i16 %36, 1
  %38 = load ptr, ptr %20, align 8
  br i1 %37, label %39, label %40

39:                                               ; preds = %29
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.9) #11
  br label %80

40:                                               ; preds = %29
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.10, ptr noundef nonnull %2) #11
  br label %41

41:                                               ; preds = %40, %1
  store ptr %0, ptr @udc, align 4
  %42 = load ptr, ptr %20, align 8
  %43 = call i32 @usb_add_gadget_udc_release(ptr noundef %42, ptr noundef %0, ptr noundef nonnull @gadget_release) #10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %80

45:                                               ; preds = %41
  call void @init_timer_key(ptr noundef nonnull @udc_timer, ptr noundef nonnull @udc_timer_function, i32 noundef 0, ptr noundef null, ptr noundef null) #10
  call void @init_timer_key(ptr noundef nonnull @udc_pollstall_timer, ptr noundef nonnull @udc_pollstall_timer_function, i32 noundef 0, ptr noundef null, ptr noundef null) #10
  %46 = load ptr, ptr %8, align 4
  %47 = getelementptr inbounds %struct.udc_regs, ptr %46, i32 0, i32 1
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #10, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !106
  %49 = or i32 %48, 1024
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !107
  call void @arm_heavy_mb() #10
  %50 = load ptr, ptr %8, align 4
  %51 = getelementptr inbounds %struct.udc_regs, ptr %50, i32 0, i32 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #10, !srcloc !9
  %52 = load i8, ptr @use_dma, align 1, !range !28
  %53 = icmp eq i8 %52, 0
  %54 = load i8, ptr @use_dma_ppb, align 1
  %55 = icmp eq i8 %54, 0
  %56 = select i1 %53, i1 true, i1 %55
  %57 = xor i1 %56, true
  %58 = load i8, ptr @use_dma_ppb_du, align 1
  %59 = icmp eq i8 %58, 0
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %63, label %61

61:                                               ; preds = %45
  %62 = select i1 %56, i1 true, i1 %59
  br i1 %62, label %67, label %63

63:                                               ; preds = %61, %45
  %64 = phi ptr [ @.str.49, %45 ], [ @.str.50, %61 ]
  %65 = load ptr, ptr %20, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %65, ptr noundef nonnull @.str.48, ptr noundef nonnull %64) #11
  %66 = load i8, ptr @use_dma, align 1, !range !28
  br label %67

67:                                               ; preds = %63, %61
  %68 = phi i8 [ %66, %63 ], [ %52, %61 ]
  %69 = icmp ne i8 %68, 0
  %70 = load i1, ptr @use_dma_bufferfill_mode, align 4
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load ptr, ptr %20, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %73, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.51) #11
  %74 = load i8, ptr @use_dma, align 1
  br label %75

75:                                               ; preds = %72, %67
  %76 = phi i8 [ %74, %72 ], [ %68, %67 ]
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load ptr, ptr %20, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %79, ptr noundef nonnull @.str.52) #11
  br label %80

80:                                               ; preds = %78, %75, %41, %39
  %81 = phi i32 [ -19, %39 ], [ %43, %41 ], [ 0, %75 ], [ 0, %78 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #10
  ret i32 %81
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc_release(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @udc_timer_function(ptr nocapture noundef readnone %0) #0 {
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @udc_irq_spinlock) #10
  %2 = load i32, ptr @set_rde, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %36

4:                                                ; preds = %1
  %5 = icmp eq i32 %2, 1
  %6 = load ptr, ptr @udc, align 4
  %7 = getelementptr inbounds %struct.udc, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  br i1 %5, label %17, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.udc_regs, ptr %8, i32 0, i32 1
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !108
  %12 = or i32 %11, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !109
  tail call void @arm_heavy_mb() #10
  %13 = load ptr, ptr @udc, align 4
  %14 = getelementptr inbounds %struct.udc, ptr %13, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.udc_regs, ptr %15, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %12) #10, !srcloc !9
  store i32 -1, ptr @set_rde, align 4
  br label %37

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.udc_regs, ptr %8, i32 0, i32 2
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !110
  %20 = and i32 %19, 32768
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = add i32 %23, 10
  store i32 %24, ptr getelementptr inbounds (%struct.timer_list, ptr @udc_timer, i32 0, i32 1), align 4
  %25 = load i32, ptr @stop_timer, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  tail call void @add_timer(ptr noundef nonnull @udc_timer) #10
  br label %37

28:                                               ; preds = %17
  %29 = load i32, ptr @set_rde, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr @set_rde, align 4
  %31 = load volatile i32, ptr @jiffies, align 64
  %32 = add i32 %31, 100
  store i32 %32, ptr getelementptr inbounds (%struct.timer_list, ptr @udc_timer, i32 0, i32 1), align 4
  %33 = load i32, ptr @stop_timer, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  tail call void @add_timer(ptr noundef nonnull @udc_timer) #10
  br label %37

36:                                               ; preds = %1
  store i32 -1, ptr @set_rde, align 4
  br label %37

37:                                               ; preds = %36, %35, %28, %27, %22, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %38 = load i16, ptr @udc_irq_spinlock, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr @udc_irq_spinlock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !111
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !112
  %40 = load i32, ptr @stop_timer, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  tail call void @complete(ptr noundef nonnull @on_exit) #10
  br label %43

43:                                               ; preds = %42, %37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @udc_pollstall_timer_function(ptr nocapture noundef readnone %0) #0 {
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @udc_stall_spinlock) #10
  %2 = load ptr, ptr @udc, align 4
  %3 = getelementptr %struct.udc, ptr %2, i32 0, i32 2, i32 2, i32 16
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %32

6:                                                ; preds = %1
  %7 = getelementptr %struct.udc, ptr %2, i32 0, i32 2, i32 2, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !113
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %6
  %13 = or i32 %9, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !114
  tail call void @arm_heavy_mb() #10
  %14 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %13) #10, !srcloc !9
  store i32 0, ptr %3, align 4
  %15 = getelementptr %struct.udc, ptr %2, i32 0, i32 2, i32 2, i32 18
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 31
  %18 = load ptr, ptr %7, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !34
  %20 = and i32 %19, 64
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %12
  %23 = shl nuw i32 1, %17
  %24 = load i32, ptr @cnak_pending, align 4
  %25 = or i32 %24, %23
  store i32 %25, ptr @cnak_pending, align 4
  %26 = getelementptr %struct.udc, ptr %2, i32 0, i32 2, i32 2, i32 13
  store i32 1, ptr %26, align 4
  br label %32

27:                                               ; preds = %12
  %28 = load i32, ptr @cnak_pending, align 4
  %29 = shl nuw i32 1, %17
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  store i32 %31, ptr @cnak_pending, align 4
  br label %32

32:                                               ; preds = %27, %22, %6, %1
  %33 = load i32, ptr %3, align 4
  %34 = icmp ne i32 %33, 0
  %35 = load ptr, ptr @udc, align 4
  %36 = getelementptr %struct.udc, ptr %35, i32 0, i32 2, i32 18, i32 16
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %65

39:                                               ; preds = %32
  %40 = getelementptr %struct.udc, ptr %35, i32 0, i32 2, i32 18, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !113
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %39
  %46 = or i32 %42, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !114
  tail call void @arm_heavy_mb() #10
  %47 = load ptr, ptr %40, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %46) #10, !srcloc !9
  store i32 0, ptr %36, align 4
  %48 = getelementptr %struct.udc, ptr %35, i32 0, i32 2, i32 18, i32 18
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 31
  %51 = load ptr, ptr %40, align 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !34
  %53 = and i32 %52, 64
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %45
  %56 = shl nuw i32 1, %50
  %57 = load i32, ptr @cnak_pending, align 4
  %58 = or i32 %57, %56
  store i32 %58, ptr @cnak_pending, align 4
  %59 = getelementptr %struct.udc, ptr %35, i32 0, i32 2, i32 18, i32 13
  store i32 1, ptr %59, align 4
  br label %65

60:                                               ; preds = %45
  %61 = load i32, ptr @cnak_pending, align 4
  %62 = shl nuw i32 1, %50
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  store i32 %64, ptr @cnak_pending, align 4
  br label %65

65:                                               ; preds = %60, %55, %39, %32
  %66 = load i32, ptr %36, align 4
  %67 = icmp ne i32 %66, 0
  %68 = select i1 %67, i1 true, i1 %34
  %69 = load i32, ptr @stop_pollstall_timer, align 4
  %70 = icmp eq i32 %69, 0
  %71 = and i1 %70, %68
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load volatile i32, ptr @jiffies, align 64
  store i32 %73, ptr getelementptr inbounds (%struct.timer_list, ptr @udc_pollstall_timer, i32 0, i32 1), align 4
  tail call void @add_timer(ptr noundef nonnull @udc_pollstall_timer) #10
  br label %74

74:                                               ; preds = %72, %65
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %75 = load i16, ptr @udc_stall_spinlock, align 4
  %76 = add i16 %75, 1
  store i16 %76, ptr @udc_stall_spinlock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !111
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !112
  %77 = load i32, ptr @stop_pollstall_timer, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  tail call void @complete(ptr noundef nonnull @on_pollstall_exit) #10
  br label %80

80:                                               ; preds = %79, %74
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_unmap_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @udc_ep0_set_rde(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i8, ptr @use_dma, align 1, !range !28
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %36, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 4
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 24
  %8 = icmp eq i8 %7, 8
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.timer_list, ptr @udc_timer, i32 0, i32 0, i32 1), align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  store i32 0, ptr @set_rde, align 4
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = add i32 %13, -1
  %15 = tail call i32 @mod_timer(ptr noundef nonnull @udc_timer, i32 noundef %14) #10
  br label %16

16:                                               ; preds = %12, %9
  %17 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.udc_regs, ptr %18, i32 0, i32 1
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !99
  %21 = or i32 %20, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !100
  tail call void @arm_heavy_mb() #10
  %22 = load ptr, ptr %17, align 4
  %23 = getelementptr inbounds %struct.udc_regs, ptr %22, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #10, !srcloc !9
  br label %36

24:                                               ; preds = %4
  %25 = load i32, ptr @set_rde, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = load volatile ptr, ptr getelementptr inbounds (%struct.timer_list, ptr @udc_timer, i32 0, i32 0, i32 1), align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load volatile i32, ptr @jiffies, align 64
  %32 = add i32 %31, 10
  store i32 %32, ptr getelementptr inbounds (%struct.timer_list, ptr @udc_timer, i32 0, i32 1), align 4
  store i32 1, ptr @set_rde, align 4
  %33 = load i32, ptr @stop_timer, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  tail call void @add_timer(ptr noundef nonnull @udc_timer) #10
  br label %36

36:                                               ; preds = %35, %30, %27, %24, %16, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @udc_set_halt(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %78, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 18
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 31
  switch i32 %11, label %78 [
    i32 0, label %12
    i32 16, label %12
  ]

12:                                               ; preds = %8, %8, %4
  %13 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 14
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.udc, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %78, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.usb_gadget, ptr %14, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %78, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @udc_stall_spinlock) #10
  %24 = icmp eq i32 %1, 0
  br i1 %24, label %49, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 18
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 31
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load ptr, ptr %13, align 4
  %32 = getelementptr inbounds %struct.udc, ptr %31, i32 0, i32 4
  %33 = load i8, ptr %32, align 8
  %34 = or i8 %33, 1
  store i8 %34, ptr %32, align 8
  br label %77

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !115
  %39 = or i32 %38, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  %40 = load ptr, ptr %36, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %39) #10, !srcloc !9
  %41 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 16
  store i32 1, ptr %41, align 4
  %42 = load volatile ptr, ptr getelementptr inbounds (%struct.timer_list, ptr @udc_pollstall_timer, i32 0, i32 0, i32 1), align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %77

44:                                               ; preds = %35
  %45 = load volatile i32, ptr @jiffies, align 64
  store i32 %45, ptr getelementptr inbounds (%struct.timer_list, ptr @udc_pollstall_timer, i32 0, i32 1), align 4
  %46 = load i32, ptr @stop_pollstall_timer, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %44
  tail call void @add_timer(ptr noundef nonnull @udc_pollstall_timer) #10
  br label %77

49:                                               ; preds = %22
  %50 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 16
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %77, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !117
  %57 = and i32 %56, -258
  %58 = or i32 %57, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %59 = load ptr, ptr %54, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %58) #10, !srcloc !9
  store i32 0, ptr %50, align 4
  %60 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 18
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 31
  %63 = load ptr, ptr %54, align 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !34
  %65 = and i32 %64, 64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %53
  %68 = shl nuw i32 1, %62
  %69 = load i32, ptr @cnak_pending, align 4
  %70 = or i32 %69, %68
  store i32 %70, ptr @cnak_pending, align 4
  %71 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 13
  store i32 1, ptr %71, align 4
  br label %77

72:                                               ; preds = %53
  %73 = load i32, ptr @cnak_pending, align 4
  %74 = shl nuw i32 1, %62
  %75 = xor i32 %74, -1
  %76 = and i32 %73, %75
  store i32 %76, ptr @cnak_pending, align 4
  br label %77

77:                                               ; preds = %72, %67, %49, %48, %44, %35, %30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @udc_stall_spinlock, i32 noundef %23) #10
  br label %78

78:                                               ; preds = %77, %18, %12, %8, %2
  %79 = phi i32 [ 0, %77 ], [ -22, %2 ], [ -22, %8 ], [ -108, %18 ], [ -108, %12 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @UDC_QUEUE_CNAK(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !34
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = shl nuw i32 1, %1
  %10 = load i32, ptr @cnak_pending, align 4
  %11 = or i32 %10, %9
  store i32 %11, ptr @cnak_pending, align 4
  %12 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 13
  store i32 1, ptr %12, align 4
  br label %18

13:                                               ; preds = %2
  %14 = load i32, ptr @cnak_pending, align 4
  %15 = shl nuw i32 1, %1
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  store i32 %17, ptr @cnak_pending, align 4
  br label %18

18:                                               ; preds = %13, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @udc_process_cnak_queue(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @cnak_pending, align 4
  br label %3

3:                                                ; preds = %32, %1
  %4 = phi i32 [ %2, %1 ], [ %33, %32 ]
  %5 = phi i32 [ 0, %1 ], [ %34, %32 ]
  %6 = shl nuw nsw i32 1, %5
  %7 = and i32 %4, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %32, label %9

9:                                                ; preds = %3
  %10 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %5, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !119
  %13 = or i32 %12, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !120
  tail call void @arm_heavy_mb() #10
  %14 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %13) #10, !srcloc !9
  %15 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %5, i32 13
  store i32 0, ptr %15, align 4
  %16 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %5, i32 18
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 31
  %19 = load ptr, ptr %10, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !34
  %21 = and i32 %20, 64
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %9
  %24 = shl nuw i32 1, %18
  %25 = load i32, ptr @cnak_pending, align 4
  %26 = or i32 %25, %24
  store i32 %26, ptr @cnak_pending, align 4
  store i32 1, ptr %15, align 4
  br label %32

27:                                               ; preds = %9
  %28 = load i32, ptr @cnak_pending, align 4
  %29 = shl nuw i32 1, %18
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  store i32 %31, ptr @cnak_pending, align 4
  br label %32

32:                                               ; preds = %27, %23, %3
  %33 = phi i32 [ %31, %27 ], [ %26, %23 ], [ %4, %3 ]
  %34 = add nuw nsw i32 %5, 1
  %35 = icmp eq i32 %34, 5
  br i1 %35, label %36, label %3

36:                                               ; preds = %32
  %37 = and i32 %33, 65536
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %62, label %39

39:                                               ; preds = %36
  %40 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 16, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !121
  %43 = or i32 %42, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !122
  tail call void @arm_heavy_mb() #10
  %44 = load ptr, ptr %40, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %43) #10, !srcloc !9
  %45 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 16, i32 13
  store i32 0, ptr %45, align 4
  %46 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 16, i32 18
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 31
  %49 = load ptr, ptr %40, align 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !34
  %51 = and i32 %50, 64
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %39
  %54 = shl nuw i32 1, %48
  %55 = load i32, ptr @cnak_pending, align 4
  %56 = or i32 %55, %54
  store i32 %56, ptr @cnak_pending, align 4
  store i32 1, ptr %45, align 4
  br label %62

57:                                               ; preds = %39
  %58 = load i32, ptr @cnak_pending, align 4
  %59 = shl nuw i32 1, %48
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  store i32 %61, ptr @cnak_pending, align 4
  br label %62

62:                                               ; preds = %57, %53, %36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @udc_set_rde(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load volatile ptr, ptr getelementptr inbounds (%struct.timer_list, ptr @udc_timer, i32 0, i32 0, i32 1), align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  store i32 0, ptr @set_rde, align 4
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = add i32 %5, -1
  %7 = tail call i32 @mod_timer(ptr noundef nonnull @udc_timer, i32 noundef %6) #10
  br label %8

8:                                                ; preds = %4, %1
  %9 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.udc_regs, ptr %10, i32 0, i32 1
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !99
  %13 = or i32 %12, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !100
  tail call void @arm_heavy_mb() #10
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr inbounds %struct.udc_regs, ptr %14, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #10, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @udc_txfifo_write(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = icmp ne ptr %1, null
  %4 = icmp ne ptr %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %57

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 %9
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %10) #10, !srcloc !123
  %11 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %8, align 4
  %14 = sub i32 %12, %13
  %15 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 7
  %16 = load i56, ptr %15, align 2
  %17 = trunc i56 %16 to i32
  %18 = and i32 %17, 65535
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 %14)
  %20 = icmp ult i32 %19, 4
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = lshr i32 %19, 2
  %23 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 2
  br label %35

24:                                               ; preds = %35, %6
  %25 = phi i32 [ 0, %6 ], [ %22, %35 ]
  %26 = and i32 %19, 3
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %53, label %28

28:                                               ; preds = %24
  %29 = getelementptr i32, ptr %10, i32 %25
  %30 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %31 = load i32, ptr %29, align 4
  %32 = trunc i32 %31 to i8
  %33 = load ptr, ptr %30, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %33, i8 %32) #10, !srcloc !125
  %34 = icmp eq i32 %26, 1
  br i1 %34, label %53, label %42

35:                                               ; preds = %35, %21
  %36 = phi i32 [ 0, %21 ], [ %40, %35 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !126
  tail call void @arm_heavy_mb() #10
  %37 = getelementptr i32, ptr %10, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %38) #10, !srcloc !9
  %40 = add nuw nsw i32 %36, 1
  %41 = icmp eq i32 %40, %22
  br i1 %41, label %24, label %35

42:                                               ; preds = %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %43 = load i32, ptr %29, align 4
  %44 = lshr i32 %43, 8
  %45 = trunc i32 %44 to i8
  %46 = load ptr, ptr %30, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %46, i8 %45) #10, !srcloc !125
  %47 = icmp eq i32 %26, 2
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %49 = load i32, ptr %29, align 4
  %50 = lshr i32 %49, 16
  %51 = trunc i32 %50 to i8
  %52 = load ptr, ptr %30, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %52, i8 %51) #10, !srcloc !125
  br label %53

53:                                               ; preds = %48, %42, %28, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !127
  tail call void @arm_heavy_mb() #10
  %54 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.udc_ep_regs, ptr %55, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 0) #10, !srcloc !9
  br label %57

57:                                               ; preds = %53, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @udc_rxfifo_read(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.udc_ep_regs, ptr %4, i32 0, i32 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !128
  %7 = lshr i32 %6, 11
  %8 = and i32 %7, 4095
  %9 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %10, %12
  %14 = load ptr, ptr %1, align 4
  %15 = icmp ugt i32 %8, %13
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 7
  %18 = load i56, ptr %17, align 2
  %19 = trunc i56 %18 to i32
  %20 = and i32 %19, 65535
  %21 = urem i32 %13, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  store i32 -75, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %16, %2
  %26 = phi i32 [ %8, %2 ], [ %13, %23 ], [ %13, %16 ]
  %27 = add i32 %26, %12
  store i32 %27, ptr %11, align 4
  %28 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 7
  %29 = load i56, ptr %28, align 2
  %30 = trunc i56 %29 to i32
  %31 = and i32 %30, 65535
  %32 = urem i32 %26, %31
  %33 = icmp eq i32 %32, 0
  %34 = icmp ne i32 %26, 0
  %35 = and i1 %34, %33
  br i1 %35, label %36, label %43

36:                                               ; preds = %25
  %37 = icmp eq i32 %27, %10
  br i1 %37, label %38, label %44

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 262144
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %25
  br label %44

44:                                               ; preds = %43, %38, %36
  %45 = phi i32 [ 0, %38 ], [ 1, %43 ], [ 0, %36 ]
  %46 = getelementptr i8, ptr %14, i32 %12
  %47 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 14
  %48 = load ptr, ptr %47, align 4
  %49 = freeze i32 %26
  %50 = sdiv i32 %49, 4
  %51 = icmp sgt i32 %26, 3
  br i1 %51, label %52, label %64

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.udc, ptr %48, i32 0, i32 11
  br label %54

54:                                               ; preds = %54, %52
  %55 = phi i32 [ 0, %52 ], [ %60, %54 ]
  %56 = load ptr, ptr %53, align 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !129
  %58 = shl i32 %55, 2
  %59 = getelementptr i8, ptr %46, i32 %58
  store i32 %57, ptr %59, align 4
  %60 = add nuw nsw i32 %55, 1
  %61 = icmp eq i32 %60, %50
  br i1 %61, label %62, label %54

62:                                               ; preds = %54
  %63 = shl nsw i32 %50, 2
  br label %64

64:                                               ; preds = %62, %44
  %65 = phi i32 [ 0, %44 ], [ %63, %62 ]
  %66 = mul i32 %50, 4
  %67 = sub i32 %49, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.udc, ptr %48, i32 0, i32 11
  %71 = load ptr, ptr %70, align 4
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !130
  %73 = icmp sgt i32 %67, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = getelementptr i8, ptr %46, i32 %65
  br label %76

76:                                               ; preds = %76, %74
  %77 = phi i32 [ 0, %74 ], [ %82, %76 ]
  %78 = phi i32 [ %72, %74 ], [ %81, %76 ]
  %79 = trunc i32 %78 to i8
  %80 = getelementptr i8, ptr %75, i32 %77
  store i8 %79, ptr %80, align 1
  %81 = lshr i32 %78, 8
  %82 = add nuw nsw i32 %77, 1
  %83 = icmp eq i32 %82, %67
  br i1 %83, label %84, label %76

84:                                               ; preds = %76, %69, %64
  ret i32 %45
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @prep_dma(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.udc_request, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.udc_data_dma, ptr %7, i32 0, i32 2
  store i32 %5, ptr %8, align 8
  %9 = load ptr, ptr %6, align 4
  %10 = load i32, ptr %9, align 16
  %11 = or i32 %10, 134217728
  store i32 %11, ptr %9, align 16
  %12 = load i8, ptr @use_dma_ppb, align 1, !range !28
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %161, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 7
  %16 = load i56, ptr %15, align 2
  %17 = trunc i56 %16 to i32
  %18 = and i32 %17, 65535
  %19 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 -1, ptr %3, align 4
  %21 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 18
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 524288
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %14
  %26 = load ptr, ptr %6, align 4
  %27 = load i32, ptr %26, align 16
  %28 = and i32 %27, -134217729
  store i32 %28, ptr %26, align 16
  %29 = load i32, ptr %19, align 4
  %30 = load i56, ptr %15, align 2
  %31 = trunc i56 %30 to i32
  %32 = and i32 %31, 65535
  br label %33

33:                                               ; preds = %25, %14
  %34 = phi i32 [ %32, %25 ], [ %18, %14 ]
  %35 = phi i32 [ %29, %25 ], [ %20, %14 ]
  %36 = freeze i32 %35
  %37 = freeze i32 %34
  %38 = udiv i32 %36, %37
  %39 = mul i32 %38, %37
  %40 = sub i32 %36, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = add i32 %38, %42
  %44 = getelementptr inbounds %struct.udc_request, ptr %1, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = icmp ugt i32 %43, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %33
  %48 = icmp ugt i32 %45, 1
  br i1 %48, label %49, label %67

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 14
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %6, align 4
  %53 = getelementptr inbounds %struct.udc_data_dma, ptr %52, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.udc, ptr %51, i32 0, i32 13
  br label %56

56:                                               ; preds = %56, %49
  %57 = phi i32 [ %54, %49 ], [ %62, %56 ]
  %58 = phi i32 [ 1, %49 ], [ %64, %56 ]
  %59 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %57, i32 -2130706432, i32 8454144) #12, !srcloc !60
  %60 = inttoptr i32 %59 to ptr
  %61 = getelementptr inbounds %struct.udc_data_dma, ptr %60, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = load ptr, ptr %55, align 4
  tail call void @dma_pool_free(ptr noundef %63, ptr noundef %60, i32 noundef %57) #10
  %64 = add nuw i32 %58, 1
  %65 = load i32, ptr %44, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %56, label %67

67:                                               ; preds = %56, %47
  store i32 %43, ptr %44, align 4
  br label %68

68:                                               ; preds = %67, %33
  %69 = icmp ugt i32 %20, %18
  br i1 %69, label %70, label %137

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 14
  br label %72

72:                                               ; preds = %134, %70
  %73 = phi ptr [ null, %70 ], [ %98, %134 ]
  %74 = phi i32 [ %18, %70 ], [ %135, %134 ]
  br i1 %46, label %75, label %82

75:                                               ; preds = %72
  %76 = load ptr, ptr %71, align 4
  %77 = getelementptr inbounds %struct.udc, ptr %76, i32 0, i32 13
  %78 = load ptr, ptr %77, align 4
  %79 = call ptr @dma_pool_alloc(ptr noundef %78, i32 noundef 2592, ptr noundef nonnull %3) #10
  %80 = icmp eq ptr %79, null
  br i1 %80, label %145, label %81

81:                                               ; preds = %75
  store i32 0, ptr %79, align 16
  br label %97

82:                                               ; preds = %72
  %83 = icmp eq i32 %74, %18
  br i1 %83, label %84, label %89

84:                                               ; preds = %82
  %85 = load ptr, ptr %6, align 4
  %86 = getelementptr inbounds %struct.udc_data_dma, ptr %85, i32 0, i32 3
  %87 = load i32, ptr %86, align 4
  %88 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %87, i32 -2130706432, i32 8454144) #12, !srcloc !60
  br label %93

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.udc_data_dma, ptr %73, i32 0, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %91, i32 -2130706432, i32 8454144) #12, !srcloc !60
  br label %93

93:                                               ; preds = %89, %84
  %94 = phi i32 [ %88, %84 ], [ %92, %89 ]
  %95 = inttoptr i32 %94 to ptr
  store i32 0, ptr %95, align 16
  %96 = icmp eq i32 %94, 0
  br i1 %96, label %146, label %97

97:                                               ; preds = %93, %81
  %98 = phi ptr [ %79, %81 ], [ %95, %93 ]
  %99 = load i32, ptr %4, align 4
  %100 = add i32 %99, %74
  %101 = getelementptr inbounds %struct.udc_data_dma, ptr %98, i32 0, i32 2
  store i32 %100, ptr %101, align 8
  %102 = sub i32 %20, %74
  %103 = call i32 @llvm.umin.i32(i32 %102, i32 %18) #10
  %104 = icmp eq i32 %74, %18
  br i1 %104, label %105, label %122

105:                                              ; preds = %97
  br i1 %46, label %106, label %110

106:                                              ; preds = %105
  %107 = load i32, ptr %3, align 4
  %108 = load ptr, ptr %6, align 4
  %109 = getelementptr inbounds %struct.udc_data_dma, ptr %108, i32 0, i32 3
  store i32 %107, ptr %109, align 4
  br label %110

110:                                              ; preds = %106, %105
  %111 = load i32, ptr %21, align 4
  %112 = and i32 %111, 524288
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %134, label %114

114:                                              ; preds = %110
  %115 = load ptr, ptr %6, align 4
  %116 = load i32, ptr %115, align 16
  %117 = and i32 %116, -65536
  %118 = load i56, ptr %15, align 2
  %119 = trunc i56 %118 to i32
  %120 = and i32 %119, 65535
  %121 = or i32 %120, %117
  store i32 %121, ptr %115, align 16
  br label %130

122:                                              ; preds = %97
  br i1 %46, label %123, label %126

123:                                              ; preds = %122
  %124 = load i32, ptr %3, align 4
  %125 = getelementptr inbounds %struct.udc_data_dma, ptr %73, i32 0, i32 3
  store i32 %124, ptr %125, align 4
  br label %126

126:                                              ; preds = %123, %122
  %127 = load i32, ptr %21, align 4
  %128 = and i32 %127, 524288
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %126, %114
  %131 = load i32, ptr %98, align 16
  %132 = and i32 %131, -65536
  %133 = or i32 %132, %103
  store i32 %133, ptr %98, align 16
  br label %134

134:                                              ; preds = %130, %126, %110
  %135 = add i32 %74, %18
  %136 = icmp ugt i32 %20, %135
  br i1 %136, label %72, label %140

137:                                              ; preds = %68
  %138 = load ptr, ptr %6, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %146, label %140

140:                                              ; preds = %137, %134
  %141 = phi ptr [ %138, %137 ], [ %98, %134 ]
  %142 = load i32, ptr %141, align 16
  %143 = or i32 %142, 134217728
  store i32 %143, ptr %141, align 16
  %144 = getelementptr inbounds %struct.udc_request, ptr %1, i32 0, i32 4
  store ptr %141, ptr %144, align 4
  br label %146

145:                                              ; preds = %75
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %220

146:                                              ; preds = %140, %137, %93
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  %147 = load i32, ptr %21, align 4
  %148 = and i32 %147, 524288
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %161, label %150

150:                                              ; preds = %146
  %151 = load i32, ptr %19, align 4
  %152 = load i56, ptr %15, align 2
  %153 = trunc i56 %152 to i32
  %154 = and i32 %153, 65535
  %155 = icmp eq i32 %151, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %150
  %157 = load ptr, ptr %6, align 4
  %158 = load i32, ptr %157, align 16
  %159 = and i32 %158, -65536
  %160 = or i32 %159, %151
  store i32 %160, ptr %157, align 16
  br label %161

161:                                              ; preds = %156, %150, %146, %2
  %162 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 18
  %163 = load i32, ptr %162, align 4
  %164 = and i32 %163, 524288
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %192, label %166

166:                                              ; preds = %161
  %167 = load i8, ptr @use_dma_ppb, align 1, !range !28
  %168 = icmp eq i8 %167, 0
  %169 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %170 = load i32, ptr %169, align 4
  br i1 %168, label %179, label %171

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 7
  %173 = load i56, ptr %172, align 2
  %174 = trunc i56 %173 to i32
  %175 = and i32 %174, 65535
  %176 = icmp ult i32 %170, %175
  br i1 %176, label %179, label %177

177:                                              ; preds = %171
  %178 = and i32 %163, 31
  switch i32 %178, label %188 [
    i32 16, label %179
    i32 0, label %179
  ]

179:                                              ; preds = %177, %177, %171, %166
  %180 = load ptr, ptr %6, align 4
  %181 = load i32, ptr %180, align 16
  %182 = and i32 %181, -65536
  %183 = and i32 %170, 65535
  %184 = or i32 %183, %182
  store i32 %184, ptr %180, align 16
  %185 = load ptr, ptr %6, align 4
  %186 = load i32, ptr %185, align 16
  %187 = and i32 %186, -134152193
  store i32 %187, ptr %185, align 16
  br label %188

188:                                              ; preds = %179, %177
  %189 = load ptr, ptr %6, align 4
  %190 = load i32, ptr %189, align 16
  %191 = or i32 %190, -1073741824
  store i32 %191, ptr %189, align 16
  br label %220

192:                                              ; preds = %161
  %193 = load ptr, ptr %6, align 4
  %194 = load i32, ptr %193, align 16
  %195 = and i32 %194, 1073741823
  store i32 %195, ptr %193, align 16
  %196 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 13
  %197 = load i32, ptr %196, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %220, label %199

199:                                              ; preds = %192
  %200 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 1
  %201 = load ptr, ptr %200, align 4
  %202 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %201) #10, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !131
  %203 = or i32 %202, 256
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !132
  call void @arm_heavy_mb() #10
  %204 = load ptr, ptr %200, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %203) #10, !srcloc !9
  store i32 0, ptr %196, align 4
  %205 = load i32, ptr %162, align 4
  %206 = and i32 %205, 31
  %207 = load ptr, ptr %200, align 4
  %208 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %207) #10, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !34
  %209 = and i32 %208, 64
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %199
  %212 = shl nuw i32 1, %206
  %213 = load i32, ptr @cnak_pending, align 4
  %214 = or i32 %213, %212
  store i32 %214, ptr @cnak_pending, align 4
  store i32 1, ptr %196, align 4
  br label %220

215:                                              ; preds = %199
  %216 = load i32, ptr @cnak_pending, align 4
  %217 = shl nuw i32 1, %206
  %218 = xor i32 %217, -1
  %219 = and i32 %216, %218
  store i32 %219, ptr @cnak_pending, align 4
  br label %220

220:                                              ; preds = %215, %211, %192, %188, %145
  %221 = phi i32 [ -12, %145 ], [ 0, %192 ], [ 0, %188 ], [ 0, %211 ], [ 0, %215 ]
  ret i32 %221
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_udc_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ep_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 9
  store ptr null, ptr %3, align 4
  %4 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 2
  store ptr @udc_ep_ops, ptr %4, align 4
  %5 = getelementptr inbounds %struct.udc_ep, ptr %1, i32 0, i32 15
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.udc_ep, ptr %1, i32 0, i32 15, i32 1
  store ptr %5, ptr %6, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %1, i32 noundef 65535) #10
  %7 = getelementptr inbounds %struct.udc_ep, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !133
  %10 = or i32 %9, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %11 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #10, !srcloc !9
  %12 = getelementptr inbounds %struct.udc_ep, ptr %1, i32 0, i32 13
  store i32 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.udc_regs, ptr %0, i32 0, i32 6
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !135
  %15 = getelementptr inbounds %struct.udc_ep, ptr %1, i32 0, i32 18
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 31
  %18 = shl nuw i32 1, %17
  %19 = or i32 %18, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !136
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %19) #10, !srcloc !9
  %20 = load i32, ptr %15, align 4
  %21 = and i32 %20, 524288
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %2
  %24 = load ptr, ptr %7, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !137
  %26 = and i32 %25, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !138
  tail call void @arm_heavy_mb() #10
  %27 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %26) #10, !srcloc !9
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr inbounds %struct.udc_ep_regs, ptr %28, i32 0, i32 1
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !139
  %31 = or i32 %30, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !140
  tail call void @arm_heavy_mb() #10
  %32 = load ptr, ptr %7, align 4
  %33 = getelementptr inbounds %struct.udc_ep_regs, ptr %32, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #10, !srcloc !9
  %34 = load ptr, ptr %7, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !141
  %36 = or i32 %35, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !142
  tail call void @arm_heavy_mb() #10
  %37 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %36) #10, !srcloc !9
  br label %38

38:                                               ; preds = %23, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr inbounds %struct.udc_ep_regs, ptr %39, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #10, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @udc_soft_reset(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !144
  tail call void @arm_heavy_mb() #10
  %2 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.udc_regs, ptr %3, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 -1) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !145
  tail call void @arm_heavy_mb() #10
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.udc_regs, ptr %5, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 127) #10, !srcloc !9
  %7 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 6
  %8 = load i16, ptr %7, align 8
  %9 = icmp eq i16 %8, 10
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @udc_irq_spinlock) #10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !146
  tail call void @arm_heavy_mb() #10
  %12 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 -2147483648) #10, !srcloc !9
  %13 = load ptr, ptr %2, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !147
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @udc_irq_spinlock, i32 noundef %11) #10
  br label %15

15:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @udc_setup_endpoints(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.udc_regs, ptr %3, i32 0, i32 2
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !148
  %6 = lshr i32 %5, 13
  %7 = and i32 %6, 3
  switch i32 %7, label %12 [
    i32 0, label %9
    i32 1, label %8
  ]

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %8, %1
  %10 = phi i32 [ 2, %8 ], [ 3, %1 ]
  %11 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  store i32 %10, ptr %11, align 4
  br label %12

12:                                               ; preds = %9, %1
  %13 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 12
  %14 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 10
  br label %15

15:                                               ; preds = %60, %12
  %16 = phi i32 [ 0, %12 ], [ %61, %60 ]
  %17 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %16
  %18 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %16, i32 14
  store ptr %0, ptr %18, align 4
  %19 = getelementptr [32 x %struct.anon.65], ptr @ep_info, i32 0, i32 %16
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.usb_ep, ptr %17, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.usb_ep, ptr %17, i32 0, i32 4
  %23 = getelementptr [32 x %struct.anon.65], ptr @ep_info, i32 0, i32 %16, i32 1
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr %22, align 4
  %25 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %16, i32 18
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, -32
  %28 = or i32 %27, %16
  store i32 %28, ptr %25, align 4
  %29 = load ptr, ptr %13, align 8
  %30 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %16, i32 2
  store ptr %29, ptr %30, align 4
  %31 = icmp ult i32 %16, 16
  %32 = and i32 %28, -1048545
  %33 = select i1 %31, i32 573440, i32 32768
  %34 = or i32 %32, %33
  store i32 %34, ptr %25, align 4
  %35 = load ptr, ptr %14, align 8
  %36 = getelementptr %struct.udc_ep_regs, ptr %35, i32 %16
  %37 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %16, i32 1
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.usb_ep, ptr %17, i32 0, i32 9
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %15
  %42 = load ptr, ptr %2, align 4
  tail call fastcc void @ep_init(ptr noundef %42, ptr noundef %17)
  br label %43

43:                                               ; preds = %41, %15
  %44 = load i8, ptr @use_dma, align 1, !range !28
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %2, align 4
  %48 = getelementptr inbounds %struct.udc_regs, ptr %47, i32 0, i32 1
  %49 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %16, i32 3
  store ptr %48, ptr %49, align 4
  %50 = and i32 %16, 2147483631
  %51 = icmp ne i32 %50, 0
  %52 = icmp ugt i32 %16, 16
  %53 = and i1 %52, %51
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load ptr, ptr %37, align 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !149
  %57 = or i32 %56, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !150
  tail call void @arm_heavy_mb() #10
  %58 = load ptr, ptr %37, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %57) #10, !srcloc !9
  %59 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 %16, i32 13
  store i32 1, ptr %59, align 4
  br label %60

60:                                               ; preds = %54, %46, %43
  %61 = add nuw nsw i32 %16, 1
  %62 = icmp eq i32 %61, 32
  br i1 %62, label %63, label %15

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, -2
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 2
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %69, i32 noundef 64) #10
  %70 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 16
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %70, i32 noundef 64) #10
  br label %71

71:                                               ; preds = %68, %63
  %72 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 2
  %73 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 3
  store ptr %72, ptr %73, align 8
  %74 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 2, i32 0, i32 16
  store i32 0, ptr %74, align 4
  %75 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 2, i32 0, i32 0, i32 3
  store volatile ptr %75, ptr %75, align 4
  %76 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 2, i32 0, i32 0, i32 3, i32 1
  store ptr %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 18
  store i16 0, ptr %77, align 8
  %78 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 19
  store i16 0, ptr %78, align 2
  %79 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 20
  store i16 0, ptr %79, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_speed_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @activate_control_endpoints(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 2, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !151
  %5 = or i32 %4, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !152
  tail call void @arm_heavy_mb() #10
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #10, !srcloc !9
  %7 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 2, i32 0, i32 18
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, 524288
  store i32 %9, ptr %7, align 4
  %10 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 16, i32 18
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, -524289
  store i32 %12, ptr %10, align 4
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.udc_ep_regs, ptr %13, i32 0, i32 2
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !153
  %16 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  switch i32 %17, label %24 [
    i32 2, label %18
    i32 3, label %21
  ]

18:                                               ; preds = %1
  %19 = and i32 %15, -65536
  %20 = or i32 %19, 32
  br label %24

21:                                               ; preds = %1
  %22 = and i32 %15, -65536
  %23 = or i32 %22, 32
  br label %24

24:                                               ; preds = %21, %18, %1
  %25 = phi i32 [ %20, %18 ], [ %23, %21 ], [ %15, %1 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !154
  tail call void @arm_heavy_mb() #10
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr inbounds %struct.udc_ep_regs, ptr %26, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #10, !srcloc !9
  %28 = load ptr, ptr %2, align 4
  %29 = getelementptr inbounds %struct.udc_ep_regs, ptr %28, i32 0, i32 3
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !155
  %31 = load i32, ptr %16, align 4
  switch i32 %31, label %38 [
    i32 2, label %32
    i32 3, label %35
  ]

32:                                               ; preds = %24
  %33 = and i32 %30, -65536
  %34 = or i32 %33, 64
  br label %38

35:                                               ; preds = %24
  %36 = and i32 %30, -65536
  %37 = or i32 %36, 64
  br label %38

38:                                               ; preds = %35, %32, %24
  %39 = phi i32 [ %34, %32 ], [ %37, %35 ], [ %30, %24 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !156
  tail call void @arm_heavy_mb() #10
  %40 = load ptr, ptr %2, align 4
  %41 = getelementptr inbounds %struct.udc_ep_regs, ptr %40, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #10, !srcloc !9
  %42 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 16, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.udc_ep_regs, ptr %43, i32 0, i32 3
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !157
  %46 = load i32, ptr %16, align 4
  switch i32 %46, label %53 [
    i32 2, label %47
    i32 3, label %50
  ]

47:                                               ; preds = %38
  %48 = and i32 %45, -65536
  %49 = or i32 %48, 64
  br label %53

50:                                               ; preds = %38
  %51 = and i32 %45, -65536
  %52 = or i32 %51, 64
  br label %53

53:                                               ; preds = %50, %47, %38
  %54 = phi i32 [ %49, %47 ], [ %52, %50 ], [ %45, %38 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !158
  tail call void @arm_heavy_mb() #10
  %55 = load ptr, ptr %42, align 4
  %56 = getelementptr inbounds %struct.udc_ep_regs, ptr %55, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #10, !srcloc !9
  %57 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 8
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.udc_csrs, ptr %58, i32 0, i32 1
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !159
  %61 = load i32, ptr %16, align 4
  switch i32 %61, label %68 [
    i32 2, label %62
    i32 3, label %65
  ]

62:                                               ; preds = %53
  %63 = and i32 %60, -1073217537
  %64 = or i32 %63, 33554432
  br label %68

65:                                               ; preds = %53
  %66 = and i32 %60, -1073217537
  %67 = or i32 %66, 33554432
  br label %68

68:                                               ; preds = %65, %62, %53
  %69 = phi i32 [ %64, %62 ], [ %67, %65 ], [ %60, %53 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !160
  tail call void @arm_heavy_mb() #10
  %70 = load ptr, ptr %57, align 8
  %71 = getelementptr inbounds %struct.udc_csrs, ptr %70, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #10, !srcloc !9
  %72 = load i8, ptr @use_dma, align 1, !range !28
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %117, label %74

74:                                               ; preds = %68
  %75 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 16, i32 7
  %76 = load ptr, ptr %75, align 4
  %77 = load i32, ptr %76, align 16
  %78 = or i32 %77, 134217728
  store i32 %78, ptr %76, align 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %79 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 16, i32 5
  %80 = load i32, ptr %79, align 4
  %81 = load ptr, ptr %42, align 4
  %82 = getelementptr inbounds %struct.udc_ep_regs, ptr %81, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !162
  tail call void @arm_heavy_mb() #10
  %83 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 16, i32 4
  %84 = load i32, ptr %83, align 4
  %85 = load ptr, ptr %42, align 4
  %86 = getelementptr inbounds %struct.udc_ep_regs, ptr %85, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #10, !srcloc !9
  %87 = load volatile ptr, ptr getelementptr inbounds (%struct.timer_list, ptr @udc_timer, i32 0, i32 0, i32 1), align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %74
  store i32 0, ptr @set_rde, align 4
  %90 = load volatile i32, ptr @jiffies, align 64
  %91 = add i32 %90, -1
  %92 = tail call i32 @mod_timer(ptr noundef nonnull @udc_timer, i32 noundef %91) #10
  br label %93

93:                                               ; preds = %89, %74
  %94 = load volatile ptr, ptr getelementptr inbounds (%struct.timer_list, ptr @udc_pollstall_timer, i32 0, i32 0, i32 1), align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = load volatile i32, ptr @jiffies, align 64
  %98 = add i32 %97, -1
  %99 = tail call i32 @mod_timer(ptr noundef nonnull @udc_pollstall_timer, i32 noundef %98) #10
  br label %100

100:                                              ; preds = %96, %93
  %101 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 9
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.udc_regs, ptr %102, i32 0, i32 1
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !163
  %105 = load i1, ptr @use_dma_bufferfill_mode, align 4
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = or i32 %104, 588
  br label %113

108:                                              ; preds = %100
  %109 = load i8, ptr @use_dma_ppb_du, align 1, !range !28
  %110 = icmp eq i8 %109, 0
  %111 = select i1 %110, i32 524, i32 540
  %112 = or i32 %111, %104
  br label %113

113:                                              ; preds = %108, %106
  %114 = phi i32 [ %107, %106 ], [ %112, %108 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %115 = load ptr, ptr %101, align 4
  %116 = getelementptr inbounds %struct.udc_regs, ptr %115, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %114) #10, !srcloc !9
  br label %117

117:                                              ; preds = %113, %68
  %118 = load ptr, ptr %2, align 4
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !165
  %120 = or i32 %119, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !166
  tail call void @arm_heavy_mb() #10
  %121 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %120) #10, !srcloc !9
  %122 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 2, i32 0, i32 13
  store i32 0, ptr %122, align 4
  %123 = load ptr, ptr %2, align 4
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !34
  %125 = and i32 %124, 64
  %126 = icmp eq i32 %125, 0
  %127 = load i32, ptr @cnak_pending, align 4
  br i1 %126, label %130, label %128

128:                                              ; preds = %117
  %129 = or i32 %127, 1
  store i32 %129, ptr @cnak_pending, align 4
  store i32 1, ptr %122, align 4
  br label %132

130:                                              ; preds = %117
  %131 = and i32 %127, -2
  store i32 %131, ptr @cnak_pending, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = load ptr, ptr %42, align 4
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !167
  %135 = or i32 %134, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !168
  tail call void @arm_heavy_mb() #10
  %136 = load ptr, ptr %42, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %135) #10, !srcloc !9
  %137 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 16, i32 13
  store i32 0, ptr %137, align 4
  %138 = load ptr, ptr %42, align 4
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !34
  %140 = and i32 %139, 64
  %141 = icmp eq i32 %140, 0
  %142 = load i32, ptr @cnak_pending, align 4
  br i1 %141, label %145, label %143

143:                                              ; preds = %132
  %144 = or i32 %142, 65536
  store i32 %144, ptr @cnak_pending, align 4
  store i32 1, ptr %137, align 4
  br label %147

145:                                              ; preds = %132
  %146 = and i32 %142, -65537
  store i32 %146, ptr @cnak_pending, align 4
  br label %147

147:                                              ; preds = %145, %143
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @udc_ep_enable(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %237, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ne ptr %6, @ep0_string
  %8 = icmp ne ptr %1, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %237

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 5
  br i1 %13, label %14, label %237

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 14
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.udc, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %237, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.usb_gadget, ptr %16, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %237, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.udc, ptr %16, i32 0, i32 1
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #10
  %27 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  store ptr %1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 16
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 18
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 31
  %32 = getelementptr %struct.udc, ptr %16, i32 0, i32 2, i32 %31, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !169
  %35 = and i32 %34, -49
  %36 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 4
  %40 = and i32 %39, 48
  %41 = or i32 %40, %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !170
  tail call void @arm_heavy_mb() #10
  %42 = load i32, ptr %29, align 4
  %43 = and i32 %42, 31
  %44 = getelementptr %struct.udc, ptr %16, i32 0, i32 2, i32 %43, i32 1
  %45 = load ptr, ptr %44, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %41) #10, !srcloc !9
  %46 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 4
  %47 = load i16, ptr %46, align 1
  %48 = and i16 %47, 2047
  %49 = zext i16 %48 to i32
  %50 = load i32, ptr %29, align 4
  %51 = and i32 %50, 31
  %52 = getelementptr %struct.udc, ptr %16, i32 0, i32 2, i32 %51, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.udc_ep_regs, ptr %53, i32 0, i32 3
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !171
  %56 = and i32 %55, -65536
  %57 = or i32 %56, %49
  %58 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 7
  %59 = load i56, ptr %58, align 2
  %60 = zext i16 %48 to i56
  %61 = and i56 %59, -65536
  %62 = or i56 %61, %60
  store i56 %62, ptr %58, align 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !172
  tail call void @arm_heavy_mb() #10
  %63 = load i32, ptr %29, align 4
  %64 = and i32 %63, 31
  %65 = getelementptr %struct.udc, ptr %16, i32 0, i32 2, i32 %64, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.udc_ep_regs, ptr %66, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %57) #10, !srcloc !9
  %68 = load i32, ptr %29, align 4
  %69 = and i32 %68, 524288
  %70 = icmp eq i32 %69, 0
  %71 = and i32 %68, 31
  br i1 %70, label %120, label %72

72:                                               ; preds = %24
  %73 = getelementptr %struct.udc, ptr %16, i32 0, i32 2, i32 %71, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.udc_ep_regs, ptr %74, i32 0, i32 2
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !173
  %77 = and i32 %76, -65536
  %78 = lshr i32 %49, 1
  %79 = or i32 %77, %78
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !174
  tail call void @arm_heavy_mb() #10
  %80 = load i32, ptr %29, align 4
  %81 = and i32 %80, 31
  %82 = getelementptr %struct.udc, ptr %16, i32 0, i32 2, i32 %81, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.udc_ep_regs, ptr %83, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %79) #10, !srcloc !9
  %85 = load i32, ptr %29, align 4
  %86 = and i32 %85, 524288
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %113, label %88

88:                                               ; preds = %72
  %89 = load ptr, ptr %15, align 4
  %90 = getelementptr inbounds %struct.udc, ptr %89, i32 0, i32 12
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 2
  store ptr %91, ptr %92, align 4
  %93 = and i32 %85, 31
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %113, label %95

95:                                               ; preds = %108, %88
  %96 = phi i32 [ %109, %108 ], [ %85, %88 ]
  %97 = phi i32 [ %110, %108 ], [ 0, %88 ]
  %98 = getelementptr %struct.udc, ptr %89, i32 0, i32 2, i32 %97, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %108, label %101

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.udc_ep_regs, ptr %99, i32 0, i32 2
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !175
  %104 = and i32 %103, 65535
  %105 = load ptr, ptr %92, align 4
  %106 = getelementptr i32, ptr %105, i32 %104
  store ptr %106, ptr %92, align 4
  %107 = load i32, ptr %29, align 4
  br label %108

108:                                              ; preds = %101, %95
  %109 = phi i32 [ %96, %95 ], [ %107, %101 ]
  %110 = add nuw nsw i32 %97, 1
  %111 = and i32 %109, 31
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %95, label %113

113:                                              ; preds = %108, %88, %72
  %114 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !176
  %117 = or i32 %116, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !177
  tail call void @arm_heavy_mb() #10
  %118 = load ptr, ptr %114, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %117) #10, !srcloc !9
  %119 = shl nuw nsw i32 %49, 19
  br label %152

120:                                              ; preds = %24
  %121 = add nsw i32 %71, -12
  %122 = getelementptr inbounds %struct.udc, ptr %16, i32 0, i32 8
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr %struct.udc_csrs, ptr %123, i32 0, i32 1, i32 %121
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !178
  %126 = and i32 %125, -1073217537
  %127 = shl nuw nsw i32 %49, 19
  %128 = or i32 %126, %127
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !179
  tail call void @arm_heavy_mb() #10
  %129 = load ptr, ptr %122, align 8
  %130 = load i32, ptr %29, align 4
  %131 = and i32 %130, 31
  %132 = add nsw i32 %131, -12
  %133 = getelementptr %struct.udc_csrs, ptr %129, i32 0, i32 1, i32 %132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %128) #10, !srcloc !9
  %134 = load i8, ptr @use_dma, align 1, !range !28
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %120
  %137 = load i32, ptr %29, align 4
  %138 = and i32 %137, 524288
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = tail call fastcc ptr @udc_alloc_bna_dummy(ptr noundef nonnull %0)
  %142 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 11
  store ptr %141, ptr %142, align 4
  %143 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 12
  store i32 0, ptr %143, align 4
  br label %144

144:                                              ; preds = %140, %136, %120
  %145 = load i32, ptr %29, align 4
  %146 = and i32 %145, 31
  %147 = icmp eq i32 %146, 16
  br i1 %147, label %152, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.udc, ptr %16, i32 0, i32 4
  %150 = load i8, ptr %149, align 8
  %151 = or i8 %150, 8
  store i8 %151, ptr %149, align 8
  br label %152

152:                                              ; preds = %148, %144, %113
  %153 = phi i32 [ %127, %144 ], [ %127, %148 ], [ %119, %113 ]
  %154 = phi i32 [ %121, %144 ], [ %121, %148 ], [ %71, %113 ]
  %155 = getelementptr inbounds %struct.udc, ptr %16, i32 0, i32 8
  %156 = load ptr, ptr %155, align 8
  %157 = and i32 %154, 255
  %158 = getelementptr %struct.udc_csrs, ptr %156, i32 0, i32 1, i32 %157
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %158) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !180
  %160 = and i32 %159, -1073741824
  %161 = or i32 %160, %153
  %162 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %163 = load i8, ptr %162, align 1
  %164 = and i8 %163, 15
  %165 = zext i8 %164 to i32
  %166 = or i32 %161, %165
  %167 = load i32, ptr %29, align 4
  %168 = lshr i32 %167, 15
  %169 = and i32 %168, 16
  %170 = or i32 %166, %169
  %171 = load i8, ptr %36, align 1
  %172 = zext i8 %171 to i32
  %173 = shl nuw nsw i32 %172, 5
  %174 = and i32 %173, 96
  %175 = or i32 %174, %170
  %176 = load ptr, ptr %15, align 4
  %177 = getelementptr inbounds %struct.udc, ptr %176, i32 0, i32 18
  %178 = load i16, ptr %177, align 8
  %179 = zext i16 %178 to i32
  %180 = shl nuw nsw i32 %179, 7
  %181 = and i32 %180, 1920
  %182 = getelementptr inbounds %struct.udc, ptr %176, i32 0, i32 19
  %183 = load i16, ptr %182, align 2
  %184 = zext i16 %183 to i32
  %185 = shl nuw nsw i32 %184, 11
  %186 = and i32 %185, 30720
  %187 = or i32 %181, %175
  %188 = or i32 %187, %186
  %189 = getelementptr inbounds %struct.udc, ptr %176, i32 0, i32 20
  %190 = load i16, ptr %189, align 4
  %191 = zext i16 %190 to i32
  %192 = shl nuw nsw i32 %191, 15
  %193 = and i32 %192, 491520
  %194 = or i32 %188, %193
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %195 = load ptr, ptr %155, align 8
  %196 = getelementptr %struct.udc_csrs, ptr %195, i32 0, i32 1, i32 %157
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %196, i32 %194) #10, !srcloc !9
  %197 = getelementptr inbounds %struct.udc, ptr %16, i32 0, i32 9
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr inbounds %struct.udc_regs, ptr %198, i32 0, i32 6
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %199) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !182
  %201 = load i32, ptr %29, align 4
  %202 = and i32 %201, 31
  %203 = shl nuw i32 1, %202
  %204 = xor i32 %203, -1
  %205 = and i32 %200, %204
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !183
  tail call void @arm_heavy_mb() #10
  %206 = load ptr, ptr %197, align 4
  %207 = getelementptr inbounds %struct.udc_regs, ptr %206, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %207, i32 %205) #10, !srcloc !9
  %208 = load i8, ptr @use_dma, align 1, !range !28
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %214, label %210

210:                                              ; preds = %152
  %211 = load i32, ptr %29, align 4
  %212 = and i32 %211, 524288
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %236, label %214

214:                                              ; preds = %210, %152
  %215 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 1
  %216 = load ptr, ptr %215, align 4
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %216) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !184
  %218 = or i32 %217, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %219 = load ptr, ptr %215, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %219, i32 %218) #10, !srcloc !9
  %220 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 13
  store i32 0, ptr %220, align 4
  %221 = load i32, ptr %29, align 4
  %222 = and i32 %221, 31
  %223 = load ptr, ptr %215, align 4
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %223) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !34
  %225 = and i32 %224, 64
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %231, label %227

227:                                              ; preds = %214
  %228 = shl nuw i32 1, %222
  %229 = load i32, ptr @cnak_pending, align 4
  %230 = or i32 %229, %228
  store i32 %230, ptr @cnak_pending, align 4
  store i32 1, ptr %220, align 4
  br label %236

231:                                              ; preds = %214
  %232 = load i32, ptr @cnak_pending, align 4
  %233 = shl nuw i32 1, %222
  %234 = xor i32 %233, -1
  %235 = and i32 %232, %234
  store i32 %235, ptr @cnak_pending, align 4
  br label %236

236:                                              ; preds = %231, %227, %210
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %26) #10
  br label %237

237:                                              ; preds = %236, %20, %14, %10, %4, %2
  %238 = phi i32 [ 0, %236 ], [ -22, %10 ], [ -22, %4 ], [ -22, %2 ], [ -108, %20 ], [ -108, %14 ]
  ret i32 %238
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @udc_ep_disable(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @ep0_string
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 14
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.udc, ptr %13, i32 0, i32 1
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #10
  %16 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  tail call void @udc_free_request(ptr noundef nonnull %0, ptr noundef %17)
  tail call void @empty_req_queue(ptr noundef nonnull %0)
  %18 = load ptr, ptr %12, align 4
  %19 = getelementptr inbounds %struct.udc, ptr %18, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  tail call fastcc void @ep_init(ptr noundef %20, ptr noundef nonnull %0)
  %21 = load ptr, ptr %12, align 4
  %22 = getelementptr inbounds %struct.udc, ptr %21, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %15) #10
  br label %23

23:                                               ; preds = %11, %7, %3, %1
  %24 = phi i32 [ 0, %11 ], [ -22, %1 ], [ -22, %7 ], [ -22, %3 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @udc_alloc_request(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %41, label %4

4:                                                ; preds = %2
  %5 = and i32 %1, 17
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7, !prof !186

7:                                                ; preds = %4
  %8 = and i32 %1, 1
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 1, i32 2
  br label %11

11:                                               ; preds = %7, %4
  %12 = phi i32 [ 0, %4 ], [ %10, %7 ]
  %13 = or i32 %1, 256
  %14 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %12, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef %13, i32 noundef 84) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.usb_request, ptr %16, i32 0, i32 2
  store i32 -1, ptr %19, align 8
  %20 = getelementptr inbounds %struct.udc_request, ptr %16, i32 0, i32 5
  store volatile ptr %20, ptr %20, align 8
  %21 = getelementptr inbounds %struct.udc_request, ptr %16, i32 0, i32 5, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 14
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.udc, ptr %27, i32 0, i32 13
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.udc_request, ptr %16, i32 0, i32 2
  %31 = tail call ptr @dma_pool_alloc(ptr noundef %29, i32 noundef %1, ptr noundef %30) #10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  tail call void @kfree(ptr noundef nonnull %16) #10
  br label %41

34:                                               ; preds = %25
  %35 = load i32, ptr %31, align 16
  %36 = or i32 %35, -1073741824
  store i32 %36, ptr %31, align 16
  %37 = getelementptr inbounds %struct.udc_data_dma, ptr %31, i32 0, i32 2
  store i32 -1, ptr %37, align 8
  %38 = getelementptr inbounds %struct.udc_request, ptr %16, i32 0, i32 3
  store ptr %31, ptr %38, align 8
  %39 = getelementptr inbounds %struct.udc_request, ptr %16, i32 0, i32 4
  store ptr null, ptr %39, align 4
  %40 = getelementptr inbounds %struct.udc_request, ptr %16, i32 0, i32 6
  store i32 1, ptr %40, align 8
  br label %41

41:                                               ; preds = %34, %33, %18, %11, %2
  %42 = phi ptr [ null, %33 ], [ null, %2 ], [ null, %11 ], [ %16, %34 ], [ %16, %18 ]
  ret ptr %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @udc_free_request(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %47

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.udc_request, ptr %1, i32 0, i32 5
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %11, label %10, !prof !186

10:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/udc/snps_udc_core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 592, 0\0A.popsection", ""() #10, !srcloc !187
  unreachable

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.udc_request, ptr %1, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %46, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.udc_request, ptr %1, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 14
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.udc_data_dma, ptr %13, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.udc, ptr %21, i32 0, i32 13
  br label %25

25:                                               ; preds = %25, %19
  %26 = phi i32 [ %23, %19 ], [ %31, %25 ]
  %27 = phi i32 [ 1, %19 ], [ %33, %25 ]
  %28 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %26, i32 -2130706432, i32 8454144) #12, !srcloc !60
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr inbounds %struct.udc_data_dma, ptr %29, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %24, align 4
  tail call void @dma_pool_free(ptr noundef %32, ptr noundef %29, i32 noundef %26) #10
  %33 = add nuw i32 %27, 1
  %34 = load i32, ptr %16, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %25, label %36

36:                                               ; preds = %25
  %37 = load ptr, ptr %12, align 4
  br label %38

38:                                               ; preds = %36, %15
  %39 = phi ptr [ %37, %36 ], [ %13, %15 ]
  %40 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 14
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.udc, ptr %41, i32 0, i32 13
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.udc_request, ptr %1, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  tail call void @dma_pool_free(ptr noundef %43, ptr noundef %39, i32 noundef %45) #10
  br label %46

46:                                               ; preds = %38, %11
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %47

47:                                               ; preds = %46, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @udc_queue(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %242

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %242, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %1, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %242, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.udc_request, ptr %1, i32 0, i32 5
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %18, label %242

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 18
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 31
  switch i32 %25, label %242 [
    i32 0, label %26
    i32 16, label %26
  ]

26:                                               ; preds = %22, %22, %18
  %27 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 14
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.udc, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %242, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.usb_gadget, ptr %28, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %242, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr @udc, align 4
  %42 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 18
  %43 = load i32, ptr %42, align 4
  %44 = lshr i32 %43, 19
  %45 = and i32 %44, 1
  %46 = tail call i32 @usb_gadget_map_request(ptr noundef %41, ptr noundef nonnull %1, i32 noundef %45) #10
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %242

48:                                               ; preds = %40, %36
  %49 = getelementptr inbounds %struct.udc, ptr %28, i32 0, i32 1
  %50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %49) #10
  %51 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  store i32 0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  store i32 -115, ptr %52, align 4
  %53 = getelementptr inbounds %struct.udc_request, ptr %1, i32 0, i32 1
  %54 = load i8, ptr %53, align 4
  %55 = and i8 %54, -3
  store i8 %55, ptr %53, align 4
  %56 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 15
  %57 = load volatile ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %56
  br i1 %58, label %59, label %196

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %101

63:                                               ; preds = %59
  tail call fastcc void @complete_req(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0)
  %64 = getelementptr inbounds %struct.udc, ptr %28, i32 0, i32 4
  %65 = load i8, ptr %64, align 8
  %66 = and i8 %65, 4
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.udc, ptr %28, i32 0, i32 9
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.udc_regs, ptr %70, i32 0, i32 1
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !188
  %73 = or i32 %72, 8192
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !189
  tail call void @arm_heavy_mb() #10
  %74 = load ptr, ptr %69, align 4
  %75 = getelementptr inbounds %struct.udc_regs, ptr %74, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #10, !srcloc !9
  %76 = load i8, ptr %64, align 8
  %77 = and i8 %76, -5
  store i8 %77, ptr %64, align 8
  br label %78

78:                                               ; preds = %68, %63
  %79 = phi i8 [ %77, %68 ], [ %65, %63 ]
  %80 = and i8 %79, 2
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %240, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.udc, ptr %28, i32 0, i32 2, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !190
  %86 = or i32 %85, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  %87 = load ptr, ptr %83, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %86) #10, !srcloc !9
  %88 = getelementptr inbounds %struct.udc, ptr %28, i32 0, i32 2, i32 0, i32 13
  store i32 0, ptr %88, align 4
  %89 = load ptr, ptr %83, align 4
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !34
  %91 = and i32 %90, 64
  %92 = icmp eq i32 %91, 0
  %93 = load i32, ptr @cnak_pending, align 4
  br i1 %92, label %96, label %94

94:                                               ; preds = %82
  %95 = or i32 %93, 1
  store i32 %95, ptr @cnak_pending, align 4
  store i32 1, ptr %88, align 4
  br label %98

96:                                               ; preds = %82
  %97 = and i32 %93, -2
  store i32 %97, ptr @cnak_pending, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = load i8, ptr %64, align 8
  %100 = and i8 %99, -3
  store i8 %100, ptr %64, align 8
  br label %240

101:                                              ; preds = %59
  %102 = load ptr, ptr %37, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %179, label %104

104:                                              ; preds = %101
  %105 = tail call fastcc i32 @prep_dma(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %240

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 18
  %109 = load i32, ptr %108, align 4
  %110 = and i32 %109, 524288
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.udc_request, ptr %1, i32 0, i32 3
  %114 = load ptr, ptr %113, align 4
  %115 = load i32, ptr %114, align 16
  %116 = and i32 %115, 1073741823
  store i32 %116, ptr %114, align 16
  %117 = load i32, ptr %108, align 4
  br label %118

118:                                              ; preds = %112, %107
  %119 = phi i32 [ %117, %112 ], [ %109, %107 ]
  %120 = and i32 %119, 524288
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %147

122:                                              ; preds = %118
  %123 = load volatile ptr, ptr getelementptr inbounds (%struct.timer_list, ptr @udc_timer, i32 0, i32 0, i32 1), align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %129, label %125

125:                                              ; preds = %122
  store i32 0, ptr @set_rde, align 4
  %126 = load volatile i32, ptr @jiffies, align 64
  %127 = add i32 %126, -1
  %128 = tail call i32 @mod_timer(ptr noundef nonnull @udc_timer, i32 noundef %127) #10
  br label %129

129:                                              ; preds = %125, %122
  %130 = getelementptr inbounds %struct.udc, ptr %28, i32 0, i32 9
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.udc_regs, ptr %131, i32 0, i32 1
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !192
  %134 = and i32 %133, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !193
  tail call void @arm_heavy_mb() #10
  %135 = load ptr, ptr %130, align 4
  %136 = getelementptr inbounds %struct.udc_regs, ptr %135, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %134) #10, !srcloc !9
  %137 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 12
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %129
  %141 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 11
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.udc_request, ptr %142, i32 0, i32 3
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.udc_request, ptr %1, i32 0, i32 3
  %146 = load ptr, ptr %145, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 16 dereferenceable(16) %144, ptr noundef align 16 dereferenceable(16) %146, i32 16, i1 false)
  br label %147

147:                                              ; preds = %140, %129, %118
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %148 = getelementptr inbounds %struct.udc_request, ptr %1, i32 0, i32 2
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.udc_ep_regs, ptr %151, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %149) #10, !srcloc !9
  %153 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 13
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %147
  %157 = load ptr, ptr %150, align 4
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !195
  %159 = or i32 %158, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %160 = load ptr, ptr %150, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %159) #10, !srcloc !9
  store i32 0, ptr %153, align 4
  %161 = load i32, ptr %108, align 4
  %162 = and i32 %161, 31
  tail call fastcc void @UDC_QUEUE_CNAK(ptr noundef nonnull %0, i32 noundef %162)
  br label %163

163:                                              ; preds = %156, %147
  %164 = load i32, ptr %108, align 4
  %165 = and i32 %164, 524288
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %211, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.udc, ptr %28, i32 0, i32 9
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr inbounds %struct.udc_regs, ptr %169, i32 0, i32 6
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !197
  %172 = load i32, ptr %108, align 4
  %173 = and i32 %172, 31
  %174 = shl nuw i32 1, %173
  %175 = xor i32 %174, -1
  %176 = and i32 %171, %175
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !198
  tail call void @arm_heavy_mb() #10
  %177 = load ptr, ptr %168, align 4
  %178 = getelementptr inbounds %struct.udc_regs, ptr %177, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %178, i32 %176) #10, !srcloc !9
  br label %211

179:                                              ; preds = %101
  %180 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 18
  %181 = load i32, ptr %180, align 4
  %182 = and i32 %181, 524288
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %207, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.udc, ptr %28, i32 0, i32 9
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr inbounds %struct.udc_regs, ptr %186, i32 0, i32 6
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %187) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !199
  %189 = load i32, ptr %180, align 4
  %190 = and i32 %189, 31
  %191 = shl nuw i32 1, %190
  %192 = xor i32 %191, -1
  %193 = and i32 %188, %192
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !200
  tail call void @arm_heavy_mb() #10
  %194 = load ptr, ptr %185, align 4
  %195 = getelementptr inbounds %struct.udc_regs, ptr %194, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 %193) #10, !srcloc !9
  br label %207

196:                                              ; preds = %48
  %197 = load ptr, ptr %37, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %207, label %199

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 18
  %201 = load i32, ptr %200, align 4
  %202 = and i32 %201, 524288
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %199
  %205 = tail call fastcc i32 @prep_dma(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %240

207:                                              ; preds = %204, %199, %196, %184, %179
  %208 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 15, i32 1
  %209 = load ptr, ptr %208, align 4
  store ptr %15, ptr %208, align 4
  store ptr %56, ptr %15, align 4
  %210 = getelementptr inbounds %struct.udc_request, ptr %1, i32 0, i32 5, i32 1
  store ptr %209, ptr %210, align 4
  store volatile ptr %15, ptr %209, align 4
  br label %225

211:                                              ; preds = %167, %163
  %212 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 15, i32 1
  %213 = load ptr, ptr %212, align 4
  store ptr %15, ptr %212, align 4
  store ptr %56, ptr %15, align 4
  %214 = getelementptr inbounds %struct.udc_request, ptr %1, i32 0, i32 5, i32 1
  store ptr %213, ptr %214, align 4
  store volatile ptr %15, ptr %213, align 4
  br i1 %121, label %215, label %225

215:                                              ; preds = %211
  %216 = load i8, ptr %53, align 4
  %217 = or i8 %216, 1
  store i8 %217, ptr %53, align 4
  tail call fastcc void @udc_set_rde(ptr noundef %28)
  %218 = load i32, ptr %108, align 4
  %219 = and i32 %218, 31
  %220 = icmp eq i32 %219, 16
  br i1 %220, label %225, label %221

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.udc, ptr %28, i32 0, i32 4
  %223 = load i8, ptr %222, align 8
  %224 = or i8 %223, 16
  store i8 %224, ptr %222, align 8
  br label %225

225:                                              ; preds = %221, %215, %211, %207
  %226 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 18
  %227 = load i32, ptr %226, align 4
  %228 = and i32 %227, 524288
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %240

230:                                              ; preds = %225
  %231 = load i8, ptr @use_dma, align 1, !range !28
  %232 = icmp eq i8 %231, 0
  %233 = load i1, ptr @udc_rxfifo_pending, align 4
  %234 = select i1 %232, i1 %233, i1 false
  br i1 %234, label %235, label %240

235:                                              ; preds = %230
  %236 = tail call fastcc i32 @udc_rxfifo_read(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %235
  tail call fastcc void @complete_req(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0)
  br label %239

239:                                              ; preds = %238, %235
  store i1 false, ptr @udc_rxfifo_pending, align 4
  br label %240

240:                                              ; preds = %239, %230, %225, %204, %104, %98, %78
  %241 = phi i32 [ 0, %98 ], [ 0, %78 ], [ %105, %104 ], [ 0, %225 ], [ 0, %239 ], [ 0, %230 ], [ %205, %204 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %49, i32 noundef %50) #10
  br label %242

242:                                              ; preds = %240, %40, %32, %26, %22, %14, %11, %7, %3
  %243 = phi i32 [ %241, %240 ], [ -22, %14 ], [ -22, %11 ], [ -22, %7 ], [ -22, %3 ], [ -22, %22 ], [ -108, %32 ], [ -108, %26 ], [ %46, %40 ]
  ret i32 %243
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @udc_dequeue(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %113

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 18
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 31
  switch i32 %13, label %113 [
    i32 0, label %14
    i32 16, label %14
  ]

14:                                               ; preds = %10, %10, %6
  %15 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 14
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.udc, ptr %16, i32 0, i32 1
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #10
  %19 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 16
  %20 = load i32, ptr %19, align 4
  store i32 1, ptr %19, align 4
  %21 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.udc_request, ptr %1, i32 0, i32 5
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %25, label %88

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %88, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.udc_request, ptr %1, i32 0, i32 1
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %88, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 18
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 524288
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 17
  store i32 1, ptr %40, align 4
  br label %88

41:                                               ; preds = %34
  %42 = load ptr, ptr @udc, align 4
  %43 = getelementptr inbounds %struct.udc, ptr %42, i32 0, i32 9
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.udc_regs, ptr %44, i32 0, i32 1
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !201
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !202
  tail call void @arm_heavy_mb() #10
  %47 = and i32 %46, -5
  %48 = load ptr, ptr @udc, align 4
  %49 = getelementptr inbounds %struct.udc, ptr %48, i32 0, i32 9
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.udc_regs, ptr %50, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %47) #10, !srcloc !9
  %52 = getelementptr inbounds %struct.udc_request, ptr %1, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = load i32, ptr %53, align 16
  %55 = icmp ult i32 %54, 1073741824
  br i1 %55, label %58, label %56

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 17
  store i32 1, ptr %57, align 4
  br label %83

58:                                               ; preds = %41
  %59 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 8
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %75, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.udc_request, ptr %60, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = load i32, ptr %64, align 16
  %66 = or i32 %65, 134217728
  store i32 %66, ptr %64, align 16
  %67 = getelementptr inbounds %struct.udc_request, ptr %60, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = load ptr, ptr %63, align 4
  %70 = getelementptr inbounds %struct.udc_data_dma, ptr %69, i32 0, i32 3
  store i32 %68, ptr %70, align 4
  %71 = load ptr, ptr %63, align 4
  %72 = load i32, ptr %71, align 16
  %73 = and i32 %72, 1073741823
  %74 = or i32 %73, -2147483648
  store i32 %74, ptr %71, align 16
  br label %75

75:                                               ; preds = %62, %58
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !203
  tail call void @arm_heavy_mb() #10
  %76 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 11
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.udc_request, ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.udc_ep_regs, ptr %81, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %79) #10, !srcloc !9
  br label %83

83:                                               ; preds = %75, %56
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !204
  tail call void @arm_heavy_mb() #10
  %84 = load ptr, ptr @udc, align 4
  %85 = getelementptr inbounds %struct.udc, ptr %84, i32 0, i32 9
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.udc_regs, ptr %86, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %46) #10, !srcloc !9
  br label %88

88:                                               ; preds = %83, %39, %29, %25, %14
  %89 = load ptr, ptr %15, align 4
  %90 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 18
  %95 = load i32, ptr %94, align 4
  %96 = lshr i32 %95, 19
  %97 = and i32 %96, 1
  tail call void @usb_gadget_unmap_request(ptr noundef %89, ptr noundef nonnull %1, i32 noundef %97) #10
  br label %98

98:                                               ; preds = %93, %88
  store i32 1, ptr %19, align 4
  %99 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, -115
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 -104, ptr %99, align 4
  br label %103

103:                                              ; preds = %102, %98
  %104 = getelementptr inbounds %struct.udc_request, ptr %1, i32 0, i32 5, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = load ptr, ptr %23, align 4
  %107 = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  store ptr %105, ptr %107, align 4
  store volatile ptr %106, ptr %105, align 4
  store volatile ptr %23, ptr %23, align 4
  store ptr %23, ptr %104, align 4
  %108 = getelementptr inbounds %struct.udc, ptr %89, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %109 = load i16, ptr %108, align 4
  %110 = add i16 %109, 1
  store i16 %110, ptr %108, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  tail call void @usb_gadget_giveback_request(ptr noundef nonnull %0, ptr noundef nonnull %1) #10
  tail call void @_raw_spin_lock(ptr noundef %108) #10
  store i32 %20, ptr %19, align 4
  %111 = load ptr, ptr %15, align 4
  %112 = getelementptr inbounds %struct.udc, ptr %111, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %112, i32 noundef %18) #10
  br label %113

113:                                              ; preds = %103, %10, %2
  %114 = phi i32 [ 0, %103 ], [ -22, %10 ], [ -22, %2 ]
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @udc_alloc_bna_dummy(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %47, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2848, i32 noundef 84) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 2
  store i32 -1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.udc_request, ptr %5, i32 0, i32 5
  store volatile ptr %9, ptr %9, align 8
  %10 = getelementptr inbounds %struct.udc_request, ptr %5, i32 0, i32 5, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.udc_request, ptr %5, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  br label %33

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 14
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.udc, ptr %19, i32 0, i32 13
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.udc_request, ptr %5, i32 0, i32 2
  %23 = tail call ptr @dma_pool_alloc(ptr noundef %21, i32 noundef 2592, ptr noundef %22) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  tail call void @kfree(ptr noundef nonnull %5) #10
  br label %47

26:                                               ; preds = %17
  %27 = load i32, ptr %23, align 16
  %28 = or i32 %27, -1073741824
  store i32 %28, ptr %23, align 16
  %29 = getelementptr inbounds %struct.udc_data_dma, ptr %23, i32 0, i32 2
  store i32 -1, ptr %29, align 8
  %30 = getelementptr inbounds %struct.udc_request, ptr %5, i32 0, i32 3
  store ptr %23, ptr %30, align 8
  %31 = getelementptr inbounds %struct.udc_request, ptr %5, i32 0, i32 4
  store ptr null, ptr %31, align 4
  %32 = getelementptr inbounds %struct.udc_request, ptr %5, i32 0, i32 6
  store i32 1, ptr %32, align 8
  br label %33

33:                                               ; preds = %26, %14
  %34 = phi ptr [ %16, %14 ], [ %23, %26 ]
  %35 = getelementptr inbounds %struct.udc_ep, ptr %0, i32 0, i32 11
  store ptr %5, ptr %35, align 4
  %36 = getelementptr inbounds %struct.udc_request, ptr %5, i32 0, i32 3
  %37 = load i32, ptr %34, align 16
  %38 = or i32 %37, 134217728
  store i32 %38, ptr %34, align 16
  %39 = getelementptr inbounds %struct.udc_request, ptr %5, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = load ptr, ptr %36, align 8
  %42 = getelementptr inbounds %struct.udc_data_dma, ptr %41, i32 0, i32 3
  store i32 %40, ptr %42, align 4
  %43 = load ptr, ptr %36, align 8
  %44 = load i32, ptr %43, align 16
  %45 = and i32 %44, 1073741823
  %46 = or i32 %45, -2147483648
  store i32 %46, ptr %43, align 16
  br label %47

47:                                               ; preds = %33, %25, %3, %1
  %48 = phi ptr [ %5, %33 ], [ null, %25 ], [ null, %1 ], [ null, %3 ]
  ret ptr %48
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @udc_get_frame(ptr nocapture noundef readnone %0) #8 {
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @udc_wakeup(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.udc_regs, ptr %7, i32 0, i32 1
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !205
  %10 = or i32 %9, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !206
  tail call void @arm_heavy_mb() #10
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.udc_regs, ptr %11, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #10, !srcloc !9
  %13 = and i32 %9, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !207
  tail call void @arm_heavy_mb() #10
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.udc_regs, ptr %14, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #10, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #10
  br label %16

16:                                               ; preds = %3, %1
  %17 = phi i32 [ 0, %3 ], [ -22, %1 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @amd5536_udc_start(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_gadget_driver, ptr %1, i32 0, i32 9, i32 1
  store ptr null, ptr %3, align 4
  %4 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 3
  store ptr %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 16
  store ptr %6, ptr %7, align 4
  tail call fastcc void @activate_control_endpoints(ptr noundef %0) #10
  %8 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.udc_regs, ptr %9, i32 0, i32 6
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !87
  %12 = and i32 %11, -65538
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !88
  tail call void @arm_heavy_mb() #10
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr inbounds %struct.udc_regs, ptr %13, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #10, !srcloc !9
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.udc_regs, ptr %15, i32 0, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %18 = and i32 %17, -204
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr inbounds %struct.udc_regs, ptr %19, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #10, !srcloc !9
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr inbounds %struct.udc_regs, ptr %21, i32 0, i32 1
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !208
  %24 = and i32 %23, -1025
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !209
  tail call void @arm_heavy_mb() #10
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr inbounds %struct.udc_regs, ptr %25, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #10, !srcloc !9
  %27 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 21
  %32 = load ptr, ptr %31, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.47) #11
  store i32 1, ptr %27, align 4
  tail call void @udc_basic_init(ptr noundef %0) #10
  %33 = load ptr, ptr %8, align 4
  %34 = getelementptr inbounds %struct.udc_regs, ptr %33, i32 0, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %36 = and i32 %35, -204
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %37 = load ptr, ptr %8, align 4
  %38 = getelementptr inbounds %struct.udc_regs, ptr %37, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #10, !srcloc !9
  br label %39

39:                                               ; preds = %30, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @amd5536_udc_stop(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 1
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !8
  tail call void @arm_heavy_mb() #10
  %4 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.udc_regs, ptr %5, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 255) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.udc_regs, ptr %7, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 -1) #10, !srcloc !9
  tail call void @udc_basic_init(ptr noundef %0) #10
  %9 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 0
  tail call void @empty_req_queue(ptr noundef %9) #10
  %10 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 1
  tail call void @empty_req_queue(ptr noundef %10) #10
  %11 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 2
  tail call void @empty_req_queue(ptr noundef %11) #10
  %12 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 3
  tail call void @empty_req_queue(ptr noundef %12) #10
  %13 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 4
  tail call void @empty_req_queue(ptr noundef %13) #10
  %14 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 5
  tail call void @empty_req_queue(ptr noundef %14) #10
  %15 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 6
  tail call void @empty_req_queue(ptr noundef %15) #10
  %16 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 7
  tail call void @empty_req_queue(ptr noundef %16) #10
  %17 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 8
  tail call void @empty_req_queue(ptr noundef %17) #10
  %18 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 9
  tail call void @empty_req_queue(ptr noundef %18) #10
  %19 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 10
  tail call void @empty_req_queue(ptr noundef %19) #10
  %20 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 11
  tail call void @empty_req_queue(ptr noundef %20) #10
  %21 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 12
  tail call void @empty_req_queue(ptr noundef %21) #10
  %22 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 13
  tail call void @empty_req_queue(ptr noundef %22) #10
  %23 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 14
  tail call void @empty_req_queue(ptr noundef %23) #10
  %24 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 15
  tail call void @empty_req_queue(ptr noundef %24) #10
  %25 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 16
  tail call void @empty_req_queue(ptr noundef %25) #10
  %26 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 17
  tail call void @empty_req_queue(ptr noundef %26) #10
  %27 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 18
  tail call void @empty_req_queue(ptr noundef %27) #10
  %28 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 19
  tail call void @empty_req_queue(ptr noundef %28) #10
  %29 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 20
  tail call void @empty_req_queue(ptr noundef %29) #10
  %30 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 21
  tail call void @empty_req_queue(ptr noundef %30) #10
  %31 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 22
  tail call void @empty_req_queue(ptr noundef %31) #10
  %32 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 23
  tail call void @empty_req_queue(ptr noundef %32) #10
  %33 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 24
  tail call void @empty_req_queue(ptr noundef %33) #10
  %34 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 25
  tail call void @empty_req_queue(ptr noundef %34) #10
  %35 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 26
  tail call void @empty_req_queue(ptr noundef %35) #10
  %36 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 27
  tail call void @empty_req_queue(ptr noundef %36) #10
  %37 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 28
  tail call void @empty_req_queue(ptr noundef %37) #10
  %38 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 29
  tail call void @empty_req_queue(ptr noundef %38) #10
  %39 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 30
  tail call void @empty_req_queue(ptr noundef %39) #10
  %40 = getelementptr %struct.udc, ptr %0, i32 0, i32 2, i32 31
  tail call void @empty_req_queue(ptr noundef %40) #10
  tail call fastcc void @udc_setup_endpoints(ptr noundef %0) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #10
  %41 = getelementptr inbounds %struct.udc, ptr %0, i32 0, i32 3
  store ptr null, ptr %41, align 4
  %42 = load ptr, ptr %4, align 4
  %43 = getelementptr inbounds %struct.udc_regs, ptr %42, i32 0, i32 1
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !210
  %45 = or i32 %44, 1024
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !211
  tail call void @arm_heavy_mb() #10
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr inbounds %struct.udc_regs, ptr %46, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #10, !srcloc !9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }
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
!8 = !{i64 2153402523}
!9 = !{i64 3895056}
!10 = !{i64 2153402860}
!11 = !{i64 3895474}
!12 = !{i64 2153407010}
!13 = !{i64 2153407461}
!14 = !{i64 2149006064}
!15 = !{i64 2149001888}
!16 = !{i64 2149001963, i64 2149001990, i64 2149002037, i64 2149002059, i64 2149002087, i64 2149002107}
!17 = !{i64 2149029067}
!18 = !{i64 2153472871}
!19 = !{i64 2153473160}
!20 = !{i64 2153473615}
!21 = !{i64 2153473875}
!22 = !{i64 2153549715}
!23 = !{i64 2153521600}
!24 = !{i64 2153522105}
!25 = !{i64 2153522372}
!26 = !{i64 2153523063}
!27 = !{i64 2153523281}
!28 = !{i8 0, i8 2}
!29 = !{i64 2153523619}
!30 = !{i64 2153437143}
!31 = !{i64 2153523999}
!32 = !{i64 2153525128}
!33 = !{i64 2153525351}
!34 = !{i64 2153410066}
!35 = !{i64 2153525710}
!36 = !{i64 2153526203}
!37 = !{i64 2153526423}
!38 = !{i64 2153526769}
!39 = !{i64 2153527110}
!40 = !{i64 2153527838}
!41 = !{i64 2153528371}
!42 = !{i64 2153528950}
!43 = !{i64 2153529278}
!44 = !{i64 2153529527}
!45 = !{i64 2153530026}
!46 = !{i64 2153530296}
!47 = !{i64 2153530694}
!48 = !{i64 2153531723}
!49 = !{i64 2153531930}
!50 = !{i64 2153533606}
!51 = !{i64 2153534446}
!52 = !{i64 2153534664}
!53 = !{i64 2153535023}
!54 = !{i64 2153549965}
!55 = !{i64 2153512596}
!56 = !{i64 2153513691}
!57 = !{i64 2153513875}
!58 = !{i64 2153515080}
!59 = !{i64 2153515301}
!60 = !{i64 2148862920, i64 2148862943, i64 2148862975, i64 2148863007, i64 2148863045, i64 2148863075}
!61 = !{i64 2153517200}
!62 = !{i64 2153517418}
!63 = !{i64 2153519225}
!64 = !{i64 2153520030}
!65 = !{i64 2153520237}
!66 = !{i64 2153520709}
!67 = !{i64 2153520927}
!68 = !{i64 2153521244}
!69 = !{i64 2153550444}
!70 = !{i64 2153554691}
!71 = !{i64 2153535523}
!72 = !{i64 2153536842}
!73 = !{i64 2153537350}
!74 = !{i64 2153537814}
!75 = !{i64 2153538049}
!76 = !{i64 2153538528}
!77 = !{i64 2153540217}
!78 = !{i64 2153541041}
!79 = !{i64 2153541505}
!80 = !{i64 2153541740}
!81 = !{i64 2153542836}
!82 = !{i64 2153543790}
!83 = !{i64 2153544013}
!84 = !{i64 2153544349}
!85 = !{i64 2153544813}
!86 = !{i64 2153545052}
!87 = !{i64 2153405489}
!88 = !{i64 2153405787}
!89 = !{i64 2153547946}
!90 = !{i64 2153548310}
!91 = !{i64 2153548521}
!92 = !{i64 2153479648}
!93 = !{i64 2153480118}
!94 = !{i64 2153501983}
!95 = !{i64 2153503840}
!96 = !{i64 2153504776}
!97 = !{i64 2153511051}
!98 = !{i64 2153511406}
!99 = !{i64 2153444543}
!100 = !{i64 2153444751}
!101 = !{i64 2153511928}
!102 = !{i64 2153512143}
!103 = !{!"auto-init"}
!104 = !{i64 2153475533}
!105 = !{i64 2153476290}
!106 = !{i64 2153565708}
!107 = !{i64 2153565918}
!108 = !{i64 2153482856}
!109 = !{i64 2153483064}
!110 = !{i64 2153483519}
!111 = !{i64 527462}
!112 = !{i64 2149030208}
!113 = !{i64 2153483904}
!114 = !{i64 2153484136}
!115 = !{i64 2153467079}
!116 = !{i64 2153467286}
!117 = !{i64 2153468352}
!118 = !{i64 2153468612}
!119 = !{i64 2153499896}
!120 = !{i64 2153500112}
!121 = !{i64 2153501248}
!122 = !{i64 2153501468}
!123 = !{i64 621357}
!124 = !{i64 2153436427}
!125 = !{i64 3894859}
!126 = !{i64 2153436083}
!127 = !{i64 2153436685}
!128 = !{i64 2153438129}
!129 = !{i64 2153437477}
!130 = !{i64 2153437795}
!131 = !{i64 2153443314}
!132 = !{i64 2153443521}
!133 = !{i64 2153423066}
!134 = !{i64 2153423273}
!135 = !{i64 2153423730}
!136 = !{i64 2153423943}
!137 = !{i64 2153424396}
!138 = !{i64 2153424631}
!139 = !{i64 2153425082}
!140 = !{i64 2153425289}
!141 = !{i64 2153425740}
!142 = !{i64 2153425947}
!143 = !{i64 2153426256}
!144 = !{i64 2153481002}
!145 = !{i64 2153481341}
!146 = !{i64 2153482059}
!147 = !{i64 2153482528}
!148 = !{i64 2153477372}
!149 = !{i64 2153477958}
!150 = !{i64 2153478174}
!151 = !{i64 2153485301}
!152 = !{i64 2153485519}
!153 = !{i64 2153486046}
!154 = !{i64 2153486896}
!155 = !{i64 2153487426}
!156 = !{i64 2153488287}
!157 = !{i64 2153488820}
!158 = !{i64 2153489683}
!159 = !{i64 2153490160}
!160 = !{i64 2153490992}
!161 = !{i64 2153491372}
!162 = !{i64 2153491772}
!163 = !{i64 2153492275}
!164 = !{i64 2153492583}
!165 = !{i64 2153493064}
!166 = !{i64 2153493282}
!167 = !{i64 2153493781}
!168 = !{i64 2153494001}
!169 = !{i64 2153413327}
!170 = !{i64 2153413822}
!171 = !{i64 2153414355}
!172 = !{i64 2153414893}
!173 = !{i64 2153415439}
!174 = !{i64 2153415984}
!175 = !{i64 2153409550}
!176 = !{i64 2153416459}
!177 = !{i64 2153416666}
!178 = !{i64 2153417165}
!179 = !{i64 2153417692}
!180 = !{i64 2153418199}
!181 = !{i64 2153420598}
!182 = !{i64 2153421083}
!183 = !{i64 2153421335}
!184 = !{i64 2153421793}
!185 = !{i64 2153422000}
!186 = !{!"branch_weights", i32 2000, i32 1}
!187 = !{i64 2153433438, i64 2153433941, i64 2153433475, i64 2153433531, i64 2153433565, i64 2153433589, i64 2153433630, i64 2153433651, i64 2153433679, i64 2153433713}
!188 = !{i64 2153447939}
!189 = !{i64 2153448149}
!190 = !{i64 2153448630}
!191 = !{i64 2153448848}
!192 = !{i64 2153449816}
!193 = !{i64 2153450052}
!194 = !{i64 2153450389}
!195 = !{i64 2153450861}
!196 = !{i64 2153451068}
!197 = !{i64 2153451540}
!198 = !{i64 2153451792}
!199 = !{i64 2153452271}
!200 = !{i64 2153452523}
!201 = !{i64 2153463346}
!202 = !{i64 2153463599}
!203 = !{i64 2153464179}
!204 = !{i64 2153464537}
!205 = !{i64 2153470090}
!206 = !{i64 2153470298}
!207 = !{i64 2153470661}
!208 = !{i64 2153495650}
!209 = !{i64 2153495889}
!210 = !{i64 2153497882}
!211 = !{i64 2153498092}
