; ModuleID = '/llk/IR/drivers/usb/host/ohci-hcd.c_pt.bc'
source_filename = "../drivers/usb/host/ohci-hcd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ohci_hub_status_data:\09\09\09\09\09"
module asm "\09.asciz \09\22ohci_hub_status_data\22\09\09\09\09\09"
module asm "__kstrtabns_ohci_hub_status_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ohci_hub_control:\09\09\09\09\09"
module asm "\09.asciz \09\22ohci_hub_control\22\09\09\09\09\09"
module asm "__kstrtabns_ohci_hub_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ohci_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22ohci_setup\22\09\09\09\09\09"
module asm "__kstrtabns_ohci_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ohci_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22ohci_restart\22\09\09\09\09\09"
module asm "__kstrtabns_ohci_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ohci_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22ohci_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_ohci_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ohci_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22ohci_resume\22\09\09\09\09\09"
module asm "__kstrtabns_ohci_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ohci_init_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22ohci_init_driver\22\09\09\09\09\09"
module asm "__kstrtabns_ohci_init_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.65, i32 }
%union.anon.65 = type { ptr }
%struct.ohci_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ohci_roothub_regs, [16 x i8] }
%struct.ohci_roothub_regs = type { i32, i32, i32, [15 x i32] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.72 }>
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { [4 x i8], [4 x i8] }
%struct.ohci_hcd = type { %struct.spinlock, ptr, ptr, i32, ptr, ptr, ptr, [32 x ptr], ptr, ptr, ptr, [64 x ptr], ptr, ptr, %struct.list_head, %struct.list_head, i32, i32, [32 x i32], i32, i32, i32, i8, i32, i32, i32, i32, i32, %struct.timer_list, %struct.work_struct, ptr, [4 x i8], [0 x i32] }
%struct.td = type { i32, i32, i32, i32, [2 x i16], i8, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, [8 x i8] }
%struct.ed = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8, i8, i8, i16, i16, i16, i16, i32, ptr, [12 x i8] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.urb_priv = type { ptr, i16, i16, %struct.list_head, [0 x ptr] }
%struct.ohci_hcca = type { [32 x i32], i32, i32, [116 x i8], [4 x i8] }
%struct.ohci_driver_overrides = type { ptr, i32, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.debug_buffer = type { ptr, ptr, %struct.mutex, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.69, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.67 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.68 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.69 = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"bogus NDP, rereads as NDP=%d\0A\00", align 1
@__kstrtab_ohci_hub_status_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_ohci_hub_status_data = external dso_local constant [0 x i8], align 1
@__ksymtab_ohci_hub_status_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ohci_hub_status_data to i32), ptr @__kstrtab_ohci_hub_status_data, ptr @__kstrtabns_ohci_hub_status_data }, section "___ksymtab_gpl+ohci_hub_status_data", align 4
@__kstrtab_ohci_hub_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_ohci_hub_control = external dso_local constant [0 x i8], align 1
@__ksymtab_ohci_hub_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ohci_hub_control to i32), ptr @__kstrtab_ohci_hub_control, ptr @__kstrtabns_ohci_hub_control }, section "___ksymtab_gpl+ohci_hub_control", align 4
@__param_str_distrust_firmware = internal constant [27 x i8] c"ohci_hcd.distrust_firmware\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@distrust_firmware = internal global i8 0, align 1
@__param_distrust_firmware = internal constant %struct.kernel_param { ptr @__param_str_distrust_firmware, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.64 { ptr @distrust_firmware } }, section "__param", align 4
@__UNIQUE_ID_distrust_firmwaretype262 = internal constant [41 x i8] c"ohci_hcd.parmtype=distrust_firmware:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_distrust_firmware263 = internal constant [82 x i8] c"ohci_hcd.parm=distrust_firmware:true to distrust firmware power/overcurrent setup\00", section ".modinfo", align 1
@__param_str_no_handshake = internal constant [22 x i8] c"ohci_hcd.no_handshake\00", align 1
@no_handshake = internal global i8 0, align 1
@__param_no_handshake = internal constant %struct.kernel_param { ptr @__param_str_no_handshake, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.64 { ptr @no_handshake } }, section "__param", align 4
@__UNIQUE_ID_no_handshaketype264 = internal constant [36 x i8] c"ohci_hcd.parmtype=no_handshake:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_no_handshake265 = internal constant [70 x i8] c"ohci_hcd.parm=no_handshake:true (not default) disables BIOS handshake\00", section ".modinfo", align 1
@__kstrtab_ohci_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_ohci_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_ohci_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ohci_setup to i32), ptr @__kstrtab_ohci_setup, ptr @__kstrtabns_ohci_setup }, section "___ksymtab_gpl+ohci_setup", align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"can't restart, %d\0A\00", align 1
@__kstrtab_ohci_restart = external dso_local constant [0 x i8], align 1
@__kstrtabns_ohci_restart = external dso_local constant [0 x i8], align 1
@__ksymtab_ohci_restart = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ohci_restart to i32), ptr @__kstrtab_ohci_restart, ptr @__kstrtabns_ohci_restart }, section "___ksymtab_gpl+ohci_restart", align 4
@__kstrtab_ohci_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_ohci_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_ohci_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ohci_suspend to i32), ptr @__kstrtab_ohci_suspend, ptr @__kstrtabns_ohci_suspend }, section "___ksymtab_gpl+ohci_suspend", align 4
@__kstrtab_ohci_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_ohci_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_ohci_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ohci_resume to i32), ptr @__kstrtab_ohci_resume, ptr @__kstrtabns_ohci_resume }, section "___ksymtab_gpl+ohci_resume", align 4
@ohci_hc_driver = internal unnamed_addr constant %struct.hc_driver { ptr @hcd_name, ptr @.str.113, i32 664, ptr @ohci_irq, i32 19, ptr @ohci_setup, ptr @ohci_start, ptr null, ptr null, ptr @ohci_stop, ptr @ohci_shutdown, ptr @ohci_get_frame, ptr @ohci_urb_enqueue, ptr @ohci_urb_dequeue, ptr null, ptr null, ptr @ohci_endpoint_disable, ptr null, ptr @ohci_hub_status_data, ptr @ohci_hub_control, ptr @ohci_bus_suspend, ptr @ohci_bus_resume, ptr @ohci_start_port_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_ohci_init_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_ohci_init_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_ohci_init_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ohci_init_driver to i32), ptr @__kstrtab_ohci_init_driver, ptr @__kstrtabns_ohci_init_driver }, section "___ksymtab_gpl+ohci_init_driver", align 4
@__UNIQUE_ID_author271 = internal constant [51 x i8] c"ohci_hcd.author=Roman Weissgaerber, David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_description272 = internal constant [66 x i8] c"ohci_hcd.description=USB 1.1 'Open' Host Controller (OHCI) Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file273 = internal constant [40 x i8] c"ohci_hcd.file=drivers/usb/host/ohci-hcd\00", section ".modinfo", align 1
@__UNIQUE_ID_license274 = internal constant [21 x i8] c"ohci_hcd.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_ohci_hcd__275_1346_ohci_hcd_mod_init6 = internal global ptr @ohci_hcd_mod_init, section ".initcall6.init", align 4
@ohci_debug_root = internal unnamed_addr global ptr null, align 4
@usb_hcds_loaded = external dso_local global i32, align 4
@__exitcall_ohci_hcd_mod_exit = internal global ptr @ohci_hcd_mod_exit, section ".exitcall.exit", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"HcDoneHead not written back; disabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"frame counter not updating; disabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"OHCI %d.%d, %s legacy support registers, rh state %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"control 0x%03x%s%s%s HCFS=%s%s%s%s%s CBSR=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" RWE\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [5 x i8] c" RWC\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" IR\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c" BLE\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" CLE\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c" IE\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c" PLE\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"cmdstatus 0x%05x SOC=%d%s%s%s%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c" OCR\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c" BLF\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c" CLF\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c" HCR\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"intrstatus\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"intrenable\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"ed_periodcurrent\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"ed_controlhead\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"ed_controlcurrent\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"ed_bulkhead\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"ed_bulkcurrent\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"donehead\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"halted\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"suspended\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"resume\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"operational\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"%s 0x%08x%s%s%s%s%s%s%s%s%s\0A\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c" MIE\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c" OC\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c" RHSC\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c" FNO\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c" UE\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c" RD\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c" SF\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c" WDH\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c" SO\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"%s %08x\0A\00", align 1
@.str.48 = private unnamed_addr constant [47 x i8] c"roothub.a %08x POTPGT=%d%s%s%s%s%s NDP=%d(%d)\0A\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c" NOCP\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c" OCPM\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c" DT\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c" NPS\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c" PSM\00", align 1
@.str.54 = private unnamed_addr constant [34 x i8] c"roothub.b %08x PPCM=%04x DR=%04x\0A\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"roothub.status %08x%s%s%s%s%s%s\0A\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c" CRWE\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c" OCIC\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c" LPSC\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c" DRWE\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c" OCI\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c" LPS\00", align 1
@.str.62 = private unnamed_addr constant [56 x i8] c"roothub.portstatus [%d] 0x%08x%s%s%s%s%s%s%s%s%s%s%s%s\0A\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c" PRSC\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c" PSSC\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c" PESC\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c" CSC\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c" LSDA\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c" PPS\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c" PRS\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c" POCI\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c" PSS\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c" PES\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c" CCS\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"ohci_td\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"ohci_ed\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@debug_async_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @debug_output, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @debug_async_open, ptr null, ptr @debug_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.77 = private unnamed_addr constant [9 x i8] c"periodic\00", align 1
@debug_periodic_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @debug_output, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @debug_periodic_open, ptr null, ptr @debug_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.78 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@debug_registers_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @debug_output, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @debug_registers_open, ptr null, ptr @debug_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@alloc_buffer.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"&buf->mutex\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.80 = private unnamed_addr constant [42 x i8] c"ed/%p %cs dev%d ep%d%s max %d %08x%s%s %s\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c" s\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c" H\00", align 1
@data1 = internal constant [6 x i8] c"DATA1\00", align 1
@data0 = internal constant [6 x i8] c"DATA0\00", align 1
@.str.85 = private unnamed_addr constant [34 x i8] c"\0A\09td %p %s %d cc=%x urb %p (%08x)\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"setup\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"(?)\00", align 1
@.str.88 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"size = %d\0A\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"%2d [%3d]:\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c" ed%d/%p\00", align 1
@.str.92 = private unnamed_addr constant [47 x i8] c" (%cs dev%d ep%d%s-%s qlen %u max %d %08x%s%s)\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"iso\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c" K\00", align 1
@.str.96 = private unnamed_addr constant [25 x i8] c"bus %s, device %s\0A%s\0A%s\0A\00", align 1
@hcd_name = internal constant [9 x i8] c"ohci_hcd\00", align 1
@.str.97 = private unnamed_addr constant [32 x i8] c"SUSPENDED (no register access)\0A\00", align 1
@.str.98 = private unnamed_addr constant [19 x i8] c"hcca frame 0x%04x\0A\00", align 1
@.str.99 = private unnamed_addr constant [41 x i8] c"fmintvl 0x%08x %sFSMPS=0x%04x FI=0x%04x\0A\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"FIT \00", align 1
@.str.101 = private unnamed_addr constant [32 x i8] c"fmremaining 0x%08x %sFR=0x%04x\0A\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"FRT \00", align 1
@.str.103 = private unnamed_addr constant [22 x i8] c"periodicstart 0x%04x\0A\00", align 1
@.str.104 = private unnamed_addr constant [17 x i8] c"lsthresh 0x%04x\0A\00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c"hub poll timer %s\0A\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@cc_to_error = internal unnamed_addr constant [16 x i32] [i32 0, i32 -84, i32 -71, i32 -84, i32 -32, i32 -62, i32 -71, i32 -71, i32 -75, i32 -121, i32 -5, i32 -5, i32 -70, i32 -63, i32 -114, i32 -114], align 4
@.str.108 = private unnamed_addr constant [26 x i8] c"drivers/usb/host/ohci-q.c\00", align 1
@.str.109 = private unnamed_addr constant [25 x i8] c"USB HC reset timed out!\0A\00", align 1
@.str.110 = private unnamed_addr constant [22 x i8] c"init err (%08x %04x)\0A\00", align 1
@.str.111 = private unnamed_addr constant [25 x i8] c"controller won't resume\0A\00", align 1
@.str.112 = private unnamed_addr constant [15 x i8] c"bad entry %8x\0A\00", align 1
@.str.113 = private unnamed_addr constant [21 x i8] c"OHCI Host Controller\00", align 1
@.str.114 = private unnamed_addr constant [55 x i8] c"OHCI Unrecoverable Error, scheduling NEC chip restart\0A\00", align 1
@.str.115 = private unnamed_addr constant [36 x i8] c"OHCI Unrecoverable Error, disabled\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.116 = private unnamed_addr constant [13 x i8] c"can't start\0A\00", align 1
@.str.118 = private unnamed_addr constant [19 x i8] c"ED unlink timeout\0A\00", align 1
@.str.119 = private unnamed_addr constant [31 x i8] c"leak ed %p (#%02x) state %d%s\0A\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c" (has tds)\00", align 1
@.str.121 = private unnamed_addr constant [52 x i8] c"\016%s: USB 1.1 'Open' Host Controller (OHCI) Driver\0A\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"ohci\00", align 1
@usb_debug_root = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author271, ptr @__UNIQUE_ID_description272, ptr @__UNIQUE_ID_distrust_firmware263, ptr @__UNIQUE_ID_distrust_firmwaretype262, ptr @__UNIQUE_ID_file273, ptr @__UNIQUE_ID_license274, ptr @__UNIQUE_ID_no_handshake265, ptr @__UNIQUE_ID_no_handshaketype264, ptr @__exitcall_ohci_hcd_mod_exit, ptr @__initcall__kmod_ohci_hcd__275_1346_ohci_hcd_mod_init6, ptr @__ksymtab_ohci_hub_control, ptr @__ksymtab_ohci_hub_status_data, ptr @__ksymtab_ohci_init_driver, ptr @__ksymtab_ohci_restart, ptr @__ksymtab_ohci_resume, ptr @__ksymtab_ohci_setup, ptr @__ksymtab_ohci_suspend, ptr @__param_distrust_firmware, ptr @__param_no_handshake, ptr @ohci_hcd_mod_exit], section "llvm.metadata"
@switch.table.ohci_hub_control = private unnamed_addr constant [20 x i32] [i32 1, i32 8, i32 1, i32 1, i32 1, i32 1, i32 1, i32 512, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 65536, i32 131072, i32 262144, i32 524288, i32 1048576], align 4
@switch.table.fill_registers_buffer = private unnamed_addr constant [3 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31], align 4
@switch.table.fill_registers_buffer.123 = private unnamed_addr constant [4 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ohci_hub_status_data(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #14
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %214, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %45, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ohci_regs, ptr %16, i32 0, i32 18
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 3
  store i32 0, ptr %21, align 8
  br label %39

22:                                               ; preds = %14
  %23 = load i32, ptr %10, align 8
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  %26 = and i32 %18, -66068480
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %29, %22
  %30 = load ptr, ptr %15, align 4
  %31 = getelementptr inbounds %struct.ohci_regs, ptr %30, i32 0, i32 18
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %33 = and i32 %32, -66068480
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %29

35:                                               ; preds = %29, %22
  %36 = phi i32 [ %18, %22 ], [ %32, %29 ]
  %37 = and i32 %36, 240
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35, %20
  %40 = load ptr, ptr %0, align 8
  %41 = load ptr, ptr %15, align 4
  %42 = getelementptr inbounds %struct.ohci_regs, ptr %41, i32 0, i32 18
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %44 = and i32 %43, 255
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str, i32 noundef %44) #15
  br label %214

45:                                               ; preds = %35, %9
  %46 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.ohci_regs, ptr %47, i32 0, i32 18, i32 2
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %50 = and i32 %49, 196608
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i8
  %53 = zext i1 %51 to i32
  store i8 %52, ptr %1, align 1
  %54 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = icmp sgt i32 %55, 7
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = getelementptr i8, ptr %1, i32 1
  store i8 0, ptr %58, align 1
  br label %59

59:                                               ; preds = %57, %45
  %60 = phi i32 [ 2, %57 ], [ 1, %45 ]
  %61 = load ptr, ptr %46, align 4
  %62 = getelementptr inbounds %struct.ohci_regs, ptr %61, i32 0, i32 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 64) #14, !srcloc !11
  %63 = load ptr, ptr %46, align 4
  %64 = getelementptr inbounds %struct.ohci_regs, ptr %63, i32 0, i32 3
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %66 = and i32 %65, 64
  %67 = load i32, ptr %54, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %119

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 3
  br label %71

71:                                               ; preds = %113, %69
  %72 = phi i32 [ 0, %69 ], [ %116, %113 ]
  %73 = phi i32 [ 0, %69 ], [ %114, %113 ]
  %74 = phi i32 [ %53, %69 ], [ %115, %113 ]
  %75 = load ptr, ptr %46, align 4
  %76 = getelementptr %struct.ohci_regs, ptr %75, i32 0, i32 18, i32 3, i32 %72
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  store i32 0, ptr %70, align 8
  %80 = or i32 %73, 1
  br label %100

81:                                               ; preds = %71
  %82 = load i32, ptr %10, align 8
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  %85 = and i32 %77, -2032416
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %84, i1 true, i1 %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %88, %81
  %89 = load ptr, ptr %46, align 4
  %90 = getelementptr %struct.ohci_regs, ptr %89, i32 0, i32 18, i32 3, i32 %72
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %92 = and i32 %91, -2032416
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %88

94:                                               ; preds = %88, %81
  %95 = phi i32 [ %77, %81 ], [ %91, %88 ]
  %96 = and i32 %95, 1
  %97 = or i32 %96, %73
  %98 = and i32 %95, 2031616
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %113, label %100

100:                                              ; preds = %94, %79
  %101 = phi i32 [ %80, %79 ], [ %97, %94 ]
  %102 = icmp ult i32 %72, 7
  %103 = shl nuw nsw i32 2, %72
  %104 = add nsw i32 %72, -7
  %105 = shl nuw i32 1, %104
  %106 = xor i1 %102, true
  %107 = zext i1 %106 to i32
  %108 = getelementptr i8, ptr %1, i32 %107
  %109 = select i1 %102, i32 %103, i32 %105
  %110 = load i8, ptr %108, align 1
  %111 = trunc i32 %109 to i8
  %112 = or i8 %110, %111
  store i8 %112, ptr %108, align 1
  br label %113

113:                                              ; preds = %100, %94
  %114 = phi i32 [ %97, %94 ], [ %101, %100 ]
  %115 = phi i32 [ %74, %94 ], [ 1, %100 ]
  %116 = add nuw nsw i32 %72, 1
  %117 = load i32, ptr %54, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %71, label %119

119:                                              ; preds = %113, %59
  %120 = phi i32 [ %53, %59 ], [ %115, %113 ]
  %121 = phi i32 [ 0, %59 ], [ %114, %113 ]
  %122 = load ptr, ptr %46, align 4
  %123 = getelementptr inbounds %struct.ohci_regs, ptr %122, i32 0, i32 4
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %125 = and i32 %124, 64
  %126 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 2
  %127 = load i32, ptr %126, align 8
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, -64
  switch i8 %129, label %212 [
    i8 -128, label %130
    i8 -64, label %185
    i8 64, label %185
  ]

130:                                              ; preds = %119
  %131 = or i32 %125, %66
  %132 = or i32 %131, %120
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load ptr, ptr %46, align 4
  %136 = getelementptr inbounds %struct.ohci_regs, ptr %135, i32 0, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 64) #14, !srcloc !11
  br label %137

137:                                              ; preds = %134, %130
  %138 = phi i32 [ %125, %130 ], [ 64, %134 ]
  %139 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 1
  %140 = load i8, ptr %139, align 4
  %141 = and i8 %140, 1
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %161

143:                                              ; preds = %137
  %144 = icmp eq i32 %121, 0
  br i1 %144, label %145, label %209

145:                                              ; preds = %143
  %146 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 0, i32 11
  %147 = load ptr, ptr %146, align 8
  %148 = getelementptr inbounds %struct.usb_device, ptr %147, i32 0, i32 15, i32 11, i32 1
  %149 = load i16, ptr %148, align 4
  %150 = and i16 %149, 1
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %209, label %152

152:                                              ; preds = %145
  %153 = getelementptr inbounds %struct.usb_device, ptr %147, i32 0, i32 15, i32 11, i32 6
  %154 = load ptr, ptr %153, align 8
  %155 = icmp eq ptr %154, null
  br i1 %155, label %209, label %156

156:                                              ; preds = %152
  %157 = or i8 %140, 1
  store i8 %157, ptr %139, align 4
  %158 = load volatile i32, ptr @jiffies, align 64
  %159 = add i32 %158, 100
  %160 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 2, i32 1
  store i32 %159, ptr %160, align 4
  br label %212

161:                                              ; preds = %137
  %162 = or i32 %121, %120
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %161
  %165 = and i8 %140, -2
  store i8 %165, ptr %139, align 4
  %166 = load volatile i32, ptr @jiffies, align 64
  %167 = add i32 %166, 30
  %168 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 2, i32 1
  store i32 %167, ptr %168, align 4
  br label %212

169:                                              ; preds = %161
  %170 = load volatile i32, ptr @jiffies, align 64
  %171 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 2, i32 1
  %172 = load i32, ptr %171, align 4
  %173 = sub i32 %170, %172
  %174 = icmp sgt i32 %173, -1
  br i1 %174, label %175, label %212

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 4
  %177 = load ptr, ptr %176, align 8
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %212

179:                                              ; preds = %175
  %180 = load i32, ptr %126, align 8
  %181 = and i32 %180, 60
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %212

183:                                              ; preds = %179
  %184 = tail call fastcc i32 @ohci_rh_suspend(ptr noundef %3, i32 noundef 1) #14
  br label %209

185:                                              ; preds = %119, %119
  %186 = icmp eq i32 %120, 0
  %187 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 1
  %188 = load i8, ptr %187, align 4
  %189 = and i8 %188, 1
  %190 = icmp eq i8 %189, 0
  br i1 %186, label %195, label %191

191:                                              ; preds = %185
  br i1 %190, label %194, label %192

192:                                              ; preds = %191
  %193 = tail call fastcc i32 @ohci_rh_resume(ptr noundef %3) #14
  br label %212

194:                                              ; preds = %191
  tail call void @usb_hcd_resume_root_hub(ptr noundef %0) #14
  br label %212

195:                                              ; preds = %185
  br i1 %190, label %196, label %203

196:                                              ; preds = %195
  %197 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 0, i32 11
  %198 = load ptr, ptr %197, align 8
  %199 = getelementptr inbounds %struct.usb_device, ptr %198, i32 0, i32 40
  %200 = load i8, ptr %199, align 8
  %201 = and i8 %200, 1
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %213, label %203

203:                                              ; preds = %196, %195
  %204 = or i32 %125, %66
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load ptr, ptr %46, align 4
  %208 = getelementptr inbounds %struct.ohci_regs, ptr %207, i32 0, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %208, i32 64) #14, !srcloc !11
  br label %213

209:                                              ; preds = %203, %183, %152, %145, %143
  %210 = phi i32 [ %138, %183 ], [ %138, %152 ], [ %138, %145 ], [ %138, %143 ], [ %125, %203 ]
  %211 = icmp eq i32 %210, 64
  br i1 %211, label %213, label %212

212:                                              ; preds = %209, %194, %192, %179, %175, %169, %164, %156, %119
  tail call void @_set_bit(i32 noundef 2, ptr noundef %5) #14
  br label %215

213:                                              ; preds = %209, %206, %196
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %5) #14
  br label %215

214:                                              ; preds = %39, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #14
  br label %217

215:                                              ; preds = %213, %212
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #14
  %216 = icmp eq i32 %120, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %215, %214
  br label %218

218:                                              ; preds = %217, %215
  %219 = phi i32 [ 0, %217 ], [ %60, %215 ]
  ret i32 %219
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ohci_hub_control(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, ptr nocapture noundef writeonly %4, i16 zeroext %5) #0 {
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %176, label %14, !prof !12

14:                                               ; preds = %6
  switch i16 %1, label %175 [
    i16 8193, label %15
    i16 8961, label %20
    i16 -24570, label %42
    i16 -24576, label %102
    i16 -23808, label %108
    i16 8195, label %139
    i16 8963, label %141
  ]

15:                                               ; preds = %14
  switch i16 %2, label %175 [
    i16 1, label %16
    i16 0, label %176
  ]

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ohci_regs, ptr %18, i32 0, i32 18, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 131072) #14, !srcloc !11
  br label %176

20:                                               ; preds = %14
  %21 = icmp eq i16 %3, 0
  %22 = zext i16 %3 to i32
  %23 = icmp slt i32 %9, %22
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %175, label %25

25:                                               ; preds = %20
  %26 = add i16 %3, -1
  %27 = add i16 %2, -1
  %28 = icmp ult i16 %27, 20
  br i1 %28, label %29, label %175

29:                                               ; preds = %25
  %30 = zext i16 %27 to i32
  %31 = lshr i32 1015939, %30
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %175, label %34

34:                                               ; preds = %29
  %35 = sext i16 %27 to i32
  %36 = getelementptr inbounds [20 x i32], ptr @switch.table.ohci_hub_control, i32 0, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = zext i16 %26 to i32
  %41 = getelementptr %struct.ohci_regs, ptr %39, i32 0, i32 18, i32 3, i32 %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %37) #14, !srcloc !11
  br label %176

42:                                               ; preds = %14
  %43 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ohci_regs, ptr %44, i32 0, i32 18
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 3
  store i32 0, ptr %49, align 8
  br label %64

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  %55 = and i32 %46, -66068480
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %54, i1 true, i1 %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %58, %50
  %59 = load ptr, ptr %43, align 4
  %60 = getelementptr inbounds %struct.ohci_regs, ptr %59, i32 0, i32 18
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %62 = and i32 %61, -66068480
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %58

64:                                               ; preds = %58, %50, %48
  %65 = phi i32 [ -1, %48 ], [ %46, %50 ], [ %61, %58 ]
  %66 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 1
  store i8 41, ptr %66, align 1
  %67 = lshr i32 %65, 24
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 4
  store i8 %68, ptr %69, align 1
  %70 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 5
  store i8 0, ptr %70, align 1
  %71 = load i32, ptr %8, align 4
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 2
  store i8 %72, ptr %73, align 1
  %74 = load i32, ptr %8, align 4
  %75 = sdiv i32 %74, 8
  %76 = trunc i32 %75 to i8
  %77 = shl i8 %76, 1
  %78 = add i8 %77, 9
  store i8 %78, ptr %4, align 1
  %79 = trunc i32 %65 to i16
  %80 = lshr i16 %79, 8
  %81 = and i16 %80, 3
  %82 = and i32 %65, 4096
  %83 = icmp eq i32 %82, 0
  %84 = and i16 %80, 8
  %85 = select i1 %83, i16 %84, i16 16
  %86 = or i16 %85, %81
  %87 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 3
  store i16 %86, ptr %87, align 1
  %88 = load ptr, ptr %43, align 4
  %89 = getelementptr inbounds %struct.ohci_regs, ptr %88, i32 0, i32 18, i32 1
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %91 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 6
  store i32 -1, ptr %91, align 1
  %92 = trunc i32 %90 to i8
  store i8 %92, ptr %91, align 1
  %93 = load i32, ptr %8, align 4
  %94 = icmp sgt i32 %93, 7
  br i1 %94, label %95, label %99

95:                                               ; preds = %64
  %96 = lshr i32 %90, 8
  %97 = trunc i32 %96 to i8
  %98 = getelementptr %struct.usb_hub_descriptor, ptr %4, i32 0, i32 6, i32 0, i32 0, i32 2
  store i8 -1, ptr %98, align 1
  br label %99

99:                                               ; preds = %95, %64
  %100 = phi i8 [ %97, %95 ], [ -1, %64 ]
  %101 = getelementptr %struct.usb_hub_descriptor, ptr %4, i32 0, i32 6, i32 0, i32 0, i32 1
  store i8 %100, ptr %101, align 1
  br label %176

102:                                              ; preds = %14
  %103 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.ohci_regs, ptr %104, i32 0, i32 18, i32 2
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %107 = and i32 %106, 2147450879
  store i32 %107, ptr %4, align 1
  br label %176

108:                                              ; preds = %14
  %109 = icmp eq i16 %3, 0
  %110 = zext i16 %3 to i32
  %111 = icmp slt i32 %9, %110
  %112 = select i1 %109, i1 true, i1 %111
  br i1 %112, label %175, label %113

113:                                              ; preds = %108
  %114 = add i16 %3, -1
  %115 = zext i16 %114 to i32
  %116 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr %struct.ohci_regs, ptr %117, i32 0, i32 18, i32 3, i32 %115
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 3
  store i32 0, ptr %122, align 8
  br label %137

123:                                              ; preds = %113
  %124 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 2
  %125 = load i32, ptr %124, align 8
  %126 = and i32 %125, 1
  %127 = icmp eq i32 %126, 0
  %128 = and i32 %119, -2032416
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %127, i1 true, i1 %129
  br i1 %130, label %137, label %131

131:                                              ; preds = %131, %123
  %132 = load ptr, ptr %116, align 4
  %133 = getelementptr %struct.ohci_regs, ptr %132, i32 0, i32 18, i32 3, i32 %115
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %135 = and i32 %134, -2032416
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %131

137:                                              ; preds = %131, %123, %121
  %138 = phi i32 [ -1, %121 ], [ %119, %123 ], [ %134, %131 ]
  store i32 %138, ptr %4, align 1
  br label %176

139:                                              ; preds = %14
  %140 = icmp ult i16 %2, 2
  br i1 %140, label %176, label %175

141:                                              ; preds = %14
  %142 = icmp eq i16 %3, 0
  %143 = zext i16 %3 to i32
  %144 = icmp slt i32 %9, %143
  %145 = select i1 %142, i1 true, i1 %144
  br i1 %145, label %175, label %146

146:                                              ; preds = %141
  %147 = add i16 %3, -1
  switch i16 %2, label %175 [
    i16 2, label %148
    i16 8, label %167
    i16 4, label %172
  ]

148:                                              ; preds = %146
  %149 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 5
  %150 = load i8, ptr %149, align 1
  %151 = zext i8 %150 to i32
  %152 = zext i16 %147 to i32
  %153 = add nuw nsw i32 %152, 1
  %154 = icmp eq i32 %153, %151
  br i1 %154, label %155, label %163

155:                                              ; preds = %148
  %156 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 6
  %157 = load i8, ptr %156, align 2
  %158 = and i8 %157, 2
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 7, i32 1, i32 1
  %162 = load ptr, ptr %161, align 4
  tail call void %162(ptr noundef %7) #14
  br label %176

163:                                              ; preds = %155, %148
  %164 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr %struct.ohci_regs, ptr %165, i32 0, i32 18, i32 3, i32 %152
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 4) #14, !srcloc !11
  br label %176

167:                                              ; preds = %146
  %168 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %169 = load ptr, ptr %168, align 4
  %170 = zext i16 %147 to i32
  %171 = getelementptr %struct.ohci_regs, ptr %169, i32 0, i32 18, i32 3, i32 %170
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 256) #14, !srcloc !11
  br label %176

172:                                              ; preds = %146
  %173 = zext i16 %147 to i32
  %174 = tail call fastcc i32 @root_port_reset(ptr noundef %7, i32 noundef %173)
  br label %176

175:                                              ; preds = %146, %141, %139, %108, %29, %25, %20, %15, %14
  br label %176

176:                                              ; preds = %175, %172, %167, %163, %160, %139, %137, %102, %99, %34, %16, %15, %6
  %177 = phi i32 [ -108, %6 ], [ -32, %175 ], [ %174, %172 ], [ 0, %167 ], [ 0, %160 ], [ 0, %163 ], [ 0, %139 ], [ 0, %137 ], [ 0, %102 ], [ 0, %99 ], [ 0, %34 ], [ 0, %15 ], [ 0, %16 ]
  ret i32 %177
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @root_port_reset(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.ohci_regs, ptr %4, i32 0, i32 18, i32 3, i32 %1
  %6 = getelementptr inbounds %struct.ohci_regs, ptr %4, i32 0, i32 15
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %8 = trunc i32 %7 to i16
  %9 = sub i16 -50, %8
  br label %10

10:                                               ; preds = %30, %2
  %11 = phi i32 [ 5, %2 ], [ %37, %30 ]
  br label %12

12:                                               ; preds = %19, %10
  %13 = phi i32 [ 19, %10 ], [ %21, %19 ]
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %40, label %16

16:                                               ; preds = %12
  %17 = and i32 %14, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 107374000) #14
  %21 = add nsw i32 %13, -1
  %22 = icmp sgt i32 %13, 0
  br i1 %22, label %12, label %40

23:                                               ; preds = %16
  %24 = and i32 %14, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %23
  %27 = and i32 %14, 1048576
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1048576) #14, !srcloc !11
  br label %30

30:                                               ; preds = %29, %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 16) #14, !srcloc !11
  tail call void @msleep(i32 noundef 10) #14
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr inbounds %struct.ohci_regs, ptr %31, i32 0, i32 15
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %34 = trunc i32 %33 to i16
  %35 = add i16 %9, %34
  %36 = icmp slt i16 %35, 0
  %37 = add nsw i32 %11, -1
  %38 = icmp sgt i32 %11, 0
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %10, label %40

40:                                               ; preds = %30, %23, %19, %12
  %41 = phi i32 [ 0, %19 ], [ -108, %12 ], [ 0, %30 ], [ 0, %23 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ohci_setup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 2, i32 1
  store i32 %3, ptr %4, align 4
  store i32 0, ptr %2, align 8
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 15
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 16
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 1
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 2
  store ptr %7, ptr %8, align 4
  %9 = tail call fastcc i32 @ohci_init(ptr noundef %2)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ohci_init(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -352
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -332
  store i32 -1, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i8, ptr @distrust_firmware, align 1, !range !13
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 23
  %13 = load i32, ptr %12, align 8
  %14 = or i32 %13, 256
  store i32 %14, ptr %12, align 8
  br label %15

15:                                               ; preds = %11, %8
  %16 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 16
  store i32 0, ptr %16, align 8
  %17 = getelementptr i8, ptr %0, i32 -144
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ohci_regs, ptr %18, i32 0, i32 5
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 -2147483648) #14, !srcloc !11
  %21 = load ptr, ptr %19, align 4
  %22 = getelementptr inbounds %struct.ohci_regs, ptr %21, i32 0, i32 1
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %24 = and i32 %23, 512
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 19
  %28 = load i32, ptr %27, align 8
  %29 = or i32 %28, 512
  store i32 %29, ptr %27, align 8
  br label %30

30:                                               ; preds = %26, %15
  %31 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 17
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = load ptr, ptr %19, align 4
  %36 = getelementptr inbounds %struct.ohci_regs, ptr %35, i32 0, i32 18
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, ptr %16, align 8
  br label %54

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 23
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  %45 = and i32 %37, -66068480
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %44, i1 true, i1 %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %48, %40
  %49 = load ptr, ptr %19, align 4
  %50 = getelementptr inbounds %struct.ohci_regs, ptr %49, i32 0, i32 18
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %52 = and i32 %51, -66068480
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %48

54:                                               ; preds = %48, %40, %39
  %55 = phi i32 [ -1, %39 ], [ %37, %40 ], [ %51, %48 ]
  %56 = and i32 %55, 255
  store i32 %56, ptr %31, align 4
  br label %57

57:                                               ; preds = %54, %30
  %58 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %101

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 28
  tail call void @init_timer_key(ptr noundef %62, ptr noundef nonnull @io_watchdog_func, i32 noundef 0, ptr noundef null, ptr noundef null) #14
  %63 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 24
  store i32 -256, ptr %63, align 4
  %64 = load ptr, ptr %3, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 3
  %68 = tail call ptr @gen_pool_dma_alloc_align(ptr noundef nonnull %64, i32 noundef 256, ptr noundef %67, i32 noundef 256) #14
  br label %73

69:                                               ; preds = %61
  %70 = load ptr, ptr %2, align 8
  %71 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 3
  %72 = tail call ptr @dma_alloc_attrs(ptr noundef %70, i32 noundef 256, ptr noundef %71, i32 noundef 3264, i32 noundef 0) #14
  br label %73

73:                                               ; preds = %69, %66
  %74 = phi ptr [ %72, %69 ], [ %68, %66 ]
  store ptr %74, ptr %58, align 8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %101, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %3, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %92

79:                                               ; preds = %76
  %80 = load ptr, ptr %2, align 8
  %81 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.74, ptr noundef %80, i32 noundef 64, i32 noundef 32, i32 noundef 0) #14
  %82 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 9
  store ptr %81, ptr %82, align 8
  %83 = icmp eq ptr %81, null
  br i1 %83, label %91, label %84

84:                                               ; preds = %79
  %85 = load ptr, ptr %2, align 8
  %86 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.75, ptr noundef %85, i32 noundef 80, i32 noundef 16, i32 noundef 0) #14
  %87 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 10
  store ptr %86, ptr %87, align 4
  %88 = icmp eq ptr %86, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load ptr, ptr %82, align 8
  tail call void @dma_pool_destroy(ptr noundef %90) #14
  br label %91

91:                                               ; preds = %89, %79
  tail call void @ohci_stop(ptr noundef %2)
  br label %101

92:                                               ; preds = %84, %76
  %93 = getelementptr i8, ptr %0, i32 -340
  %94 = load ptr, ptr %93, align 4
  %95 = load ptr, ptr @ohci_debug_root, align 4
  %96 = tail call ptr @debugfs_create_dir(ptr noundef %94, ptr noundef %95) #14
  %97 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 30
  store ptr %96, ptr %97, align 8
  %98 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.76, i16 noundef zeroext 292, ptr noundef %96, ptr noundef %0, ptr noundef nonnull @debug_async_fops) #14
  %99 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.77, i16 noundef zeroext 292, ptr noundef %96, ptr noundef %0, ptr noundef nonnull @debug_periodic_fops) #14
  %100 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.78, i16 noundef zeroext 292, ptr noundef %96, ptr noundef %0, ptr noundef nonnull @debug_registers_fops) #14
  br label %101

101:                                              ; preds = %92, %91, %73, %57
  %102 = phi i32 [ 0, %57 ], [ -12, %73 ], [ 0, %92 ], [ -12, %91 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ohci_restart(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @ohci_init(ptr noundef %0)
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 16
  store i32 0, ptr %3, align 8
  %4 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 14
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %34, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 4
  br label %9

9:                                                ; preds = %31, %7
  %10 = phi ptr [ %5, %7 ], [ %32, %31 ]
  %11 = getelementptr i8, ptr %10, i32 -8
  %12 = getelementptr i8, ptr %10, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.td, ptr %13, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr inbounds %struct.ed, ptr %16, i32 0, i32 10
  %18 = load i8, ptr %17, align 16
  %19 = icmp eq i8 %18, 2
  br i1 %19, label %20, label %26

20:                                               ; preds = %9
  store i8 1, ptr %17, align 16
  %21 = load i32, ptr %16, align 16
  %22 = or i32 %21, 134217728
  store i32 %22, ptr %16, align 16
  tail call fastcc void @ed_deschedule(ptr noundef %0, ptr noundef %16)
  %23 = load ptr, ptr %8, align 8
  %24 = getelementptr inbounds %struct.ed, ptr %16, i32 0, i32 6
  store ptr %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.ed, ptr %16, i32 0, i32 7
  store ptr null, ptr %25, align 4
  store ptr %16, ptr %8, align 8
  br label %26

26:                                               ; preds = %20, %9
  %27 = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -108, ptr %27, align 4
  br label %31

31:                                               ; preds = %30, %26
  %32 = load ptr, ptr %10, align 4
  %33 = icmp eq ptr %32, %4
  br i1 %33, label %34, label %9

34:                                               ; preds = %31, %1
  tail call fastcc void @ohci_work(ptr noundef %0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %35 = load i16, ptr %0, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  %37 = getelementptr i8, ptr %0, i32 456
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(128) %37, i8 0, i32 128, i1 false)
  %38 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  store i32 0, ptr %39, align 4
  %40 = load ptr, ptr %38, align 8
  %41 = getelementptr [32 x i32], ptr %40, i32 0, i32 1
  store i32 0, ptr %41, align 4
  %42 = load ptr, ptr %38, align 8
  %43 = getelementptr [32 x i32], ptr %42, i32 0, i32 2
  store i32 0, ptr %43, align 4
  %44 = load ptr, ptr %38, align 8
  %45 = getelementptr [32 x i32], ptr %44, i32 0, i32 3
  store i32 0, ptr %45, align 4
  %46 = load ptr, ptr %38, align 8
  %47 = getelementptr [32 x i32], ptr %46, i32 0, i32 4
  store i32 0, ptr %47, align 4
  %48 = load ptr, ptr %38, align 8
  %49 = getelementptr [32 x i32], ptr %48, i32 0, i32 5
  store i32 0, ptr %49, align 4
  %50 = load ptr, ptr %38, align 8
  %51 = getelementptr [32 x i32], ptr %50, i32 0, i32 6
  store i32 0, ptr %51, align 4
  %52 = load ptr, ptr %38, align 8
  %53 = getelementptr [32 x i32], ptr %52, i32 0, i32 7
  store i32 0, ptr %53, align 4
  %54 = load ptr, ptr %38, align 8
  %55 = getelementptr [32 x i32], ptr %54, i32 0, i32 8
  store i32 0, ptr %55, align 4
  %56 = load ptr, ptr %38, align 8
  %57 = getelementptr [32 x i32], ptr %56, i32 0, i32 9
  store i32 0, ptr %57, align 4
  %58 = load ptr, ptr %38, align 8
  %59 = getelementptr [32 x i32], ptr %58, i32 0, i32 10
  store i32 0, ptr %59, align 4
  %60 = load ptr, ptr %38, align 8
  %61 = getelementptr [32 x i32], ptr %60, i32 0, i32 11
  store i32 0, ptr %61, align 4
  %62 = load ptr, ptr %38, align 8
  %63 = getelementptr [32 x i32], ptr %62, i32 0, i32 12
  store i32 0, ptr %63, align 4
  %64 = load ptr, ptr %38, align 8
  %65 = getelementptr [32 x i32], ptr %64, i32 0, i32 13
  store i32 0, ptr %65, align 4
  %66 = load ptr, ptr %38, align 8
  %67 = getelementptr [32 x i32], ptr %66, i32 0, i32 14
  store i32 0, ptr %67, align 4
  %68 = load ptr, ptr %38, align 8
  %69 = getelementptr [32 x i32], ptr %68, i32 0, i32 15
  store i32 0, ptr %69, align 4
  %70 = load ptr, ptr %38, align 8
  %71 = getelementptr [32 x i32], ptr %70, i32 0, i32 16
  store i32 0, ptr %71, align 4
  %72 = load ptr, ptr %38, align 8
  %73 = getelementptr [32 x i32], ptr %72, i32 0, i32 17
  store i32 0, ptr %73, align 4
  %74 = load ptr, ptr %38, align 8
  %75 = getelementptr [32 x i32], ptr %74, i32 0, i32 18
  store i32 0, ptr %75, align 4
  %76 = load ptr, ptr %38, align 8
  %77 = getelementptr [32 x i32], ptr %76, i32 0, i32 19
  store i32 0, ptr %77, align 4
  %78 = load ptr, ptr %38, align 8
  %79 = getelementptr [32 x i32], ptr %78, i32 0, i32 20
  store i32 0, ptr %79, align 4
  %80 = load ptr, ptr %38, align 8
  %81 = getelementptr [32 x i32], ptr %80, i32 0, i32 21
  store i32 0, ptr %81, align 4
  %82 = load ptr, ptr %38, align 8
  %83 = getelementptr [32 x i32], ptr %82, i32 0, i32 22
  store i32 0, ptr %83, align 4
  %84 = load ptr, ptr %38, align 8
  %85 = getelementptr [32 x i32], ptr %84, i32 0, i32 23
  store i32 0, ptr %85, align 4
  %86 = load ptr, ptr %38, align 8
  %87 = getelementptr [32 x i32], ptr %86, i32 0, i32 24
  store i32 0, ptr %87, align 4
  %88 = load ptr, ptr %38, align 8
  %89 = getelementptr [32 x i32], ptr %88, i32 0, i32 25
  store i32 0, ptr %89, align 4
  %90 = load ptr, ptr %38, align 8
  %91 = getelementptr [32 x i32], ptr %90, i32 0, i32 26
  store i32 0, ptr %91, align 4
  %92 = load ptr, ptr %38, align 8
  %93 = getelementptr [32 x i32], ptr %92, i32 0, i32 27
  store i32 0, ptr %93, align 4
  %94 = load ptr, ptr %38, align 8
  %95 = getelementptr [32 x i32], ptr %94, i32 0, i32 28
  store i32 0, ptr %95, align 4
  %96 = load ptr, ptr %38, align 8
  %97 = getelementptr [32 x i32], ptr %96, i32 0, i32 29
  store i32 0, ptr %97, align 4
  %98 = load ptr, ptr %38, align 8
  %99 = getelementptr [32 x i32], ptr %98, i32 0, i32 30
  store i32 0, ptr %99, align 4
  %100 = load ptr, ptr %38, align 8
  %101 = getelementptr [32 x i32], ptr %100, i32 0, i32 31
  store i32 0, ptr %101, align 4
  %102 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 4
  store ptr null, ptr %102, align 8
  %103 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 6
  store ptr null, ptr %103, align 8
  %104 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 5
  store ptr null, ptr %104, align 4
  %105 = tail call fastcc i32 @ohci_run(ptr noundef %0)
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %34
  %108 = getelementptr i8, ptr %0, i32 -352
  %109 = load ptr, ptr %108, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.1, i32 noundef %105) #15
  br label %110

110:                                              ; preds = %107, %34
  %111 = phi i32 [ %105, %107 ], [ 0, %34 ]
  ret i32 %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ed_deschedule(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %1, align 16
  %4 = or i32 %3, 16384
  store i32 %4, ptr %1, align 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !19
  tail call void @arm_heavy_mb() #14
  %5 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 10
  store i8 1, ptr %5, align 16
  %6 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 11
  %7 = load i8, ptr %6, align 1
  switch i8 %7, label %94 [
    i8 2, label %8
    i8 3, label %51
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 19
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, -17
  store i32 %19, ptr %17, align 8
  %20 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ohci_regs, ptr %21, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %19) #14, !srcloc !11
  br label %35

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ohci_regs, ptr %25, i32 0, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %14) #14, !srcloc !11
  br label %35

27:                                               ; preds = %8
  %28 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 6
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.ed, ptr %10, i32 0, i32 6
  store ptr %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %9, align 4
  %34 = getelementptr inbounds %struct.ed, ptr %33, i32 0, i32 3
  store i32 %32, ptr %34, align 4
  br label %35

35:                                               ; preds = %27, %23, %16
  %36 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 6
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, %1
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load ptr, ptr %9, align 4
  store ptr %40, ptr %36, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %152, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.ed, ptr %40, i32 0, i32 6
  store ptr null, ptr %43, align 8
  br label %152

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 6
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %152, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %9, align 4
  %50 = getelementptr inbounds %struct.ed, ptr %46, i32 0, i32 7
  store ptr %49, ptr %50, align 4
  br label %152

51:                                               ; preds = %2
  %52 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 7
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 19
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, -33
  store i32 %62, ptr %60, align 8
  %63 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.ohci_regs, ptr %64, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %62) #14, !srcloc !11
  br label %78

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.ohci_regs, ptr %68, i32 0, i32 10
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %57) #14, !srcloc !11
  br label %78

70:                                               ; preds = %51
  %71 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 6
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.ed, ptr %53, i32 0, i32 6
  store ptr %72, ptr %73, align 8
  %74 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = load ptr, ptr %52, align 4
  %77 = getelementptr inbounds %struct.ed, ptr %76, i32 0, i32 3
  store i32 %75, ptr %77, align 4
  br label %78

78:                                               ; preds = %70, %66, %59
  %79 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 5
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %1
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load ptr, ptr %52, align 4
  store ptr %83, ptr %79, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %152, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.ed, ptr %83, i32 0, i32 6
  store ptr null, ptr %86, align 8
  br label %152

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 6
  %89 = load ptr, ptr %88, align 8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %152, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %52, align 4
  %93 = getelementptr inbounds %struct.ed, ptr %89, i32 0, i32 7
  store ptr %92, ptr %93, align 4
  br label %152

94:                                               ; preds = %2
  %95 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 12
  %96 = load i8, ptr %95, align 2
  %97 = icmp ult i8 %96, 32
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 13
  %100 = load i16, ptr %99, align 4
  br label %143

101:                                              ; preds = %94
  %102 = zext i8 %96 to i32
  %103 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 2
  %104 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 3
  %105 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 6
  %106 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 14
  %107 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 13
  br label %108

108:                                              ; preds = %133, %101
  %109 = phi i32 [ %102, %101 ], [ %141, %133 ]
  %110 = getelementptr %struct.ohci_hcd, ptr %0, i32 0, i32 7, i32 %109
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  %113 = icmp eq ptr %111, %1
  %114 = or i1 %112, %113
  br i1 %114, label %125, label %115

115:                                              ; preds = %115, %108
  %116 = phi ptr [ %118, %115 ], [ %111, %108 ]
  %117 = getelementptr inbounds %struct.ed, ptr %116, i32 0, i32 6
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  %120 = icmp eq ptr %118, %1
  %121 = or i1 %119, %120
  br i1 %121, label %122, label %115

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.ed, ptr %116, i32 0, i32 6
  %124 = getelementptr inbounds %struct.ed, ptr %116, i32 0, i32 3
  br i1 %119, label %133, label %128

125:                                              ; preds = %108
  %126 = load ptr, ptr %103, align 8
  %127 = getelementptr [32 x i32], ptr %126, i32 0, i32 %109
  br i1 %112, label %133, label %128

128:                                              ; preds = %125, %122
  %129 = phi ptr [ %124, %122 ], [ %127, %125 ]
  %130 = phi ptr [ %123, %122 ], [ %110, %125 ]
  %131 = load i32, ptr %104, align 4
  store i32 %131, ptr %129, align 4
  %132 = load ptr, ptr %105, align 8
  store ptr %132, ptr %130, align 4
  br label %133

133:                                              ; preds = %128, %125, %122
  %134 = load i16, ptr %106, align 2
  %135 = zext i16 %134 to i32
  %136 = getelementptr %struct.ohci_hcd, ptr %0, i32 0, i32 18, i32 %109
  %137 = load i32, ptr %136, align 4
  %138 = sub i32 %137, %135
  store i32 %138, ptr %136, align 4
  %139 = load i16, ptr %107, align 4
  %140 = zext i16 %139 to i32
  %141 = add i32 %109, %140
  %142 = icmp slt i32 %141, 32
  br i1 %142, label %108, label %143

143:                                              ; preds = %133, %98
  %144 = phi i16 [ %100, %98 ], [ %139, %133 ]
  %145 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 14
  %146 = load i16, ptr %145, align 2
  %147 = udiv i16 %146, %144
  %148 = zext i16 %147 to i32
  %149 = getelementptr i8, ptr %0, i32 -280
  %150 = load i32, ptr %149, align 8
  %151 = sub i32 %150, %148
  store i32 %151, ptr %149, align 8
  br label %152

152:                                              ; preds = %143, %91, %87, %85, %82, %48, %44, %42, %39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ohci_work(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 22
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = or i8 %3, 4
  br label %322

8:                                                ; preds = %1
  %9 = or i8 %3, 2
  %10 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 12
  %11 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 13
  %12 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 4
  %14 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 2
  %15 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 16
  %16 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 6
  %17 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 23
  %18 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 19
  %19 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 5
  br label %20

20:                                               ; preds = %315, %8
  %21 = phi i8 [ %9, %8 ], [ %319, %315 ]
  store i8 %21, ptr %2, align 4
  %22 = load ptr, ptr %10, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %97, label %24

24:                                               ; preds = %94, %20
  %25 = phi ptr [ %95, %94 ], [ %22, %20 ]
  %26 = load ptr, ptr %11, align 4
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store ptr null, ptr %11, align 4
  br label %32

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.td, ptr %25, i32 0, i32 8
  %31 = load ptr, ptr %30, align 32
  br label %32

32:                                               ; preds = %29, %28
  %33 = phi ptr [ %31, %29 ], [ null, %28 ]
  store ptr %33, ptr %10, align 8
  %34 = getelementptr inbounds %struct.td, ptr %25, i32 0, i32 9
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.td, ptr %25, i32 0, i32 6
  %39 = load ptr, ptr %38, align 8
  %40 = tail call fastcc i32 @td_done(ptr noundef %35, ptr noundef nonnull %25) #14
  %41 = getelementptr inbounds %struct.urb_priv, ptr %37, i32 0, i32 2
  %42 = load i16, ptr %41, align 2
  %43 = add i16 %42, 1
  store i16 %43, ptr %41, align 2
  %44 = getelementptr inbounds %struct.urb_priv, ptr %37, i32 0, i32 1
  %45 = load i16, ptr %44, align 4
  %46 = icmp ult i16 %43, %45
  br i1 %46, label %48, label %47

47:                                               ; preds = %32
  tail call fastcc void @finish_urb(ptr noundef %0, ptr noundef %35, i32 noundef %40) #14
  br label %48

48:                                               ; preds = %47, %32
  %49 = getelementptr inbounds %struct.ed, ptr %39, i32 0, i32 8
  %50 = load volatile ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %49
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ed, ptr %39, i32 0, i32 10
  %54 = load i8, ptr %53, align 16
  %55 = icmp eq i8 %54, 2
  br i1 %55, label %56, label %94

56:                                               ; preds = %52
  %57 = load i32, ptr %39, align 16
  %58 = or i32 %57, 134217728
  store i32 %58, ptr %39, align 16
  tail call fastcc void @ed_deschedule(ptr noundef %0, ptr noundef %39) #14
  %59 = load ptr, ptr %13, align 8
  %60 = getelementptr inbounds %struct.ed, ptr %39, i32 0, i32 6
  store ptr %59, ptr %60, align 8
  %61 = getelementptr inbounds %struct.ed, ptr %39, i32 0, i32 7
  store ptr null, ptr %61, align 4
  store ptr %39, ptr %13, align 8
  %62 = load ptr, ptr %12, align 4
  %63 = getelementptr inbounds %struct.ohci_regs, ptr %62, i32 0, i32 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 4) #14, !srcloc !11
  %64 = load ptr, ptr %12, align 4
  %65 = getelementptr inbounds %struct.ohci_regs, ptr %64, i32 0, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 4) #14, !srcloc !11
  %66 = load ptr, ptr %12, align 4
  %67 = getelementptr inbounds %struct.ohci_regs, ptr %66, i32 0, i32 1
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %69 = load ptr, ptr %14, align 8
  %70 = getelementptr inbounds %struct.ohci_hcca, ptr %69, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = trunc i32 %71 to i16
  %73 = add i16 %72, 1
  %74 = getelementptr inbounds %struct.ed, ptr %39, i32 0, i32 16
  store i16 %73, ptr %74, align 2
  br label %94

75:                                               ; preds = %48
  %76 = load i32, ptr %39, align 16
  %77 = and i32 %76, 134234112
  %78 = icmp eq i32 %77, 16384
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = getelementptr i8, ptr %50, i32 -48
  %81 = load i32, ptr %80, align 32
  %82 = and i32 %81, 131072
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = and i32 %76, -16385
  store i32 %85, ptr %39, align 16
  %86 = getelementptr inbounds %struct.ed, ptr %39, i32 0, i32 11
  %87 = load i8, ptr %86, align 1
  switch i8 %87, label %94 [
    i8 2, label %88
    i8 3, label %91
  ]

88:                                               ; preds = %84
  %89 = load ptr, ptr %12, align 4
  %90 = getelementptr inbounds %struct.ohci_regs, ptr %89, i32 0, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 2) #14, !srcloc !11
  br label %94

91:                                               ; preds = %84
  %92 = load ptr, ptr %12, align 4
  %93 = getelementptr inbounds %struct.ohci_regs, ptr %92, i32 0, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 4) #14, !srcloc !11
  br label %94

94:                                               ; preds = %91, %88, %84, %79, %75, %56, %52
  %95 = load ptr, ptr %10, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %24

97:                                               ; preds = %94, %20
  %98 = load ptr, ptr %13, align 8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %315, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr %14, align 8
  %102 = getelementptr inbounds %struct.ohci_hcca, ptr %101, i32 0, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = trunc i32 %103 to i16
  %105 = load i32, ptr %15, align 8
  %106 = icmp eq i32 %105, 2
  br label %112

107:                                              ; preds = %228
  %108 = load ptr, ptr %13, align 4
  %109 = icmp eq ptr %108, null
  %110 = load i32, ptr %15, align 8
  %111 = icmp eq i32 %110, 2
  br i1 %109, label %244, label %239

112:                                              ; preds = %239, %100
  %113 = phi i32 [ %105, %100 ], [ %240, %239 ]
  %114 = phi i1 [ %106, %100 ], [ %241, %239 ]
  %115 = phi ptr [ %98, %100 ], [ %242, %239 ]
  %116 = phi ptr [ %13, %100 ], [ %243, %239 ]
  br i1 %114, label %117, label %124, !prof !20

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.ed, ptr %115, i32 0, i32 16
  %119 = load i16, ptr %118, align 2
  %120 = sub i16 %104, %119
  %121 = icmp slt i16 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %137, %130, %117
  %123 = getelementptr inbounds %struct.ed, ptr %115, i32 0, i32 6
  br label %233

124:                                              ; preds = %117, %112
  %125 = getelementptr inbounds %struct.ed, ptr %115, i32 0, i32 8
  %126 = load volatile ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, %125
  %128 = getelementptr inbounds %struct.ed, ptr %115, i32 0, i32 2
  %129 = load i32, ptr %128, align 8
  br i1 %127, label %141, label %130

130:                                              ; preds = %124
  %131 = and i32 %129, -32
  %132 = getelementptr i8, ptr %126, i32 -8
  %133 = load i32, ptr %132, align 8
  %134 = icmp eq i32 %133, %131
  %135 = xor i1 %114, true
  %136 = select i1 %134, i1 true, i1 %135
  br i1 %136, label %137, label %122

137:                                              ; preds = %130
  %138 = getelementptr i8, ptr %126, i32 -16
  %139 = load ptr, ptr %138, align 32
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %122

141:                                              ; preds = %137, %124
  %142 = and i32 %129, -2
  store i32 %142, ptr %128, align 8
  %143 = getelementptr inbounds %struct.ed, ptr %115, i32 0, i32 3
  store i32 0, ptr %143, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !21
  tail call void @arm_heavy_mb() #14
  %144 = load i32, ptr %115, align 16
  %145 = and i32 %144, -134234113
  store i32 %145, ptr %115, align 16
  %146 = getelementptr inbounds %struct.ed, ptr %115, i32 0, i32 6
  %147 = load ptr, ptr %146, align 8
  store ptr %147, ptr %116, align 4
  store ptr null, ptr %146, align 8
  %148 = load ptr, ptr %125, align 16
  br label %149

149:                                              ; preds = %204, %141
  %150 = phi ptr [ %148, %141 ], [ %206, %204 ]
  %151 = phi i32 [ 0, %141 ], [ %205, %204 ]
  %152 = icmp eq ptr %150, %125
  br i1 %152, label %208, label %153

153:                                              ; preds = %197, %149
  %154 = phi ptr [ %162, %197 ], [ %150, %149 ]
  %155 = phi ptr [ %198, %197 ], [ %128, %149 ]
  %156 = phi i32 [ %160, %197 ], [ %151, %149 ]
  %157 = phi i32 [ %161, %197 ], [ 0, %149 ]
  br label %158

158:                                              ; preds = %200, %153
  %159 = phi ptr [ %162, %200 ], [ %154, %153 ]
  %160 = phi i32 [ 1, %200 ], [ %156, %153 ]
  %161 = phi i32 [ 1, %200 ], [ %157, %153 ]
  %162 = load ptr, ptr %159, align 4
  %163 = getelementptr i8, ptr %159, i32 -48
  %164 = getelementptr i8, ptr %159, i32 -12
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.urb, ptr %165, i32 0, i32 2
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.urb, ptr %165, i32 0, i32 1
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %158
  %172 = getelementptr i8, ptr %159, i32 -40
  br label %197

173:                                              ; preds = %158
  %174 = load i32, ptr %155, align 4
  %175 = and i32 %174, 31
  %176 = getelementptr i8, ptr %159, i32 -40
  %177 = load i32, ptr %176, align 8
  %178 = or i32 %177, %175
  store i32 %178, ptr %155, align 4
  %179 = load i32, ptr %163, align 4
  %180 = and i32 %179, 50331648
  switch i32 %180, label %189 [
    i32 33554432, label %181
    i32 50331648, label %184
  ]

181:                                              ; preds = %173
  %182 = load i32, ptr %128, align 8
  %183 = and i32 %182, -3
  br label %187

184:                                              ; preds = %173
  %185 = load i32, ptr %128, align 8
  %186 = or i32 %185, 2
  br label %187

187:                                              ; preds = %184, %181
  %188 = phi i32 [ %186, %184 ], [ %183, %181 ]
  store i32 %188, ptr %128, align 8
  br label %189

189:                                              ; preds = %187, %173
  %190 = tail call fastcc i32 @td_done(ptr noundef %165, ptr noundef %163) #14
  %191 = getelementptr inbounds %struct.urb_priv, ptr %167, i32 0, i32 2
  %192 = load i16, ptr %191, align 2
  %193 = add i16 %192, 1
  store i16 %193, ptr %191, align 2
  %194 = getelementptr inbounds %struct.urb_priv, ptr %167, i32 0, i32 1
  %195 = load i16, ptr %194, align 4
  %196 = icmp ult i16 %193, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %189, %171
  %198 = phi ptr [ %172, %171 ], [ %155, %189 ]
  %199 = icmp eq ptr %162, %125
  br i1 %199, label %202, label %153

200:                                              ; preds = %189
  tail call fastcc void @finish_urb(ptr noundef %0, ptr noundef %165, i32 noundef 0) #14
  %201 = icmp eq ptr %162, %125
  br i1 %201, label %204, label %158

202:                                              ; preds = %197
  %203 = icmp eq i32 %161, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %202, %200
  %205 = phi i32 [ %160, %202 ], [ 1, %200 ]
  %206 = load volatile ptr, ptr %125, align 4
  %207 = icmp eq ptr %206, %125
  br i1 %207, label %208, label %149

208:                                              ; preds = %204, %202, %149
  %209 = phi i32 [ %205, %204 ], [ %160, %202 ], [ %151, %149 ]
  %210 = load volatile ptr, ptr %125, align 4
  %211 = icmp eq ptr %210, %125
  br i1 %211, label %212, label %219

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.ed, ptr %115, i32 0, i32 10
  store i8 0, ptr %213, align 16
  %214 = getelementptr inbounds %struct.ed, ptr %115, i32 0, i32 9
  %215 = getelementptr inbounds %struct.ed, ptr %115, i32 0, i32 9, i32 1
  %216 = load ptr, ptr %215, align 4
  %217 = load ptr, ptr %214, align 4
  %218 = getelementptr inbounds %struct.list_head, ptr %217, i32 0, i32 1
  store ptr %216, ptr %218, align 4
  store volatile ptr %217, ptr %216, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %214, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %215, align 4
  br label %228

219:                                              ; preds = %208
  %220 = load i32, ptr %15, align 8
  %221 = icmp eq i32 %220, 2
  br i1 %221, label %222, label %224

222:                                              ; preds = %219
  %223 = tail call fastcc i32 @ed_schedule(ptr noundef %0, ptr noundef nonnull %115) #14
  br label %228

224:                                              ; preds = %219
  %225 = load ptr, ptr %13, align 8
  store ptr %225, ptr %146, align 8
  store ptr %115, ptr %13, align 8
  %226 = icmp eq ptr %116, %13
  %227 = select i1 %226, ptr %146, ptr %116
  br label %228

228:                                              ; preds = %224, %222, %212
  %229 = phi ptr [ %116, %212 ], [ %116, %222 ], [ %227, %224 ]
  %230 = icmp eq i32 %209, 0
  br i1 %230, label %231, label %107

231:                                              ; preds = %228
  %232 = load i32, ptr %15, align 8
  br label %233

233:                                              ; preds = %231, %122
  %234 = phi i32 [ %113, %122 ], [ %232, %231 ]
  %235 = phi ptr [ %123, %122 ], [ %229, %231 ]
  %236 = load ptr, ptr %235, align 4
  %237 = icmp eq ptr %236, null
  %238 = icmp eq i32 %234, 2
  br i1 %237, label %244, label %239

239:                                              ; preds = %233, %107
  %240 = phi i32 [ %234, %233 ], [ %110, %107 ]
  %241 = phi i1 [ %238, %233 ], [ %111, %107 ]
  %242 = phi ptr [ %236, %233 ], [ %108, %107 ]
  %243 = phi ptr [ %235, %233 ], [ %13, %107 ]
  br label %112

244:                                              ; preds = %233, %107
  %245 = phi i1 [ %238, %233 ], [ %111, %107 ]
  br i1 %245, label %246, label %315

246:                                              ; preds = %244
  %247 = load ptr, ptr %13, align 8
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %315

249:                                              ; preds = %246
  %250 = load ptr, ptr %16, align 8
  %251 = icmp eq ptr %250, null
  br i1 %251, label %265, label %252

252:                                              ; preds = %249
  %253 = load i32, ptr %17, align 8
  %254 = and i32 %253, 32
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %258, label %256

256:                                              ; preds = %252
  %257 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %257(i32 noundef 214748000) #14
  br label %258

258:                                              ; preds = %256, %252
  %259 = load i32, ptr %18, align 8
  %260 = and i32 %259, 16
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %258
  %263 = load ptr, ptr %12, align 4
  %264 = getelementptr inbounds %struct.ohci_regs, ptr %263, i32 0, i32 9
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %264, i32 0) #14, !srcloc !11
  br label %265

265:                                              ; preds = %262, %258, %249
  %266 = phi i32 [ 2, %258 ], [ 2, %262 ], [ 0, %249 ]
  %267 = phi i1 [ true, %258 ], [ false, %262 ], [ true, %249 ]
  %268 = phi i32 [ 0, %258 ], [ 16, %262 ], [ 0, %249 ]
  %269 = load ptr, ptr %19, align 4
  %270 = icmp eq ptr %269, null
  br i1 %270, label %286, label %271

271:                                              ; preds = %265
  %272 = or i32 %266, 4
  %273 = load i32, ptr %17, align 8
  %274 = and i32 %273, 32
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %278, label %276

276:                                              ; preds = %271
  %277 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %277(i32 noundef 214748000) #14
  br label %278

278:                                              ; preds = %276, %271
  %279 = load i32, ptr %18, align 8
  %280 = and i32 %279, 32
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %278
  %283 = or i32 %268, 32
  %284 = load ptr, ptr %12, align 4
  %285 = getelementptr inbounds %struct.ohci_regs, ptr %284, i32 0, i32 11
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %285, i32 0) #14, !srcloc !11
  br label %288

286:                                              ; preds = %278, %265
  %287 = phi i32 [ %272, %278 ], [ %266, %265 ]
  br i1 %267, label %303, label %288

288:                                              ; preds = %286, %282
  %289 = phi i32 [ %283, %282 ], [ %268, %286 ]
  %290 = phi i32 [ %272, %282 ], [ %287, %286 ]
  %291 = load i32, ptr %18, align 8
  %292 = or i32 %291, %289
  store i32 %292, ptr %18, align 8
  %293 = load i32, ptr %17, align 8
  %294 = and i32 %293, 32
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %288
  %297 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %297(i32 noundef 214748000) #14
  %298 = load i32, ptr %18, align 8
  br label %299

299:                                              ; preds = %296, %288
  %300 = phi i32 [ %298, %296 ], [ %292, %288 ]
  %301 = load ptr, ptr %12, align 4
  %302 = getelementptr inbounds %struct.ohci_regs, ptr %301, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %302, i32 %300) #14, !srcloc !11
  br label %303

303:                                              ; preds = %299, %286
  %304 = phi i32 [ %290, %299 ], [ %287, %286 ]
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %315, label %306

306:                                              ; preds = %303
  %307 = load i32, ptr %17, align 8
  %308 = and i32 %307, 32
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %312, label %310

310:                                              ; preds = %306
  %311 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %311(i32 noundef 214748000) #14
  br label %312

312:                                              ; preds = %310, %306
  %313 = load ptr, ptr %12, align 4
  %314 = getelementptr inbounds %struct.ohci_regs, ptr %313, i32 0, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %314, i32 %304) #14, !srcloc !11
  br label %315

315:                                              ; preds = %312, %303, %246, %244, %97
  %316 = load i8, ptr %2, align 4
  %317 = and i8 %316, 4
  %318 = icmp eq i8 %317, 0
  %319 = and i8 %316, -5
  br i1 %318, label %320, label %20

320:                                              ; preds = %315
  %321 = and i8 %316, -3
  br label %322

322:                                              ; preds = %320, %6
  %323 = phi i8 [ %321, %320 ], [ %7, %6 ]
  store i8 %323, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ohci_run(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 21
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr i8, ptr %0, i32 -352
  %6 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 16
  store i32 0, ptr %6, align 8
  br i1 %4, label %7, label %19

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ohci_regs, ptr %9, i32 0, i32 13
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %12 = and i32 %11, 16383
  %13 = mul nuw nsw i32 %12, 6
  %14 = add nsw i32 %13, -1260
  %15 = udiv i32 %14, 7
  %16 = shl i32 %15, 16
  %17 = and i32 %16, 2147418112
  %18 = or i32 %17, %12
  store i32 %18, ptr %2, align 8
  br label %19

19:                                               ; preds = %7, %1
  %20 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 19
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 512
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8
  tail call void @device_set_wakeup_capable(ptr noundef %25, i1 noundef zeroext true) #14
  %26 = load i32, ptr %20, align 8
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi i32 [ %26, %24 ], [ %21, %19 ]
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, -64
  switch i8 %30, label %34 [
    i8 -128, label %39
    i8 -64, label %31
    i8 64, label %31
  ]

31:                                               ; preds = %27, %27
  %32 = and i32 %28, 512
  %33 = or i32 %32, 64
  br label %36

34:                                               ; preds = %27
  %35 = and i32 %28, 512
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi i32 [ %35, %34 ], [ %33, %31 ]
  %38 = phi i32 [ 50, %34 ], [ 10, %31 ]
  store i32 %37, ptr %20, align 8
  br label %39

39:                                               ; preds = %36, %27
  %40 = phi i32 [ %28, %27 ], [ %37, %36 ]
  %41 = phi i32 [ 0, %27 ], [ %38, %36 ]
  %42 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ohci_regs, ptr %43, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %40) #14, !srcloc !11
  %45 = load ptr, ptr %42, align 4
  %46 = getelementptr inbounds %struct.ohci_regs, ptr %45, i32 0, i32 1
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  tail call void @msleep(i32 noundef %41) #14
  %48 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 256 dereferenceable(256) %49, i8 0, i32 256, i1 false)
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #14
  %50 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 23
  %51 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 3
  br label %52

52:                                               ; preds = %123, %39
  %53 = load ptr, ptr %42, align 4
  %54 = getelementptr inbounds %struct.ohci_regs, ptr %53, i32 0, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 1) #14, !srcloc !11
  %55 = load ptr, ptr %42, align 4
  %56 = getelementptr inbounds %struct.ohci_regs, ptr %55, i32 0, i32 2
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %68, %52
  %61 = phi i32 [ %62, %68 ], [ 30, %52 ]
  %62 = add nsw i32 %61, -1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %65 = load i16, ptr %0, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  %67 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.109) #15
  br label %233

68:                                               ; preds = %60
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748) #14
  %70 = load ptr, ptr %42, align 4
  %71 = getelementptr inbounds %struct.ohci_regs, ptr %70, i32 0, i32 2
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %60

75:                                               ; preds = %68, %52
  %76 = load i32, ptr %50, align 8
  %77 = and i32 %76, 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = load i32, ptr %20, align 8
  %81 = load ptr, ptr %42, align 4
  %82 = getelementptr inbounds %struct.ohci_regs, ptr %81, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #14, !srcloc !11
  %83 = load ptr, ptr %42, align 4
  %84 = getelementptr inbounds %struct.ohci_regs, ptr %83, i32 0, i32 1
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %86

86:                                               ; preds = %79, %75
  %87 = load ptr, ptr %42, align 4
  %88 = getelementptr inbounds %struct.ohci_regs, ptr %87, i32 0, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 0) #14, !srcloc !11
  %89 = load ptr, ptr %42, align 4
  %90 = getelementptr inbounds %struct.ohci_regs, ptr %89, i32 0, i32 10
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 0) #14, !srcloc !11
  %91 = load i32, ptr %51, align 4
  %92 = load ptr, ptr %42, align 4
  %93 = getelementptr inbounds %struct.ohci_regs, ptr %92, i32 0, i32 6
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %91) #14, !srcloc !11
  %94 = load i32, ptr %2, align 8
  %95 = and i32 %94, 16383
  %96 = load ptr, ptr %42, align 4
  %97 = getelementptr inbounds %struct.ohci_regs, ptr %96, i32 0, i32 13
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %99 = and i32 %98, -2147483648
  %100 = xor i32 %99, -2147483648
  %101 = load i32, ptr %2, align 8
  %102 = or i32 %100, %101
  %103 = load ptr, ptr %42, align 4
  %104 = getelementptr inbounds %struct.ohci_regs, ptr %103, i32 0, i32 13
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #14, !srcloc !11
  %105 = mul nuw nsw i32 %95, 9
  %106 = udiv i32 %105, 10
  %107 = load ptr, ptr %42, align 4
  %108 = getelementptr inbounds %struct.ohci_regs, ptr %107, i32 0, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %106) #14, !srcloc !11
  %109 = load ptr, ptr %42, align 4
  %110 = getelementptr inbounds %struct.ohci_regs, ptr %109, i32 0, i32 13
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %112 = and i32 %111, 1073676288
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %86
  %115 = load ptr, ptr %42, align 4
  %116 = getelementptr inbounds %struct.ohci_regs, ptr %115, i32 0, i32 16
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %114, %86
  %120 = load i32, ptr %50, align 8
  %121 = and i32 %120, 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = or i32 %120, 4
  store i32 %124, ptr %50, align 8
  br label %52

125:                                              ; preds = %119
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %126 = load i16, ptr %0, align 4
  %127 = add i16 %126, 1
  store i16 %127, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  %128 = load ptr, ptr %5, align 8
  %129 = load ptr, ptr %42, align 4
  %130 = getelementptr inbounds %struct.ohci_regs, ptr %129, i32 0, i32 13
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %132 = load ptr, ptr %42, align 4
  %133 = getelementptr inbounds %struct.ohci_regs, ptr %132, i32 0, i32 16
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.110, i32 noundef %131, i32 noundef %134) #15
  br label %233

135:                                              ; preds = %114
  %136 = getelementptr i8, ptr %0, i32 -160
  tail call void @_set_bit(i32 noundef 2, ptr noundef %136) #14
  %137 = getelementptr i8, ptr %0, i32 -152
  %138 = load i16, ptr %137, align 8
  %139 = or i16 %138, 32
  store i16 %139, ptr %137, align 8
  %140 = load i32, ptr %20, align 8
  %141 = and i32 %140, 512
  %142 = or i32 %141, 131
  store i32 %142, ptr %20, align 8
  %143 = load ptr, ptr %42, align 4
  %144 = getelementptr inbounds %struct.ohci_regs, ptr %143, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %142) #14, !srcloc !11
  store i32 2, ptr %6, align 8
  %145 = load ptr, ptr %42, align 4
  %146 = getelementptr inbounds %struct.ohci_regs, ptr %145, i32 0, i32 18, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 32768) #14, !srcloc !11
  %147 = load ptr, ptr %42, align 4
  %148 = getelementptr inbounds %struct.ohci_regs, ptr %147, i32 0, i32 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 -1) #14, !srcloc !11
  %149 = load ptr, ptr %42, align 4
  %150 = getelementptr inbounds %struct.ohci_regs, ptr %149, i32 0, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 -2147483558) #14, !srcloc !11
  %151 = load ptr, ptr %42, align 4
  %152 = getelementptr inbounds %struct.ohci_regs, ptr %151, i32 0, i32 18
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %155, label %156

155:                                              ; preds = %135
  store i32 0, ptr %6, align 8
  br label %169

156:                                              ; preds = %135
  %157 = load i32, ptr %50, align 8
  %158 = and i32 %157, 1
  %159 = icmp eq i32 %158, 0
  %160 = and i32 %153, -66068480
  %161 = icmp eq i32 %160, 0
  %162 = select i1 %159, i1 true, i1 %161
  br i1 %162, label %169, label %163

163:                                              ; preds = %163, %156
  %164 = load ptr, ptr %42, align 4
  %165 = getelementptr inbounds %struct.ohci_regs, ptr %164, i32 0, i32 18
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %165) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %167 = and i32 %166, -66068480
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %163

169:                                              ; preds = %163, %156, %155
  %170 = phi i32 [ -1, %155 ], [ %153, %156 ], [ %166, %163 ]
  %171 = load i32, ptr %50, align 8
  %172 = and i32 %171, 2
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %169
  %175 = and i32 %170, 16770303
  %176 = or i32 %175, 4096
  br label %183

177:                                              ; preds = %169
  %178 = and i32 %170, -6145
  %179 = and i32 %171, 257
  %180 = icmp eq i32 %179, 0
  %181 = select i1 %180, i32 2048, i32 2560
  %182 = or i32 %181, %178
  br label %183

183:                                              ; preds = %177, %174
  %184 = phi i32 [ %176, %174 ], [ %182, %177 ]
  %185 = load ptr, ptr %42, align 4
  %186 = getelementptr inbounds %struct.ohci_regs, ptr %185, i32 0, i32 18
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %184) #14, !srcloc !11
  %187 = load ptr, ptr %42, align 4
  %188 = getelementptr inbounds %struct.ohci_regs, ptr %187, i32 0, i32 18, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 65536) #14, !srcloc !11
  %189 = and i32 %184, 512
  %190 = icmp eq i32 %189, 0
  %191 = select i1 %190, i32 -65536, i32 0
  %192 = load ptr, ptr %42, align 4
  %193 = getelementptr inbounds %struct.ohci_regs, ptr %192, i32 0, i32 18, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 %191) #14, !srcloc !11
  %194 = load ptr, ptr %42, align 4
  %195 = getelementptr inbounds %struct.ohci_regs, ptr %194, i32 0, i32 1
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %195) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %197 = load volatile i32, ptr @jiffies, align 64
  %198 = add i32 %197, 30
  %199 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 20
  store i32 %198, ptr %199, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %200 = load i16, ptr %0, align 4
  %201 = add i16 %200, 1
  store i16 %201, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  %202 = lshr i32 %184, 23
  %203 = and i32 %202, 510
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %210, label %205

205:                                              ; preds = %205, %183
  %206 = phi i32 [ %207, %205 ], [ %203, %183 ]
  %207 = add nsw i32 %206, -1
  %208 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %208(i32 noundef 214748000) #14
  %209 = icmp eq i32 %207, 0
  br i1 %209, label %210, label %205

210:                                              ; preds = %205, %183
  %211 = load ptr, ptr %42, align 4
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %211) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %213 = getelementptr inbounds %struct.ohci_regs, ptr %211, i32 0, i32 1
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %213) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %215 = getelementptr inbounds %struct.ohci_regs, ptr %211, i32 0, i32 2
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %215) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %217 = getelementptr inbounds %struct.ohci_regs, ptr %211, i32 0, i32 3
  %218 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %217) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %219 = getelementptr inbounds %struct.ohci_regs, ptr %211, i32 0, i32 4
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %219) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %221 = getelementptr inbounds %struct.ohci_regs, ptr %211, i32 0, i32 7
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %221) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %223 = getelementptr inbounds %struct.ohci_regs, ptr %211, i32 0, i32 8
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %223) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %225 = getelementptr inbounds %struct.ohci_regs, ptr %211, i32 0, i32 9
  %226 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %225) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %227 = getelementptr inbounds %struct.ohci_regs, ptr %211, i32 0, i32 10
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %227) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %229 = getelementptr inbounds %struct.ohci_regs, ptr %211, i32 0, i32 11
  %230 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %229) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %231 = getelementptr inbounds %struct.ohci_regs, ptr %211, i32 0, i32 12
  %232 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %231) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  tail call fastcc void @ohci_dump_roothub(ptr noundef %0, ptr noundef null, ptr noundef null) #14
  br label %233

233:                                              ; preds = %210, %125, %64
  %234 = phi i32 [ -1, %64 ], [ -75, %125 ], [ 0, %210 ]
  ret i32 %234
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ohci_suspend(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #14
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ohci_regs, ptr %6, i32 0, i32 5
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 -2147483648) #14, !srcloc !11
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.ohci_regs, ptr %8, i32 0, i32 5
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %11) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #14
  %12 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 15
  %13 = load i32, ptr %12, align 4
  tail call void @synchronize_irq(i32 noundef %13) #14
  br i1 %1, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, ptr %11, align 8
  %16 = and i32 %15, 16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @ohci_resume(ptr noundef %0, i1 noundef zeroext false)
  br label %20

20:                                               ; preds = %18, %14, %2
  %21 = phi i32 [ -16, %18 ], [ 0, %14 ], [ 0, %2 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ohci_resume(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %4) #14
  br i1 %1, label %5, label %15

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ohci_regs, ptr %7, i32 0, i32 1
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 2
  %11 = and i32 %9, 512
  store i32 %11, ptr %10, align 8
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.ohci_regs, ptr %12, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #14, !srcloc !11
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 3
  store i32 0, ptr %14, align 8
  br label %15

15:                                               ; preds = %5, %2
  %16 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ohci_regs, ptr %17, i32 0, i32 1
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %20 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 2
  store i32 %19, ptr %20, align 8
  %21 = and i32 %19, 380
  %22 = icmp eq i32 %21, 64
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %32, label %39

27:                                               ; preds = %15
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #14
  %28 = tail call fastcc i32 @ohci_rh_resume(ptr noundef %3)
  %29 = tail call fastcc i32 @ohci_rh_suspend(ptr noundef %3, i32 noundef 0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %30 = load i16, ptr %3, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  br label %45

32:                                               ; preds = %32, %23
  %33 = phi i32 [ %36, %32 ], [ 0, %23 ]
  %34 = load ptr, ptr %16, align 4
  %35 = getelementptr %struct.ohci_regs, ptr %34, i32 0, i32 18, i32 3, i32 %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 256) #14, !srcloc !11
  %36 = add nuw nsw i32 %33, 1
  %37 = load i32, ptr %24, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %32, label %39

39:                                               ; preds = %32, %23
  %40 = load ptr, ptr %16, align 4
  %41 = getelementptr inbounds %struct.ohci_regs, ptr %40, i32 0, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 -2147483648) #14, !srcloc !11
  %42 = load ptr, ptr %16, align 4
  %43 = getelementptr inbounds %struct.ohci_regs, ptr %42, i32 0, i32 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  tail call void @msleep(i32 noundef 20) #14
  br label %45

45:                                               ; preds = %39, %27
  tail call void @usb_hcd_resume_root_hub(ptr noundef %0) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ohci_rh_resume(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -352
  %3 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 22
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 1
  %6 = and i8 %4, -2
  store i8 %6, ptr %3, align 4
  %7 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ohci_regs, ptr %8, i32 0, i32 1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %11 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 19
  store i32 %10, ptr %11, align 8
  %12 = and i32 %10, 316
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = trunc i32 %10 to i8
  %16 = and i8 %15, -64
  switch i8 %16, label %29 [
    i8 -64, label %17
    i8 64, label %37
  ]

17:                                               ; preds = %14
  %18 = and i32 %10, -253
  %19 = or i32 %18, 64
  store i32 %19, ptr %11, align 8
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr inbounds %struct.ohci_regs, ptr %20, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #14, !srcloc !11
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.ohci_regs, ptr %22, i32 0, i32 1
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %37

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 16
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %181, label %29

29:                                               ; preds = %25, %14
  %30 = icmp eq i8 %5, 0
  br i1 %30, label %31, label %181

31:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %32 = load i16, ptr %0, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  %34 = tail call i32 @ohci_restart(ptr noundef %0)
  %35 = getelementptr i8, ptr %0, i32 -288
  %36 = load ptr, ptr %35, align 8
  tail call void @usb_root_hub_lost_power(ptr noundef %36) #14
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #14
  br label %181

37:                                               ; preds = %17, %14
  %38 = icmp eq i8 %5, 0
  br i1 %38, label %39, label %80

39:                                               ; preds = %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %40 = load i16, ptr %0, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  tail call void @msleep(i32 noundef 33) #14
  %42 = load ptr, ptr %7, align 4
  %43 = getelementptr inbounds %struct.ohci_regs, ptr %42, i32 0, i32 1
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %45 = and i32 %44, 192
  %46 = icmp eq i32 %45, 64
  br i1 %46, label %49, label %47

47:                                               ; preds = %39
  %48 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.111) #15
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #14
  br label %181

49:                                               ; preds = %39
  %50 = load ptr, ptr %7, align 4
  %51 = getelementptr inbounds %struct.ohci_regs, ptr %50, i32 0, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 0) #14, !srcloc !11
  %52 = load ptr, ptr %7, align 4
  %53 = getelementptr inbounds %struct.ohci_regs, ptr %52, i32 0, i32 9
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 0) #14, !srcloc !11
  %54 = load ptr, ptr %7, align 4
  %55 = getelementptr inbounds %struct.ohci_regs, ptr %54, i32 0, i32 10
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 0) #14, !srcloc !11
  %56 = load ptr, ptr %7, align 4
  %57 = getelementptr inbounds %struct.ohci_regs, ptr %56, i32 0, i32 11
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 0) #14, !srcloc !11
  %58 = load ptr, ptr %7, align 4
  %59 = getelementptr inbounds %struct.ohci_regs, ptr %58, i32 0, i32 7
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 0) #14, !srcloc !11
  %60 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = load ptr, ptr %7, align 4
  %63 = getelementptr inbounds %struct.ohci_regs, ptr %62, i32 0, i32 6
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #14, !srcloc !11
  %64 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 21
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 16383
  %67 = load ptr, ptr %7, align 4
  %68 = getelementptr inbounds %struct.ohci_regs, ptr %67, i32 0, i32 13
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %70 = and i32 %69, -2147483648
  %71 = xor i32 %70, -2147483648
  %72 = load i32, ptr %64, align 8
  %73 = or i32 %71, %72
  %74 = load ptr, ptr %7, align 4
  %75 = getelementptr inbounds %struct.ohci_regs, ptr %74, i32 0, i32 13
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #14, !srcloc !11
  %76 = mul nuw nsw i32 %66, 9
  %77 = udiv i32 %76, 10
  %78 = load ptr, ptr %7, align 4
  %79 = getelementptr inbounds %struct.ohci_regs, ptr %78, i32 0, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %77) #14, !srcloc !11
  br label %80

80:                                               ; preds = %49, %37
  %81 = load ptr, ptr %7, align 4
  %82 = getelementptr inbounds %struct.ohci_regs, ptr %81, i32 0, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 -2147483558) #14, !srcloc !11
  %83 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 4
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = load ptr, ptr %7, align 4
  %88 = getelementptr inbounds %struct.ohci_regs, ptr %87, i32 0, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 4) #14, !srcloc !11
  br label %89

89:                                               ; preds = %86, %80
  %90 = load ptr, ptr %7, align 4
  %91 = getelementptr inbounds %struct.ohci_regs, ptr %90, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 128) #14, !srcloc !11
  %92 = load ptr, ptr %7, align 4
  %93 = getelementptr inbounds %struct.ohci_regs, ptr %92, i32 0, i32 1
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br i1 %38, label %95, label %104

95:                                               ; preds = %89
  tail call void @msleep(i32 noundef 3) #14
  %96 = load i32, ptr %11, align 8
  %97 = and i32 %96, 512
  %98 = or i32 %97, 131
  store i32 %98, ptr %11, align 8
  %99 = load ptr, ptr %7, align 4
  %100 = getelementptr inbounds %struct.ohci_regs, ptr %99, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %98) #14, !srcloc !11
  %101 = load ptr, ptr %7, align 4
  %102 = getelementptr inbounds %struct.ohci_regs, ptr %101, i32 0, i32 1
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  tail call void @msleep(i32 noundef 10) #14
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #14
  br label %113

104:                                              ; preds = %89
  %105 = load i32, ptr %11, align 8
  %106 = and i32 %105, 512
  %107 = or i32 %106, 131
  store i32 %107, ptr %11, align 8
  %108 = load ptr, ptr %7, align 4
  %109 = getelementptr inbounds %struct.ohci_regs, ptr %108, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %107) #14, !srcloc !11
  %110 = load ptr, ptr %7, align 4
  %111 = getelementptr inbounds %struct.ohci_regs, ptr %110, i32 0, i32 1
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %113

113:                                              ; preds = %104, %95
  %114 = load volatile i32, ptr @jiffies, align 64
  %115 = add i32 %114, 30
  %116 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 20
  store i32 %115, ptr %116, align 4
  %117 = load ptr, ptr %83, align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %151

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 6
  %121 = load ptr, ptr %120, align 8
  %122 = icmp eq ptr %121, null
  br i1 %122, label %133, label %123

123:                                              ; preds = %123, %119
  %124 = phi ptr [ %126, %123 ], [ %121, %119 ]
  %125 = getelementptr inbounds %struct.ed, ptr %124, i32 0, i32 7
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %123

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.ed, ptr %124, i32 0, i32 4
  %130 = load i32, ptr %129, align 16
  %131 = load ptr, ptr %7, align 4
  %132 = getelementptr inbounds %struct.ohci_regs, ptr %131, i32 0, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #14, !srcloc !11
  br label %133

133:                                              ; preds = %128, %119
  %134 = phi i32 [ 2, %128 ], [ 0, %119 ]
  %135 = phi i32 [ 16, %128 ], [ 0, %119 ]
  %136 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 5
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %151, label %139

139:                                              ; preds = %139, %133
  %140 = phi ptr [ %142, %139 ], [ %137, %133 ]
  %141 = getelementptr inbounds %struct.ed, ptr %140, i32 0, i32 7
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %139

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.ed, ptr %140, i32 0, i32 4
  %146 = load i32, ptr %145, align 16
  %147 = load ptr, ptr %7, align 4
  %148 = getelementptr inbounds %struct.ohci_regs, ptr %147, i32 0, i32 10
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 %146) #14, !srcloc !11
  %149 = or i32 %135, 32
  %150 = or i32 %134, 4
  br label %151

151:                                              ; preds = %144, %133, %113
  %152 = phi i32 [ 0, %113 ], [ %150, %144 ], [ %134, %133 ]
  %153 = phi i32 [ 0, %113 ], [ %149, %144 ], [ %135, %133 ]
  %154 = getelementptr i8, ptr %0, i32 -272
  %155 = load i32, ptr %154, align 8
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %151
  %158 = getelementptr i8, ptr %0, i32 -276
  %159 = load i32, ptr %158, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %157, %151
  %162 = or i32 %153, 12
  br label %165

163:                                              ; preds = %157
  %164 = icmp eq i32 %153, 0
  br i1 %164, label %179, label %165

165:                                              ; preds = %163, %161
  %166 = phi i32 [ %162, %161 ], [ %153, %163 ]
  %167 = load i32, ptr %11, align 8
  %168 = or i32 %167, %166
  store i32 %168, ptr %11, align 8
  %169 = load ptr, ptr %7, align 4
  %170 = getelementptr inbounds %struct.ohci_regs, ptr %169, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %168) #14, !srcloc !11
  %171 = icmp eq i32 %152, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %165
  %173 = load ptr, ptr %7, align 4
  %174 = getelementptr inbounds %struct.ohci_regs, ptr %173, i32 0, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 %152) #14, !srcloc !11
  br label %175

175:                                              ; preds = %172, %165
  %176 = load ptr, ptr %7, align 4
  %177 = getelementptr inbounds %struct.ohci_regs, ptr %176, i32 0, i32 1
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %179

179:                                              ; preds = %175, %163
  %180 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 16
  store i32 2, ptr %180, align 8
  br label %181

181:                                              ; preds = %179, %47, %31, %29, %25
  %182 = phi i32 [ 0, %179 ], [ -16, %47 ], [ -16, %29 ], [ %34, %31 ], [ 0, %25 ]
  ret i32 %182
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ohci_rh_suspend(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ohci_regs, ptr %4, i32 0, i32 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %7 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 19
  store i32 %6, ptr %7, align 8
  %8 = trunc i32 %6 to i8
  %9 = and i8 %8, -64
  switch i8 %9, label %22 [
    i8 64, label %10
    i8 0, label %99
    i8 -64, label %17
  ]

10:                                               ; preds = %2
  %11 = and i32 %6, -193
  store i32 %11, ptr %7, align 8
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.ohci_regs, ptr %12, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #14, !srcloc !11
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.ohci_regs, ptr %14, i32 0, i32 1
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %99

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 22
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %99, label %22

22:                                               ; preds = %17, %2
  %23 = icmp ne i32 %1, 0
  %24 = and i32 %6, 60
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %41, label %27

27:                                               ; preds = %22
  %28 = and i32 %6, -61
  store i32 %28, ptr %7, align 8
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr inbounds %struct.ohci_regs, ptr %29, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #14, !srcloc !11
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr inbounds %struct.ohci_regs, ptr %31, i32 0, i32 1
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  store i32 %33, ptr %7, align 8
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr inbounds %struct.ohci_regs, ptr %34, i32 0, i32 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 4) #14, !srcloc !11
  %36 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 22
  %37 = load i8, ptr %36, align 4
  %38 = and i8 %37, -2
  store i8 %38, ptr %36, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %39 = load i16, ptr %0, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  tail call void @msleep(i32 noundef 8) #14
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #14
  br label %41

41:                                               ; preds = %27, %22
  tail call fastcc void @update_done_list(ptr noundef %0)
  tail call fastcc void @ohci_work(ptr noundef %0)
  %42 = load ptr, ptr %3, align 4
  %43 = getelementptr inbounds %struct.ohci_regs, ptr %42, i32 0, i32 5
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 4) #14, !srcloc !11
  %44 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 23
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 2048
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %67, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 17
  %50 = load i32, ptr %49, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = load ptr, ptr %3, align 4
  %54 = getelementptr inbounds %struct.ohci_regs, ptr %53, i32 0, i32 18, i32 3
  br label %55

55:                                               ; preds = %62, %52
  %56 = phi i32 [ %63, %62 ], [ 0, %52 ]
  %57 = phi ptr [ %64, %62 ], [ %54, %52 ]
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %59 = and i32 %58, 6
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 4) #14, !srcloc !11
  br label %62

62:                                               ; preds = %61, %55
  %63 = add nuw nsw i32 %56, 1
  %64 = getelementptr i32, ptr %57, i32 1
  %65 = load i32, ptr %49, align 4
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %55, label %67

67:                                               ; preds = %62, %48, %41
  %68 = getelementptr i8, ptr %0, i32 -288
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.usb_device, ptr %69, i32 0, i32 40
  %71 = load i8, ptr %70, align 8
  %72 = and i8 %71, 1
  %73 = icmp ne i8 %72, 0
  %74 = or i1 %23, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, ptr %7, align 8
  %77 = or i32 %76, 1024
  br label %83

78:                                               ; preds = %67
  %79 = load ptr, ptr %3, align 4
  %80 = getelementptr inbounds %struct.ohci_regs, ptr %79, i32 0, i32 5
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 72) #14, !srcloc !11
  %81 = load i32, ptr %7, align 8
  %82 = and i32 %81, -1025
  br label %83

83:                                               ; preds = %78, %75
  %84 = phi i32 [ %82, %78 ], [ %77, %75 ]
  %85 = or i32 %84, 192
  store i32 %85, ptr %7, align 8
  %86 = load ptr, ptr %3, align 4
  %87 = getelementptr inbounds %struct.ohci_regs, ptr %86, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #14, !srcloc !11
  %88 = load ptr, ptr %3, align 4
  %89 = getelementptr inbounds %struct.ohci_regs, ptr %88, i32 0, i32 1
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br i1 %23, label %99, label %91

91:                                               ; preds = %83
  %92 = load volatile i32, ptr @jiffies, align 64
  %93 = add i32 %92, 1
  %94 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 20
  store i32 %93, ptr %94, align 4
  %95 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 22
  %96 = load i8, ptr %95, align 4
  %97 = and i8 %96, -2
  store i8 %97, ptr %95, align 4
  %98 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 16
  store i32 1, ptr %98, align 8
  br label %99

99:                                               ; preds = %91, %83, %17, %10, %2
  %100 = phi i32 [ 0, %83 ], [ 0, %91 ], [ 0, %17 ], [ -16, %2 ], [ -16, %10 ]
  ret i32 %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_resume_root_hub(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ohci_init_driver(ptr nocapture noundef %0, ptr noundef readonly %1) #5 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(184) %0, ptr noundef nonnull align 4 dereferenceable(184) @ohci_hc_driver, i32 184, i1 false)
  %3 = icmp eq ptr %1, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr inbounds %struct.hc_driver, ptr %0, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ohci_driver_overrides, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.hc_driver, ptr %0, i32 0, i32 2
  %10 = add i32 %8, 664
  store i32 %10, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ohci_driver_overrides, ptr %1, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.hc_driver, ptr %0, i32 0, i32 5
  store ptr %12, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %4, %2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ohci_hcd_mod_init() #7 section ".init.text" {
  %1 = tail call i32 @usb_disabled() #14
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull @hcd_name) #15
  tail call void @_set_bit(i32 noundef 1, ptr noundef nonnull @usb_hcds_loaded) #14
  %5 = load ptr, ptr @usb_debug_root, align 4
  %6 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.122, ptr noundef %5) #14
  store ptr %6, ptr @ohci_debug_root, align 4
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi i32 [ 0, %3 ], [ -19, %0 ]
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ohci_hcd_mod_exit() #7 section ".exit.text" {
  %1 = load ptr, ptr @ohci_debug_root, align 4
  tail call void @debugfs_remove(ptr noundef %1) #14
  tail call void @_clear_bit(i32 noundef 1, ptr noundef nonnull @usb_hcds_loaded) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @io_watchdog_func(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -620
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #14
  %4 = getelementptr i8, ptr %0, i32 -616
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ohci_regs, ptr %5, i32 0, i32 3
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %60

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -12
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr i8, ptr %0, i32 -8
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %10
  %17 = getelementptr i8, ptr %0, i32 -4
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %60, label %20

20:                                               ; preds = %225, %16
  %21 = phi ptr [ @.str.3, %225 ], [ @.str.2, %16 ]
  %22 = getelementptr i8, ptr %0, i32 -972
  %23 = load ptr, ptr %22, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull %21) #15
  %24 = getelementptr i8, ptr %0, i32 -972
  tail call void @usb_hc_died(ptr noundef %24) #14
  %25 = load ptr, ptr %4, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %27 = getelementptr inbounds %struct.ohci_regs, ptr %25, i32 0, i32 1
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %29 = getelementptr inbounds %struct.ohci_regs, ptr %25, i32 0, i32 2
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %31 = getelementptr inbounds %struct.ohci_regs, ptr %25, i32 0, i32 3
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %33 = getelementptr inbounds %struct.ohci_regs, ptr %25, i32 0, i32 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %35 = getelementptr inbounds %struct.ohci_regs, ptr %25, i32 0, i32 7
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %37 = getelementptr inbounds %struct.ohci_regs, ptr %25, i32 0, i32 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %39 = getelementptr inbounds %struct.ohci_regs, ptr %25, i32 0, i32 9
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %41 = getelementptr inbounds %struct.ohci_regs, ptr %25, i32 0, i32 10
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %43 = getelementptr inbounds %struct.ohci_regs, ptr %25, i32 0, i32 11
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %45 = getelementptr inbounds %struct.ohci_regs, ptr %25, i32 0, i32 12
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  tail call fastcc void @ohci_dump_roothub(ptr noundef %2, ptr noundef null, ptr noundef null) #14
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr inbounds %struct.ohci_regs, ptr %47, i32 0, i32 5
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 -1) #14, !srcloc !11
  %49 = load ptr, ptr %4, align 4
  %50 = getelementptr inbounds %struct.ohci_regs, ptr %49, i32 0, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 1) #14, !srcloc !11
  %51 = load ptr, ptr %4, align 4
  %52 = getelementptr inbounds %struct.ohci_regs, ptr %51, i32 0, i32 2
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 2147480) #14
  %55 = getelementptr i8, ptr %0, i32 -28
  %56 = load i32, ptr %55, align 8
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr inbounds %struct.ohci_regs, ptr %57, i32 0, i32 13
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #14, !srcloc !11
  %59 = getelementptr i8, ptr %0, i32 -172
  store i32 0, ptr %59, align 8
  br label %241

60:                                               ; preds = %16, %10, %1
  %61 = phi i1 [ false, %1 ], [ false, %10 ], [ true, %16 ]
  %62 = getelementptr i8, ptr %0, i32 -180
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %63, %62
  br i1 %64, label %176, label %65

65:                                               ; preds = %60
  %66 = getelementptr i8, ptr %0, i32 -12
  %67 = getelementptr i8, ptr %0, i32 -192
  %68 = getelementptr i8, ptr %0, i32 -196
  br label %69

69:                                               ; preds = %173, %65
  %70 = phi ptr [ %63, %65 ], [ %174, %173 ]
  %71 = getelementptr i8, ptr %70, i32 24
  %72 = load ptr, ptr %71, align 16
  %73 = icmp eq ptr %72, null
  br i1 %73, label %122, label %74

74:                                               ; preds = %69
  br i1 %61, label %81, label %75

75:                                               ; preds = %74
  %76 = load i32, ptr %66, align 8
  %77 = getelementptr i8, ptr %70, i32 20
  %78 = load i32, ptr %77, align 4
  %79 = sub i32 %76, %78
  %80 = icmp sgt i32 %79, -1
  br i1 %80, label %81, label %119

81:                                               ; preds = %75, %74
  %82 = getelementptr inbounds %struct.td, ptr %72, i32 0, i32 8
  %83 = load ptr, ptr %82, align 32
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %119

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.td, ptr %72, i32 0, i32 6
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.td, ptr %72, i32 0, i32 12, i32 1
  %89 = getelementptr inbounds %struct.ed, ptr %87, i32 0, i32 8
  %90 = load ptr, ptr %88, align 4
  %91 = icmp eq ptr %90, %89
  br i1 %91, label %103, label %92

92:                                               ; preds = %98, %85
  %93 = phi ptr [ %101, %98 ], [ %90, %85 ]
  %94 = phi ptr [ %99, %98 ], [ %72, %85 ]
  %95 = getelementptr i8, ptr %93, i32 -16
  %96 = load ptr, ptr %95, align 32
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = getelementptr i8, ptr %93, i32 -48
  store ptr %94, ptr %95, align 32
  %100 = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, %89
  br i1 %102, label %103, label %92

103:                                              ; preds = %98, %92, %85
  %104 = phi ptr [ %72, %85 ], [ %99, %98 ], [ %94, %92 ]
  %105 = load ptr, ptr %67, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.td, ptr %105, i32 0, i32 8
  store ptr %104, ptr %108, align 32
  br label %110

109:                                              ; preds = %103
  store ptr %104, ptr %68, align 8
  br label %110

110:                                              ; preds = %109, %107
  store ptr %72, ptr %82, align 32
  store ptr %72, ptr %67, align 4
  %111 = getelementptr inbounds %struct.ed, ptr %87, i32 0, i32 18
  %112 = load ptr, ptr %111, align 16
  %113 = icmp eq ptr %112, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.td, ptr %112, i32 0, i32 8
  %116 = load ptr, ptr %115, align 32
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  store ptr null, ptr %111, align 16
  br label %119

119:                                              ; preds = %118, %114, %110, %81, %75
  %120 = load ptr, ptr %71, align 16
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %140

122:                                              ; preds = %119, %69
  %123 = getelementptr i8, ptr %70, i32 -8
  %124 = load ptr, ptr %123, align 16
  %125 = icmp eq ptr %124, %123
  br i1 %125, label %140, label %126

126:                                              ; preds = %122
  %127 = getelementptr i8, ptr %124, i32 -16
  %128 = load ptr, ptr %127, align 32
  %129 = icmp eq ptr %128, null
  br i1 %129, label %140, label %130

130:                                              ; preds = %134, %126
  %131 = phi ptr [ %132, %134 ], [ %124, %126 ]
  %132 = load ptr, ptr %131, align 16
  %133 = icmp eq ptr %132, %123
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = getelementptr i8, ptr %132, i32 -16
  %136 = load ptr, ptr %135, align 32
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %130

138:                                              ; preds = %134, %130
  %139 = getelementptr i8, ptr %131, i32 -48
  br label %140

140:                                              ; preds = %138, %126, %122, %119
  %141 = phi ptr [ %120, %119 ], [ null, %122 ], [ null, %126 ], [ %139, %138 ]
  %142 = getelementptr i8, ptr %70, i32 -32
  %143 = load volatile i32, ptr %142, align 8
  %144 = and i32 %143, -32
  %145 = icmp eq ptr %141, null
  %146 = getelementptr i8, ptr %70, i32 -56
  %147 = select i1 %145, ptr %146, ptr %141
  %148 = getelementptr inbounds %struct.td, ptr %147, i32 0, i32 12
  %149 = getelementptr i8, ptr %70, i32 -8
  %150 = load ptr, ptr %148, align 16
  %151 = icmp eq ptr %150, %149
  br i1 %151, label %173, label %152

152:                                              ; preds = %140
  %153 = getelementptr i8, ptr %150, i32 -8
  %154 = load i32, ptr %153, align 8
  %155 = icmp eq i32 %144, %154
  br i1 %155, label %166, label %156

156:                                              ; preds = %160, %152
  %157 = phi ptr [ %158, %160 ], [ %150, %152 ]
  %158 = load ptr, ptr %157, align 16
  %159 = icmp eq ptr %158, %149
  br i1 %159, label %164, label %160

160:                                              ; preds = %156
  %161 = getelementptr i8, ptr %158, i32 -8
  %162 = load i32, ptr %161, align 8
  %163 = icmp eq i32 %144, %162
  br i1 %163, label %164, label %156

164:                                              ; preds = %160, %156
  %165 = getelementptr i8, ptr %157, i32 -48
  br label %166

166:                                              ; preds = %164, %152
  %167 = phi ptr [ %141, %152 ], [ %165, %164 ]
  %168 = icmp eq ptr %167, %141
  br i1 %168, label %173, label %169

169:                                              ; preds = %166
  %170 = load i32, ptr %66, align 8
  %171 = add i32 %170, 2
  %172 = getelementptr i8, ptr %70, i32 20
  store i32 %171, ptr %172, align 4
  store ptr %167, ptr %71, align 16
  br label %173

173:                                              ; preds = %169, %166, %140
  %174 = load ptr, ptr %70, align 8
  %175 = icmp eq ptr %174, %62
  br i1 %175, label %176, label %69

176:                                              ; preds = %173, %60
  tail call fastcc void @ohci_work(ptr noundef %2)
  %177 = getelementptr i8, ptr %0, i32 -172
  %178 = load i32, ptr %177, align 8
  %179 = icmp eq i32 %178, 2
  br i1 %179, label %180, label %241

180:                                              ; preds = %176
  %181 = getelementptr i8, ptr %0, i32 -612
  %182 = load ptr, ptr %181, align 8
  %183 = getelementptr inbounds %struct.ohci_hcca, ptr %182, i32 0, i32 1
  %184 = load i32, ptr %183, align 4
  %185 = and i32 %184, 65535
  %186 = getelementptr i8, ptr %0, i32 -16
  %187 = load i32, ptr %186, align 4
  %188 = icmp eq i32 %187, %185
  br i1 %188, label %189, label %227

189:                                              ; preds = %180
  %190 = getelementptr i8, ptr %0, i32 -168
  %191 = load i32, ptr %190, align 4
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %227

193:                                              ; preds = %189
  %194 = getelementptr i8, ptr %0, i32 -20
  br label %195

195:                                              ; preds = %216, %193
  %196 = phi i32 [ 0, %193 ], [ %222, %216 ]
  %197 = phi i32 [ 0, %193 ], [ %221, %216 ]
  %198 = load ptr, ptr %4, align 4
  %199 = getelementptr %struct.ohci_regs, ptr %198, i32 0, i32 18, i32 3, i32 %196
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %199) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %201 = icmp eq i32 %200, -1
  br i1 %201, label %202, label %203

202:                                              ; preds = %195
  store i32 0, ptr %177, align 8
  br label %216

203:                                              ; preds = %195
  %204 = load i32, ptr %194, align 8
  %205 = and i32 %204, 1
  %206 = icmp eq i32 %205, 0
  %207 = and i32 %200, -2032416
  %208 = icmp eq i32 %207, 0
  %209 = select i1 %206, i1 true, i1 %208
  br i1 %209, label %216, label %210

210:                                              ; preds = %210, %203
  %211 = load ptr, ptr %4, align 4
  %212 = getelementptr %struct.ohci_regs, ptr %211, i32 0, i32 18, i32 3, i32 %196
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %212) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %214 = and i32 %213, -2032416
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %210

216:                                              ; preds = %210, %203, %202
  %217 = phi i32 [ -1, %202 ], [ %200, %203 ], [ %213, %210 ]
  %218 = and i32 %217, 6
  %219 = icmp eq i32 %218, 2
  %220 = zext i1 %219 to i32
  %221 = add i32 %197, %220
  %222 = add nuw nsw i32 %196, 1
  %223 = load i32, ptr %190, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %195, label %225

225:                                              ; preds = %216
  %226 = icmp sgt i32 %221, 0
  br i1 %226, label %20, label %227

227:                                              ; preds = %225, %189, %180
  %228 = load volatile ptr, ptr %62, align 4
  %229 = icmp eq ptr %228, %62
  br i1 %229, label %241, label %230

230:                                              ; preds = %227
  %231 = getelementptr i8, ptr %0, i32 -12
  %232 = load i32, ptr %231, align 8
  %233 = getelementptr i8, ptr %0, i32 -8
  store i32 %232, ptr %233, align 4
  %234 = load ptr, ptr %4, align 4
  %235 = getelementptr inbounds %struct.ohci_regs, ptr %234, i32 0, i32 12
  %236 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %235) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %237 = getelementptr i8, ptr %0, i32 -4
  store i32 %236, ptr %237, align 8
  %238 = load volatile i32, ptr @jiffies, align 64
  %239 = add i32 %238, 28
  %240 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %239) #14
  br label %241

241:                                              ; preds = %230, %227, %176, %20
  %242 = phi i32 [ -256, %20 ], [ -256, %227 ], [ %185, %230 ], [ -256, %176 ]
  %243 = getelementptr i8, ptr %0, i32 -16
  store i32 %242, ptr %243, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_dma_alloc_align(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ohci_stop(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %6 = getelementptr inbounds %struct.ohci_regs, ptr %4, i32 0, i32 1
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %8 = getelementptr inbounds %struct.ohci_regs, ptr %4, i32 0, i32 2
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %10 = getelementptr inbounds %struct.ohci_regs, ptr %4, i32 0, i32 3
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %12 = getelementptr inbounds %struct.ohci_regs, ptr %4, i32 0, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %14 = getelementptr inbounds %struct.ohci_regs, ptr %4, i32 0, i32 7
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %16 = getelementptr inbounds %struct.ohci_regs, ptr %4, i32 0, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %18 = getelementptr inbounds %struct.ohci_regs, ptr %4, i32 0, i32 9
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %20 = getelementptr inbounds %struct.ohci_regs, ptr %4, i32 0, i32 10
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %22 = getelementptr inbounds %struct.ohci_regs, ptr %4, i32 0, i32 11
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %24 = getelementptr inbounds %struct.ohci_regs, ptr %4, i32 0, i32 12
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  tail call fastcc void @ohci_dump_roothub(ptr noundef %2, ptr noundef null, ptr noundef null) #14
  %26 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 21, i32 3, i32 1
  %32 = tail call zeroext i1 @flush_work(ptr noundef %31) #14
  br label %33

33:                                               ; preds = %30, %1
  %34 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 21
  %35 = tail call i32 @del_timer_sync(ptr noundef %34) #14
  %36 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 3
  store i32 -256, ptr %36, align 4
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr inbounds %struct.ohci_regs, ptr %37, i32 0, i32 5
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 -2147483648) #14, !srcloc !11
  %39 = load ptr, ptr %3, align 4
  %40 = getelementptr inbounds %struct.ohci_regs, ptr %39, i32 0, i32 1
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %42 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 2
  %43 = and i32 %41, 512
  store i32 %43, ptr %42, align 8
  %44 = load ptr, ptr %3, align 4
  %45 = getelementptr inbounds %struct.ohci_regs, ptr %44, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #14, !srcloc !11
  %46 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 3
  store i32 0, ptr %46, align 8
  %47 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 15
  %48 = load i32, ptr %47, align 4
  %49 = tail call ptr @free_irq(i32 noundef %48, ptr noundef %0) #14
  store i32 0, ptr %47, align 4
  %50 = load i32, ptr %26, align 8
  %51 = and i32 %50, 512
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %33
  tail call void @usb_amd_dev_put() #14
  br label %54

54:                                               ; preds = %53, %33
  %55 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 21, i32 3, i32 5
  %56 = load ptr, ptr %55, align 8
  tail call void @debugfs_remove(ptr noundef %56) #14
  %57 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 7, i32 2
  %58 = load ptr, ptr %57, align 8
  tail call void @dma_pool_destroy(ptr noundef %58) #14
  store ptr null, ptr %57, align 8
  %59 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8
  %60 = load ptr, ptr %59, align 4
  tail call void @dma_pool_destroy(ptr noundef %60) #14
  store ptr null, ptr %59, align 4
  %61 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 2
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %76, label %64

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 28
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = ptrtoint ptr %62 to i32
  tail call void @gen_pool_free_owner(ptr noundef nonnull %66, i32 noundef %69, i32 noundef 256, ptr noundef null) #14
  br label %74

70:                                               ; preds = %64
  %71 = load ptr, ptr %0, align 8
  %72 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  tail call void @dma_free_attrs(ptr noundef %71, i32 noundef 256, ptr noundef nonnull %62, i32 noundef %73, i32 noundef 0) #14
  br label %74

74:                                               ; preds = %70, %68
  store ptr null, ptr %61, align 8
  %75 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 3
  store i32 0, ptr %75, align 4
  br label %76

76:                                               ; preds = %74, %54
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hc_died(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ohci_dump_roothub(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ohci_regs, ptr %5, i32 0, i32 18
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %23, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 23
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %7, -66068480
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %17, %9
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.ohci_regs, ptr %18, i32 0, i32 18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %21 = and i32 %20, -66068480
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %17

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 16
  store i32 0, ptr %24, align 8
  br label %174

25:                                               ; preds = %17, %9
  %26 = phi i32 [ %7, %9 ], [ %20, %17 ]
  %27 = icmp eq ptr %1, null
  br i1 %27, label %55, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %1, align 4
  %30 = load i32, ptr %2, align 4
  %31 = lshr i32 %26, 24
  %32 = and i32 %26, 4096
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, ptr @.str.9, ptr @.str.49
  %35 = and i32 %26, 2048
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, ptr @.str.9, ptr @.str.50
  %38 = and i32 %26, 1024
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, ptr @.str.9, ptr @.str.51
  %41 = and i32 %26, 512
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, ptr @.str.9, ptr @.str.52
  %44 = and i32 %26, 256
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, ptr @.str.9, ptr @.str.53
  %47 = and i32 %26, 255
  %48 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 17
  %49 = load i32, ptr %48, align 4
  %50 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %29, i32 noundef %30, ptr noundef nonnull @.str.48, i32 noundef %26, i32 noundef %31, ptr noundef nonnull %34, ptr noundef nonnull %37, ptr noundef nonnull %40, ptr noundef nonnull %43, ptr noundef nonnull %46, i32 noundef %47, i32 noundef %49) #14
  %51 = load i32, ptr %2, align 4
  %52 = sub i32 %51, %50
  store i32 %52, ptr %2, align 4
  %53 = load ptr, ptr %1, align 4
  %54 = getelementptr i8, ptr %53, i32 %50
  store ptr %54, ptr %1, align 4
  br label %55

55:                                               ; preds = %28, %25
  %56 = load ptr, ptr %4, align 4
  %57 = getelementptr inbounds %struct.ohci_regs, ptr %56, i32 0, i32 18, i32 1
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br i1 %27, label %69, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %1, align 4
  %61 = load i32, ptr %2, align 4
  %62 = lshr i32 %58, 16
  %63 = and i32 %58, 65535
  %64 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %60, i32 noundef %61, ptr noundef nonnull @.str.54, i32 noundef %58, i32 noundef %62, i32 noundef %63) #14
  %65 = load i32, ptr %2, align 4
  %66 = sub i32 %65, %64
  store i32 %66, ptr %2, align 4
  %67 = load ptr, ptr %1, align 4
  %68 = getelementptr i8, ptr %67, i32 %64
  store ptr %68, ptr %1, align 4
  br label %69

69:                                               ; preds = %59, %55
  %70 = load ptr, ptr %4, align 4
  %71 = getelementptr inbounds %struct.ohci_regs, ptr %70, i32 0, i32 18, i32 2
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br i1 %27, label %98, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %1, align 4
  %75 = load i32, ptr %2, align 4
  %76 = icmp sgt i32 %72, -1
  %77 = select i1 %76, ptr @.str.9, ptr @.str.56
  %78 = and i32 %72, 131072
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %79, ptr @.str.9, ptr @.str.57
  %81 = and i32 %72, 65536
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %82, ptr @.str.9, ptr @.str.58
  %84 = and i32 %72, 32768
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, ptr @.str.9, ptr @.str.59
  %87 = and i32 %72, 2
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, ptr @.str.9, ptr @.str.60
  %90 = and i32 %72, 1
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, ptr @.str.9, ptr @.str.61
  %93 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %74, i32 noundef %75, ptr noundef nonnull @.str.55, i32 noundef %72, ptr noundef nonnull %77, ptr noundef nonnull %80, ptr noundef nonnull %83, ptr noundef nonnull %86, ptr noundef nonnull %89, ptr noundef nonnull %92) #14
  %94 = load i32, ptr %2, align 4
  %95 = sub i32 %94, %93
  store i32 %95, ptr %2, align 4
  %96 = load ptr, ptr %1, align 4
  %97 = getelementptr i8, ptr %96, i32 %93
  store ptr %97, ptr %1, align 4
  br label %98

98:                                               ; preds = %73, %69
  %99 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 17
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %174, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 16
  br label %104

104:                                              ; preds = %170, %102
  %105 = phi i32 [ 0, %102 ], [ %171, %170 ]
  %106 = load ptr, ptr %4, align 4
  %107 = getelementptr %struct.ohci_regs, ptr %106, i32 0, i32 18, i32 3, i32 %105
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store i32 0, ptr %103, align 8
  br label %124

111:                                              ; preds = %104
  %112 = load i32, ptr %10, align 8
  %113 = and i32 %112, 1
  %114 = icmp eq i32 %113, 0
  %115 = and i32 %108, -2032416
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %114, i1 true, i1 %116
  br i1 %117, label %124, label %118

118:                                              ; preds = %118, %111
  %119 = load ptr, ptr %4, align 4
  %120 = getelementptr %struct.ohci_regs, ptr %119, i32 0, i32 18, i32 3, i32 %105
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %122 = and i32 %121, -2032416
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %118

124:                                              ; preds = %118, %111, %110
  %125 = phi i32 [ -1, %110 ], [ %108, %111 ], [ %121, %118 ]
  br i1 %27, label %170, label %126

126:                                              ; preds = %124
  %127 = load ptr, ptr %1, align 4
  %128 = load i32, ptr %2, align 4
  %129 = and i32 %125, 1048576
  %130 = icmp eq i32 %129, 0
  %131 = select i1 %130, ptr @.str.9, ptr @.str.63
  %132 = and i32 %125, 524288
  %133 = icmp eq i32 %132, 0
  %134 = select i1 %133, ptr @.str.9, ptr @.str.57
  %135 = and i32 %125, 262144
  %136 = icmp eq i32 %135, 0
  %137 = select i1 %136, ptr @.str.9, ptr @.str.64
  %138 = and i32 %125, 131072
  %139 = icmp eq i32 %138, 0
  %140 = select i1 %139, ptr @.str.9, ptr @.str.65
  %141 = and i32 %125, 65536
  %142 = icmp eq i32 %141, 0
  %143 = select i1 %142, ptr @.str.9, ptr @.str.66
  %144 = and i32 %125, 512
  %145 = icmp eq i32 %144, 0
  %146 = select i1 %145, ptr @.str.9, ptr @.str.67
  %147 = and i32 %125, 256
  %148 = icmp eq i32 %147, 0
  %149 = select i1 %148, ptr @.str.9, ptr @.str.68
  %150 = and i32 %125, 16
  %151 = icmp eq i32 %150, 0
  %152 = select i1 %151, ptr @.str.9, ptr @.str.69
  %153 = and i32 %125, 8
  %154 = icmp eq i32 %153, 0
  %155 = select i1 %154, ptr @.str.9, ptr @.str.70
  %156 = and i32 %125, 4
  %157 = icmp eq i32 %156, 0
  %158 = select i1 %157, ptr @.str.9, ptr @.str.71
  %159 = and i32 %125, 2
  %160 = icmp eq i32 %159, 0
  %161 = select i1 %160, ptr @.str.9, ptr @.str.72
  %162 = and i32 %125, 1
  %163 = icmp eq i32 %162, 0
  %164 = select i1 %163, ptr @.str.9, ptr @.str.73
  %165 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %127, i32 noundef %128, ptr noundef nonnull @.str.62, i32 noundef %105, i32 noundef %125, ptr noundef nonnull %131, ptr noundef nonnull %134, ptr noundef nonnull %137, ptr noundef nonnull %140, ptr noundef nonnull %143, ptr noundef nonnull %146, ptr noundef nonnull %149, ptr noundef nonnull %152, ptr noundef nonnull %155, ptr noundef nonnull %158, ptr noundef nonnull %161, ptr noundef nonnull %164) #14
  %166 = load i32, ptr %2, align 4
  %167 = sub i32 %166, %165
  store i32 %167, ptr %2, align 4
  %168 = load ptr, ptr %1, align 4
  %169 = getelementptr i8, ptr %168, i32 %165
  store ptr %169, ptr %1, align 4
  br label %170

170:                                              ; preds = %126, %124
  %171 = add nuw i32 %105, 1
  %172 = load i32, ptr %99, align 4
  %173 = icmp ult i32 %171, %172
  br i1 %173, label %104, label %174

174:                                              ; preds = %170, %98, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_amd_dev_put() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @debug_output(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.debug_buffer, ptr %6, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %7) #14
  %8 = getelementptr inbounds %struct.debug_buffer, ptr %6, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.debug_buffer, ptr %6, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = tail call i32 @get_zeroed_page(i32 noundef 3264) #14
  %17 = inttoptr i32 %16 to ptr
  store ptr %17, ptr %12, align 4
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15, %11
  %20 = load ptr, ptr %6, align 4
  %21 = tail call i32 %20(ptr noundef %6) #14
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 %21, ptr %8, align 4
  br label %26

24:                                               ; preds = %19, %15
  %25 = phi i32 [ -12, %15 ], [ %21, %19 ]
  tail call void @mutex_unlock(ptr noundef %7) #14
  br label %31

26:                                               ; preds = %23, %4
  tail call void @mutex_unlock(ptr noundef %7) #14
  %27 = getelementptr inbounds %struct.debug_buffer, ptr %6, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr %8, align 4
  %30 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %28, i32 noundef %29) #14
  br label %31

31:                                               ; preds = %26, %24
  %32 = phi i32 [ %25, %24 ], [ %30, %26 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @debug_async_open(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 36) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.debug_buffer, ptr %6, i32 0, i32 1
  store ptr %4, ptr %9, align 4
  store ptr @fill_async_buffer, ptr %6, align 8
  %10 = getelementptr inbounds %struct.debug_buffer, ptr %6, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %10, ptr noundef nonnull @.str.79, ptr noundef nonnull @alloc_buffer.__key) #14
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ -12, %2 ], [ 0, %8 ]
  %13 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %6, ptr %13, align 8
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @debug_close(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.debug_buffer, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = ptrtoint ptr %8 to i32
  tail call void @free_pages(i32 noundef %11, i32 noundef 0) #14
  br label %12

12:                                               ; preds = %10, %6
  tail call void @kfree(ptr noundef nonnull %4) #14
  br label %13

13:                                               ; preds = %12, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fill_async_buffer(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.debug_buffer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #14
  %5 = getelementptr inbounds %struct.debug_buffer, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ohci_hcd, ptr %3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = tail call fastcc i32 @show_list(ptr noundef %6, i32 noundef 4096, ptr noundef %8)
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 %9
  %12 = sub i32 4096, %9
  %13 = getelementptr inbounds %struct.ohci_hcd, ptr %3, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = tail call fastcc i32 @show_list(ptr noundef %11, i32 noundef %12, ptr noundef %14)
  %16 = add i32 %15, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #14
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @show_list(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %82, label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %8, %5 ], [ %2, %3 ]
  %7 = getelementptr inbounds %struct.ed, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5

10:                                               ; preds = %71, %5
  %11 = phi ptr [ %76, %71 ], [ %0, %5 ]
  %12 = phi ptr [ %78, %71 ], [ %6, %5 ]
  %13 = phi i32 [ %75, %71 ], [ %1, %5 ]
  %14 = load i32, ptr %12, align 16
  %15 = getelementptr inbounds %struct.ed, ptr %12, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %14, 8192
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 102, i32 108
  %20 = and i32 %14, 127
  %21 = lshr i32 %14, 7
  %22 = and i32 %21, 15
  %23 = and i32 %14, 4096
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, ptr @.str.82, ptr @.str.81
  %26 = lshr i32 %14, 16
  %27 = and i32 %26, 1023
  %28 = and i32 %14, 16384
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, ptr @.str.9, ptr @.str.83
  %31 = and i32 %16, 1
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, ptr @.str.9, ptr @.str.84
  %34 = and i32 %16, 2
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, ptr @data0, ptr @data1
  %37 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %11, i32 noundef %13, ptr noundef nonnull @.str.80, ptr noundef nonnull %12, i32 noundef %19, i32 noundef %20, i32 noundef %22, ptr noundef nonnull %25, i32 noundef %27, i32 noundef %14, ptr noundef nonnull %30, ptr noundef nonnull %33, ptr noundef nonnull %36) #14
  %38 = sub i32 %13, %37
  %39 = getelementptr i8, ptr %11, i32 %37
  %40 = getelementptr inbounds %struct.ed, ptr %12, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %71, label %43

43:                                               ; preds = %57, %10
  %44 = phi ptr [ %69, %57 ], [ %41, %10 ]
  %45 = phi ptr [ %68, %57 ], [ %39, %10 ]
  %46 = phi i32 [ %67, %57 ], [ %38, %10 ]
  %47 = getelementptr i8, ptr %44, i32 -48
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr i8, ptr %44, i32 -44
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr i8, ptr %44, i32 -36
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %48, 1572864
  switch i32 %53, label %56 [
    i32 0, label %57
    i32 1048576, label %54
    i32 524288, label %55
  ]

54:                                               ; preds = %43
  br label %57

55:                                               ; preds = %43
  br label %57

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %55, %54, %43
  %58 = phi ptr [ @.str.87, %56 ], [ @.str.82, %55 ], [ @.str.81, %54 ], [ @.str.86, %43 ]
  %59 = icmp eq i32 %50, 0
  %60 = sub i32 1, %50
  %61 = add i32 %60, %52
  %62 = select i1 %59, i32 0, i32 %61
  %63 = lshr i32 %48, 28
  %64 = getelementptr i8, ptr %44, i32 -12
  %65 = load ptr, ptr %64, align 4
  %66 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %45, i32 noundef %46, ptr noundef nonnull @.str.85, ptr noundef %47, ptr noundef nonnull %58, i32 noundef %62, i32 noundef %63, ptr noundef %65, i32 noundef %48) #14
  %67 = sub i32 %46, %66
  %68 = getelementptr i8, ptr %45, i32 %66
  %69 = load ptr, ptr %44, align 4
  %70 = icmp eq ptr %69, %40
  br i1 %70, label %71, label %43

71:                                               ; preds = %57, %10
  %72 = phi i32 [ %38, %10 ], [ %67, %57 ]
  %73 = phi ptr [ %39, %10 ], [ %68, %57 ]
  %74 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %73, i32 noundef %72, ptr noundef nonnull @.str.88) #14
  %75 = sub i32 %72, %74
  %76 = getelementptr i8, ptr %73, i32 %74
  %77 = getelementptr inbounds %struct.ed, ptr %12, i32 0, i32 6
  %78 = load ptr, ptr %77, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %10

80:                                               ; preds = %71
  %81 = sub i32 %1, %75
  br label %82

82:                                               ; preds = %80, %3
  %83 = phi i32 [ %81, %80 ], [ 0, %3 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @debug_periodic_open(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 36) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.debug_buffer, ptr %6, i32 0, i32 1
  store ptr %4, ptr %9, align 4
  store ptr @fill_periodic_buffer, ptr %6, align 8
  %10 = getelementptr inbounds %struct.debug_buffer, ptr %6, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %10, ptr noundef nonnull @.str.79, ptr noundef nonnull @alloc_buffer.__key) #14
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ -12, %2 ], [ 0, %8 ]
  %13 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %6, ptr %13, align 8
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fill_periodic_buffer(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2592, i32 noundef 256) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %110, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.debug_buffer, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.debug_buffer, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %9, i32 noundef 4096, ptr noundef nonnull @.str.89, i32 noundef 32) #14
  %11 = sub i32 4096, %10
  %12 = getelementptr i8, ptr %9, i32 %10
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #14
  br label %14

14:                                               ; preds = %102, %5
  %15 = phi i32 [ 0, %5 ], [ %106, %102 ]
  %16 = phi ptr [ %12, %5 ], [ %105, %102 ]
  %17 = phi i32 [ 0, %5 ], [ %104, %102 ]
  %18 = phi i32 [ %11, %5 ], [ %103, %102 ]
  %19 = getelementptr %struct.ohci_hcd, ptr %7, i32 0, i32 7, i32 %15
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %102, label %22

22:                                               ; preds = %14
  %23 = getelementptr %struct.ohci_hcd, ptr %7, i32 0, i32 18, i32 %15
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %16, i32 noundef %18, ptr noundef nonnull @.str.90, i32 noundef %15, i32 noundef %24) #14
  %26 = sub i32 %18, %25
  %27 = getelementptr i8, ptr %16, i32 %25
  br label %28

28:                                               ; preds = %90, %22
  %29 = phi ptr [ %20, %22 ], [ %93, %90 ]
  %30 = phi i32 [ %26, %22 ], [ %84, %90 ]
  %31 = phi i32 [ %17, %22 ], [ %91, %90 ]
  %32 = phi ptr [ %27, %22 ], [ %85, %90 ]
  %33 = getelementptr inbounds %struct.ed, ptr %29, i32 0, i32 13
  %34 = load i16, ptr %33, align 4
  %35 = zext i16 %34 to i32
  %36 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %32, i32 noundef %30, ptr noundef nonnull @.str.91, i32 noundef %35, ptr noundef nonnull %29) #14
  %37 = sub i32 %30, %36
  %38 = getelementptr i8, ptr %32, i32 %36
  %39 = icmp eq i32 %31, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %45, %28
  %41 = phi i32 [ %46, %45 ], [ 0, %28 ]
  %42 = getelementptr ptr, ptr %3, i32 %41
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %29
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = add nuw i32 %41, 1
  %47 = icmp eq i32 %46, %31
  br i1 %47, label %51, label %40

48:                                               ; preds = %40, %28
  %49 = phi i32 [ 0, %28 ], [ %41, %40 ]
  %50 = icmp eq i32 %49, %31
  br i1 %50, label %51, label %95

51:                                               ; preds = %48, %45
  %52 = load i32, ptr %29, align 16
  %53 = getelementptr inbounds %struct.ed, ptr %29, i32 0, i32 8
  br label %54

54:                                               ; preds = %54, %51
  %55 = phi ptr [ %53, %51 ], [ %57, %54 ]
  %56 = phi i32 [ 0, %51 ], [ %59, %54 ]
  %57 = load ptr, ptr %55, align 4
  %58 = icmp eq ptr %57, %53
  %59 = add i32 %56, 1
  br i1 %58, label %60, label %54

60:                                               ; preds = %54
  %61 = and i32 %52, 8192
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, i32 102, i32 108
  %64 = and i32 %52, 127
  %65 = lshr i32 %52, 7
  %66 = and i32 %65, 15
  %67 = and i32 %52, 4096
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, ptr @.str.82, ptr @.str.81
  %70 = and i32 %52, 32768
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, ptr @.str.94, ptr @.str.93
  %73 = lshr i32 %52, 16
  %74 = and i32 %73, 1023
  %75 = and i32 %52, 16384
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %76, ptr @.str.9, ptr @.str.95
  %78 = getelementptr inbounds %struct.ed, ptr %29, i32 0, i32 2
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, ptr @.str.9, ptr @.str.84
  %83 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %38, i32 noundef %37, ptr noundef nonnull @.str.92, i32 noundef %63, i32 noundef %64, i32 noundef %66, ptr noundef nonnull %69, ptr noundef nonnull %72, i32 noundef %56, i32 noundef %74, i32 noundef %52, ptr noundef nonnull %77, ptr noundef nonnull %82) #14
  %84 = sub i32 %37, %83
  %85 = getelementptr i8, ptr %38, i32 %83
  %86 = icmp ult i32 %31, 64
  br i1 %86, label %87, label %90

87:                                               ; preds = %60
  %88 = add nuw nsw i32 %31, 1
  %89 = getelementptr ptr, ptr %3, i32 %31
  store ptr %29, ptr %89, align 4
  br label %90

90:                                               ; preds = %87, %60
  %91 = phi i32 [ %88, %87 ], [ %31, %60 ]
  %92 = getelementptr inbounds %struct.ed, ptr %29, i32 0, i32 6
  %93 = load ptr, ptr %92, align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %28

95:                                               ; preds = %90, %48
  %96 = phi ptr [ %85, %90 ], [ %38, %48 ]
  %97 = phi i32 [ %91, %90 ], [ %31, %48 ]
  %98 = phi i32 [ %84, %90 ], [ %37, %48 ]
  %99 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %96, i32 noundef %98, ptr noundef nonnull @.str.88) #14
  %100 = sub i32 %98, %99
  %101 = getelementptr i8, ptr %96, i32 %99
  br label %102

102:                                              ; preds = %95, %14
  %103 = phi i32 [ %100, %95 ], [ %18, %14 ]
  %104 = phi i32 [ %97, %95 ], [ %17, %14 ]
  %105 = phi ptr [ %101, %95 ], [ %16, %14 ]
  %106 = add nuw nsw i32 %15, 1
  %107 = icmp eq i32 %106, 32
  br i1 %107, label %108, label %14

108:                                              ; preds = %102
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %13) #14
  tail call void @kfree(ptr noundef nonnull %3) #14
  %109 = sub i32 4096, %103
  br label %110

110:                                              ; preds = %108, %1
  %111 = phi i32 [ %109, %108 ], [ 0, %1 ]
  ret i32 %111
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @debug_registers_open(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 36) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.debug_buffer, ptr %6, i32 0, i32 1
  store ptr %4, ptr %9, align 4
  store ptr @fill_registers_buffer, ptr %6, align 8
  %10 = getelementptr inbounds %struct.debug_buffer, ptr %6, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %10, ptr noundef nonnull @.str.79, ptr noundef nonnull @alloc_buffer.__key) #14
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ -12, %2 ], [ 0, %8 ]
  %13 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %6, ptr %13, align 8
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fill_registers_buffer(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct.debug_buffer, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -352
  %7 = getelementptr inbounds %struct.ohci_hcd, ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.debug_buffer, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  store ptr %10, ptr %3, align 4
  store i32 4096, ptr %2, align 4
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #14
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr %12, align 4
  br label %21

21:                                               ; preds = %19, %1
  %22 = phi ptr [ %20, %19 ], [ %17, %1 ]
  %23 = getelementptr i8, ptr %5, i32 -260
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %10, i32 noundef 4096, ptr noundef nonnull @.str.96, ptr noundef %15, ptr noundef %22, ptr noundef %24, ptr noundef nonnull @hcd_name) #14
  %26 = sub i32 4096, %25
  store i32 %26, ptr %2, align 4
  %27 = getelementptr i8, ptr %10, i32 %25
  store ptr %27, ptr %3, align 4
  %28 = getelementptr i8, ptr %5, i32 -160
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %27, i32 noundef %26, ptr noundef nonnull @.str.97) #14
  %34 = sub i32 %26, %33
  store i32 %34, ptr %2, align 4
  br label %274

35:                                               ; preds = %21
  %36 = load ptr, ptr %7, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %38 = lshr i32 %37, 4
  %39 = and i32 %38, 3
  %40 = and i32 %37, 15
  %41 = getelementptr inbounds %struct.ohci_hcd, ptr %5, i32 0, i32 16
  %42 = load i32, ptr %41, align 8
  %43 = icmp ult i32 %42, 3
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = getelementptr inbounds [3 x ptr], ptr @switch.table.fill_registers_buffer, i32 0, i32 %42
  %46 = load ptr, ptr %45, align 4
  br label %47

47:                                               ; preds = %44, %35
  %48 = phi ptr [ %46, %44 ], [ @.str.32, %35 ]
  %49 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %27, i32 noundef %26, ptr noundef nonnull @.str.4, i32 noundef %39, i32 noundef %40, ptr noundef nonnull @.str.6, ptr noundef nonnull %48) #14
  %50 = sub i32 %26, %49
  %51 = getelementptr i8, ptr %27, i32 %49
  %52 = getelementptr inbounds %struct.ohci_regs, ptr %36, i32 0, i32 1
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %54 = and i32 %53, 1024
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, ptr @.str.9, ptr @.str.8
  %57 = and i32 %53, 512
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, ptr @.str.9, ptr @.str.10
  %60 = and i32 %53, 256
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, ptr @.str.9, ptr @.str.11
  %63 = lshr i32 %53, 6
  %64 = and i32 %63, 3
  %65 = getelementptr inbounds [4 x ptr], ptr @switch.table.fill_registers_buffer.123, i32 0, i32 %64
  %66 = load ptr, ptr %65, align 4
  %67 = and i32 %53, 32
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, ptr @.str.9, ptr @.str.12
  %70 = and i32 %53, 16
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, ptr @.str.9, ptr @.str.13
  %73 = and i32 %53, 8
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, ptr @.str.9, ptr @.str.14
  %76 = and i32 %53, 4
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, ptr @.str.9, ptr @.str.15
  %79 = and i32 %53, 3
  %80 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %51, i32 noundef %50, ptr noundef nonnull @.str.7, i32 noundef %53, ptr noundef nonnull %56, ptr noundef nonnull %59, ptr noundef nonnull %62, ptr noundef nonnull %66, ptr noundef nonnull %69, ptr noundef nonnull %72, ptr noundef nonnull %75, ptr noundef nonnull %78, i32 noundef %79) #14
  %81 = sub i32 %50, %80
  store i32 %81, ptr %2, align 4
  %82 = getelementptr i8, ptr %51, i32 %80
  store ptr %82, ptr %3, align 4
  %83 = getelementptr inbounds %struct.ohci_regs, ptr %36, i32 0, i32 2
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %85 = lshr i32 %84, 16
  %86 = and i32 %85, 3
  %87 = and i32 %84, 8
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, ptr @.str.9, ptr @.str.17
  %90 = and i32 %84, 4
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, ptr @.str.9, ptr @.str.18
  %93 = and i32 %84, 2
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, ptr @.str.9, ptr @.str.19
  %96 = and i32 %84, 1
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %97, ptr @.str.9, ptr @.str.20
  %99 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %82, i32 noundef %81, ptr noundef nonnull @.str.16, i32 noundef %84, i32 noundef %86, ptr noundef nonnull %89, ptr noundef nonnull %92, ptr noundef nonnull %95, ptr noundef nonnull %98) #14
  %100 = sub i32 %81, %99
  %101 = getelementptr i8, ptr %82, i32 %99
  %102 = getelementptr inbounds %struct.ohci_regs, ptr %36, i32 0, i32 3
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %104 = icmp sgt i32 %103, -1
  %105 = select i1 %104, ptr @.str.9, ptr @.str.38
  %106 = and i32 %103, 1073741824
  %107 = icmp eq i32 %106, 0
  %108 = select i1 %107, ptr @.str.9, ptr @.str.39
  %109 = and i32 %103, 64
  %110 = icmp eq i32 %109, 0
  %111 = select i1 %110, ptr @.str.9, ptr @.str.40
  %112 = and i32 %103, 32
  %113 = icmp eq i32 %112, 0
  %114 = select i1 %113, ptr @.str.9, ptr @.str.41
  %115 = and i32 %103, 16
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %116, ptr @.str.9, ptr @.str.42
  %118 = and i32 %103, 8
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %119, ptr @.str.9, ptr @.str.43
  %121 = and i32 %103, 4
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %122, ptr @.str.9, ptr @.str.44
  %124 = and i32 %103, 2
  %125 = icmp eq i32 %124, 0
  %126 = select i1 %125, ptr @.str.9, ptr @.str.45
  %127 = and i32 %103, 1
  %128 = icmp eq i32 %127, 0
  %129 = select i1 %128, ptr @.str.9, ptr @.str.46
  %130 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %101, i32 noundef %100, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.21, i32 noundef %103, ptr noundef nonnull %105, ptr noundef nonnull %108, ptr noundef nonnull %111, ptr noundef nonnull %114, ptr noundef nonnull %117, ptr noundef nonnull %120, ptr noundef nonnull %123, ptr noundef nonnull %126, ptr noundef nonnull %129) #14
  %131 = sub i32 %100, %130
  %132 = getelementptr i8, ptr %101, i32 %130
  %133 = getelementptr inbounds %struct.ohci_regs, ptr %36, i32 0, i32 4
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %135 = icmp sgt i32 %134, -1
  %136 = select i1 %135, ptr @.str.9, ptr @.str.38
  %137 = and i32 %134, 1073741824
  %138 = icmp eq i32 %137, 0
  %139 = select i1 %138, ptr @.str.9, ptr @.str.39
  %140 = and i32 %134, 64
  %141 = icmp eq i32 %140, 0
  %142 = select i1 %141, ptr @.str.9, ptr @.str.40
  %143 = and i32 %134, 32
  %144 = icmp eq i32 %143, 0
  %145 = select i1 %144, ptr @.str.9, ptr @.str.41
  %146 = and i32 %134, 16
  %147 = icmp eq i32 %146, 0
  %148 = select i1 %147, ptr @.str.9, ptr @.str.42
  %149 = and i32 %134, 8
  %150 = icmp eq i32 %149, 0
  %151 = select i1 %150, ptr @.str.9, ptr @.str.43
  %152 = and i32 %134, 4
  %153 = icmp eq i32 %152, 0
  %154 = select i1 %153, ptr @.str.9, ptr @.str.44
  %155 = and i32 %134, 2
  %156 = icmp eq i32 %155, 0
  %157 = select i1 %156, ptr @.str.9, ptr @.str.45
  %158 = and i32 %134, 1
  %159 = icmp eq i32 %158, 0
  %160 = select i1 %159, ptr @.str.9, ptr @.str.46
  %161 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %132, i32 noundef %131, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.22, i32 noundef %134, ptr noundef nonnull %136, ptr noundef nonnull %139, ptr noundef nonnull %142, ptr noundef nonnull %145, ptr noundef nonnull %148, ptr noundef nonnull %151, ptr noundef nonnull %154, ptr noundef nonnull %157, ptr noundef nonnull %160) #14
  %162 = sub i32 %131, %161
  %163 = getelementptr i8, ptr %132, i32 %161
  %164 = getelementptr inbounds %struct.ohci_regs, ptr %36, i32 0, i32 7
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %47
  %168 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %163, i32 noundef %162, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.23, i32 noundef %165) #14
  %169 = sub i32 %162, %168
  store i32 %169, ptr %2, align 4
  %170 = getelementptr i8, ptr %163, i32 %168
  store ptr %170, ptr %3, align 4
  br label %171

171:                                              ; preds = %167, %47
  %172 = phi i32 [ %169, %167 ], [ %162, %47 ]
  %173 = phi ptr [ %170, %167 ], [ %163, %47 ]
  %174 = getelementptr inbounds %struct.ohci_regs, ptr %36, i32 0, i32 8
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %174) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %171
  %178 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %173, i32 noundef %172, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.24, i32 noundef %175) #14
  %179 = sub i32 %172, %178
  %180 = getelementptr i8, ptr %173, i32 %178
  br label %181

181:                                              ; preds = %177, %171
  %182 = phi i32 [ %179, %177 ], [ %172, %171 ]
  %183 = phi ptr [ %180, %177 ], [ %173, %171 ]
  %184 = getelementptr inbounds %struct.ohci_regs, ptr %36, i32 0, i32 9
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %184) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %181
  %188 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %183, i32 noundef %182, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.25, i32 noundef %185) #14
  %189 = sub i32 %182, %188
  %190 = getelementptr i8, ptr %183, i32 %188
  br label %191

191:                                              ; preds = %187, %181
  %192 = phi i32 [ %189, %187 ], [ %182, %181 ]
  %193 = phi ptr [ %190, %187 ], [ %183, %181 ]
  %194 = getelementptr inbounds %struct.ohci_regs, ptr %36, i32 0, i32 10
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %194) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %191
  %198 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %193, i32 noundef %192, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.26, i32 noundef %195) #14
  %199 = sub i32 %192, %198
  store i32 %199, ptr %2, align 4
  %200 = getelementptr i8, ptr %193, i32 %198
  store ptr %200, ptr %3, align 4
  br label %201

201:                                              ; preds = %197, %191
  %202 = phi i32 [ %199, %197 ], [ %192, %191 ]
  %203 = phi ptr [ %200, %197 ], [ %193, %191 ]
  %204 = getelementptr inbounds %struct.ohci_regs, ptr %36, i32 0, i32 11
  %205 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %204) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %201
  %208 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %203, i32 noundef %202, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.27, i32 noundef %205) #14
  %209 = sub i32 %202, %208
  %210 = getelementptr i8, ptr %203, i32 %208
  br label %211

211:                                              ; preds = %207, %201
  %212 = phi i32 [ %209, %207 ], [ %202, %201 ]
  %213 = phi ptr [ %210, %207 ], [ %203, %201 ]
  %214 = getelementptr inbounds %struct.ohci_regs, ptr %36, i32 0, i32 12
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %214) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %221, label %217

217:                                              ; preds = %211
  %218 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %213, i32 noundef %212, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.28, i32 noundef %215) #14
  %219 = sub i32 %212, %218
  %220 = getelementptr i8, ptr %213, i32 %218
  br label %221

221:                                              ; preds = %217, %211
  %222 = phi i32 [ %212, %211 ], [ %219, %217 ]
  %223 = phi ptr [ %213, %211 ], [ %220, %217 ]
  %224 = getelementptr inbounds %struct.ohci_hcd, ptr %5, i32 0, i32 2
  %225 = load ptr, ptr %224, align 8
  %226 = icmp eq ptr %225, null
  br i1 %226, label %234, label %227

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.ohci_hcca, ptr %225, i32 0, i32 1
  %229 = load i32, ptr %228, align 4
  %230 = and i32 %229, 65535
  %231 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %223, i32 noundef %222, ptr noundef nonnull @.str.98, i32 noundef %230) #14
  %232 = sub i32 %222, %231
  %233 = getelementptr i8, ptr %223, i32 %231
  br label %234

234:                                              ; preds = %227, %221
  %235 = phi i32 [ %232, %227 ], [ %222, %221 ]
  %236 = phi ptr [ %233, %227 ], [ %223, %221 ]
  %237 = getelementptr inbounds %struct.ohci_regs, ptr %8, i32 0, i32 13
  %238 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %237) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %239 = icmp sgt i32 %238, -1
  %240 = select i1 %239, ptr @.str.9, ptr @.str.100
  %241 = lshr i32 %238, 16
  %242 = and i32 %241, 61439
  %243 = and i32 %238, 65535
  %244 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %236, i32 noundef %235, ptr noundef nonnull @.str.99, i32 noundef %238, ptr noundef nonnull %240, i32 noundef %242, i32 noundef %243) #14
  %245 = sub i32 %235, %244
  %246 = getelementptr i8, ptr %236, i32 %244
  %247 = getelementptr inbounds %struct.ohci_regs, ptr %8, i32 0, i32 14
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %247) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %249 = icmp sgt i32 %248, -1
  %250 = select i1 %249, ptr @.str.9, ptr @.str.102
  %251 = and i32 %248, 16383
  %252 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %246, i32 noundef %245, ptr noundef nonnull @.str.101, i32 noundef %248, ptr noundef nonnull %250, i32 noundef %251) #14
  %253 = sub i32 %245, %252
  %254 = getelementptr i8, ptr %246, i32 %252
  %255 = getelementptr inbounds %struct.ohci_regs, ptr %8, i32 0, i32 16
  %256 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %255) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %257 = and i32 %256, 16383
  %258 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %254, i32 noundef %253, ptr noundef nonnull @.str.103, i32 noundef %257) #14
  %259 = sub i32 %253, %258
  %260 = getelementptr i8, ptr %254, i32 %258
  %261 = getelementptr inbounds %struct.ohci_regs, ptr %8, i32 0, i32 17
  %262 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %261) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %263 = and i32 %262, 16383
  %264 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %260, i32 noundef %259, ptr noundef nonnull @.str.104, i32 noundef %263) #14
  %265 = sub i32 %259, %264
  store i32 %265, ptr %2, align 4
  %266 = getelementptr i8, ptr %260, i32 %264
  store ptr %266, ptr %3, align 4
  %267 = load i32, ptr %28, align 8
  %268 = and i32 %267, 4
  %269 = icmp eq i32 %268, 0
  %270 = select i1 %269, ptr @.str.107, ptr @.str.106
  %271 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %266, i32 noundef %265, ptr noundef nonnull @.str.105, ptr noundef nonnull %270) #14
  %272 = sub i32 %265, %271
  store i32 %272, ptr %2, align 4
  %273 = getelementptr i8, ptr %266, i32 %271
  store ptr %273, ptr %3, align 4
  call fastcc void @ohci_dump_roothub(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %2)
  br label %274

274:                                              ; preds = %234, %32
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %11) #14
  %275 = load i32, ptr %2, align 4
  %276 = sub i32 4096, %275
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  ret i32 %276
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @td_done(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.td, ptr %1, i32 0, i32 12
  %5 = getelementptr inbounds %struct.td, ptr %1, i32 0, i32 12, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  %9 = and i32 %3, 65536
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %47, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.td, ptr %1, i32 0, i32 4
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = lshr i32 %14, 12
  %16 = icmp ult i32 %3, 268435456
  br i1 %16, label %17, label %96

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 128
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.td, ptr %1, i32 0, i32 5
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i32
  %26 = getelementptr %struct.urb, ptr %0, i32 0, i32 29, i32 %25, i32 1
  %27 = load i32, ptr %26, align 4
  br label %32

28:                                               ; preds = %17
  %29 = icmp eq i32 %15, 9
  %30 = select i1 %29, i32 0, i32 %15
  %31 = and i32 %14, 1023
  br label %32

32:                                               ; preds = %28, %22
  %33 = phi i32 [ %30, %28 ], [ %15, %22 ]
  %34 = phi i32 [ %31, %28 ], [ %27, %22 ]
  %35 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, %34
  store i32 %37, ptr %35, align 4
  %38 = getelementptr inbounds %struct.td, ptr %1, i32 0, i32 5
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i32
  %41 = getelementptr %struct.urb, ptr %0, i32 0, i32 29, i32 %40, i32 2
  store i32 %34, ptr %41, align 4
  %42 = getelementptr [16 x i32], ptr @cc_to_error, i32 0, i32 %33
  %43 = load i32, ptr %42, align 4
  %44 = load i8, ptr %38, align 4
  %45 = zext i8 %44 to i32
  %46 = getelementptr %struct.urb, ptr %0, i32 0, i32 29, i32 %45, i32 3
  store i32 %43, ptr %46, align 4
  br label %96

47:                                               ; preds = %2
  %48 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 10
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.td, ptr %1, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = lshr i32 %3, 28
  %53 = icmp eq i32 %52, 9
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 13
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i32 0, i32 9
  br label %60

60:                                               ; preds = %54, %47
  %61 = phi i32 [ %52, %47 ], [ %59, %54 ]
  %62 = add nsw i32 %61, -1
  %63 = icmp ult i32 %62, 13
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = getelementptr [16 x i32], ptr @cc_to_error, i32 0, i32 %61
  %66 = load i32, ptr %65, align 4
  br label %67

67:                                               ; preds = %64, %60
  %68 = phi i32 [ %66, %64 ], [ -115, %60 ]
  %69 = and i32 %49, -1073741824
  %70 = icmp eq i32 %69, -2147483648
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.td, ptr %1, i32 0, i32 5
  %73 = load i8, ptr %72, align 4
  %74 = icmp ne i8 %73, 0
  %75 = icmp ne i32 %51, 0
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %79, label %96

77:                                               ; preds = %67
  %78 = icmp eq i32 %51, 0
  br i1 %78, label %96, label %79

79:                                               ; preds = %77, %71
  %80 = getelementptr inbounds %struct.td, ptr %1, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  %83 = getelementptr inbounds %struct.td, ptr %1, i32 0, i32 11
  %84 = load i32, ptr %83, align 4
  br i1 %82, label %85, label %91

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %51, 1
  %89 = sub i32 %88, %84
  %90 = add i32 %89, %87
  store i32 %90, ptr %86, align 4
  br label %96

91:                                               ; preds = %79
  %92 = sub i32 %81, %84
  %93 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %92, %94
  store i32 %95, ptr %93, align 4
  br label %96

96:                                               ; preds = %91, %85, %77, %71, %32, %11
  %97 = phi i32 [ -115, %32 ], [ %68, %85 ], [ %68, %91 ], [ %68, %77 ], [ %68, %71 ], [ -115, %11 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @finish_urb(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 -352
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 -276
  %9 = getelementptr i8, ptr %0, i32 -272
  %10 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 23
  %11 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 19
  %12 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.usb_host_endpoint, ptr %7, i32 0, i32 4
  br label %14

14:                                               ; preds = %58, %3
  %15 = phi i32 [ %2, %3 ], [ 0, %58 ]
  %16 = phi ptr [ %1, %3 ], [ %66, %58 ]
  %17 = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call fastcc void @urb_free_priv(ptr noundef %0, ptr noundef %18)
  store ptr null, ptr %17, align 4
  %19 = icmp eq i32 %15, -115
  %20 = select i1 %19, i32 0, i32 %15, !prof !20
  %21 = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 30
  switch i32 %23, label %42 [
    i32 0, label %24
    i32 1, label %39
  ]

24:                                               ; preds = %14
  %25 = load i32, ptr %9, align 8
  %26 = add i32 %25, -1
  store i32 %26, ptr %9, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i32, ptr %10, align 8
  %30 = and i32 %29, 512
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  tail call void @usb_amd_quirk_pll_enable() #14
  %33 = load i32, ptr %10, align 8
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi i32 [ %33, %32 ], [ %29, %28 ]
  %36 = and i32 %35, 1024
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  tail call void @sb800_prefetch(ptr noundef %5, i32 noundef 0) #14
  br label %42

39:                                               ; preds = %14
  %40 = load i32, ptr %8, align 4
  %41 = add i32 %40, -1
  store i32 %41, ptr %8, align 4
  br label %42

42:                                               ; preds = %39, %38, %34, %24, %14
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %4, ptr noundef %16) #14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %43 = load i16, ptr %0, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !22
  tail call void @usb_hcd_giveback_urb(ptr noundef %4, ptr noundef %16, i32 noundef %20) #14
  tail call void @_raw_spin_lock(ptr noundef %0) #14
  %45 = load i32, ptr %9, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load i32, ptr %8, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, ptr %11, align 8
  %52 = and i32 %51, -13
  store i32 %52, ptr %11, align 8
  %53 = load ptr, ptr %12, align 4
  %54 = getelementptr inbounds %struct.ohci_regs, ptr %53, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #14, !srcloc !11
  br label %55

55:                                               ; preds = %50, %47, %42
  %56 = load volatile ptr, ptr %13, align 4
  %57 = icmp eq ptr %56, %13
  br i1 %57, label %67, label %58

58:                                               ; preds = %55
  %59 = getelementptr i8, ptr %56, i32 -12
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.urb_priv, ptr %60, i32 0, i32 2
  %62 = load i16, ptr %61, align 2
  %63 = getelementptr inbounds %struct.urb_priv, ptr %60, i32 0, i32 1
  %64 = load i16, ptr %63, align 4
  %65 = icmp ugt i16 %62, %64
  %66 = getelementptr i8, ptr %56, i32 -20
  br i1 %65, label %14, label %67

67:                                               ; preds = %58, %55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @urb_free_priv(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.urb_priv, ptr %1, i32 0, i32 1
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = icmp eq i16 %4, 0
  br i1 %6, label %44, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 -4
  %9 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 9
  br label %10

10:                                               ; preds = %41, %7
  %11 = phi i32 [ 0, %7 ], [ %42, %41 ]
  %12 = getelementptr %struct.urb_priv, ptr %1, i32 0, i32 4, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %41, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.td, ptr %13, i32 0, i32 10
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 6
  %19 = xor i32 %18, %17
  %20 = and i32 %19, 63
  %21 = getelementptr %struct.ohci_hcd, ptr %0, i32 0, i32 11, i32 %20
  br label %22

22:                                               ; preds = %22, %15
  %23 = phi ptr [ %21, %15 ], [ %28, %22 ]
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  %26 = icmp eq ptr %24, %13
  %27 = or i1 %25, %26
  %28 = getelementptr inbounds %struct.td, ptr %24, i32 0, i32 7
  br i1 %27, label %29, label %22

29:                                               ; preds = %22
  br i1 %25, label %33, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.td, ptr %13, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  store ptr %32, ptr %23, align 4
  br label %33

33:                                               ; preds = %30, %29
  %34 = load ptr, ptr %8, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = ptrtoint ptr %13 to i32
  tail call void @gen_pool_free_owner(ptr noundef nonnull %34, i32 noundef %37, i32 noundef 64, ptr noundef null) #14
  br label %41

38:                                               ; preds = %33
  %39 = load ptr, ptr %9, align 8
  %40 = load i32, ptr %16, align 8
  tail call void @dma_pool_free(ptr noundef %39, ptr noundef nonnull %13, i32 noundef %40) #14
  br label %41

41:                                               ; preds = %38, %36, %10
  %42 = add nuw nsw i32 %11, 1
  %43 = icmp eq i32 %42, %5
  br i1 %43, label %44, label %10

44:                                               ; preds = %41, %2
  %45 = getelementptr inbounds %struct.urb_priv, ptr %1, i32 0, i32 3
  %46 = getelementptr inbounds %struct.urb_priv, ptr %1, i32 0, i32 3, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %45, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  store ptr %47, ptr %49, align 4
  store volatile ptr %48, ptr %47, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %45, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %46, align 4
  tail call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_amd_quirk_pll_enable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sb800_prefetch(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unlink_urb_from_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_giveback_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ed_schedule(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 7
  store ptr null, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 6
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 3
  store i32 0, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !23
  tail call void @arm_heavy_mb() #14
  %6 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 11
  %7 = load i8, ptr %6, align 1
  switch i8 %7, label %90 [
    i8 2, label %8
    i8 3, label %49
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 19
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17, !prof !20

17:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.108, i32 noundef 205, i32 noundef 9, ptr noundef null) #14
  br label %18

18:                                               ; preds = %17, %12
  %19 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 4
  %20 = load i32, ptr %19, align 16
  %21 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ohci_regs, ptr %22, i32 0, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %20) #14, !srcloc !11
  br label %30

24:                                               ; preds = %8
  %25 = getelementptr inbounds %struct.ed, ptr %10, i32 0, i32 6
  store ptr %1, ptr %25, align 8
  %26 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 4
  %27 = load i32, ptr %26, align 16
  %28 = load ptr, ptr %9, align 8
  %29 = getelementptr inbounds %struct.ed, ptr %28, i32 0, i32 3
  store i32 %27, ptr %29, align 4
  br label %30

30:                                               ; preds = %24, %18
  %31 = load ptr, ptr %9, align 8
  store ptr %31, ptr %3, align 4
  %32 = load ptr, ptr %9, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 4
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !24
  tail call void @arm_heavy_mb() #14
  %39 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 19
  %40 = load i32, ptr %39, align 8
  %41 = or i32 %40, 16
  store i32 %41, ptr %39, align 8
  %42 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ohci_regs, ptr %43, i32 0, i32 9
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 0) #14, !srcloc !11
  %45 = load i32, ptr %39, align 8
  %46 = load ptr, ptr %42, align 4
  %47 = getelementptr inbounds %struct.ohci_regs, ptr %46, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #14, !srcloc !11
  br label %48

48:                                               ; preds = %38, %34, %30
  store ptr %1, ptr %9, align 8
  br label %205

49:                                               ; preds = %2
  %50 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 19
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58, !prof !20

58:                                               ; preds = %53
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.108, i32 noundef 226, i32 noundef 9, ptr noundef null) #14
  br label %59

59:                                               ; preds = %58, %53
  %60 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 4
  %61 = load i32, ptr %60, align 16
  %62 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.ohci_regs, ptr %63, i32 0, i32 10
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %61) #14, !srcloc !11
  br label %71

65:                                               ; preds = %49
  %66 = getelementptr inbounds %struct.ed, ptr %51, i32 0, i32 6
  store ptr %1, ptr %66, align 8
  %67 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 4
  %68 = load i32, ptr %67, align 16
  %69 = load ptr, ptr %50, align 4
  %70 = getelementptr inbounds %struct.ed, ptr %69, i32 0, i32 3
  store i32 %68, ptr %70, align 4
  br label %71

71:                                               ; preds = %65, %59
  %72 = load ptr, ptr %50, align 4
  store ptr %72, ptr %3, align 4
  %73 = load ptr, ptr %50, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 4
  %77 = load ptr, ptr %76, align 8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !25
  tail call void @arm_heavy_mb() #14
  %80 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 19
  %81 = load i32, ptr %80, align 8
  %82 = or i32 %81, 32
  store i32 %82, ptr %80, align 8
  %83 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.ohci_regs, ptr %84, i32 0, i32 11
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 0) #14, !srcloc !11
  %86 = load i32, ptr %80, align 8
  %87 = load ptr, ptr %83, align 4
  %88 = getelementptr inbounds %struct.ohci_regs, ptr %87, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %86) #14, !srcloc !11
  br label %89

89:                                               ; preds = %79, %75, %71
  store ptr %1, ptr %50, align 4
  br label %205

90:                                               ; preds = %2
  %91 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 13
  %92 = load i16, ptr %91, align 4
  %93 = zext i16 %92 to i32
  %94 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 14
  %95 = load i16, ptr %94, align 2
  %96 = zext i16 %95 to i32
  %97 = tail call i32 @llvm.smin.i32(i32 %93, i32 32) #14
  %98 = icmp eq i16 %92, 0
  br i1 %98, label %207, label %99

99:                                               ; preds = %90
  %100 = tail call i32 @llvm.smax.i32(i32 %97, i32 1) #14
  br label %101

101:                                              ; preds = %121, %99
  %102 = phi i32 [ %122, %121 ], [ -28, %99 ]
  %103 = phi i32 [ %123, %121 ], [ 0, %99 ]
  %104 = icmp slt i32 %102, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %101
  %106 = getelementptr %struct.ohci_hcd, ptr %0, i32 0, i32 18, i32 %102
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr %struct.ohci_hcd, ptr %0, i32 0, i32 18, i32 %103
  %109 = load i32, ptr %108, align 4
  %110 = icmp sgt i32 %107, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %105, %101
  br label %115

112:                                              ; preds = %115
  %113 = add i32 %116, %97
  %114 = icmp slt i32 %113, 32
  br i1 %114, label %115, label %121

115:                                              ; preds = %112, %111
  %116 = phi i32 [ %113, %112 ], [ %103, %111 ]
  %117 = getelementptr %struct.ohci_hcd, ptr %0, i32 0, i32 18, i32 %116
  %118 = load i32, ptr %117, align 4
  %119 = add i32 %118, %96
  %120 = icmp sgt i32 %119, 900
  br i1 %120, label %121, label %112

121:                                              ; preds = %115, %112, %105
  %122 = phi i32 [ %102, %105 ], [ %103, %112 ], [ %102, %115 ]
  %123 = add nuw nsw i32 %103, 1
  %124 = icmp eq i32 %123, %100
  br i1 %124, label %125, label %101

125:                                              ; preds = %121
  %126 = icmp slt i32 %122, 0
  br i1 %126, label %207, label %127

127:                                              ; preds = %125
  %128 = trunc i32 %122 to i8
  %129 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 12
  store i8 %128, ptr %129, align 2
  %130 = icmp ult i8 %128, 32
  br i1 %130, label %131, label %197

131:                                              ; preds = %127
  %132 = and i32 %122, 255
  %133 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 2
  %134 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 4
  br label %135

135:                                              ; preds = %185, %131
  %136 = phi i16 [ %92, %131 ], [ %191, %185 ]
  %137 = phi i32 [ %132, %131 ], [ %193, %185 ]
  %138 = getelementptr %struct.ohci_hcd, ptr %0, i32 0, i32 7, i32 %137
  %139 = load ptr, ptr %133, align 8
  %140 = getelementptr [32 x i32], ptr %139, i32 0, i32 %137
  %141 = load ptr, ptr %138, align 4
  %142 = icmp ne ptr %141, null
  %143 = icmp ne ptr %141, %1
  %144 = and i1 %142, %143
  br i1 %144, label %145, label %170

145:                                              ; preds = %135
  %146 = getelementptr inbounds %struct.ed, ptr %141, i32 0, i32 13
  %147 = load i16, ptr %146, align 4
  %148 = icmp ugt i16 %136, %147
  br i1 %148, label %156, label %160

149:                                              ; preds = %160
  %150 = getelementptr inbounds %struct.ed, ptr %163, i32 0, i32 13
  %151 = load i16, ptr %150, align 4
  %152 = icmp ugt i16 %136, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.ed, ptr %161, i32 0, i32 6
  %155 = getelementptr inbounds %struct.ed, ptr %161, i32 0, i32 3
  br label %156

156:                                              ; preds = %153, %145
  %157 = phi ptr [ %141, %145 ], [ %163, %153 ]
  %158 = phi ptr [ %140, %145 ], [ %155, %153 ]
  %159 = phi ptr [ %138, %145 ], [ %154, %153 ]
  store ptr %157, ptr %4, align 8
  br label %177

160:                                              ; preds = %149, %145
  %161 = phi ptr [ %163, %149 ], [ %141, %145 ]
  %162 = getelementptr inbounds %struct.ed, ptr %161, i32 0, i32 6
  %163 = load ptr, ptr %162, align 4
  %164 = icmp ne ptr %163, null
  %165 = icmp ne ptr %163, %1
  %166 = and i1 %164, %165
  br i1 %166, label %149, label %167

167:                                              ; preds = %160
  %168 = getelementptr inbounds %struct.ed, ptr %161, i32 0, i32 6
  %169 = getelementptr inbounds %struct.ed, ptr %161, i32 0, i32 3
  br label %170

170:                                              ; preds = %167, %135
  %171 = phi ptr [ %138, %135 ], [ %168, %167 ]
  %172 = phi ptr [ %140, %135 ], [ %169, %167 ]
  %173 = phi ptr [ %141, %135 ], [ %163, %167 ]
  %174 = phi i1 [ %142, %135 ], [ %164, %167 ]
  %175 = phi i1 [ %143, %135 ], [ %165, %167 ]
  br i1 %175, label %176, label %185

176:                                              ; preds = %170
  store ptr %173, ptr %4, align 8
  br i1 %174, label %177, label %181

177:                                              ; preds = %176, %156
  %178 = phi ptr [ %159, %156 ], [ %171, %176 ]
  %179 = phi ptr [ %158, %156 ], [ %172, %176 ]
  %180 = load i32, ptr %179, align 4
  store i32 %180, ptr %5, align 4
  br label %181

181:                                              ; preds = %177, %176
  %182 = phi ptr [ %171, %176 ], [ %178, %177 ]
  %183 = phi ptr [ %172, %176 ], [ %179, %177 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !26
  tail call void @arm_heavy_mb() #14
  store ptr %1, ptr %182, align 4
  %184 = load i32, ptr %134, align 16
  store i32 %184, ptr %183, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !27
  tail call void @arm_heavy_mb() #14
  br label %185

185:                                              ; preds = %181, %170
  %186 = load i16, ptr %94, align 2
  %187 = zext i16 %186 to i32
  %188 = getelementptr %struct.ohci_hcd, ptr %0, i32 0, i32 18, i32 %137
  %189 = load i32, ptr %188, align 4
  %190 = add i32 %189, %187
  store i32 %190, ptr %188, align 4
  %191 = load i16, ptr %91, align 4
  %192 = zext i16 %191 to i32
  %193 = add i32 %137, %192
  %194 = icmp ult i32 %193, 32
  br i1 %194, label %135, label %195

195:                                              ; preds = %185
  %196 = load i16, ptr %94, align 2
  br label %197

197:                                              ; preds = %195, %127
  %198 = phi i16 [ %95, %127 ], [ %196, %195 ]
  %199 = phi i16 [ %92, %127 ], [ %191, %195 ]
  %200 = udiv i16 %198, %199
  %201 = zext i16 %200 to i32
  %202 = getelementptr i8, ptr %0, i32 -280
  %203 = load i32, ptr %202, align 8
  %204 = add i32 %203, %201
  store i32 %204, ptr %202, align 8
  br label %205

205:                                              ; preds = %197, %89, %48
  %206 = getelementptr inbounds %struct.ed, ptr %1, i32 0, i32 10
  store i8 2, ptr %206, align 16
  br label %207

207:                                              ; preds = %205, %125, %90
  %208 = phi i32 [ 0, %205 ], [ %122, %125 ], [ -28, %90 ]
  ret i32 %208
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_root_hub_lost_power(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @update_done_list(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ohci_hcca, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  store i32 0, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !28
  tail call void @arm_heavy_mb() #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %116, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 13
  %9 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 12
  br label %10

10:                                               ; preds = %114, %7
  %11 = phi i32 [ %5, %7 ], [ %76, %114 ]
  %12 = and i32 %11, -32
  %13 = lshr i32 %11, 6
  %14 = xor i32 %12, %13
  %15 = and i32 %14, 63
  %16 = getelementptr %struct.ohci_hcd, ptr %0, i32 0, i32 11, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %24, %10
  %20 = phi ptr [ %26, %24 ], [ %17, %10 ]
  %21 = getelementptr inbounds %struct.td, ptr %20, i32 0, i32 10
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, %12
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.td, ptr %20, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %19

28:                                               ; preds = %24, %10
  %29 = getelementptr i8, ptr %0, i32 -352
  %30 = load ptr, ptr %29, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.112, i32 noundef %11) #15
  br label %116

31:                                               ; preds = %19
  %32 = load i32, ptr %20, align 32
  %33 = or i32 %32, 131072
  store i32 %33, ptr %20, align 32
  %34 = icmp ult i32 %33, 268435456
  br i1 %34, label %74, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.td, ptr %20, i32 0, i32 6
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.ed, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %74, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.td, ptr %20, i32 0, i32 9
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.td, ptr %20, i32 0, i32 12
  %48 = load ptr, ptr %47, align 16
  %49 = and i32 %39, 2
  %50 = load i32, ptr %37, align 16
  %51 = or i32 %50, 16384
  store i32 %51, ptr %37, align 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !29
  tail call void @arm_heavy_mb() #14
  %52 = load i32, ptr %38, align 8
  %53 = and i32 %52, -2
  %54 = getelementptr inbounds %struct.ed, ptr %37, i32 0, i32 8
  store i32 %53, ptr %38, align 8
  %55 = icmp eq ptr %48, %54
  br i1 %55, label %74, label %56

56:                                               ; preds = %42
  %57 = getelementptr inbounds %struct.urb_priv, ptr %46, i32 0, i32 2
  br label %58

58:                                               ; preds = %63, %56
  %59 = phi ptr [ %48, %56 ], [ %64, %63 ]
  %60 = getelementptr i8, ptr %59, i32 -12
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %44
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load ptr, ptr %59, align 16
  %65 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  store ptr %66, ptr %67, align 4
  store volatile ptr %64, ptr %66, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %59, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %65, align 4
  %68 = load i16, ptr %57, align 2
  %69 = add i16 %68, 1
  store i16 %69, ptr %57, align 2
  %70 = getelementptr i8, ptr %59, i32 -40
  %71 = load i32, ptr %70, align 8
  %72 = or i32 %71, %49
  store i32 %72, ptr %38, align 8
  %73 = icmp eq ptr %64, %54
  br i1 %73, label %74, label %58

74:                                               ; preds = %63, %58, %42, %35, %31
  %75 = getelementptr inbounds %struct.td, ptr %20, i32 0, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.td, ptr %20, i32 0, i32 8
  %78 = load ptr, ptr %77, align 32
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %114

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.td, ptr %20, i32 0, i32 6
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.td, ptr %20, i32 0, i32 12, i32 1
  %84 = getelementptr inbounds %struct.ed, ptr %82, i32 0, i32 8
  %85 = load ptr, ptr %83, align 4
  %86 = icmp eq ptr %85, %84
  br i1 %86, label %98, label %87

87:                                               ; preds = %93, %80
  %88 = phi ptr [ %96, %93 ], [ %85, %80 ]
  %89 = phi ptr [ %94, %93 ], [ %20, %80 ]
  %90 = getelementptr i8, ptr %88, i32 -16
  %91 = load ptr, ptr %90, align 32
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = getelementptr i8, ptr %88, i32 -48
  store ptr %89, ptr %90, align 32
  %95 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, %84
  br i1 %97, label %98, label %87

98:                                               ; preds = %93, %87, %80
  %99 = phi ptr [ %20, %80 ], [ %94, %93 ], [ %89, %87 ]
  %100 = load ptr, ptr %8, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.td, ptr %100, i32 0, i32 8
  store ptr %99, ptr %103, align 32
  br label %105

104:                                              ; preds = %98
  store ptr %99, ptr %9, align 8
  br label %105

105:                                              ; preds = %104, %102
  store ptr %20, ptr %77, align 32
  store ptr %20, ptr %8, align 4
  %106 = getelementptr inbounds %struct.ed, ptr %82, i32 0, i32 18
  %107 = load ptr, ptr %106, align 16
  %108 = icmp eq ptr %107, null
  br i1 %108, label %114, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.td, ptr %107, i32 0, i32 8
  %111 = load ptr, ptr %110, align 32
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  store ptr null, ptr %106, align 16
  br label %114

114:                                              ; preds = %113, %109, %105, %74
  %115 = icmp eq i32 %76, 0
  br i1 %115, label %116, label %10

116:                                              ; preds = %114, %28, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_irq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ohci_regs, ptr %4, i32 0, i32 3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 3
  store i32 0, ptr %9, align 8
  tail call void @usb_hc_died(ptr noundef %0) #14
  br label %117

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ohci_regs, ptr %4, i32 0, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %13 = and i32 %12, %6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %117, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 3
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %117, label %19, !prof !12

19:                                               ; preds = %15
  %20 = and i32 %13, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %64, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 64
  %26 = icmp eq i32 %25, 0
  %27 = load ptr, ptr %0, align 8
  br i1 %26, label %33, label %28

28:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.114) #15
  %29 = getelementptr inbounds %struct.ohci_regs, ptr %4, i32 0, i32 5
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 16) #14, !srcloc !11
  %30 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 21, i32 3, i32 1
  %31 = load ptr, ptr @system_wq, align 4
  %32 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %31, ptr noundef %30) #14
  br label %34

33:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.115) #15
  store i32 0, ptr %16, align 8
  tail call void @usb_hc_died(ptr noundef %0) #14
  br label %34

34:                                               ; preds = %33, %28
  %35 = load ptr, ptr %3, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %37 = getelementptr inbounds %struct.ohci_regs, ptr %35, i32 0, i32 1
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %39 = getelementptr inbounds %struct.ohci_regs, ptr %35, i32 0, i32 2
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %41 = getelementptr inbounds %struct.ohci_regs, ptr %35, i32 0, i32 3
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %43 = getelementptr inbounds %struct.ohci_regs, ptr %35, i32 0, i32 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %45 = getelementptr inbounds %struct.ohci_regs, ptr %35, i32 0, i32 7
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %47 = getelementptr inbounds %struct.ohci_regs, ptr %35, i32 0, i32 8
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %49 = getelementptr inbounds %struct.ohci_regs, ptr %35, i32 0, i32 9
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %51 = getelementptr inbounds %struct.ohci_regs, ptr %35, i32 0, i32 10
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %53 = getelementptr inbounds %struct.ohci_regs, ptr %35, i32 0, i32 11
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %55 = getelementptr inbounds %struct.ohci_regs, ptr %35, i32 0, i32 12
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  tail call fastcc void @ohci_dump_roothub(ptr noundef %2, ptr noundef null, ptr noundef null) #14
  %57 = load ptr, ptr %3, align 4
  %58 = getelementptr inbounds %struct.ohci_regs, ptr %57, i32 0, i32 1
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %60 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 2
  %61 = and i32 %59, 512
  store i32 %61, ptr %60, align 8
  %62 = load ptr, ptr %3, align 4
  %63 = getelementptr inbounds %struct.ohci_regs, ptr %62, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #14, !srcloc !11
  store i32 0, ptr %16, align 8
  br label %64

64:                                               ; preds = %34, %19
  %65 = and i32 %13, 64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = load volatile i32, ptr @jiffies, align 64
  %69 = add i32 %68, 30
  %70 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 2, i32 1
  store i32 %69, ptr %70, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 72) #14, !srcloc !11
  %71 = getelementptr inbounds %struct.ohci_regs, ptr %4, i32 0, i32 5
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 64) #14, !srcloc !11
  tail call void @usb_hcd_poll_rh_status(ptr noundef %0) #14
  br label %86

72:                                               ; preds = %64
  %73 = and i32 %13, 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %72
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 8) #14, !srcloc !11
  %76 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %76) #14
  %77 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 1
  %78 = load i8, ptr %77, align 4
  %79 = and i8 %78, 1
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %75
  tail call void @_raw_spin_lock(ptr noundef %2) #14
  %82 = tail call fastcc i32 @ohci_rh_resume(ptr noundef %2)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %83 = load i16, ptr %2, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !22
  br label %86

85:                                               ; preds = %75
  tail call void @usb_hcd_resume_root_hub(ptr noundef %0) #14
  br label %86

86:                                               ; preds = %85, %81, %72, %67
  tail call void @_raw_spin_lock(ptr noundef %2) #14
  %87 = and i32 %13, 2
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  tail call fastcc void @update_done_list(ptr noundef %2)
  br label %90

90:                                               ; preds = %89, %86
  tail call fastcc void @ohci_work(ptr noundef %2)
  %91 = and i32 %13, 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 4
  %95 = load ptr, ptr %94, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load i32, ptr %16, align 8
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %114

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.ohci_regs, ptr %4, i32 0, i32 5
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 4) #14, !srcloc !11
  br label %102

102:                                              ; preds = %100, %93, %90
  %103 = load i32, ptr %16, align 8
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %13) #14, !srcloc !11
  br i1 %88, label %110, label %106

106:                                              ; preds = %105
  %107 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 4
  %108 = load i32, ptr %107, align 8
  %109 = add i32 %108, 1
  store i32 %109, ptr %107, align 8
  br label %110

110:                                              ; preds = %106, %105
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 -2147483648) #14, !srcloc !11
  %111 = load ptr, ptr %3, align 4
  %112 = getelementptr inbounds %struct.ohci_regs, ptr %111, i32 0, i32 1
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  br label %114

114:                                              ; preds = %110, %102, %97
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %115 = load i16, ptr %2, align 4
  %116 = add i16 %115, 1
  store i16 %116, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !22
  br label %117

117:                                              ; preds = %114, %15, %10, %8
  %118 = phi i32 [ 1, %8 ], [ 1, %114 ], [ 0, %15 ], [ 0, %10 ]
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_start(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = tail call fastcc i32 @ohci_run(ptr noundef %2)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.116) #15
  tail call void @ohci_stop(ptr noundef %0)
  br label %7

7:                                                ; preds = %5, %1
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ohci_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #14
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ohci_regs, ptr %5, i32 0, i32 5
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 -1) #14, !srcloc !11
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.ohci_regs, ptr %7, i32 0, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 1) #14, !srcloc !11
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.ohci_regs, ptr %9, i32 0, i32 2
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #14
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3
  %14 = load i32, ptr %13, align 8
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.ohci_regs, ptr %15, i32 0, i32 13
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #14, !srcloc !11
  %17 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 3
  store i32 0, ptr %17, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ohci_get_frame(ptr nocapture noundef readonly %0) #13 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ohci_hcca, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 65535
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_urb_enqueue(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %8 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 25
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #14
  %17 = getelementptr inbounds %struct.usb_host_endpoint, ptr %11, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %121

20:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !30
  %21 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 28
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = call ptr @gen_pool_dma_zalloc_align(ptr noundef nonnull %22, i32 noundef 80, ptr noundef nonnull %6, i32 noundef 16) #14
  br label %30

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = call ptr @dma_pool_alloc(ptr noundef %28, i32 noundef 2848, ptr noundef nonnull %6) #14
  br label %30

30:                                               ; preds = %26, %24
  %31 = phi ptr [ %25, %24 ], [ %29, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %120

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ed, ptr %31, i32 0, i32 8
  store volatile ptr %35, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ed, ptr %31, i32 0, i32 8, i32 1
  store ptr %35, ptr %36, align 4
  %37 = load i32, ptr %6, align 4
  %38 = getelementptr inbounds %struct.ed, ptr %31, i32 0, i32 4
  store i32 %37, ptr %38, align 16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !30
  %39 = load ptr, ptr %21, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = call ptr @gen_pool_dma_zalloc_align(ptr noundef nonnull %39, i32 noundef 64, ptr noundef nonnull %5, i32 noundef 32) #14
  br label %47

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 7, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = call ptr @dma_pool_alloc(ptr noundef %45, i32 noundef 2848, ptr noundef nonnull %5) #14
  br label %47

47:                                               ; preds = %43, %41
  %48 = phi ptr [ %42, %41 ], [ %46, %43 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %51 = load ptr, ptr %21, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = ptrtoint ptr %31 to i32
  call void @gen_pool_free_owner(ptr noundef nonnull %51, i32 noundef %54, i32 noundef 80, ptr noundef null) #14
  br label %120

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8
  %57 = load ptr, ptr %56, align 4
  %58 = load i32, ptr %38, align 16
  call void @dma_pool_free(ptr noundef %57, ptr noundef nonnull %31, i32 noundef %58) #14
  br label %120

59:                                               ; preds = %47
  %60 = load i32, ptr %5, align 4
  %61 = getelementptr inbounds %struct.td, ptr %48, i32 0, i32 2
  store i32 %60, ptr %61, align 8
  %62 = getelementptr inbounds %struct.td, ptr %48, i32 0, i32 10
  store i32 %60, ptr %62, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %63 = getelementptr inbounds %struct.ed, ptr %31, i32 0, i32 5
  store ptr %48, ptr %63, align 4
  %64 = load i32, ptr %62, align 8
  %65 = getelementptr inbounds %struct.ed, ptr %31, i32 0, i32 1
  store i32 %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.ed, ptr %31, i32 0, i32 2
  store i32 %64, ptr %66, align 8
  %67 = getelementptr inbounds %struct.ed, ptr %31, i32 0, i32 10
  store i8 0, ptr %67, align 16
  %68 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %11, i32 0, i32 2
  %69 = load i8, ptr %68, align 2
  %70 = lshr i32 %9, 8
  %71 = and i32 %70, 127
  %72 = lshr i32 %9, 30
  %73 = trunc i32 %72 to i8
  %74 = getelementptr inbounds %struct.ed, ptr %31, i32 0, i32 11
  store i8 %73, ptr %74, align 1
  %75 = load i8, ptr %68, align 2
  %76 = and i8 %75, 127
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 7
  %79 = or i32 %78, %71
  %80 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %11, i32 0, i32 4
  %81 = load i16, ptr %80, align 1
  %82 = and i16 %81, 2047
  %83 = zext i16 %82 to i32
  %84 = shl nuw nsw i32 %83, 16
  %85 = or i32 %79, %84
  %86 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 4
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 1
  %89 = or i32 %85, 8192
  %90 = select i1 %88, i32 %89, i32 %85
  %91 = icmp eq i8 %73, 2
  br i1 %91, label %118, label %92

92:                                               ; preds = %59
  %93 = icmp slt i8 %69, 0
  %94 = select i1 %93, i32 4096, i32 2048
  %95 = or i32 %90, %94
  %96 = trunc i32 %72 to i2
  switch i2 %96, label %99 [
    i2 -1, label %118
    i2 0, label %97
  ]

97:                                               ; preds = %92
  %98 = or i32 %95, 32768
  br label %101

99:                                               ; preds = %92
  %100 = call i32 @llvm.smin.i32(i32 %15, i32 32) #14
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %15, %97 ], [ %100, %99 ]
  %103 = phi i32 [ %98, %97 ], [ %95, %99 ]
  %104 = trunc i32 %102 to i16
  %105 = getelementptr inbounds %struct.ed, ptr %31, i32 0, i32 13
  store i16 %104, ptr %105, align 4
  %106 = load i32, ptr %86, align 4
  %107 = lshr i8 %69, 7
  %108 = zext i8 %107 to i32
  %109 = icmp eq i8 %73, 0
  %110 = zext i1 %109 to i32
  %111 = load i16, ptr %80, align 1
  %112 = and i16 %111, 2047
  %113 = zext i16 %112 to i32
  %114 = call i32 @usb_calc_bus_time(i32 noundef %106, i32 noundef %108, i32 noundef %110, i32 noundef %113) #14
  %115 = sdiv i32 %114, 1000
  %116 = trunc i32 %115 to i16
  %117 = getelementptr inbounds %struct.ed, ptr %31, i32 0, i32 14
  store i16 %116, ptr %117, align 2
  br label %118

118:                                              ; preds = %101, %92, %59
  %119 = phi i32 [ %103, %101 ], [ %95, %92 ], [ %90, %59 ]
  store i32 %119, ptr %31, align 16
  store ptr %31, ptr %17, align 4
  br label %121

120:                                              ; preds = %55, %53, %33
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %16) #14
  br label %381

121:                                              ; preds = %118, %3
  %122 = phi ptr [ %18, %3 ], [ %31, %118 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %16) #14
  %123 = getelementptr inbounds %struct.ed, ptr %122, i32 0, i32 11
  %124 = load i8, ptr %123, align 1
  switch i8 %124, label %125 [
    i8 2, label %128
    i8 0, label %206
  ]

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %127 = load i32, ptr %126, align 4
  br label %132

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %130 = load i32, ptr %129, align 4
  %131 = icmp ugt i32 %130, 4096
  br i1 %131, label %381, label %132

132:                                              ; preds = %128, %125
  %133 = phi i32 [ %127, %125 ], [ %130, %128 ]
  %134 = phi i32 [ 0, %125 ], [ 2, %128 ]
  %135 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %136 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 17
  %137 = load i32, ptr %136, align 4
  %138 = icmp sgt i32 %133, 0
  %139 = icmp sgt i32 %137, 0
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %141, label %171

141:                                              ; preds = %132
  %142 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 16
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.scatterlist, ptr %143, i32 0, i32 4
  %145 = load i32, ptr %144, align 4
  %146 = call i32 @llvm.smin.i32(i32 %145, i32 %133) #14
  %147 = add i32 %146, 4095
  %148 = sdiv i32 %147, 4096
  %149 = sub i32 %133, %146
  %150 = add nsw i32 %137, -1
  %151 = icmp eq i32 %150, 0
  %152 = icmp slt i32 %149, 1
  %153 = select i1 %151, i1 true, i1 %152
  br i1 %153, label %174, label %154

154:                                              ; preds = %154, %141
  %155 = phi i32 [ %167, %154 ], [ %150, %141 ]
  %156 = phi i32 [ %166, %154 ], [ %149, %141 ]
  %157 = phi i32 [ %165, %154 ], [ %148, %141 ]
  %158 = phi ptr [ %159, %154 ], [ %143, %141 ]
  %159 = call ptr @sg_next(ptr noundef %158) #14
  %160 = getelementptr inbounds %struct.scatterlist, ptr %159, i32 0, i32 4
  %161 = load i32, ptr %160, align 4
  %162 = call i32 @llvm.smin.i32(i32 %161, i32 %156) #14
  %163 = add i32 %162, 4095
  %164 = sdiv i32 %163, 4096
  %165 = add i32 %164, %157
  %166 = sub i32 %156, %162
  %167 = add nsw i32 %155, -1
  %168 = icmp eq i32 %167, 0
  %169 = icmp slt i32 %166, 1
  %170 = select i1 %168, i1 true, i1 %169
  br i1 %170, label %174, label %154

171:                                              ; preds = %132
  %172 = add i32 %133, 4095
  %173 = sdiv i32 %172, 4096
  br label %174

174:                                              ; preds = %171, %154, %141
  %175 = phi i32 [ %173, %171 ], [ %148, %141 ], [ %165, %154 ]
  %176 = add i32 %175, %134
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %209, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %180 = load i32, ptr %179, align 4
  %181 = and i32 %180, 64
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %209, label %183

183:                                              ; preds = %178
  %184 = load i32, ptr %135, align 4
  %185 = load ptr, ptr %12, align 4
  %186 = lshr i32 %9, 15
  %187 = and i32 %186, 15
  %188 = and i32 %9, 128
  %189 = icmp eq i32 %188, 0
  %190 = getelementptr %struct.usb_device, ptr %185, i32 0, i32 22, i32 %187
  %191 = getelementptr %struct.usb_device, ptr %185, i32 0, i32 21, i32 %187
  %192 = select i1 %189, ptr %190, ptr %191
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %200, label %195

195:                                              ; preds = %183
  %196 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %193, i32 0, i32 4
  %197 = load i16, ptr %196, align 1
  %198 = and i16 %197, 2047
  %199 = zext i16 %198 to i32
  br label %200

200:                                              ; preds = %195, %183
  %201 = phi i32 [ %199, %195 ], [ 0, %183 ]
  %202 = urem i32 %184, %201
  %203 = icmp eq i32 %202, 0
  %204 = zext i1 %203 to i32
  %205 = add i32 %176, %204
  br label %209

206:                                              ; preds = %121
  %207 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 24
  %208 = load i32, ptr %207, align 4
  br label %209

209:                                              ; preds = %206, %200, %178, %174
  %210 = phi i32 [ %176, %178 ], [ %208, %206 ], [ 1, %174 ], [ %205, %200 ]
  %211 = or i32 %2, 256
  %212 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %210, i32 4) #14
  %213 = extractvalue { i32, i1 } %212, 1
  %214 = extractvalue { i32, i1 } %212, 0
  %215 = call i32 @llvm.uadd.sat.i32(i32 %214, i32 16) #14
  %216 = select i1 %213, i32 -1, i32 %215
  %217 = call noalias align 64 ptr @__kmalloc(i32 noundef %216, i32 noundef %211) #17
  %218 = icmp eq ptr %217, null
  br i1 %218, label %381, label %219

219:                                              ; preds = %209
  %220 = getelementptr inbounds %struct.urb_priv, ptr %217, i32 0, i32 3
  store volatile ptr %220, ptr %220, align 8
  %221 = getelementptr inbounds %struct.urb_priv, ptr %217, i32 0, i32 3, i32 1
  store ptr %220, ptr %221, align 4
  %222 = trunc i32 %210 to i16
  %223 = getelementptr inbounds %struct.urb_priv, ptr %217, i32 0, i32 1
  store i16 %222, ptr %223, align 4
  store ptr %122, ptr %217, align 64
  %224 = icmp sgt i32 %210, 0
  br i1 %224, label %225, label %250

225:                                              ; preds = %219
  %226 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 28
  %227 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 7, i32 2
  br label %228

228:                                              ; preds = %243, %225
  %229 = phi i32 [ 0, %225 ], [ %248, %243 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !30
  %230 = load ptr, ptr %226, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %234, label %232

232:                                              ; preds = %228
  %233 = call ptr @gen_pool_dma_zalloc_align(ptr noundef nonnull %230, i32 noundef 64, ptr noundef nonnull %4, i32 noundef 32) #14
  br label %237

234:                                              ; preds = %228
  %235 = load ptr, ptr %227, align 8
  %236 = call ptr @dma_pool_alloc(ptr noundef %235, i32 noundef %211, ptr noundef nonnull %4) #14
  br label %237

237:                                              ; preds = %234, %232
  %238 = phi ptr [ %233, %232 ], [ %236, %234 ]
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %241 = getelementptr %struct.urb_priv, ptr %217, i32 0, i32 4, i32 %229
  store ptr null, ptr %241, align 4
  %242 = trunc i32 %229 to i16
  store i16 %242, ptr %223, align 4
  call fastcc void @urb_free_priv(ptr noundef %7, ptr noundef nonnull %217)
  br label %381

243:                                              ; preds = %237
  %244 = load i32, ptr %4, align 4
  %245 = getelementptr inbounds %struct.td, ptr %238, i32 0, i32 2
  store i32 %244, ptr %245, align 8
  %246 = getelementptr inbounds %struct.td, ptr %238, i32 0, i32 10
  store i32 %244, ptr %246, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %247 = getelementptr %struct.urb_priv, ptr %217, i32 0, i32 4, i32 %229
  store ptr %238, ptr %247, align 4
  %248 = add nuw nsw i32 %229, 1
  %249 = icmp eq i32 %248, %210
  br i1 %249, label %250, label %228

250:                                              ; preds = %243, %219
  %251 = call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #14
  %252 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  %253 = load i32, ptr %252, align 8
  %254 = and i32 %253, 1
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %377, label %256

256:                                              ; preds = %250
  %257 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 3
  %258 = load i32, ptr %257, align 8
  %259 = icmp eq i32 %258, 2
  br i1 %259, label %260, label %377

260:                                              ; preds = %256
  %261 = call i32 @usb_hcd_link_urb_to_ep(ptr noundef %0, ptr noundef %1) #14
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %377

263:                                              ; preds = %260
  %264 = getelementptr inbounds %struct.ed, ptr %122, i32 0, i32 10
  %265 = load i8, ptr %264, align 16
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %267, label %325

267:                                              ; preds = %263
  %268 = call fastcc i32 @ed_schedule(ptr noundef %7, ptr noundef nonnull %122)
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %267
  call void @usb_hcd_unlink_urb_from_ep(ptr noundef %0, ptr noundef %1) #14
  br label %377

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 3
  %273 = load i32, ptr %272, align 4
  %274 = icmp eq i32 %273, -256
  br i1 %274, label %275, label %294

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 1
  %277 = load volatile ptr, ptr %276, align 4
  %278 = icmp eq ptr %277, %276
  br i1 %278, label %279, label %294

279:                                              ; preds = %275
  %280 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 2
  %281 = load i32, ptr %280, align 8
  %282 = and i32 %281, 4096
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %294

284:                                              ; preds = %279
  %285 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 2
  %286 = load ptr, ptr %285, align 8
  %287 = getelementptr inbounds %struct.ohci_hcca, ptr %286, i32 0, i32 1
  %288 = load i32, ptr %287, align 4
  %289 = and i32 %288, 65535
  store i32 %289, ptr %272, align 4
  %290 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 21
  %291 = load volatile i32, ptr @jiffies, align 64
  %292 = add i32 %291, 28
  %293 = call i32 @mod_timer(ptr noundef %290, i32 noundef %292) #14
  br label %294

294:                                              ; preds = %284, %279, %275, %271
  %295 = getelementptr inbounds %struct.ed, ptr %122, i32 0, i32 9
  %296 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 1
  %297 = load ptr, ptr %296, align 4
  %298 = getelementptr inbounds %struct.list_head, ptr %297, i32 0, i32 1
  store ptr %295, ptr %298, align 4
  store ptr %297, ptr %295, align 4
  %299 = getelementptr inbounds %struct.ed, ptr %122, i32 0, i32 9, i32 1
  store ptr %296, ptr %299, align 4
  store volatile ptr %295, ptr %296, align 4
  %300 = load i8, ptr %123, align 1
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %302, label %375

302:                                              ; preds = %294
  %303 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 2
  %304 = load ptr, ptr %303, align 8
  %305 = getelementptr inbounds %struct.ohci_hcca, ptr %304, i32 0, i32 1
  %306 = load i32, ptr %305, align 4
  %307 = trunc i32 %306 to i16
  %308 = getelementptr inbounds %struct.ed, ptr %122, i32 0, i32 13
  %309 = load i16, ptr %308, align 4
  %310 = call i16 @llvm.umax.i16(i16 %309, i16 8)
  %311 = add i16 %310, %307
  %312 = sub i16 0, %309
  %313 = and i16 %311, %312
  %314 = getelementptr inbounds %struct.ed, ptr %122, i32 0, i32 12
  %315 = load i8, ptr %314, align 2
  %316 = zext i8 %315 to i16
  %317 = or i16 %313, %316
  %318 = zext i16 %317 to i32
  %319 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 23
  store i32 %318, ptr %319, align 4
  %320 = load i16, ptr %308, align 4
  %321 = add i16 %222, -1
  %322 = mul i16 %320, %321
  %323 = add i16 %322, %317
  %324 = getelementptr inbounds %struct.ed, ptr %122, i32 0, i32 15
  store i16 %323, ptr %324, align 8
  br label %375

325:                                              ; preds = %263
  %326 = load i8, ptr %123, align 1
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %328, label %375

328:                                              ; preds = %325
  %329 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 2
  %330 = load ptr, ptr %329, align 8
  %331 = getelementptr inbounds %struct.ohci_hcca, ptr %330, i32 0, i32 1
  %332 = load i32, ptr %331, align 4
  %333 = trunc i32 %332 to i16
  %334 = add i16 %333, 1
  %335 = getelementptr inbounds %struct.ed, ptr %122, i32 0, i32 15
  %336 = load i16, ptr %335, align 8
  %337 = getelementptr inbounds %struct.ed, ptr %122, i32 0, i32 13
  %338 = load i16, ptr %337, align 4
  %339 = zext i16 %338 to i32
  %340 = add i16 %338, %336
  %341 = add i16 %222, -1
  %342 = mul i16 %338, %341
  %343 = sub i16 %340, %334
  %344 = icmp slt i16 %343, 0
  br i1 %344, label %345, label %370, !prof !12

345:                                              ; preds = %328
  %346 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %347 = load i32, ptr %346, align 4
  %348 = and i32 %347, 2
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %356, label %350

350:                                              ; preds = %345
  %351 = add i16 %338, %333
  %352 = sub i16 %351, %340
  %353 = sub i16 0, %338
  %354 = and i16 %352, %353
  %355 = add i16 %354, %340
  br label %370

356:                                              ; preds = %345
  %357 = sub i16 %334, %340
  %358 = zext i16 %357 to i32
  %359 = add nsw i32 %339, -1
  %360 = add nsw i32 %359, %358
  %361 = sdiv i32 %360, %339
  %362 = trunc i32 %361 to i16
  %363 = getelementptr inbounds %struct.urb_priv, ptr %217, i32 0, i32 2
  store i16 %362, ptr %363, align 2
  %364 = and i32 %361, 65535
  %365 = load i16, ptr %223, align 4
  %366 = zext i16 %365 to i32
  %367 = icmp ult i32 %364, %366
  br i1 %367, label %370, label %368

368:                                              ; preds = %356
  %369 = add i16 %362, 1
  store i16 %369, ptr %363, align 2
  br label %370

370:                                              ; preds = %368, %356, %350, %328
  %371 = phi i16 [ %355, %350 ], [ %340, %368 ], [ %340, %356 ], [ %340, %328 ]
  %372 = zext i16 %371 to i32
  %373 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 23
  store i32 %372, ptr %373, align 4
  %374 = add i16 %371, %342
  store i16 %374, ptr %335, align 8
  br label %375

375:                                              ; preds = %370, %325, %302, %294
  %376 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 2
  store ptr %217, ptr %376, align 4
  call fastcc void @td_submit_urb(ptr noundef %7, ptr noundef %1)
  br label %379

377:                                              ; preds = %270, %260, %256, %250
  %378 = phi i32 [ -19, %256 ], [ -19, %250 ], [ %268, %270 ], [ %261, %260 ]
  call fastcc void @urb_free_priv(ptr noundef %7, ptr noundef nonnull %217)
  br label %379

379:                                              ; preds = %377, %375
  %380 = phi i32 [ %378, %377 ], [ 0, %375 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %251) #14
  br label %381

381:                                              ; preds = %379, %240, %209, %128, %120
  %382 = phi i32 [ -12, %240 ], [ %380, %379 ], [ -90, %128 ], [ -12, %209 ], [ -12, %120 ]
  ret i32 %382
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_urb_dequeue(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %6 = tail call i32 @usb_hcd_check_unlink_urb(ptr noundef %0, ptr noundef %1, i32 noundef %2) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ed, ptr %11, i32 0, i32 10
  %13 = load i8, ptr %12, align 16
  %14 = icmp eq i8 %13, 2
  br i1 %14, label %15, label %37

15:                                               ; preds = %8
  %16 = load i32, ptr %11, align 16
  %17 = or i32 %16, 134217728
  store i32 %17, ptr %11, align 16
  tail call fastcc void @ed_deschedule(ptr noundef %4, ptr noundef %11) #14
  %18 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 4
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.ed, ptr %11, i32 0, i32 6
  store ptr %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.ed, ptr %11, i32 0, i32 7
  store ptr null, ptr %21, align 4
  store ptr %11, ptr %18, align 8
  %22 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ohci_regs, ptr %23, i32 0, i32 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 4) #14, !srcloc !11
  %25 = load ptr, ptr %22, align 4
  %26 = getelementptr inbounds %struct.ohci_regs, ptr %25, i32 0, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 4) #14, !srcloc !11
  %27 = load ptr, ptr %22, align 4
  %28 = getelementptr inbounds %struct.ohci_regs, ptr %27, i32 0, i32 1
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %30 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.ohci_hcca, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = trunc i32 %33 to i16
  %35 = add i16 %34, 1
  %36 = getelementptr inbounds %struct.ed, ptr %11, i32 0, i32 16
  store i16 %35, ptr %36, align 2
  br label %37

37:                                               ; preds = %15, %8
  %38 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 3
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call fastcc void @ohci_work(ptr noundef %4)
  br label %42

42:                                               ; preds = %41, %37, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #14
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ohci_endpoint_disable(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %4 = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %113, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 3
  %9 = getelementptr inbounds %struct.ed, ptr %5, i32 0, i32 10
  br label %10

10:                                               ; preds = %24, %7
  %11 = phi i32 [ %25, %24 ], [ 1000, %7 ]
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #14
  %13 = load i32, ptr %8, align 8
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %17, label %15

15:                                               ; preds = %22, %10
  %16 = phi i32 [ %11, %10 ], [ -1, %22 ]
  store i8 0, ptr %9, align 16
  tail call fastcc void @ohci_work(ptr noundef %3)
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi i32 [ %16, %15 ], [ %11, %10 ]
  %19 = load i8, ptr %9, align 16
  switch i8 %19, label %71 [
    i8 1, label %20
    i8 0, label %27
  ]

20:                                               ; preds = %17
  %21 = icmp eq i32 %18, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.118) #15
  br label %15

24:                                               ; preds = %20
  %25 = add i32 %18, -1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %12) #14
  %26 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #14
  br label %10

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.ed, ptr %5, i32 0, i32 8
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %31, label %73

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ed, ptr %5, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.td, ptr %33, i32 0, i32 10
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 6
  %37 = xor i32 %36, %35
  %38 = and i32 %37, 63
  %39 = getelementptr %struct.ohci_hcd, ptr %3, i32 0, i32 11, i32 %38
  br label %40

40:                                               ; preds = %40, %31
  %41 = phi ptr [ %39, %31 ], [ %46, %40 ]
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  %44 = icmp eq ptr %42, %33
  %45 = or i1 %43, %44
  %46 = getelementptr inbounds %struct.td, ptr %42, i32 0, i32 7
  br i1 %45, label %47, label %40

47:                                               ; preds = %40
  br i1 %43, label %51, label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.td, ptr %33, i32 0, i32 7
  %50 = load ptr, ptr %49, align 4
  store ptr %50, ptr %41, align 4
  br label %51

51:                                               ; preds = %48, %47
  %52 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 28
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = ptrtoint ptr %33 to i32
  tail call void @gen_pool_free_owner(ptr noundef nonnull %53, i32 noundef %56, i32 noundef 64, ptr noundef null) #14
  br label %61

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 7, i32 2
  %59 = load ptr, ptr %58, align 8
  %60 = load i32, ptr %34, align 8
  tail call void @dma_pool_free(ptr noundef %59, ptr noundef %33, i32 noundef %60) #14
  br label %61

61:                                               ; preds = %57, %55
  %62 = load ptr, ptr %52, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = ptrtoint ptr %5 to i32
  tail call void @gen_pool_free_owner(ptr noundef nonnull %62, i32 noundef %65, i32 noundef 80, ptr noundef null) #14
  br label %112

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.ed, ptr %5, i32 0, i32 4
  %70 = load i32, ptr %69, align 16
  tail call void @dma_pool_free(ptr noundef %68, ptr noundef nonnull %5, i32 noundef %70) #14
  br label %112

71:                                               ; preds = %17
  %72 = zext i8 %19 to i32
  br label %73

73:                                               ; preds = %71, %27
  %74 = phi i32 [ %72, %71 ], [ 0, %27 ]
  %75 = load ptr, ptr %0, align 8
  %76 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %77 = load i8, ptr %76, align 2
  %78 = zext i8 %77 to i32
  %79 = getelementptr inbounds %struct.ed, ptr %5, i32 0, i32 8
  %80 = load volatile ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %79
  %82 = select i1 %81, ptr @.str.9, ptr @.str.120
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.119, ptr noundef nonnull %5, i32 noundef %78, i32 noundef %74, ptr noundef nonnull %82) #15
  %83 = getelementptr inbounds %struct.ed, ptr %5, i32 0, i32 5
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.td, ptr %84, i32 0, i32 10
  %86 = load i32, ptr %85, align 8
  %87 = lshr i32 %86, 6
  %88 = xor i32 %87, %86
  %89 = and i32 %88, 63
  %90 = getelementptr %struct.ohci_hcd, ptr %3, i32 0, i32 11, i32 %89
  br label %91

91:                                               ; preds = %91, %73
  %92 = phi ptr [ %90, %73 ], [ %97, %91 ]
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  %95 = icmp eq ptr %93, %84
  %96 = or i1 %94, %95
  %97 = getelementptr inbounds %struct.td, ptr %93, i32 0, i32 7
  br i1 %96, label %98, label %91

98:                                               ; preds = %91
  br i1 %94, label %102, label %99

99:                                               ; preds = %98
  %100 = getelementptr inbounds %struct.td, ptr %84, i32 0, i32 7
  %101 = load ptr, ptr %100, align 4
  store ptr %101, ptr %92, align 4
  br label %102

102:                                              ; preds = %99, %98
  %103 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 28
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  %107 = ptrtoint ptr %84 to i32
  tail call void @gen_pool_free_owner(ptr noundef nonnull %104, i32 noundef %107, i32 noundef 64, ptr noundef null) #14
  br label %112

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 7, i32 2
  %110 = load ptr, ptr %109, align 8
  %111 = load i32, ptr %85, align 8
  tail call void @dma_pool_free(ptr noundef %110, ptr noundef %84, i32 noundef %111) #14
  br label %112

112:                                              ; preds = %108, %106, %66, %64
  store ptr null, ptr %4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %12) #14
  br label %113

113:                                              ; preds = %112, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_bus_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #14
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !12

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @ohci_rh_suspend(ptr noundef %2, i32 noundef 0)
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ -108, %1 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %11 = load i16, ptr %2, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  %13 = icmp eq i32 %10, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 21
  %16 = tail call i32 @del_timer_sync(ptr noundef %15) #14
  %17 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 3
  store i32 -256, ptr %17, align 4
  br label %18

18:                                               ; preds = %14, %9
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_bus_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 2, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 %3, %5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @msleep(i32 noundef 5) #14
  br label %9

9:                                                ; preds = %8, %1
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #14
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !12

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @ohci_rh_resume(ptr noundef %2)
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi i32 [ %15, %14 ], [ -108, %9 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %18 = load i16, ptr %2, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  tail call void @usb_hcd_poll_rh_status(ptr noundef %0) #14
  br label %22

22:                                               ; preds = %21, %16
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ohci_start_port_reset(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = add i32 %1, -1
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.ohci_regs, ptr %7, i32 0, i32 18, i32 3, i32 %5
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr %struct.ohci_regs, ptr %13, i32 0, i32 18, i32 3, i32 %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 16) #14, !srcloc !11
  br label %15

15:                                               ; preds = %12, %4, %2
  %16 = phi i32 [ 0, %12 ], [ -22, %2 ], [ -19, %4 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_poll_rh_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_link_urb_to_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @td_submit_urb(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -352
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 128
  %12 = icmp eq i32 %11, 0
  %13 = lshr exact i32 %11, 7
  %14 = xor i32 %13, 1
  %15 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.usb_device, ptr %16, i32 0, i32 10, i32 %14
  %18 = load i32, ptr %17, align 4
  %19 = lshr i32 %10, 15
  %20 = and i32 %19, 15
  %21 = shl nuw nsw i32 1, %20
  %22 = and i32 %21, %18
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = or i32 %21, %18
  store i32 %25, ptr %17, align 4
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr inbounds %struct.ed, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, -3
  store i32 %29, ptr %27, align 8
  br label %30

30:                                               ; preds = %24, %2
  %31 = getelementptr inbounds %struct.urb_priv, ptr %4, i32 0, i32 3
  %32 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 14
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %31, ptr %34, align 4
  store ptr %33, ptr %31, align 4
  %35 = getelementptr inbounds %struct.urb_priv, ptr %4, i32 0, i32 3, i32 1
  store ptr %32, ptr %35, align 4
  store volatile ptr %31, ptr %32, align 4
  %36 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 17
  %37 = load i32, ptr %36, align 4
  %38 = icmp sgt i32 %8, 0
  %39 = icmp sgt i32 %37, 0
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %49

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 16
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.scatterlist, ptr %43, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.scatterlist, ptr %43, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = tail call i32 @llvm.smin.i32(i32 %47, i32 %8)
  br label %54

49:                                               ; preds = %30
  %50 = icmp eq i32 %8, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 15
  %53 = load i32, ptr %52, align 4
  br label %54

54:                                               ; preds = %51, %49, %41
  %55 = phi ptr [ %43, %41 ], [ null, %49 ], [ null, %51 ]
  %56 = phi i32 [ %48, %41 ], [ 0, %49 ], [ %8, %51 ]
  %57 = phi i32 [ %45, %41 ], [ 0, %49 ], [ %53, %51 ]
  %58 = load ptr, ptr %4, align 4
  %59 = getelementptr inbounds %struct.ed, ptr %58, i32 0, i32 11
  %60 = load i8, ptr %59, align 1
  switch i8 %60, label %361 [
    i8 1, label %61
    i8 3, label %71
    i8 2, label %190
    i8 0, label %298
  ]

61:                                               ; preds = %54
  %62 = getelementptr i8, ptr %0, i32 -276
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 4
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = getelementptr i8, ptr %0, i32 -272
  %68 = load i32, ptr %67, align 8
  %69 = icmp eq i32 %68, 0
  %70 = zext i1 %69 to i32
  br label %71

71:                                               ; preds = %66, %61, %54
  %72 = phi i32 [ 0, %54 ], [ 0, %61 ], [ %70, %66 ]
  %73 = select i1 %12, i32 -267911168, i32 -267386880
  %74 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  br label %75

75:                                               ; preds = %113, %71
  %76 = phi ptr [ %114, %113 ], [ %55, %71 ]
  %77 = phi i32 [ %119, %113 ], [ %56, %71 ]
  %78 = phi i32 [ %109, %113 ], [ %37, %71 ]
  %79 = phi i32 [ %102, %113 ], [ %73, %71 ]
  %80 = phi i32 [ %106, %113 ], [ 0, %71 ]
  %81 = phi i32 [ %104, %113 ], [ %8, %71 ]
  %82 = phi i32 [ %116, %113 ], [ %57, %71 ]
  %83 = icmp ne i32 %78, 1
  br label %84

84:                                               ; preds = %101, %75
  %85 = phi i32 [ %103, %101 ], [ %77, %75 ]
  %86 = phi i32 [ %102, %101 ], [ %79, %75 ]
  %87 = phi i32 [ %106, %101 ], [ %80, %75 ]
  %88 = phi i32 [ %104, %101 ], [ %81, %75 ]
  %89 = phi i32 [ %105, %101 ], [ %82, %75 ]
  %90 = tail call i32 @llvm.smin.i32(i32 %85, i32 4096)
  %91 = icmp sgt i32 %88, %90
  %92 = icmp sgt i32 %85, 4096
  %93 = select i1 %83, i1 true, i1 %92
  %94 = select i1 %91, i1 %93, i1 false
  br i1 %94, label %101, label %95

95:                                               ; preds = %84
  %96 = load i32, ptr %74, align 4
  %97 = shl i32 %96, 18
  %98 = and i32 %97, 262144
  %99 = xor i32 %98, 262144
  %100 = or i32 %99, %86
  br label %101

101:                                              ; preds = %95, %84
  %102 = phi i32 [ %100, %95 ], [ %86, %84 ]
  tail call fastcc void @td_fill(ptr noundef %0, i32 noundef %102, i32 noundef %89, i32 noundef %90, ptr noundef %1, i32 noundef %87)
  %103 = sub i32 %85, %90
  %104 = sub i32 %88, %90
  %105 = add i32 %89, %90
  %106 = add i32 %87, 1
  %107 = icmp slt i32 %103, 1
  br i1 %107, label %108, label %84

108:                                              ; preds = %101
  %109 = add i32 %78, -1
  %110 = icmp slt i32 %109, 1
  %111 = icmp slt i32 %104, 1
  %112 = select i1 %110, i1 true, i1 %111
  br i1 %112, label %120, label %113

113:                                              ; preds = %108
  %114 = tail call ptr @sg_next(ptr noundef %76) #14
  %115 = getelementptr inbounds %struct.scatterlist, ptr %114, i32 0, i32 3
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr inbounds %struct.scatterlist, ptr %114, i32 0, i32 4
  %118 = load i32, ptr %117, align 4
  %119 = tail call i32 @llvm.smin.i32(i32 %118, i32 %104)
  br label %75

120:                                              ; preds = %108
  %121 = load i32, ptr %74, align 4
  %122 = and i32 %121, 64
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %181, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.urb_priv, ptr %4, i32 0, i32 1
  %126 = load i16, ptr %125, align 4
  %127 = zext i16 %126 to i32
  %128 = icmp slt i32 %106, %127
  br i1 %128, label %129, label %181

129:                                              ; preds = %124
  %130 = load ptr, ptr %3, align 4
  %131 = and i32 %102, 65536
  %132 = getelementptr inbounds %struct.urb_priv, ptr %130, i32 0, i32 1
  %133 = load i16, ptr %132, align 4
  %134 = zext i16 %133 to i32
  %135 = add i32 %87, 2
  %136 = icmp eq i32 %135, %134
  %137 = and i32 %121, 128
  %138 = icmp eq i32 %137, 0
  %139 = select i1 %136, i1 %138, i1 false
  %140 = or i32 %102, 12582912
  %141 = select i1 %139, i32 %102, i32 %140
  %142 = getelementptr %struct.urb_priv, ptr %130, i32 0, i32 4, i32 %106
  %143 = load ptr, ptr %142, align 4
  %144 = load ptr, ptr %130, align 4
  %145 = getelementptr inbounds %struct.ed, ptr %144, i32 0, i32 5
  %146 = load ptr, ptr %145, align 4
  store ptr %146, ptr %142, align 4
  %147 = load ptr, ptr %130, align 4
  %148 = getelementptr inbounds %struct.ed, ptr %147, i32 0, i32 5
  store ptr %143, ptr %148, align 4
  %149 = load ptr, ptr %130, align 4
  %150 = getelementptr inbounds %struct.td, ptr %146, i32 0, i32 6
  store ptr %149, ptr %150, align 8
  %151 = getelementptr inbounds %struct.td, ptr %146, i32 0, i32 8
  store ptr null, ptr %151, align 32
  %152 = trunc i32 %106 to i8
  %153 = getelementptr inbounds %struct.td, ptr %146, i32 0, i32 5
  store i8 %152, ptr %153, align 4
  %154 = getelementptr inbounds %struct.td, ptr %146, i32 0, i32 9
  store ptr %1, ptr %154, align 4
  %155 = getelementptr inbounds %struct.td, ptr %146, i32 0, i32 11
  store i32 0, ptr %155, align 4
  store i32 %141, ptr %146, align 32
  %156 = icmp eq i32 %131, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %129
  %158 = getelementptr inbounds %struct.td, ptr %146, i32 0, i32 4
  store i16 -8192, ptr %158, align 2
  br label %159

159:                                              ; preds = %157, %129
  %160 = getelementptr inbounds %struct.td, ptr %146, i32 0, i32 1
  store i32 0, ptr %160, align 4
  %161 = getelementptr inbounds %struct.td, ptr %146, i32 0, i32 3
  store i32 0, ptr %161, align 4
  %162 = getelementptr inbounds %struct.td, ptr %143, i32 0, i32 10
  %163 = load i32, ptr %162, align 8
  %164 = getelementptr inbounds %struct.td, ptr %146, i32 0, i32 2
  store i32 %163, ptr %164, align 8
  %165 = getelementptr inbounds %struct.td, ptr %146, i32 0, i32 12
  %166 = getelementptr inbounds %struct.ed, ptr %149, i32 0, i32 8
  %167 = getelementptr inbounds %struct.ed, ptr %149, i32 0, i32 8, i32 1
  %168 = load ptr, ptr %167, align 4
  store ptr %165, ptr %167, align 4
  store ptr %166, ptr %165, align 4
  %169 = getelementptr inbounds %struct.td, ptr %146, i32 0, i32 12, i32 1
  store ptr %168, ptr %169, align 4
  store volatile ptr %165, ptr %168, align 4
  %170 = getelementptr inbounds %struct.td, ptr %146, i32 0, i32 10
  %171 = load i32, ptr %170, align 8
  %172 = lshr i32 %171, 6
  %173 = xor i32 %172, %171
  %174 = and i32 %173, 63
  %175 = getelementptr %struct.ohci_hcd, ptr %0, i32 0, i32 11, i32 %174
  %176 = load ptr, ptr %175, align 4
  %177 = getelementptr inbounds %struct.td, ptr %146, i32 0, i32 7
  store ptr %176, ptr %177, align 4
  store ptr %146, ptr %175, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !31
  tail call void @arm_heavy_mb() #14
  %178 = load i32, ptr %164, align 8
  %179 = load ptr, ptr %150, align 8
  %180 = getelementptr inbounds %struct.ed, ptr %179, i32 0, i32 1
  store i32 %178, ptr %180, align 4
  br label %181

181:                                              ; preds = %159, %124, %120
  %182 = load ptr, ptr %4, align 4
  %183 = getelementptr inbounds %struct.ed, ptr %182, i32 0, i32 11
  %184 = load i8, ptr %183, align 1
  %185 = icmp eq i8 %184, 3
  br i1 %185, label %186, label %351

186:                                              ; preds = %181
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !32
  tail call void @arm_heavy_mb() #14
  %187 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 1
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.ohci_regs, ptr %188, i32 0, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 4) #14, !srcloc !11
  br label %351

190:                                              ; preds = %54
  %191 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 22
  %192 = load i32, ptr %191, align 4
  %193 = load ptr, ptr %3, align 4
  %194 = getelementptr inbounds %struct.urb_priv, ptr %193, i32 0, i32 1
  %195 = load i16, ptr %194, align 4
  %196 = icmp eq i16 %195, 1
  br i1 %196, label %197, label %202

197:                                              ; preds = %190
  %198 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %199 = load i32, ptr %198, align 4
  %200 = and i32 %199, 128
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %197, %190
  br label %203

203:                                              ; preds = %202, %197
  %204 = phi i32 [ -222298112, %202 ], [ -234881024, %197 ]
  %205 = getelementptr %struct.urb_priv, ptr %193, i32 0, i32 4, i32 0
  %206 = load ptr, ptr %205, align 4
  %207 = load ptr, ptr %193, align 4
  %208 = getelementptr inbounds %struct.ed, ptr %207, i32 0, i32 5
  %209 = load ptr, ptr %208, align 4
  store ptr %209, ptr %205, align 4
  store ptr %206, ptr %208, align 4
  %210 = load ptr, ptr %193, align 4
  %211 = getelementptr inbounds %struct.td, ptr %209, i32 0, i32 6
  store ptr %210, ptr %211, align 8
  %212 = getelementptr inbounds %struct.td, ptr %209, i32 0, i32 8
  store ptr null, ptr %212, align 32
  %213 = getelementptr inbounds %struct.td, ptr %209, i32 0, i32 5
  store i8 0, ptr %213, align 4
  %214 = getelementptr inbounds %struct.td, ptr %209, i32 0, i32 9
  store ptr %1, ptr %214, align 4
  %215 = getelementptr inbounds %struct.td, ptr %209, i32 0, i32 11
  store i32 %192, ptr %215, align 4
  store i32 %204, ptr %209, align 32
  %216 = getelementptr inbounds %struct.td, ptr %209, i32 0, i32 1
  store i32 %192, ptr %216, align 4
  %217 = icmp eq i32 %192, 0
  %218 = add i32 %192, 7
  %219 = select i1 %217, i32 0, i32 %218
  %220 = getelementptr inbounds %struct.td, ptr %209, i32 0, i32 3
  store i32 %219, ptr %220, align 4
  %221 = getelementptr inbounds %struct.td, ptr %206, i32 0, i32 10
  %222 = load i32, ptr %221, align 8
  %223 = getelementptr inbounds %struct.td, ptr %209, i32 0, i32 2
  store i32 %222, ptr %223, align 8
  %224 = getelementptr inbounds %struct.td, ptr %209, i32 0, i32 12
  %225 = getelementptr inbounds %struct.ed, ptr %210, i32 0, i32 8
  %226 = getelementptr inbounds %struct.ed, ptr %210, i32 0, i32 8, i32 1
  %227 = load ptr, ptr %226, align 4
  store ptr %224, ptr %226, align 4
  store ptr %225, ptr %224, align 4
  %228 = getelementptr inbounds %struct.td, ptr %209, i32 0, i32 12, i32 1
  store ptr %227, ptr %228, align 4
  store volatile ptr %224, ptr %227, align 4
  %229 = getelementptr inbounds %struct.td, ptr %209, i32 0, i32 10
  %230 = load i32, ptr %229, align 8
  %231 = lshr i32 %230, 6
  %232 = xor i32 %231, %230
  %233 = and i32 %232, 63
  %234 = getelementptr %struct.ohci_hcd, ptr %0, i32 0, i32 11, i32 %233
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr inbounds %struct.td, ptr %209, i32 0, i32 7
  store ptr %235, ptr %236, align 4
  store ptr %209, ptr %234, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !31
  tail call void @arm_heavy_mb() #14
  %237 = load i32, ptr %223, align 8
  %238 = load ptr, ptr %211, align 8
  %239 = getelementptr inbounds %struct.ed, ptr %238, i32 0, i32 1
  store i32 %237, ptr %239, align 4
  br i1 %38, label %240, label %242

240:                                              ; preds = %203
  %241 = select i1 %12, i32 -217317376, i32 -216793088
  tail call fastcc void @td_fill(ptr noundef %0, i32 noundef %241, i32 noundef %57, i32 noundef %8, ptr noundef %1, i32 noundef 1)
  br label %242

242:                                              ; preds = %240, %203
  %243 = phi i32 [ 2, %240 ], [ 1, %203 ]
  %244 = icmp eq i32 %8, 0
  %245 = select i1 %12, i1 true, i1 %244
  %246 = select i1 %245, i32 -217055232, i32 -217579520
  %247 = load ptr, ptr %3, align 4
  %248 = getelementptr inbounds %struct.urb_priv, ptr %247, i32 0, i32 1
  %249 = load i16, ptr %248, align 4
  %250 = zext i16 %249 to i32
  %251 = add nsw i32 %250, -1
  %252 = icmp eq i32 %251, %243
  br i1 %252, label %253, label %258

253:                                              ; preds = %242
  %254 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %255 = load i32, ptr %254, align 4
  %256 = and i32 %255, 128
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %260, label %258

258:                                              ; preds = %253, %242
  %259 = or i32 %246, 12582912
  br label %260

260:                                              ; preds = %258, %253
  %261 = phi i32 [ %259, %258 ], [ %246, %253 ]
  %262 = getelementptr %struct.urb_priv, ptr %247, i32 0, i32 4, i32 %243
  %263 = load ptr, ptr %262, align 4
  %264 = load ptr, ptr %247, align 4
  %265 = getelementptr inbounds %struct.ed, ptr %264, i32 0, i32 5
  %266 = load ptr, ptr %265, align 4
  store ptr %266, ptr %262, align 4
  store ptr %263, ptr %265, align 4
  %267 = load ptr, ptr %247, align 4
  %268 = getelementptr inbounds %struct.td, ptr %266, i32 0, i32 6
  store ptr %267, ptr %268, align 8
  %269 = getelementptr inbounds %struct.td, ptr %266, i32 0, i32 8
  store ptr null, ptr %269, align 32
  %270 = trunc i32 %243 to i8
  %271 = getelementptr inbounds %struct.td, ptr %266, i32 0, i32 5
  store i8 %270, ptr %271, align 4
  %272 = getelementptr inbounds %struct.td, ptr %266, i32 0, i32 9
  store ptr %1, ptr %272, align 4
  %273 = getelementptr inbounds %struct.td, ptr %266, i32 0, i32 11
  store i32 %57, ptr %273, align 4
  store i32 %261, ptr %266, align 32
  %274 = getelementptr inbounds %struct.td, ptr %266, i32 0, i32 1
  store i32 0, ptr %274, align 4
  %275 = getelementptr inbounds %struct.td, ptr %266, i32 0, i32 3
  store i32 0, ptr %275, align 4
  %276 = getelementptr inbounds %struct.td, ptr %263, i32 0, i32 10
  %277 = load i32, ptr %276, align 8
  %278 = getelementptr inbounds %struct.td, ptr %266, i32 0, i32 2
  store i32 %277, ptr %278, align 8
  %279 = getelementptr inbounds %struct.td, ptr %266, i32 0, i32 12
  %280 = getelementptr inbounds %struct.ed, ptr %267, i32 0, i32 8
  %281 = getelementptr inbounds %struct.ed, ptr %267, i32 0, i32 8, i32 1
  %282 = load ptr, ptr %281, align 4
  store ptr %279, ptr %281, align 4
  store ptr %280, ptr %279, align 4
  %283 = getelementptr inbounds %struct.td, ptr %266, i32 0, i32 12, i32 1
  store ptr %282, ptr %283, align 4
  store volatile ptr %279, ptr %282, align 4
  %284 = getelementptr inbounds %struct.td, ptr %266, i32 0, i32 10
  %285 = load i32, ptr %284, align 8
  %286 = lshr i32 %285, 6
  %287 = xor i32 %286, %285
  %288 = and i32 %287, 63
  %289 = getelementptr %struct.ohci_hcd, ptr %0, i32 0, i32 11, i32 %288
  %290 = load ptr, ptr %289, align 4
  %291 = getelementptr inbounds %struct.td, ptr %266, i32 0, i32 7
  store ptr %290, ptr %291, align 4
  store ptr %266, ptr %289, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !31
  tail call void @arm_heavy_mb() #14
  %292 = load i32, ptr %278, align 8
  %293 = load ptr, ptr %268, align 8
  %294 = getelementptr inbounds %struct.ed, ptr %293, i32 0, i32 1
  store i32 %292, ptr %294, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !33
  tail call void @arm_heavy_mb() #14
  %295 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 1
  %296 = load ptr, ptr %295, align 4
  %297 = getelementptr inbounds %struct.ohci_regs, ptr %296, i32 0, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %297, i32 2) #14, !srcloc !11
  br label %361

298:                                              ; preds = %54
  %299 = getelementptr inbounds %struct.urb_priv, ptr %4, i32 0, i32 2
  %300 = load i16, ptr %299, align 2
  %301 = zext i16 %300 to i32
  %302 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 24
  %303 = load i32, ptr %302, align 4
  %304 = icmp sgt i32 %303, %301
  br i1 %304, label %305, label %324

305:                                              ; preds = %298
  %306 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 23
  %307 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 25
  br label %308

308:                                              ; preds = %308, %305
  %309 = phi i32 [ %301, %305 ], [ %321, %308 ]
  %310 = load i32, ptr %306, align 4
  %311 = load i32, ptr %307, align 4
  %312 = mul i32 %311, %309
  %313 = add i32 %312, %310
  %314 = and i32 %313, 65535
  %315 = or i32 %314, -268369920
  %316 = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %309
  %317 = load i32, ptr %316, align 4
  %318 = add i32 %317, %57
  %319 = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %309, i32 1
  %320 = load i32, ptr %319, align 4
  tail call fastcc void @td_fill(ptr noundef %0, i32 noundef %315, i32 noundef %318, i32 noundef %320, ptr noundef %1, i32 noundef %309)
  %321 = add nuw nsw i32 %309, 1
  %322 = load i32, ptr %302, align 4
  %323 = icmp slt i32 %321, %322
  br i1 %323, label %308, label %324

324:                                              ; preds = %308, %298
  %325 = getelementptr i8, ptr %0, i32 -272
  %326 = load i32, ptr %325, align 8
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %330, label %328

328:                                              ; preds = %324
  %329 = add i32 %326, 1
  store i32 %329, ptr %325, align 8
  br label %361

330:                                              ; preds = %324
  %331 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 23
  %332 = load i32, ptr %331, align 8
  %333 = and i32 %332, 512
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %337, label %335

335:                                              ; preds = %330
  tail call void @usb_amd_quirk_pll_disable() #14
  %336 = load i32, ptr %331, align 8
  br label %337

337:                                              ; preds = %335, %330
  %338 = phi i32 [ %336, %335 ], [ %332, %330 ]
  %339 = and i32 %338, 1024
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %342, label %341

341:                                              ; preds = %337
  tail call void @sb800_prefetch(ptr noundef %6, i32 noundef 1) #14
  br label %342

342:                                              ; preds = %341, %337
  %343 = load i32, ptr %325, align 8
  %344 = add i32 %343, 1
  store i32 %344, ptr %325, align 8
  %345 = icmp eq i32 %343, 0
  br i1 %345, label %346, label %361

346:                                              ; preds = %342
  %347 = getelementptr i8, ptr %0, i32 -276
  %348 = load i32, ptr %347, align 4
  %349 = icmp eq i32 %348, 0
  %350 = zext i1 %349 to i32
  br label %351

351:                                              ; preds = %346, %186, %181
  %352 = phi i32 [ %72, %186 ], [ %72, %181 ], [ %350, %346 ]
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %361, label %354

354:                                              ; preds = %351
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !34
  tail call void @arm_heavy_mb() #14
  %355 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 19
  %356 = load i32, ptr %355, align 8
  %357 = or i32 %356, 12
  store i32 %357, ptr %355, align 8
  %358 = getelementptr inbounds %struct.ohci_hcd, ptr %0, i32 0, i32 1
  %359 = load ptr, ptr %358, align 4
  %360 = getelementptr inbounds %struct.ohci_regs, ptr %359, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %360, i32 %357) #14, !srcloc !11
  br label %361

361:                                              ; preds = %354, %351, %342, %328, %260, %54
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_calc_bus_time(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_dma_zalloc_align(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @td_fill(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = and i32 %1, 65536
  %10 = getelementptr inbounds %struct.urb_priv, ptr %8, i32 0, i32 1
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = add nsw i32 %12, -1
  %14 = icmp eq i32 %13, %5
  br i1 %14, label %15, label %20

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 13
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 128
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15, %6
  %21 = or i32 %1, 12582912
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi i32 [ %21, %20 ], [ %1, %15 ]
  %24 = getelementptr %struct.urb_priv, ptr %8, i32 0, i32 4, i32 %5
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %8, align 4
  %27 = getelementptr inbounds %struct.ed, ptr %26, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  store ptr %28, ptr %24, align 4
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr inbounds %struct.ed, ptr %29, i32 0, i32 5
  store ptr %25, ptr %30, align 4
  %31 = load ptr, ptr %8, align 4
  %32 = getelementptr inbounds %struct.td, ptr %28, i32 0, i32 6
  store ptr %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.td, ptr %28, i32 0, i32 8
  store ptr null, ptr %33, align 32
  %34 = trunc i32 %5 to i8
  %35 = getelementptr inbounds %struct.td, ptr %28, i32 0, i32 5
  store i8 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.td, ptr %28, i32 0, i32 9
  store ptr %4, ptr %36, align 4
  %37 = getelementptr inbounds %struct.td, ptr %28, i32 0, i32 11
  store i32 %2, ptr %37, align 4
  %38 = icmp eq i32 %3, 0
  %39 = select i1 %38, i32 0, i32 %2
  store i32 %23, ptr %28, align 32
  %40 = icmp eq i32 %9, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %22
  %42 = and i32 %39, -4096
  %43 = trunc i32 %39 to i16
  %44 = and i16 %43, 4095
  %45 = or i16 %44, -8192
  %46 = getelementptr inbounds %struct.td, ptr %28, i32 0, i32 4
  store i16 %45, ptr %46, align 2
  br label %47

47:                                               ; preds = %41, %22
  %48 = phi i32 [ %42, %41 ], [ %39, %22 ]
  %49 = getelementptr inbounds %struct.td, ptr %28, i32 0, i32 1
  store i32 %48, ptr %49, align 4
  %50 = icmp eq i32 %39, 0
  %51 = add i32 %3, -1
  %52 = add i32 %51, %39
  %53 = select i1 %50, i32 0, i32 %52
  %54 = getelementptr inbounds %struct.td, ptr %28, i32 0, i32 3
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.td, ptr %25, i32 0, i32 10
  %56 = load i32, ptr %55, align 8
  %57 = getelementptr inbounds %struct.td, ptr %28, i32 0, i32 2
  store i32 %56, ptr %57, align 8
  %58 = getelementptr inbounds %struct.td, ptr %28, i32 0, i32 12
  %59 = getelementptr inbounds %struct.ed, ptr %31, i32 0, i32 8
  %60 = getelementptr inbounds %struct.ed, ptr %31, i32 0, i32 8, i32 1
  %61 = load ptr, ptr %60, align 4
  store ptr %58, ptr %60, align 4
  store ptr %59, ptr %58, align 4
  %62 = getelementptr inbounds %struct.td, ptr %28, i32 0, i32 12, i32 1
  store ptr %61, ptr %62, align 4
  store volatile ptr %58, ptr %61, align 4
  %63 = getelementptr inbounds %struct.td, ptr %28, i32 0, i32 10
  %64 = load i32, ptr %63, align 8
  %65 = lshr i32 %64, 6
  %66 = xor i32 %65, %64
  %67 = and i32 %66, 63
  %68 = getelementptr %struct.ohci_hcd, ptr %0, i32 0, i32 11, i32 %67
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.td, ptr %28, i32 0, i32 7
  store ptr %69, ptr %70, align 4
  store ptr %28, ptr %68, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !31
  tail call void @arm_heavy_mb() #14
  %71 = load i32, ptr %57, align 8
  %72 = load ptr, ptr %32, align 8
  %73 = getelementptr inbounds %struct.ed, ptr %72, i32 0, i32 1
  store i32 %71, ptr %73, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_amd_quirk_pll_disable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_check_unlink_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

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
!8 = !{i64 3850524}
!9 = !{i64 2154194309}
!10 = !{i64 2154194650}
!11 = !{i64 3850106}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i8 0, i8 2}
!14 = !{i64 2148961114}
!15 = !{i64 2148956938}
!16 = !{i64 2148957013, i64 2148957040, i64 2148957087, i64 2148957109, i64 2148957137, i64 2148957157}
!17 = !{i64 482512}
!18 = !{i64 2148985258}
!19 = !{i64 2154357303}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2154376313}
!22 = !{i64 2148984117}
!23 = !{i64 2154353372}
!24 = !{i64 2154354093}
!25 = !{i64 2154354941}
!26 = !{i64 2154353106}
!27 = !{i64 2154353227}
!28 = !{i64 2154373874}
!29 = !{i64 2154367656}
!30 = !{!"auto-init"}
!31 = !{i64 2154358937}
!32 = !{i64 2154364714}
!33 = !{i64 2154365057}
!34 = !{i64 2154365268}
